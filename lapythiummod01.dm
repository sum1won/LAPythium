#modname "PythiumSyncretism"
#description "Modifies LA Pythium extensively through the use of cults.  Prophetize a Serpent Priest, Heliodromus, or Epoptes/Reveler to get the full effect"
#version 3
#icon "./summod/pythium.tga"

------

#selectnation  61
#end

#newevent 
#rarity 5
#nation -2 
#msg "Thank you for playing this mod.  This message exists to let you know that you now have a host of new national spells, units, and abilities - but they can only be used if the appropriate cult is endorsed.  You may endorse a cult by naming a leader of that cult as your prophet.   Prophetizing a Serpent Priest will endorse the Serpent Cult, prophetizing a Heliodromus will endorse the Solar cult, and prophetizing a Reveler or Epoptes will endorse the Cult of Fertility.  NOTE: If, for some reason, such as disciple mode, you cannot create a prophet, you can circumvent this by ordering the appropriate mage to site search in your capital. This message will save to your province history for reference."
#req_fornation 49
#req_owncapital 1
#req_unique 1
#end

#selectspell 170
#clear
#name "Daughter of Typhon"
#descr "The mage enters the misty swamps of Pythia to find the entrance to the underworld hidden there. Once there the mage will lure and bind the guardian of the gate to his service. The guardian is a beast of might and malice unequaled. She is the daughter of Typhon, Enemy of Gods, and Echidna, Mother of Monsters and her name is Hydra. Like her lesser kin, she has nine heads. However, her central head is blessed by her father and is immortal. Should it be cut off a new body will regrow from the stump within weeks. Hydra is sacred."
#school 0
#path 0 6
#pathlevel 0 5
#path 1 5
#pathlevel 1 2
#researchlevel 8
#restricted 9
#fatiguecost 2000
#effect 10021
#damage (INSERT DAUGHTER OF TYPHON HERE)
#end

-----Cult toggle

---Toggle

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_owncapital 1
#req_fornation 61
#req_code 0
#code -1100
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code 0
#req_anycode -1100
#req_monster 6413 --serpent prophet
#code -1101
#nolog
#notext
#end


#newevent  --- if you can't name a prophet normally
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1100
#req_monster 761
#req_nomnr 6413 --serpent prophet
#req_targorder 7
#transform 6413
#code -1102
#msg "The new god has named a priest of the Serpent Cult to be his prophet! The Serpent Cult swells in power and authority, and their temples appear in every city.  Serpent Assassins and Hydras can be recruited in these temples, and, more importantly, they allow new rituals that either summon more Hydras or transform your priests into mighty Serpents."
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "The new god has named a priest of the Serpent Cult to be his prophet! The Serpent Cult swells in power and authority, and their temples appear in every city.  Serpent Assassins and Hydras can be recruited in these temples, and, more importantly, they allow new rituals that either summon more Hydras or transform your priests into mighty Serpents."
#req_anycode -1101
#req_code -1100
#code -1102
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "The new god has named a priest of the Serpent Cult to be his prophet! The Serpent Cult swells in power and authority, and their temples appear in every city.  Serpent Assassins and Hydras can be recruited in these temples, and, more importantly, they allow new rituals that either summon more Hydras or transform your priests into mighty Serpents."
#req_monster 6413
#req_code -1100
#code -1102
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1102
#req_code -1101
#code 0
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1102
#req_nomnr 6413 --serpent prophet
#code -1100
#nolog
#notext
#end

---
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code 0
#req_anycode -1100
#req_monster 6414 --helio prphet
#code -1103
#nolog
#notext
#end


#newevent  --- if you can't name a prophet normally
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1100
#req_monster 1873
#req_nomnr 6414 --serpent prophet
#req_targorder 7
#transform 6414
#code -1104
#msg "The new god has named a Heliodromus to be his prophet! The Cult of the Solar Bull swells in power and authority, and Mithrea, temples to the god in his guise as the Solar Bull are erected in every city!  New rituals can be cast in those temples, which can summon the progeny of the Solar Bull, and transform Leos into mighty champions who are the only ones who can wield specially enchanted items.  Cultists can be recruited in these temples, and they will further increase in power if a Second Sun appears in the sky - a true sign of the Solar Bull."
#end

#newevent --capital prophet
#rarity 5 #req_fornation 61 #nation -2  
#msg "The new god has named a Heliodromus to be his prophet! The Cult of the Solar Bull swells in power and authority, and Mithrea, temples to the god in his guise as the Solar Bull are erected in every city!  New rituals can be cast in those temples, which can summon the progeny of the Solar Bull, and transform Leos into mighty champions who are the only ones who can wield specially enchanted items.  Cultists can be recruited in these temples, and they will further increase in power if a Second Sun appears in the sky - a true sign of the Solar Bull."
#req_monster 6414
#req_code -1100
#code -1104
#nolog
#end

#newevent --noncapital prophet
#rarity 5 #req_fornation 61 #nation -2  
#msg "The new god has named a Heliodromus to be his prophet! The Cult of the Solar Bull swells in power and authority, and Mithrea, temples to the god in his guise as the Solar Bull are erected in every city!  New rituals can be cast in those temples, which can summon the progeny of the Solar Bull, and transform Leos into mighty champions who are the only ones who can wield specially enchanted items.  Cultists can be recruited in these temples, and they will further increase in power if a Second Sun appears in the sky - a true sign of the Solar Bull."
#req_anycode -1103
#req_code -1100
#code -1104
#nolog
#end

#newevent --leakclose
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1104
#req_code -1103
#code 0
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1104
#req_nomnr  6414 --helio prphet
#code -1100
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "The Second Sun is a sign of the power of the new god in his aspect of the Solar Bull.  Sacred servants of the Solar Bull shall flood out from every temple!"
#req_code -1104
#req_friendlyench 81 
#code -1107
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1107
#req_nomnr  6414 --helio prphet deth
#code -1100
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1107
#req_hostileench 81 --hostilesun
#code -1104
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1107
#req_noench 81 --nosun
#code -1104
#nolog
#notext
#end

#newevent --5X abandonment events for no second sun.
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_noench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_noench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_noench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_noench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_noench 81
#killmon 6436
#end

--- Five abandonment events for hostile secondsun
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_hostileench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_hostileench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_hostileench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_hostileench 81
#killmon 6436
#end
#newevent 
#nation -2
#rarity 5
#msg "no eus"
#nolog
#notext
#req_monster 6436
#req_nomnr 6414
#req_hostileench 81
#killmon 6436
#end

----Cult of fertility
#newevent --notice of prophetization
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code 0
#req_anycode -1100
#req_monster 6415 --epoptes prophet/reveler
#code -1105
#nolog
#notext
#end

#newevent  --- if you can't name a prophet normally
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1100
#req_monster 1880 --reveler
#req_nomnr 6415 --archgalli prophet
#req_targorder 7
#transform 6415
#code -1106
#msg "The new god has named a member of the Cult of Fertility to be his prophet! The Cult of Fertility swells in power and authority, and temples to the god in his aspect of Fertility are erected in every city!  This will allow you to cast the rituals of Fertility and transform Epoptes and Revelers into Galli, who can cast yet more powerful rituals." 
#end

