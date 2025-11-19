uint64_t sub_261BE8C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateSectionDisplayNameAppIntent.perform()(a1);
}

uint64_t sub_261BE8CD4(uint64_t a1)
{
  v2 = sub_261B316FC();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261BE8D5C()
{
  result = qword_280D22BD8;
  if (!qword_280D22BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BD8);
  }

  return result;
}

unint64_t sub_261BE8DB4()
{
  result = qword_280D22BE8;
  if (!qword_280D22BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BE8);
  }

  return result;
}

uint64_t sub_261BE8E68()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC2E8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC2E8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BE9054()
{
  v27 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);

  sub_261CFCBB4();
  LOBYTE(v4) = *(v3 + *(v4 + 84));
  sub_261BED568(v3, type metadata accessor for ListEntity);
  v5 = *(v0 + 176);
  v6 = *(v0 + 128);
  v19 = *(v0 + 104);
  v7 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = v7;
  v25 = *(v0 + 80);
  v8 = *(v0 + 32);
  v21 = *(v0 + 16);
  if (v4)
  {
    v10 = (v0 + 144);
    v9 = *(v0 + 144);
    v20 = v5;
    v26 = *(v0 + 96);
    v22 = v8;
    sub_261BEAFB4(&v19, v9);
  }

  else
  {
    v10 = (v0 + 152);
    v11 = *(v0 + 152);
    v20 = v5;
    v26 = *(v0 + 96);
    v22 = v8;
    sub_261BE9260(&v19, v11);
  }

  v12 = *(v0 + 168);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  sub_261BED500(*v10, v12, type metadata accessor for ListEntity);
  sub_261BECB94();
  sub_261CFC994();
  sub_261BED568(v12, type metadata accessor for ListEntity);

  v17 = *(v0 + 8);

  return v17();
}