#newevent  --- if you can't name a prophet normally
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1100
#req_monster 1875 --epoptes
#req_nomnr 6415 --archgalli prophet
#req_targorder 7
#transform 6415
#code -1106
#msg "The new god has named a member of the Cult of Fertility to be his prophet! The Cult of Fertility swells in power and authority, and temples to the god in his aspect of Fertility are erected in every city!  This will allow you to cast the rituals of Fertility and transform Epoptes and Revelers into Galli, who can cast yet more powerful rituals." 
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "The new god has named a member of the Cult of Fertility to be his prophet! The Cult of Fertility swells in power and authority, and temples to the god in his aspect of Fertility are erected in every city!  This will allow you to cast the rituals of Fertility and transform Epoptes and Revelers into Galli, who can cast yet more powerful rituals." #req_anycode -1105
#req_code -1100
#req_monster 6415
#code -1106
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "The new god has named a member of the Cult of Fertility to be his prophet! The Cult of Fertility swells in power and authority, and temples to the god in his aspect of Fertility are erected in every city!  This will allow you to cast the rituals of Fertility and transform Epoptes and Revelers into Galli, who can cast yet more powerful rituals." #req_anycode -1105
#req_code -1100
#req_anycode -1105
#code -1106
#end

#newevent --clears eventcode
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1106
#req_code -1105
#code 0
#nolog
#notext
#end

#newevent --prophet dies
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_code -1106
#req_nomnr 6415 --epoptes prophet/reveler
#code -1100
#nolog
#notext
#end

---- SERPENT CULT

#newmonster 6413-- serpent prophetshape
#copystats 761
#copyspr 761
#descr "The Serpent Cult is one of the many mystery cults that spread to Pythium during the collapse of Ermor. Sauromancers from C'tis were invited by the Emperor and his Theurgs to battle the growing threat and with them came the Serpent Cult. The Serpent Cult was heralded as the answer to the Ermorian threat and quickly received Imperial acceptance. Soon it replaced the Order of the Theurgs as the state cult and grew in influence and power. In the years that have passed since the lizards left Pythium, the Cult has changed. Serpents are venerated and the priests of the Cult wear serpent masks and carry serpent staffs as signs of their office. Serpent Priests constantly expose themselves to poisons and their skin has a deathly pallor. They are skilled in Nature magic and some Water magic."
#magicboost 8 1
#userestricteditem 1105
#end

#newsite 1815--, 4 events
#name "Temple of the Serpents"
#path 6
#rarity 5
#mon 1850
#mon 1859
#com 1879
#com 6450
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_anycode -1102
#req_fort 1
#req_freesites 1
#req_nositenbr 1815
#addsite 1815 --temple of serpent
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_code -1102
#req_fort 1
#req_freesites 1
#req_nositenbr 1815
#addsite 1815 --temple of serpent
#nolog
#notext
#end

#newevent  #msg "Noprophet. [Temple of the Serpents]." 
#rarity 5  #req_nomnr 6413 #nation -2 #notext #nolog  #req_site 1
#removesite 1815 
#end

#newevent  #msg "Nofort. [Temple of the Serpents]." 
#rarity 5  #req_fort 0 #nation -2 #notext #nolog  #req_site 1
#removesite 1815
#end

#newevent #msg "Enemy. [Temple of the Serpents]." #rarity 5 #req_notnation 61 #nation -2 #notext #nolog  #req_site 1 
#removesite 1815 #end

#newmonster 6426 --serpent priest holyboost
#copystats 761
#copyspr 761
#clearmagic
#magicskill 2 1
#magicskill 6 2
#magicskill 8 1
#magicboost 8 1
#custommagic 14848 100
#custommagic 14848 20
#prophetshape 6413
#descr "Serpent Priests are the leaders of the Pythian Serpent Cult. The Serpent Cult is one of the many mystery cults that spread to Pythium during the collapse of Ermor. Sauromancers from C'tis were invited by the Emperor and his Theurgs to battle the growing threat and with them came the Serpent Cult. The Serpent Cult was heralded as the answer to the Ermorian threat and quickly received Imperial acceptance. Soon it replaced the Order of the Theurgs as the state cult and grew in influence and power. In the years that have passed since the lizards left Pythium, the Cult has changed. Serpents are venerated and the priests of the Cult wear serpent masks and carry serpent staffs as signs of their office. Serpent Priests constantly expose themselves to poisons and their skin has a deathly pallor. They are skilled in Nature magic and some Water magic.  With the imprimateur of the new god, their divine authority has increased substantially."
#userestricteditem 1105
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_site 1
#req_capital 1
#req_targmnr 761
#transform 6426
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_anycode -1102
#req_targmnr 761
#transform 6426
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_site 1
#req_targmnr 761
#transform 6426
#nolog
#notext
#end

#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6413 #nation -2 #notext #nolog  
#req_targmnr 6426
#transform 761
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6413 #nation -2 #notext #nolog  
#req_targmnr 6426
#transform 761
#end

#newmonster 6450
#copystats 830
#copyspr 830
#userestricteditem 1105
#descr "Serpent Acolytes are lowly priests of the Serpent Cult. Upon joining the Temple, they receive a new name.  They do not wear the distinctive masks of the serpent Priests.  Upon inauguration ot the priesthood, the Acolytes must prove their resistance to the venom of snakes.  Only then is the Acolyte deemed worthy and given the mask and staff.  The acolytes are weak mages of nature, and with the endorsement of the Serpent Cult, they have some divine authority as well."
#end 

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_site 1
#req_capital 1
#req_targmnr 830
#transform 6450
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_anycode -1102
#req_targmnr 830
#transform 6450
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Temple of the Serpents]."
#req_site 1
#req_targmnr 830
#transform 6450
#nolog
#notext
#end

#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6413 #nation -2 #notext #nolog  
#req_targmnr 6450
#transform 830
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6413 #nation -2 #notext #nolog  
#req_targmnr 6450
#transform 830
#end

#newmonster 6427 --serpent  
#name "Serpent"
#copyspr 295
#hp 22
#prot 10
#mor 14
#mr 10
#str 12
#att 14
#def 8
#prec 10
#enc 2
#mapmove 2
#ap 6
#poisonres 5
#coldblooded
#swampsurvival
#animal
#undisciplined
#weapon 325
#itemslots 12288
#descr "These large, venemous serpents were summoned by a member of the Serpent Cult."
#end

#newmonster 6428
#copystats 1889
#name "Great Serpent"
#spr1 "./summod/GreatSerpent_1.tga"
#spr2 "./summod/GreatSerpent_2.tga"
#onebattlespell 805
#goodleader
#inspirational 1
#fear 5
#magicboost 2 -1
#magicboost 4 -1
#magicboost 5 -1
#magicboost 6 -1
#magicboost 8 1
#shapechange 6426
#weapon 147
#weapon 65
#descr "The Great Serpent is a Serpent Priest who has taken the form of an enormous serpent via a magical ritual. In this form, his magical powers are weakened, but he is physically mighty and can protect allies from being poisoned.  The Serpent Priest can reassume his human form at any time, but must undergo the ritual to assume this form."
#end

#newmonster 6429
#copystats 6427
#copyspr 654
#name "Large Serpent"
#magicboost 2 -1
#magicboost 4 -1
#magicboost 5 -1
#magicboost 6 -1
#onebattlespell 805
#inspirational 1
#shapechange 830
#weapon 141
#weapon 239
#descr "The Large Serpent is a Serpent Acolyte who has taken the form of an enormous serpent via a magical ritual. In this form, his magical powers are weakened, but he is physically strong and can protect allies from being poisoned.  The Serpent acolyte can reassume his human form at any time, but must undergo the ritual to assume this form."
#itemslots 12288
#end

#newspell --summon hydra hatchlings
#name "Summon Hydra Hatchlings"
#onlyatsite 1815
#path 0 6
#pathlevel 0 1
#path 1 8
#pathlevel 1 1
#restricted 61
#fatiguecost 500
#school 0
#researchlevel 3
#effect 10001
#nreff 3
#damage 1859
#descr "With an appropriate sacrifice, a member of the Serpent Cult can enter a Serpent Temple and summon three hatchlings. This spell may only be cast at a Serpent Temple after the god has endorsed the cult."
#end
#newspell --summon hydra
#name "Summon Hydra"
#onlyatsite 1815
#restricted 61
#path 0 6
#path 1 8
#pathlevel 0 3
#pathlevel 1 1
#effect 10001
#nreff 1
#damage 1850
#fatiguecost 1000
#school 0
#researchlevel 4
#nextspell "Summon Hydra Hatchlings"
#descr "With an appropriate sacrifice, a member of the Serpent Cult can enter a Serpent Temple and summon a Hydra to serve the new god. This spell may only be cast at a Serpent Temple after the god has endorsed the cult."
#end

#newmonster 6431
#copystats 2227
#copyspr 2227
#name "Sacrificial Goat"
#descr "With this sacrifice, and the favor of the new god, a Serpent Acoylte hopes to transform himself into a Large Serpent!"
#end
#newmonster 6430
#copystats 2227
#copyspr 2227
#name "Sacrificial Goat"
#descr "With this sacrifice, and the favor of the new god, a Serpent Priest hopes to transform himself into a Great Serpent!"
#end

#newspell
#name "Summon Serpent"
#onlyatsite 1815
#descr "With this spell, a member of the Serpent Cult can enter a Serpent Temple to summon a pair of snakes. This spell may only be cast at a Serpent Temple after the god has endorsed the cult."
#path 0 6
#pathlevel 0 1
#path 1 8
#pathlevel 1 1
#restricted 61
#fatiguecost 100
#effect 10001
#nreff 2
#damage 6427
#school 0
#researchlevel 2
#end

#newspell
#name "Serpent Form"
#onlyatsite 1815
#descr "With this spell, a Serpent Acolyte can enter a Serpent Temple to transform into a Large Serpent!  Only one Serpent Acolyte in a city can transform himself per month. This spell may only be cast at a Serpent Temple after the god has endorsed the cult."
#path 0 6
#pathlevel 0 1
#path 1 8
#pathlevel 1 1
#restricted 61
#fatiguecost 500
#school 1
#researchlevel 4
#effect 10001
#damage 6431
#nreff 1
#end

#newspell
#name "Greater Serpent Form"
#onlyatsite 1815
#descr "With this spell, a member of the Serpent Cult can enter a Serpent Temple to transform into a Great Serpent!  Only a serpent priest can be transformed, and only one serpent priest in a city can transform himself per month. This spell may only be cast at a Serpent Temple after the god has endorsed the cult."
#path 0 6
#pathlevel 0 2
#path 1 8
#pathlevel 1 2
#restricted 61
#fatiguecost 1000
#school 1
#researchlevel 5
#effect 10001
#damage 6430
#nreff 1
#end

#newevent  #msg "serpentpriest. [Temple of the Serpents]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6430
#req_targmnr 6426
#transform 6428
#killmon 6430
#req_site 1
#end
#newevent  #msg "serpentacolyte. [Temple of the Serpents]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6431
#req_targmnr 830
#transform 6429
#killmon 6431
#req_site 1
#end

#newspell --serpent staff
#name "staff to snake"
#school -1
#effect 1
#damage 6427
#nreff 1
#path 0 6
#pathlevel 0 1
#researchlevel 0
#fatiguecost 10
#descr "Protects allies from poison and transforms into a serpent."
#nextspell 805
#end

#newitem
#name "Enchanted Serpent Staff"
#spr "./summod/Serpentstaff.tga"
#constlevel 4
#mainpath 6
#mainlevel 2
#type 2
#descr "This enchanted Serpent Staff will transform into a snake in battle!  The power of the transformation will protect nearby allies from poison.  It can only be used by a Serpent Priest or acolyte with the approval of the new god."
#restricted 61
#restricteditem 1105
#autospell "staff to snake"
#end

#newspell
#copyspell "Howl"
#name "Marsh Hydra"
#effect 1043  -- 1 turn of border summoning
#damage 1850
#aoe 1 -- AOE acts as number of effects for some reason.
#school -1
#researchlevel -1
#explspr 0
#end
#newspell
#copyspell "Howl"
#name "Marsh Hatchlings"
#effect 6043  -- 6 turns of border summoning
#damage 1859
#aoe 3 -- AOE acts as number of effects for some reason.
#school -1
#researchlevel -1
#nextspell "Marsh Hydra"
#explspr 0
#end
#newspell
#copyspell "Howl"
#name "Marsh Snakes"
#effect 9043  -- 9 turns of border summoning
#damage 6427
#aoe 3 -- AOE acts as number of effects for some reason.
#school -1
#researchlevel -1
#nextspell "Marsh Hatchlings"
#explspr 0
#end

#newspell
#copyspell "Quagmire"
#name "Marshes of Pythia"
#researchlevel 6
#school 5
#path 0 6 -- Nature
#path 1 8 -- Holy
#pathlevel 0 3 -- N3
#pathlevel 1 4 -- H4
#fatiguecost 300
#nextspell "Marsh Snakes"
#explspr 0
#restricted 61
#descr "The Serpent Priest creates a magical link to the marshes of Pythia. For a short amount of time, the battlefield will alter to resemble the marshes, the ground becoming soft and treacherous.
Poisonous snakes, hydra hatchlings and possibly even a hydra will emerge from the vegetation and attack the Serpent Priest's enemies. However the poisonous gases surrounding the Pythian monsters
may make the battlefield deadly even for the priest's allies."
#end

#newspell
#name "Daughter of Typhon"
#descr "The mage enters the misty swamps of Pythia to find the entrance to the underworld hidden there. Once there the mage will lure the guardian of the gate to the Temple of Serpents, where it can be bound to his service. The guardian is a beast of might and malice unequaled. She is the daughter of Typhon, Enemy of Gods, and Echidna, Mother of Monsters and her name is Hydra. Like her lesser kin, she has nine heads. However, her central head is blessed by her father and is immortal. Should it be cut off a new body will regrow from the stump within weeks. Hydra is sacred."
#effect 10021
#damage (INSERT DAUGHTER OF TYPHON HERE)
#school 0
#path 0 6
#pathlevel 0 4
#path 1 5
#pathlevel 1 2
#researchlevel 7
#restricted 61
#onlyatsite 1815
#fatiguecost 2000
#end

---- CULT OF THE SUN
#newmonster 6414--helio/leo prophetshape
#name "Heliopater"
#spr1 "./summod/heliopater_1.tga"
#spr2 "./summod/heliopater_2.tga"
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Solar Bull is very popular among the soldiers of the Limes and most of its higher members are former soldiers or Centurions. The Heliopater, Sun-Father, is the highest ranking member of the Cult of the Solar Bull. He has been selected as the prophet of the new god, and is leading the Cult of the Solar Bull to greater prominence in the empire. The Heliopater has embroidered robes and carries a crook to signify his role as a shepherd to the Cult.  He wears an exotic hat, reputedly similar to those of the foreign founders of the Cult. The Heliopater forswears his former life upon initiation and does not lead armies."
#gcost 120
#rcost 1
#hp 12
#mr 14
#mor 14
#str 10
#att 10
#def 10
#prec 10
#enc 3
#mapmove 2
#ap 10
#fireres 10
#firepower 1
#weapon 7
#itemslots 15494
#magicboost 0 1
#end