void sub_261BE9260(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v255 = a2;
  v280 = *MEMORY[0x277D85DE8];
  v246 = sub_261CFD884();
  v245 = *(v246 - 8);
  v4 = *(v245 + 64);
  MEMORY[0x28223BE20](v246);
  v244 = v242 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_261CFDDB4();
  v252 = *(v253 - 8);
  v6 = *(v252 + 64);
  MEMORY[0x28223BE20](v253);
  v250 = (v242 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v251 = sub_261CFE314();
  v249 = *(v251 - 8);
  v8 = *(v249 + 64);
  v9 = MEMORY[0x28223BE20](v251);
  v247 = v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v248 = v242 - v11;
  v254 = sub_261CFDDD4();
  v271 = *(v254 - 8);
  v12 = v271[8];
  MEMORY[0x28223BE20](v254);
  v267 = v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v242 - v16;
  v269 = type metadata accessor for GroupEntity();
  v18 = *(v269 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v269);
  v272 = v242 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AppEntityID();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v242 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for ListEntity();
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[2];
  v258 = a1[3];
  v31 = a1[5];
  v266 = a1[4];
  v259 = v31;
  v32 = a1[7];
  v268 = a1[6];
  v260 = v32;
  v33 = a1[9];
  v262 = a1[8];
  v261 = v33;
  v34 = a1[11];
  v263 = a1[10];
  v264 = v34;
  v265 = a1[12];
  v35 = *(v2 + 16);
  sub_261CFCBB4();
  sub_261BED5C8(&v29[*(v26 + 28)], v24, type metadata accessor for AppEntityID);
  sub_261BED568(v29, type metadata accessor for ListEntity);
  v36 = *(v21 + 20);
  v37 = *v24;
  v38 = v24[1];
  v39 = objc_allocWithZone(MEMORY[0x277D44700]);
  v40 = sub_261CFD814();
  v41 = sub_261CFFA54();
  v42 = [v39 initWithUUID:v40 entityName:v41];

  sub_261BED568(v24, type metadata accessor for AppEntityID);
  v273 = 0;
  v43 = [v35 fetchListWithObjectID:v42 error:&v273];

  v44 = v273;
  if (!v43)
  {
    v51 = v273;
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_175;
  }

  v45 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v46 = v44;
  v243 = v35;
  v47 = [v45 initWithStore_];
  [v47 setSaveIsNoopIfNoChangedKeys_];
  v48 = [v47 updateList_];
  v49 = [v43 parentList];
  if (v49)
  {
    v50 = v49;
    v270 = [v47 updateList_];
  }

  else
  {
    v270 = 0;
  }

  sub_261CFCBB4();
  v52 = v269;
  v53 = (*(v18 + 48))(v17, 1, v269);
  v257 = v47;
  v268 = v48;
  v256 = v43;
  if (v53 != 1)
  {
    sub_261BED500(v17, v272, type metadata accessor for GroupEntity);
    v57 = [v43 parentList];
    if (v57)
    {
      v58 = v57;
      v59 = [v57 objectID];
    }

    else
    {
      v59 = 0;
    }

    v60 = &v272[*(v52 + 20)];
    v61 = *(v21 + 20);
    v62 = *v60;
    v63 = *(v60 + 1);
    v64 = objc_allocWithZone(MEMORY[0x277D44700]);
    v65 = sub_261CFD814();
    v66 = sub_261CFFA54();
    v67 = [v64 initWithUUID:v65 entityName:v66];

    if (v59)
    {
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v68 = v59;
      v69 = v59;
      v70 = sub_261D000F4();

      if (v70)
      {

        LODWORD(v269) = 0;
        v48 = v268;
LABEL_16:
        sub_261BED568(v272, type metadata accessor for GroupEntity);
        goto LABEL_17;
      }
    }

    else
    {
      v68 = 0;
    }

    v48 = v268;
    if ([v268 canBeIncludedInGroup] && (objc_msgSend(v48, sel_isGroup) & 1) == 0)
    {
      v94 = objc_allocWithZone(MEMORY[0x277D44700]);
      v95 = sub_261CFD814();
      v96 = sub_261CFFA54();
      v97 = [v94 initWithUUID:v95 entityName:v96];

      v273 = 0;
      v98 = [v243 fetchListWithObjectID:v97 error:&v273];

      if (v98)
      {
        v99 = v273;
        v100 = v257;
        v101 = [v257 updateList_];
        sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
        v102 = [v48 accountID];
        v103 = [v101 accountID];
        v104 = sub_261D000F4();

        v105 = v256;
        if (v104)
        {
          v106 = [v101 sublistContext];
          if (v106)
          {
            v107 = v106;
            [v106 addListChangeItem_];

            LODWORD(v269) = 1;
            v270 = v101;
            goto LABEL_16;
          }

          sub_261B01D70();
          swift_allocError();
          *v202 = 0;
        }

        else
        {
          sub_261B01D70();
          swift_allocError();
          *v114 = 8;
        }

        swift_willThrow();

LABEL_28:
        sub_261BED568(v272, type metadata accessor for GroupEntity);
        goto LABEL_175;
      }

      v113 = v273;
      sub_261CFD654();
    }

    else
    {
      sub_261B01D70();
      swift_allocError();
      *v78 = 1;
    }

    swift_willThrow();

    goto LABEL_28;
  }

  sub_261AE6A40(v17, &unk_27FEDD950, &unk_261D01440);
  v54 = [v48 parentListID];
  if (v54)
  {

    v55 = [v43 account];
    v56 = [v47 updateAccount_];

    [v56 addListChangeItem_];
    v270 = 0;
    LODWORD(v269) = 1;
  }

  else
  {
    LODWORD(v269) = 0;
  }

LABEL_17:
  sub_261CFCBB4();
  v71 = v274;
  if (v274)
  {
    v72 = v273;
    v73 = [v48 name];
    v74 = sub_261CFFA74();
    v76 = v75;

    if (v74 == v72 && v71 == v76)
    {
    }

    else
    {
      v77 = sub_261D00614();

      if (v77)
      {
      }

      else
      {
        v79 = sub_261CFFA54();

        [v48 setName_];

        LODWORD(v269) = 1;
      }
    }
  }

  sub_261CFCBB4();
  v81 = v273;
  v80 = v274;
  v83 = v275;
  v82 = v276;
  v84 = v277;
  v85 = [v48 appearanceContext];
  v86 = v85;
  if (!v80)
  {
    if (v85)
    {
      [v85 setBadge_];
    }

    goto LABEL_63;
  }

  if (v85)
  {
    v273 = v81;
    v274 = v80;
    v275 = v83;
    v276 = v82;
    v277 = v84;
    v87 = sub_261CA695C();
    if (v87)
    {
      v88 = v87;
      v89 = MEMORY[0x26671C600]();
      v272 = v88;
      if (v89)
      {
        v90 = v89;
        v91 = [v89 rawValue];

        if (v91)
        {
          v259 = sub_261CFFA74();
          v93 = v92;
        }

        else
        {
          v259 = 0;
          v93 = 0;
        }

        v88 = v272;
      }

      else
      {
        v259 = 0;
        v93 = 0;
      }

      v108 = [v88 rawValue];
      if (v108)
      {
        v109 = v108;
        v258 = sub_261CFFA74();
        v111 = v110;

        if (v93)
        {
          if (v111)
          {
            if (v259 == v258 && v93 == v111)
            {

LABEL_61:
              sub_261AF9C70(v81, v80);

              goto LABEL_62;
            }

            v115 = sub_261D00614();

            if (v115)
            {
              goto LABEL_61;
            }

LABEL_57:
            v112 = v272;
            [v86 setBadge_];

            sub_261AF9C70(v81, v80);
            LODWORD(v269) = 1;
LABEL_62:
            v48 = v268;
            goto LABEL_63;
          }
        }

        else if (!v111)
        {
          goto LABEL_61;
        }
      }

      else if (!v93)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }
  }

  sub_261AF9C70(v81, v80);
LABEL_63:
  v116 = v271;
  sub_261CFCBB4();
  if (v274)
  {
    v117 = v48;
    v118 = v273;
    v119 = v276;
    v121 = v277;
    v120 = v278;
    v122 = v279;
    v272 = v275;
    v266 = v274;
    v123 = v117;
    v124 = [v123 accountCapabilities];
    v125 = [v124 supportsListAppearance];

    v126 = sub_261B42C3C(v125);
    if (v126)
    {
      v242[0] = v118;
      v242[1] = v119;
      v243 = v121;
      v258 = v120;
      v259 = v122;
      v127 = v126;
      v128 = [v123 color];
      if (v128 && (v129 = v128, sub_261B05020(0, &qword_27FEDC300, 0x277D445D0), v130 = v127, v131 = sub_261D000F4(), v130, v129, (v131 & 1) != 0))
      {
        sub_261AF98C8(v242[0], v266);
      }

      else
      {
        [v123 setColor_];

        sub_261AF98C8(v242[0], v266);
        LODWORD(v269) = 1;
      }
    }

    else
    {
      sub_261AF98C8(v118, v266);
    }

    v48 = v268;
    v116 = v271;
  }

  else
  {
    [v48 setColor_];
  }

  sub_261CFCBB4();
  v132 = v267;
  if (v273 != 2)
  {
    v133 = v273 & 1;
    if ([v48 isPinned] != v133)
    {
      [v48 setIsPinned_];
      LODWORD(v269) = 1;
    }
  }

  sub_261CFCBB4();
  v134 = v273;
  if (v273 != 2)
  {
    v135 = [v48 autoCategorizeContextChangeItem];
    if (!v135 || (v136 = v135, v137 = [v135 shouldAutoCategorizeItems], v136, v132 = v267, v137 != (v134 & 1)))
    {
      v138 = [v48 autoCategorizeContextChangeItem];
      [v138 setShouldAutoCategorizeItems_];

      LODWORD(v269) = 1;
    }
  }

  sub_261CFCBB4();
  if (v273 != 2)
  {
    v139 = v273 & 1;
    v271 = sub_261CFDE54();
    v140 = sub_261CFDDA4();
    *v132 = [v48 remObjectID];
    v141 = *MEMORY[0x277D45C90];
    v142 = v116[13];
    v143 = v254;
    v142(v132, v141, v254);
    v144 = sub_261CFDDC4() & 1;

    v145 = v143;
    v146 = v116[1];
    v146(v132, v145);
    LODWORD(v272) = v139;
    v147 = v144 == v139;
    v48 = v268;
    if (!v147)
    {
      v148 = v145;
      v149 = sub_261CFDDA4();
      *v132 = [v48 remObjectID];
      v142(v132, v141, v148);
      sub_261CFDDF4();

      v146(v132, v148);
      LODWORD(v269) = 1;
    }
  }

  sub_261CFCBB4();
  v150 = v273;
  if (v273 == 2)
  {
    LOBYTE(v273) = 2;
    sub_261BECF50(&v273, MEMORY[0x277D45C88]);
    v151 = v256;
    goto LABEL_105;
  }

  v152 = MEMORY[0x277D45C88];
  sub_261BECBEC(MEMORY[0x277D45C88], &v273);
  v151 = v256;
  if (v273 == 2)
  {
    goto LABEL_85;
  }

  if (v273)
  {
    v165 = 0x736E6D756C6F63;
  }

  else
  {
    v165 = 1953720684;
  }

  if (v273)
  {
    v166 = 0xE700000000000000;
  }

  else
  {
    v166 = 0xE400000000000000;
  }

  if (v150)
  {
    v167 = 0x736E6D756C6F63;
  }

  else
  {
    v167 = 1953720684;
  }

  if (v150)
  {
    v168 = 0xE700000000000000;
  }

  else
  {
    v168 = 0xE400000000000000;
  }

  if (v165 == v167 && v166 == v168)
  {

    goto LABEL_105;
  }

  v169 = sub_261D00614();

  if ((v169 & 1) == 0)
  {
LABEL_85:
    LOBYTE(v273) = v150 & 1;
    if (v150)
    {
      v153 = MEMORY[0x277D45D60];
    }

    else
    {
      v153 = MEMORY[0x277D45D58];
    }

    sub_261BED2EC(&v273);
    v154 = v249;
    v155 = *v153;
    v156 = v247;
    v157 = v251;
    (*(v249 + 104))(v247, v155, v251);
    v158 = v248;
    (*(v154 + 32))(v248, v156, v157);
    sub_261CFDE54();
    v159 = sub_261CFDDA4();
    v160 = [v48 remObjectID];
    v161 = v250;
    *v250 = v160;
    v162 = *v152;
    v163 = v252;
    v164 = v253;
    (*(v252 + 104))(v161, v162, v253);
    sub_261CFDD94();

    (*(v163 + 8))(v161, v164);
    (*(v154 + 8))(v158, v157);
    LODWORD(v269) = 1;
  }

LABEL_105:
  sub_261CFCBB4();
  v170 = MEMORY[0x277D44BD8];
  if (v273 <= 4u)
  {
    v173 = MEMORY[0x277D44BE8];
    v174 = MEMORY[0x277D44BE0];
    if (v273 != 3)
    {
      v174 = MEMORY[0x277D44C00];
    }

    if (v273 != 2)
    {
      v173 = v174;
    }

    if (v273)
    {
      v170 = MEMORY[0x277D44BF0];
    }

    if (v273 <= 1u)
    {
      v172 = v170;
    }

    else
    {
      v172 = v173;
    }
  }

  else if (v273 > 7u)
  {
    if (v273 == 8)
    {
      v172 = MEMORY[0x277D44C08];
    }

    else
    {
      if (v273 != 9)
      {
        [v48 setSortingStyle_];
        goto LABEL_132;
      }

      v172 = MEMORY[0x277D44C10];
    }
  }

  else
  {
    v171 = MEMORY[0x277D44BD0];
    if (v273 != 6)
    {
      v171 = MEMORY[0x277D44BC8];
    }

    if (v273 == 5)
    {
      v172 = MEMORY[0x277D44BF8];
    }

    else
    {
      v172 = v171;
    }
  }

  v175 = *v172;
  v176 = [v48 sortingStyle];
  v177 = sub_261CFFA74();
  v179 = v178;
  if (v177 == sub_261CFFA74() && v179 == v180)
  {
  }

  else
  {
    v181 = sub_261D00614();

    if (v181)
    {
    }

    else
    {
      [v48 setSortingStyle_];

      LODWORD(v269) = 1;
    }
  }

LABEL_132:
  sub_261CFCBB4();
  v182 = v273;
  if (v273 == 2)
  {
    v183 = [v48 groceryContextChangeItem];
    if (v183)
    {
      v184 = v183;
      [v183 setShouldCategorizeGroceryItems_];
    }

    v185 = [v48 groceryContextChangeItem];
    if (v185)
    {
      v186 = v185;
      [v185 setGroceryLocaleID_];
    }

    goto LABEL_161;
  }

  v187 = [v48 groceryContextChangeItem];
  if (v187)
  {
    v188 = v187;
    v189 = [v187 shouldCategorizeGroceryItems];

    if (v189)
    {
      if (v182)
      {

        goto LABEL_161;
      }

      v190 = sub_261D00614();

      if (v190)
      {
        goto LABEL_161;
      }
    }

    else if (v182)
    {
    }

    else
    {
      v191 = sub_261D00614();

      if ((v191 & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    v192 = [v48 groceryContextChangeItem];
    if (v192)
    {
      v193 = v192;
      [v192 setShouldCategorizeGroceryItems_];
    }

    v194 = [v48 groceryContextChangeItem];
    if (!v194)
    {
LABEL_160:
      LODWORD(v269) = 1;
      goto LABEL_161;
    }

    v195 = v194;
    if (v189)
    {
      v196 = 0;
LABEL_159:
      [v195 setGroceryLocaleID_];

      goto LABEL_160;
    }

    v197 = [objc_opt_self() daemonUserDefaults];
    v198 = [v197 preferredLocalizations];

    if (v198)
    {
      v199 = sub_261CFFC64();

      if (v199[2])
      {
        v201 = v199[4];
        v200 = v199[5];
        sub_261CFD104();

LABEL_158:
        v196 = sub_261CFFA54();

        goto LABEL_159;
      }
    }

    v203 = v244;
    sub_261CFD874();
    sub_261CFD854();
    (*(v245 + 8))(v203, v246);
    goto LABEL_158;
  }

LABEL_161:
  if (qword_27FED9AF8 != -1)
  {
    swift_once();
  }

  v204 = sub_261CFF7A4();
  v205 = __swift_project_value_buffer(v204, qword_27FEDC2E8);
  v206 = v48;
  v207 = v151;
  v272 = v205;
  v208 = sub_261CFF784();
  v209 = sub_261CFFE84();

  if (os_log_type_enabled(v208, v209))
  {
    v210 = swift_slowAlloc();
    v211 = swift_slowAlloc();
    v268 = v211;
    v271 = swift_slowAlloc();
    v273 = v271;
    *v210 = 138543618;
    v212 = [v207 objectID];
    *(v210 + 4) = v212;
    *v211 = v212;
    *(v210 + 12) = 2082;
    v213 = v206;
    v214 = [v206 changedKeys];
    sub_261CFFD64();

    v206 = v213;
    v215 = sub_261CFFD74();
    v217 = v216;

    v218 = sub_261B879C8(v215, v217, &v273);

    *(v210 + 14) = v218;
    _os_log_impl(&dword_261AE2000, v208, v209, "[UpdateListIntentPerforming] Update list properties with id: %{public}@, changedKeys: %{public}s", v210, 0x16u);
    v219 = v268;
    sub_261AE6A40(v268, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v219, -1, -1);
    v220 = v271;
    __swift_destroy_boxed_opaque_existential_0(v271);
    MEMORY[0x26671D560](v220, -1, -1);
    MEMORY[0x26671D560](v210, -1, -1);
  }

  v221 = v257;
  v273 = 0;
  if ([v257 saveSynchronouslyWithError_])
  {
    v222 = v273;
    if ((v269 & 1) == 0)
    {
      v223 = [v206 changedKeys];
      v224 = sub_261CFFD64();

      v225 = *(v224 + 16);

      if (!v225)
      {
        v226 = sub_261CFF784();
        v227 = sub_261CFFE84();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          *v228 = 0;
          _os_log_impl(&dword_261AE2000, v226, v227, "[UpdateListIntentPerforming] No changes required for list. Not throwing an error because of Shortcuts multiple intent calls.", v228, 2u);
          MEMORY[0x26671D560](v228, -1, -1);
        }
      }
    }

    sub_261B797FC(v206, v270, v255);
  }

  else
  {
    v229 = v273;
    v230 = sub_261CFD654();

    swift_willThrow();
    v231 = v230;
    v232 = sub_261CFF784();
    v233 = sub_261CFFE64();

    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      v272 = v207;
      v235 = v234;
      v236 = swift_slowAlloc();
      v273 = v236;
      *v235 = 136315138;
      swift_getErrorValue();
      v237 = sub_261D00674();
      v239 = sub_261B879C8(v237, v238, &v273);

      *(v235 + 4) = v239;
      _os_log_impl(&dword_261AE2000, v232, v233, "[UpdateListIntentPerforming] Update list properties failed with save error: %s", v235, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v236);
      v221 = v257;
      MEMORY[0x26671D560](v236, -1, -1);
      v207 = v272;
      MEMORY[0x26671D560](v235, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v240 = 19;
    swift_willThrow();
  }

LABEL_175:
  v241 = *MEMORY[0x277D85DE8];
}

void sub_261BEAFB4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a2;
  v252 = *MEMORY[0x277D85DE8];
  v224 = sub_261CFDDB4();
  v223 = *(v224 - 8);
  v4 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v221 = (&v218 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = sub_261CFE314();
  v220 = *(v222 - 8);
  v6 = *(v220 + 64);
  v7 = MEMORY[0x28223BE20](v222);
  v218 = &v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v219 = &v218 - v9;
  v228 = sub_261CFDDD4();
  v236 = *(v228 - 8);
  v10 = *(v236 + 64);
  MEMORY[0x28223BE20](v228);
  v227 = (&v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v225 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v226 = &v218 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v218 - v18;
  v239 = type metadata accessor for GroupEntity();
  v240 = *(v239 - 1);
  v20 = v240[8];
  MEMORY[0x28223BE20](v239);
  v229 = &v218 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AppEntityID();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v218 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for ListEntity();
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v218 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[2];
  *&v231 = a1[3];
  v31 = a1[5];
  v232 = a1[4];
  *(&v231 + 1) = v31;
  v32 = a1[7];
  v241 = a1[6];
  v233 = v32;
  v234 = a1[8];
  v33 = a1[11];
  v235 = a1[10];
  v237 = v33;
  v34 = *(v2 + 16);
  sub_261CFCBB4();
  v242 = v26;
  sub_261BED5C8(&v29[v26[5]], v25, type metadata accessor for AppEntityID);
  sub_261BED568(v29, type metadata accessor for ListEntity);
  v35 = *(v22 + 20);
  v36 = *v25;
  v37 = v25[1];
  v38 = objc_allocWithZone(MEMORY[0x277D44700]);
  v39 = sub_261CFD814();
  v40 = sub_261CFFA54();
  v41 = [v38 initWithUUID:v39 entityName:v40];

  sub_261BED568(v25, type metadata accessor for AppEntityID);
  *&v248 = 0;
  v42 = [v34 fetchCustomSmartListWithObjectID:v41 error:&v248];

  if (v42)
  {
    v43 = v248;
    sub_261CFCBB4();
    v44 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v44 setSaveIsNoopIfNoChangedKeys_];
    v238 = v44;
    v45 = [v44 updateSmartList_];
    sub_261CFCBB4();
    v46 = v240;
    v47 = v239;
    v48 = (v240[6])(v19, 1, v239);
    v241 = v45;
    v230 = v42;
    if (v48 == 1)
    {
      sub_261AE6A40(v19, &unk_27FEDD950, &unk_261D01440);
      v49 = [v45 parentListID];
      v50 = v45;
      if (!v49)
      {
        goto LABEL_10;
      }

      v51 = [v42 accountID];
      *&v248 = 0;
      v52 = [v34 fetchAccountWithObjectID:v51 error:&v248];

      if (v52)
      {
        v53 = v248;
        v54 = [v238 updateAccount_];
        [v54 addSmartListChangeItem_];
        v55 = v226;
        (v46[7])(v226, 1, 1, v47);
        v56 = *(v243 + v242[10]);
        sub_261AFB668(v55, v225, &unk_27FEDD950, &unk_261D01440);
        sub_261CFD2E4();

        sub_261AE6A40(v55, &unk_27FEDD950, &unk_261D01440);
        goto LABEL_10;
      }

      v83 = v248;
      sub_261CFD654();

      swift_willThrow();
    }

    else
    {
      v58 = v19;
      v59 = v229;
      sub_261BED500(v58, v229, type metadata accessor for GroupEntity);
      v60 = (v59 + v47[5]);
      v61 = *(v22 + 20);
      v62 = *v60;
      v63 = v60[1];
      v64 = objc_allocWithZone(MEMORY[0x277D44700]);
      v65 = sub_261CFD814();
      v66 = sub_261CFFA54();
      v67 = [v64 initWithUUID:v65 entityName:v66];

      *&v248 = 0;
      v68 = [v34 fetchListWithObjectID:v67 error:&v248];

      if (v68)
      {
        v69 = v248;
        v70 = v238;
        v71 = [v238 updateList_];
        v72 = [v71 sublistContext];
        v73 = v243;
        v50 = v241;
        if (!v72)
        {
          sub_261B01D70();
          swift_allocError();
          *v85 = 0;
          swift_willThrow();

          sub_261BED568(v59, type metadata accessor for GroupEntity);
          v84 = v73;
          goto LABEL_118;
        }

        v74 = v72;
        [v72 addSmartListChangeItem_];
        v75 = v226;
        sub_261BED5C8(v59, v226, type metadata accessor for GroupEntity);
        (v240[7])(v75, 0, 1, v239);
        v76 = *(v73 + v242[10]);
        sub_261AFB668(v75, v225, &unk_27FEDD950, &unk_261D01440);
        sub_261CFD2E4();

        sub_261AE6A40(v75, &unk_27FEDD950, &unk_261D01440);
        sub_261BED568(v59, type metadata accessor for GroupEntity);
LABEL_10:
        sub_261CFCBB4();
        v77 = *(&v248 + 1);
        v78 = v243;
        if (*(&v248 + 1))
        {
          v79 = v248;
          *&v248 = v50;
          sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
          if (sub_261D00044() == v79 && v77 == v80)
          {
          }

          else
          {
            v82 = sub_261D00614();

            if (v82)
            {
            }

            else
            {
              v86 = sub_261CFFA54();
              [v50 setName_];

              v87 = *(v78 + v242[6]);
              *&v248 = v79;
              *(&v248 + 1) = v77;
              sub_261CFCA14();
            }
          }
        }

        sub_261CFCBB4();
        v88 = *(&v248 + 1);
        if (!*(&v248 + 1))
        {
          v99 = [v50 customContext];
          if (v99)
          {
            v100 = v99;
            [v99 setBadge_];
          }

          v101 = *(v78 + v242[9]);
          *&v250 = 0;
          v248 = 0u;
          v249 = 0u;
          sub_261CFD2E4();
LABEL_47:
          v109 = MEMORY[0x277D45F00];
          sub_261CFCBB4();
          if (!*(&v248 + 1))
          {
            [v50 setColor_];
            *(&v245 + 1) = sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
            *&v246 = v109;
            *&v244 = v50;
            v124 = v50;
            ColorEntity.init(list:)(&v244, &v248);
            v125 = *(v78 + v242[8]);
            v244 = v248;
            v245 = v249;
            v246 = v250;
            v247 = v251;
            sub_261CFD2E4();
            goto LABEL_57;
          }

          v110 = v50;
          v111 = v248;
          v112 = *(&v249 + 1);
          v113 = v250;
          v114 = v251;
          v240 = v249;
          v239 = *(&v248 + 1);
          v115 = v110;
          v116 = [v115 accountCapabilities];
          v117 = [v116 supportsListAppearance];

          v118 = sub_261B42C3C(v117);
          if (v118)
          {
            v226 = v111;
            v229 = v112;
            v231 = v113;
            v232 = v114;
            v119 = v118;
            v120 = [v115 color];
            if (!v120 || (v121 = v120, sub_261B05020(0, &qword_27FEDC300, 0x277D445D0), v122 = v119, v123 = sub_261D000F4(), v122, v121, (v123 & 1) == 0))
            {
              [v115 setColor_];

              *(&v245 + 1) = sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
              *&v246 = MEMORY[0x277D45F00];
              *&v244 = v115;
              v126 = v115;
              ColorEntity.init(list:)(&v244, &v248);
              v78 = v243;
              v127 = *(v243 + v242[8]);
              v244 = v248;
              v245 = v249;
              v246 = v250;
              v247 = v251;
              sub_261CFD2E4();
              sub_261AF98C8(v226, v239);

LABEL_56:
              v50 = v241;
LABEL_57:
              sub_261CFCBB4();
              if (v248 != 2)
              {
                v128 = v248 & 1;
                if ([v50 isPinned] != v128)
                {
                  [v50 setIsPinned_];
                  v129 = *(v78 + v242[13]);
                  LOBYTE(v248) = v128;
                  sub_261CFD2E4();
                }
              }

              sub_261CFCBB4();
              if (v248 != 2)
              {
                v130 = v248 & 1;
                v240 = sub_261CFDE54();
                v131 = sub_261CFDDA4();
                v132 = [v241 remObjectID];
                v133 = v227;
                *v227 = v132;
                v134 = *MEMORY[0x277D45C98];
                v135 = v236;
                v136 = v228;
                v239 = *(v236 + 104);
                (v239)(v133, v134, v228);
                v137 = sub_261CFDDC4() & 1;

                v138 = *(v135 + 8);
                v236 = v135 + 8;
                v138(v133, v136);
                v139 = v137 == v130;
                v78 = v243;
                if (!v139)
                {
                  v140 = sub_261CFDDA4();
                  v141 = [v241 remObjectID];
                  v142 = v227;
                  *v227 = v141;
                  v143 = v228;
                  (v239)(v142, v134, v228);
                  sub_261CFDDF4();

                  v138(v142, v143);
                  v144 = *(v78 + v242[14]);
                  LOBYTE(v248) = v130;
                  sub_261CFD2E4();
                }
              }

              sub_261CFCBB4();
              v145 = v248;
              if (v248 == 2)
              {
                LOBYTE(v248) = 2;
                v146 = MEMORY[0x277D45C80];
                v147 = v241;
                sub_261BECF50(&v248, MEMORY[0x277D45C80]);
                sub_261BECBEC(v146, &v248);
                v148 = *(v78 + v242[16]);
                sub_261CFD2E4();
                goto LABEL_86;
              }

              v149 = MEMORY[0x277D45C80];
              v147 = v241;
              sub_261BECBEC(MEMORY[0x277D45C80], &v248);
              if (v248 == 2)
              {
                goto LABEL_66;
              }

              if (v248)
              {
                v164 = 0x736E6D756C6F63;
              }

              else
              {
                v164 = 1953720684;
              }

              if (v248)
              {
                v165 = 0xE700000000000000;
              }

              else
              {
                v165 = 0xE400000000000000;
              }

              if (v145)
              {
                v166 = 0x736E6D756C6F63;
              }

              else
              {
                v166 = 1953720684;
              }

              if (v145)
              {
                v167 = 0xE700000000000000;
              }

              else
              {
                v167 = 0xE400000000000000;
              }

              if (v164 == v166 && v165 == v167)
              {

                goto LABEL_86;
              }

              v168 = sub_261D00614();

              if ((v168 & 1) == 0)
              {
LABEL_66:
                v150 = v145 & 1;
                LOBYTE(v248) = v145 & 1;
                if (v145)
                {
                  v151 = MEMORY[0x277D45D60];
                }

                else
                {
                  v151 = MEMORY[0x277D45D58];
                }

                sub_261BED2EC(&v248);
                v152 = v220;
                v153 = *v151;
                v154 = v218;
                v155 = v222;
                (*(v220 + 104))(v218, v153, v222);
                v156 = v219;
                (*(v152 + 32))(v219, v154, v155);
                sub_261CFDE54();
                v157 = sub_261CFDDA4();
                v158 = [v147 remObjectID];
                v159 = v221;
                *v221 = v158;
                v160 = *v149;
                v161 = v223;
                v162 = v224;
                (*(v223 + 104))(v159, v160, v224);
                sub_261CFDD94();

                (*(v161 + 8))(v159, v162);
                (*(v152 + 8))(v156, v155);
                v78 = v243;
                v163 = *(v243 + v242[16]);
                LOBYTE(v248) = v150;
                sub_261CFD2E4();
              }

LABEL_86:
              sub_261CFCBB4();
              v169 = MEMORY[0x277D44BD8];
              if (v248 <= 4u)
              {
                v173 = MEMORY[0x277D44BE8];
                v174 = MEMORY[0x277D44BE0];
                if (v248 != 3)
                {
                  v174 = MEMORY[0x277D44C00];
                }

                if (v248 != 2)
                {
                  v173 = v174;
                }

                if (v248)
                {
                  v169 = MEMORY[0x277D44BF0];
                }

                if (v248 <= 1u)
                {
                  v172 = v169;
                }

                else
                {
                  v172 = v173;
                }

                v170 = v230;
              }

              else
              {
                v170 = v230;
                if (v248 > 7u)
                {
                  if (v248 == 8)
                  {
                    v172 = MEMORY[0x277D44C08];
                  }

                  else
                  {
                    if (v248 != 9)
                    {
                      [v147 setSortingStyle_];
                      v216 = [v147 sortingStyle];
                      sub_261B781A4(&v248);

                      v217 = *(v78 + v242[17]);
                      LOBYTE(v244) = v248;
                      sub_261CFD2E4();
LABEL_109:
                      if (qword_27FED9AF8 != -1)
                      {
                        swift_once();
                      }

                      v183 = sub_261CFF7A4();
                      v184 = __swift_project_value_buffer(v183, qword_27FEDC2E8);
                      v185 = v147;
                      v186 = v170;
                      v240 = v184;
                      v187 = sub_261CFF784();
                      v188 = sub_261CFFE84();

                      v189 = os_log_type_enabled(v187, v188);
                      v242 = v185;
                      v241 = v186;
                      if (v189)
                      {
                        v190 = swift_slowAlloc();
                        v191 = swift_slowAlloc();
                        v192 = swift_slowAlloc();
                        *&v248 = v192;
                        *v190 = 138543618;
                        v193 = [v186 objectID];
                        *(v190 + 4) = v193;
                        *v191 = v193;
                        *(v190 + 12) = 2082;
                        v194 = [v185 changedKeys];
                        sub_261CFFD64();

                        v78 = v243;
                        v195 = sub_261CFFD74();
                        v197 = v196;

                        v198 = sub_261B879C8(v195, v197, &v248);

                        *(v190 + 14) = v198;
                        _os_log_impl(&dword_261AE2000, v187, v188, "[UpdateListIntentPerforming] Update CSL properties with id: %{public}@, changedKeys: %{public}s", v190, 0x16u);
                        sub_261AE6A40(v191, &unk_27FEDA730, &unk_261D035C0);
                        MEMORY[0x26671D560](v191, -1, -1);
                        __swift_destroy_boxed_opaque_existential_0(v192);
                        MEMORY[0x26671D560](v192, -1, -1);
                        MEMORY[0x26671D560](v190, -1, -1);
                      }

                      v199 = v238;
                      *&v248 = 0;
                      if ([v238 saveSynchronouslyWithError_])
                      {
                        v200 = v248;

                        goto LABEL_119;
                      }

                      v201 = v248;
                      v202 = sub_261CFD654();

                      swift_willThrow();
                      v203 = v202;
                      v204 = sub_261CFF784();
                      v205 = sub_261CFFE64();

                      v206 = os_log_type_enabled(v204, v205);
                      v207 = v241;
                      if (v206)
                      {
                        v208 = swift_slowAlloc();
                        v209 = swift_slowAlloc();
                        *&v248 = v209;
                        *v208 = 136315138;
                        swift_getErrorValue();
                        v210 = sub_261D00674();
                        v212 = sub_261B879C8(v210, v211, &v248);

                        *(v208 + 4) = v212;
                        _os_log_impl(&dword_261AE2000, v204, v205, "[UpdateListIntentPerforming] Update CSL properties failed with save error: %s", v208, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0(v209);
                        MEMORY[0x26671D560](v209, -1, -1);
                        MEMORY[0x26671D560](v208, -1, -1);
                      }

                      v213 = v242;
                      sub_261B01D70();
                      swift_allocError();
                      *v214 = 19;
                      swift_willThrow();

                      v84 = v78;
LABEL_118:
                      sub_261BED568(v84, type metadata accessor for ListEntity);
                      goto LABEL_119;
                    }

                    v172 = MEMORY[0x277D44C10];
                  }
                }

                else
                {
                  v171 = MEMORY[0x277D44BD0];
                  if (v248 != 6)
                  {
                    v171 = MEMORY[0x277D44BC8];
                  }

                  if (v248 == 5)
                  {
                    v172 = MEMORY[0x277D44BF8];
                  }

                  else
                  {
                    v172 = v171;
                  }
                }
              }

              v175 = *v172;
              v176 = [v147 sortingStyle];
              v177 = sub_261CFFA74();
              v179 = v178;
              if (v177 == sub_261CFFA74() && v179 == v180)
              {
              }

              else
              {
                v181 = sub_261D00614();

                if ((v181 & 1) == 0)
                {
                  [v147 setSortingStyle_];
                  sub_261CFCBB4();
                  v182 = *(v78 + v242[17]);
                  LOBYTE(v244) = v248;
                  sub_261CFD2E4();
                }

                v170 = v230;
              }

              goto LABEL_109;
            }

            sub_261AF98C8(v226, v239);
          }

          else
          {
            sub_261AF98C8(v111, v239);
          }

          v78 = v243;
          goto LABEL_56;
        }

        v89 = v248;
        v90 = v249;
        v91 = v250;
        v92 = [v50 customContext];
        if (v92)
        {
          v93 = v92;
          *&v248 = v89;
          *(&v248 + 1) = v88;
          v249 = v90;
          *&v250 = v91;
          v240 = sub_261CA695C();
          if (v240)
          {
            *&v248 = v50;
            sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
            v94 = sub_261D00054();
            if (v94 && (v95 = v94, v96 = [v94 rawValue], v95, v96))
            {
              v239 = sub_261CFFA74();
              v98 = v97;
            }

            else
            {
              v239 = 0;
              v98 = 0;
            }

            v102 = [v240 rawValue];
            if (v102)
            {
              v103 = v102;
              *(&v231 + 1) = sub_261CFFA74();
              v105 = v104;

              if (v98)
              {
                if (v105)
                {
                  if (v239 == *(&v231 + 1) && v98 == v105)
                  {

LABEL_45:
                    sub_261AF9C70(v89, v88);

                    v78 = v243;
                    goto LABEL_46;
                  }

                  v108 = sub_261D00614();

                  if (v108)
                  {
                    goto LABEL_45;
                  }

LABEL_43:
                  v106 = v240;
                  [v93 setBadge_];
                  v78 = v243;
                  v107 = *(v243 + v242[9]);
                  *&v248 = v89;
                  *(&v248 + 1) = v88;
                  v249 = v90;
                  *&v250 = v91;
                  sub_261CFCDA4();
                  sub_261CFD104();
                  sub_261CFCDA4();
                  sub_261CFCDA4();
                  sub_261CFD2E4();

                  sub_261AF9C70(v89, v88);
LABEL_46:
                  v50 = v241;
                  goto LABEL_47;
                }
              }

              else if (!v105)
              {
                goto LABEL_45;
              }
            }

            else if (!v98)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }
        }

        sub_261AF9C70(v89, v88);
        goto LABEL_47;
      }

      v81 = v248;
      sub_261CFD654();

      swift_willThrow();
      sub_261BED568(v59, type metadata accessor for GroupEntity);
    }

    v84 = v243;
    goto LABEL_118;
  }

  v57 = v248;
  sub_261CFD654();

  swift_willThrow();
LABEL_119:
  v215 = *MEMORY[0x277D85DE8];
}

unint64_t sub_261BECB94()
{
  result = qword_280D22790;
  if (!qword_280D22790)
  {
    type metadata accessor for ListEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22790);
  }

  return result;
}

uint64_t sub_261BECBEC@<X0>(unsigned int *a1@<X0>, char *a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v3 = v2;
  v4 = sub_261CFE314();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFDDB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  sub_261CFDE54();
  v21 = sub_261CFDDA4();
  *v13 = [v3 remObjectID];
  (*(v10 + 104))(v13, *v26, v9);
  sub_261CFDE04();

  (*(v10 + 8))(v13, v9);
  sub_261AFB668(v20, v18, &qword_27FEDB0A8, &unk_261D050D8);
  if ((*(v5 + 48))(v18, 1, v4) == 1)
  {
    sub_261AE6A40(v20, &qword_27FEDB0A8, &unk_261D050D8);
    result = sub_261AE6A40(v18, &qword_27FEDB0A8, &unk_261D050D8);
    *v27 = 2;
    return result;
  }

  v23 = v27;
  (*(v5 + 16))(v8, v18, v4);
  v24 = (*(v5 + 88))(v8, v4);
  if (v24 == *MEMORY[0x277D45D58])
  {
    v25 = 0;
  }

  else
  {
    if (v24 != *MEMORY[0x277D45D60])
    {
      result = sub_261D00604();
      __break(1u);
      return result;
    }

    v25 = 1;
  }

  sub_261AE6A40(v20, &qword_27FEDB0A8, &unk_261D050D8);
  *v23 = v25;
  return (*(v5 + 8))(v18, v4);
}

uint64_t sub_261BECF50(unsigned __int8 *a1, unsigned int *a2)
{
  v4 = v2;
  v6 = sub_261CFDDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = sub_261CFE314();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (v20 == 2)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    (*(v16 + 104))(v19, *MEMORY[0x277D45D58], v15);
  }

  else
  {
    if (v20)
    {
      v21 = MEMORY[0x277D45D60];
    }

    else
    {
      v21 = MEMORY[0x277D45D58];
    }

    (*(v16 + 104))(v14, *v21, v15);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v19, v14, v15);
  }

  sub_261CFDE54();
  v22 = sub_261CFDDA4();
  *v10 = [v4 remObjectID];
  (*(v7 + 104))(v10, *a2, v6);
  sub_261CFDD94();

  (*(v7 + 8))(v10, v6);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_261BED240(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void sub_261BED2EC(char *a1)
{
  v2 = sub_261CFED34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_261CFDE54();
  v8 = sub_261CFDDA4();
  if (v7)
  {
    v17 = v8;
    sub_261CFEDA4();
    sub_261CFED94();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC308, &qword_261D098C8);
    v10 = &v6[v9[12]];
    v11 = v9[16];
    v12 = &v6[v9[20]];
    v13 = *MEMORY[0x277D44E40];
    v14 = sub_261CFED24();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
    *v10 = sub_261CFDDE4();
    v10[1] = v15;
    sub_261CFDE14();
    *v12 = 0xD000000000000013;
    *(v12 + 1) = 0x8000000261D188C0;
    (*(v3 + 104))(v6, *MEMORY[0x277D44E98], v2);
    sub_261CFED84();

    (*(v3 + 8))(v6, v2);
  }

  else
  {
  }
}

uint64_t sub_261BED500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BED568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BED5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BED630()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_280D21E58);
  v1 = __swift_project_value_buffer(v0, qword_280D21E58);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwCP(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwca(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwtk(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwta(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_261BED8C8()
{
  result = sub_261CFF624();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t _s29ScheduledRemindersFetchResultVwCP(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v4 + 16) & ~v4);
    sub_261CFCDA4();
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    sub_261AE7220(*a2, v7, v8, v9);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    v11 = *(a3 + 20);
    v12 = sub_261CFF624();
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  }

  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultVwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_261AE7220(*a2, v7, v8, v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = *(a3 + 20);
  v11 = sub_261CFF624();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_261AE7220(*a2, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  sub_261AE75C4(v10, v11, v12, v13);
  v14 = *(a3 + 20);
  v15 = sub_261CFF624();
  (*(*(v15 - 8) + 24))(a1 + v14, a2 + v14, v15);
  return a1;
}

_OWORD *_s29ScheduledRemindersFetchResultVwtk(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
  v5 = *(a3 + 20);
  v6 = sub_261CFF624();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  sub_261AE75C4(v8, v9, v10, v11);
  v12 = *(a3 + 20);
  v13 = sub_261CFF624();
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  return a1;
}

uint64_t sub_261BEDD04()
{
  result = sub_261CFF624();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_261BEDDAC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

uint64_t *_s29ScheduledRemindersFetchResultV17IncrementalResultVwca(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFD104();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFD104();

  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;
  sub_261CFD104();

  return a1;
}

uint64_t *_s29ScheduledRemindersFetchResultV17IncrementalResultVwta(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_261AE7220(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwca(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_261AE7220(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_261AE75C4(v7, v8, v9, v10);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwta(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_261AE75C4(v5, v7, v6, v8);
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_261BEE0C8()
{
  result = qword_27FEDC328;
  if (!qword_27FEDC328)
  {
    sub_261CFEE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC328);
  }

  return result;
}

void sub_261BEE120(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_261D000E4();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_261B57A9C();
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_261D000F4();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

void RemindersInCalendarUtilities.ListColor.init(color:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_261D00114();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t RemindersInCalendarUtilities.ListColor.init(dataRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_261CFD594();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_261CFD584();
  sub_261BEE34C();
  sub_261CFD574();
  sub_261BE4E60(a1, a2);

  if (!v3)
  {
    *a3 = v11;
  }

  return result;
}

unint64_t sub_261BEE34C()
{
  result = qword_27FEDC330;
  if (!qword_27FEDC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC330);
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.ListColor.dataRepresentation()()
{
  v1 = *v0;
  v2 = sub_261CFD5C4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  sub_261CFD5B4();
  sub_261BEE440();
  v6 = sub_261CFD5A4();

  return v6;
}

unint64_t sub_261BEE440()
{
  result = qword_280D22930;
  if (!qword_280D22930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22930);
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.ListColor.colorEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFDC94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  v12 = *v1;
  if (v12)
  {
    sub_261CFDCC4();
    v13 = v12;
    sub_261CFDCB4();
    (*(v4 + 16))(v8, v11, v3);
    sub_261B42948(v8, &v18);

    result = (*(v4 + 8))(v11, v3);
    v14 = v20;
    v15 = v21;
    v16 = v19;
    *a1 = v18;
    *(a1 + 8) = v16;
  }

  else
  {
    *(a1 + 16) = 0;
    v14 = 0uLL;
    *a1 = 0u;
    v15 = 0uLL;
  }

  *(a1 + 24) = v14;
  *(a1 + 40) = v15;
  return result;
}

uint64_t sub_261BEE610()
{
  sub_261D006C4();
  MEMORY[0x26671CDA0](0);
  return sub_261D006F4();
}

uint64_t sub_261BEE67C()
{
  sub_261D006C4();
  MEMORY[0x26671CDA0](0);
  return sub_261D006F4();
}

uint64_t sub_261BEE6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F43656372756F73 && a2 == 0xEB00000000726F6CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261D00614();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261BEE774(uint64_t a1)
{
  v2 = sub_261BEECFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261BEE7B0(uint64_t a1)
{
  v2 = sub_261BEECFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261BEE7EC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC348, &qword_261D09A70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261BEECFC();
  sub_261D00724();
  v11[1] = a2;
  sub_261CFED14();
  sub_261BEED50(&unk_280D22D80);
  sub_261D00594();
  return (*(v5 + 8))(v8, v4);
}

void *sub_261BEE958@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_261BEEB68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.ListColor.platformColor.getter()
{
  v1 = sub_261CFDC94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_261CFDCC4();
  v7 = v6;
  sub_261CFDCB4();

  v8 = sub_261CFDC84();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_261BEEAAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_261BEEB08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_261BEEB68(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC338, &qword_261D09A68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261BEECFC();
  sub_261D00714();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_261CFED14();
    sub_261BEED50(&qword_27FEDC340);
    sub_261D00564();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_261BEECFC()
{
  result = qword_280D22948[0];
  if (!qword_280D22948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D22948);
  }

  return result;
}

uint64_t sub_261BEED50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_261CFED14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261BEEDA8()
{
  result = qword_27FEDC350;
  if (!qword_27FEDC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC350);
  }

  return result;
}

unint64_t sub_261BEEE00()
{
  result = qword_280D22938;
  if (!qword_280D22938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22938);
  }

  return result;
}

unint64_t sub_261BEEE58()
{
  result = qword_280D22940;
  if (!qword_280D22940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22940);
  }

  return result;
}

uint64_t DeleteRemindersAppIntent.entities.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t DeleteRemindersAppIntent.deleteSubtasks.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t DeleteRemindersAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v41 - v3;
  v58 = sub_261CFD184();
  v60 = *(v58 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v41 - v14;
  v43 = sub_261CFD674();
  v15 = *(v43 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v43);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v51 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v41 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = *MEMORY[0x277CC9110];
  v27 = *(v15 + 104);
  v44 = v15 + 104;
  v45 = v27;
  (v27)(v18);
  sub_261CFD6C4();
  v28 = *(v24 + 56);
  v50 = v24 + 56;
  v52 = v28;
  v28(v55, 1, 1, v23);
  v62 = 0;
  v29 = sub_261CFC834();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v49 = v31;
  v53 = v30 + 56;
  v31(v56, 1, 1, v29);
  v31(v10, 1, 1, v29);
  v47 = *MEMORY[0x277CBA308];
  v32 = *(v60 + 104);
  v60 += 104;
  v48 = v32;
  v32(v57);
  sub_261B32BE4();
  *v59 = sub_261CFCC34();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v33 = v42;
  v34 = v43;
  v35 = v45;
  v45(v18, v42, v43);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v18, v33, v34);
  v36 = v55;
  sub_261CFD6C4();
  v52(v36, 0, 1, v51);
  LOBYTE(v62) = 2;
  v37 = sub_261CFFCE4();
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  v49(v56, 1, 1, v29);
  v48(v57, v47, v58);
  v38 = sub_261CFCD44();
  v39 = v59;
  v59[1] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC388, &qword_261D09B98);
  v61 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v39[2] = result;
  return result;
}

uint64_t sub_261BEF6B0()
{
  v0 = sub_261CFD244();
  __swift_allocate_value_buffer(v0, qword_27FEDC358);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC358);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static DeleteRemindersAppIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DeleteRemindersAppIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DeleteRemindersAppIntent.authenticationPolicy.modify())()
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD244();
  __swift_project_value_buffer(v0, qword_27FEDC358);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BEF980@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BEFA40(uint64_t a1)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_261BEFB08()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDC370);
  __swift_project_value_buffer(v9, qword_27FEDC370);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteRemindersAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B10 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteRemindersAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BF008C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*DeleteRemindersAppIntent.entities.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*DeleteRemindersAppIntent.deleteSubtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t static DeleteRemindersAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC390, &qword_261D09BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC398, &qword_261D09BA8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B316A8();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC3A0, &qword_261D09BD8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261BF0450()
{
  swift_getKeyPath();
  sub_261B316A8();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t DeleteRemindersAppIntent.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = *v1;
  *(v2 + 144) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 152) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_261BF05B4, v4, v3);
}

uint64_t sub_261BF05B4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_261B21444(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[12] = v3;
  v0[13] = v1;
  v0[14] = v2;
  v6 = *(v5 + 8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_261BF0728;

  return (v10)(v0 + 7, v0 + 12, v4, v5);
}

uint64_t sub_261BF0728()
{
  v2 = *v1;
  v3 = (*v1)[22];
  v8 = *v1;
  (*v1)[23] = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_261BF08BC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_261BF0844;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261BF0844()
{
  v1 = v0[19];
  v2 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_261CFC9A4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_261BF08BC()
{
  v1 = v0[19];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[23];

  return v2();
}

unint64_t sub_261BF092C()
{
  result = qword_27FEDC3A8;
  if (!qword_27FEDC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC3A8);
  }

  return result;
}

unint64_t sub_261BF0988()
{
  result = qword_27FEDC3B0;
  if (!qword_27FEDC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC3B0);
  }

  return result;
}

unint64_t sub_261BF09E0()
{
  result = qword_27FEDC3B8;
  if (!qword_27FEDC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC3B8);
  }

  return result;
}

uint64_t sub_261BF0A6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B10 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BF0B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC390, &qword_261D09BA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC398, &qword_261D09BA8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC3A0, &qword_261D09BD8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261BF0CC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteRemindersAppIntent.perform()(a1);
}

uint64_t sub_261BF0D64(uint64_t a1)
{
  v2 = sub_261B316A8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteRemindersAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261BF0EE4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC3D0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC3D0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BF12E4()
{
  v161 = v0;
  v160[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);

  sub_261CFCBB4();
  v3 = *(v0 + 48);
  if (v3)
  {
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = sub_261CFE2B4();
    v3 = v5;
  }

  v6 = *(v0 + 296);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  sub_261CFD874();
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_261B3BA3C();
  v11 = sub_261D00174();
  v13 = v12;
  sub_261AE6A40(v7, &qword_27FEDA708, &qword_261D03298);

  sub_261CFCBB4();
  if (qword_27FED9B18 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 256);
  v15 = *(v0 + 264);
  v16 = sub_261CFF7A4();
  __swift_project_value_buffer(v16, qword_27FEDC3D0);
  sub_261AFB668(v15, v14, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD104();
  v17 = sub_261CFF784();
  v18 = sub_261CFFE84();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 256);
  if (v19)
  {
    v21 = *(v0 + 248);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v160[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_261B879C8(v11, v13, v160);
    *(v22 + 12) = 2082;
    sub_261AFB668(v20, v21, &unk_27FEDD950, &unk_261D01440);
    v24 = type metadata accessor for GroupEntity();
    v25 = (*(*(v24 - 8) + 48))(v21, 1, v24);
    v26 = *(v0 + 248);
    if (v25 == 1)
    {
      sub_261AE6A40(v26, &unk_27FEDD950, &unk_261D01440);
      v27 = 1;
    }

    else
    {
      v28 = *(v24 + 20);
      v29 = *(v0 + 248);
      sub_261B7C0F0(v26 + v28, *(v0 + 232));
      sub_261BF22F8(v29, type metadata accessor for GroupEntity);
      v27 = 0;
    }

    v31 = *(v0 + 224);
    v30 = *(v0 + 232);
    v32 = *(v0 + 192);
    v33 = *(v0 + 200);
    (*(v33 + 56))(v30, v27, 1, v32);
    sub_261AFB668(v30, v31, &qword_27FEDAA00, &qword_261D035A8);
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v36 = *(v0 + 216);
      v37 = *(v0 + 208);
      v38 = *(v0 + 192);
      sub_261BC0FC4(*(v0 + 224), v36);
      sub_261B7C0F0(v36, v37);
      v35 = sub_261CFFAB4();
      v34 = v39;
      sub_261BF22F8(v36, type metadata accessor for AppEntityID);
    }

    v40 = *(v0 + 256);
    sub_261AE6A40(*(v0 + 232), &qword_27FEDAA00, &qword_261D035A8);
    sub_261AE6A40(v40, &unk_27FEDD950, &unk_261D01440);
    v41 = sub_261B879C8(v35, v34, v160);

    *(v22 + 14) = v41;
    _os_log_impl(&dword_261AE2000, v17, v18, "[CreateListAppIntent] Create list with name: %s, group: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v23, -1, -1);
    MEMORY[0x26671D560](v22, -1, -1);
  }

  else
  {

    sub_261AE6A40(v20, &unk_27FEDD950, &unk_261D01440);
  }

  v42 = *(*(v0 + 112) + 16);
  *(v0 + 72) = 0;
  v43 = [v42 fetchPrimaryActiveCloudKitAccountWithError_];
  v44 = *(v0 + 72);
  if (!v43)
  {
    v59 = v44;

    sub_261CFD654();

    swift_willThrow();
    goto LABEL_47;
  }

  v45 = v43;
  v46 = *(v0 + 264);
  v47 = *(v0 + 240);
  v48 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v49 = v44;
  v50 = [v48 initWithStore_];
  v51 = [v50 updateAccount_];
  sub_261AFB668(v46, v47, &unk_27FEDD950, &unk_261D01440);
  v52 = type metadata accessor for GroupEntity();
  v53 = (*(*(v52 - 8) + 48))(v47, 1, v52);
  v54 = *(v0 + 240);
  if (v53 == 1)
  {
    sub_261AE6A40(*(v0 + 240), &unk_27FEDD950, &unk_261D01440);
    v55 = 0;
LABEL_18:
    v56 = sub_261CFFA54();

    v57 = [v50 addListWithName:v56 toAccountChangeItem:v51];
    goto LABEL_19;
  }

  v147 = v51;
  v150 = v50;
  v60 = *(v0 + 216);
  v61 = *(v0 + 192);
  sub_261B7C0F0(v54 + *(v52 + 20), v60);
  sub_261BF22F8(v54, type metadata accessor for GroupEntity);
  v62 = *(v61 + 20);
  v63 = *v60;
  v64 = v60[1];
  v65 = objc_allocWithZone(MEMORY[0x277D44700]);
  v66 = sub_261CFD814();
  v67 = sub_261CFFA54();
  v68 = [v65 initWithUUID:v66 entityName:v67];

  sub_261BF22F8(v60, type metadata accessor for AppEntityID);
  *(v0 + 96) = 0;
  v69 = [v42 fetchListWithObjectID:v68 error:v0 + 96];
  v70 = *(v0 + 96);
  if (!v69)
  {
    v85 = v70;

    sub_261CFD654();

    swift_willThrow();
LABEL_38:

    goto LABEL_47;
  }

  v71 = v69;
  v72 = v70;
  if (([v71 isGroup] & 1) == 0)
  {

    v68 = v68;
    v86 = sub_261CFF784();
    v87 = sub_261CFFE64();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v88 = 138543362;
      *(v88 + 4) = v68;
      *v89 = v68;
      v90 = v68;
      _os_log_impl(&dword_261AE2000, v86, v87, "[CreateListAppIntent] Attempt to create list with a target parent that is not actually a group {objectID: %{public}@}", v88, 0xCu);
      sub_261AE6A40(v89, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v89, -1, -1);
      MEMORY[0x26671D560](v88, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v91 = 0;
    swift_willThrow();

    goto LABEL_38;
  }

  v55 = [v150 updateList_];

  if (!v55)
  {
    v51 = v147;
    v50 = v150;
    goto LABEL_18;
  }

  v73 = [v55 sublistContext];
  v51 = v147;
  if (!v73)
  {
    v50 = v150;
    goto LABEL_18;
  }

  v74 = v73;
  v56 = sub_261CFFA54();

  v50 = v150;
  v57 = [v150 addListWithName:v56 toListSublistContextChangeItem:v74];

LABEL_19:
  v58 = *(v0 + 280);
  sub_261CFCBB4();
  v145 = v45;
  if (*(v0 + 312) == 1)
  {

    goto LABEL_28;
  }

  v75 = sub_261D00614();

  if (v75)
  {
LABEL_28:
    v76 = [v57 groceryContextChangeItem];
    if (v76)
    {
      v77 = v76;
      [v76 setShouldCategorizeGroceryItems_];
    }

    v78 = [v57 groceryContextChangeItem];
    if (!v78)
    {
      goto LABEL_42;
    }

    v79 = v78;
    v156 = v57;
    v80 = [objc_opt_self() daemonUserDefaults];
    v81 = [v80 preferredLocalizations];

    if (v81)
    {
      v82 = sub_261CFFC64();

      if (v82[2])
      {
        v83 = v82[4];
        v84 = v82[5];
        sub_261CFD104();

LABEL_41:
        v97 = sub_261CFFA54();

        [v79 setGroceryLocaleID_];

        v57 = v156;
        goto LABEL_42;
      }
    }

    v92 = v55;
    v93 = v51;
    v95 = *(v0 + 176);
    v94 = *(v0 + 184);
    v96 = *(v0 + 168);
    sub_261CFD874();
    sub_261CFD854();
    (*(v95 + 8))(v94, v96);
    v51 = v93;
    v55 = v92;
    goto LABEL_41;
  }

LABEL_42:
  *(v0 + 80) = 0;
  v98 = [v50 saveSynchronouslyWithError_];
  v99 = *(v0 + 80);
  if (v98)
  {
    v139 = *(v0 + 264);
    v140 = *(v0 + 272);
    v141 = *(v0 + 256);
    v142 = *(v0 + 248);
    v143 = *(v0 + 240);
    v144 = *(v0 + 232);
    v146 = *(v0 + 224);
    v151 = *(v0 + 216);
    v154 = *(v0 + 208);
    v157 = *(v0 + 184);
    v100 = *(v0 + 160);
    v102 = *(v0 + 136);
    v101 = *(v0 + 144);
    v148 = v51;
    v104 = *(v0 + 120);
    v103 = *(v0 + 128);
    v136 = *(v0 + 104);
    v137 = *(v0 + 152);
    v138 = v55;
    v105 = v99;
    v106 = v57;
    sub_261B797FC(v106, v55, v100);
    sub_261BBF268(v104);
    sub_261CFC9E4();
    sub_261BF22B0(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261BF22B0(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC974();

    (*(v102 + 8))(v101, v103);
    sub_261BF22F8(v100, type metadata accessor for ListEntity);
    sub_261AE6A40(v139, &unk_27FEDD950, &unk_261D01440);

    v107 = *(v0 + 8);
    v108 = *MEMORY[0x277D85DE8];
    goto LABEL_48;
  }

  v158 = v55;
  v152 = v50;
  v109 = v99;
  v110 = sub_261CFD654();

  swift_willThrow();
  v111 = v110;
  v112 = sub_261CFF784();
  v113 = sub_261CFFE64();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = v51;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v160[0] = v116;
    *v115 = 136315138;
    swift_getErrorValue();
    v118 = *(v0 + 16);
    v117 = *(v0 + 24);
    v119 = *(v0 + 32);
    v120 = sub_261D00664();
    v122 = v57;
    v123 = sub_261B879C8(v120, v121, v160);

    *(v115 + 4) = v123;
    v57 = v122;
    _os_log_impl(&dword_261AE2000, v112, v113, "[CreateListAppIntent] Create list failed to save new list error: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x26671D560](v116, -1, -1);
    v124 = v115;
    v51 = v114;
    MEMORY[0x26671D560](v124, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v125 = 19;
  swift_willThrow();

LABEL_47:
  v126 = *(v0 + 272);
  v128 = *(v0 + 248);
  v127 = *(v0 + 256);
  v130 = *(v0 + 232);
  v129 = *(v0 + 240);
  v132 = *(v0 + 216);
  v131 = *(v0 + 224);
  v133 = *(v0 + 208);
  v149 = *(v0 + 184);
  v153 = *(v0 + 160);
  v155 = *(v0 + 144);
  v159 = *(v0 + 120);
  sub_261AE6A40(*(v0 + 264), &unk_27FEDD950, &unk_261D01440);

  v107 = *(v0 + 8);
  v134 = *MEMORY[0x277D85DE8];
LABEL_48:

  return v107();
}

uint64_t sub_261BF2204(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BF22B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261BF22F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DeleteListsAppIntent.entities.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t DeleteListsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v43 = sub_261CFD184();
  v41 = *(v43 - 8);
  v1 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v40 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v37[0] = v37 - v10;
  v11 = sub_261CFD674();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_261CFFA44();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_261CFD6A4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v37[1] = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v37 - v25;
  v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC400, &qword_261D09DF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = *MEMORY[0x277CC9110];
  v38 = v12;
  v28 = *(v12 + 104);
  v28(v15, v27, v11);
  v37[3] = v26;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v15, v27, v11);
  v29 = v37[0];
  sub_261CFD6C4();
  (*(v21 + 56))(v29, 0, 1, v20);
  v46 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v11, qword_280D27028);
  (*(v38 + 16))(v15, v30, v11);
  sub_261CFD874();
  sub_261CFD6C4();
  v31 = v39;
  sub_261CFC844();
  v32 = sub_261CFC834();
  v33 = *(*(v32 - 8) + 56);
  v33(v31, 0, 1, v32);
  v33(v40, 1, 1, v32);
  (*(v41 + 104))(v42, *MEMORY[0x277CBA308], v43);
  sub_261BF29C0();
  v34 = sub_261CFCC34();
  v35 = v44;
  *v44 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC408, &qword_261D09DF8);
  v45 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v35[1] = result;
  return result;
}

unint64_t sub_261BF29C0()
{
  result = qword_280D227A0;
  if (!qword_280D227A0)
  {
    type metadata accessor for ListEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227A0);
  }

  return result;
}

uint64_t sub_261BF2A20()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDC3E8);
  __swift_project_value_buffer(v9, qword_27FEDC3E8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteListsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B20 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteListsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

void (*DeleteListsAppIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA3C4;
}

uint64_t static DeleteListsAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC410, &qword_261D09E00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC418, &qword_261D09E08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31654();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC420, &qword_261D09E38);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t DeleteListsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = *v1;
  sub_261CFFD24();
  *(v2 + 136) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x2822009F8](sub_261BF32B0, v4, v3);
}

uint64_t sub_261BF32B0()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_261B22200(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[12] = v1;
  v0[13] = v2;
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_261BB6FC8;

  return (v9)(v0 + 7, v0 + 12, v3, v4);
}

unint64_t sub_261BF3420()
{
  result = qword_27FEDC428;
  if (!qword_27FEDC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC428);
  }

  return result;
}

unint64_t sub_261BF347C()
{
  result = qword_27FEDC430;
  if (!qword_27FEDC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC430);
  }

  return result;
}

unint64_t sub_261BF34D4()
{
  result = qword_27FEDC438;
  if (!qword_27FEDC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC438);
  }

  return result;
}

uint64_t sub_261BF3560@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B20 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BF3608()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC410, &qword_261D09E00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC418, &qword_261D09E08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC420, &qword_261D09E38);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BF37A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteListsAppIntent.perform()(a1);
}

uint64_t sub_261BF3840(uint64_t a1)
{
  v2 = sub_261B31654();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteListsAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

void sub_261BF39C0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ReminderEntity();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
    sub_261BF8094(a2, v8);

    sub_261AE6A40(v8, &unk_27FEDE110, &unk_261D035B0);
  }

  else
  {
    sub_261B837B0(a1, v12);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_261BF852C(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t sub_261BF3B64(uint64_t a1)
{
  v1 = a1;
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00274();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v30 = MEMORY[0x277D84F90];
    sub_261D003A4();
    result = sub_261D00414();
    v27 = result;
    v28 = v4;
    v29 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v30 = MEMORY[0x277D84F90];
  sub_261D003A4();
  v5 = -1 << *(v1 + 32);
  result = sub_261D001E4();
  v6 = *(v1 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  v24 = v2;
  while (v7 < v2)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v15 = v27;
    v16 = v28;
    v17 = v29;
    sub_261CB66A8(v27, v28, v29, v1);
    v19 = v18;
    v20 = [v18 list];
    v21 = v1;

    sub_261D00374();
    v22 = *(v30 + 16);
    sub_261D003B4();
    sub_261D003C4();
    result = sub_261D00384();
    if (v25)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_261D00444())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
      v23 = sub_261CFF924();
      sub_261D004D4();
      result = v23(v26, 0);
    }

    else
    {
      sub_261CB6544(v15, v16, v17, v1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_261B91FE4(v15, v16, v17);
      v27 = v9;
      v28 = v11;
      v29 = v13 & 1;
      v1 = v21;
      v2 = v24;
    }

    ++v7;
    if (v14 == v2)
    {
      sub_261B91FE4(v27, v28, v29);
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_261BF3DE0(uint64_t a1, uint64_t *a2)
{
  v38 = a2;
  v37 = type metadata accessor for ReminderEntity();
  v3 = *(*(v37 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v32 - v7;
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v8 + 72);
  v33 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = a1 + v33;
  v13 = type metadata accessor for AppEntityID();
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = *(v37 + 40);
    v16 = v15 + *(v13 + 20);
    v17 = *(v12 + v15);
    v18 = *(v12 + v15 + 8);
    v19 = objc_allocWithZone(MEMORY[0x277D44700]);
    v20 = sub_261CFD814();
    v21 = sub_261CFFA54();
    v22 = [v19 initWithUUID:v20 entityName:v21];

    v23 = *v38;
    if (*(*v38 + 16) && (v24 = sub_261B37CA4(v22), (v25 & 1) != 0))
    {
      v26 = *(v23 + 56) + v24 * v11;
      v27 = v35;
      sub_261B4C910(v26, v35);

      v28 = v34;
      sub_261B837B0(v27, v34);
      sub_261B837B0(v28, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_261B41560(0, v14[2] + 1, 1, v14);
      }

      v30 = v14[2];
      v29 = v14[3];
      if (v30 >= v29 >> 1)
      {
        v14 = sub_261B41560(v29 > 1, v30 + 1, 1, v14);
      }

      v14[2] = v30 + 1;
      sub_261B837B0(v36, v14 + v33 + v30 * v11);
    }

    else
    {
    }

    v12 += v11;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_261BF407C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC450);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC450);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BF41E8()
{
  *(v0 + 56) = *(v0 + 104);
  *(v0 + 72) = *(v0 + 120);
  v1 = sub_261CFE5B4();
  v2 = sub_261CFE494();
  v3 = MEMORY[0x277D45E18];
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_261BF42C4;
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);

  return sub_261BF4444(v5, v0 + 56, v0 + 16);
}

uint64_t sub_261BF42C4()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v8 = *v1;
  (*v1)[21] = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_261BB715C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_261BF43E0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261BF43E0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261BF4444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = sub_261CFC9D4();
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v9 = sub_261CFD754();
  *(v4 + 112) = v9;
  v10 = *(v9 - 8);
  *(v4 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  *(v4 + 144) = v12;
  v13 = *(v12 - 8);
  *(v4 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v16 = type metadata accessor for ReminderEntity();
  *(v4 + 184) = v16;
  v17 = *(v16 - 8);
  *(v4 + 192) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = *a2;
  *(v4 + 248) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_261BF46B0, 0, 0);
}

uint64_t sub_261BF46B0()
{
  v208 = v0;
  v1 = v0;
  v2 = v0[29];
  v3 = *(v0[10] + 24);
  sub_261CFCBB4();
  v4 = v0[2];
  sub_261B9DCEC();
  v6 = v5;
  v8 = v7;

  v9 = sub_261B9BAD4(3, v6, v8);
  v0[32] = v9;
  v193 = v9;
  v24 = v0[30];
  v25 = v0[31];
  v27 = v0[23];
  v26 = v0[24];
  v28 = *(v1 + 176);

  sub_261CFCBB4();
  LODWORD(v29) = *(v1 + 352);
  sub_261CFCBB4();
  v30 = *(v26 + 48);
  *(v1 + 264) = v30;
  *(v1 + 272) = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v31 = v30(v28, 1, v27);
  if (v31 == 1)
  {
    sub_261AE6A40(*(v1 + 176), &unk_27FEDE110, &unk_261D035B0);
    v32 = 0;
    v33 = v193;
    goto LABEL_7;
  }

  v51 = *(v1 + 224);
  v52 = *(v1 + 184);
  sub_261B837B0(*(v1 + 176), v51);
  v53 = (v51 + *(v52 + 40));
  LODWORD(v52) = *(type metadata accessor for AppEntityID() + 20);
  v54 = *v53;
  v55 = v53[1];
  v56 = objc_allocWithZone(MEMORY[0x277D44700]);
  v57 = sub_261CFD814();
  v58 = sub_261CFFA54();
  v59 = [v56 initWithUUID:v57 entityName:v58];

  v33 = v193;
  v32 = sub_261CFBFC8(v59);

  v98 = sub_261CFFDF4();
  v99 = [v98 supportsSubtasks];

  if (!v99)
  {
    v101 = *(v1 + 224);

    sub_261B01D70();
    swift_allocError();
    v103 = 18;
    goto LABEL_39;
  }

  v100 = [v32 isSubtask];
  v101 = *(v1 + 224);
  if (v100)
  {

    sub_261B01D70();
    swift_allocError();
    v103 = 17;
LABEL_39:
    *v102 = v103;
    swift_willThrow();

    sub_261B4C974(v101);
    v11 = *(v1 + 216);
    v10 = *(v1 + 224);
    v13 = *(v1 + 200);
    v12 = *(v1 + 208);
    v15 = *(v1 + 168);
    v14 = *(v1 + 176);
    v16 = *(v1 + 160);
    v17 = v1;
    v20 = (v1 + 128);
    v19 = *(v1 + 128);
    v18 = v20[1];
    v21 = *(v17 + 104);

    v22 = *(v17 + 8);
    goto LABEL_2;
  }

  sub_261B4C974(*(v1 + 224));
LABEL_7:
  *(v1 + 280) = v32;
  v182 = *(*(v1 + 80) + 16);
  v34 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *(v1 + 288) = v34;
  v186 = v34;
  [v34 setSaveIsNoopIfNoChangedKeys_];
  sub_261CFD104();
  v35 = v33;
  if ((v29 & 1) == 0)
  {
    v35 = sub_261B491CC(v33);
  }

  v188 = v32;
  v36 = *(v35 + 16);
  v191 = v29;
  if (v36)
  {
    v37 = *(v1 + 192);
    v203 = *(v1 + 184);
    v207[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v38 = v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v39 = *(v37 + 72);
    do
    {
      v40 = *(v1 + 216);
      sub_261B4C910(v38, v40);
      v41 = (v40 + *(v203 + 40));
      v42 = *(type metadata accessor for AppEntityID() + 20);
      v43 = v1;
      v44 = *v41;
      v45 = v41[1];
      v46 = objc_allocWithZone(MEMORY[0x277D44700]);
      v47 = sub_261CFD814();
      v1 = v43;
      v48 = sub_261CFFA54();
      [v46 initWithUUID:v47 entityName:v48];

      sub_261B4C974(v40);
      sub_261D00374();
      v49 = *(v207[0] + 16);
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v38 += v39;
      --v36;
    }

    while (v36);

    v50 = v207[0];
    LODWORD(v29) = v191;
    v33 = v193;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  *(v1 + 24) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
  sub_261BF8D24();
  sub_261B3B918();
  v60 = sub_261CFFC34();
  *(v1 + 296) = v60;

  v61 = v33[2];
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    v184 = v60;
    v63 = *(v1 + 192);
    v201 = *(v1 + 152);
    v204 = *(v1 + 184);
    v198 = *(v1 + 144);
    v207[0] = MEMORY[0x277D84F90];
    sub_261B39DFC(0, v61, 0);
    v62 = v207[0];
    v64 = v33 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v195 = *(v63 + 72);
    do
    {
      v65 = *(v1 + 160);
      v66 = v65 + *(v198 + 48);
      sub_261B4C910(v64, v66);
      v67 = (v66 + *(v204 + 40));
      v68 = *(type metadata accessor for AppEntityID() + 20);
      v69 = *v67;
      v70 = v67[1];
      v71 = v1;
      v72 = objc_allocWithZone(MEMORY[0x277D44700]);
      v73 = sub_261CFD814();
      v74 = sub_261CFFA54();
      v75 = [v72 initWithUUID:v73 entityName:v74];

      *v65 = v75;
      v207[0] = v62;
      v77 = *(v62 + 16);
      v76 = *(v62 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_261B39DFC(v76 > 1, v77 + 1, 1);
        v62 = v207[0];
      }

      v78 = v71[20];
      *(v62 + 16) = v77 + 1;
      sub_261B91F74(v78, v62 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v77);
      v64 += v195;
      --v61;
      v1 = v71;
    }

    while (v61);
    LODWORD(v29) = v191;
    v60 = v184;
  }

  if (*(v62 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
    v79 = sub_261D00544();
  }

  else
  {
    v79 = MEMORY[0x277D84F98];
  }

  v207[0] = v79;
  sub_261BF8D88(v62, 1, v207);

  *(v1 + 32) = v207[0];
  if (v188)
  {
    v80 = qword_27FED9B28;
    v81 = v188;
    if (v80 != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_26;
  }

  v81 = *(v1 + 80);
  sub_261BF6544(v60);
  *(v1 + 304) = v104;
  *(v1 + 312) = v105;
  v116 = v104;
  v117 = sub_261BF9BE0(v60, v104, v105, v182);
  *(v1 + 320) = v117;
  v207[0] = MEMORY[0x277D84F90];
  if (v60 >> 62)
  {
    v81 = v117;
    v128 = sub_261D00274();
    v117 = v81;
  }

  else
  {
    v128 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v189 = v116;
  v199 = v117;
  if (!v128)
  {
    v147 = MEMORY[0x277D84F90];
LABEL_72:
    if (v147 < 0 || (v147 & 0x4000000000000000) != 0)
    {
      v148 = v199;
      if (sub_261D00274())
      {
        goto LABEL_75;
      }
    }

    else
    {
      v148 = v199;
      if (*(v147 + 16))
      {
LABEL_75:
        if (qword_27FED9B28 != -1)
        {
          swift_once();
        }

        v149 = sub_261CFF7A4();
        __swift_project_value_buffer(v149, qword_27FEDC450);
        sub_261CFCDA4();
        v150 = sub_261CFF784();
        v151 = sub_261CFFE84();

        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v207[0] = v153;
          *v152 = 136446466;
          v154 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
          v155 = MEMORY[0x26671C340](v147, v154);
          v156 = v1;
          v158 = v157;

          v159 = sub_261B879C8(v155, v158, v207);
          v1 = v156;

          *(v152 + 4) = v159;
          *(v152 + 12) = 2082;
          if (v29)
          {
            v160 = 0x6D6F74746F62;
          }

          else
          {
            v160 = 7368564;
          }

          if (v29)
          {
            v161 = 0xE600000000000000;
          }

          else
          {
            v161 = 0xE300000000000000;
          }

          v162 = sub_261B879C8(v160, v161, v207);

          *(v152 + 14) = v162;
          _os_log_impl(&dword_261AE2000, v150, v151, "[MoveRemindersToParentReminder] Move reminders to become top-level reminders {reminderIDs: %{public}s, insertPosition: %{public}s", v152, 0x16u);
          swift_arrayDestroy();
          v163 = v153;
          v116 = v189;
          MEMORY[0x26671D560](v163, -1, -1);
          MEMORY[0x26671D560](v152, -1, -1);
        }

        else
        {
        }

        v148 = v199;
        v164 = *(v1 + 80);
        LOBYTE(v207[0]) = v29;
        sub_261BF7050(v60, v207, v186);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
        sub_261CFF904();
        LOBYTE(v29) = v191;

        goto LABEL_93;
      }
    }

LABEL_93:
    if ((v148 & 0xC000000000000001) != 0)
    {
      v165 = sub_261D00274();
    }

    else
    {
      v165 = *(v148 + 16);
    }

    if (!v165)
    {

      goto LABEL_41;
    }

    if (qword_27FED9B28 != -1)
    {
      swift_once();
    }

    v166 = sub_261CFF7A4();
    __swift_project_value_buffer(v166, qword_27FEDC450);
    sub_261CFD104();
    v167 = sub_261CFF784();
    v168 = sub_261CFFE84();

    if (os_log_type_enabled(v167, v168))
    {
      v29 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v207[0] = v169;
      *v29 = 136446466;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
      sub_261CFD104();
      v170 = sub_261CFF914();
      v172 = v171;

      v173 = sub_261B879C8(v170, v172, v207);

      *(v29 + 4) = v173;
      *(v29 + 12) = 2082;
      if (v191)
      {
        v174 = 0x6D6F74746F62;
      }

      else
      {
        v174 = 7368564;
      }

      if (v191)
      {
        v175 = 0xE600000000000000;
      }

      else
      {
        v175 = 0xE300000000000000;
      }

      v176 = sub_261B879C8(v174, v175, v207);

      *(v29 + 14) = v176;
      _os_log_impl(&dword_261AE2000, v167, v168, "[MoveRemindersToParentReminder] Move reminders to become top-level reminders into sections {reminderIDs: %{public}s, insertPosition: %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v169, -1, -1);
      v177 = v29;
      LOBYTE(v29) = v191;
      MEMORY[0x26671D560](v177, -1, -1);
    }

    *(v1 + 353) = v29;
    v178 = swift_task_alloc();
    *(v1 + 328) = v178;
    *v178 = v1;
    v178[1] = sub_261BF5B28;
    v179 = *(v1 + 72);
    v180 = *(v1 + 80);

    return sub_261BFAC50(v148, (v1 + 353), v116);
  }

  v196 = v1;
  v1 = 0;
  v29 = v60 & 0xC000000000000001;
  v129 = v117 & 0xC000000000000001;
  while (1)
  {
    if (v29)
    {
      v131 = MEMORY[0x26671CA10](v1, v60);
    }

    else
    {
      if (v1 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v131 = *(v60 + 8 * v1 + 32);
    }

    v132 = v131;
    v133 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v129)
    {
      v134 = v131;
      v81 = sub_261D004A4();

      if (v81)
      {
        v196[6] = v81;
        sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
        swift_dynamicCast();
        v135 = v196[5];
        if (v135)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v199[2])
    {
      v81 = v199;
      v136 = sub_261B37CA4(v131);
      if (v137)
      {
        v135 = *(v199[7] + 8 * v136);
        if (v135)
        {
LABEL_65:

          goto LABEL_53;
        }
      }
    }

    v81 = v207;
    sub_261D00374();
    v130 = *(v207[0] + 16);
    sub_261D003B4();
    sub_261D003C4();
    sub_261D00384();
LABEL_53:
    ++v1;
    if (v133 == v128)
    {
      v147 = v207[0];
      v1 = v196;
      LODWORD(v29) = v191;
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  swift_once();
LABEL_26:
  v82 = sub_261CFF7A4();
  __swift_project_value_buffer(v82, qword_27FEDC450);
  v83 = v81;
  sub_261CFD104();
  v84 = sub_261CFF784();
  v85 = sub_261CFFE84();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v207[0] = v205;
    *v86 = 136446722;
    v88 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v89 = MEMORY[0x26671C340](v60, v88);
    v91 = v1;
    v92 = sub_261B879C8(v89, v90, v207);

    *(v86 + 4) = v92;
    *(v86 + 12) = 2114;
    v93 = [v83 objectID];
    *(v86 + 14) = v93;
    *v87 = v93;
    *(v86 + 22) = 2082;
    if (v29)
    {
      v94 = 0x6D6F74746F62;
    }

    else
    {
      v94 = 7368564;
    }

    if (v29)
    {
      v95 = 0xE600000000000000;
    }

    else
    {
      v95 = 0xE300000000000000;
    }

    v96 = sub_261B879C8(v94, v95, v207);

    *(v86 + 24) = v96;
    v1 = v91;
    _os_log_impl(&dword_261AE2000, v84, v85, "[MoveRemindersToParentReminder] Move reminders as subtasks to parent reminder {reminderIDs: %{public}s, parentReminder: %{public}@, insertPosition: %{public}s", v86, 0x20u);
    sub_261AE6A40(v87, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v87, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v205, -1, -1);
    MEMORY[0x26671D560](v86, -1, -1);
  }

  v97 = *(v1 + 80);
  LOBYTE(v207[0]) = v29;
  sub_261BF6188(v60, v83, v207, v186);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
  sub_261CFF904();

LABEL_41:
  v106 = *(v1 + 288);
  v107 = *(v1 + 296);
  v108 = *(v1 + 256);
  v109 = *(v1 + 72);

  v110 = v109[4];
  __swift_project_boxed_opaque_existential_1(v109, v109[3]);
  *(swift_allocObject() + 16) = v107;
  sub_261CFE484();

  v111 = sub_261BF3DE0(v108, (v1 + 32));
  if (*(v108 + 16))
  {
    v112 = *(v1 + 208);
    v113 = *(v1 + 136);
    v114 = *(*(v1 + 192) + 80);
    sub_261B4C910(*(v1 + 256) + ((v114 + 32) & ~v114), v112);

    sub_261BBF818(0, v113);
    v115 = v112;
    goto LABEL_68;
  }

  v119 = *(v1 + 264);
  v118 = *(v1 + 272);
  v121 = *(v1 + 248);
  v120 = *(v1 + 256);
  v122 = *(v1 + 184);
  v123 = *(v1 + 168);

  sub_261CFCBB4();
  if (v119(v123, 1, v122) == 1)
  {
    sub_261AE6A40(*(v1 + 168), &unk_27FEDE110, &unk_261D035B0);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v124 = *(v1 + 136);
    v125 = *(v1 + 112);
    v126 = *(v1 + 120);
    v127 = __swift_project_value_buffer(v125, qword_27FEDB8A8);
    (*(v126 + 16))(v124, v127, v125);
  }

  else
  {
    v138 = *(v1 + 200);
    v139 = *(v1 + 136);
    sub_261B837B0(*(v1 + 168), v138);
    sub_261BBF818(0, v139);
    v115 = v138;
LABEL_68:
    sub_261B4C974(v115);
  }

  v183 = *(v1 + 288);
  v185 = *(v1 + 280);
  v187 = *(v1 + 224);
  v190 = *(v1 + 216);
  v194 = *(v1 + 208);
  v197 = *(v1 + 200);
  v200 = *(v1 + 176);
  v202 = *(v1 + 168);
  v206 = *(v1 + 160);
  v181 = *(v1 + 136);
  v192 = *(v1 + 128);
  v141 = *(v1 + 112);
  v140 = *(v1 + 120);
  v143 = *(v1 + 96);
  v142 = *(v1 + 104);
  v144 = *(v1 + 88);
  v145 = *(v1 + 64);
  *(v1 + 56) = v111;
  (*(v140 + 16))(v192);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261BFBDB8(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
  sub_261CFC974();

  (*(v143 + 8))(v142, v144);
  (*(v140 + 8))(v181, v141);

  v146 = *(v1 + 32);

  v22 = *(v1 + 8);
LABEL_2:

  return v22();
}

uint64_t sub_261BF5B28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v16 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v7 = v4[39];
    v6 = v4[40];
    v9 = v4[37];
    v8 = v4[38];
    v10 = v4[32];

    v11 = sub_261BF6090;
  }

  else
  {
    v13 = v4[39];
    v12 = v4[40];
    v14 = v4[38];

    v4[43] = a1;
    v11 = sub_261BF5CA0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_261BF5CA0()
{
  v1 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
  sub_261CFF904();
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[36];
  v5 = v0[37];
  v6 = v0[32];
  v7 = v0[9];

  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  *(swift_allocObject() + 16) = v5;
  sub_261CFE484();

  v9 = sub_261BF3DE0(v6, v0 + 4);
  v10 = v9;
  if (*(v6 + 16))
  {
    v11 = v0[26];
    v12 = v0[17];
    v13 = *(v0[24] + 80);
    sub_261B4C910(v0[32] + ((v13 + 32) & ~v13), v11);

    sub_261BBF818(0, v12);
    sub_261B4C974(v11);
  }

  else
  {
    v14 = v9;
    v16 = v0[33];
    v15 = v0[34];
    v18 = v0[31];
    v17 = v0[32];
    v19 = v0[23];
    v20 = v0[21];

    sub_261CFCBB4();
    if (v16(v20, 1, v19) == 1)
    {
      sub_261AE6A40(v0[21], &unk_27FEDE110, &unk_261D035B0);
      if (qword_27FED9A10 != -1)
      {
        swift_once();
      }

      v21 = v0[17];
      v22 = v0[14];
      v23 = v0[15];
      v24 = __swift_project_value_buffer(v22, qword_27FEDB8A8);
      (*(v23 + 16))(v21, v24, v22);
    }

    else
    {
      v25 = v0[25];
      v26 = v0[17];
      sub_261B837B0(v0[21], v25);
      sub_261BBF818(0, v26);
      sub_261B4C974(v25);
    }

    v10 = v14;
  }

  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[28];
  v40 = v0[27];
  v42 = v0[26];
  v43 = v0[25];
  v44 = v0[22];
  v45 = v0[21];
  v46 = v0[20];
  v36 = v0[17];
  v41 = v0[16];
  v28 = v0[14];
  v27 = v0[15];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[11];
  v32 = v0[8];
  v0[7] = v10;
  (*(v27 + 16))(v41);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261BFBDB8(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
  sub_261CFC974();

  (*(v30 + 8))(v29, v31);
  (*(v27 + 8))(v36, v28);

  v33 = v0[4];

  v34 = v0[1];

  return v34();
}

uint64_t sub_261BF6090()
{
  v1 = *(v0 + 32);

  v14 = *(v0 + 336);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);

  v12 = *(v0 + 8);

  return v12();
}

id sub_261BF6188(unint64_t a1, void *a2, unsigned __int8 *a3, void *a4)
{
  v6 = v4;
  v11 = sub_261CFF1F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a3;
  v16 = *(v6 + 24);
  result = sub_261CFC0B8();
  if (!v5)
  {
    v34 = v12;
    v18 = result;
    v19 = sub_261CFD104();
    v20 = sub_261BF3B64(v19);
    v37 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D030F0;
    *(inited + 32) = [a2 list];
    *&v39 = v20;
    sub_261BBBBF8(inited);
    sub_261CFFE94();

    v22 = [*(v6 + 16) refreshReminder_];
    v23 = [a4 updateReminder_];
    sub_261CFDD24();
    v42 = [v22 list];
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v24 = a4;
    sub_261CFDF24();
    v36 = v43;
    sub_261CFE144();
    v42 = v22;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v25 = v24;
    v35 = v22;
    sub_261CFDF24();
    v26 = v43;
    *&v39 = MEMORY[0x277D84F98];
    sub_261CFD104();
    v27 = v25;
    sub_261CFCDA4();
    v28 = a2;
    v29 = v23;
    v30 = v37;
    sub_261BF91D4(a1, v18, v26, v27, v38, v28, &v39, v29);

    if (v30)
    {
    }

    else
    {

      v31 = *MEMORY[0x277D44BF0];
      v32 = v34;
      (*(v34 + 104))(v15, *MEMORY[0x277D45E88], v11);
      sub_261CFDCF4();

      (*(v32 + 8))(v15, v11);
      return v39;
    }
  }

  return result;
}

void sub_261BF6544(char *a1)
{
  v110 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0F0, &qword_261D050F8);
  v109 = *(v101 - 8);
  v2 = v109[8];
  MEMORY[0x28223BE20](v101);
  v106 = v77 - v3;
  v114 = sub_261CFF114();
  v107 = *(v114 - 8);
  v4 = *(v107 + 64);
  v5 = MEMORY[0x28223BE20](v114);
  v113 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v112 = v77 - v7;
  v105 = sub_261CFF244();
  v108 = *(v105 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_261CFF334();
  v93 = *(v103 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFF284();
  v94 = *(v12 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFF204();
  v95 = *(v16 - 8);
  v17 = *(v95 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFF374();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  v26 = *(v1 + 24);
  v27 = v111;
  v28 = sub_261CFC0B8();
  if (v27)
  {
    return;
  }

  v85 = v21;
  v110 = v24;
  v87 = v20;
  v99 = v19;
  v100 = v16;
  v96 = v15;
  v97 = v12;
  v77[4] = v28;
  v98 = v25;
  v111 = 0;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = sub_261D00424() | 0x8000000000000000;
  }

  else
  {
    v33 = -1 << *(v28 + 32);
    v30 = ~v33;
    v29 = (v28 + 64);
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v31 = v35 & *(v28 + 64);
    v32 = v28;
  }

  v36 = v109;
  sub_261CFD104();
  v37 = 0;
  v77[1] = v30;
  v38 = (v30 + 64) >> 6;
  v95 += 104;
  v94 += 104;
  v93 += 104;
  v92 = *MEMORY[0x277D45418];
  v91 = *MEMORY[0x277D45468];
  v90 = *MEMORY[0x277D45500];
  v89 = *MEMORY[0x277D45458];
  v88 = (v108 + 104);
  v83 = (v36 + 1);
  v82 = (v107 + 16);
  v77[3] = v107 + 32;
  v77[2] = v107 + 40;
  v80 = (v107 + 8);
  ++v85;
  v39 = MEMORY[0x277D84F98];
  v86 = v32;
  v81 = v38;
  v84 = v29;
  while ((v32 & 0x8000000000000000) != 0)
  {
    v51 = sub_261D004B4();
    if (!v51)
    {
      goto LABEL_30;
    }

    v53 = v52;
    v115 = v51;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    swift_dynamicCast();
    v43 = v37;
    v47 = v116;
    v115 = v53;
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    swift_dynamicCast();
    v48 = v116;
    v78 = v43;
    v79 = v31;
    v44 = v31;
    v50 = v99;
    v49 = v100;
    if (!v47)
    {
LABEL_30:
      sub_261AE6F74();
      return;
    }

LABEL_20:
    v108 = v44;
    v109 = v47;
    (*v95)(v50, v92, v49);
    (*v94)(v96, v91, v97);
    (*v93)(v102, v90, v103);
    (*v88)(v104, v89, v105);
    v54 = v48;
    sub_261CFF364();
    v55 = *(v98 + 16);
    v56 = [v54 list];
    v57 = v106;
    v58 = v111;
    sub_261CFF0C4();
    if (v58)
    {
      (*v85)(v110, v87);

      sub_261AE6F74();

      return;
    }

    v111 = 0;

    v59 = v112;
    v60 = v101;
    sub_261CFF534();
    (*v83)(v57, v60);
    v61 = [v54 list];
    v62 = [v61 objectID];

    (*v82)(v113, v59, v114);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v39;
    v64 = sub_261B37CA4(v62);
    v66 = v39[2];
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_34;
    }

    v70 = v65;
    if (v39[3] >= v69)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v76 = v64;
        sub_261CA4F30();
        v64 = v76;
      }
    }

    else
    {
      sub_261CA3FD0(v69, isUniquelyReferenced_nonNull_native);
      v64 = sub_261B37CA4(v62);
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_36;
      }
    }

    v72 = v107;
    v73 = v87;
    v39 = v116;
    if (v70)
    {
      v40 = v114;
      (*(v107 + 40))(v116[7] + *(v107 + 72) * v64, v113, v114);
    }

    else
    {
      v116[(v64 >> 6) + 8] |= 1 << v64;
      *(v39[6] + 8 * v64) = v62;
      v40 = v114;
      (*(v72 + 32))(v39[7] + *(v72 + 72) * v64, v113, v114);
      v74 = v39[2];
      v68 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v68)
      {
        goto LABEL_35;
      }

      v39[2] = v75;
      v62 = v54;
    }

    (*v80)(v112, v40);
    (*v85)(v110, v73);

    v37 = v43;
    v31 = v108;
    v29 = v84;
    v32 = v86;
    v38 = v81;
  }

  v41 = v37;
  v42 = v31;
  v43 = v37;
  if (v31)
  {
LABEL_16:
    v78 = v37;
    v79 = v31;
    v44 = (v42 - 1) & v42;
    v45 = (v43 << 9) | (8 * __clz(__rbit64(v42)));
    v46 = *(*(v32 + 56) + v45);
    v47 = *(*(v32 + 48) + v45);
    v48 = v46;
    v50 = v99;
    v49 = v100;
    if (!v47)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v38)
    {
      goto LABEL_30;
    }

    v42 = *&v29[8 * v43];
    ++v41;
    if (v42)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261D00654();
  __break(1u);
}

id sub_261BF7050(unint64_t a1, unsigned __int8 *a2, void *a3)
{
  v7 = sub_261CFF1F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  v13 = *(v3 + 24);
  result = sub_261CFC0B8();
  v43 = result;
  if (v4)
  {
    return result;
  }

  v37 = v8;
  v40 = v11;
  v41 = v7;
  v47 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    sub_261CFD104();
    v42 = a3;
    if (!i)
    {
      break;
    }

    v16 = a2;
    v17 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26671CA10](v17, a1);
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v18 = *(a1 + 8 * v17 + 32);
      }

      a2 = v18;
      a3 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v45 = v18;
      sub_261BF7858(&v45, v43, &v47, v42, v16, &v46);

      ++v17;
      if (a3 == i)
      {
        v19 = v47;
        goto LABEL_14;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v19 = MEMORY[0x277D84F98];
LABEL_14:
  swift_bridgeObjectRelease_n();

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = 0;
    v21 = 0;
    a1 = 0;
    v43 = sub_261D00424() | 0x8000000000000000;
  }

  else
  {
    v22 = -1 << *(v19 + 32);
    v21 = ~v22;
    v20 = v19 + 64;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    a1 = v24 & *(v19 + 64);
    v43 = v19;
  }

  v36[1] = v19;
  swift_bridgeObjectRetain_n();
  v25 = 0;
  v36[0] = v21;
  a2 = ((v21 + 64) >> 6);
  v42 = *MEMORY[0x277D44BF0];
  v39 = *MEMORY[0x277D45E90];
  v38 = (v37 + 104);
  v26 = (v37 + 8);
  v27 = v43;
  if ((v43 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v31 = v25;
      v32 = a1;
      v30 = v25;
      if (!a1)
      {
        break;
      }

LABEL_28:
      a3 = ((v32 - 1) & v32);
      v33 = *(*(v27 + 56) + ((v30 << 9) | (8 * __clz(__rbit64(v32)))));
      sub_261CFCDA4();
      if (!v33)
      {
        goto LABEL_31;
      }

LABEL_29:
      v35 = v40;
      v34 = v41;
      (*v38)(v40, v39, v41);
      sub_261CFDCF4();

      (*v26)(v35, v34);
      v25 = v30;
      a1 = a3;
      v27 = v43;
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v30 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v30 >= a2)
      {
        goto LABEL_31;
      }

      v32 = *(v20 + 8 * v30);
      ++v31;
      if (v32)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_21:
  if (sub_261D004B4())
  {
    v29 = v28;
    swift_unknownObjectRelease();
    v44 = v29;
    sub_261CFDD24();
    swift_dynamicCast();
    v30 = v25;
    a3 = a1;
    if (v45)
    {
      goto LABEL_29;
    }
  }

LABEL_31:
  sub_261AE6F74();
  swift_bridgeObjectRelease_n();
  return v46;
}

void sub_261BF7470(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_27FED9B28 != -1)
    {
      swift_once();
    }

    v5 = sub_261CFF7A4();
    __swift_project_value_buffer(v5, qword_27FEDC450);
    sub_261CFD104();
    sub_261BFBE00(a1, 1);
    oslog = sub_261CFF784();
    v6 = sub_261CFFE64();

    sub_261BFBE0C(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136446466;
      v9 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v10 = MEMORY[0x26671C340](a3, v9);
      v12 = sub_261B879C8(v10, v11, &v26);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_261D00674();
      v15 = sub_261B879C8(v13, v14, &v26);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_261AE2000, oslog, v6, "[MoveRemindersToParentReminder] Saved request failed {reminderIDs: %{public}s, error: %s}", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v8, -1, -1);
      v16 = v7;
LABEL_10:
      MEMORY[0x26671D560](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27FED9B28 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDC450);
    sub_261CFD104();
    oslog = sub_261CFF784();
    v18 = sub_261CFFE84();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v22 = MEMORY[0x26671C340](a3, v21);
      v24 = sub_261B879C8(v22, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_261AE2000, oslog, v18, "[MoveRemindersToParentReminder] Saved request completed successfully {reminderIDs: %{public}s}", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26671D560](v20, -1, -1);
      v16 = v19;
      goto LABEL_10;
    }
  }
}

uint64_t sub_261BF77AC(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void *sub_261BF7858(void **a1, uint64_t a2, uint64_t *a3, void *a4, int a5, uint64_t a6)
{
  LODWORD(v83) = a5;
  v84 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v80 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v73[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v73[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v73[-v23];
  result = sub_261CADDB4(*a1, a2);
  if (result)
  {
    v26 = result;
    v82 = v16;
    v78 = a6;
    v79 = v6;
    v27 = [result list];
    v28 = [v27 objectID];

    v29 = sub_261CADE84(v28, *a3);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v77 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_261D030F0;
      *(v31 + 32) = [v26 list];
      v32 = v84;
      sub_261CFFE94();

      sub_261CFDD24();
      v33 = [v26 list];
      v86 = 0;
      v87 = v33;
      memset(v85, 0, sizeof(v85));
      v34 = v32;
      sub_261CFDF24();
      v30 = v88;
      swift_retain_n();
      v35 = [v26 0x279AFBEF1];
      v36 = [v35 objectID];

      v37 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v37 < 0)
        {
          v38 = *a3;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_261D00274();
        if (__OFADD__(result, 1))
        {
          __break(1u);
          return result;
        }

        *a3 = sub_261CA248C(v38, result + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v85[0] = *a3;
      sub_261BF83B0(v30, v36, isUniquelyReferenced_nonNull_native);
      *a3 = *&v85[0];

      if (qword_27FED9B28 != -1)
      {
        swift_once();
      }

      v40 = sub_261CFF7A4();
      __swift_project_value_buffer(v40, qword_27FEDC450);
      v41 = v26;
      v42 = sub_261CFF784();
      v43 = sub_261CFFE54();

      v76 = v42;
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v74 = v43;
        v45 = v44;
        v46 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v85[0] = v75;
        *v45 = 138543874;
        v47 = [v41 objectID];
        *(v45 + 4) = v47;
        *v46 = v47;
        *(v45 + 12) = 2114;
        v48 = [v41 list];
        v49 = [v48 objectID];

        *(v45 + 14) = v49;
        v46[1] = v49;
        *(v45 + 22) = 2082;
        if (v83)
        {
          v50 = 0x6D6F74746F62;
        }

        else
        {
          v50 = 7368564;
        }

        if (v83)
        {
          v51 = 0xE600000000000000;
        }

        else
        {
          v51 = 0xE300000000000000;
        }

        v52 = sub_261B879C8(v50, v51, v85);

        *(v45 + 24) = v52;
        v53 = v76;
        _os_log_impl(&dword_261AE2000, v76, v74, "[MoveRemindersToParentReminder] Move reminder to top-level with id: %{public}@, within its original list: %{public}@, at position: %{public}s", v45, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
        swift_arrayDestroy();
        MEMORY[0x26671D560](v46, -1, -1);
        v54 = v75;
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x26671D560](v54, -1, -1);
        MEMORY[0x26671D560](v45, -1, -1);
      }

      else
      {
      }
    }

    sub_261CFCDA4();
    v55 = [v84 updateReminder_];
    v56 = MEMORY[0x277D45DB0];
    if ((v83 & 1) == 0)
    {
      v56 = MEMORY[0x277D45DB8];
    }

    (*(v21 + 104))(v24, *v56, v20);
    v57 = sub_261CFDD04();

    (*(v21 + 8))(v24, v20);
    v58 = [v26 objectID];
    v59 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v60 = v82;
    (*(*(v59 - 8) + 56))(v82, 1, 1, v59);
    v61 = v57;
    v62 = [v61 listChangeItem];
    if (v62 && (v63 = v62, v64 = [v62 storage], v63, v64))
    {
      v65 = [v61 storage];
      v66 = [v61 accountCapabilities];
      v83 = v26;
      v84 = v30;
      v67 = v66;
      v68 = v80;
      sub_261AFB668(v60, v80, &qword_27FEDA108, &unk_261D020C0);
      v69 = v58;
      v70 = v81;
      sub_261C7EDC4(v65, v64, v67, 0, 0, v68, v81);

      sub_261AE6A40(v60, &qword_27FEDA108, &unk_261D020C0);
      v71 = type metadata accessor for ReminderEntity();
      (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
      sub_261BF39C0(v70, v69);
    }

    else
    {

      sub_261B01D70();
      swift_allocError();
      *v72 = 11;
      swift_willThrow();

      return sub_261AE6A40(v60, &qword_27FEDA108, &unk_261D020C0);
    }
  }

  return result;
}

uint64_t sub_261BF8094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_261B37CA4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_261CA4754();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for ReminderEntity();
    v20 = *(v13 - 8);
    sub_261B837B0(v12 + *(v20 + 72) * v8, a2);
    sub_261BF81E8(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ReminderEntity();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_261BF81E8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261D001F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_261D000E4();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ReminderEntity() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

id sub_261BF83B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_261B37CA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_261CA296C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_261B37CA4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        result = sub_261D00654();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_261CA45F0();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

id sub_261BF852C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_261B37CA4(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_261CA4754();
      goto LABEL_7;
    }

    sub_261CA2BDC(v12, a3 & 1);
    v19 = *v4;
    v20 = sub_261B37CA4(a2);
    if ((v13 & 1) == (v21 & 1))
    {
      v9 = v20;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    result = sub_261D00654();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for ReminderEntity() - 8) + 72) * v9;

    return sub_261B4AC20(a1, v17);
  }

LABEL_13:
  sub_261BF8808(v9, a2, a1, v15);

  return a2;
}

void sub_261BF8690(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_261B37CA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_261CA3A98(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_261B37CA4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        sub_261D00654();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_261CA4DCC();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  v24 = a2;
}

uint64_t sub_261BF8808(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ReminderEntity();
  result = sub_261B837B0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void sub_261BF889C(unint64_t a1, void *a2, char a3, void *a4)
{
  v45 = a4;
  LOBYTE(v4) = a3;
  v7 = type metadata accessor for ReminderEntity();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  v11 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v12;
  if (a1 >> 62)
  {
LABEL_31:
    v13 = sub_261D00274();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_261CFD104();
  sub_261CFD104();
  if (!v13)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v14 = 0;
  v40 = a1 & 0xFFFFFFFFFFFFFF8;
  v41 = a1 & 0xC000000000000001;
  v38 = a2;
  v39 = a1;
  while (1)
  {
    if (v41)
    {
      v15 = MEMORY[0x26671CA10](v14, a1);
    }

    else
    {
      if (v14 >= *(v40 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = a2[2];
    if (v14 == v17)
    {

      goto LABEL_25;
    }

    if (v14 >= v17)
    {
      goto LABEL_28;
    }

    v18 = *(v44 + 72);
    v19 = a2 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v18 * v14;
    v20 = v42;
    v21 = *(v43 + 48);
    sub_261B4C910(v19, &v42[v21]);
    v49 = v16;
    v22 = &v20[v21];
    a1 = v10;
    sub_261B837B0(v22, v10);
    a2 = *v45;
    v10 = sub_261B37CA4(v16);
    v24 = a2[2];
    v25 = (v23 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_29;
    }

    v27 = v23;
    if (a2[3] >= v26)
    {
      break;
    }

    v28 = v45;
    sub_261CA2BDC(v26, v4 & 1);
    a2 = *v28;
    v29 = sub_261B37CA4(v16);
    if ((v27 & 1) != (v30 & 1))
    {
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      sub_261D00654();
      __break(1u);
      goto LABEL_33;
    }

    v10 = v29;
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_17:
    v4 = *v45;
    *(*v45 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v4[6] + 8 * v10) = v16;
    v31 = v4[7] + v10 * v18;
    v10 = a1;
    sub_261B837B0(a1, v31);
    v32 = v4[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_30;
    }

    ++v14;
    v4[2] = v34;
    LOBYTE(v4) = 1;
    a2 = v38;
    a1 = v39;
    if (v13 == v14)
    {
      goto LABEL_25;
    }
  }

  if (v4)
  {
    if (v23)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  a2 = v45;
  sub_261CA4754();
  if ((v27 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_22:
  v35 = swift_allocError();
  swift_willThrow();
  v48 = v35;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE130, &qword_261D0A028);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_261B4C974(a1);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_33:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD00000000000001BLL, 0x8000000261D1DD20);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261D00404();
  MEMORY[0x26671C210](39, 0xE100000000000000);
  sub_261D004E4();
  __break(1u);
}

unint64_t sub_261BF8D24()
{
  result = qword_27FEDD910;
  if (!qword_27FEDD910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE100, &qword_261D05750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD910);
  }

  return result;
}

uint64_t sub_261BF8D88(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for ReminderEntity();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v50 - v17);
  v19 = *(a1 + 16);
  if (!v19)
  {
    return result;
  }

  v53 = a2;
  v20 = *(result + 48);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v56 = *(v16 + 72);
  v51 = v21;
  v52 = a1;
  sub_261AFB668(a1 + v21, &v50 - v17, &qword_27FEDA598, &qword_261D05740);
  v22 = *v18;
  v55 = v20;
  sub_261B837B0(v18 + v20, v12);
  v23 = *a3;
  v25 = sub_261B37CA4(v22);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    goto LABEL_22;
  }

  LOBYTE(v3) = v24;
  if (v23[3] >= v28)
  {
    if ((v53 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v32 = v19;
      v33 = *a3;
      if (v3)
      {
        v25 *= *(v57 + 72);
        v34 = v54;
        sub_261B4C910(v33[7] + v25, v54);
        sub_261B4C974(v12);

        result = sub_261B4AC20(v34, v33[7] + v25);
      }

      else
      {
        v33[(v25 >> 6) + 8] |= 1 << v25;
        *(v33[6] + 8 * v25) = v22;
        result = sub_261B837B0(v12, v33[7] + *(v57 + 72) * v25);
        v35 = v33[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v33[2] = v37;
      }

      v19 = v32 - 1;
      if (v32 == 1)
      {
        return result;
      }

      v3 = v52 + v56 + v51;
      while (1)
      {
        sub_261AFB668(v3, v18, &qword_27FEDA598, &qword_261D05740);
        v22 = *v18;
        sub_261B837B0(v18 + v55, v12);
        v39 = *a3;
        v40 = sub_261B37CA4(v22);
        v42 = v39[2];
        v43 = (v41 & 1) == 0;
        v36 = __OFADD__(v42, v43);
        v44 = v42 + v43;
        if (v36)
        {
          break;
        }

        v25 = v41;
        if (v39[3] < v44)
        {
          sub_261CA2BDC(v44, 1);
          v45 = *a3;
          v40 = sub_261B37CA4(v22);
          if ((v25 & 1) != (v46 & 1))
          {
            goto LABEL_25;
          }
        }

        v47 = *a3;
        if (v25)
        {
          v25 = *(v57 + 72) * v40;
          v38 = v54;
          sub_261B4C910(v47[7] + v25, v54);
          sub_261B4C974(v12);

          result = sub_261B4AC20(v38, v47[7] + v25);
        }

        else
        {
          v47[(v40 >> 6) + 8] |= 1 << v40;
          *(v47[6] + 8 * v40) = v22;
          result = sub_261B837B0(v12, v47[7] + *(v57 + 72) * v40);
          v48 = v47[2];
          v36 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v36)
          {
            goto LABEL_23;
          }

          v47[2] = v49;
        }

        v3 += v56;
        if (!--v19)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_261CA4754();
    }
  }

  sub_261CA2BDC(v28, v53 & 1);
  v29 = *a3;
  v30 = sub_261B37CA4(v22);
  if ((v3 & 1) == (v31 & 1))
  {
    v25 = v30;
    goto LABEL_7;
  }

LABEL_25:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  result = sub_261D00654();
  __break(1u);
  return result;
}

void sub_261BF91D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6, void *a7, void *a8)
{
  v92 = a8;
  v91 = a7;
  v87 = a6;
  LOBYTE(v9) = a5;
  v106 = a3;
  v107 = a4;
  v111 = a2;
  v114[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v90 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = &v85 - v15;
  v16 = type metadata accessor for ReminderEntity();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v89 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = (&v85 - v20);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v21 = *(v105 - 8);
  isa = v21[8].isa;
  MEMORY[0x28223BE20](v105);
  v104 = &v85 - v24;
  v86 = v8;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    v26 = 0;
    v27 = a1 & 0xC000000000000001;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v112 = v111 & 0xC000000000000001;
    v29 = v111 & 0xFFFFFFFFFFFFFF8;
    if (v111 < 0)
    {
      v29 = v111;
    }

    v110 = v29;
    v30 = MEMORY[0x277D45DB8];
    v102 = v21 + 13;
    v101 = v21 + 1;
    if (v9)
    {
      v30 = MEMORY[0x277D45DB0];
    }

    v100 = *v30;
    *&v23 = 138543618;
    v85 = v23;
    v96 = a1;
    v93 = i;
    v95 = a1 & 0xC000000000000001;
    v94 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        v31 = MEMORY[0x26671CA10](v26, a1);
      }

      else
      {
        if (v26 >= *(v28 + 16))
        {
          goto LABEL_46;
        }

        v31 = *(a1 + 8 * v26 + 32);
      }

      v32 = v31;
      v9 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v112)
      {
        v33 = v31;
        v21 = sub_261D004A4();

        if (!v21)
        {
          goto LABEL_8;
        }

        v113 = v21;
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        v34 = v114[0];
        if (!v114[0])
        {
          goto LABEL_8;
        }
      }

      else if (!*(v111 + 16) || (v21 = v111, v35 = sub_261B37CA4(v31), (v36 & 1) == 0) || (v34 = *(*(v111 + 56) + 8 * v35)) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v37 = [v34 subtaskContext];
      if (v37)
      {
        v38 = v37;
        v114[0] = 0;
        v39 = [v37 hasSubtasksWithError_];
        v40 = v114[0];
        if (v114[0])
        {
          swift_willThrow();
          v40;

          v32 = v34;
          goto LABEL_44;
        }

        if (v39)
        {
          v75 = v32;
          if (qword_27FED9B28 != -1)
          {
            swift_once();
          }

          v76 = sub_261CFF7A4();
          __swift_project_value_buffer(v76, qword_27FEDC450);
          v77 = v34;
          v78 = sub_261CFF784();
          v79 = sub_261CFFE64();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            *v80 = 138543362;
            v82 = [v77 objectID];
            *(v80 + 4) = v82;
            *v81 = v82;
            _os_log_impl(&dword_261AE2000, v78, v79, "[MoveRemindersToParentReminder] Cannot move reminders that have subtasks to become subtasks of another {reminderID: %{public}@}", v80, 0xCu);
            sub_261AE6A40(v81, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v81, -1, -1);
            MEMORY[0x26671D560](v80, -1, -1);
          }

          sub_261B01D70();
          swift_allocError();
          *v83 = 17;
          swift_willThrow();

          v32 = v38;
          goto LABEL_44;
        }
      }

      v41 = [v107 updateReminder_];
      v42 = v104;
      v43 = v34;
      v44 = v105;
      (v102->isa)(v104, v100, v105);
      v45 = sub_261CFDFB4();

      (v101->isa)(v42, v44);
      if (v45)
      {
        v103 = v43;
        v46 = [v43 objectID];
        v47 = type metadata accessor for RecurrentInstanceSpecifier(0);
        (*(*(v47 - 8) + 56))(v108, 1, 1, v47);
        v48 = v45;
        v49 = [v48 listChangeItem];
        if (!v49 || (v50 = v49, v51 = [v49 storage], v50, !v51))
        {

          sub_261B01D70();
          swift_allocError();
          *v74 = 11;
          swift_willThrow();

          sub_261AE6A40(v108, &qword_27FEDA108, &unk_261D020C0);

LABEL_44:

          goto LABEL_49;
        }

        v98 = [v48 storage];
        v52 = [v48 accountCapabilities];
        v109 = v32;
        v97 = v52;
        v53 = [v92 storage];
        v99 = v46;
        v54 = v108;
        v55 = v90;
        sub_261AFB668(v108, v90, &qword_27FEDA108, &unk_261D020C0);
        v56 = v88;
        v57 = v53;
        i = v93;
        sub_261C7EDC4(v98, v51, v97, v57, 0, v55, v88);

        v58 = v54;
        a1 = v96;
        sub_261AE6A40(v58, &qword_27FEDA108, &unk_261D020C0);
        v59 = v89;
        sub_261B837B0(v56, v89);
        v60 = v91;
        v61 = *v91;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v114[0] = *v60;
        v21 = v114;
        v63 = v59;
        v64 = v99;
        sub_261BF852C(v63, v99, isUniquelyReferenced_nonNull_native);

        *v60 = v114[0];
      }

      else
      {
        if (qword_27FED9B28 != -1)
        {
          swift_once();
        }

        v65 = sub_261CFF7A4();
        __swift_project_value_buffer(v65, qword_27FEDC450);
        v66 = v43;
        v67 = v87;
        v21 = sub_261CFF784();
        v68 = sub_261CFFE64();

        if (os_log_type_enabled(v21, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v109 = v32;
          v71 = v70;
          *v69 = v85;
          v72 = [v66 objectID];
          *(v69 + 4) = v72;
          *v71 = v72;
          *(v69 + 12) = 2114;
          i = v93;
          v73 = [v67 objectID];
          *(v69 + 14) = v73;
          v71[1] = v73;
          _os_log_impl(&dword_261AE2000, v21, v68, "[MoveRemindersToParentReminder] Unexpectedly failed to move reminder as subtask {reminderID: %{public}@, parentReminder: %{public}@}", v69, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
          swift_arrayDestroy();
          MEMORY[0x26671D560](v71, -1, -1);
          MEMORY[0x26671D560](v69, -1, -1);
        }

        else
        {
        }

        a1 = v96;
      }

      v27 = v95;
      v28 = v94;
LABEL_9:
      ++v26;
      if (v9 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:

LABEL_49:
  v84 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261BF9BE0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v124[1] = *MEMORY[0x277D85DE8];
  v96 = sub_261CFF184();
  v11 = *(v96 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_261CFF0F4();
  v118 = *(v115 - 8);
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_261CFF1B4();
  v102 = *(v103 - 8);
  v16 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_261CFF274();
  v18 = *(v90 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_261CFF114();
  v99 = *(v93 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x28223BE20](v93);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v122 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v74 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v75 = sub_261D00274();
    v23 = v74;
    v24 = v75;
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v25 = a2;
  }

  v108 = v25;
  if (!v24)
  {
    v101 = MEMORY[0x277D84F98];
    goto LABEL_56;
  }

  v81 = v23;
  v105 = a3;
  v84 = a4;
  v26 = 0;
  v106 = a2;
  v120 = a2 & 0xC000000000000001;
  v121 = v109 & 0xC000000000000001;
  v80 = v99 + 16;
  v79 = (v18 + 8);
  v98 = v102 + 16;
  v112 = v118 + 8;
  v113 = v118 + 16;
  v92 = (v11 + 88);
  v91 = *MEMORY[0x277D453E0];
  v83 = *MEMORY[0x277D453D8];
  v97 = (v102 + 8);
  v82 = (v11 + 96);
  v27 = v109;
  v78 = (v99 + 8);
  v101 = MEMORY[0x277D84F98];
  v85 = MEMORY[0x277D84F98];
  do
  {
    v28 = v26;
    while (1)
    {
      if (v121)
      {
        v29 = MEMORY[0x26671CA10](v28, v27);
      }

      else
      {
        if (v28 >= *(v122 + 16))
        {
          goto LABEL_58;
        }

        v29 = *(v27 + 8 * v28 + 32);
      }

      a2 = v29;
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v73 = v18;

        sub_261CFD654();

        swift_willThrow();
        (*v97)(v104, v103);
        (*v78)(v81, v93);

        goto LABEL_56;
      }

      if (!v120)
      {
        v18 = v106;
        if (!*(v106 + 16))
        {
          goto LABEL_9;
        }

        v31 = sub_261B37CA4(v29);
        if ((v32 & 1) == 0)
        {
          goto LABEL_9;
        }

        v18 = *(*(v18 + 56) + 8 * v31);
        if (!v18)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }

      v18 = v29;
      v30 = sub_261D004A4();

      if (v30)
      {
        break;
      }

      v27 = v109;
LABEL_9:

      ++v28;
      if (v26 == v24)
      {
        goto LABEL_56;
      }
    }

    v123 = v30;
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    swift_dynamicCast();
    v18 = v124[0];
    v27 = v109;
    if (!v124[0])
    {
      goto LABEL_9;
    }

LABEL_21:
    v33 = [v18 parentReminder];
    if (!v33)
    {
      v34 = v18;
      goto LABEL_26;
    }

    v34 = v33;
    v107 = v18;
    v35 = [v33 list];
    v5 = [v35 objectID];

    v18 = v105;
    if (!*(v105 + 16) || (v36 = sub_261B37CA4(v5), (v37 & 1) == 0))
    {

      a2 = v107;
LABEL_26:

      goto LABEL_9;
    }

    v116 = v34;
    (*(v99 + 16))(v81, *(v18 + 56) + *(v99 + 72) * v36, v93);

    v38 = v89;
    MEMORY[0x26671B7D0]();
    v39 = sub_261CFF264();
    (*v79)(v38, v90);
    v40 = v39;
    v88 = *(v39 + 16);
    if (!v88)
    {

      v18 = v107;
      v42 = v116;
      goto LABEL_53;
    }

    v41 = 0;
    v87 = v39 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v77 = v101;
    v94 = v6;
    v110 = a2;
    v111 = v28 + 1;
    v86 = v39;
    while (2)
    {
      if (v41 >= *(v40 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      v18 = v104;
      v43 = v41;
      (*(v102 + 16))(v104, v87 + *(v102 + 72) * v41, v103);
      v100 = v43 + 1;
      v44 = 0;
      v119 = sub_261CFF1A4();
      v117 = *(v119 + 16);
      while (2)
      {
        if (v117 == v44)
        {

          (*v97)(v104, v103);
          v6 = v94;
          v27 = v109;
LABEL_31:
          v18 = v107;
          v42 = v116;
          goto LABEL_32;
        }

        if (v44 >= *(v119 + 16))
        {
          goto LABEL_59;
        }

        v45 = v118;
        v46 = v114;
        v47 = v115;
        (*(v118 + 16))(v114, v119 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44++, v115);
        v5 = sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
        v48 = sub_261CFF0D4();
        v49 = v24;
        v50 = [v116 objectID];
        v18 = sub_261D000F4();

        v24 = v49;
        v51 = *(v45 + 8);
        v52 = v47;
        a2 = v110;
        v26 = v111;
        v51(v46, v52);
        if ((v18 & 1) == 0)
        {
          continue;
        }

        break;
      }

      v53 = v95;
      sub_261CFF194();
      v54 = v96;
      v55 = (*v92)(v53, v96);
      if (v55 != v91)
      {
        v6 = v94;
        v27 = v109;
        if (v55 != v83)
        {
          result = sub_261D00604();
          __break(1u);
          return result;
        }

        (*v97)(v104, v103);
        goto LABEL_31;
      }

      (*v82)(v53, v54);
      v5 = *v53;
      v56 = *(v53 + 2);
      v57 = *(v53 + 4);

      v124[0] = 0;
      v58 = [v84 fetchListSectionWithObjectID:v5 error:v124];
      v18 = v124[0];
      v6 = v94;
      v27 = v109;
      if (!v58)
      {
        goto LABEL_60;
      }

      v59 = v58;
      if ((v77 & 0xC000000000000001) != 0)
      {
        v60 = v5;
        if (v77 < 0)
        {
          v61 = v77;
        }

        else
        {
          v61 = v77 & 0xFFFFFFFFFFFFFF8;
        }

        v62 = a2;
        v63 = v18;
        v64 = v59;
        v65 = sub_261D00274();
        v42 = v116;
        if (!__OFADD__(v65, 1))
        {
          v66 = sub_261CA26C0(v61, v65 + 1);
          v5 = v60;
          v6 = v94;
          goto LABEL_50;
        }

LABEL_63:
        __break(1u);
      }

      v67 = a2;
      v68 = v18;
      v69 = v59;
      v66 = v85;
      v42 = v116;
LABEL_50:
      v70 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v70;
      sub_261BF8690(v59, a2, isUniquelyReferenced_nonNull_native);

      (*v97)(v104, v103);
      v85 = v124[0];
      v77 = v124[0];
      v18 = v107;
LABEL_32:
      v41 = v100;
      v40 = v86;
      if (v100 != v88)
      {
        continue;
      }

      break;
    }

    v101 = v77;
LABEL_53:

    (*v78)(v81, v93);
  }

  while (v26 != v24);
LABEL_56:
  v72 = *MEMORY[0x277D85DE8];
  return v101;
}

uint64_t sub_261BFA794(unint64_t a1, uint64_t a2)
{
  v40 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00424();
    v3 = 0;
    v4 = 0;
    v5 = 0;
    a1 = v2 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = a1 + 64;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 64);
  }

  v9 = 0;
  v10 = (v4 + 64) >> 6;
  v11 = MEMORY[0x277D84F98];
  v38 = a1;
  while ((a1 & 0x8000000000000000) != 0)
  {
    if (!sub_261D004C4() || (sub_261B05020(0, &qword_280D21DF0, 0x277D44700), swift_dynamicCast(), v17 = v39, v15 = v9, v16 = v5, !v39))
    {
LABEL_35:
      sub_261AE6F74();
      return v11;
    }

LABEL_21:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = v17;
      v19 = sub_261D004A4();

      if (v19)
      {
        sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
        swift_dynamicCast();
        v19 = v39;
      }
    }

    else if (*(a2 + 16) && (v20 = sub_261B37CA4(v17), (v21 & 1) != 0))
    {
      v19 = *(*(a2 + 56) + 8 * v20);
      v22 = v19;
    }

    else
    {
      v19 = 0;
    }

    v24 = sub_261B3809C(v19);
    v25 = v11[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_37;
    }

    v28 = v23;
    if (v11[3] < v27)
    {
      sub_261CA3D0C(v27, 1);
      v11 = v40;
      v29 = sub_261B3809C(v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_39;
      }

      v24 = v29;
    }

    if (v28)
    {

      v12 = (v11[7] + 8 * v24);
      MEMORY[0x26671C310]();
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261CFFC84();
      }

      sub_261CFFCB4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_261D030F0;
      *(v31 + 32) = v17;
      v11[(v24 >> 6) + 8] |= 1 << v24;
      *(v11[6] + 8 * v24) = v19;
      *(v11[7] + 8 * v24) = v31;
      v32 = v11[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_38;
      }

      v11[2] = v34;
    }

    v9 = v15;
    v5 = v16;
    a1 = v38;
  }

  v13 = v9;
  v14 = v5;
  v15 = v9;
  if (v5)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_35;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC470, &unk_261D0A030);

  result = sub_261D00654();
  __break(1u);
  return result;
}

uint64_t sub_261BFAB64(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_261D00274();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2[2] >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2[2];
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
    v6 = sub_261D00544();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  sub_261CFD104();
  sub_261CFD104();
  sub_261BF889C(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_261BFAC50(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = *(type metadata accessor for ReminderEntity() - 8);
  *(v4 + 144) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0F0, &qword_261D05718);
  *(v4 + 160) = v9;
  v10 = *(v9 - 8);
  *(v4 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v13 = sub_261CFDBE4();
  *(v4 + 192) = v13;
  v14 = *(v13 - 8);
  *(v4 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 312) = *a2;

  return MEMORY[0x2822009F8](sub_261BFAE5C, 0, 0);
}

uint64_t sub_261BFAE5C()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = *(v0[15] + 16);
  v0[27] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x277D45C20], v3);
  v6 = sub_261CFE5B4();
  v7 = v5;
  v8 = sub_261CFE494();
  v9 = MEMORY[0x277D45E18];
  v0[5] = v6;
  v0[6] = v9;
  v0[2] = v8;
  v10 = sub_261CFE474();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v0[28] = sub_261CFFD24();
  v0[29] = sub_261CFFD14();
  v12 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BFAF90, v12, v11);
}

uint64_t sub_261BFAF90()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[23];

  objc_allocWithZone(sub_261CFE424());
  v0[30] = sub_261CFE414();

  return MEMORY[0x2822009F8](sub_261BFB038, 0, 0);
}

uint64_t sub_261BFB038()
{
  v3 = *(v1 + 104);
  v4 = sub_261CFD104();
  v5 = sub_261BFA794(v4, v4);
  v6 = v5;
  v7 = 0;
  *(v1 + 56) = MEMORY[0x277D84F98];
  *(v1 + 248) = v5;
  v8 = *(v5 + 32);
  *(v1 + 313) = v8;
  v9 = 1 << v8;
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = *MEMORY[0x277D45DB0];
  *(v1 + 304) = *MEMORY[0x277D45DB8];
  *(v1 + 308) = v12;
  v13 = (v9 + 63) >> 6;
  do
  {
    if (v11)
    {
      v14 = v7;
      goto LABEL_10;
    }

    do
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v14 >= v13)
      {
        v28 = *(v1 + 208);
        v30 = *(v1 + 176);
        v29 = *(v1 + 184);
        v31 = *(v1 + 152);
        v33 = *(v1 + 128);
        v32 = *(v1 + 136);

        v34 = *(v1 + 56);

        v35 = *(v1 + 8);

        return v35(v34);
      }

      v11 = *(v5 + 64 + 8 * v14);
      ++v7;
    }

    while (!v11);
    v7 = v14;
LABEL_10:
    *(v1 + 256) = v11;
    *(v1 + 264) = v14;
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v2 = *(*(v5 + 48) + 8 * v16);
    *(v1 + 272) = v2;
  }

  while (!v2);
  v0 = *(*(v5 + 56) + 8 * v16);
  v6 = MEMORY[0x277D84F90];
  *(v1 + 64) = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_45;
  }

  v45 = v0 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    *(v1 + 280) = v6;
    v18 = v2;
    sub_261CFD104();
    if (!i)
    {
      break;
    }

    v2 = 0;
    while ((v0 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26671CA10](v2, v0);
LABEL_17:
      v20 = v19;
      if (__OFADD__(v2, 1))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v6 = *(v1 + 112);
      if ((v6 & 0xC000000000000001) != 0)
      {
        if (v6 < 0)
        {
          v21 = *(v1 + 112);
        }

        v22 = sub_261D004A4();
        if (!v22)
        {
LABEL_30:

          goto LABEL_31;
        }

        *(v1 + 80) = v22;
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        v23 = *(v1 + 72);

        if (v23)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!*(v6 + 16))
        {
          goto LABEL_30;
        }

        v24 = sub_261B37CA4(v19);
        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }

        v26 = *(*(*(v1 + 112) + 56) + 8 * v24);

        if (v26)
        {
LABEL_27:
          MEMORY[0x26671C310]();
          if (*((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v27 = *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_261CFFC84();
          }

          v6 = v1 + 64;
          sub_261CFFCB4();
          *(v1 + 280) = *(v1 + 64);
        }
      }

LABEL_31:
      if (v2 + 1 == i)
      {
        goto LABEL_37;
      }

      ++v2;
    }

    if (v2 < *(v45 + 16))
    {
      v19 = *(v0 + 8 * v2 + 32);
      goto LABEL_17;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v45 = v0 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_37:
  v37 = (v1 + 308);
  v38 = *(v1 + 224);
  v40 = *(v1 + 168);
  v39 = *(v1 + 176);
  v41 = *(v1 + 160);
  if (!*(v1 + 312))
  {
    v37 = (v1 + 304);
  }

  v42 = *v37;

  (*(v40 + 104))(v39, v42, v41);
  *(v1 + 288) = sub_261CFFD14();
  v44 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261BFB454, v44, v43);
}

uint64_t sub_261BFB454()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[30];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];

  v0[37] = sub_261CFE3F4();
  (*(v6 + 8))(v5, v7);

  return MEMORY[0x2822009F8](sub_261BFB508, 0, 0);
}

uint64_t sub_261BFB508()
{
  v3 = *(v1 + 296);
  if ((*(v1 + 312) & 1) == 0)
  {
    v3 = sub_261B48FBC(*(v1 + 296));
  }

  if (v3 >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      *(v1 + 88) = MEMORY[0x277D84F90];
      sub_261B39DB8(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v5 = 0;
      v81 = v3;
      v82 = v3 & 0xC000000000000001;
      v2 = *(v1 + 88);
      v79 = v3 & 0xFFFFFFFFFFFFFF8;
      v80 = v4;
      v6 = &unk_279AFB000;
      while (!__OFADD__(v5, 1))
      {
        v88 = v2;
        if (v82)
        {
          v7 = MEMORY[0x26671CA10](v5, v3);
        }

        else
        {
          if (v5 >= *(v79 + 16))
          {
            goto LABEL_22;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = *(v1 + 136);
        v10 = type metadata accessor for RecurrentInstanceSpecifier(0);
        (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
        v11 = [v8 listChangeItem];
        if (!v11 || (v12 = v11, v13 = [v11 v6[84]], v12, !v13))
        {
          v24 = v8;
          v26 = *(v1 + 272);
          v25 = *(v1 + 280);
          v28 = *(v1 + 240);
          v27 = *(v1 + 248);
          v29 = *(v1 + 208);
          v30 = *(v1 + 184);
          v83 = *(v1 + 176);
          v85 = *(v1 + 152);
          v31 = *(v1 + 136);
          v87 = *(v1 + 128);

          v32 = *(v1 + 56);

          sub_261B01D70();
          swift_allocError();
          *v33 = 11;
          swift_willThrow();

          sub_261AE6A40(v31, &qword_27FEDA108, &unk_261D020C0);

          v34 = *(v1 + 8);

          return v34();
        }

        v84 = *(v1 + 152);
        v86 = v5 + 1;
        v14 = v6;
        v16 = *(v1 + 128);
        v15 = *(v1 + 136);
        v17 = [v8 v14 + 3960];
        v18 = [v8 accountCapabilities];
        v19 = v8;
        v0 = &qword_27FEDA108;
        sub_261AFB668(v15, v16, &qword_27FEDA108, &unk_261D020C0);
        sub_261C7EDC4(v17, v13, v18, 0, 0, v16, v84);

        sub_261AE6A40(v15, &qword_27FEDA108, &unk_261D020C0);
        v2 = v88;
        *(v1 + 88) = v88;
        v21 = v88[2];
        v20 = v88[3];
        if (v21 >= v20 >> 1)
        {
          sub_261B39DB8(v20 > 1, v21 + 1, 1);
          v2 = *(v1 + 88);
        }

        v23 = *(v1 + 144);
        v22 = *(v1 + 152);
        v2[2] = v21 + 1;
        sub_261B837B0(v22, v2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21);
        ++v5;
        v4 = v80;
        v3 = v81;
        v6 = &unk_279AFB000;
        if (v86 == v80)
        {

          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v4 = sub_261D00274();
      if (!v4)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    v36 = sub_261D00274();
    if (!v36)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

LABEL_24:

  v2 = MEMORY[0x277D84F90];
LABEL_25:
  v0 = *(v1 + 280);
  if (v0 >> 62)
  {
    goto LABEL_35;
  }

  v36 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
LABEL_36:
    v46 = *(v1 + 280);

    v45 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

LABEL_27:
  *(v1 + 96) = MEMORY[0x277D84F90];
  v37 = v1 + 96;
  sub_261D003A4();
  if (v36 < 0)
  {
    goto LABEL_79;
  }

  v4 = 0;
  v38 = v0 & 0xC000000000000001;
  v39 = *(v1 + 280) + 32;
  do
  {
    if (v38)
    {
      v40 = MEMORY[0x26671CA10](v4, *(v1 + 280));
    }

    else
    {
      v40 = *(v39 + 8 * v4);
    }

    v41 = v40;
    ++v4;
    v42 = [v40 objectID];

    sub_261D00374();
    v43 = *(*(v1 + 96) + 16);
    sub_261D003B4();
    sub_261D003C4();
    sub_261D00384();
  }

  while (v36 != v4);
  v44 = *(v1 + 280);

  v45 = *(v1 + 96);
LABEL_37:
  v0 = *(v1 + 272);
  sub_261BFAB64(v45, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
  v37 = v1 + 56;
  sub_261CFF904();

  v47 = *(v1 + 264);
  v48 = (*(v1 + 256) - 1) & *(v1 + 256);
LABEL_38:
  if (v48)
  {
    v37 = *(v1 + 248);
    goto LABEL_44;
  }

  while (1)
  {
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    v37 = *(v1 + 248);
    if (v49 >= (((1 << *(v1 + 313)) + 63) >> 6))
    {
      break;
    }

    v48 = *(v37 + 8 * v49 + 64);
    ++v47;
    if (v48)
    {
      v47 = v49;
LABEL_44:
      *(v1 + 256) = v48;
      *(v1 + 264) = v47;
      v50 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v51 = v50 | (v47 << 6);
      v4 = *(*(v37 + 48) + 8 * v51);
      *(v1 + 272) = v4;
      if (v4)
      {
        v0 = *(*(v37 + 56) + 8 * v51);
        v37 = MEMORY[0x277D84F90];
        *(v1 + 64) = MEMORY[0x277D84F90];
        v2 = (v0 & 0xFFFFFFFFFFFFFF8);
        if (v0 >> 62)
        {
          goto LABEL_80;
        }

        for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
        {
          *(v1 + 280) = v37;
          v53 = v4;
          sub_261CFD104();
          if (!i)
          {
LABEL_71:
            v71 = (v1 + 308);
            v72 = *(v1 + 224);
            v74 = *(v1 + 168);
            v73 = *(v1 + 176);
            v75 = *(v1 + 160);
            if (!*(v1 + 312))
            {
              v71 = (v1 + 304);
            }

            v76 = *v71;

            (*(v74 + 104))(v73, v76, v75);
            *(v1 + 288) = sub_261CFFD14();
            v78 = sub_261CFFCF4();

            return MEMORY[0x2822009F8](sub_261BFB454, v78, v77);
          }

          v4 = 0;
          if ((v0 & 0xC000000000000001) != 0)
          {
            break;
          }

LABEL_49:
          if (v4 < v2[2])
          {
            v54 = *(v0 + 8 * v4 + 32);
            goto LABEL_51;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          ;
        }

        while (2)
        {
          v54 = MEMORY[0x26671CA10](v4, v0);
LABEL_51:
          v55 = v54;
          if (__OFADD__(v4, 1))
          {
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          v37 = *(v1 + 112);
          if ((v37 & 0xC000000000000001) != 0)
          {
            if (v37 < 0)
            {
              v56 = *(v1 + 112);
            }

            v57 = sub_261D004A4();
            if (v57)
            {
              *(v1 + 80) = v57;
              sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
              swift_dynamicCast();
              v58 = *(v1 + 72);

              if (!v58)
              {
                goto LABEL_65;
              }

              goto LABEL_61;
            }
          }

          else if (*(v37 + 16))
          {
            v59 = sub_261B37CA4(v54);
            if (v60)
            {
              v61 = *(*(*(v1 + 112) + 56) + 8 * v59);

              if (!v61)
              {
                goto LABEL_65;
              }

LABEL_61:
              MEMORY[0x26671C310]();
              if (*((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v62 = *((*(v1 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_261CFFC84();
              }

              v37 = v1 + 64;
              sub_261CFFCB4();
              *(v1 + 280) = *(v1 + 64);
LABEL_65:
              if (v4 + 1 == i)
              {
                goto LABEL_71;
              }

              ++v4;
              if ((v0 & 0xC000000000000001) == 0)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          break;
        }

        goto LABEL_65;
      }

      goto LABEL_38;
    }
  }

  v63 = *(v1 + 208);
  v65 = *(v1 + 176);
  v64 = *(v1 + 184);
  v66 = *(v1 + 152);
  v68 = *(v1 + 128);
  v67 = *(v1 + 136);

  v69 = *(v1 + 56);

  v70 = *(v1 + 8);

  return v70(v69);
}

uint64_t sub_261BFBDB8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_261BFBE00(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_261BFBE0C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_261BFBE18(uint64_t a1)
{
  v39 = sub_261CFCDB4();
  v37 = *(v39 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC780, &qword_261D0AC98);
  v44 = *(v42 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC788, &qword_261D0ACA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_261B31558();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v40 = sub_261C0FB04();
  v43 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v38 = sub_261CFCDD4();
  v41 = *(v44 + 8);
  v44 += 8;
  v9 = v42;
  v41(v6, v42);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v10 = v36;
  v11 = v37;
  v12 = v39;
  (*(v37 + 104))(v36, *MEMORY[0x277CB9F50], v39);
  sub_261CFCE54();
  (*(v11 + 8))(v10, v12);
  sub_261CFCE74();
  sub_261CFCE94();
  v37 = sub_261CFCDD4();
  v13 = v9;
  v14 = v41;
  v41(v6, v13);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v36 = sub_261CFCDD4();
  v14(v6, v42);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v35 = sub_261CFCDD4();
  v15 = v42;
  v41(v6, v42);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v34 = sub_261CFCDD4();
  v16 = v41;
  v41(v6, v15);
  sub_261CFCE44();
  v33 = sub_261CFCDD4();
  v16(v6, v15);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v39 = sub_261C0FD5C();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v32 = sub_261CFCDD4();
  v18 = v41;
  v17 = v42;
  v41(v6, v42);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v31 = sub_261CFCDD4();
  v18(v6, v17);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v30 = sub_261CFCDD4();
  v19 = v41;
  v20 = v42;
  v41(v6, v42);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v19(v6, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC790, &unk_261D0ACA8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_261D01410;
  v23 = v37;
  *(v22 + 32) = v38;
  *(v22 + 40) = v23;
  v24 = v35;
  *(v22 + 48) = v36;
  *(v22 + 56) = v24;
  v25 = v33;
  *(v22 + 64) = v34;
  *(v22 + 72) = v25;
  v26 = v31;
  *(v22 + 80) = v32;
  *(v22 + 88) = v26;
  *(v22 + 96) = v30;
  *(v22 + 104) = v21;
  v27 = sub_261CFCDC4();

  return v27;
}

uint64_t sub_261BFCA94()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FB04();
  sub_261CFCDA4();

  sub_261B31558();
  sub_261CFCE24();
  v5 = sub_261CFCE14();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  sub_261C0FD5C();
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01400;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_261CFCE04();

  return v9;
}

uint64_t sub_261BFCC84()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  v6 = sub_261CFCDF4();
  v7 = sub_261CFCDF4();
  v8 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D0A040;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_261CFCDE4();

  return v10;
}

uint64_t sub_261BFCE08(uint64_t a1)
{
  v2 = sub_261CFCDB4();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC760, &qword_261D0ABF8);
  v64 = *(v62 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC768, &qword_261D0AC00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261B31408();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v11 = sub_261C0FB04();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v58 = sub_261C0FB88();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v57 = sub_261CFCDD4();
  v63 = *(v64 + 8);
  v64 += 8;
  v12 = v62;
  v63(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FC84();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v59 = v10;
  v56 = sub_261CFCDD4();
  v63(v7, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v60 = v11;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v55 = sub_261CFCDD4();
  v63(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v61 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v58 = sub_261C0F51C();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v54 = sub_261CFCDD4();
  v13 = v62;
  v14 = v63;
  v63(v7, v62);
  sub_261CFCE44();
  v53 = sub_261CFCDD4();
  v14(v7, v13);
  sub_261CFCE84();
  sub_261CFCE74();
  v16 = v50;
  v15 = v51;
  v17 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CB9F50], v52);
  sub_261CFCE54();
  (*(v15 + 8))(v16, v17);
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v52 = sub_261CFCDD4();
  v18 = v63;
  v63(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v51 = sub_261CFCDD4();
  v18(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v58 = sub_261C0F5D0();
  sub_261CFCDA4();

  sub_261CFCE64();

  v47 = "Put these ingredients on my ";
  sub_261CFCE74();
  sub_261CFCE94();
  v50 = sub_261CFCDD4();
  v63(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v49 = sub_261CFCDD4();
  v19 = v62;
  v63(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v48 = sub_261CFCDD4();
  v20 = v19;
  v21 = v63;
  v63(v7, v20);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v47 = sub_261CFCDD4();
  v22 = v62;
  v21(v7, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v58 = sub_261C0F684();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v46 = sub_261CFCDD4();
  v23 = v63;
  v63(v7, v22);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v45 = sub_261CFCDD4();
  v24 = v7;
  v25 = v7;
  v26 = v62;
  v23(v24, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v44 = sub_261CFCDD4();
  v27 = v63;
  v63(v25, v26);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v28 = v25;
  sub_261CFCE94();
  v43 = sub_261CFCDD4();
  v29 = v25;
  v30 = v62;
  v27(v29, v62);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v31 = sub_261CFCDD4();
  v63(v28, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC778, &qword_261D0AC38);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_261D0A050;
  v33 = v56;
  *(v32 + 32) = v57;
  *(v32 + 40) = v33;
  v34 = v54;
  *(v32 + 48) = v55;
  *(v32 + 56) = v34;
  v35 = v52;
  *(v32 + 64) = v53;
  *(v32 + 72) = v35;
  v36 = v50;
  *(v32 + 80) = v51;
  *(v32 + 88) = v36;
  v37 = v48;
  *(v32 + 96) = v49;
  *(v32 + 104) = v37;
  v38 = v46;
  *(v32 + 112) = v47;
  *(v32 + 120) = v38;
  v39 = v44;
  *(v32 + 128) = v45;
  *(v32 + 136) = v39;
  *(v32 + 144) = v43;
  *(v32 + 152) = v31;
  v40 = sub_261CFCDC4();

  return v40;
}

uint64_t sub_261BFE2E8()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FB04();
  sub_261CFCDA4();

  sub_261B31408();
  sub_261CFCE24();
  v14 = sub_261CFCE14();
  v5 = *(v1 + 8);
  v5(v4, v0);
  swift_getKeyPath();
  sub_261C0FB88();
  sub_261CFCDA4();

  sub_261CFCE24();
  v6 = sub_261CFCE14();
  v5(v4, v0);
  swift_getKeyPath();
  sub_261C0F51C();
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v5(v4, v0);
  swift_getKeyPath();
  sub_261C0F5D0();
  sub_261CFCDA4();

  sub_261CFCE24();
  v8 = sub_261CFCE14();
  v5(v4, v0);
  swift_getKeyPath();
  sub_261C0F684();
  sub_261CFCDA4();

  sub_261CFCE24();
  v9 = sub_261CFCE14();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261D06F90;
  *(v10 + 32) = v14;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = sub_261CFCE04();

  return v11;
}

uint64_t sub_261BFE64C()
{
  v15 = sub_261CFCDF4();
  v14 = sub_261CFCDF4();
  v13 = sub_261CFCDF4();
  v12 = sub_261CFCDF4();
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  v6 = sub_261CFCDF4();
  v7 = sub_261CFCDF4();
  v8 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_261D0A060;
  *(v9 + 32) = v15;
  *(v9 + 40) = v14;
  *(v9 + 48) = v13;
  *(v9 + 56) = v12;
  *(v9 + 64) = v0;
  *(v9 + 72) = v1;
  *(v9 + 80) = v2;
  *(v9 + 88) = v3;
  *(v9 + 96) = v4;
  *(v9 + 104) = v5;
  *(v9 + 112) = v6;
  *(v9 + 120) = v7;
  *(v9 + 128) = v8;
  v10 = sub_261CFCDE4();

  return v10;
}

uint64_t sub_261BFE8E0()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261BFE9B0()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D05320;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_261CFCDE4();

  return v7;
}

uint64_t sub_261BFEAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC748, &qword_261D0AB10);
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC750, &qword_261D0AB18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_261B0A88C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v28 = sub_261C0FB04();
  sub_261CFCDA4();

  sub_261CFCE64();

  v22 = "Add a new section called ";
  sub_261CFCE74();
  sub_261CFCE94();
  v8 = sub_261CFCDD4();
  v9 = *(v29 + 8);
  v29 += 8;
  v25 = v8;
  v26 = v9;
  v21 = v2;
  v9(v5, v2);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v27 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  v23 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v10 = v2;
  v11 = v26;
  v26(v5, v10);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v22 = sub_261CFCDD4();
  v12 = v21;
  v11(v5, v21);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v28 = sub_261CFCDD4();
  v13 = v26;
  v26(v5, v12);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v14 = sub_261CFCDD4();
  v13(v5, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC758, &qword_261D0AB20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_261D06F90;
  v16 = v24;
  *(v15 + 32) = v25;
  *(v15 + 40) = v16;
  v17 = v28;
  *(v15 + 48) = v22;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_261CFCDC4();

  return v18;
}

uint64_t sub_261BFF194()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FB04();
  sub_261CFCDA4();

  sub_261B0A88C();
  sub_261CFCE24();
  v5 = sub_261CFCE14();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01400;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_261CFCE04();

  return v9;
}

uint64_t sub_261BFF3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC730, &qword_261D0AAA8);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC738, &qword_261D0AAB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_261B314B0();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261C0FB04();
  v18 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v9 = v22;
  v19 = *(v23 + 8);
  v23 += 8;
  v19(v6, v22);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v20 = sub_261CFCDD4();
  v10 = v19;
  v19(v6, v9);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v11 = sub_261CFCDD4();
  v12 = v22;
  v10(v6, v22);
  sub_261CFCE44();
  v13 = sub_261CFCDD4();
  v10(v6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC740, &qword_261D0AAB8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_261D01430;
  v15 = v20;
  *(v14 + 32) = v21;
  *(v14 + 40) = v15;
  *(v14 + 48) = v11;
  *(v14 + 56) = v13;
  v16 = sub_261CFCDC4();

  return v16;
}

uint64_t sub_261BFF8A8()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261BFF980(uint64_t a1)
{
  v32 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC718, &qword_261D0AA60);
  v31 = *(v29 - 8);
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = v22 - v2;
  v26 = sub_261CFCDB4();
  v3 = *(v26 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v26);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC720, &qword_261D0AA68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_261B3130C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v30 = sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  LODWORD(v25) = *MEMORY[0x277CB9F50];
  v24 = v3[13];
  v9 = v26;
  v24(v6);
  sub_261CFCE54();
  v10 = v3[1];
  v22[1] = v3 + 1;
  v23 = v10;
  v10(v6, v9);
  sub_261CFCE74();
  v11 = v28;
  sub_261CFCE94();
  v27 = sub_261CFCDD4();
  v12 = *(v31 + 8);
  v31 += 8;
  v22[0] = v12;
  v13 = v11;
  v14 = v29;
  v12(v13, v29);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  (v24)(v6, v25, v9);
  sub_261CFCE54();
  v23(v6, v9);
  sub_261CFCE74();
  v15 = v28;
  sub_261CFCE94();
  v26 = sub_261CFCDD4();
  v16 = v22[0];
  (v22[0])(v15, v14);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v25 = sub_261CFCDD4();
  v16(v15, v14);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  swift_getKeyPath();
  sub_261BD1DA8();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v17 = sub_261CFCDD4();
  v16(v15, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC728, &qword_261D0AA70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_261D01430;
  v19 = v26;
  *(v18 + 32) = v27;
  *(v18 + 40) = v19;
  *(v18 + 48) = v25;
  *(v18 + 56) = v17;
  v20 = sub_261CFCDC4();

  return v20;
}

uint64_t sub_261C000A0()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D224D0, type metadata accessor for SectionEntity);
  sub_261CFCDA4();

  sub_261B3130C();
  sub_261CFCE24();
  v5 = sub_261CFCE14();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  sub_261BD1DA8();
  sub_261CFCDA4();

  sub_261CFCE24();
  v7 = sub_261CFCE14();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D01400;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_261CFCE04();

  return v9;
}

uint64_t sub_261C002C0()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261D01420;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_261CFCDE4();

  return v4;
}

uint64_t sub_261C0038C(uint64_t a1)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC700, &qword_261D0A9F0);
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - v4;
  v6 = sub_261CFCDB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC708, &qword_261D0A9F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_261B31750();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v29 = sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  (*(v7 + 104))(v10, *MEMORY[0x277CB9F50], v6);
  sub_261CFCE54();
  (*(v7 + 8))(v10, v6);
  sub_261CFCE74();
  sub_261CFCE94();
  v13 = sub_261CFCDD4();
  v14 = v30;
  v15 = *(v31 + 8);
  v26 = v13;
  v27 = v15;
  v31 += 8;
  v15(v5, v30);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v25 = sub_261CFCDD4();
  v16 = v14;
  v17 = v27;
  v27(v5, v16);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v24 = sub_261CFCDD4();
  v18 = v30;
  v17(v5, v30);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v19 = sub_261CFCDD4();
  v27(v5, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC710, &qword_261D0AA00);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_261D01430;
  v21 = v25;
  *(v20 + 32) = v26;
  *(v20 + 40) = v21;
  *(v20 + 48) = v24;
  *(v20 + 56) = v19;
  v22 = sub_261CFCDC4();

  return v22;
}

uint64_t sub_261C009CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_261CFCE34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22790, type metadata accessor for ListEntity);
  sub_261CFCDA4();

  a3(v9);
  sub_261CFCE24();
  v10 = sub_261CFCE14();
  (*(v5 + 8))(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_261D03450;
  *(v11 + 32) = v10;
  v12 = sub_261CFCE04();

  return v12;
}

uint64_t sub_261C00B74()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  v4 = sub_261CFCDF4();
  v5 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D05320;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_261CFCDE4();

  return v7;
}

uint64_t sub_261C00C8C(uint64_t a1)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6E8, &qword_261D0A9B0);
  v20 = *(v1 - 8);
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6F0, &qword_261D0A9B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_261B3199C();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v14[1] = sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity);
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v17 = sub_261CFCDD4();
  v19 = *(v20 + 8);
  v20 += 8;
  v14[0] = v1;
  v19(v4, v1);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v16 = sub_261CFCDD4();
  v19(v4, v1);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v15 = sub_261CFCDD4();
  v7 = v14[0];
  v8 = v19;
  v19(v4, v14[0]);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v9 = sub_261CFCDD4();
  v8(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6F8, &qword_261D0A9C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261D01430;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v15;
  *(v10 + 56) = v9;
  v12 = sub_261CFCDC4();

  return v12;
}

uint64_t sub_261C011DC()
{
  v0 = sub_261CFCE34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_261C0FC3C(&qword_280D22350, type metadata accessor for ReminderEntity);
  sub_261CFCDA4();

  sub_261B3199C();
  sub_261CFCE24();
  v5 = sub_261CFCE14();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC4A0, &qword_261D0A1D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_261D03450;
  *(v6 + 32) = v5;
  v7 = sub_261CFCE04();

  return v7;
}

uint64_t sub_261C0137C()
{
  v0 = sub_261CFCDF4();
  v1 = sub_261CFCDF4();
  v2 = sub_261CFCDF4();
  v3 = sub_261CFCDF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC480, &qword_261D0A100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_261D01430;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_261CFCDE4();

  return v5;
}

uint64_t sub_261C01478(uint64_t a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6D0, &qword_261D0A970);
  v40 = *(v38 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v4 = &v27 - v3;
  v36 = sub_261CFCDB4();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6D8, &qword_261D0A978);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_261B317A4();
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v39 = sub_261C0F7BC();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  LODWORD(v33) = *MEMORY[0x277CB9F50];
  v11 = v5;
  v12 = *(v5 + 104);
  v31 = v5 + 104;
  v32 = v12;
  v28 = v8;
  v13 = v36;
  v12(v8);
  sub_261CFCE54();
  v14 = *(v11 + 8);
  v29 = v11 + 8;
  v30 = v14;
  v14(v8, v13);
  sub_261CFCE74();
  sub_261CFCE94();
  v35 = sub_261CFCDD4();
  v15 = *(v40 + 8);
  v40 += 8;
  v37 = v15;
  v16 = v38;
  v15(v4, v38);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  v27 = a1;
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v34 = sub_261CFCDD4();
  v37(v4, v16);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  v17 = v28;
  v18 = v36;
  v32(v28, v33, v36);
  sub_261CFCE54();
  v30(v17, v18);
  sub_261CFCE74();
  sub_261CFCE94();
  v36 = sub_261CFCDD4();
  v19 = v37;
  v20 = v38;
  v37(v4, v38);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v33 = sub_261CFCDD4();
  v19(v4, v20);
  sub_261CFCE84();
  sub_261CFCE74();
  swift_getKeyPath();
  sub_261CFCDA4();

  sub_261CFCE64();

  sub_261CFCE74();
  sub_261CFCE94();
  v21 = sub_261CFCDD4();
  v19(v4, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC6E0, &qword_261D0A980);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_261D06F90;
  v23 = v34;
  *(v22 + 32) = v35;
  *(v22 + 40) = v23;
  v24 = v33;
  *(v22 + 48) = v36;
  *(v22 + 56) = v24;
  *(v22 + 64) = v21;
  v25 = sub_261CFCDC4();

  return v25;
}