#newmonster 6419--helio nonheretic/nonpoorresearcher , 2 events
#copystats 1873
#copyspr 1873
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Solar Bull is very popular among the soldiers of the Limes and most of its higher members are former soldiers or Centurions. The Heliodromus, Sun-Courier, is a high ranking member of the Cult of the Solar Bull. He, for it is only males that are allowed in the Cult, performs the Taurobolium, ritual sacrifice of a bull. The Heliodromus carries a golden sacrificial knife.  Since the Prophet of the new god is a member of the cult, the Heliodromus no longer leads worshippers astray, and is more willing to share his secrets. He wears an exotic hat, reputedly similar to those of the foreign founders of the Cult. The Heliodromus forswears his former life upon initiation and does not lead armies."
#heretic 0
#clearmagic
#researchbonus -1
#fireres 10
#holy
#gcost 10000
#magicskill 8 1
#magicskill 0 1
#custommagic 8320 100
#custommagic 8320 20
#prophetshape 6414
#enchrebate50 81
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1104
#req_targmnr 1873
#transform 6419
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Mithraea]."
#req_site 1
#req_targmnr 1873
#transform 6419
#nolog
#notext
#end

#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6414 #nation -2 #notext #nolog  
#req_targmnr 6419
#transform 1873
#end

#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6414 #nation -2 #notext #nolog  
#req_targmnr 6419
#transform 1873
#end

#newmonster 6420--leo nonheretic, 2 events
#name "Leo"
#copyspr 1872
#rcost 1 
#gcost 80 
#hp 14 
#mr 11 
#mor 14 
#str 12 
#att 13 
#def 13 
#enc 3
#mapmove 2 
#ap 12 
#goodleader 
#inspirational 1
#fireres 10 
#magicskill 0 1
#researchbonus -2
#firepower 1
#weapon 8
#armor 9
#armor 126
#holy
#userestricteditem 1106
#descr "The Cult of the Solar Bull is one of the many mystery cults that have become common in the late days of the Empire. It is very popular among the soldiers of the Limes and most of its higher members are former soldiers or Centurions. Leo is a title given to a member of the Cult of the Solar Bull. The Lion receives training in solar magic and leads simpler ceremonies. The Leo is gifted with solar inspiration and is partially resistant to fire. Leos command great respect among the soldiers of the Limes, even those who are not members of the Cult. The Leo can be distinguished by his golden plumage and an emblazoned sun on his chest. Leos are often occupied with military matters and are rather poor researchers."
#enchrebate50 81
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1104
#req_targmnr 1872
#transform 6420
#nolog
#notext
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Mithraea]."
#req_site 1
#req_targmnr 1872
#transform 6420
#nolog
#notext
#end

#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6414 #nation -2 #notext #nolog  
#req_targmnr 6420
#transform 1872
#end

#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6414 #nation -2 #notext #nolog  
#req_targmnr 6420
#transform 1872
#end

#newsite 1816--, 4 events
#name "Mithraea"
#path 0
#rarity 5
#res 50
#com 6420
#com 6419
#mon 6424
#mon 6425
#mon 6436
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Mithraea]."
#req_anycode -1104
#req_fort 1
#req_freesites 1
#req_nositenbr 1816
#addsite 1816 --temple of serpent
#nolog
#notext
#removesite 1818
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Mithraea]."
#req_code -1104
#req_fort 1
#req_freesites 1
#req_nositenbr 1816
#addsite 1816 --temple of serpent
#nolog
#notext
#removesite 1818
#end

#newevent  #msg "Noprophet. [Mithraea]." 
#rarity 5  #req_nomnr 6414 #nation -2 #notext #nolog  #req_site 1
#removesite 1816 
#end

#newevent  #msg "Nofort. [Mithraea]." 
#rarity 5  #req_fort 0 #nation -2 #notext #nolog  #req_site 1
#removesite 1816
#end

#newevent #msg "Enemy. [Mithraea]." #rarity 5 #req_notnation 61 #nation -2 #notext #nolog  #req_site 1 
#removesite 1816 #end

#newsite 1818--, 4 events
#name "Mithraea Prime"
#path 0
#rarity 5
#res 50
#com 6420
#com 6419
#mon 6424
#mon 6425
#mon 6437
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Mithraea Prime]."
#req_anycode -1107
#req_fort 1
#req_freesites 1
#req_nositenbr 1818
#addsite 1818 --temple of serpent
#nolog
#notext
#removesite 1816
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Mithraea]."
#req_code -1107
#req_fort 1
#req_freesites 1
#req_nositenbr 1818
#addsite 1818 --temple of serpent
#nolog
#notext
#removesite 1816
#end

#newevent  #msg "Noprophet. [Mithraea]." 
#rarity 5  #req_nomnr 6414 #nation -2 #notext #nolog  #req_site 1
#removesite 1818 
#end

#newevent  #msg "Nofort. [Mithraea]." 
#rarity 5  #req_fort 0 #nation -2 #notext #nolog  #req_site 1
#removesite 1818
#end

#newevent #msg "Enemy. [Mithraea]." #rarity 5 #req_notnation 61 #nation -2 #notext #nolog  #req_site 1 
#removesite 1818 #end

#newmonster 6436
#copystats 1866
#name "Eusebes Solaris"
#descr "A warrior devoted to the cause of the Solar Bull, the Eusebes Solaris are drawn from the ranks of the Primani Solaris, and are devoted to his cause. More will appear when the New God places a new sun in the sky. They will serve the new god as holy warriors so long as he is aligned with the Solar Bull in some fashion."
#spr1 "./summod/solsacred_1.tga"
#spr2 "./summod/solsacred_2.tga"
#cleararmor 
#armor 126
#armor "Clipeus"
#armor 18 --full chain
#gcost 10019
#mapmove 2
#fireres 10
#holy
#reclimit 3
#end

#newmonster 6437
#copystats 1866
#name "Eusebes Solaris"
#descr "A warrior devoted to the cause of the Solar Bull, the Eusebes Solaris are drawn from the ranks of the Primani Solaris, and are devoted to his cause. More will appear when the New God places a new sun in the sky. They will serve the new god as holy warriors so long as he is aligned with the Solar Bull in some fashion."
#spr1 "./summod/solsacred_1.tga"
#spr2 "./summod/solsacred_2.tga"
#cleararmor 
#armor 126
#armor "Clipeus"
#armor 18 --full chain
#gcost 10015
#mapmove 2
#fireres 10
#holy
#firstshape 6436
#end

#newevent
#rarity 5
#nation -2
#msg "Helioperses gen"
#notext
#nolog
#req_site 1818
#req_friendlyench 81
#req_rare 10
#req_dominion 7
#com 6433
#1unit 6435
#end

#newevent
#rarity 5
#nation -2
#msg "Heliobull gen"
#notext
#nolog
#req_site 1818
#req_friendlyench 81
#req_rare 50
#req_dominion 4
#1unit 6435
#end

#newevent
#rarity 5
#nation -2
#msg "Heliosacreds gen"
#notext
#nolog
#req_site 1818
#req_friendlyench 81
#req_dominion 1
#1d3units 6356
#end

----

#newmonster 6433 --Helioperses
#copystats 6420
#name "Helioperses"
#spr1 "./summod/solar_leo_1.tga"
#spr2 "./summod/solar_leo_2.tga"
#size 3
#hp 25
#awe 1
#heal
#str 16
#mr 14
#def 14
#att 14
#enc 2
#magicskill 8 1
#magicboost 0 1
#inspirational 2
#clearweapons
#weapon 474
#fireres 15
#armor "Clipeus"
#userestricteditem 1106
#end

#newmonster 6434--Sacrificial Bull
#name "Sacrificial Bull"
#spr1 "./summod/not_so_great_white_bull_1.tga"
#spr2 "./summod/not_so_great_white_bull_2.tga"
#size 4
#hp 30
#holy
#trample
#prot 6
#mr 5
#mor 13
#berserk 3
#str 17
#att 9
#def 7
#prec 5
#enc 3
#ap 16
#mapmove 3
#animal
#undisciplined
#maxage 20
#weapon 55
#weapon 331
#descr "This bull has been selected for sacrifice. However, only one bull may be sacrificed per month."
#end

#newmonster 6435 --heliotaurus
#name "Heliotaurus"
#spr1 "./summod/sunbull_1.tga"
#spr2 "./summod/sunbull_2.tga"
#size 4
#hp 45
#holy
#trample
#mr 14
#berserk 4
#str 19
#att 12
#def 8
#prec 5
#enc 2
#ap 17
#mapmove 3
#animal
#magicbeing
#mor 18
#maxage 200
#awe 1
#prot 10
#standard 2
#firepower 1
#heat 10
#fireres 15
#weapon 55
#weapon 331
#descr "The Heliotaurus is progeny of the Solar Bull itself.  It is sacred to the cult of the Solar Bull, and inspirational to the soldiers of Pythium."
#end

#newspell --Tarboleum
#name "Tarboleum"
#effect 10001
#damage 6434
#school 1
#researchlevel 3
#path 0 6
#pathlevel 0 1
#path 1 0
#pathlevel 1 1
#fatiguecost 500
#restricted 61
#onlyatsite 1816
#descr "A Heliodromus sacrifices a bull atop a deep pit in a monthly ceremony.  The pit is covered with boards with holes drilled through them, and the bottom is covered with embers.  The blood runs down and is burnt as an offering to the Solar Bull, spreading the dominion of the New God.  If a Leo is present, he may stand in the pit as the sacrifice occurs to be rejuvenated and transformed into a great champion of the Solar Bull.  This spell may only be cast at a Mithrea, a temple of the Solar Bull."
#end

#newspell --heliotaurus
#name "Summon Heliotaurus"
#effect 10001
#damage 6435
#school 0
#researchlevel 4
#path 0 0
#pathlevel 0 2
#path 1 8
#pathlevel 1 1
#fatiguecost 500
#restricted 61
#onlyatsite 1816
#descr "A Heliodromus beseeches the Solar Bull for aid, who sends his progeny to aid the armies of the Cult of the Solar Bull.  This spell may only be cast at a Mithrea, a temple of the Solar Bull."
#end

#newevent
#nation -2
#rarity 5
#msg "taurboleum [Mithraea]."
#req_site 1
#req_monster 6434
#req_targmnr 6420
#transform 6433
#pathboost 8 1
#killmon 6434
#incdom 1
#end

#newitem
#copyitem 135
#name "Suncrowned Helm"
#restricted 61
#restricteditem 1106
#type 6
#mainpath 0
#mainlevel 1
#constlevel 4
#armor "Sun Helmet"
#spr "./summod/helmsun.tga"
#descr "The glory of the Solar Bull is the only glory his champions need, and he bestows it upon those who wear the Suncrowned Helm, which lashes out at the eyes of those who dare to look with malice upon his servants."
#end

#newitem
#name "Horned Blade"
#restricted 61
#restricteditem 1106
#type 1
#mainpath 0
#mainlevel 1
#constlevel 4
#spr "./summod/hookedsword.tga"
#weapon 1419
#descr "This mighty sword is meant to resemble a horn of the Solar Bull, and allows his champion to smite the enemy with his divine fury."
#end

#newitem
#name "Rhabdos"
#restricted 61
#restricteditem 1106
#type 2
#mainpath 0
#mainlevel 3
#constlevel 6
#weapon 1416
#spr "./summod/Sunrod.tga"
#descr "This heavy, golden rod increases the divine authority of the champion who wields it."
#magicboost 8 1
#end

#newitem
#name "Solar Aspis"
#armor "Golden Hoplon"
#restricted 61
#type 4
#restricteditem 1106
#mainpath 0
#mainlevel 1
#secondarypath 6
#secondarylevel 1
#constlevel 2
#fireshield 10
#spr "./summod/shieldsun.tga"
#descr "The Solar Aspis wreathes the champion with the fury of the sun!"
#end

#newspell
#name "sunsear"
#descr "This spell burns"
#school -1
#path 0 0
#pathlevel 0 3
#path 0 8
#pathlevel 0 3
#aoe 1
#nreff 4
#effect 2
#damage 7
#spec 160
#end

#newspell
#name "Might of the Bull"
#school -1
#descr "This spell makes them attack better and move faster"
#path 0 0
#pathlevel 0 3
#path 0 8
#pathlevel 0 3
#effect 23
#aoe 1
#damage 33554432
#spec 140738030173336
#nextspell "sunsear"
#end

#newspell
#name "Visage of the Solar Bull"
#descr "This spell grants a few sacred warriors the power of the Solar Bull, causing their skin to glow with the heat of the sun as they fight with the fury of a bull, improving their attack and movement. While others may also benefit, those who do not follow that aspect of the new god will find themselves burnt by its glory."
#path 1 8
#pathlevel 0 1
#path 1 1
#pathlevel 0 2
#spec 140738030173336
#aoe 3000
#range 3
#school -1
#researchlevel 4
#fatiguecost 20
#effect 10
#damage 16384
#restricted 61
#nextspell "Might of the Bull"
#end

#newspell
#name "Sol Invictus"
#descr "This spell grants sacred warriors the power of the Solar Bull, causing their skin to glow with the heat of the sun as they fight with the fury of a bull, improving their attack and movement. While others may also benefit, those who do not follow that aspect of the new god will find themselves burnt by its glory."
#path 0 0
#pathlevel 0 2
#path 1 8
#pathlevel 1 3
#spec 140738030173336
#aoe 666
#range 3
#fatiguecost 100
#effect 10
#damage 16384
#school 5
#restricted 61
#researchlevel 8
#nextspell "Might of the Bull"
#end

----- CULT OF Fertility
#newmonster  6415--mystes/epoptes prophetshape
#copystats 552
#name "Archgalli"
#spr1 "./summod/archigalli_1.tga"
#spr2 "./summod/archigalli_2.tga"
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Fertility is one of these, and is heavily influenced by the arcoscephalian priestesses and pangaean debauchery.  The new god has chosen a member of the Cult of Fertility to be his new prophet, who was immediately raised to the high title of Archgalli.  Like all Galli, the Archgalli has sacrificed their fertility to the new god, and the members of the Cult of Fertility have gained new powers and acceptance as a result."
#clearmagic
#magicboost 6 1
#gcost 100
#rcost 1
#hp 10
#mr 13
#mor 11
#att 10
#def 10
#prec 10
#enc 3
#mapmove 2
#ap 12
#clearweapons
#weapon 92
#itemslots 15494
#patience -3
#end


#newsite 1817
#name "Anaktoron"
#heal 2
#supply 30
#path 6
#rarity 5
#level 3
#com 6421
#com 6422
#com 6423
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_anycode -1106
#req_fort 1
#req_freesites 1
#req_nositenbr 1817
#addsite 1817 --
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_code -1106
#req_fort 1
#req_freesites 1
#req_nositenbr 1817
#addsite 1817 --
#nolog
#notext
#end

#newevent  #msg "Noprophet. [Anaktoron]." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  #req_site 1
#removesite 1817
#end

#newevent  #msg "Nofort. [Anaktoron]." 
#rarity 5  #req_fort 0 #nation -2 #notext #nolog  #req_site 1
#removesite 1817
#end

#newevent #msg "Enemy. [Anaktoron]." #rarity 5 #req_notnation 61 #nation -2 #notext #nolog  #req_site 1 
#removesite 1817 #end


#newmonster 6421 --epoptes nonheretic/nonpoorresearcher, 2 events
#copystats 1875
#copyspr 1875
#prophetshape 6415
#clearmagic
#magicskill 6 1
#magicskill 3 1
#magicskill 8 1
#custommagic 9216 10
#custommagic 8192 50
#holy
#heretic 0
#researchbonus 0
#gcost 100
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Fertility is one of these.  In its aspect of the Great Mother, it is very popular among women and most of the members in its higher ranks are female. The Epoptes is a high ranking female member of the Cult of the Fertility who follows it in the aspect of The Great Mother.  The liturgy of The Great Mother is heavily influenced by the Arcoscephalean priestesses and their skill in healing. Like all mystics of the Empire, the Epoptes leads worshippers astray and lowers the Dominion in which she resides. She wears a garland and a green dress and carries an urn and a twig as signs of her office. The urn is enchanted and is always full of grain. Now that the new god has chosen a member of the Cult of Fertility to be his new prophet, they are vested with some priestly authority and are willing to share their secrets."
#prophetshape 6415
#noslowrec
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_site 1
#req_targmnr 1875
#transform 6421
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1106
#req_targmnr 1875
#transform 6421
#nolog
#notext
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6421
#transform 1875
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6421
#transform 1875
#end

#newmonster 6422 --mystes nonheretic/nonpoorresearcher, 2 events
#copystats 1876
#copyspr 1876
#researchbonus -1
#gcost 50
#holy
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of Fertility in its aspect of The Great Mother is very popular among women and most of the members in its higher ranks are female. The Mystes is a low ranking follower of the Great Mother.  The liturgy of the mystery cult is heavily influenced by the Arcoscephalean priestesses, but the Mystes are not initiated in the art of healing. Unlike her elder sister, the Epoptes, the Mystes doesn't initiate others into the Cult. She wears a garland and a green dress. As the new god has chosen a member of the Cult of Fertility to be his prophet, they are less unwilling to share secrets with outsiders."
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_site 1
#req_targmnr 1876
#transform 6422
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1106
#req_targmnr 1876
#transform 6422
#nolog
#notext
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6422
#transform 1876
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6422
#transform 1876
#end

#newmonster 6423 --reveler notgarbage, 2 events
#copystats 1880
#copyspr 1880
#descr "Throughout the empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of Fertility is one of these. One of the forms it takes is in the practice of Revelry, which is influenced by Pangaea worship and orgiastic hedonism. The Reveler is a high ranking member of the cult and an organizer of orgies in the wild. While the practice of Revelry is no longer considered an affront to the eyes of the lord, it has become even more disruptive. He wears a garland and carries a goblet of wine. Revelers are generally looked upon with distaste and fear and some rumors claim that they practice cannibalism and blood sacrifices in their orgies."
#heretic 0
#researchbonus -2
#incunrest 50
#holy
#clearmagic
#magicskill 6 1
#custommagic 24576 40
#prophetshape 6415
#gcost 75
#magicskill 8 1
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_site 1
#req_targmnr 1880
#transform 6423
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope"
#req_anycode -1106
#req_targmnr 1880
#transform 6423
#nolog
#notext
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6423
#transform 1880
#end
#newevent  #msg "Noprophet." 
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6423
#transform 1880
#end

#newmonster 6432 --Galli 
#copystats 552
#name "Galli"
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Fertility is one of these, and is heavily influenced by the arcoscephalian priestesses and pangaean debauchery.  All Galli have sacrificed their fertility to the new god, and have been granted additional powers over nature as a result. Due to their strange and bloody practices, they are unsettling to the general populace."
#spr1 "./summod/galli_1.tga"
#spr2 "./summod/galli_2.tga"
#clearmagic
#magicboost 8 1
#holy
#prophetshape 6415
#beastmaster 1
#patience -3
#incunrest 10
#end

#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_site 1
#req_targmnr 6451
#transform 6432
#nolog
#notext
#end
#newevent
#rarity 5 #req_fornation 61 #nation -2  
#msg "nope [Anaktoron]."
#req_anycode -1106
#req_targmnr 6451
#transform 6432
#nolog
#notext
#end

#newevent  #msg "Noprophet." --galli to heretic1
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6432
#transform 6451
#end
#newevent  #msg "Noprophet." --galli to heretic2
#rarity 5  #req_nomnr 6415 #nation -2 #notext #nolog  
#req_targmnr 6432
#transform 6451
#end

#newmonster 6451 --heretic galli
#copystats 552
#name "Galli"
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Fertility is one of these, and is heavily influenced by the arcoscephalian priestesses and pangaean debauchery.  All Galli have sacrificed their fertility to the new god, and have been granted additional powers over nature as a result. Due to their strange and bloody practices, they are unsettling to the general populace, and since the new god has turned away, they have been damaging to the faith of the populace."
#spr1 "./summod/galli_1.tga"
#spr2 "./summod/galli_2.tga"
#clearmagic
#magicboost 8 -3
#prophetshape 6415
#beastmaster 1
#patience -3
#incunrest 10
#heretic 1
#end

#selectspell 169
#descr "The reveler organizes a wild orgy in the Anaktoron with the sacrifice of a virgin as the climactic finale. The orgy will attract a satyr intent on uninhibited fornication. During the orgy six women will be struck by the madness of the wild, shedding all clothes and civilized manners and turning to the wild as raging maenads. The satyr will remain after the orgy to lure more women into the wild.  This ritual can only be cast in the temples of the Cult of Fertility."
#onlyatsite 1817
#end

#newspell
#name "Claw of Cybele"
#descr "The Claw of Cybele sends a servant of the Fertility Cult to kill a foreign enemy.  This ritual can only be cast in the temples of the Cult of Fertility."
#effect 10050
#school 0
#researchlevel 6
#damage -1315
#path 0 6
#path 1 8
#pathlevel 0 2
#pathlevel 0 2
#provrange 3
#onlyatsite 1817
#restricted 61
#end

#newspell 
#copyspell 973
#name "Fertility Rite"
#restricted 61
#onlyatsite 1817
#descr "A Galli performs a bloody fertility rite to increase the fertility of this land or a nearby land.  This ritual can only be cast in the temples of the Cult of Fertility."
#researchlevel 3
#path 0 7
#path 1 8
#pathlevel 0 1
#pathlevel 1 2
#fatiguecost 200
#provrange 1
#onlyfriendlydst 1
#nowatertrace 1
#end

#newspell
#name "Sacrifice of Fertility"
#descr "With this ritual, which can only be performed at an Anaktoron a few times per month, an Epoptes or Reveler sacrifices their fertility to become a Galli and gain new powers over plant and animal. This ritual can only be cast in the temples of the Cult of Fertility."
#path 0 6
#pathlevel 0 1
#path 1 8
#pathlevel 1 1
#restricted 61
#onlyatsite 1817
#fatiguecost 200
#school 1
#researchlevel 0
#effect 10001
#damage 6438
#nreff 1
#end

#newspell 
#name "Guardian of Fertility"
#descr "With this spell, a Galli transforms themself into the shape of a monsterous boar to find and destroy sneaking enemies. The Galli can change back at will. This spell can only be cast in the temples of the Cult of Fertility."
#path 0 3
#pathlevel 0 1
#path 1 8
#pathlevel 1 2
#restricted 61
#onlyatsite 1817
#fatiguecost 1000
#school 1
#researchlevel 4
#effect 10001
#damage 6446
#nreff 1
#end

#newspell 
#name "Slayer of Fertility"
#descr "With this spell, a Galli transforms themself into the shape of a monstrous lion to hunt the enemy.  The Galli has reduced magical powers in this form, but can change back at will. This spell can only be cast in the temples of the Cult of Fertility."
#path 0 6
#pathlevel 0 1
#path 1 8
#pathlevel 1 2
#restricted 61
#onlyatsite 1817
#fatiguecost 1000
#school 1
#researchlevel 5
#effect 10001
#damage 6445
#nreff 1
#end

#newspell
#name "Seekers of Fertility"
#descr "This spell summons a group of boars of various sizes to find sneaking enemies."
#path 0 3
#pathlevel 0 1
#path 1 8
#pathlevel 1 2
#restricted 61
#onlyatsite 1817
#fatiguecost 300
#school 0
#researchlevel 4
#effect 10001
#damage -1317
#nreff 2004
#end

#newspell
#name "Hunters of Fertility"
#descr "This spell summons a group of lions of varying degrees of strength to hunt down the enemy."
#path 0 6
#pathlevel 0 1
#path 1 8
#pathlevel 1 2
#restricted 61
#onlyatsite 1817
#fatiguecost 300
#school 1
#researchlevel 5
#effect 10001
#damage -1316
#nreff 1003
#end


#newmonster 6438
#copystats 435
#copyspr 435
#name "Sacrificial Assistant"
#descr "This sacrificial assistant is here to help a Reveler or Epoptes become a Galli through sacrificing their fertility."
#end

#newmonster 6440
#copystats 435 --maenad
#copyspr 435
#montag 1315
#summerpower 25
#batstartsum2 6440
#transformation 0
#descr "These Maenads were sent to kill the enemies of Pythium in the name of the new god and fertility!"
#end

#newmonster 6441
#copystats 2133 --lioness
#copyspr 2133
#montag 1315
#transformation 0
#summerpower 25
#descr "This lioness was sent to kill the enemies of Pythium in the name of the new god and fertility!"
#end

#newmonster 6442
#copystats 628 --great lion
#copyspr 628
#montag 1315
#summerpower 25
#transformation 0
#name "Lion"
#descr "This lion was sent to kill the enemies of Pythium in the name of the new god and fertility!"
#end

#newmonster 6443
#copystats 549 --boar
#copyspr 549
#montag 1315
#summerpower 25
#transformation 0
#descr "This boar was sent to kill the enemies of Pythium in the name of the new god and fertility!"
#end

#newmonster 6444
#copystats 2136 --great boar
#copyspr 2136
#montag 1315
#summerpower 25
#transformation 0
#descr "This large boar was sent to kill the enemies of Pythium in the name of the new god and fertility!"
#end

#newmonster 6445
#copystats 2133
#copyspr 628
#transformation 0
#name "Ritual Lion"
#descr "This lion awaits the ritual in which a Galli will use its form."
#end

#newmonster 6446
#copystats 549
#copyspr 549
#transformation 0
#name "Ritual Boar"
#descr "This boar awaits the ritual in which a Galli will use its form."
#end

#newmonster 6447 --kith lion
#copystats 514
#copyspr 514
#mr 14
#summerpower 25
#magicboost 53 -1
#magicboost 8 1
#shapechange 6432
#assassin
#patience 1
#name "Mighty Lion"
#descr "This mighty lion with an extremely thick hide is servant of the cult of fertility.  Some lions are transformed Galli."
#okleader
#beastmaster 1
#stealthy 20
#transformation 0
#end

#newmonster 6448 -- giant boar
#copystats 549
#copyspr 1910
#transformation 0
#hp 53
#mr 14
#mor 15
#str 20
#weapon 331
#prot 14
#trample
#animal
#att 12
#def 9
#prec 5
#enc 2
#ap 20
#mapmove 3
#maxage 75
#forestsurvival
#summerpower 25
#shapechange 6432
#okleader
#beastmaster 1
#inspirational 1
#patience -2
#fear 5
#patrolbonus 10
#name "Giant Boar"
#descr "This mighty boar is a servant of the cult of fertility, and excels at finding the enemy.  Some Giant Boars are transformed Galli."
#end

#newmonster 6449 --boar
#copystats 549
#copyspr 549
#mr 8
#summerpower 25
#montag 1317
#name "Boar of Fertility"
#descr "This boar is a servant of the cult of fertility.  Send it seek out hidden foes."
#patrolbonus 2
#end

#newmonster 6416  --big boar
#copystats 2136
#copyspr 2136
#mr 10
#summerpower 25
#montag 1317
#name "Boar of Fertility"
#patrolbonus 3
#descr "This boar is a servant of the cult of fertility.  Send it seek out hidden foes."
#end

#newmonster 6417 --lioness
#copystats 2133
#copyspr 2133
#montag 1316
#summerpower 25
#mr 10
#stealthy 20
#name "Lion of Fertility"
#descr "This lioness is a servant fo the cult of fertility, and will fiercely battle on behalf of the cult."
#end

#newmonster 6418 --lion
#copystats 628
#copyspr 628
#summerpower 25
#mr 10
#montag 1316
#stealthy 20
#name "Lion of Fertility"
#descr "This lion is a servant fo the cult of fertility, and will fiercely battle on behalf of the cult."
#end


--- 4 events transforming into Galli.
#newevent  #msg "Reveler. [Anaktoron]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6438
#req_targmnr 6423
#transform 6432
#killmon 6438
#req_site 1
#req_rare 50
#decscale 3
#end

#newevent  #msg "Epoptes. [Anaktoron]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6438
#req_targmnr 6421
#transform 6432
#killmon 6438
#req_site 1
#req_rare 50
#decscale 3
#end

#newevent  #msg "Epoptes. [Anaktoron]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6438
#req_targmnr 6421
#transform 6432
#killmon 6438
#req_site 1
#end

#newevent  #msg "Reveler. [Anaktoron]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6438
#req_targmnr 6423
#transform 6432
#killmon 6438
#req_site 1
#end

#newevent  #msg "boar. [Anaktoron]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6446
#req_targmnr 6432
#transform 6448
#killmon 6446
#req_site 1
#req_targpath1 3
#end

#newevent  #msg "lion. [Anaktoron]." 
#rarity 5  #nation -2 #notext #nolog  
#req_monster 6445
#req_targmnr 6432
#transform 6447
#killmon 6445
#req_site 1
#end


---mage edits
#selectmonster 761 --serpent priest
#clearmagic
#magicskill 2 1
#magicskill 6 2
#magicskill 8 1
#custommagic 14848 100
#custommagic 14848 20
#prophetshape 6413
#descr "Serpent Priests are the leaders of the Pythian Serpent Cult. The Serpent Cult is one of the many mystery cults that spread to Pythium during the collapse of Ermor. Sauromancers from C'tis were invited by the Emperor and his Theurgs to battle the growing threat and with them came the Serpent Cult. The Serpent Cult was heralded as the answer to the Ermorian threat and quickly received Imperial acceptance. Soon it replaced the Order of the Theurgs as the state cult and grew in influence and power. In the years that have passed since the lizards left Pythium, the Cult has changed. Serpents are venerated and the priests of the Cult wear serpent masks and carry serpent staffs as signs of their office. Serpent Priests constantly expose themselves to poisons and their skin has a deathly pallor. They are skilled in Nature magic and some Water magic.  However, without the official imprimateur of the new god, they are still lacking in divine authority."
#end
#selectmonster 865
#prophetshape 6413
#userestricteditem 1105
#end
#selectmonster 830 --serpent acolyte
#gcost 10010
#magicboost 8 -1
#end

#selectmonster 1873 --heliodromus
#magicboost 8 -3
#magicskill 8 1
#prophetshape 6414 --heliopater
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Solar Bull is very popular among the soldiers of the Limes and most of its higher members are former soldiers or Centurions. The Heliodromus, Sun-Courier, is the a high ranking member of the Cult of the Solar Bull. He, for it is only males that are allowed in the Cult, performs the Taurobolium, ritual sacrifice of a bull. The Heliodromus carries a golden sacrificial knife. Like all mystics of the Empire, the Heliodromus leads worshippers astray and lowers the Dominion in which he resides. He wears an exotic hat, reputedly similar to those of the foreign founders of the Cult. The Heliodromus forswears his former life upon initiation and does not lead armies. The Heliodromii are secretive and do not share their wisdom with outsiders. This makes them rather poor researchers."
#end
#selectmonster 1872 --leo
#userestricteditem 1106
#end

#selectmonster 1880 --reveler
#prophetshape 6415
#clearmagic
#magicskill 6 1
#magicskill 8 1
#magicboost 8 -3
#custommagic 24576 40
#gcost 75
#descr "Throughout the empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of Fertility is one of these. One of the forms it takes is in the practice of Revelry, which is influenced by Pangaea worship and orgiastic hedonism. The Reveler is a high ranking member of the cult and an organizer of orgies in the wild. The practice of Revelry has proven to be remarkably destructive to the faith of the populace, and no other mystic is as detrimental to the worship of the True God. He wears a garland and carries a goblet of wine. Revelers are generally looked upon with distaste and fear and some rumors claim that they practice cannibalism and blood sacrifices in their orgies."
#end

#selectmonster 1875 --epoptes
#prophetshape 6415
#clearmagic
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of the Fertility is one of these.  is very popular among women and most of the members in its higher ranks are female. The Epoptes is a high ranking female member of the Cult of the Fertility who follows it in the aspect of The Great Mother.  The liturgy of The Great Mother is heavily influenced by the Arcoscephalean priestesses and their skill in healing. Like all mystics of the Empire, the Epoptes leads worshippers astray and lowers the Dominion in which she resides. She wears a garland and a green dress and carries an urn and a twig as signs of her office. The urn is enchanted and is always full of grain. The Epoptes are secretive and do not share their wisdom with outsiders. This makes them rather poor researchers."
#magicskill 6 1
#magicskill 3 1
#custommagic 8192 50
#custommagic 9216 10
#magicskill 8 1
#magicboost 8 -3
#gcost 10030
#end
#selectmonster 1876 --mystes
#descr "Throughout the Empire, mystery cults have spread and flourished with the influx of foreign culture. One of these, the Serpent Cult, has replaced the official state cult of the Theurgs, but many others ply their trade in secret. The Cult of Fertility in its aspect of The Great Mother is very popular among women and most of the members in its higher ranks are female. The Mystes is a low ranking follower of the Great Mother.  The liturgy of the mystery cult is heavily influenced by the Arcoscephalean priestesses, but the Mystes are not initiated in the art of healing. Unlike her elder sister, the Epoptes, the Mystes doesn't initiate others into the Cult. She wears a garland and a green dress. The Epoptes and Mystes are secretive and do not share their wisdom with outsiders. This makes them rather poor researchers."
#end

----genericus

#newarmor 754
#name "Clipeus"
#type 4
#prot 13
#def 5
#enc 1
#end


#newweapon 1401
#copyweapon 21
#name "Weighted Darts"
#rcost 1
#dmg 0
#att 1
#range -1
#nratt 1
#ammo 5
#pierce
#end

#newweapon 1406 --serpent breath
#copyweapon 535
#name "Serpent Breath"
#aoe 3
#end

#newweapon 1416
#copyweapon 238
#name "Rhabdos"
#secondaryeffect 216
#end

#newweapon 1419
#name "Horned Sword"
#slash
#pierce
#dmg 9
#att 3
#def 1
#len 2
#nratt 1
#secondaryeffect 276
#end

#selectmonster 765 --serpent lord
#gcost 10030
#end
#selectmonster 763 --serpent cata
#gcost 10030
#end

#selectmonster 1850
#gcost 210
#end
#selectmonster 1859
#gcost 28
#end

#selectmonster 1865 --limitane solaris
#cleararmor 
#clearweapons 
#spr1 "./summod/limesol_1.tga"
#spr2 "./summod/limesol_2.tga"
#weapon 8
#weapon 1401
#armor 126
#armor "Clipeus"
#armor 13
#gcost 14
#end

#selectmonster 1863 --limitane
#cleararmor 
#clearweapons 
#spr1 "./summod/lime_1.tga"
#spr2 "./summod/lime_2.tga"
#weapon 8
#weapon 1401
#armor 126
#armor "Clipeus"
#armor 13
#def 10
#descr "The Limitanei, frontier soldiers, guard the frontier from the enemies of the Empire. The lorica segmentata of earlier times has been replaced by heavier, easy to manufacture chain, the tower shield with a lighter clipeus,, the javelin with plumbatae, and the short gladius is replaced by the spatha. The Limitanei are drilled mainly for defense and are quite slow when on the march. However, they are good at defending forts. Most Limitanei come from the local populace and are given less pay then the soldiers of the Empire proper. Life on the Limes is often hard. Uncomfortable army camps, exposure to weather and remoteness of location contribute to the lack of morale among the Limitanei."
#end

#selectmonster 2152 --limitane standard
#spr1 "./summod/limestand_1.tga"
#spr2 "./summod/limestand_2.tga"
#cleararmor 
#clearweapons 
#armor 126
#armor "Clipeus"
#armor 13
#weapon 8
#weapon 1401
#gcost 18
#mapmove 2
#def 11
#end

#selectmonster 1867 --comitanse
#spr1 "./summod/comit_1.tga"
#spr2 "./summod/comit_2.tga"
#clearweapons 
#cleararmor 
#armor 126
#armor "Clipeus"
#armor 9
#weapon 8
#weapon 1401
#gcost 15
#end

#selectmonster 2475 --standard
#spr1 "./summod/comistand_1.tga"
#spr2 "./summod/comistand_2.tga"
#clearweapons 
#cleararmor 
#armor 126
#armor "Clipeus"
#armor 9
#weapon 8
#weapon 1401
#gcost 20
#end

#selectmonster 1864 --limitane primani
#spr1 "./summod/limprime_1.tga"
#spr2 "./summod/limprime_2.tga"
#cleararmor 
#armor 126
#armor "Clipeus"
#armor 18 --full chain
#gcost 11
#def 11
#mapmove 2
#descr "The Primani are the elites of the frontier troops. They don heavier armor and receive intensive training. They are given all the comfort army life has to offer and they are generally less listless than other soldiers on the Limes."
#end

#selectmonster 1866--primani solaris
#spr1 "./summod/solprime_1.tga"
#spr2 "./summod/solprime_2.tga"
#cleararmor 
#armor 126
#armor "Clipeus"
#armor 18 --full chain
#gcost 17
#mapmove 2
#end

#selectmonster 1868--palatine --note - may keep armor the same
--#spr1 "./summod/palatine_1.tga"
--#spr2 "./summod/palatine_2.tga"
--#cleararmor 
--#armor 126
--#armor "Clipeus"
--#armor 14
#gcost 19
#end

----Solaris discount clones
#newmonster 6424 --limitane solaris
#copystats  1865
#copyspr 1865
#gcost 13
#firstshape 1865
#end
#newmonster 6425 --primane
#copystats 1866
#copyspr 1866
#gcost 16
#firstshape 1866
#end



