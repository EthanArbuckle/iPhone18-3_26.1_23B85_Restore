uint64_t sub_2663AAA8C(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, double a9, double a10, char a11, uint64_t *a12, char *a13, uint64_t a14)
{
  v121 = a8;
  v122 = a6;
  v120 = a4;
  v117 = a3;
  v112 = sub_2664E0038();
  v114 = *(v112 - 8);
  v20 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2664E00B8();
  v111 = *(v113 - 8);
  v22 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  v104 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2664DE438();
  v119 = *(v116 - 8);
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = v25;
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v108 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v102 - v31;
  v33 = sub_2664DE4A8();
  v109 = *(v33 - 8);
  v34 = *(v109 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a5;
  if (a1)
  {
    v37 = a2;
    v38 = a2[27];
    v39 = v37[28];
    __swift_project_boxed_opaque_existential_1(v37 + 24, v38);
    v40 = *(v39 + 16);
    v41 = v38;
    a2 = v37;
    v42 = v39;
    a5 = v118;
    v40(v41, v42);
    if (v43)
    {
      sub_2664DE448();

      v44 = v109;
      if ((*(v109 + 48))(v32, 1, v33) == 1)
      {
        sub_2662A9238(v32, &qword_280073C60, &unk_2664EE400);
      }

      else
      {
        v45 = (*(v44 + 32))(v36, v32, v33);
        v107 = &v102;
        v46 = v37[23];
        v105 = v37[22];
        v106 = *(v105 - 1);
        v47 = *(v106 + 64);
        MEMORY[0x28223BE20](v45);
        v103 = &v102 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (*v117 == 1 || (v50 = v117[1], v49 = v117[2], v52 = v117[3], v51 = v117[4], !v50))
        {
          sub_2663142F4(0);
          v50 = MEMORY[0x277D84FA0];
          v51 = MEMORY[0x277D84F90];
          v52 = MEMORY[0x277D84F90];
          v54 = MEMORY[0x277D84F90];
        }

        else
        {
          v53 = v117[1];
          v54 = v117[2];
        }

        v123[0] = v50;
        v123[1] = v54;
        v123[2] = v52;
        v123[3] = v51;
        v55 = v103;
        v56 = v105;
        (*(v46 + 8))(v123, v105, v46);
        v57 = v108;
        (*(v46 + 32))(v36, v56, v46);
        sub_2662A9238(v57, &qword_280073C60, &unk_2664EE400);
        (*(v106 + 8))(v55, v56);
        (*(v109 + 8))(v36, v33);
        a2 = v37;
        a5 = v118;
      }
    }
  }

  sub_2664DE428();
  sub_2664DE388();
  v59 = v58;
  v60 = v116;
  v103 = *(v119 + 8);
  (v103)(v26, v116);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v109 = a14;
  v108 = a13;
  v107 = a12;
  v102 = qword_280F90D38;
  v61 = swift_allocObject();
  v62 = a7[9];
  *(v61 + 168) = a7[8];
  *(v61 + 184) = v62;
  v63 = a7[11];
  *(v61 + 200) = a7[10];
  *(v61 + 216) = v63;
  v64 = a7[5];
  *(v61 + 104) = a7[4];
  *(v61 + 120) = v64;
  v65 = a7[7];
  *(v61 + 136) = a7[6];
  *(v61 + 152) = v65;
  v66 = a7[1];
  *(v61 + 40) = *a7;
  *(v61 + 56) = v66;
  v67 = a7[3];
  *(v61 + 72) = a7[2];
  *(v61 + 16) = v120;
  *(v61 + 24) = a5;
  LODWORD(v106) = a11 & 1;
  *(v61 + 32) = a11 & 1;
  *(v61 + 33) = 0;
  *(v61 + 35) = 0;
  *(v61 + 88) = v67;
  *(v61 + 232) = v121;
  *(v61 + 240) = v59;
  *(v61 + 248) = a2;
  aBlock[4] = sub_2663BCF48;
  aBlock[5] = v61;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_176;
  v68 = _Block_copy(aBlock);

  sub_2663B95AC(a7, v123);

  v69 = v104;
  sub_2664E0068();
  v123[0] = MEMORY[0x277D84F90];
  sub_2662A6120();
  v105 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v70 = v110;
  v71 = v112;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v69, v70, v68);
  _Block_release(v68);
  (*(v114 + 8))(v70, v71);
  (*(v111 + 8))(v69, v113);

  sub_2664DE428();
  sub_2664DE388();
  v73 = v72;
  (v103)(v26, v60);
  v74 = v60;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v75 = qword_280F90B40;
  v76 = unk_280F90B48;
  v77 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v78 = *(v75 - 8);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  v81 = &v102 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v78 + 16))(v81);
  v82 = (*(v76 + 16))(v75, v76);
  v113 = v82;
  v84 = v83;
  (*(v78 + 8))(v81, v75);
  v114 = type metadata accessor for AppSelectionContext();
  v85 = v119;
  (*(v119 + 16))(v26, v122, v60);
  v86 = (*(v85 + 80) + 360) & ~*(v85 + 80);
  v87 = swift_allocObject();
  v88 = a7[9];
  *(v87 + 184) = a7[8];
  *(v87 + 200) = v88;
  v89 = a7[11];
  *(v87 + 216) = a7[10];
  *(v87 + 232) = v89;
  v90 = a7[5];
  *(v87 + 120) = a7[4];
  *(v87 + 136) = v90;
  v91 = a7[7];
  *(v87 + 152) = a7[6];
  *(v87 + 168) = v91;
  v92 = a7[1];
  *(v87 + 56) = *a7;
  *(v87 + 72) = v92;
  v93 = a7[3];
  *(v87 + 88) = a7[2];
  *(v87 + 16) = v82;
  *(v87 + 24) = v84;
  v94 = v118;
  *(v87 + 32) = v120;
  *(v87 + 40) = v94;
  *(v87 + 48) = v105;
  *(v87 + 104) = v93;
  v95 = v108;
  *(v87 + 248) = v107;
  *(v87 + 256) = v95;
  *(v87 + 264) = a9;
  *(v87 + 272) = a10;
  v96 = v117;
  v97 = *(v117 + 1);
  *(v87 + 280) = *v117;
  *(v87 + 296) = v97;
  *(v87 + 312) = *(v96 + 32);
  *(v87 + 328) = v106;
  *(v87 + 336) = v121;
  *(v87 + 344) = v73;
  v98 = v74;
  v99 = v109;
  *(v87 + 352) = v109;
  (*(v85 + 32))(v87 + v86, v26, v98);

  sub_2663B95AC(a7, v123);

  sub_2662A7224(v96, v123, &qword_2800732F8, &qword_2664EA230);
  v100 = v99;
  static AppSelectionContext.shared(refId:completion:)(v113, v84, sub_2663BCF9C, v87);
}

uint64_t sub_2663AB678(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, _OWORD *a9, void *a10, void (*a11)(uint64_t *), uint64_t a12)
{
  v320 = a8;
  v329 = a1;
  v330 = *&a4;
  v336 = a2;
  v325 = a12;
  v326 = a11;
  v324 = a10;
  v323 = a9;
  v15 = sub_2664E0038();
  v315 = *(v15 - 8);
  v316 = v15;
  v16 = *(v315 + 64);
  MEMORY[0x28223BE20](v15);
  v313 = &v309 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664E00B8();
  v317 = *(v18 - 8);
  v318 = v18;
  v19 = *(v317 + 64);
  MEMORY[0x28223BE20](v18);
  v314 = &v309 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2664DFE38();
  v331 = *(v21 - 1);
  v332 = v21;
  v22 = *(v331 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v311 = &v309 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v310 = &v309 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v309 = &v309 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v309 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v309 - v32;
  v34 = sub_2664DE438();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v327 = &v309 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v309 - v39;
  v334 = a6;
  v335 = a5;
  v322 = a7;
  v41 = v336;
  LODWORD(a7) = sub_2663B67BC(a6, a7);
  v333 = v35;
  v43 = *(v35 + 16);
  v44 = v320;
  v337 = v34;
  v319 = v43;
  v320 = (v35 + 16);
  v43(v40, v44, v34);
  v338 = v40;
  v328 = a3;
  if (v41)
  {
    LODWORD(v312) = a7;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = *&a3;
    v46 = v332;
    v47 = __swift_project_value_buffer(v332, qword_280F914F0);
    swift_beginAccess();
    v48 = v331;
    v49 = *(v331 + 16);
    v49(v31, v47, v46);

    v50 = sub_2664DFE18();
    v51 = sub_2664E06E8();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v322;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v339 = v55;
      *v54 = 136446978;
      if (qword_280F8F6B0 != -1)
      {
        swift_once();
      }

      *(v54 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v339);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_2662A320C(v329, v336, &v339);
      *(v54 + 22) = 2048;
      *(v54 + 24) = v328;
      *(v54 + 32) = 2048;
      *(v54 + 34) = v330;
      _os_log_impl(&dword_26629C000, v50, v51, "PlayMediaAppSelector#select %{public}s prediction completed with selected bundle: %{public}s absoluteConfidence:%f confidenceOddsRatio: %f", v54, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);

      v46 = v332;
      v56 = *(v331 + 8);
      (v56)(v31, v332);
      v57 = v335;
      v58 = v327;
    }

    else
    {

      v56 = *(v48 + 8);
      (v56)(v31, v46);
      v58 = v327;
      v57 = v335;
    }

    v120 = *(v53 + 16);
    v121 = v337;
    if (v120 >= v45)
    {
      v309 = v56;
      v174 = v311;
      v49(v311, v47, v46);
      sub_2663B95AC(v53, &v339);
      v175 = sub_2664DFE18();
      v176 = v46;
      v177 = sub_2664E06E8();
      sub_2663BC57C(v53);
      if (os_log_type_enabled(v175, v177))
      {
        v178 = v57;
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v339 = v180;
        *v179 = 136446466;
        v181 = v312;
        if (qword_280F8F6B0 != -1)
        {
          swift_once();
        }

        *(v179 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v339);
        *(v179 + 12) = 2048;
        *(v179 + 14) = v120;
        _os_log_impl(&dword_26629C000, v175, v177, "PlayMediaAppSelector#select %{public}s prediction didn't have required minimum absoluteConfidence: %f", v179, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v180);
        MEMORY[0x266784AD0](v180, -1, -1);
        MEMORY[0x266784AD0](v179, -1, -1);

        (v309)(v311, v332);
        v57 = v178;
        v58 = v327;
      }

      else
      {

        (v309)(v174, v176);
        v181 = v312;
      }

      sub_2664DE428();
      sub_2664DE388();
      v192 = v191;
      v193 = v337;
      v331 = *(v333 + 8);
      v332 = (v333 + 8);
      (v331)(v58, v337);
      v194 = v334;
      if (qword_280F90D30 != -1)
      {
        swift_once();
      }

      v312 = qword_280F90D38;
      v195 = swift_allocObject();
      v196 = *(v53 + 144);
      *(v195 + 168) = *(v53 + 128);
      *(v195 + 184) = v196;
      v197 = *(v53 + 176);
      *(v195 + 200) = *(v53 + 160);
      *(v195 + 216) = v197;
      v198 = *(v53 + 80);
      *(v195 + 104) = *(v53 + 64);
      *(v195 + 120) = v198;
      v199 = *(v53 + 112);
      *(v195 + 136) = *(v53 + 96);
      *(v195 + 152) = v199;
      v200 = *(v53 + 16);
      *(v195 + 40) = *v53;
      *(v195 + 56) = v200;
      v201 = *(v53 + 48);
      *(v195 + 72) = *(v53 + 32);
      *(v195 + 16) = 0;
      *(v195 + 24) = 0;
      LODWORD(v327) = v181 & 1;
      *(v195 + 32) = v181 & 1;
      *(v195 + 33) = 0;
      *(v195 + 35) = 1;
      *(v195 + 88) = v201;
      *(v195 + 232) = v194;
      *(v195 + 240) = v192;
      *(v195 + 248) = v57;
      v346 = sub_2663BCF48;
      v347 = v195;
      aBlock = MEMORY[0x277D85DD0];
      v343 = 1107296256;
      v344 = sub_2662A3F90;
      v345 = &block_descriptor_216;
      v202 = _Block_copy(&aBlock);
      sub_2663B95AC(v53, &v339);

      v203 = v314;
      sub_2664E0068();
      v339 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v204 = v313;
      v205 = v316;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v203, v204, v202);
      _Block_release(v202);
      (*(v315 + 8))(v204, v205);
      (*(v317 + 8))(v203, v318);

      sub_2664DE428();
      sub_2664DE388();
      v207 = v206;
      (v331)(v58, v193);
      if (qword_280F90B20 == -1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v122 = *(v53 + 8);
      if (v122 < v330)
      {
        if (v312)
        {
          v123 = *(v53 + 96);
          if (v123 >= v330)
          {
            v254 = v56;
            v255 = v309;
            v49(v309, v47, v46);
            v256 = v255;
            sub_2663B95AC(v53, &v339);
            v257 = sub_2664DFE18();
            v258 = v46;
            v259 = sub_2664E06E8();
            sub_2663BC57C(v53);
            if (os_log_type_enabled(v257, v259))
            {
              v260 = v57;
              v261 = swift_slowAlloc();
              v262 = swift_slowAlloc();
              v339 = v262;
              *v261 = 136446466;
              if (qword_280F8F6B0 != -1)
              {
                swift_once();
              }

              *(v261 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v339);
              *(v261 + 12) = 2048;
              *(v261 + 14) = v123;
              _os_log_impl(&dword_26629C000, v257, v259, "PlayMediaAppSelector#select %{public}s prediction didn't have required minimum confidenceOddsRatio for a new user: %f.", v261, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v262);
              MEMORY[0x266784AD0](v262, -1, -1);
              MEMORY[0x266784AD0](v261, -1, -1);

              v254(v256, v332);
              v263 = v338;
              v57 = v260;
            }

            else
            {

              v254(v256, v258);
              v263 = v338;
            }

            sub_2664DE428();
            sub_2664DE388();
            v265 = v264;
            v331 = *(v333 + 8);
            v332 = (v333 + 8);
            (v331)(v58, v337);
            v266 = v334;
            v267 = v58;
            if (qword_280F90D30 != -1)
            {
              swift_once();
            }

            v327 = qword_280F90D38;
            v268 = swift_allocObject();
            *(v268 + 32) = 65537;
            v269 = *(v53 + 144);
            *(v268 + 168) = *(v53 + 128);
            *(v268 + 184) = v269;
            v270 = *(v53 + 176);
            *(v268 + 200) = *(v53 + 160);
            *(v268 + 216) = v270;
            v271 = *(v53 + 80);
            *(v268 + 104) = *(v53 + 64);
            *(v268 + 120) = v271;
            v272 = *(v53 + 112);
            *(v268 + 136) = *(v53 + 96);
            *(v268 + 152) = v272;
            v273 = *(v53 + 16);
            *(v268 + 40) = *v53;
            *(v268 + 56) = v273;
            v274 = *(v53 + 48);
            *(v268 + 72) = *(v53 + 32);
            *(v268 + 16) = 0;
            *(v268 + 24) = 0;
            *(v268 + 88) = v274;
            *(v268 + 232) = v266;
            *(v268 + 240) = v265;
            *(v268 + 248) = v57;
            v346 = sub_2663BCF48;
            v347 = v268;
            aBlock = MEMORY[0x277D85DD0];
            v343 = 1107296256;
            v344 = sub_2662A3F90;
            v345 = &block_descriptor_249;
            v275 = _Block_copy(&aBlock);
            sub_2663B95AC(v53, &v339);

            v276 = v314;
            sub_2664E0068();
            v339 = MEMORY[0x277D84F90];
            sub_2662A6120();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
            sub_2662A5AC8();
            v277 = v313;
            v278 = v316;
            sub_2664E0A08();
            MEMORY[0x266783800](0, v276, v277, v275);
            _Block_release(v275);
            (*(v315 + 8))(v277, v278);
            (*(v317 + 8))(v276, v318);

            sub_2664DE428();
            sub_2664DE388();
            v280 = v279;
            (v331)(v267, v337);
            if (qword_280F90B20 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            v282 = qword_280F90B40;
            v281 = unk_280F90B48;
            v283 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
            v284 = *(v282 - 8);
            v285 = *(v284 + 64);
            MEMORY[0x28223BE20](v283);
            v287 = &v309 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v284 + 16))(v287);
            v288 = (*(v281 + 16))(v282, v281);
            v318 = v288;
            v290 = v289;
            (*(v284 + 8))(v287, v282);
            v327 = type metadata accessor for AppSelectionContext();
            v319(v267, v263, v337);
            v291 = v333;
            v292 = (*(v333 + 80) + 360) & ~*(v333 + 80);
            v293 = swift_allocObject();
            *(v293 + 16) = v288;
            *(v293 + 24) = v290;
            *(v293 + 32) = 0;
            *(v293 + 40) = 0;
            *(v293 + 48) = v335;
            v294 = *(v53 + 144);
            *(v293 + 184) = *(v53 + 128);
            *(v293 + 200) = v294;
            v295 = *(v53 + 176);
            *(v293 + 216) = *(v53 + 160);
            *(v293 + 232) = v295;
            v296 = *(v53 + 80);
            *(v293 + 120) = *(v53 + 64);
            *(v293 + 136) = v296;
            v297 = *(v53 + 112);
            *(v293 + 152) = *(v53 + 96);
            *(v293 + 168) = v297;
            v298 = *(v53 + 16);
            *(v293 + 56) = *v53;
            *(v293 + 72) = v298;
            v299 = *(v53 + 48);
            *(v293 + 88) = *(v53 + 32);
            *(v293 + 104) = v299;
            v300 = v328;
            v301 = v336;
            *(v293 + 248) = v329;
            *(v293 + 256) = v301;
            v302 = v330;
            *(v293 + 264) = v300;
            *(v293 + 272) = v302;
            v303 = v323;
            v304 = v324;
            v305 = v323[1];
            *(v293 + 280) = *v323;
            *(v293 + 296) = v305;
            *(v293 + 312) = *(v303 + 32);
            *(v293 + 328) = 1;
            *(v293 + 336) = v334;
            *(v293 + 344) = v280;
            *(v293 + 352) = v304;
            v306 = v293 + v292;
            v307 = v337;
            (*(v291 + 32))(v306, v267, v337);

            sub_2663B95AC(v53, &v339);

            sub_2662A7224(v303, &v339, &qword_2800732F8, &qword_2664EA230);

            v308 = v304;
            static AppSelectionContext.shared(refId:completion:)(v318, v290, sub_2663BCF9C, v293);

            v339 = 0;
            v340 = 0;
            v341 = 1537;
            v326(&v339);

            v252 = v338;
            v253 = v307;
            return (v331)(v252, v253);
          }
        }

        sub_2664DE428();
        sub_2664DE388();
        v125 = v124;
        v331 = *(v333 + 8);
        v332 = (v333 + 8);
        (v331)(v58, v121);
        v126 = v58;
        if (qword_280F90D30 != -1)
        {
          swift_once();
        }

        v311 = qword_280F90D38;
        v127 = swift_allocObject();
        v128 = *(v53 + 144);
        *(v127 + 168) = *(v53 + 128);
        *(v127 + 184) = v128;
        v129 = *(v53 + 176);
        *(v127 + 200) = *(v53 + 160);
        *(v127 + 216) = v129;
        v130 = *(v53 + 80);
        *(v127 + 104) = *(v53 + 64);
        *(v127 + 120) = v130;
        v131 = *(v53 + 112);
        *(v127 + 136) = *(v53 + 96);
        *(v127 + 152) = v131;
        v132 = *(v53 + 16);
        *(v127 + 40) = *v53;
        *(v127 + 56) = v132;
        v133 = *(v53 + 48);
        *(v127 + 72) = *(v53 + 32);
        v134 = v336;
        *(v127 + 16) = v329;
        *(v127 + 24) = v134;
        LODWORD(v327) = v312 & 1;
        *(v127 + 32) = v312 & 1;
        *(v127 + 33) = 0;
        *(v127 + 35) = 0;
        *(v127 + 88) = v133;
        *(v127 + 232) = v334;
        *(v127 + 240) = v125;
        *(v127 + 248) = v57;
        v346 = sub_2663BCF48;
        v347 = v127;
        aBlock = MEMORY[0x277D85DD0];
        v343 = 1107296256;
        v344 = sub_2662A3F90;
        v345 = &block_descriptor_238;
        v135 = _Block_copy(&aBlock);

        sub_2663B95AC(v53, &v339);

        v136 = v314;
        sub_2664E0068();
        v339 = MEMORY[0x277D84F90];
        sub_2662A6120();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
        sub_2662A5AC8();
        v137 = v313;
        v138 = v316;
        sub_2664E0A08();
        MEMORY[0x266783800](0, v136, v137, v135);
        _Block_release(v135);
        (*(v315 + 8))(v137, v138);
        (*(v317 + 8))(v136, v318);

        sub_2664DE428();
        sub_2664DE388();
        v140 = v139;
        v141 = v337;
        (v331)(v126, v337);
        v142 = v141;
        v143 = v126;
        if (qword_280F90B20 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v145 = qword_280F90B40;
        v144 = unk_280F90B48;
        v146 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
        v147 = *(v145 - 8);
        v148 = *(v147 + 64);
        MEMORY[0x28223BE20](v146);
        v150 = &v309 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v147 + 16))(v150);
        v151 = (*(v144 + 16))(v145, v144);
        v317 = v151;
        v153 = v152;
        (*(v147 + 8))(v150, v145);
        v318 = type metadata accessor for AppSelectionContext();
        v319(v143, v338, v142);
        v154 = v333;
        v155 = (*(v333 + 80) + 360) & ~*(v333 + 80);
        v156 = swift_allocObject();
        *(v156 + 16) = v151;
        *(v156 + 24) = v153;
        v157 = v329;
        v159 = v335;
        v158 = v336;
        *(v156 + 32) = v329;
        *(v156 + 40) = v158;
        *(v156 + 48) = v159;
        v160 = *(v53 + 144);
        *(v156 + 184) = *(v53 + 128);
        *(v156 + 200) = v160;
        v161 = *(v53 + 176);
        *(v156 + 216) = *(v53 + 160);
        *(v156 + 232) = v161;
        v162 = *(v53 + 80);
        *(v156 + 120) = *(v53 + 64);
        *(v156 + 136) = v162;
        v163 = *(v53 + 112);
        *(v156 + 152) = *(v53 + 96);
        *(v156 + 168) = v163;
        v164 = *(v53 + 16);
        *(v156 + 56) = *v53;
        *(v156 + 72) = v164;
        v165 = *(v53 + 48);
        *(v156 + 88) = *(v53 + 32);
        *(v156 + 104) = v165;
        *(v156 + 248) = v157;
        *(v156 + 256) = v158;
        v166 = v330;
        *(v156 + 264) = v328;
        *(v156 + 272) = v166;
        v167 = v143;
        v168 = v323;
        v169 = v324;
        v170 = v323[1];
        *(v156 + 280) = *v323;
        *(v156 + 296) = v170;
        *(v156 + 312) = *(v168 + 32);
        *(v156 + 328) = v327;
        *(v156 + 336) = v334;
        *(v156 + 344) = v140;
        *(v156 + 352) = v169;
        v171 = v156 + v155;
        v172 = v337;
        (*(v154 + 32))(v171, v167, v337);
        swift_bridgeObjectRetain_n();
        sub_2663B95AC(v53, &v339);

        sub_2662A7224(v168, &v339, &qword_2800732F8, &qword_2664EA230);
        v173 = v169;
        static AppSelectionContext.shared(refId:completion:)(v317, v153, sub_2663BCF9C, v156);

        v339 = v329;
        v340 = v158;
        v341 = 257;

LABEL_45:
        v326(&v339);

        v252 = v338;
        v253 = v172;
        return (v331)(v252, v253);
      }

      v309 = v56;
      v182 = v310;
      v49(v310, v47, v46);
      sub_2663B95AC(v53, &v339);
      v183 = sub_2664DFE18();
      v184 = v46;
      v185 = sub_2664E06E8();
      sub_2663BC57C(v53);
      if (os_log_type_enabled(v183, v185))
      {
        v186 = v58;
        v187 = v57;
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v339 = v189;
        *v188 = 136446466;
        v190 = v312;
        if (qword_280F8F6B0 != -1)
        {
          swift_once();
        }

        *(v188 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v339);
        *(v188 + 12) = 2048;
        *(v188 + 14) = v122;
        _os_log_impl(&dword_26629C000, v183, v185, "PlayMediaAppSelector#select %{public}s prediction didn't have required minimum confidenceOddsRatio: %f", v188, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        MEMORY[0x266784AD0](v189, -1, -1);
        MEMORY[0x266784AD0](v188, -1, -1);

        (v309)(v310, v332);
        v57 = v187;
        v58 = v186;
        v121 = v337;
      }

      else
      {

        (v309)(v182, v184);
        v190 = v312;
      }

      sub_2664DE428();
      sub_2664DE388();
      v209 = v208;
      v331 = *(v333 + 8);
      v332 = (v333 + 8);
      (v331)(v58, v121);
      v210 = v334;
      v211 = v58;
      v193 = v121;
      if (qword_280F90D30 != -1)
      {
        swift_once();
      }

      v312 = qword_280F90D38;
      v212 = swift_allocObject();
      v213 = *(v53 + 144);
      *(v212 + 168) = *(v53 + 128);
      *(v212 + 184) = v213;
      v214 = *(v53 + 176);
      *(v212 + 200) = *(v53 + 160);
      *(v212 + 216) = v214;
      v215 = *(v53 + 80);
      *(v212 + 104) = *(v53 + 64);
      *(v212 + 120) = v215;
      v216 = *(v53 + 112);
      *(v212 + 136) = *(v53 + 96);
      *(v212 + 152) = v216;
      v217 = *(v53 + 16);
      *(v212 + 40) = *v53;
      *(v212 + 56) = v217;
      v218 = *(v53 + 48);
      *(v212 + 72) = *(v53 + 32);
      *(v212 + 16) = 0;
      *(v212 + 24) = 0;
      LODWORD(v327) = v190 & 1;
      *(v212 + 32) = v190 & 1;
      *(v212 + 33) = 256;
      *(v212 + 35) = 0;
      *(v212 + 88) = v218;
      *(v212 + 232) = v210;
      *(v212 + 240) = v209;
      *(v212 + 248) = v57;
      v346 = sub_2663BCF48;
      v347 = v212;
      aBlock = MEMORY[0x277D85DD0];
      v343 = 1107296256;
      v344 = sub_2662A3F90;
      v345 = &block_descriptor_227;
      v219 = _Block_copy(&aBlock);
      sub_2663B95AC(v53, &v339);

      v220 = v314;
      sub_2664E0068();
      v339 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v221 = v313;
      v222 = v316;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v220, v221, v219);
      _Block_release(v219);
      (*(v315 + 8))(v221, v222);
      (*(v317 + 8))(v220, v318);

      sub_2664DE428();
      sub_2664DE388();
      v207 = v223;
      (v331)(v211, v193);
      v58 = v211;
      if (qword_280F90B20 == -1)
      {
LABEL_44:
        swift_beginAccess();
        v225 = qword_280F90B40;
        v224 = unk_280F90B48;
        v226 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
        v227 = *(v225 - 8);
        v228 = *(v227 + 64);
        MEMORY[0x28223BE20](v226);
        v230 = &v309 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v227 + 16))(v230);
        v231 = (*(v224 + 16))(v225, v224);
        v317 = v231;
        v233 = v232;
        (*(v227 + 8))(v230, v225);
        v318 = type metadata accessor for AppSelectionContext();
        v319(v58, v338, v193);
        v234 = v333;
        v235 = (*(v333 + 80) + 360) & ~*(v333 + 80);
        v236 = swift_allocObject();
        *(v236 + 16) = v231;
        *(v236 + 24) = v233;
        *(v236 + 32) = 0;
        *(v236 + 40) = 0;
        *(v236 + 48) = v335;
        v237 = *(v53 + 144);
        *(v236 + 184) = *(v53 + 128);
        *(v236 + 200) = v237;
        v238 = *(v53 + 176);
        *(v236 + 216) = *(v53 + 160);
        *(v236 + 232) = v238;
        v239 = *(v53 + 80);
        *(v236 + 120) = *(v53 + 64);
        *(v236 + 136) = v239;
        v240 = *(v53 + 112);
        *(v236 + 152) = *(v53 + 96);
        *(v236 + 168) = v240;
        v241 = *(v53 + 16);
        *(v236 + 56) = *v53;
        *(v236 + 72) = v241;
        v242 = *(v53 + 48);
        *(v236 + 88) = *(v53 + 32);
        *(v236 + 104) = v242;
        v243 = v328;
        v244 = v336;
        *(v236 + 248) = v329;
        *(v236 + 256) = v244;
        v245 = v330;
        *(v236 + 264) = v243;
        *(v236 + 272) = v245;
        v246 = v58;
        v247 = v323;
        v248 = v324;
        v249 = v323[1];
        *(v236 + 280) = *v323;
        *(v236 + 296) = v249;
        *(v236 + 312) = *(v247 + 32);
        *(v236 + 328) = v327;
        *(v236 + 336) = v334;
        *(v236 + 344) = v207;
        *(v236 + 352) = v248;
        v250 = v236 + v235;
        v172 = v337;
        (*(v234 + 32))(v250, v246, v337);

        sub_2663B95AC(v53, &v339);

        sub_2662A7224(v247, &v339, &qword_2800732F8, &qword_2664EA230);

        v251 = v248;
        static AppSelectionContext.shared(refId:completion:)(v317, v233, sub_2663BCF9C, v236);

        v339 = 0;
        v340 = 0;
        v341 = 1281;
        goto LABEL_45;
      }
    }

    swift_once();
    goto LABEL_44;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v59 = v332;
  v60 = __swift_project_value_buffer(v332, qword_280F914F0);
  swift_beginAccess();
  v61 = v331;
  (*(v331 + 16))(v33, v60, v59);
  v62 = sub_2664DFE18();
  v63 = sub_2664E06D8();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v337;
  v66 = v327;
  v67 = v322;
  if (v64)
  {
    v68 = swift_slowAlloc();
    LODWORD(v312) = a7;
    a7 = v66;
    v69 = v65;
    v70 = v68;
    *v68 = 0;
    _os_log_impl(&dword_26629C000, v62, v63, "PlayMediaAppSelector#select no valid result from prediction", v68, 2u);
    v71 = v70;
    v65 = v69;
    v66 = a7;
    LOBYTE(a7) = v312;
    MEMORY[0x266784AD0](v71, -1, -1);
  }

  (*(v61 + 8))(v33, v332);
  sub_2664DE428();
  sub_2664DE388();
  v73 = v72;
  v74 = *(v333 + 8);
  v336 = v333 + 8;
  v332 = v74;
  v74(v66, v65);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v312 = qword_280F90D38;
  v75 = swift_allocObject();
  v76 = v67[9];
  *(v75 + 168) = v67[8];
  *(v75 + 184) = v76;
  v77 = v67[11];
  *(v75 + 200) = v67[10];
  *(v75 + 216) = v77;
  v78 = v67[5];
  *(v75 + 104) = v67[4];
  *(v75 + 120) = v78;
  v79 = v67[7];
  *(v75 + 136) = v67[6];
  *(v75 + 152) = v79;
  v80 = v67[1];
  *(v75 + 40) = *v67;
  *(v75 + 56) = v80;
  v81 = v67[3];
  *(v75 + 72) = v67[2];
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  LODWORD(v331) = a7 & 1;
  *(v75 + 32) = a7 & 1;
  *(v75 + 33) = 1;
  *(v75 + 35) = 0;
  *(v75 + 88) = v81;
  v82 = v335;
  *(v75 + 232) = v334;
  *(v75 + 240) = v73;
  *(v75 + 248) = v82;
  v346 = sub_2663BCF48;
  v347 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v343 = 1107296256;
  v344 = sub_2662A3F90;
  v345 = &block_descriptor_205;
  v83 = _Block_copy(&aBlock);
  sub_2663B95AC(v67, &v339);

  v84 = v314;
  sub_2664E0068();
  v339 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v85 = v313;
  v86 = v316;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v84, v85, v83);
  _Block_release(v83);
  (*(v315 + 8))(v85, v86);
  (*(v317 + 8))(v84, v318);

  sub_2664DE428();
  sub_2664DE388();
  v88 = v87;
  v89 = v337;
  v332(v66, v337);
  v90 = v89;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v92 = qword_280F90B40;
  v91 = unk_280F90B48;
  v93 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v94 = *(v92 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v309 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v94 + 16))(v97);
  v98 = (*(v91 + 16))(v92, v91);
  v100 = v99;
  (*(v94 + 8))(v97, v92);
  v318 = type metadata accessor for AppSelectionContext();
  v319(v66, v338, v90);
  v101 = v333;
  v102 = (*(v333 + 80) + 360) & ~*(v333 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = v98;
  *(v103 + 24) = v100;
  *(v103 + 32) = 0;
  *(v103 + 40) = 0;
  *(v103 + 48) = v335;
  v104 = v67[9];
  *(v103 + 184) = v67[8];
  *(v103 + 200) = v104;
  v105 = v67[11];
  *(v103 + 216) = v67[10];
  *(v103 + 232) = v105;
  v106 = v67[5];
  *(v103 + 120) = v67[4];
  *(v103 + 136) = v106;
  v107 = v67[7];
  *(v103 + 152) = v67[6];
  *(v103 + 168) = v107;
  v108 = v67[1];
  *(v103 + 56) = *v67;
  *(v103 + 72) = v108;
  v109 = v67[3];
  *(v103 + 88) = v67[2];
  *(v103 + 104) = v109;
  v110 = v328;
  *(v103 + 248) = v329;
  *(v103 + 256) = 0;
  v111 = v330;
  *(v103 + 264) = v110;
  *(v103 + 272) = v111;
  v112 = v66;
  v113 = v323;
  v114 = v324;
  v115 = v323[1];
  *(v103 + 280) = *v323;
  *(v103 + 296) = v115;
  *(v103 + 312) = *(v113 + 32);
  *(v103 + 328) = v331;
  *(v103 + 336) = v334;
  *(v103 + 344) = v88;
  *(v103 + 352) = v114;
  v116 = v103 + v102;
  v117 = v337;
  (*(v101 + 32))(v116, v112, v337);
  sub_2663B95AC(v67, &v339);

  sub_2662A7224(v113, &v339, &qword_2800732F8, &qword_2664EA230);

  v118 = v114;
  static AppSelectionContext.shared(refId:completion:)(v98, v100, sub_2663BCF9C, v103);

  v339 = 0;
  v340 = 0;
  v341 = 1281;
  v326(&v339);

  return (v332)(v338, v117);
}

uint64_t sub_2663ADC5C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a6;
  v48 = a3;
  v43 = a2;
  v44 = a5;
  v45 = a4;
  v46 = a1;
  v42 = *v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v17 = v9[2];
  v17(v15, v16, v8);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v13;
    v21 = v20;
    *v20 = 134217984;
    *(v20 + 4) = 1;
    _os_log_impl(&dword_26629C000, v18, v19, "PlayMediaAppSelector#recordSignals IMPLIED siri caller:%ld...", v20, 0xCu);
    v22 = v21;
    v13 = v41;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v9[1];
  v23(v15, v8);
  qword_280F91CD8 = 1;
  v17(v13, v16, v8);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06B8();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v45;
  if (v26)
  {
    v28 = v13;
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v27 & 1;
    _os_log_impl(&dword_26629C000, v24, v25, "PlayMediaAppSelector#recordSignals IS supported for this intent. force?:%{BOOL}d", v29, 8u);
    v30 = v29;
    v13 = v28;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v23(v13, v8);
  v31 = __swift_project_boxed_opaque_existential_1(v7 + 7, v7[10]);
  v32 = swift_allocObject();
  v33 = v43;
  v34 = v44;
  *(v32 + 16) = v7;
  *(v32 + 24) = v34;
  v35 = v46;
  *(v32 + 32) = v47;
  *(v32 + 40) = v35;
  v36 = v48;
  *(v32 + 48) = v33;
  *(v32 + 56) = v36;
  *(v32 + 64) = v27 & 1;
  *(v32 + 72) = v42;
  v37 = *v31;

  v38 = v35;

  sub_26630F97C(0, 1, v37, sub_2663B9014, v32);
}

uint64_t sub_2663ADFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8, unint64_t a9)
{
  v44 = a8;
  v46 = a6;
  v47 = a7;
  v45 = a5;
  v40 = a3;
  v41 = a4;
  v48 = sub_2664DFE08();
  v43 = *(v48 - 8);
  v10 = *(v43 + 64);
  v11 = MEMORY[0x28223BE20](v48);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2662F5880(qword_280F91CD8, a1);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = a9;
  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136446466;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v50);
    *(v22 + 12) = 1024;
    *(v22 + 14) = v49;
    _os_log_impl(&dword_26629C000, v20, v21, "PlayMediaAppSelector#recordSignals %{public}s collectMegaModel %{BOOL}d", v22, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v24 = v49;
  v38 = v49;
  v25 = qword_280F91D48;
  sub_2664DFDE8();
  v26 = v43;
  v27 = v39;
  v28 = v48;
  (*(v43 + 16))(v39, v13, v48);
  v29 = (*(v26 + 80) + 33) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = "playMediaAppSelectorRecordSignals";
  *(v30 + 24) = 33;
  *(v30 + 32) = 2;
  (*(v26 + 32))(v30 + v29, v27, v28);
  v31 = (v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D83B88];
  *(v33 + 16) = xmmword_2664E36F0;
  v35 = MEMORY[0x277D83C10];
  *(v33 + 56) = v34;
  *(v33 + 64) = v35;
  *(v33 + 32) = v38;
  sub_2664DFDC8();

  v36 = swift_allocObject();
  *(v36 + 16) = sub_2663BC138;
  *(v36 + 24) = v30;

  sub_2663AE53C(sub_2663BC1E0, v36, v45, v46, v47, v24, v44 & 1, v42);

  return (*(v26 + 8))(v13, v28);
}

uint64_t sub_2663AE53C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, int a6, int a7, unint64_t a8)
{
  v170 = a8;
  LODWORD(v169) = a7;
  LODWORD(v167) = a6;
  v165.value._object = a5;
  v165.value._countAndFlagsBits = a4;
  v174 = a2;
  v172 = a1;
  v9 = sub_2664E0038();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664E00B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v173 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DE438();
  v179 = *(v18 - 8);
  v180 = v18;
  v19 = *(v179 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v176 = v21;
  v177 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v178 = &v143 - v22;
  v23 = sub_2664DFE38();
  v181 = *(v23 - 8);
  v24 = *(v181 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v171 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v168 = &v143 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v166 = &v143 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v143 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v143 - v34;
  v36 = [a3 backingStore];
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    v175 = v15;
    [v37 copy];

    sub_2664E09E8();
    swift_unknownObjectRelease();
    sub_2662C1744(0, &qword_280072510, 0x277CD4370);
    if (swift_dynamicCast())
    {
      v163 = v23;
      v156 = v190;
      v38 = [a3 backingStore];
      objc_opt_self();
      v39 = swift_dynamicCastObjCClass();
      v40 = v181;
      if (v39)
      {
        v41 = [v39 intentMetadata];

        v155 = [v41 userUtterance];
        v38 = v41;
      }

      else
      {
        v155 = 0;
      }

      v164 = v10;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v48 = v163;
      v49 = __swift_project_value_buffer(v163, qword_280F914F0);
      swift_beginAccess();
      v50 = *(v40 + 16);
      v162 = v49;
      v161 = v40 + 16;
      v160 = v50;
      v50(v33, v49, v48);
      v51 = a3;
      v52 = sub_2664DFE18();
      v53 = sub_2664E06E8();
      v154 = v51;

      v54 = os_log_type_enabled(v52, v53);
      v55 = &selRef_setUniversalStoreIdentifiersWithBlock_;
      v159 = v9;
      v158 = v13;
      v157 = v14;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock = v57;
        *v56 = 136315138;
        v58 = [v154 utteranceString];
        v59 = sub_2664E02C8();
        v61 = v60;

        v62 = sub_2662A320C(v59, v61, &aBlock);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_26629C000, v52, v53, "PlayMediaAppSelector#recordSignals with user utterance: %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        v63 = v57;
        v55 = &selRef_setUniversalStoreIdentifiersWithBlock_;
        MEMORY[0x266784AD0](v63, -1, -1);
        MEMORY[0x266784AD0](v56, -1, -1);
      }

      object = *(v40 + 8);
      object(v33, v48);
      v65 = [v154 identifier];
      v66 = objc_allocWithZone(MEMORY[0x277CD3EC0]);
      v67 = [v66 initWithIdentifier:v65 backingStore:v156];

      v68 = v67;
      v69._object = 0x80000002664F6C60;
      v69._countAndFlagsBits = 0xD000000000000022;
      INIntent.setLaunchId(launchId:caller:)(v165, v69);
      [v68 _setExtensionBundleId_];
      v70 = [v68 backingStore];

      objc_opt_self();
      v71 = swift_dynamicCastObjCClass();
      v72 = v166;
      if (v71)
      {
        v73 = [v71 intentMetadata];

        [v73 setUserUtterance_];
        v70 = v73;
      }

      v74 = v163;

      v160(v72, v162, v74);
      v75 = v68;
      v76 = sub_2664DFE18();
      v77 = sub_2664E06E8();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v165.value._object = object;
        v80 = v79;
        aBlock = v79;
        *v78 = 136315138;
        v81 = [v75 v55[243]];
        v82 = v72;
        v83 = sub_2664E02C8();
        v85 = v84;

        v86 = sub_2662A320C(v83, v85, &aBlock);

        *(v78 + 4) = v86;
        _os_log_impl(&dword_26629C000, v76, v77, "PlayMediaAppSelector#recordSignals (mirror) with user utterance: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        v87 = v80;
        object = v165.value._object;
        MEMORY[0x266784AD0](v87, -1, -1);
        MEMORY[0x266784AD0](v78, -1, -1);

        v88 = v82;
      }

      else
      {

        v88 = v72;
      }

      object(v88, v74);
      v89 = v178;
      v90 = v168;
      if (qword_280071BC8 != -1)
      {
        swift_once();
      }

      v166 = qword_2800732E8;
      if (qword_280F8FFB0 != -1)
      {
        swift_once();
      }

      v165.value._countAndFlagsBits = qword_280F8FFB8;
      v91 = swift_allocObject();
      *(v91 + 16) = v75;
      *(v91 + 24) = v167 & 1;
      *(v91 + 25) = v169 & 1;
      v169 = v91;
      *(v91 + 32) = v170;
      v160(v90, v162, v74);
      v167 = v75;
      v92 = sub_2664DFE18();
      v93 = sub_2664E06C8();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        aBlock = v95;
        *v94 = 136446466;
        *(v94 + 4) = sub_2662A320C(0xD000000000000022, 0x80000002664F6C90, &aBlock);
        *(v94 + 12) = 2050;
        *(v94 + 14) = 8000;
        _os_log_impl(&dword_26629C000, v92, v93, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v94, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        MEMORY[0x266784AD0](v95, -1, -1);
        MEMORY[0x266784AD0](v94, -1, -1);
      }

      object(v90, v74);
      sub_2664DE428();
      v96 = dispatch_group_create();
      v97 = swift_allocObject();
      *(v97 + 16) = 0;
      *(v97 + 24) = 0u;
      v168 = v97;
      *(v97 + 40) = 0u;
      aBlock = 0;
      v185 = 0xE000000000000000;
      sub_266314294(0);
      sub_2664E0B28();

      aBlock = 0xD00000000000001ALL;
      v185 = 0x80000002664F44D0;
      MEMORY[0x2667833B0](0xD000000000000022, 0x80000002664F6C90);
      v98 = aBlock;
      v99 = v185;
      type metadata accessor for AtomicOnce();
      v100 = swift_allocObject();
      *(v100 + 24) = 0;
      *(v100 + 32) = v98;
      *(v100 + 40) = v99;
      v101 = qword_280F91468;

      v170 = 0x80000002664F6C90;
      if (v101 != -1)
      {
        swift_once();
      }

      v102 = qword_280F91470;
      v187 = type metadata accessor for SiriKitTaskLoggingProvider();
      v188 = &protocol witness table for SiriKitTaskLoggingProvider;
      aBlock = v102;
      type metadata accessor for PThreadMutex();
      swift_allocObject();

      *(v100 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v98, v99, 1, &aBlock);
      dispatch_group_enter(v96);
      v103 = v179;
      v104 = *(v179 + 16);
      v105 = v177;
      v106 = v89;
      v107 = v180;
      v153 = v179 + 16;
      v152 = v104;
      v104(v177, v106, v180);
      v108 = *(v103 + 80);
      v148 = ~v108;
      v109 = (v108 + 56) & ~v108;
      v110 = (v176 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v144 = v108;
      v111 = swift_allocObject();
      v112 = v169;
      v111[2] = sub_2663BC228;
      v111[3] = v112;
      v111[4] = v100;
      v111[5] = 0xD000000000000022;
      v111[6] = v170;
      v113 = *(v103 + 32);
      v151 = v103 + 32;
      v150 = v113;
      v113(v111 + v109, v105, v107);
      *(v111 + v110) = v168;
      *(v111 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8)) = v96;
      v188 = sub_2663BC23C;
      v189 = v111;
      aBlock = MEMORY[0x277D85DD0];
      v185 = 1107296256;
      v186 = sub_2662A3F90;
      v187 = &block_descriptor_109_0;
      v114 = _Block_copy(&aBlock);

      v165.value._object = v100;

      v149 = v96;
      v115 = v173;
      sub_2664E0068();
      v183 = MEMORY[0x277D84F90];
      v116 = sub_2662A6120();
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      v118 = sub_2662A5AC8();
      v119 = v158;
      v147 = v117;
      v146 = v118;
      v120 = v159;
      v154 = v116;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v115, v119, v114);
      _Block_release(v114);
      v121 = *(v164 + 8);
      v164 += 8;
      v165.value._countAndFlagsBits = v121;
      v121(v119, v120);
      v122 = *(v175 + 8);
      v175 += 8;
      v145 = v122;
      v122(v115, v157);

      v123 = v171;
      v124 = v163;
      v160(v171, v162, v163);
      v125 = sub_2664DFE18();
      v126 = sub_2664E06E8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        aBlock = v128;
        *v127 = 136446210;
        *(v127 + 4) = sub_2662A320C(0xD000000000000022, v170, &aBlock);
        _os_log_impl(&dword_26629C000, v125, v126, "Completions#timeout waiting for completion: %{public}s...", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v128);
        MEMORY[0x266784AD0](v128, -1, -1);
        MEMORY[0x266784AD0](v127, -1, -1);
      }

      (*(v181 + 8))(v123, v124);
      v129 = v177;
      v130 = v178;
      v131 = v180;
      v152(v177, v178, v180);
      v132 = (v144 + 88) & v148;
      v133 = v132 + v176;
      v134 = (((v132 + v176) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
      v135 = swift_allocObject();
      v136 = v149;
      *(v135 + 16) = v149;
      *(v135 + 24) = xmmword_2664EA060;
      *(v135 + 40) = v170;
      *(v135 + 48) = 0;
      *(v135 + 49) = *v182;
      *(v135 + 52) = *&v182[3];
      *(v135 + 56) = 0u;
      *(v135 + 72) = 0u;
      v150(v135 + v132, v129, v131);
      *(v135 + v133) = 0;
      v137 = v135 + (v133 & 0xFFFFFFFFFFFFFFF8);
      v138 = v174;
      *(v137 + 8) = v172;
      *(v137 + 16) = v138;
      *(v135 + v134) = v168;
      v188 = sub_2663BC2E0;
      v189 = v135;
      aBlock = MEMORY[0x277D85DD0];
      v185 = 1107296256;
      v186 = sub_2662A3F90;
      v187 = &block_descriptor_115_0;
      v139 = _Block_copy(&aBlock);
      sub_266314294(0);

      v140 = v136;

      sub_2664E0068();
      v183 = MEMORY[0x277D84F90];
      v141 = v158;
      v142 = v159;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v115, v141, v139);
      _Block_release(v139);

      (v165.value._countAndFlagsBits)(v141, v142);
      v145(v115, v157);
      (*(v179 + 8))(v130, v131);

      return sub_2663142F4(0);
    }
  }

  else
  {
  }

  v42 = v181;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v23, qword_280F914F0);
  swift_beginAccess();
  (*(v42 + 16))(v35, v43, v23);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06D8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26629C000, v44, v45, "PlayMediaAppSelector#recordSignals error copying intent for use with app selection signals", v46, 2u);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  return (*(v42 + 8))(v35, v23);
}

uint64_t sub_2663AF8FC(uint64_t a1, uint64_t a2, void *a3, char a4, char a5)
{
  if (qword_280F8FFA0 != -1)
  {
    swift_once();
  }

  v10 = qword_280F8FFA8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a5 & 1;
  *(v11 + 40) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2663BC398;
  *(v12 + 24) = v11;

  v13 = a3;

  sub_266447850(a3, 0, v10, a4 & 1, sub_2663BC3A8, v12);
}

uint64_t sub_2663AFA2C(uint64_t *a1, void (*a2)(uint64_t **), uint64_t a3, char a4, void *a5)
{
  v68 = a5;
  v69 = a3;
  v70 = a2;
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SelfSamplingCalculator();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v66 - v24;
  v26 = *a1;
  v28 = a1[2];
  v27 = a1[3];
  v72 = a1[1];
  v73 = v28;
  v71 = v27;
  if (v26)
  {
    v67 = v26;
    if (a4)
    {

LABEL_12:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v16, qword_280F914F0);
      swift_beginAccess();
      (*(v17 + 16))(v22, v38, v16);
      v39 = sub_2664DFE18();
      v40 = sub_2664E06E8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v74 = v42;
        *v41 = 136446210;
        if (qword_280F8F6B0 != -1)
        {
          swift_once();
        }

        *(v41 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v74);
        _os_log_impl(&dword_26629C000, v39, v40, "PlayMediaAppSelector#recordSignals %{public}s shouldMakeRecord YES", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x266784AD0](v42, -1, -1);
        MEMORY[0x266784AD0](v41, -1, -1);
      }

      (*(v17 + 8))(v22, v16);
      v43 = v71;
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v44 = qword_280F90B40;
      v45 = unk_280F90B48;
      v46 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v47 = *(v44 - 8);
      v48 = *(v47 + 64);
      MEMORY[0x28223BE20](v46);
      v50 = &v66 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v50);
      v51 = (*(v45 + 16))(v44, v45);
      v53 = v52;
      (*(v47 + 8))(v50, v44);
      type metadata accessor for AppSelectionContext();
      v54 = swift_allocObject();
      v55 = v67;
      v57 = v72;
      v56 = v73;
      v54[2] = v67;
      v54[3] = v57;
      v54[4] = v56;
      v54[5] = v43;
      v58 = v43;
      v59 = v68;
      v54[6] = v68;
      v54[7] = v51;
      v54[8] = v53;
      sub_266314294(v55);

      v60 = v59;
      static AppSelectionContext.shared(refId:completion:)(v51, v53, sub_2663BC40C, v54);

      LOBYTE(v74) = 1;
      v75 = v55;
      v76 = v57;
      v77 = v56;
      v78 = v58;
      goto LABEL_26;
    }

    v66 = v23;
    v33 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v34 = sub_2664E02A8();
    v35 = [v33 initWithSuiteName_];

    if (v35)
    {
      v36 = sub_2664E02A8();
      [v35 doubleForKey_];
    }

    sub_2664DE3D8();
    (*(v8 + 32))(v15, v11, v7);
    v37 = sub_2664246D4();
    sub_2663BC3B0(v15);
    if (v37)
    {
      goto LABEL_12;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    (*(v17 + 16))(v66, v61, v16);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06B8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26629C000, v62, v63, "PlayMediaAppSelector#recordSignals failed test to make record", v64, 2u);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    (*(v17 + 8))(v66, v16);
    LOBYTE(v74) = 0;
    v75 = v67;
    v76 = v72;
    v77 = v73;
    v78 = v71;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    (*(v17 + 16))(v25, v29, v16);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "PlayMediaAppSelector#recordSignals failed to return record from signal gathering", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v17 + 8))(v25, v16);
    LOBYTE(v74) = 0;
    v75 = 0;
    v76 = v72;
    v77 = v73;
    v78 = v71;
    sub_266314294(0);
  }

LABEL_26:
  v70(&v74);
  return sub_2663142F4(v75);
}

uint64_t sub_2663B02DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v39 = a7;
  v40 = a8;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v37 = v14;
    v38 = v15;
    v19 = a1[19];
    v18 = a1[20];
    v21 = a1[21];
    v20 = a1[22];
    a1[19] = a2;
    a1[20] = a3;
    a1[21] = a4;
    a1[22] = a5;

    v22 = v19;
    v14 = v37;
    v15 = v38;
    sub_2663142F4(v22);
    swift_beginAccess();
    v23 = a1[23];
    a1[23] = a6;
    v24 = a6;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v26 = v41;
  (*(v15 + 16))(v41, v25, v14);
  v27 = v40;

  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v27;
    v44 = v31;
    *v30 = 136446210;
    v42 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v44);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_26629C000, v28, v29, "PlayMediaAppSelector#recordSignals saved rawSignalResult to AppSelectionContext with refId: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  return (*(v15 + 8))(v26, v14);
}

uint64_t sub_2663B05D4(char *a1, uint64_t a2)
{
  v5 = sub_2664E0038();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 24) = v15;
  *(v16 + 32) = &type metadata for Signposts;
  *(v16 + 40) = &off_2877F09E0;
  *(v16 + 16) = v2;
  *(v16 + 48) = a2;
  *(v16 + 56) = &type metadata for AudioMegamodelTriggeredLogger;
  *(v16 + 64) = &off_2877EFD00;
  aBlock[4] = sub_2663B904C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_24;
  v17 = _Block_copy(aBlock);

  sub_2664E0068();
  v19[1] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v14, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_2663B08B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;
  v16 = *v14;

  sub_26630F97C(0, 1, v16, sub_2663BC120, v15);
}

void sub_2663B0988(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v45 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = sub_2664DE4A8();
  v46 = *(v20 - 8);
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2662F5CEC(qword_280F91CD8, a1);
  v47 = a3;
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_280071C60 != -1)
  {
    swift_once();
  }

  v25 = qword_28007CD08;
  if (*(qword_28007CD08 + 16) && (v26 = sub_26634DA3C(a3), (v27 & 1) != 0))
  {
    a3 = *(*(v25 + 56) + v26) + 100;
  }

  else
  {
LABEL_7:
    a3 = a3;
  }

  sub_2662C1744(0, &qword_280F914E0, 0x277D86200);
  v28 = sub_2664E0928();
  v29 = *(a5 + 8);
  v48 = v28;
  v29("appSelectionDisambiguateItems", 29, 2, "count=%{signpost.telemetry:number1,public}d reason=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 109, 2, a6, a3, v28, a4, a5);
  if ((v24 & 1) != 0 && (v30 = a2[27], v31 = a2[28], __swift_project_boxed_opaque_existential_1(a2 + 24, v30), (*(v31 + 16))(v30, v31), v32))
  {
    sub_2664DE448();

    v33 = v46;
    if ((*(v46 + 48))(v19, 1, v20) == 1)
    {

      sub_2662A9238(v19, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      v35 = (*(v33 + 32))(v23, v19, v20);
      if (v47 == 1)
      {
        v35 = (*(v44 + 8))(1);
      }

      v37 = a2[22];
      v36 = a2[23];
      v38 = *(v37 - 8);
      v39 = *(v38 + 64);
      MEMORY[0x28223BE20](v35);
      v41 = &v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      v49[0] = MEMORY[0x277D84FA0];
      v49[1] = MEMORY[0x277D84F90];
      v49[2] = MEMORY[0x277D84F90];
      v49[3] = MEMORY[0x277D84F90];
      (*(v36 + 8))(v49, v37, v36);
      LOBYTE(v49[0]) = v47;
      v42 = v45;
      (*(v36 + 24))(v49, v23, v37, v36);

      sub_2662A9238(v42, &qword_280073C60, &unk_2664EE400);
      (*(v38 + 8))(v41, v37);
      (*(v33 + 8))(v23, v20);
    }
  }

  else
  {
    v34 = v48;
  }
}

uint64_t sub_2663B0E60(uint64_t *a1)
{
  v2 = sub_2664E0038();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2664E00B8();
  v64 = *(v66 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2664E0018();
  v57 = *(v58 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_2664E00E8();
  v60 = *(v61 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v61);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v21 = a1[1];
  v70 = *a1;
  v71 = v21;
  v22 = a1[3];
  v54 = a1[2];
  v23 = a1[4];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v69 = v14[2];
  v69(v20, v24, v13);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = v18;
    v28 = v23;
    v29 = v22;
    v30 = v27;
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "PlayMediaAppSelector#logAppApiAdoption...", v27, 2u);
    v31 = v30;
    v22 = v29;
    v23 = v28;
    v18 = v53;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = v14[1];
  v32(v20, v13);
  result = AFIsInternalInstall();
  if (result)
  {
    v34 = v71;
    if (v70 != 1 && v71)
    {
      v35 = v22;
      v36 = qword_280F90D30;

      v37 = v54;

      v53 = v23;
      if (v36 != -1)
      {
        swift_once();
      }

      v70 = qword_280F90D38;
      v38 = v55;
      sub_2664E00C8();
      v39 = v56;
      *v56 = 10;
      v40 = v57;
      v41 = v58;
      (*(v57 + 104))(v39, *MEMORY[0x277D85188], v58);
      v42 = v59;
      MEMORY[0x266783140](v38, v39);
      (*(v40 + 8))(v39, v41);
      v69 = *(v60 + 8);
      v43 = v61;
      (v69)(v38, v61);
      v44 = swift_allocObject();
      v44[2] = v34;
      v44[3] = v37;
      v45 = v53;
      v44[4] = v35;
      v44[5] = v45;
      v44[6] = v62;
      aBlock[4] = sub_2663BC0FC;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2662A3F90;
      aBlock[3] = &block_descriptor_78;
      v46 = _Block_copy(aBlock);

      v47 = v63;
      sub_2664E0068();
      v72 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v48 = v65;
      v49 = v68;
      sub_2664E0A08();
      MEMORY[0x2667837B0](v42, v47, v48, v46);
      _Block_release(v46);
      (*(v67 + 8))(v48, v49);
      (*(v64 + 8))(v47, v66);
      (v69)(v42, v43);
    }
  }

  else
  {
    v69(v18, v24, v13);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "PlayMediaAppSelector#logAppApiAdoption skipping for non-internal", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    return (v32)(v18, v13);
  }

  return result;
}

uint64_t sub_2663B15F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  if (qword_280F914E8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v14 = v7[2];
  v33 = v13;
  v31 = v14;
  v14(v12, v13, v6);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "PlayMediaAppSelector#logAppApiAdoption recording...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = v7[1];
  v35 = v7 + 1;
  v32 = v18;
  v18(v12, v6);
  v39 = 1;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;

  v7 = 0;
  if (v21)
  {
    while (1)
    {
      v23 = v7;
LABEL_12:
      v24 = (*(a1 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v21)))));
      v12 = v24[1];
      v21 &= v21 - 1;
      v38[0] = *v24;
      v38[1] = v12;

      sub_2663BB1DC(v38, a1, a2, v36, v37, &v39);

      if (!v21)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v23 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v23 >= v22)
    {
      break;
    }

    v21 = *(a1 + 56 + 8 * v23);
    v7 = (v7 + 1);
    if (v21)
    {
      v7 = v23;
      goto LABEL_12;
    }
  }

  v25 = v34;
  v31(v34, v33, v6);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    swift_beginAccess();
    *(v28 + 4) = v39;
    _os_log_impl(&dword_26629C000, v26, v27, "PlayMediaAppSelector#logAppApiAdoption recording complete. Success: %{BOOL}d", v28, 8u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  return v32(v25, v6);
}

unint64_t sub_2663B1984(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073300, &qword_2664EA248);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_2664EA070;
  *(inited + 40) = 0x80000002664F5CA0;
  *(inited + 48) = sub_2664E02A8();
  *(inited + 56) = 0x6F6353636973756DLL;
  *(inited + 64) = 0xEA00000000006572;
  if (a3)
  {
    v11 = a3[2];
    if (*(v11 + 16))
    {
      v12 = a3[2];

      v13 = sub_2662A3E98(a1, a2);
      if (v14)
      {
        v15 = *(*(v11 + 56) + 8 * v13);
      }
    }

    *(inited + 72) = sub_2664E05D8();
    strcpy((inited + 80), "podcastsScore");
    *(inited + 94) = -4864;
    v16 = a3[3];
    if (*(v16 + 16))
    {
      v17 = a3[3];

      v18 = sub_2662A3E98(a1, a2);
      if (v19)
      {
        v20 = *(*(v16 + 56) + 8 * v18);
      }
    }
  }

  else
  {
    *(inited + 72) = sub_2664E05D8();
    strcpy((inited + 80), "podcastsScore");
    *(inited + 94) = -4864;
  }

  *(inited + 96) = sub_2664E05D8();
  *(inited + 104) = 0x6F6353736B6F6F62;
  *(inited + 112) = 0xEA00000000006572;
  if (a3)
  {
    v21 = a3[4];
    if (*(v21 + 16))
    {
      v22 = a3[4];

      v23 = sub_2662A3E98(a1, a2);
      if (v24)
      {
        v25 = *(*(v21 + 56) + 8 * v23);
      }
    }
  }

  *(inited + 120) = sub_2664E05D8();
  *(inited + 128) = 0x6979616C50776F6ELL;
  *(inited + 136) = 0xEF65726F6353676ELL;
  if (a4)
  {
    v26 = *(a4 + 48);
    if (*(v26 + 16))
    {
      v27 = *(a4 + 48);

      v28 = sub_2662A3E98(a1, a2);
      if (v29)
      {
        v30 = *(*(v26 + 56) + 8 * v28);
      }
    }
  }

  *(inited + 144) = sub_2664E05D8();
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x80000002664F6B00;
  *(inited + 168) = sub_2664E05D8();
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x80000002664F6B20;
  if (a5)
  {
    sub_2664E0818();
  }

  *(inited + 192) = sub_2664E0648();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000002664F6B40;
  if (a5)
  {
    [a5 subscriptionStatus];
  }

  *(inited + 216) = sub_2664E0648();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x80000002664F6B60;
  if (a5)
  {
    [a5 subscriptionStatus];
  }

  v31 = sub_2664E0D48();
  MEMORY[0x2667833B0](v31);

  v32 = sub_2664E02A8();

  *(inited + 240) = v32;
  v33 = sub_26638612C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073308, &unk_2664EA250);
  swift_arrayDestroy();
  return v33;
}

uint64_t sub_2663B1D68@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t **a8@<X8>)
{
  v79 = a6;
  v80 = a7;
  v78 = a5;
  v77 = a4;
  v85 = a8;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v87 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v72 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v72 - v19);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v21 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v22 = v12[2];
    v83 = v12 + 2;
    v84 = v21;
    v82 = v22;
    v22(v20, v21, v11);

    v23 = sub_2664DFE18();
    v24 = sub_2664E06C8();

    v25 = os_log_type_enabled(v23, v24);
    v76 = v18;
    v81 = a1;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v88[0] = v27;
      *v26 = 136315138;
      v28 = MEMORY[0x2667834D0](a1, MEMORY[0x277D837D0]);
      v86 = a3;
      v30 = v12;
      v31 = v11;
      v32 = sub_2662A320C(v28, v29, v88);
      a3 = v86;

      *(v26 + 4) = v32;
      v11 = v31;
      v12 = v30;
      _os_log_impl(&dword_26629C000, v23, v24, "PlayMediaAppSelector#rawPredict predicting for candidates: %s...", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);

      v33 = v30;
    }

    else
    {

      v33 = v12;
    }

    v34 = v33[1];
    v34(v20, v11);
    v18 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
    v20 = a2;
    sub_2663516EC(a3, v18);
    a2 = v35;
    v73 = v34;
    v74 = v12;
    v75 = v11;

    v36 = sub_266386140(MEMORY[0x277D84F90]);
    v11 = *(v81 + 16);
    if (!v11)
    {
      break;
    }

    a1 = 0;
    v86 = a2 & 0xFFFFFFFFFFFFFF8;
    v87 = (a2 & 0xC000000000000001);
    v12 = (v81 + 40);
    while (1)
    {
      v37 = *(v12 - 1);
      a3 = *v12;
      if (v87)
      {
        v54 = *v12;

        v18 = MEMORY[0x266783B70](a1, a2);
      }

      else
      {
        if (a1 >= *(v86 + 16))
        {
          goto LABEL_33;
        }

        v18 = a2[a1 + 4];
        v38 = *v12;
      }

      v39 = sub_2663511A4();

      v40 = 0;
      if (*(v39 + 16))
      {
        v41 = sub_266350334(1);
        if (v42)
        {
          v40 = *(*(v39 + 56) + 8 * v41);
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88[0] = v36;
      v20 = v36;
      v44 = sub_2662A3E98(v37, a3);
      v46 = v36[2];
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        break;
      }

      v18 = v45;
      if (v36[3] < v49)
      {
        sub_2664508BC(v49, isUniquelyReferenced_nonNull_native);
        v20 = v88[0];
        v44 = sub_2662A3E98(v37, a3);
        if ((v18 & 1) != (v50 & 1))
        {
          result = sub_2664E0DD8();
          __break(1u);
          return result;
        }

LABEL_20:
        if (v18)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v20 = v88;
      v55 = v44;
      sub_266453E30();
      v44 = v55;
      if (v18)
      {
LABEL_7:
        v18 = v44;

        v36 = v88[0];
        *(*(v88[0] + 56) + 8 * v18) = v40;
        goto LABEL_8;
      }

LABEL_21:
      v36 = v88[0];
      *(v88[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v51 = (v36[6] + 16 * v44);
      *v51 = v37;
      v51[1] = a3;
      *(v36[7] + 8 * v44) = v40;
      v52 = v36[2];
      v48 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v48)
      {
        goto LABEL_34;
      }

      v36[2] = v53;
LABEL_8:
      ++a1;
      v12 += 2;
      if (v11 == a1)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_26:

  v56 = v76;
  v57 = v75;
  v82(v76, v84, v75);
  v58 = sub_2664DFE18();
  v59 = sub_2664E06E8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v88[0] = v61;
    *v60 = 136446466;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v60 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v88);
    *(v60 + 12) = 2082;

    v62 = sub_2664E01D8();
    v64 = v63;

    v65 = sub_2662A320C(v62, v64, v88);

    *(v60 + 14) = v65;
    _os_log_impl(&dword_26629C000, v58, v59, "PlayMediaAppSelector#rawPredict %{public}s results: %{public}s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);

    v66 = v56;
    v67 = v75;
  }

  else
  {

    v66 = v56;
    v67 = v57;
  }

  v73(v66, v67);
  v68 = v85;
  v69 = v77;
  *v85 = v36;
  v68[1] = v69;
  v70 = v79;
  v68[2] = v78;
  v68[3] = v70;
  v68[4] = v80;
  v68[5] = 0;
}

uint64_t sub_2663B25F4(void *a1, NSObject *a2, int a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v23 = a6;
  v24 = a7;
  v29 = a2;
  v30 = a5;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v25 = *v7;
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "playMediaAppSelectorRawPredict";
  *(v18 + 24) = 30;
  *(v18 + 32) = 2;
  (*(v9 + 32))(v18 + v16, v12, v8);
  v19 = (v18 + v17);
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;

  sub_2664E0848();
  sub_2664DFDC8();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2663B9410;
  *(v21 + 24) = v18;

  sub_2663B28D0(sub_2663B94B8, v21, v28, v29, v26 & 1, v30, v31, v27 & 1, v25);

  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_2663B28D0(char *a1, uint64_t a2, void *a3, NSObject *a4, int a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9)
{
  v46 = a8;
  v47 = a7;
  v44 = a5;
  v49 = a4;
  v48 = a3;
  v45 = a2;
  v43 = a1;
  v50 = sub_2664DE438();
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v50);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41 = a9;
  v20 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v21, v22, "PlayMediaAppSelector#rawPredict...", v23, 2u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  sub_2664DE428();
  v24 = v42;
  (*(v10 + 16))(v42, v14, v50);
  v25 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  v26 = v25 + v11;
  v27 = (v25 + v11) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = a6[9];
  *(v28 + 168) = a6[8];
  *(v28 + 184) = v29;
  v30 = a6[11];
  *(v28 + 200) = a6[10];
  *(v28 + 216) = v30;
  v31 = a6[5];
  *(v28 + 104) = a6[4];
  *(v28 + 120) = v31;
  v32 = a6[7];
  *(v28 + 136) = a6[6];
  *(v28 + 152) = v32;
  v33 = a6[1];
  *(v28 + 40) = *a6;
  *(v28 + 56) = v33;
  v34 = a6[3];
  *(v28 + 72) = a6[2];
  v35 = v43;
  v43 = v14;
  v36 = v45;
  *(v28 + 16) = v35;
  *(v28 + 24) = v36;
  v37 = v44 & 1;
  *(v28 + 32) = v37;
  *(v28 + 88) = v34;
  *(v28 + 232) = v47;
  v38 = v28 + v25;
  v39 = v50;
  (*(v10 + 32))(v38, v24, v50);
  *(v28 + v26) = v46 & 1;
  *(v28 + v27 + 8) = v41;

  sub_2663B95AC(a6, v51);

  sub_266447850(v48, 0, v49, v37, sub_2663B94FC, v28);

  return (*(v10 + 8))(v43, v39);
}

uint64_t sub_2663B2D0C(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v114 = a8;
  v115 = a7;
  v123 = a5;
  LODWORD(v122) = a4;
  v120 = sub_2664DE438();
  v116 = *(v120 - 8);
  v12 = *(v116 + 64);
  v13 = MEMORY[0x28223BE20](v120);
  v117 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107 = &v98 - v14;
  v106 = sub_2664E0038();
  v105 = *(v106 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v103 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2664E00B8();
  v102 = *(v104 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v111 = &v98 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v98 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v98 - v32;
  MEMORY[0x28223BE20](v31);
  v36 = &v98 - v35;
  v37 = *a1;
  if (*a1)
  {
    v100 = v34;
    v112 = a2;
    v113 = a3;
    v39 = a1[1];
    v38 = a1[2];
    v40 = a1[3];
    v41 = qword_280F914E8;
    v119 = v37;

    v118 = v39;

    v124 = v38;

    v121 = v40;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v19, qword_280F914F0);
    swift_beginAccess();
    v43 = v20[2];
    v109 = v42;
    v108 = v43;
    v43(v33, v42, v19);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "PlayMediaAppSelector#rawPredict rawSignals gathered.", v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v47 = v20[1];
    v110 = v20 + 1;
    v47(v33, v19);
    if (v122)
    {
      v48 = *(v123 + 128);
      v99 = a9;
      if (v48)
      {
      }

      else
      {
        v108(v30, v109, v19);
        v65 = sub_2664DFE18();
        v66 = sub_2664E06D8();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_26629C000, v65, v66, "Using megamodel, but didn't find it in configuration. Loading in the hotpath, which is bad", v67, 2u);
          MEMORY[0x266784AD0](v67, -1, -1);
        }

        v47(v30, v19);
        v68 = sub_2664DEF78();
        v69 = *(v68 + 48);
        v70 = *(v68 + 52);
        swift_allocObject();
        sub_2664DEF68();
      }

      aBlock = v119;
      *&v127 = v118;
      v71 = v121;
      *(&v127 + 1) = v124;
      *&v128 = v121;

      v123 = sub_2662C18A0(&aBlock, 0, v114 & 1, &type metadata for AudioMegamodelTriggeredLogger, &off_2877EFD00);

      if (qword_280F90D30 != -1)
      {
        swift_once();
      }

      v122 = qword_280F90D38;
      v75 = swift_allocObject();
      v76 = v118;
      v77 = v119;
      v75[2] = v119;
      v75[3] = v76;
      v78 = v123;
      v75[4] = v124;
      v75[5] = v71;
      v79 = v99;
      v75[6] = v78;
      v75[7] = v79;
      *(&v128 + 1) = sub_2663BB984;
      v129 = v75;
      aBlock = MEMORY[0x277D85DD0];
      *&v127 = 1107296256;
      *(&v127 + 1) = sub_2662A3F90;
      *&v128 = &block_descriptor_66_0;
      v80 = _Block_copy(&aBlock);
      sub_266314294(v77);

      v81 = v101;
      sub_2664E0068();
      v130 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v82 = v103;
      v83 = v106;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v81, v82, v80);
      _Block_release(v80);
      (*(v105 + 8))(v82, v83);
      (*(v102 + 8))(v81, v104);

      v108(v100, v109, v19);
      v84 = v116;
      v85 = v107;
      v86 = v120;
      (*(v116 + 16))(v107, v115, v120);
      v87 = sub_2664DFE18();
      v88 = sub_2664E06E8();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v122 = v47;
        v90 = v85;
        v91 = v89;
        *v89 = 134349056;
        v92 = v117;
        sub_2664DE428();
        sub_2664DE388();
        v94 = v93;
        v95 = *(v84 + 8);
        v95(v92, v86);
        v96 = v90;
        v47 = v122;
        v95(v96, v86);
        *(v91 + 1) = v94;
        _os_log_impl(&dword_26629C000, v87, v88, "PlayMediaAppSelector#rawPredict completed in %{public}fs", v91, 0xCu);
        MEMORY[0x266784AD0](v91, -1, -1);
      }

      else
      {

        (*(v84 + 8))(v85, v86);
      }

      v97 = v112;
      v47(v100, v19);
      aBlock = 0;
      *&v127 = v119;
      *(&v127 + 1) = v118;
      *&v128 = v124;
      *(&v128 + 1) = v121;
      v129 = v123;
      v97(&aBlock);

      return sub_2663BB994(aBlock, v127);
    }

    else
    {
      v54 = *(v123 + 120);
      v130 = v54;
      if (v54)
      {
        v55 = v119;
        aBlock = v119;
        *&v127 = v118;
        v56 = v118;
        v99 = a9;
        v57 = v124;
        *(&v127 + 1) = v124;
        *&v128 = v121;
        v58 = v116;
        (*(v116 + 16))(v117, v115, v120);
        v59 = (*(v58 + 80) + 48) & ~*(v58 + 80);
        v60 = (v12 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        *(v61 + 2) = v55;
        *(v61 + 3) = v56;
        *(v61 + 4) = v57;
        v62 = v120;
        *(v61 + 5) = v121;
        (*(v58 + 32))(&v61[v59], v117, v62);
        v63 = &v61[v60];
        v64 = v113;
        *v63 = v112;
        *(v63 + 1) = v64;
        *&v61[(v60 + 23) & 0xFFFFFFFFFFFFFFF8] = v99;
        sub_266314294(v55);
        sub_2662A7224(&v130, v125, &qword_2800732F0, &qword_2664EA228);

        sub_2663BB538(&aBlock, v54, sub_2663B9608, v61);
        sub_2662A9238(&v130, &qword_2800732F0, &qword_2664EA228);

        return sub_2663142F4(v55);
      }

      else
      {
        sub_2663142F4(v119);
        v108(v24, v109, v19);
        v72 = sub_2664DFE18();
        v73 = sub_2664E06D8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_26629C000, v72, v73, "PlayMediaAppSelector#select error loading app selection model", v74, 2u);
          MEMORY[0x266784AD0](v74, -1, -1);
        }

        v47(v24, v19);
        aBlock = 1;
        v127 = 0u;
        v128 = 0u;
        v129 = 0;
        return (v112)(&aBlock);
      }
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v19, qword_280F914F0);
    swift_beginAccess();
    (v20[2])(v36, v49, v19);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "PlayMediaAppSelector#rawPredict no results", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    (v20[1])(v36, v19);
    aBlock = 1;
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    return (a2)(&aBlock);
  }
}

uint64_t sub_2663B3B50(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(__int128 *), uint64_t a8, uint64_t a9)
{
  v59 = a8;
  v60 = a7;
  v53 = a6;
  v52 = a5;
  v50 = a9;
  v57 = sub_2664DE438();
  v56 = *(v57 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v57);
  v49[0] = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = v49 - v16;
  v61 = sub_2664DFE38();
  v58 = *(v61 - 8);
  v17 = *(v58 + 64);
  MEMORY[0x28223BE20](v61);
  v55 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664E0038();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2664E00B8();
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v51);
  v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[1];
  v66 = *a1;
  v67 = v28;
  v68 = a1[2];
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v49[1] = qword_280F90D38;
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  v30 = v52;
  *(v29 + 32) = a4;
  *(v29 + 40) = v30;
  v31 = a1[1];
  *(v29 + 48) = *a1;
  *(v29 + 64) = v31;
  *(v29 + 80) = a1[2];
  *(v29 + 96) = v50;
  *&v65 = sub_2663BC074;
  *(&v65 + 1) = v29;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v64 = sub_2662A3F90;
  *(&v64 + 1) = &block_descriptor_72;
  v32 = _Block_copy(&aBlock);

  sub_2662A7224(&v66, v62, &qword_2800732F8, &qword_2664EA230);
  sub_2664E0068();
  v62[0] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v27, v23, v32);
  _Block_release(v32);
  (*(v20 + 8))(v23, v19);
  (*(v24 + 8))(v27, v51);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = v61;
  v34 = __swift_project_value_buffer(v61, qword_280F914F0);
  swift_beginAccess();
  v35 = v58;
  v36 = v55;
  (*(v58 + 16))(v55, v34, v33);
  v37 = v56;
  v38 = v54;
  v39 = v57;
  (*(v56 + 16))(v54, v53, v57);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134349056;
    v43 = v49[0];
    sub_2664DE428();
    sub_2664DE388();
    v45 = v44;
    v46 = *(v37 + 8);
    v46(v43, v39);
    v46(v38, v39);
    *(v42 + 4) = v45;
    _os_log_impl(&dword_26629C000, v40, v41, "PlayMediaAppSelector#rawPredict completed in %{public}fs", v42, 0xCu);
    v47 = v42;
    v33 = v61;
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v38, v39);
  }

  (*(v35 + 8))(v36, v33);
  aBlock = v66;
  v64 = v67;
  v65 = v68;
  return v60(&aBlock);
}

uint64_t sub_2663B41E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  *&v33 = a1;
  *(&v33 + 1) = a2;
  v34 = a3;
  v35 = a4;
  sub_2663BBA0C(&v33);
  if (*a5 >= 2uLL)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v17, v23, v10);

    v24 = sub_2664DFE18();
    v25 = sub_2664E06E8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315138;
      v28 = sub_2664E01D8();
      v30 = sub_2662A320C(v28, v29, &v32);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_26629C000, v24, v25, "PlayMediaAppSelector#rawPredict (async) model confidences: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    return (*(v11 + 8))(v17, v10);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v18, v10);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06E8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "PlayMediaAppSelector#rawPredict (async) model confidences: nil or no result", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    return (*(v11 + 8))(v15, v10);
  }
}

uint64_t sub_2663B4554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = a1;
  *(&v26 + 1) = a2;
  v27 = a3;
  v28 = a4;
  sub_2663BBA0C(&v26);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);

  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    v20 = MEMORY[0x2667834D0](a5, MEMORY[0x277D837D0]);
    v22 = sub_2662A320C(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26629C000, v16, v17, "PlayMediaAppSelector#rawPredict (async) megamodel predictions: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  return (*(v11 + 8))(v14, v10);
}

void sub_2663B479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[2] = a8;
  v48[3] = a7;
  v13 = sub_2664DFE38();
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v51 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073300, &qword_2664EA248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EA080;
  *(inited + 32) = 0x6449707061;
  v48[4] = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  if (!a2)
  {
    a1 = 0;
  }

  v48[1] = a1;
  v17 = sub_2664E02A8();

  *(inited + 48) = v17;
  *(inited + 56) = 1701080931;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_2664E0648();
  *(inited + 80) = 0x70616C45656D6974;
  *(inited + 88) = 0xEB00000000646573;
  *(inited + 96) = sub_2664E05D8();
  *(inited + 104) = 0x65636E6174736E69;
  *(inited + 112) = 0xE800000000000000;
  swift_beginAccess();
  sub_2662A5550(a3 + 96, v52);
  v18 = v53;
  v19 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v19 + 23))(v18, v19);
  v20 = sub_2664E0648();
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  *(inited + 120) = v20;
  *(inited + 128) = 0x756F43736D657469;
  *(inited + 136) = 0xEA0000000000746ELL;
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  *(inited + 144) = sub_2664E08F8();
  *(inited + 152) = 0x7265666E49707061;
  *(inited + 160) = 0xEB00000000646572;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 176) = 0x706D657474417361;
  *(inited + 184) = 0xEB00000000646574;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 200) = 0x7265735577656ELL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 224) = 0x646573557361;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 248), "asExperimentId");
  *(inited + 263) = -18;
  if (a5[19])
  {
    v21 = a5[18];
    v22 = a5[19];
  }

  v23 = sub_2664E02A8();

  *(inited + 264) = v23;
  strcpy((inited + 272), "asTreatmentId");
  *(inited + 286) = -4864;
  v24 = v49;
  if (a5[21])
  {
    v25 = a5[20];
    v26 = a5[21];
  }

  v27 = sub_2664E02A8();

  *(inited + 288) = v27;
  *(inited + 296) = 0x756F6C6C6F527361;
  *(inited + 304) = 0xEB00000000644974;
  if (a5[23])
  {
    v28 = a5[22];
    v29 = a5[23];
  }

  v30 = sub_2664E02A8();

  *(inited + 312) = v30;
  *(inited + 320) = 0x6469666E6F437361;
  *(inited + 328) = 0xEF73624165636E65;
  *(inited + 336) = sub_2664E05D8();
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x80000002664F6DD0;
  *(inited + 360) = sub_2664E05D8();
  *(inited + 368) = 0x64497070417361;
  *(inited + 376) = 0xE700000000000000;

  v31 = sub_2664E02A8();

  *(inited + 384) = v31;
  strcpy((inited + 392), "successCount");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_2664E08F8();
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x80000002664F6DF0;
  *(inited + 432) = sub_2664E08F8();
  *(inited + 440) = 0x6F43646573557361;
  *(inited + 448) = 0xEB00000000746E75;
  *(inited + 456) = sub_2664E08F8();
  strcpy((inited + 464), "responseCode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v56 = -2;
  sub_2664E0D48();
  v32 = sub_2664E02A8();

  *(inited + 480) = v32;
  v33 = sub_26638612C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073308, &unk_2664EA250);
  swift_arrayDestroy();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = v50;
  v35 = __swift_project_value_buffer(v50, qword_280F914F0);
  swift_beginAccess();
  v36 = v51;
  (*(v24 + 16))(v51, v35, v34);

  v37 = sub_2664DFE18();
  v38 = sub_2664E06C8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = v24;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v52[0] = v41;
    *v40 = 136315138;
    sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    v42 = sub_2664E01D8();
    v44 = sub_2662A320C(v42, v43, v52);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_26629C000, v37, v38, "PlayMediaAppSelector#select recording result analytics data due to disambiguation result: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);

    (*(v39 + 8))(v51, v34);
  }

  else
  {

    (*(v24 + 8))(v36, v34);
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v33;
  v46 = sub_2664E02A8();
  v54 = sub_2663BCA64;
  v55 = v45;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 1107296256;
  v52[2] = sub_2663B8828;
  v53 = &block_descriptor_192;
  v47 = _Block_copy(v52);

  AnalyticsSendEventLazy();
  _Block_release(v47);
}

void sub_2663B5040(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, unsigned int a6, void *a7, uint64_t a8)
{
  v44 = a8;
  v43 = __PAIR64__(a6, a5);
  v11 = sub_2664DFE38();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073300, &qword_2664EA248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EA090;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2664E0558();
  *(inited + 56) = 0x7261507473726966;
  *(inited + 64) = 0xEA00000000007974;
  if (a2)
  {
    _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0();
    *(inited + 72) = sub_2664E0558();
    *(inited + 80) = 0x7261506472696874;
    *(inited + 88) = 0xEA00000000007974;
    _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0();
  }

  else
  {
    *(inited + 72) = sub_2664E0558();
    *(inited + 80) = 0x7261506472696874;
    *(inited + 88) = 0xEA00000000007974;
  }

  *(inited + 96) = sub_2664E0558();
  *(inited + 104) = 0x7265735577656ELL;
  *(inited + 112) = 0xE700000000000000;
  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *(inited + 120) = [v16 initWithBool_];
  strcpy((inited + 128), "emptyResults");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_2664E0558();
  *(inited + 152) = 0x726F4E776F6C6562;
  *(inited + 160) = 0xEF64657A696C616DLL;
  *(inited + 168) = sub_2664E0558();
  strcpy((inited + 176), "belowAbsolute");
  *(inited + 190) = -4864;
  *(inited + 192) = sub_2664E0558();
  strcpy((inited + 200), "experimentId");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v17 = v14;
  if (a7[19])
  {
    v18 = a7[18];
    v19 = a7[19];
  }

  v21 = v45;
  v20 = v46;

  v22 = sub_2664E02A8();

  *(inited + 216) = v22;
  *(inited + 224) = 0x4974756F6C6C6F72;
  *(inited + 232) = 0xE900000000000064;
  if (a7[23])
  {
    v23 = a7[22];
    v24 = a7[23];
  }

  v25 = sub_2664E02A8();

  *(inited + 240) = v25;
  *(inited + 248) = 0x6E656D7461657274;
  *(inited + 256) = 0xEB00000000644974;
  if (a7[21])
  {
    v26 = a7[20];
    v27 = a7[21];
  }

  v28 = sub_2664E02A8();

  *(inited + 264) = v28;
  *(inited + 272) = 0x72656C6C6163;
  *(inited + 280) = 0xE600000000000000;
  v47[0] = v44;
  sub_2664E0D48();
  v29 = sub_2664E02A8();

  *(inited + 288) = v29;
  *(inited + 296) = 0x70616C45656D6974;
  *(inited + 304) = 0xEB00000000646573;
  *(inited + 312) = sub_2664E05D8();
  v30 = sub_26638612C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073308, &unk_2664EA250);
  swift_arrayDestroy();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  (*(v21 + 16))(v17, v31, v20);

  v32 = sub_2664DFE18();
  v33 = sub_2664E06C8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v46 = v17;
    v35 = v34;
    v36 = swift_slowAlloc();
    v47[0] = v36;
    *v35 = 136315138;
    sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    v37 = sub_2664E01D8();
    v39 = sub_2662A320C(v37, v38, v47);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_26629C000, v32, v33, "PlayMediaAppSelector#select recording app selection result to analytics: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v35, -1, -1);

    (*(v21 + 8))(v46, v20);
  }

  else
  {

    (*(v21 + 8))(v17, v20);
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v30;
  v41 = sub_2664E02A8();
  v47[4] = sub_2663BCF44;
  v47[5] = v40;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 1107296256;
  v47[2] = sub_2663B8828;
  v47[3] = &block_descriptor_198;
  v42 = _Block_copy(v47);

  AnalyticsSendEventLazy();
  _Block_release(v42);
}

uint64_t sub_2663B5720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t *a13, unsigned __int8 a14, uint64_t a15, void *a16)
{
  v192 = a8;
  v193 = a6;
  *&v201 = a7;
  v202 = a4;
  v199 = a3;
  v189 = a2;
  v200 = a13;
  v198 = a13[5];
  v184 = sub_2664E0038();
  v19 = *(v184 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v184);
  v182 = v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_2664E00B8();
  v22 = *(v183 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2664DE438();
  v190 = *(v25 - 8);
  v191 = v25;
  v26 = *(v190 + 64);
  MEMORY[0x28223BE20](v25);
  v180 = v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2664DFE38();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v204 = v170 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v195 = v170 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v186 = v170 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v194 = v170 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = v170 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = v170 - v46;
  v203 = a1;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v28, qword_280F914F0);
    swift_beginAccess();
    (*(v29 + 16))(v33, v55, v28);
    v56 = v199;

    v57 = sub_2664DFE18();
    v58 = sub_2664E06D8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v214 = v60;
      *v59 = 136446210;
      *&v223[0] = v189;
      *(&v223[0] + 1) = v56;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v61 = sub_2664E0318();
      v63 = v29;
      v64 = sub_2662A320C(v61, v62, &v214);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_26629C000, v57, v58, "PlayMediaAppSelector#select error saving report to context; no context for refId: %{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v60, -1, -1);
      MEMORY[0x266784AD0](v59, -1, -1);

      return (*(v63 + 8))(v33, v28);
    }

    else
    {

      return (*(v29 + 8))(v33, v28);
    }
  }

  v177 = v22;
  v178 = v19;
  v196 = v28;
  v209 = a5;
  if (a5)
  {
    v48 = v193;
    swift_beginAccess();
    sub_2662A5550(v48 + 96, v210);
    v49 = v29;
    v50 = v211;
    v51 = v212;
    __swift_project_boxed_opaque_existential_1(v210, v211);
    v52 = *(v51 + 160);

    v53 = v51;
    v29 = v49;
    v52(v50, v53);
    v28 = v196;
    __swift_destroy_boxed_opaque_existential_1Tm(v210);
    LODWORD(v54) = (*(v190 + 48))(v47, 1, v191) == 1;
    sub_2662A9238(v47, &qword_2800737D0, qword_2664E4FD0);
  }

  else
  {

    LODWORD(v54) = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v28, qword_280F914F0);
  swift_beginAccess();
  v67 = *(v29 + 16);
  v207 = v29 + 16;
  v208 = v66;
  v206 = v67;
  v67(v43, v66, v28);
  v68 = sub_2664DFE18();
  v69 = sub_2664E06C8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109120;
    *(v70 + 4) = v54;
    _os_log_impl(&dword_26629C000, v68, v69, "PlayMediaAppSelector#select first selected prediction?:%{BOOL}d", v70, 8u);
    MEMORY[0x266784AD0](v70, -1, -1);
  }

  v72 = *(v29 + 8);
  v71 = v29 + 8;
  v205 = v72;
  v72(v43, v28);
  v73 = v201;
  v74 = *(v201 + 152);
  if (v74)
  {
    v75 = *(v201 + 144);
    v76 = *(v201 + 152);
  }

  else
  {
    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v77 = a10;
  v78 = *(v201 + 168);
  if (!v78)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    v81 = *(v201 + 184);
    if (v81)
    {
      goto LABEL_18;
    }

LABEL_20:
    v82 = 0;
    v83 = 0xE000000000000000;
    goto LABEL_21;
  }

  v79 = *(v201 + 160);
  v80 = *(v201 + 168);
  v81 = *(v201 + 184);
  if (!v81)
  {
    goto LABEL_20;
  }

LABEL_18:
  v82 = *(v201 + 176);
  v83 = v81;
LABEL_21:
  v197 = v71;
  v84 = a15;
  v188 = a10;
  if (a10)
  {
    v85 = v192;
    v86 = a12;
    v87 = a11;
  }

  else
  {
    v85 = 0;
    v86 = 0xBFF0000000000000;
    v77 = 0xE000000000000000;
    v87 = 0xBFF0000000000000;
  }

  v187 = v81;
  v88 = a16;
  v89 = a14;
  v90 = *v200;
  v91 = *v200 == 1;
  v175 = a11;
  v176 = a12;
  v185 = a15;
  v179 = a14;
  if (v91)
  {
    v98 = 0;
    v90 = 0;
  }

  else
  {
    v170[1] = v74;
    v171 = v82;
    v173 = v78;
    v174 = a16;
    v172 = v54;
    v92 = v75;
    v93 = v76;
    v94 = v79;
    v54 = v80;
    v95 = v83;
    v96 = v85;
    v170[0] = v86;
    v97 = v87;

    v87 = v97;
    v86 = v170[0];
    v85 = v96;
    v83 = v95;
    v82 = v171;
    v80 = v54;
    v79 = v94;
    v76 = v93;
    v75 = v92;
    v89 = v179;
    v98 = v198;
    v84 = v185;
    LOBYTE(v54) = v172;
    v88 = v174;
    v73 = v201;
  }

  v99 = *(v73 + 16);
  LOBYTE(v214) = v209 != 0;
  *(&v214 + 1) = v75;
  *&v215 = v76;
  *(&v215 + 1) = v79;
  *&v216 = v80;
  *(&v216 + 1) = v82;
  *&v217 = v83;
  *(&v217 + 1) = v87;
  *&v218 = v86;
  *(&v218 + 1) = v85;
  *&v219 = v77;
  *(&v219 + 1) = v99;
  *&v220 = v90;
  BYTE8(v220) = v89 & 1;
  BYTE9(v220) = v54;
  *&v221 = v84;
  *(&v221 + 1) = a9;
  v222 = v98;
  nullsub_3(&v214);
  v100 = v203;
  swift_beginAccess();
  v101 = *(v100 + 32);
  v102 = *(v100 + 48);
  v103 = *(v100 + 80);
  v223[3] = *(v100 + 64);
  v223[4] = v103;
  v223[1] = v101;
  v223[2] = v102;
  v104 = *(v100 + 96);
  v105 = *(v100 + 112);
  v106 = *(v100 + 128);
  v224 = *(v100 + 144);
  v223[6] = v105;
  v223[7] = v106;
  v223[5] = v104;
  v223[0] = *(v100 + 16);
  *(v100 + 80) = v218;
  *(v100 + 16) = v214;
  v107 = v222;
  v109 = v220;
  v108 = v221;
  *(v100 + 96) = v219;
  *(v100 + 112) = v109;
  *(v100 + 128) = v108;
  *(v100 + 144) = v107;
  v111 = v216;
  v110 = v217;
  *(v100 + 32) = v215;
  *(v100 + 48) = v111;
  *(v100 + 64) = v110;
  v112 = v188;

  sub_2662A9238(v223, &qword_280072590, &qword_2664E3B48);
  swift_beginAccess();
  v113 = *(v100 + 184);
  *(v100 + 184) = v88;
  v114 = v88;

  v115 = v194;
  v116 = v196;
  v206(v194, v208, v196);
  v117 = v199;

  v118 = sub_2664DFE18();
  v119 = sub_2664E06E8();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v213[0] = v121;
    *v120 = 136446210;
    v210[0] = v189;
    v210[1] = v117;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v122 = sub_2664E0318();
    v124 = v112;
    v125 = sub_2662A320C(v122, v123, v213);

    *(v120 + 4) = v125;
    v112 = v124;
    _os_log_impl(&dword_26629C000, v118, v119, "PlayMediaAppSelector#select saved report to context for refId: %{public}s", v120, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v121);
    MEMORY[0x266784AD0](v121, -1, -1);
    MEMORY[0x266784AD0](v120, -1, -1);
  }

  v205(v115, v116);
  v126 = v202;
  v127 = v204;
  v128 = v195;
  v129 = v116;
  if (v209)
  {
    v206(v195, v208, v116);
    v130 = sub_2664DFE18();
    v131 = sub_2664E06C8();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_26629C000, v130, v131, "PlayMediaAppSelector#select updating selected app signal to represent app selection choice", v132, 2u);
      v133 = v132;
      v127 = v204;
      MEMORY[0x266784AD0](v133, -1, -1);
    }

    v205(v128, v116);
    if (*v200 != 1)
    {
      if (v200[1])
      {
        v135 = v200[2];
        v136 = *(v135 + 16);
        if (v136)
        {
          v137 = v135 + 32;
          *&v134 = 136315138;
          v201 = v134;
          do
          {
            sub_2662A5550(v137, v210);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
            type metadata accessor for SelectedAppSignal();
            if (swift_dynamicCast())
            {
              v138 = v213[0];
              v139 = *(v213[0] + 24);
              v140 = v129;
              v141 = v209;
              *(v213[0] + 16) = v126;
              *(v138 + 24) = v141;

              v206(v127, v208, v140);

              v142 = sub_2664DFE18();
              v143 = sub_2664E06E8();

              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v145 = swift_slowAlloc();
                v210[0] = v145;
                *v144 = v201;
                *(v144 + 4) = sub_2662A320C(v202, v141, v210);
                _os_log_impl(&dword_26629C000, v142, v143, "PlayMediaAppSelector#select updating selected app signal bundle identifier to: %s", v144, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v145);
                v146 = v145;
                v126 = v202;
                MEMORY[0x266784AD0](v146, -1, -1);
                MEMORY[0x266784AD0](v144, -1, -1);
              }

              else
              {
              }

              v127 = v204;
              v205(v204, v140);
              v129 = v140;
            }

            v137 += 40;
            --v136;
          }

          while (v136);
        }
      }
    }
  }

  v147 = v186;
  v206(v186, v208, v116);
  v148 = sub_2664DFE18();
  v149 = sub_2664E06E8();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_26629C000, v148, v149, "PlayMediaAppSelector#select NOT updating selected app signal bundle identifier as none received", v150, 2u);
    MEMORY[0x266784AD0](v150, -1, -1);
  }

  v205(v147, v129);
  if (v185 != 1)
  {
  }

  v151 = v192;
  if (v112)
  {
    v152 = v192;
  }

  else
  {
    v152 = 0;
  }

  v153 = v180;
  v154 = v179 & 1;
  sub_2664DE428();
  sub_2664DE388();
  v156 = v155;
  (*(v190 + 8))(v153, v191);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v157 = swift_allocObject();
  *(v157 + 32) = v156;
  v158 = v201;
  v159 = *(v201 + 144);
  *(v157 + 184) = *(v201 + 128);
  *(v157 + 200) = v159;
  v160 = v158[11];
  *(v157 + 216) = v158[10];
  *(v157 + 232) = v160;
  v161 = v158[5];
  *(v157 + 120) = v158[4];
  *(v157 + 136) = v161;
  v162 = v158[7];
  *(v157 + 152) = v158[6];
  *(v157 + 168) = v162;
  v163 = v158[1];
  *(v157 + 56) = *v158;
  *(v157 + 72) = v163;
  v164 = v158[3];
  *(v157 + 88) = v158[2];
  *(v157 + 16) = v152;
  *(v157 + 24) = v112;
  *(v157 + 40) = v193;
  *(v157 + 48) = v154;
  *(v157 + 104) = v164;
  *(v157 + 248) = v151;
  *(v157 + 256) = v112;
  v165 = v176;
  *(v157 + 264) = v175;
  *(v157 + 272) = v165;
  v213[4] = sub_2663BCA28;
  v213[5] = v157;
  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 1107296256;
  v213[2] = sub_2662A3F90;
  v213[3] = &block_descriptor_186;
  v166 = _Block_copy(v213);
  swift_bridgeObjectRetain_n();

  sub_2663B95AC(v158, v210);
  v167 = v181;
  sub_2664E0068();
  v210[0] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v168 = v182;
  v169 = v184;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v167, v168, v166);
  _Block_release(v166);

  (*(v178 + 8))(v168, v169);
  (*(v177 + 8))(v167, v183);
}

BOOL sub_2663B67BC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  swift_beginAccess();
  v32 = v2;
  sub_2662A5550(v2 + 96, v36);
  v11 = v37;
  v12 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v35 = (*(v12 + 184))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v14 = v4[2];
  v14(v10, v13, v3);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v8;
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v35;
    _os_log_impl(&dword_26629C000, v15, v16, "PlayMediaAppSelector#select used app selection at least %ld times", v18, 0xCu);
    v19 = v18;
    v8 = v17;
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  v20 = v4[1];
  v20(v10, v3);
  result = 0;
  if (v34 == 1 && v35 <= 10)
  {
    v14(v8, v13, v3);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v8;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "PlayMediaAppSelector#select siri caller incrementing interactions", v25, 2u);
      v26 = v25;
      v8 = v24;
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    v20(v8, v3);
    v27 = v32;
    swift_beginAccess();
    v28 = *(v27 + 120);
    v29 = *(v27 + 128);
    __swift_mutable_project_boxed_opaque_existential_1(v27 + 96, v28);
    v30 = v35;
    (*(v29 + 192))(v35 + 1, v28, v29);
    swift_endAccess();
    return v30 < *(v33 + 104);
  }

  return result;
}

uint64_t *PlayMediaAppSelector.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  sub_2662F6408((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  return v0;
}

uint64_t PlayMediaAppSelector.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  sub_2662F6408((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);

  return swift_deallocClassInstance();
}

uint64_t sub_2663B6C3C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1((*v2 + 56), *(*v2 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *v5;

  sub_26630F97C(0, 1, v7, sub_2663BCFA0, v6);
}

uint64_t AppSelectionReport.experimentId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AppSelectionReport.treatmentId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t AppSelectionReport.rolloutId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AppSelectionReport.bundleIdentifier.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_2663B6E10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073310, &unk_2664EA270);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385AA8(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000002664EA1E0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000013, 0x80000002664EA1E0, 1, v3);
  *(v0 + 24) = result;
  off_280F908B0 = v0;
  return result;
}

id sub_2663B6F24()
{
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90D38;
  qword_280F908C8 = qword_280F90D38;

  return v1;
}

uint64_t sub_2663B6F88()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280F908E0);
  *__swift_project_value_buffer(v0, qword_280F908E0) = 60;
  v1 = *MEMORY[0x277D85188];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_2663B7018(__int128 *a1, uint64_t *a2)
{
  v2 = a1[7];
  v27 = a1[6];
  v28 = v2;
  v29 = *(a1 + 16);
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 48);
  v9 = *(v6 + 80);
  v30[3] = *(v6 + 64);
  v30[4] = v9;
  v30[1] = v7;
  v30[2] = v8;
  v10 = *(v6 + 96);
  v11 = *(v6 + 112);
  v12 = *(v6 + 128);
  v31 = *(v6 + 144);
  v30[6] = v11;
  v30[7] = v12;
  v30[5] = v10;
  v30[0] = *(v6 + 16);
  v13 = v21;
  *(v6 + 80) = v25;
  *(v6 + 16) = v13;
  v14 = v29;
  v16 = v27;
  v15 = v28;
  *(v6 + 96) = v26;
  *(v6 + 112) = v16;
  *(v6 + 128) = v15;
  *(v6 + 144) = v14;
  v17 = v23;
  v18 = v24;
  *(v6 + 32) = v22;
  *(v6 + 48) = v17;
  *(v6 + 64) = v18;
  sub_2662A7224(&v21, &v20, &qword_280072590, &qword_2664E3B48);
  return sub_2662A9238(v30, &qword_280072590, &qword_2664E3B48);
}

uint64_t sub_2663B7120@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 128);
  v21 = *(v1 + 112);
  v22 = v4;
  v5 = *(v1 + 32);
  v6 = *(v1 + 64);
  v17 = *(v1 + 48);
  v7 = v17;
  v18 = v6;
  v8 = *(v1 + 64);
  v9 = *(v1 + 96);
  v19 = *(v1 + 80);
  v10 = v19;
  v20 = v9;
  v11 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v12 = v16[0];
  v16[1] = v11;
  v13 = *(v1 + 128);
  *(a1 + 96) = v21;
  *(a1 + 112) = v13;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 144);
  *a1 = v12;
  *(a1 + 16) = v5;
  return sub_2662A7224(v16, &v15, &qword_280072590, &qword_2664E3B48);
}

uint64_t sub_2663B71CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v12[6] = *(v1 + 112);
  v12[7] = v3;
  v13 = *(v1 + 144);
  v4 = *(v1 + 64);
  v12[2] = *(v1 + 48);
  v12[3] = v4;
  v5 = *(v1 + 96);
  v12[4] = *(v1 + 80);
  v12[5] = v5;
  v6 = *(v1 + 32);
  v12[0] = *(v1 + 16);
  v12[1] = v6;
  v7 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v7;
  v8 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v8;
  *(v1 + 144) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v9;
  v10 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v10;
  return sub_2662A9238(v12, &qword_280072590, &qword_2664E3B48);
}

uint64_t sub_2663B72C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[19];
  v5 = v3[20];
  v6 = v3[21];
  v7 = v3[22];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_266314294(v4);
}

uint64_t sub_2663B7314(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[19];
  v8 = v6[20];
  v9 = v6[21];
  v10 = v6[22];
  v6[19] = v2;
  v6[20] = v3;
  v6[21] = v4;
  v6[22] = v5;
  sub_266314294(v2);
  return sub_2663142F4(v7);
}

uint64_t sub_2663B73B0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_266314294(v3);
}

uint64_t sub_2663B7400(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = a1[1];
  *(v1 + 19) = *a1;
  *(v1 + 21) = v7;
  return sub_2663142F4(v3);
}

void sub_2663B74A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
  v5 = v2;
}

void *sub_2663B74FC()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

void sub_2663B7540(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t sub_2663B75D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 192);
  return result;
}

uint64_t sub_2663B761C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 192) = v2;
  return result;
}

uint64_t sub_2663B76AC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v55 = a3;
  v54 = sub_2664E0038();
  v53 = *(v54 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2664E00B8();
  v50 = *(v52 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2664E00E8();
  v47 = *(v48 - 8);
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v48);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = v45 - v16;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSelectionContext();
  v22 = swift_allocObject();
  sub_2663BCD98(v58);
  v23 = v58[7];
  *(v22 + 112) = v58[6];
  *(v22 + 128) = v23;
  *(v22 + 144) = v59;
  v24 = v58[3];
  *(v22 + 48) = v58[2];
  *(v22 + 64) = v24;
  v25 = v58[5];
  *(v22 + 80) = v58[4];
  *(v22 + 96) = v25;
  v26 = v58[1];
  *(v22 + 16) = v58[0];
  *(v22 + 32) = v26;
  *(v22 + 184) = 0;
  *(v22 + 168) = 0u;
  *(v22 + 152) = 0u;
  *(v22 + 192) = 12;
  aBlock[0] = v22;
  a1(aBlock);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  (*(v18 + 16))(v21, v27, v17);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = a5;
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v30 = 136446210;
    *(v30 + 4) = sub_2662A320C(v55, a4, aBlock);
    _os_log_impl(&dword_26629C000, v28, v29, "AppSelectionContext#sharedCompletion returning new context for refId: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v33 = v32;
    a5 = v31;
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v18 + 8))(v21, v17);
  if (qword_280F908C0 != -1)
  {
    swift_once();
  }

  v45[1] = qword_280F908C8;
  sub_2664E00C8();
  if (qword_280F908D8 != -1)
  {
    swift_once();
  }

  v34 = sub_2664E0018();
  v35 = __swift_project_value_buffer(v34, qword_280F908E0);
  v36 = v46;
  MEMORY[0x266783140](v15, v35);
  v37 = *(v47 + 8);
  v38 = v48;
  v37(v15, v48);
  v39 = swift_allocObject();
  v39[2] = v55;
  v39[3] = a4;
  v39[4] = a5;
  aBlock[4] = sub_2663BCDB4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_262;
  v40 = _Block_copy(aBlock);

  v41 = v49;
  sub_2664E0068();
  v56 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v42 = v51;
  v43 = v54;
  sub_2664E0A08();
  MEMORY[0x2667837B0](v36, v41, v42, v40);
  _Block_release(v40);
  (*(v53 + 8))(v42, v43);
  (*(v50 + 8))(v41, v52);
  v37(v36, v38);
}

uint64_t sub_2663B7D84(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_2662A320C(a1, a2, v16);
    _os_log_impl(&dword_26629C000, v10, v11, "AppSelectionContext#sharedCompletion Removing old context with refId: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  if (qword_280F908A8 != -1)
  {
    swift_once();
  }

  v16[0] = a1;
  v16[1] = a2;
  (*(*off_280F908B0 + 192))(v16);
}

uint64_t static AppSelectionContext.shared.getter()
{
  v0 = sub_2664E0018();
  v59 = *(v0 - 8);
  v60 = v0;
  v1 = *(v59 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2664E00E8();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v50 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v61 = v16 + 16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v18 = v10[2];
  v53 = v17;
  v52 = v18;
  v18(v15, v17, v9);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "AppSelectionContext#shared waiting for context...", v21, 2u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v22 = v10[1];
  v63 = v10 + 1;
  v54 = v22;
  v22(v15, v9);
  v23 = dispatch_semaphore_create(0);
  v51 = v9;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_280F90B40;
  v25 = unk_280F90B48;
  v26 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v27 = *(v24 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30);
  v31 = (*(v25 + 16))(v24, v25);
  v33 = v32;
  (*(v27 + 8))(v30, v24);
  v34 = swift_allocObject();
  *(v34 + 16) = v23;
  *(v34 + 24) = v16;
  v35 = v23;

  static AppSelectionContext.shared(refId:completion:)(v31, v33, sub_2663B9064, v34);

  v36 = v55;
  sub_2664E00C8();
  *v3 = 200;
  v38 = v59;
  v37 = v60;
  (*(v59 + 104))(v3, *MEMORY[0x277D85178], v60);
  v39 = v56;
  MEMORY[0x266783140](v36, v3);
  (*(v38 + 8))(v3, v37);
  v40 = *(v57 + 8);
  v41 = v36;
  v42 = v58;
  v40(v41, v58);
  sub_2664E0868();
  v40(v39, v42);
  v43 = v62;
  v44 = v51;
  v52(v62, v53, v51);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67109120;
    swift_beginAccess();
    *(v47 + 4) = *(v16 + 16) != 0;

    _os_log_impl(&dword_26629C000, v45, v46, "AppSelectionContext#shared retrieved context?:%{BOOL}d", v47, 8u);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  else
  {

    v45 = v35;
  }

  v54(v43, v44);
  swift_beginAccess();
  v48 = *(v16 + 16);

  return v48;
}

uint64_t sub_2663B86CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a1;

  return sub_2664E0888();
}

uint64_t AppSelectionContext.deinit()
{
  v1 = *(v0 + 128);
  v9[6] = *(v0 + 112);
  v9[7] = v1;
  v10 = *(v0 + 144);
  v2 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v2;
  v3 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v3;
  v4 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v4;
  sub_2662A9238(v9, &qword_280072590, &qword_2664E3B48);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  sub_2663142F4(*(v0 + 152));

  return v0;
}

uint64_t AppSelectionContext.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  v9[6] = *(v0 + 112);
  v9[7] = v1;
  v10 = *(v0 + 144);
  v2 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v2;
  v3 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v3;
  v4 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v4;
  sub_2662A9238(v9, &qword_280072590, &qword_2664E3B48);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  sub_2663142F4(*(v0 + 152));

  return swift_deallocClassInstance();
}

id sub_2663B8828(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    v5 = sub_2664E01A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2663B88EC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v10 = *a1;
  v11 = v7;
  v12 = v8;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v10);
}

uint64_t sub_2663B89C8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v9);
}

uint64_t sub_2663B8A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_BYTE *))
{
  v9[0] = *a1;
  v7 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = v7;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v9);
}

uint64_t _s16SiriAudioSupport20PlayMediaAppSelectorC4warm6caller10completionyAA0abF15PredictorCallerO_ySbctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a1;
    _os_log_impl(&dword_26629C000, v12, v13, "PlayMediaAppSelector#warm caller:%ld...", v14, 0xCu);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  qword_280F91CD8 = a1;
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v15 = qword_280F90760;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  _s16SiriAudioSupport5TasksV11parallelize5queue5tasks10completionySo012OS_dispatch_F0C_yyyccdyyctFZ_0(v15, &unk_2877E1AF8, sub_2663BCDC0, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072468, &qword_2664E3630);
  return swift_arrayDestroy();
}

uint64_t _s16SiriAudioSupport19AppSelectionContextC9removeAllyyFZ_0()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F908A8 != -1)
  {
    swift_once();
  }

  (*(*off_280F908B0 + 200))();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AppSelectionContext#removeAll removed all contexts", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2663B916C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2663B91B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2663B9410(_OWORD *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2663B89C8(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2663B94B8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  return v2(v6);
}

uint64_t sub_2663B94FC(uint64_t *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 240) & ~*(v3 + 80);
  return sub_2663B2D0C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + 40, *(v1 + 232), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2663B9608(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663B3B50(a1, v1[2], v1[3], v1[4], v1[5], v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663B96BC()
{
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  sub_2662A5550(qword_280F91C10, v38);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v40[0] = qword_280F905C8;
  *(v40 + 5) = *(&qword_280F905C8 + 5);
  v21 = type metadata accessor for SelfEmitter();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v37);
  *(&v34 + 1) = &type metadata for DeviceProvider;
  *&v35[0] = &protocol witness table for DeviceProvider;
  sub_266406880(&v33);
  *&v36 = &type metadata for FeatureFlagProvider;
  *(&v36 + 1) = &protocol witness table for FeatureFlagProvider;
  sub_266389EC0(v35 + 8);
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v0 = qword_280F8F808;
  v1 = type metadata accessor for CompanionDeviceProvider();
  v2 = swift_allocObject();
  v2[5] = type metadata accessor for MultiUserConnectionProvider();
  v2[6] = &protocol witness table for MultiUserConnectionProvider;
  v2[2] = v0;
  v31 = v1;
  v32 = &protocol witness table for CompanionDeviceProvider;
  *&v30 = v2;
  v3 = v39;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v20[1] = v20;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v28 = &type metadata for InstalledAppProvider;
  v29 = &protocol witness table for InstalledAppProvider;
  *&v27 = swift_allocObject();
  sub_2662B8E78(&qword_280F90278, v27 + 16);
  v26[3] = &type metadata for AppSelectionConfigurationProvider;
  v26[4] = &off_2877EDBD8;
  v25 = &protocol witness table for FeatureFlagProvider;
  v26[0] = v9;
  v24 = &type metadata for FeatureFlagProvider;
  *&v23 = v40[0];
  *(&v23 + 5) = *(v40 + 5);
  v22[3] = &type metadata for CoreAnalyticsLogger;
  v22[4] = &off_2877F2F78;
  type metadata accessor for PlayMediaAppSelector();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for AppSelectionConfigurationProvider);
  v12 = *(qword_2877EDBB8 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  __swift_mutable_project_boxed_opaque_existential_1(v22, &type metadata for CoreAnalyticsLogger);
  v16 = *v14;
  *(v10 + 80) = &type metadata for AppSelectionConfigurationProvider;
  *(v10 + 88) = &off_2877EDBD8;
  *(v10 + 56) = v16;
  *(v10 + 160) = &type metadata for CoreAnalyticsLogger;
  *(v10 + 168) = &off_2877F2F78;
  sub_2662A8618(&v27, v10 + 16);
  sub_2662A8618(&v23, v10 + 96);
  *(v10 + 176) = v21;
  *(v10 + 184) = &protocol witness table for SelfEmitter;
  sub_2662A8618(v37, v10 + 192);
  v17 = v33;
  *(v10 + 248) = v34;
  v18 = v35[1];
  *(v10 + 264) = v35[0];
  *(v10 + 280) = v18;
  *(v10 + 296) = v36;
  *(v10 + 232) = v17;
  sub_2662A8618(&v30, v10 + 312);

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v10;
}

uint64_t sub_2663B9B58(void *a1, char *a2, uint64_t (*a3)(uint64_t *), uint64_t a4)
{
  v49 = sub_2664DFE38();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v49);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v48 - v13;
  v15 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a1);
  v48[1] = a4;
  if (v16)
  {
    v17 = v16;
    v48[0] = v15;
    v50[0] = v15;
    v50[1] = v16;
    MEMORY[0x28223BE20](v15);
    v48[-2] = v50;

    v18 = sub_2662AA720(sub_2662AA7CC, &v48[-4], &unk_2877E1A00);

    if (v18)
    {
      v19 = v49;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v19, qword_280F914F0);
      swift_beginAccess();
      (*(v8 + 16))(v14, v20, v19);

      v21 = sub_2664DFE18();
      v22 = sub_2664E06C8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v19;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v51[0] = v25;
        *v24 = 136315394;
        v26 = sub_2662A320C(v48[0], v17, v51);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2080;
        v27 = MEMORY[0x2667834D0](&unk_2877E1A00, MEMORY[0x277D837D0]);
        v29 = sub_2662A320C(v27, v28, v51);

        *(v24 + 14) = v29;
        _os_log_impl(&dword_26629C000, v21, v22, "PlayMediaAppSelector#performAppSelection: NO, as: %s is in unsupported inferred bundles: %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v25, -1, -1);
        MEMORY[0x266784AD0](v24, -1, -1);

        (*(v8 + 8))(v14, v23);
      }

      else
      {

        (*(v8 + 8))(v14, v19);
      }

      LOBYTE(v51[0]) = 0;
      v46 = v51;
      return a3(v46);
    }
  }

  v30 = *a2;
  if ((*a2 & 1) != 0 && (v31 = [a1 privatePlayMediaIntentData]) != 0 && (v32 = v31, v33 = objc_msgSend(v31, sel_appInferred), v32, v33))
  {
    LODWORD(v48[0]) = [v33 BOOLValue];
  }

  else
  {
    LODWORD(v48[0]) = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = v49;
  v35 = __swift_project_value_buffer(v49, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v12, v35, v34);
  sub_2663B95AC(a2, v50);
  v36 = a1;
  v37 = sub_2664DFE18();
  v38 = sub_2664E06C8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = a3;
    v40 = swift_slowAlloc();
    *v40 = 67109632;
    *(v40 + 4) = v48[0];
    *(v40 + 8) = 1024;
    *(v40 + 10) = v30 & 1;
    sub_2663BC57C(a2);
    *(v40 + 14) = 1024;
    v41 = [v36 privatePlayMediaIntentData];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 appInferred];

      v44 = v49;
      if (v43)
      {
        v45 = [v43 BOOLValue];
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
      v44 = v49;
    }

    *(v40 + 16) = v45;

    _os_log_impl(&dword_26629C000, v37, v38, "PlayMediaAppSelector#performAppSelection: %{BOOL}d --- appSelectionEnabled: %{BOOL}d, appInferred: %{BOOL}d", v40, 0x14u);
    MEMORY[0x266784AD0](v40, -1, -1);
    a3 = v39;
  }

  else
  {

    sub_2663BC57C(a2);
    v44 = v49;
  }

  (*(v8 + 8))(v12, v44);
  LOBYTE(v50[0]) = v48[0];
  v46 = v50;
  return a3(v46);
}

uint64_t sub_2663BA168(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a2;
  v6 = sub_2664DFE08();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06B8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a4;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "PlayMediaAppSelector#performAppSelection", v20, 2u);
    v21 = v20;
    a4 = v19;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v23 = qword_280F91508;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  sub_2664DFDE8();
  v26 = v33;
  v25 = v34;
  v27 = v35;
  (*(v34 + 16))(v33, v10, v35);
  v28 = (*(v25 + 80) + 33) & ~*(v25 + 80);
  v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = "shouldPerformAppSelection";
  *(v30 + 24) = 25;
  *(v30 + 32) = 2;
  (*(v25 + 32))(v30 + v28, v26, v27);
  v31 = (v30 + v29);
  *v31 = sub_2662D2B60;
  v31[1] = v22;

  sub_2664E0848();
  sub_2664DFDC8();

  sub_2663B9B58(v36, v37, sub_2662D3010, v30);

  return (*(v25 + 8))(v10, v27);
}

unint64_t sub_2663BA58C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_2663BA678(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v82 = (&v68 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  if (!a1 || (v21 = *(a1 + 16)) == 0)
  {
    if (qword_280F914E8 == -1)
    {
LABEL_21:
      v43 = __swift_project_value_buffer(v8, qword_280F914F0);
      swift_beginAccess();
      (*(v9 + 16))(v13, v43, v8);
      v44 = sub_2664DFE18();
      v45 = sub_2664E06D8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_26629C000, v44, v45, "PlayMediaAppSelector#selectApp nil or empty results", v46, 2u);
        MEMORY[0x266784AD0](v46, -1, -1);
      }

      (*(v9 + 8))(v13, v8);
      return a2(0, 0, 0, 0);
    }

LABEL_42:
    swift_once();
    goto LABEL_21;
  }

  v79 = &v68 - v18;
  v69 = v20;
  v70 = v19;
  v73 = v9;
  v81 = v8;
  v71 = a3;
  v72 = a2;
  v22 = sub_26640C8A4(v21, 0);
  v23 = sub_26640CC9C(&v86, v22 + 4, v21, a1);
  v9 = v87;
  a2 = v88;
  v24 = v89;

  sub_2662B793C();
  if (v23 != v21)
  {
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_37;
  }

  v86 = v22;
  sub_2662DA3AC(&v86);
  v25 = v86;
  v26 = *(v86 + 2);
  v9 = v81;
  if (!v26)
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v49 = v73;
    (*(v73 + 16))(v82, v48, v9);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    v52 = os_log_type_enabled(v50, v51);
    a2 = v72;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "PlayMediaAppSelector#selectApp no top result", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    (*(v49 + 8))(v82, v9);
    return a2(0, 0, 0, 0);
  }

  v8 = *(v86 + 4);
  a2 = *(v86 + 5);
  v3 = v86[6];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = v25;
  if (!isUniquelyReferenced_nonNull_native || (v26 - 1) > *(v25 + 3) >> 1)
  {
    v25 = sub_266384CD4(isUniquelyReferenced_nonNull_native, v26, 1, v25);
    v90 = v25;
  }

  sub_2663BA58C(0, 1, 0);
  v29 = *(v25 + 2);
  v78 = a2;
  v77 = v29;
  v82 = v8;
  if (v29)
  {
    v30 = 0;
    v80 = 0x80000002664F37C0;
    v75 = (v73 + 16);
    v74 = (v73 + 8);
    v31 = v25 + 6;
    v13 = MEMORY[0x277D837D0];
    *&v28 = 136446210;
    v68 = v28;
    v76 = v25;
    while (v30 < *(v25 + 2))
    {
      v33 = *(v31 - 2);
      v32 = *(v31 - 1);
      v34 = *v31;
      v86 = v8;
      v87 = a2;
      v83 = 0x6C7070612E6D6F63;
      v84 = 0xE900000000000065;
      sub_2662C178C();
      sub_2662C17E0();

      if ((sub_2664E0278() & 1) == 0)
      {
        goto LABEL_30;
      }

      v86 = v82;
      v87 = a2;
      v83 = 0xD000000000000013;
      v84 = v80;
      if (sub_2664E0278())
      {
        goto LABEL_30;
      }

      v86 = v33;
      v87 = v32;
      v83 = 0x6C7070612E6D6F63;
      v84 = 0xE900000000000065;
      if (sub_2664E0278() & 1) == 0 || (v86 = v33, v87 = v32, v83 = 0xD000000000000013, v84 = v80, (sub_2664E0278()))
      {
LABEL_30:

        v4 = v3 / v34;
        v23 = v72;
        v9 = v81;
        v24 = v73;
        a1 = v70;
        goto LABEL_36;
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v9 = v81;
      v35 = __swift_project_value_buffer(v81, qword_280F914F0);
      swift_beginAccess();
      v36 = v79;
      (*v75)(v79, v35, v9);

      v37 = sub_2664DFE18();
      v38 = sub_2664E06E8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v86 = v40;
        *v39 = v68;
        *(v39 + 4) = sub_2662A320C(v33, v32, &v86);
        _os_log_impl(&dword_26629C000, v37, v38, "PlayMediaAppSelector#selectApp skipping top1/top2 ratio for bundle: %{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v41 = v40;
        v9 = v81;
        MEMORY[0x266784AD0](v41, -1, -1);
        v42 = v39;
        a2 = v78;
        MEMORY[0x266784AD0](v42, -1, -1);
      }

      (*v74)(v36, v9);

      v8 = v82;
      ++v30;
      v31 += 3;
      v25 = v76;
      if (v77 == v30)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_31:

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v24 = v73;
  (*(v73 + 16))(v69, v54, v9);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06C8();
  v57 = os_log_type_enabled(v55, v56);
  v23 = v72;
  a1 = v70;
  if (v57)
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = 0x4059000000000000;
    _os_log_impl(&dword_26629C000, v55, v56, "PlayMediaAppSelector#selectApp using static odds ratio %f to represent this case where there is no second-place option", v58, 0xCu);
    MEMORY[0x266784AD0](v58, -1, -1);
  }

  (*(v24 + 8))(v69, v9);
  v4 = 100.0;
LABEL_36:
  if (qword_280F914E8 != -1)
  {
    goto LABEL_44;
  }

LABEL_37:
  v59 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v24 + 16))(a1, v59, v9);

  v60 = sub_2664DFE18();
  v61 = sub_2664E06E8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v85 = v63;
    *v62 = 136446722;

    v64 = v82;
    v65 = v23;
    v66 = sub_2662A320C(v82, v78, &v85);

    *(v62 + 4) = v66;
    v23 = v65;
    *(v62 + 12) = 2050;
    *(v62 + 14) = v3;
    *(v62 + 22) = 2050;
    *(v62 + 24) = v4;
    _os_log_impl(&dword_26629C000, v60, v61, "PlayMediaAppSelector#selectApp: %{public}s, absoluteConfidence:%{public}f, oddsRatio:%{public}f", v62, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v67 = v63;
    a2 = v78;
    MEMORY[0x266784AD0](v67, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);

    (*(v24 + 8))(v70, v9);
  }

  else
  {

    (*(v24 + 8))(a1, v9);
    v64 = v82;
  }

  (v23)(v64, a2, *&v3, *&v4);
}

void sub_2663BB1DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v33 = a5;
  v10 = *a1;
  v11 = a1[1];
  v30 = a2;
  v31 = a3;
  v32 = a4;
  sub_266449720(&type metadata for UserContextSignal, aBlock);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      v12 = v30;
      if (*(v30 + 16))
      {
        v13 = sub_2662A3E98(v10, v11);
        if (v14)
        {
          v15 = *(*(v12 + 56) + 8 * v13);

          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    sub_2662A9238(aBlock, &unk_280073AB0, &qword_2664EA238);
  }

  v15 = 0;
LABEL_9:
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v16 = type metadata accessor for NowPlayingUsageSignal();
  sub_266449720(v16, aBlock);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      v17 = v30;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_2662A9238(aBlock, &unk_280073AB0, &qword_2664EA238);
    v17 = 0;
  }

  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  sub_266449720(NowPlayingSignal, aBlock);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      v19 = v30;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_2662A9238(aBlock, &unk_280073AB0, &qword_2664EA238);
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v17;
  v20[5] = v19;
  v20[6] = 0;
  v20[7] = v15;
  v21 = v15;

  v22 = sub_2664E02A8();
  v28 = sub_2663BC10C;
  v29 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663B8828;
  v27 = &block_descriptor_84;
  v23 = _Block_copy(aBlock);

  v24 = AnalyticsSendEventLazy();
  _Block_release(v23);

  *a6 &= v24 & 1;
}

uint64_t sub_2663BB538(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v38 = a4;
  v34 = a2;
  v6 = sub_2664DFE08();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v39 = *(a1 + 8);
  v10 = *(a1 + 24);
  v32 = *(a1 + 16);
  v31 = v10;
  v11 = v9[2];
  v33 = v9;
  if (v11)
  {
    v12 = sub_26640C820(v11, 0);
    v13 = sub_26640C9BC(&v45, v12 + 4, v11, v9);

    sub_2662B793C();
    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_5:
  v14 = v12[2];
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v30 = a3;
    *&v44[0] = MEMORY[0x277D84F90];
    v15 = v44;
    sub_2664E0BC8();
    a3 = 0;
    v16 = v39[2];
    v42 = v14;
    v43 = v12 + 4;
    v40 = v39 + 4;
    v41 = v12;
    while (a3 < v12[2])
    {
      v18 = &v43[2 * a3];
      v20 = *v18;
      v19 = v18[1];
      type metadata accessor for PlayMediaAppSelectionInput();
      v21 = swift_allocObject();
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0u;
      *(v21 + 64) = 0u;
      *(v21 + 80) = 0u;
      *(v21 + 96) = 0u;
      *(v21 + 112) = 0u;
      *(v21 + 128) = 0u;
      *(v21 + 144) = 0xE000000000000000;
      *(v21 + 168) = 0u;
      *(v21 + 184) = 0u;
      *(v21 + 200) = 0u;
      *(v21 + 216) = 0u;
      *(v21 + 232) = 0u;
      *(v21 + 248) = 0u;
      *(v21 + 280) = 0;
      *(v21 + 152) = 0u;
      *(v21 + 264) = 0u;
      if (v16)
      {

        v22 = v40;
        v23 = v16;
        v24 = v16;
        do
        {
          sub_2662A5550(v22, &v45);
          v26 = *(&v46 + 1);
          v25 = v47;
          __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
          (*(v25 + 40))(v20, v19, v21, v26, v25);
          __swift_destroy_boxed_opaque_existential_1Tm(&v45);
          v22 += 40;
          --v24;
        }

        while (v24);

        v12 = v41;
        v14 = v42;
        v16 = v23;
      }

      ++a3;
      v15 = v44;
      sub_2664E0B98();
      v17 = *(*&v44[0] + 16);
      sub_2664E0BD8();
      sub_2664E0BE8();
      sub_2664E0BA8();
      if (a3 == v14)
      {
        v15 = *&v44[0];
        a3 = v30;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  if (qword_280F91508 != -1)
  {
LABEL_17:
    swift_once();
  }

  v27 = qword_280F91D48;
  v28 = v35;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_2663B1D68(v12, v34, v15, v33, v39, v32, v31, &v45);

  sub_2664E0838();
  sub_2664DFDD8();
  (*(v36 + 8))(v28, v37);
  v44[0] = v45;
  v44[1] = v46;
  v44[2] = v47;
  (a3)(v44);
  return sub_2663BB994(*&v44[0], *(&v44[0] + 1));
}

uint64_t sub_2663BB994(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {

    sub_2663142F4(a2);
  }

  return result;
}

uint64_t sub_2663BBA0C(_OWORD *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v51 - v7);
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (!v17)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_5:
    v63[0] = v14;
    v63[1] = v15;
    sub_2664DE428();
    v23 = AppSelectionSignals.RawSignalResult.recordableResult(start:test:)(v13, 0);
    (*(v10 + 8))(v13, v9);
    v24 = *&v23[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows];

    if (qword_280F914E8 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v25 = v57;
      v26 = __swift_project_value_buffer(v57, qword_280F914F0);
      swift_beginAccess();
      v60 = *(v58 + 16);
      v61 = (v58 + 16);
      v60(v8, v26, v25);

      v27 = sub_2664DFE18();
      v28 = sub_2664E06E8();

      v29 = os_log_type_enabled(v27, v28);
      *&v55 = v22;
      *&v54 = v26;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v62 = v31;
        *v30 = 136315138;
        v32 = MEMORY[0x2667834D0](v22, MEMORY[0x277D837D0]);
        v34 = sub_2662A320C(v32, v33, &v62);
        v22 = v55;

        *(v30 + 4) = v34;
        _os_log_impl(&dword_26629C000, v27, v28, "PlayMediaAppSelector#rawPredict (async) bundles: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x266784AD0](v31, -1, -1);
        v35 = v30;
        v26 = v54;
        MEMORY[0x266784AD0](v35, -1, -1);
      }

      v36 = *(v58 + 8);
      v36(v8, v25);
      v38 = v56;
      v59 = *(v22 + 16);
      if (!v59)
      {
LABEL_17:
      }

      v39 = 0;
      v58 += 8;
      v8 = (v22 + 40);
      *&v37 = 136446978;
      v53 = v37;
      v52 = v36;
      while (1)
      {
        v60(v38, v26, v25);

        v40 = sub_2664DFE18();
        v41 = sub_2664E06E8();

        if (os_log_type_enabled(v40, v41))
        {
          break;
        }

        v36(v38, v25);
LABEL_11:
        ++v39;
        v8 += 2;
        if (v59 == v39)
        {
          goto LABEL_17;
        }
      }

      v22 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v62 = v42;
      *v22 = v53;
      if (qword_280F8F6B0 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v62);
      *(v22 + 12) = 2048;
      *(v22 + 14) = v39;
      *(v22 + 22) = 2082;
      v44 = *(v8 - 1);
      v43 = *v8;

      v45 = sub_2662A320C(v44, v43, &v62);

      *(v22 + 24) = v45;
      *(v22 + 32) = 2080;
      if (v39 < *(v24 + 16))
      {
        break;
      }

      __break(1u);
LABEL_19:
      swift_once();
    }

    v46 = *(v24 + 8 * v39 + 32);

    v47 = sub_2664E01D8();
    v49 = v48;

    v50 = sub_2662A320C(v47, v49, &v62);
    v25 = v57;

    *(v22 + 34) = v50;
    _os_log_impl(&dword_26629C000, v40, v41, "PlayMediaAppSelector#rawPredict (async) %{public}s for candidate %ld: %{public}s, signals: %s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    v38 = v56;
    v36 = v52;
    v52(v56, v25);
    v26 = v54;
    goto LABEL_11;
  }

  v54 = v15;
  v55 = v14;
  v59 = v9;
  v18 = v8;
  v19 = sub_26640C820(v17, 0);
  v20 = sub_26640C9BC(v63, v19 + 4, v17, v16);
  v60 = v64;
  v61 = v20;

  result = sub_2662B793C();
  if (v61 == v17)
  {
    v22 = v19;
    v8 = v18;
    v9 = v59;
    v15 = v54;
    v14 = v55;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_62Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];

  v6 = v2[3];

  v7 = v2[4];

  v8 = v2[5];

  a1(v2[6]);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_2663BC138(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2663B8A9C(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2663BC1E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6[0] = *a1;
  v4 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v4;
  return v2(v6);
}

uint64_t sub_2663BC23C()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + v3);
  v10 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2663EFDCC(v4, v5, v6, v7, v8, v0 + v2, v9, v10);
}

uint64_t sub_2663BC2E0()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v0 + 64);
  v15[0] = *(v0 + 48);
  v15[1] = v13;
  v16 = *(v0 + 80);
  return sub_2663F1638(v4, v5, v7, v8, v15, v0 + v2, v6, v10, v11, v12);
}

uint64_t sub_2663BC3B0(uint64_t a1)
{
  v2 = type metadata accessor for SelfSamplingCalculator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2663BC420(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  return sub_2663A85C8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC4CC(char a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 249) & ~*(v3 + 80);
  return sub_2663A87DC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + 48), *(v1 + 240), *(v1 + 248), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC5D0(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 249) & ~*(v3 + 80);
  return sub_2663A8CBC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + 48), *(v1 + 240), *(v1 + 248), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC684(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_2663B88EC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *v5);
}

uint64_t sub_2663BC724(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return v2(&v7);
}

uint64_t sub_2663BC770(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 199) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8));
  return sub_2663A9934(a1, v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), (v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_2663BC85C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_2664DE438() - 8);
  v10 = (*(v9 + 80) + 224) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663AB678(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + 32, (v4 + v10), (v4 + v11), *(v4 + ((v11 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2663BC950()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 215) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663AAA8C(*(v0 + 16), *(v0 + 24), (v0 + 32), *(v0 + 80), *(v0 + 88), v0 + v2, (v0 + v3), *(v0 + ((v3 + 199) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + ((v3 + 199) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_2663BCA28()
{
  v1 = v0[4];
  v3 = v0[34];
  sub_2663B479C(v0[2], v0[3], v0[5], v0[6], v0 + 7, v0[31], v0[32], v0[33]);
  return result;
}

uint64_t objectdestroy_156Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  v6 = *(v0 + 192);

  v7 = *(v0 + 208);

  v8 = *(v0 + 224);

  v9 = *(v0 + 248);

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

double sub_2663BCAEC()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 248);
  sub_2663B5040(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33), *(v0 + 34), *(v0 + 35), (v0 + 40), *(v0 + 232));
  return result;
}

uint64_t objectdestroy_162Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + 48);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 176);

  v11 = *(v0 + 184);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 240);

  v15 = *(v0 + 256);

  if (*(v0 + 280) != 1)
  {

    if (*(v0 + 288))
    {

      v16 = *(v0 + 296);

      v17 = *(v0 + 304);

      v18 = *(v0 + 312);
    }

    v19 = *(v0 + 320);
  }

  v20 = (v3 + 360) & ~v3;

  (*(v2 + 8))(v0 + v20, v1);

  return MEMORY[0x2821FE8E8](v0, v20 + v4, v3 | 7);
}

uint64_t sub_2663BCC94(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v5 = v1 + ((*(v3 + 80) + 360) & ~*(v3 + 80));
  return sub_2663B5720(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + 56, *(v1 + 248), *(v1 + 344), *(v1 + 256), *(v1 + 264), *(v1 + 272), (v1 + 280), *(v1 + 328), *(v1 + 336), *(v1 + 352));
}

double sub_2663BCD98(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2663BCDC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t get_enum_tag_for_layout_string_16SiriAudioSupport19AppSelectionSignalsV15RawSignalResultVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2663BCE34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2663BCE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_2663BD108(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2664DE208();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_2664DE268();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_2664DE1A8();

    swift_willThrow();
    v9 = sub_2664DE268();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2663BD260()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000021, 0x80000002664EA3E0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F91C38 = v10;
  return result;
}

id sub_2663BD3F8()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_280F91C40 = result;
  return result;
}

void sub_2663BD438()
{
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280F905C8;
  v1 = BYTE1(qword_280F905C8);
  v2 = BYTE2(qword_280F905C8);
  v3 = BYTE3(qword_280F905C8);
  v4 = BYTE4(qword_280F905C8);
  v5 = BYTE5(qword_280F905C8);
  v6 = BYTE6(qword_280F905C8);
  v7 = HIBYTE(qword_280F905C8);
  v8 = byte_280F905D0;
  v9 = byte_280F905D1;
  v10 = byte_280F905D2;
  v11 = byte_280F905D3;
  v12 = byte_280F905D4;
  if (qword_280F8F708 != -1)
  {
    v35 = byte_280F905D0;
    v33 = byte_280F905D3;
    v34 = byte_280F905D4;
    v32 = byte_280F905D2;
    swift_once();
    v10 = v32;
    v11 = v33;
    v12 = v34;
    v8 = v35;
  }

  v13 = 256;
  if (v1)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFFFELL | v0 & 1;
  if (v2)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v3)
  {
    v17 = 0x1000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v15 | v16 | v17;
  if (v4)
  {
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0x10000000000;
  if ((v5 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = 0x1000000000000;
  if ((v6 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = v19 | v20;
  if (v7)
  {
    v23 = 0x100000000000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = v18 | v22 | v21;
  if ((v9 & 1) == 0)
  {
    v13 = 0;
  }

  v25 = v13 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  if (v10)
  {
    v26 = 0x10000;
  }

  else
  {
    v26 = 0;
  }

  if (v11)
  {
    v27 = 0x1000000;
  }

  else
  {
    v27 = 0;
  }

  v28 = v25 | v26 | v27;
  if (v12)
  {
    v29 = 0x100000000;
  }

  else
  {
    v29 = 0;
  }

  v30 = qword_280F91C40;
  v31 = sub_2663BF4FC(v24 | v23, v28 | v29, v30, 0xD000000000000018, 0x80000002664F6ED0, 1);

  qword_280F91C28 = &type metadata for AppSelectionConfigurationProvider;
  unk_280F91C30 = &off_2877EDBD8;
  qword_280F91C10 = v31;
}

uint64_t sub_2663BD630(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = a3;
  v32 = sub_2664DFE08();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v32);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2663BFB78;
  *(v14 + 24) = v13;
  v15 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v34[3] = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  v34[4] = &off_2877EDD88;
  v34[0] = v17;
  v34[1] = v16;
  v34[2] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2663BFBDC;
  *(v19 + 24) = v14;
  v20 = qword_280F91508;

  v21 = v17;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  v23 = v12;
  sub_2664DFDE8();
  v24 = v12;
  v25 = v32;
  (*(v7 + 16))(v10, v24, v32);
  v26 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = "appSelectionConfigurationProviderLoad";
  *(v28 + 24) = 37;
  *(v28 + 32) = 2;
  (*(v7 + 32))(v28 + v26, v10, v25);
  v29 = (v28 + v27);
  *v29 = sub_2663BFB78;
  v29[1] = v19;

  sub_2664E0848();
  sub_2664DFDC8();
  sub_2663BFD28(v34, v33, sub_2663BFC80, v28);

  (*(v7 + 8))(v23, v25);

  return __swift_destroy_boxed_opaque_existential_1Tm(v34);
}

uint64_t sub_2663BD998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  swift_unknownObjectRetain();
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v20[0] = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446466;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v21);
    *(v14 + 12) = 2080;
    v20[1] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073330, &unk_2664EA450);
    v16 = sub_2664E0318();
    v18 = sub_2662A320C(v16, v17, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_26629C000, v12, v13, "AppSelectionConfigurationProvider#updatedHandler %{public}s new configuration available: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v7 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return sub_266488278(a3, 0);
}

uint64_t sub_2663BDC88(uint64_t a1, const char *a2)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v14);
    _os_log_impl(&dword_26629C000, v9, v10, a2, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2663BDEB0(__int128 *a1, void (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = a1[9];
  v56 = a1[8];
  v57 = v11;
  v12 = a1[11];
  v58 = a1[10];
  v59 = v12;
  v13 = a1[5];
  v52 = a1[4];
  v53 = v13;
  v14 = a1[7];
  v54 = a1[6];
  v55 = v14;
  v15 = a1[1];
  v48 = *a1;
  v49 = v15;
  v16 = a1[3];
  v50 = a1[2];
  v51 = v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v30 = v5[2];
  v30(v10, v17, v4);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v17;
    v21 = a2;
    v22 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "AppSelectionConfigurationProvider#updatedHandler loaded configuration", v20, 2u);
    v23 = v22;
    a2 = v21;
    v17 = v31;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = v5[1];
  v24(v10, v4);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  if (sub_2663BF388(&v35) == 1)
  {
    v30(v32, v17, v4);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "AppSelectionConfigurationProvider#updatedHandler unexpected nil configuration", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v24(v32, v4);
    result = sub_2664E0C48();
    __break(1u);
  }

  else
  {
    v47[8] = v43;
    v47[9] = v44;
    v47[10] = v45;
    v47[11] = v46;
    v47[4] = v39;
    v47[5] = v40;
    v47[6] = v41;
    v47[7] = v42;
    v47[0] = v35;
    v47[1] = v36;
    v47[2] = v37;
    v47[3] = v38;
    v34[8] = v56;
    v34[9] = v57;
    v34[10] = v58;
    v34[11] = v59;
    v34[4] = v52;
    v34[5] = v53;
    v34[6] = v54;
    v34[7] = v55;
    v34[0] = v48;
    v34[1] = v49;
    v34[2] = v50;
    v34[3] = v51;
    sub_2663B95AC(v34, &v33);
    a2(v47);
    return sub_2663BF3A0(&v48);
  }

  return result;
}

uint64_t sub_2663BE2B0@<X0>(uint64_t *a1@<X8>)
{
  v74 = a1;
  v1 = sub_2664DE268();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v73 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v59 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v25 = &v59 - v24;
  if (v26)
  {
    v69 = v8;
    v63 = v23;
    v64 = v22;
    sub_2664DE1F8();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v28 = *(v15 + 16);
    v67 = v15 + 16;
    v68 = v27;
    v66 = v28;
    v28(v21, v27, v14);
    v29 = v2;
    v30 = v2[2];
    v71 = v13;
    v65 = v30;
    v30(v11, v13, v1);
    v31 = v15;
    v32 = sub_2664DFE18();
    v33 = sub_2664E06E8();
    v34 = os_log_type_enabled(v32, v33);
    v70 = v2;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v75 = v60;
      *v35 = 136315138;
      sub_2663C12D0();
      v61 = v31;
      v36 = sub_2664E0D48();
      v62 = v14;
      v38 = v37;
      v72 = v29[1];
      v72(v11, v1);
      v39 = sub_2662A320C(v36, v38, &v75);
      v14 = v62;

      *(v35 + 4) = v39;
      _os_log_impl(&dword_26629C000, v32, v33, "AppSelectionConfigurationProvider#load using path for model: %s", v35, 0xCu);
      v40 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      v41 = *(v61 + 8);
    }

    else
    {

      v72 = v2[1];
      v72(v11, v1);
      v41 = *(v31 + 8);
    }

    v41(v21, v14);
    v47 = v1;
    v48 = v69;
    v49 = v71;
    v50 = v65;
    v65(v69, v71, v1);
    sub_2663C1284();
    v51 = v73;
    v50(v73, v48, v47);
    v52 = sub_2663BD108(v51);
    v72(v48, v47);
    type metadata accessor for PlayMediaAppSelection();
    v58 = swift_allocObject();
    *(v58 + 16) = v52;
    v53 = v63;
    v66(v63, v68, v14);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "AppSelectionConfigurationProvider#load loaded model", v56, 2u);
      v57 = v56;
      v49 = v71;
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v41(v53, v14);
    result = (v72)(v49, v47);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v25, v42, v14);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "AppSelectionConfigurationProvider#load invalid model path", v45, 2u);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    result = (*(v15 + 8))(v25, v14);
    v58 = 0;
  }

  *v74 = v58;
  return result;
}

void sub_2663BEB08(void *a1)
{
  v40 = sub_2664DE098();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E02A8();
  v7 = sub_2664E02A8();
  v8 = [a1 levelForFactor:v6 withNamespaceName:v7];

  if (v8)
  {
    v9 = [v8 stringValue];

    if (v9)
    {
      v10 = sub_2664E02C8();
      v12 = v11;

      *&v41 = v10;
      *(&v41 + 1) = v12;
      sub_2662D2EBC();
      v13 = sub_2664E09C8();

      v14 = v13;
      v39 = *(v13 + 16);
      if (v39)
      {
        v15 = 0;
        v16 = (v2 + 8);
        v17 = (v13 + 56);
        v18 = MEMORY[0x277D84F90];
        v19 = v14;
        while (v15 < *(v14 + 16))
        {
          v20 = *(v17 - 1);
          v21 = *v17;
          v41 = *(v17 - 3);
          v42 = v20;
          v43 = v21;

          sub_2664DE088();
          sub_2663C1328();
          v22 = sub_2664E0988();
          v24 = v23;
          (*v16)(v5, v40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2663846F4(0, *(v18 + 2) + 1, 1, v18);
          }

          v26 = *(v18 + 2);
          v25 = *(v18 + 3);
          if (v26 >= v25 >> 1)
          {
            v18 = sub_2663846F4((v25 > 1), v26 + 1, 1, v18);
          }

          ++v15;
          *(v18 + 2) = v26 + 1;
          v27 = &v18[16 * v26];
          *(v27 + 4) = v22;
          *(v27 + 5) = v24;
          v17 += 4;
          v14 = v19;
          if (v39 == v15)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
LABEL_14:

        v29 = 0;
        v30 = *(v18 + 2);
        v28 = MEMORY[0x277D84F90];
LABEL_15:
        v31 = &v18[16 * v29 + 40];
        while (1)
        {
          if (v30 == v29)
          {

            goto LABEL_27;
          }

          if (v29 >= *(v18 + 2))
          {
            break;
          }

          ++v29;
          v33 = *(v31 - 1);
          v32 = *v31;
          v31 += 16;
          v34 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v34 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v41 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2662FCF24(0, *(v28 + 16) + 1, 1);
              v28 = v41;
            }

            v37 = *(v28 + 16);
            v36 = *(v28 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_2662FCF24((v36 > 1), v37 + 1, 1);
              v28 = v41;
            }

            *(v28 + 16) = v37 + 1;
            v38 = v28 + 16 * v37;
            *(v38 + 32) = v33;
            *(v38 + 40) = v32;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_27:
    sub_26639EB98(v28);
  }
}

void sub_2663BEEC0(void *a1)
{
  v40 = sub_2664DE098();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E02A8();
  v7 = sub_2664E02A8();
  v8 = [a1 levelForFactor:v6 withNamespaceName:v7];

  if (v8)
  {
    v9 = [v8 stringValue];

    if (v9)
    {
      v10 = sub_2664E02C8();
      v12 = v11;

      *&v41 = v10;
      *(&v41 + 1) = v12;
      sub_2662D2EBC();
      v13 = sub_2664E09C8();

      v14 = v13;
      v39 = *(v13 + 16);
      if (v39)
      {
        v15 = 0;
        v16 = (v2 + 8);
        v17 = (v13 + 56);
        v18 = MEMORY[0x277D84F90];
        v19 = v14;
        while (v15 < *(v14 + 16))
        {
          v20 = *(v17 - 1);
          v21 = *v17;
          v41 = *(v17 - 3);
          v42 = v20;
          v43 = v21;

          sub_2664DE088();
          sub_2663C1328();
          v22 = sub_2664E0988();
          v24 = v23;
          (*v16)(v5, v40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2663846F4(0, *(v18 + 2) + 1, 1, v18);
          }

          v26 = *(v18 + 2);
          v25 = *(v18 + 3);
          if (v26 >= v25 >> 1)
          {
            v18 = sub_2663846F4((v25 > 1), v26 + 1, 1, v18);
          }

          ++v15;
          *(v18 + 2) = v26 + 1;
          v27 = &v18[16 * v26];
          *(v27 + 4) = v22;
          *(v27 + 5) = v24;
          v17 += 4;
          v14 = v19;
          if (v39 == v15)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
LABEL_14:

        v29 = 0;
        v30 = *(v18 + 2);
        v28 = MEMORY[0x277D84F90];
LABEL_15:
        v31 = &v18[16 * v29 + 40];
        while (1)
        {
          if (v30 == v29)
          {

            goto LABEL_27;
          }

          if (v29 >= *(v18 + 2))
          {
            break;
          }

          ++v29;
          v33 = *(v31 - 1);
          v32 = *v31;
          v31 += 16;
          v34 = HIBYTE(v32) & 0xF;
          if ((v32 & 0x2000000000000000) == 0)
          {
            v34 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (v34)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v41 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2662FCF24(0, *(v28 + 16) + 1, 1);
              v28 = v41;
            }

            v37 = *(v28 + 16);
            v36 = *(v28 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_2662FCF24((v36 > 1), v37 + 1, 1);
              v28 = v41;
            }

            *(v28 + 16) = v37 + 1;
            v38 = v28 + 16 * v37;
            *(v38 + 32) = v33;
            *(v38 + 40) = v32;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_27:
    sub_26639EB98(v28);
  }
}

uint64_t sub_2663BF278(void *a1)
{
  v2 = sub_2664E02A8();
  v3 = sub_2664E02A8();
  v4 = [a1 levelForFactor:v2 withNamespaceName:v3];

  v5 = [v4 directoryValue];
  if (v5)
  {
    if ([v5 hasPath])
    {
      v6 = [v5 path];
      if (v6)
      {
        v7 = v6;
        v8 = sub_2664E02C8();

        return v8;
      }
    }
  }

  return 0;
}

uint64_t sub_2663BF388(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2663BF3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2663BF408(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = a1[9];
  v14[8] = a1[8];
  v14[9] = v7;
  v8 = a1[11];
  v14[10] = a1[10];
  v14[11] = v8;
  v9 = a1[5];
  v14[4] = a1[4];
  v14[5] = v9;
  v10 = a1[7];
  v14[6] = a1[6];
  v14[7] = v10;
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  v12 = a1[3];
  v14[2] = a1[2];
  v14[3] = v12;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v14);
}

uint64_t sub_2663BF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &aBlock - v18;
  v53 = &type metadata for FeatureFlagProvider;
  v54 = &protocol witness table for FeatureFlagProvider;
  v52 = BYTE4(a2);
  v51 = a2;
  v49[4] = &off_2877EDD88;
  v50 = a1;
  v49[0] = a3;
  v49[1] = a4;
  v49[2] = a5;
  v49[3] = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  sub_2662A5550(&v50, &aBlock);
  sub_2662A5550(v49, v48);
  v20 = swift_allocObject();
  sub_2662A8618(&aBlock, v20 + 16);
  sub_2662A8618(v48, v20 + 56);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073328, &unk_2664EA440);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_2662ED0F0(0xD000000000000026, 0x80000002664F6EF0, sub_2663BFB0C, v20);

  v25 = qword_280F914E8;
  if (a6)
  {

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v26, v12);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "AppSelectionConfigurationProvider#updatedHandler enabled...", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    if (qword_280F8F708 != -1)
    {
      swift_once();
    }

    v30 = qword_280F91C40;
    v31 = sub_2664E02A8();
    if (qword_280F8F700 != -1)
    {
      swift_once();
    }

    v32 = qword_280F91C38;
    v46 = sub_2663BFB18;
    v47 = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v44 = sub_2664D5614;
    v45 = &block_descriptor_25;
    v33 = _Block_copy(&aBlock);

    v34 = [v30 addUpdateHandlerForNamespaceName:v31 queue:v32 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();

    v35 = sub_2664E02A8();
    v46 = sub_2663BFB48;
    v47 = v24;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v44 = sub_2664D5614;
    v45 = &block_descriptor_4;
    v36 = _Block_copy(&aBlock);

    v37 = [v30 addUpdateHandlerForNamespaceName:v35 queue:v32 usingBlock:v36];
    _Block_release(v36);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v38, v12);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06E8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "AppSelectionConfigurationProvider#updatedHandler disabled", v41, 2u);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    (*(v13 + 8))(v17, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return v24;
}

uint64_t sub_2663BFB78(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[9];
  v11[8] = a1[8];
  v11[9] = v4;
  v5 = a1[11];
  v11[10] = a1[10];
  v11[11] = v5;
  v6 = a1[5];
  v11[4] = a1[4];
  v11[5] = v6;
  v7 = a1[7];
  v11[6] = a1[6];
  v11[7] = v7;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v9 = a1[3];
  v11[2] = a1[2];
  v11[3] = v9;
  return v2(v11);
}

uint64_t sub_2663BFBDC(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[9];
  v20 = a1[8];
  v21 = v4;
  v5 = a1[11];
  v22 = a1[10];
  v23 = v5;
  v6 = a1[5];
  v16 = a1[4];
  v17 = v6;
  v7 = a1[7];
  v18 = a1[6];
  v19 = v7;
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v9 = a1[3];
  v14 = a1[2];
  v15 = v9;
  nullsub_3(&v12);
  v11[8] = v20;
  v11[9] = v21;
  v11[10] = v22;
  v11[11] = v23;
  v11[4] = v16;
  v11[5] = v17;
  v11[6] = v18;
  v11[7] = v19;
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  return v2(v11);
}

uint64_t sub_2663BFC80(_OWORD *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2663BF408(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2663BFD28(void *a1, void *a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v245 = a4;
  v246 = a3;
  v257 = a2;
  v5 = sub_2664DFE08();
  v237 = *(v5 - 8);
  v238 = v5;
  v6 = *(v237 + 64);
  MEMORY[0x28223BE20](v5);
  v236 = &v236 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  isa = v9[8].isa;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v236 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v240 = &v236 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v236 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v19 = v9[2].isa;
  v259 = v9 + 2;
  v260 = v18;
  v258 = v19;
  v19(v17, v18, v8);
  v20 = v9;
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  v23 = os_log_type_enabled(v21, v22);
  v253 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v266 = v25;
    *v24 = 136446210;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v24 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v266);
    _os_log_impl(&dword_26629C000, v21, v22, "AppSelectionConfigurationProvider#load %{public}s loading configuration...", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);

    v26 = v253;
  }

  else
  {

    v26 = v20;
  }

  v262 = v26[1].isa;
  v262(v17, v8);
  v255 = v13;
  if (qword_280F8F708 != -1)
  {
    swift_once();
  }

  v27 = qword_280F91C40;
  v241 = [qword_280F91C40 newTrackingId];
  v28 = sub_2664E02A8();
  v29 = [v27 experimentIdWithNamespaceName_];

  if (v29)
  {
    v254 = sub_2664E02C8();
    v261 = v30;
  }

  else
  {
    v254 = 0;
    v261 = 0;
  }

  v31 = sub_2664E02A8();
  v32 = [v27 treatmentIdWithNamespaceName_];

  if (v32)
  {
    v244 = sub_2664E02C8();
    v34 = v33;
  }

  else
  {
    v244 = 0;
    v34 = 0;
  }

  v256 = v34;
  v35 = sub_2664E02A8();
  v36 = [v27 rolloutIdWithNamespaceName_];

  v263 = v8;
  if (v36)
  {
    v37 = sub_2664E02C8();
    v264 = v38;
  }

  else
  {
    v37 = 0;
    v264 = 0;
  }

  v39 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  v43 = sub_2664E02A8();
  v44 = sub_2664E02A8();
  v45 = [v40 levelForFactor:v43 withNamespaceName:v44];

  if (v45)
  {
    [v45 doubleValue];
    v47 = v46;
  }

  else
  {
    v47 = 2.0;
  }

  v48 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = *v48;
  v50 = v48[1];
  v51 = v48[2];
  v52 = sub_2664E02A8();
  v53 = sub_2664E02A8();
  v54 = [v49 levelForFactor:v52 withNamespaceName:v53];

  if (v54)
  {
    [v54 &selRef_assetInfo];
    v56 = v55;
  }

  else
  {
    v56 = 1.0;
  }

  v57 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v58 = v57[1];
  v59 = v57[2];
  v239 = sub_2663BF278(*v57);
  v247 = v60;
  v61 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = v61[1];
  v63 = v61[2];
  sub_2663BEB08(*v61);
  v248 = v64;
  v65 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v66 = v65[1];
  v67 = v65[2];
  sub_2663BEEC0(*v65);
  v242 = v68;
  v69 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v70 = *v69;
  v71 = v69[1];
  v72 = v69[2];
  v73 = sub_2664E02A8();
  v74 = sub_2664E02A8();
  v75 = [v70 levelForFactor:v73 withNamespaceName:v74];

  if (v75)
  {
    [v75 &selRef_assetInfo];
    v77 = v76;
  }

  else
  {
    v77 = 2.0;
  }

  v78 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v79 = *v78;
  v80 = v78[1];
  v81 = v78[2];
  v82 = sub_2664E02A8();
  v83 = sub_2664E02A8();
  v84 = [v79 levelForFactor:v82 withNamespaceName:v83];

  v243 = v37;
  if (v84)
  {
    v85 = [v84 longValue];
  }

  else
  {
    v85 = 3;
  }

  v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v252 = [v86 integerValue];

  v87 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v88 = *v87;
  v89 = v87[1];
  v90 = v87[2];
  v91 = sub_2664E02A8();
  v92 = sub_2664E02A8();
  v93 = [v88 levelForFactor:v91 withNamespaceName:v92];

  if (v93)
  {
    [v93 &selRef_assetInfo];
    v95 = v94;
  }

  else
  {
    v95 = 0x3F669E3C968943E1;
  }

  v96 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v97 = *v96;
  v98 = v96[1];
  v99 = v96[2];
  v100 = sub_2664E02A8();
  v101 = sub_2664E02A8();
  v102 = [v97 levelForFactor:v100 withNamespaceName:v101];

  if (v102)
  {
    [v102 &selRef_assetInfo];
    v104 = v103;
  }

  else
  {
    v104 = 0x3FA28A1DFB9389B5;
  }

  v105 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v106 = *v105;
  v107 = v105[1];
  v108 = v105[2];
  v109 = sub_2664E02A8();
  v110 = sub_2664E02A8();
  v111 = [v106 levelForFactor:v109 withNamespaceName:v110];

  if (v111)
  {
    v112 = [v111 &selRef_entitySearchBundleRecencyS];
  }

  else
  {
    v112 = 10510001;
  }

  v113 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v251 = [v113 integerValue];

  v114 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v115 = *v114;
  v116 = v114[1];
  v117 = v114[2];
  v118 = sub_2664E02A8();
  v119 = sub_2664E02A8();
  v120 = [v115 levelForFactor:v118 withNamespaceName:v119];

  if (v120)
  {
    v250 = [v120 BOOLeanValue];
  }

  else
  {
    v250 = 1;
  }

  v121 = v257;
  v122 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v123 = *v122;
  v124 = v122[1];
  v125 = v122[2];
  v126 = sub_2664E02A8();
  v127 = sub_2664E02A8();
  v128 = [v123 levelForFactor:v126 withNamespaceName:v127];

  if (v128)
  {
    [v128 &selRef_assetInfo];
    v130 = v129;
  }

  else
  {
    v130 = 0x3FDA814940BBB1F2;
  }

  v131 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v132 = *v131;
  v133 = v131[1];
  v134 = v131[2];
  v135 = sub_2664E02A8();
  v136 = sub_2664E02A8();
  v137 = [v132 levelForFactor:v135 withNamespaceName:v136];

  if (v137)
  {
    [v137 &selRef_assetInfo];
    v139 = v138;
  }

  else
  {
    v139 = 0x3F826E978D4FDF3BLL;
  }

  v140 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v141 = *v140;
  v142 = v140[1];
  v143 = v140[2];
  v144 = sub_2664E02A8();
  v145 = sub_2664E02A8();
  v146 = [v141 levelForFactor:v144 withNamespaceName:v145];

  if (v146)
  {
    [v146 &selRef_assetInfo];
    v148 = v147;
  }

  else
  {
    v148 = 0x3FDF5C28F5C28F5CLL;
  }

  v149 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v150 = *v149;
  v151 = v149[1];
  v152 = v149[2];
  v153 = sub_2664E02A8();
  v154 = sub_2664E02A8();
  v155 = [v150 levelForFactor:v153 withNamespaceName:v154];

  if (v155)
  {
    LODWORD(v257) = [v155 BOOLeanValue];
  }

  else
  {
    LODWORD(v257) = 0;
  }

  v156 = v121[3];
  v157 = v121[4];
  __swift_project_boxed_opaque_existential_1(v121, v156);
  v158 = (*(v157 + 128))(v156, v157);
  v159 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v160 = *v159;
  v161 = v159[1];
  v162 = v159[2];
  v163 = sub_2664E02A8();
  v164 = sub_2664E02A8();
  v165 = [v160 levelForFactor:v163 withNamespaceName:v164];

  if (v165)
  {
    v166 = [v165 BOOLeanValue];
  }

  else
  {
    v166 = 0;
  }

  v167 = v263;
  v168 = v158 & v166;
  v169 = v240;
  v258(v240, v260, v263);
  v170 = sub_2664DFE18();
  v171 = sub_2664E06E8();
  if (os_log_type_enabled(v170, v171))
  {
    v172 = v167;
    v173 = swift_slowAlloc();
    *v173 = 67109632;
    *(v173 + 4) = v168 & 1;
    *(v173 + 8) = 1024;
    *(v173 + 10) = v158 & 1;
    *(v173 + 14) = 1024;
    *(v173 + 16) = v166;
    _os_log_impl(&dword_26629C000, v170, v171, "AppSelectionConfigurationProvider#load enabled?:%{BOOL}d -- featureEnabled:%{BOOL}d, levelEnabled:%{BOOL}d", v173, 0x14u);
    v174 = v173;
    v167 = v172;
    MEMORY[0x266784AD0](v174, -1, -1);
  }

  ++v253;
  v262(v169, v167);
  sub_2662A5550(v121, &v268 + 8);
  *(&v267 + 1) = &type metadata for DeviceProvider;
  *&v268 = &protocol witness table for DeviceProvider;
  sub_266406880(&v266);
  v175 = sub_2662F5EDC(v257);
  sub_2662F6408(&v266);
  if (v168 & (byte_28007CCC8 | ~v175))
  {
    v176 = v247;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v177 = qword_280F91D48;
    v178 = v236;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDD8();
    sub_2663BE2B0(&v266);
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v237 + 8))(v178, v238);
    v240 = v266;
    v167 = v263;
  }

  else
  {
    v240 = 0;
    v176 = v247;
  }

  v179 = v256;
  v180 = v264;
  v181 = v248;
  v249 = v168;
  if ((v175 & 1) == 0)
  {
    v182 = 0;
    goto LABEL_72;
  }

  v182 = 0;
  if ((v168 & 1) == 0)
  {
LABEL_72:
    v183 = v255;
    goto LABEL_73;
  }

  v183 = v255;
  if ((byte_28007CCC8 & 1) == 0)
  {
    v184 = v255;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v185 = qword_280F91D48;
    v186 = v236;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDD8();
    v187 = sub_2664DEF78();
    v188 = *(v187 + 48);
    v189 = *(v187 + 52);
    swift_allocObject();
    v182 = sub_2664DEF68();
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v237 + 8))(v186, v238);
    v179 = v256;
    v180 = v264;
    v176 = v247;
    v181 = v248;
    v183 = v184;
  }

LABEL_73:
  v248 = v182;
  v258(v183, v260, v167);

  v190 = v180;
  v191 = v241;

  v192 = sub_2664DFE18();
  v193 = v183;
  v194 = v181;
  v195 = sub_2664E06E8();

  v264 = v190;

  v260 = v191;

  LODWORD(v258) = v195;
  v259 = v192;
  if (os_log_type_enabled(v192, v195))
  {
    v196 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    *&v265[0] = v247;
    *v196 = 136450818;
    v197 = v252;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v196 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v265);
    *(v196 + 12) = 1024;
    *(v196 + 14) = v249 & 1;
    *(v196 + 18) = 2048;
    *(v196 + 20) = v47;
    *(v196 + 28) = 2048;
    *(v196 + 30) = v56;
    *(v196 + 38) = 2080;
    *&v266 = v239;
    *(&v266 + 1) = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v198 = sub_2664E0318();
    v200 = sub_2662A320C(v198, v199, v265);

    *(v196 + 40) = v200;
    *(v196 + 48) = 2080;
    v201 = sub_2664E0618();
    v203 = sub_2662A320C(v201, v202, v265);

    *(v196 + 50) = v203;
    *(v196 + 58) = 1024;
    *(v196 + 60) = v250;
    *(v196 + 64) = 2048;
    *(v196 + 66) = v95;
    *(v196 + 74) = 2048;
    *(v196 + 76) = v104;
    *(v196 + 84) = 2048;
    *(v196 + 86) = v251;
    *(v196 + 94) = 2048;
    *(v196 + 96) = v77;
    *(v196 + 104) = 2048;
    *(v196 + 106) = v197;
    *(v196 + 114) = 2048;
    *(v196 + 116) = v130;
    *(v196 + 124) = 2048;
    *(v196 + 126) = v139;
    *(v196 + 134) = 2048;
    *(v196 + 136) = v148;
    *(v196 + 144) = 2080;
    v204 = v260;
    v205 = [v204 description];
    v206 = sub_2664E02C8();
    v208 = v207;

    v209 = sub_2662A320C(v206, v208, v265);

    *(v196 + 146) = v209;
    *(v196 + 154) = 2082;
    v210 = v261;
    *&v266 = v254;
    *(&v266 + 1) = v261;

    v211 = sub_2664E0318();
    v213 = sub_2662A320C(v211, v212, v265);

    *(v196 + 156) = v213;
    *(v196 + 164) = 2082;
    v214 = v243;
    *&v266 = v243;
    *(&v266 + 1) = v264;

    v215 = sub_2664E0318();
    v217 = sub_2662A320C(v215, v216, v265);

    *(v196 + 166) = v217;
    *(v196 + 174) = 2082;
    v218 = v244;
    v219 = v256;
    *&v266 = v244;
    *(&v266 + 1) = v256;

    v220 = sub_2664E0318();
    v222 = sub_2662A320C(v220, v221, v265);

    *(v196 + 176) = v222;
    v223 = v259;
    _os_log_impl(&dword_26629C000, v259, v258, "AppSelectionConfigurationProvider#configuration %{public}s enabled?:%{BOOL}d minimumConfidenceOddsRatio?:%f minimumAbsoluteConfidence?:%f model:%s videoAppBundleIdentifiers:%s predictionEnabledVideo:%{BOOL}d forcedDisambiguationRate:%f forcedDisambiguationRateFirstPartyOnly:%f, forcedDisambiguationRateLimitSeconds:%ld, newUserMinimumConfidenceOddsRatio:%f, newUserInteractions:%ld, disambiguationTrimThreshold:%f, megamodelCollectionRate: %f, megamodelCollectionRateInternal: %f,  trialTrackingId:%s trialExperimentId:%{public}s trialRolloutId:%{public}s trialTreatmentId:%{public}s", v196, 0xB8u);
    v224 = v247;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v224, -1, -1);
    v225 = v196;
    v226 = v210;
    v227 = v252;
    MEMORY[0x266784AD0](v225, -1, -1);

    v179 = v219;
    v228 = v264;
    v262(v255, v263);
    v229 = v254;
    v230 = v251;
    v231 = v249;
    v232 = v250;
  }

  else
  {

    v262(v193, v263);
    v231 = v249;
    v232 = v250;
    v229 = v254;
    v214 = v243;
    v218 = v244;
    v230 = v251;
    v227 = v252;
    v226 = v261;
    v228 = v264;
  }

  LOBYTE(v266) = v231 & 1;
  *(&v266 + 1) = v47;
  *&v267 = v56;
  *(&v267 + 1) = v194;
  *&v268 = v242;
  BYTE8(v268) = v232;
  *&v269 = v95;
  *(&v269 + 1) = v104;
  *&v270 = v230;
  *(&v270 + 1) = v139;
  *&v271 = v148;
  BYTE8(v271) = v257;
  *&v272 = v77;
  *(&v272 + 1) = v227;
  *&v273 = v130;
  *(&v273 + 1) = v240;
  *&v274 = v248;
  v233 = v260;
  *(&v274 + 1) = v260;
  *&v275 = v229;
  *(&v275 + 1) = v226;
  *&v276 = v218;
  *(&v276 + 1) = v179;
  *&v277 = v214;
  *(&v277 + 1) = v228;
  v265[8] = v274;
  v265[9] = v275;
  v265[10] = v276;
  v265[11] = v277;
  v265[4] = v270;
  v265[5] = v271;
  v265[6] = v272;
  v265[7] = v273;
  v265[0] = v266;
  v265[1] = v267;
  v265[2] = v268;
  v265[3] = v269;

  v234 = v233;

  v246(v265);

  return sub_2663BC57C(&v266);
}

unint64_t sub_2663C1284()
{
  result = qword_280073340;
  if (!qword_280073340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073340);
  }

  return result;
}

unint64_t sub_2663C12D0()
{
  result = qword_280073348;
  if (!qword_280073348)
  {
    sub_2664DE268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073348);
  }

  return result;
}

unint64_t sub_2663C1328()
{
  result = qword_280F8F668;
  if (!qword_280F8F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F668);
  }

  return result;
}

uint64_t sub_2663C1394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v32 = a6;
  v33 = a4;
  v31 = a1;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = a5;
    v21 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "PlaybackStarter#play Sending startPlayback command in background", v20, 2u);
    a5 = v30;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  sub_26637C7BC(v33, v34);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = v31;
  *(v22 + 24) = a2;
  v24 = v34[3];
  *(v22 + 64) = v34[2];
  *(v22 + 80) = v24;
  *(v22 + 96) = v34[4];
  v25 = v34[1];
  *(v22 + 32) = v34[0];
  *(v22 + 48) = v25;
  *(v22 + 112) = a8;
  *(v22 + 120) = a5;
  *(v22 + 128) = v23;
  *(v22 + 136) = a7;

  v26 = a8;

  sub_2663C2550(v27, v23, a7, sub_2663C5040, v22);
}

uint64_t sub_2663C169C(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_2664DFE38();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  if (a1)
  {
    sub_26637C7BC(a4, v43);
    v23 = swift_allocObject();
    v24 = v43[3];
    *(v23 + 48) = v43[2];
    *(v23 + 64) = v24;
    *(v23 + 80) = v43[4];
    v25 = v43[1];
    *(v23 + 16) = v43[0];
    *(v23 + 32) = v25;
    *(v23 + 96) = a6;
    *(v23 + 104) = a7;
    *(v23 + 112) = a8;
    *(v23 + 120) = a2;
    *(v23 + 128) = a3;
    *(v23 + 136) = a1;

    v26 = a1;

    sub_2664AE454(v26, a5, sub_2663C508C, v23);
  }

  else
  {
    v40 = v20;
    v41 = a2;
    v42 = v19;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v29 = *(v42 + 16);
    v29(v22, v28, v16);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v33 = *(v42 + 8);
    v33(v22, v16);
    v34 = v40;
    v29(v40, v28, v16);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06B8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v44 = v38;
      *v37 = 134218498;
      *(v37 + 4) = 15;
      *(v37 + 12) = 2048;
      *(v37 + 14) = 13;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v44);
      _os_log_impl(&dword_26629C000, v35, v36, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v37, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v33(v34, v16);
    v44 = xmmword_2664E8DA0;
    v45 = 0xE900000000000074;
    v41(&v44);
  }
}

uint64_t sub_2663C1A8C(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), char *a7, char *a8)
{
  v94 = a8;
  v96 = a2;
  v14 = sub_2664DFE38();
  v100 = *(v14 - 8);
  v101 = v14;
  v15 = *(v100 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v90 - v19;
  v20 = sub_2664E0198();
  *&v102 = *(v20 - 8);
  v21 = *(v102 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2664E0188();
  v98 = *(v24 - 8);
  v99 = v24;
  v25 = *(v98 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v97 = &v90 - v29;
  if (sub_2664ACDA0(a3, a4, a5, a1))
  {
    v93 = a6;
    if (qword_280F90B20 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      swift_beginAccess();
      v30 = qword_280F90B40;
      v31 = unk_280F90B48;
      v32 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v33 = *(v30 - 8);
      v34 = *(v33 + 64);
      MEMORY[0x28223BE20](v32);
      v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v36);
      v37 = (*(v31 + 16))(v30, v31);
      v39 = v38;
      result = (*(v33 + 8))(v36, v30);
      if (!v39)
      {
        v58 = v94;
        v57 = MEMORY[0x277D84F98];
LABEL_27:
        v87 = __swift_project_boxed_opaque_existential_1(v96, v96[3]);
        v88 = swift_allocObject();
        *(v88 + 16) = v93;
        *(v88 + 24) = a7;
        v89 = *v87;

        sub_26648DDDC(v58, v57, sub_2663C50A0, v88);
      }

      v94 = a7;
      if (!*MEMORY[0x277D27D08])
      {
        __break(1u);
        goto LABEL_32;
      }

      v41 = *MEMORY[0x277D27D08];
      v42 = sub_2664E02A8();
      v107 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
      *&v106 = v42;
      sub_266318804(&v106, &v104);
      v43 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v43;
      sub_26634F694(&v104, v41, isUniquelyReferenced_nonNull_native);

      v91 = v103;

      v90 = v37;
      v92 = v39;
      v45 = sub_26648BD18(v37, v39);
      v47 = v46;
      sub_2663C51C4(&qword_280073350, MEMORY[0x277CC5540]);
      sub_2664E0178();
      sub_2663C50C4(v45, v47);
      sub_2664AB368(v45, v47);
      sub_266348774(v45, v47);
      v48 = v97;
      sub_2664E0168();
      sub_266348774(v45, v47);
      (*(v102 + 8))(v23, v20);
      (*(v98 + 16))(v28, v48, v99);
      sub_2663C51C4(&qword_280073358, MEMORY[0x277CC5290]);
      sub_2664E0438();
      v49 = v106;
      a7 = *(v106 + 16);
      v28 = MEMORY[0x277D84F90];
      if (*(&v106 + 1) == a7)
      {
        break;
      }

      v102 = xmmword_2664E36F0;
      v79 = *(&v106 + 1);
      while ((*(&v49 + 1) & 0x8000000000000000) == 0)
      {
        if (v79 >= *(v49 + 16))
        {
          goto LABEL_29;
        }

        v80 = v79[v49 + 32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v81 = swift_allocObject();
        *(v81 + 16) = v102;
        *(v81 + 56) = MEMORY[0x277D84B78];
        *(v81 + 64) = MEMORY[0x277D84BC0];
        *(v81 + 32) = v80;
        v82 = sub_2664E02E8();
        v84 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2663846F4(0, *(v28 + 2) + 1, 1, v28);
        }

        v20 = *(v28 + 2);
        v85 = *(v28 + 3);
        v23 = (v20 + 1);
        if (v20 >= v85 >> 1)
        {
          v28 = sub_2663846F4((v85 > 1), v20 + 1, 1, v28);
        }

        ++v79;
        *(v28 + 2) = v23;
        v86 = &v28[16 * v20];
        *(v86 + 4) = v82;
        *(v86 + 5) = v84;
        if (a7 == v79)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }

LABEL_6:
    (*(v98 + 8))(v97, v99);

    *&v106 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    sub_26639EC30();
    v50 = sub_2664E0288();
    v52 = v51;

    v53 = *MEMORY[0x277D27DF0];
    if (*MEMORY[0x277D27DF0])
    {
      v107 = MEMORY[0x277D837D0];
      *&v106 = v50;
      *(&v106 + 1) = v52;
      sub_266318804(&v106, &v104);
      v54 = v53;
      v55 = v91;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v55;
      sub_26634F694(&v104, v54, v56);

      v57 = v103;
      v58 = [objc_opt_self() nowPlayingApplicationDestination];
      a7 = v94;
      v59 = v101;
      v60 = v95;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v61 = __swift_project_value_buffer(v59, qword_280F914F0);
      swift_beginAccess();
      v62 = v100;
      (*(v100 + 16))(v60, v61, v59);
      v63 = v92;

      v64 = sub_2664DFE18();
      v65 = sub_2664E06E8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *&v102 = v57;
        v67 = v66;
        v68 = swift_slowAlloc();
        *&v104 = v68;
        *v67 = 136315138;
        v69 = sub_2662A320C(v90, v63, &v104);

        *(v67 + 4) = v69;
        _os_log_impl(&dword_26629C000, v64, v65, "PlaybackStarter#play suppressing destination as we have context id: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x266784AD0](v68, -1, -1);
        v70 = v67;
        v57 = v102;
        MEMORY[0x266784AD0](v70, -1, -1);

        (*(v62 + 8))(v95, v59);
      }

      else
      {

        (*(v62 + 8))(v60, v59);
      }

      goto LABEL_27;
    }

LABEL_32:
    __break(1u);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v71 = v101;
    v72 = __swift_project_value_buffer(v101, qword_280F914F0);
    swift_beginAccess();
    v73 = v100;
    (*(v100 + 16))(v18, v72, v71);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = a6;
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26629C000, v74, v75, "PlaybackStarter#play We already set startPlaybackImmediately on external devices, not sending startPlayback", v77, 2u);
      v78 = v77;
      a6 = v76;
      MEMORY[0x266784AD0](v78, -1, -1);
    }

    (*(v73 + 8))(v18, v71);
    v104 = 0uLL;
    v105 = 0;
    return a6(&v104);
  }

  return result;
}

uint64_t sub_2663C2550(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v76 = a4;
  v79 = a3;
  v73 = a2;
  v82 = a1;
  v81 = sub_2664DFE38();
  v80 = *(v81 - 8);
  v8 = *(v80 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v70 - v11;
  v12 = sub_2664DFE08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  sub_26637C7BC(v6, v90);
  v20 = *__swift_project_boxed_opaque_existential_1(v90, v91);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v21 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_26648D3D0(0, v20, &aBlock);
  sub_2664E0838();
  sub_2664DFDD8();
  v22 = *(v13 + 8);
  v23 = v12;
  v78 = v13 + 8;
  v77 = v22;
  v22(v19, v12);
  v24 = aBlock;
  v25 = __swift_project_boxed_opaque_existential_1(v90, v91);
  v26 = swift_allocObject();
  *(v26 + 16) = v76;
  *(v26 + 24) = a5;
  v27 = *v25;

  sub_2664DFDE8();
  sub_2664E0848();
  v76 = v21;
  sub_2664DFDC8();
  v75 = v17;
  v28 = v79;
  if (v79 && !*(v82 + 16))
  {
    v74 = v27;
    v82 = v24;
    v50 = v81;
    v51 = v80;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v50, qword_280F914F0);
    swift_beginAccess();
    v53 = v72;
    (*(v51 + 16))(v72, v52, v50);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    v56 = os_log_type_enabled(v54, v55);
    v49 = v23;
    v57 = v73;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v83 = v71;
      aBlock = v57;
      *v58 = 136315138;
      v85 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v59 = sub_2664E0318();
      v61 = v53;
      v62 = sub_2662A320C(v59, v60, &v83);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_26629C000, v54, v55, "MediaPlaybackProvider#destination Nil or empty hashedRouteUIDs, but non nil seRouteId: %s, will set that", v58, 0xCu);
      v63 = v71;
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      v64 = v61;
      v28 = v79;
      (*(v80 + 8))(v64, v81);
    }

    else
    {

      (*(v51 + 8))(v53, v50);
    }

    v65 = v82 == 4;
    v46 = [objc_opt_self() systemMediaApplicationDestination];
    v66 = swift_allocObject();
    v66[2] = sub_2663C5054;
    v66[3] = v26;
    v66[4] = v74;
    v66[5] = v57;
    v66[6] = v28;
    v88 = sub_2662CDCDC;
    v89 = v66;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_2663A0C48;
    v87 = &block_descriptor_12_2;
    v67 = _Block_copy(&aBlock);

    [v46 resolveWithQueue:0 routeIdentifiers:0 localPlaybackPermitted:v65 audioRoutingInfo:0 completion:v67];
    _Block_release(v67);
  }

  else
  {
    v29 = v24;
    v30 = v81;
    v31 = v80;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v30, qword_280F914F0);
    swift_beginAccess();
    v33 = v74;
    (*(v31 + 16))(v74, v32, v30);

    v34 = sub_2664DFE18();
    v35 = sub_2664E06C8();

    v36 = os_log_type_enabled(v34, v35);
    v79 = v23;
    if (v36)
    {
      LODWORD(v73) = v29 == 4;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446722;
      type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
      LODWORD(v83) = 0;
      v39 = sub_2664E0318();
      v41 = sub_2662A320C(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v83 = v82;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
      v42 = sub_2664E0318();
      v44 = sub_2662A320C(v42, v43, &aBlock);

      *(v37 + 14) = v44;
      *(v37 + 22) = 1026;
      *(v37 + 24) = v73;
      _os_log_impl(&dword_26629C000, v34, v35, "MediaPlaybackProvider#destination for routing: %{public}s, routes: %s, and localPlaybackPermitted: %{BOOL,public}d", v37, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);

      (*(v31 + 8))(v33, v81);
    }

    else
    {

      (*(v31 + 8))(v33, v30);
    }

    v45 = [objc_opt_self() systemMediaApplicationDestination];
    v46 = sub_2664E0488();
    v47 = swift_allocObject();
    *(v47 + 16) = sub_2663C5054;
    *(v47 + 24) = v26;
    v88 = sub_2662CDCD4;
    v89 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v85 = 1107296256;
    v86 = sub_2663A0C48;
    v87 = &block_descriptor_26;
    v48 = _Block_copy(&aBlock);

    [v45 resolveWithQueue:0 hashedRouteIdentifiers:v46 localPlaybackPermitted:v29 == 4 audioRoutingInfo:0 completion:v48];
    _Block_release(v48);

    v49 = v79;
  }

  sub_2664E0838();
  v68 = v75;
  sub_2664DFDD8();

  v77(v68, v49);
  return sub_2663C505C(v90);
}

uint64_t sub_2663C2FD0(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, unsigned __int8 a13)
{
  v53 = a7;
  v57 = a5;
  v56 = a4;
  LODWORD(v55) = a2;
  v17 = a10;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v51 = a13;
  v54 = a12;
  v52 = a11;
  v59 = a9;
  v23 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  (*(v19 + 16))(v22, v23, v18);
  v24 = a1;
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  v58 = v24;

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v50 = a6;
    v28 = a8;
    v29 = v27;
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    v31 = v58;
    *(v29 + 4) = v58;
    *v30 = v31;
    v32 = v31;
    _os_log_impl(&dword_26629C000, v25, v26, "PlaybackStarter#send sending queue to destination: %{public}@", v29, 0xCu);
    sub_2662E4324(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    v33 = v29;
    a8 = v28;
    v17 = a10;
    a6 = v50;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  (*(v19 + 8))(v22, v18);
  v34 = a3[9];
  v50 = a3[8];
  v49 = __swift_project_boxed_opaque_existential_1(a3 + 5, v50);
  sub_2662A5550(v17, v61);
  sub_26637C7BC(a3, v60);
  v35 = swift_allocObject();
  v36 = v59;
  *(v35 + 16) = a8;
  *(v35 + 24) = v36;
  sub_2662A8618(v61, v35 + 32);
  v37 = v60[0];
  *(v35 + 104) = v60[1];
  v38 = v60[3];
  *(v35 + 120) = v60[2];
  *(v35 + 136) = v38;
  *(v35 + 152) = v60[4];
  v39 = v52;
  v40 = v54;
  *(v35 + 72) = v52;
  *(v35 + 80) = v40;
  *(v35 + 88) = v37;
  v41 = v56;
  v43 = v57;
  v42 = v58;
  *(v35 + 168) = v56;
  *(v35 + 176) = v43;
  v44 = v53;
  *(v35 + 184) = a6;
  *(v35 + 192) = v44;
  *(v35 + 200) = v55 & 1;
  *(v35 + 208) = v42;
  *(v35 + 216) = v51 & 1;
  v55 = *(v34 + 8);

  v45 = v42;

  v46 = v39;
  v47 = v40;

  v55(v41, v43, a6, v44, sub_2663C5118, v35, v50, v34);
}

void sub_2663C33BC(void **a1, void (*a2)(uint64_t *), uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, unsigned __int8 a12, void *a13, char a14)
{
  v150 = a8;
  v149 = a7;
  v157 = a5;
  v148 = a4;
  v171 = *MEMORY[0x277D85DE8];
  v18 = sub_2664DFE38();
  v159 = *(v18 - 8);
  v19 = *(v159 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v146 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v161 = &v145 - v23;
  MEMORY[0x28223BE20](v22);
  v153 = &v145 - v24;
  v25 = sub_2664E0198();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2664E0188();
  v155 = *(v156 - 8);
  v30 = *(v155 + 64);
  v31 = MEMORY[0x28223BE20](v156);
  v33 = &v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v154 = &v145 - v34;
  v36 = *a1;
  v35 = a1[1];
  v37 = swift_allocObject();
  v160 = v37;
  *(v37 + 16) = MEMORY[0x277D84F98];
  v164 = (v37 + 16);
  v162 = v36;
  if (v36 != 1 && v35)
  {
    v38 = *MEMORY[0x277D27DA8];
    if (!*MEMORY[0x277D27DA8])
    {
      goto LABEL_51;
    }

    *(&v167 + 1) = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    *&v166 = v35;
    v39 = v35;
    sub_2664490A4(&v166, v38);
  }

  *&v165 = v26;
  v147 = a6;
  v158 = v18;
  v151 = a2;
  v152 = a3;
  if (qword_280F90B20 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    swift_beginAccess();
    v41 = qword_280F90B40;
    v40 = unk_280F90B48;
    v42 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v43 = *(v41 - 8);
    v44 = *(v43 + 64);
    MEMORY[0x28223BE20](v42);
    v46 = &v145 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v46);
    v47 = (*(v40 + 16))(v41, v40);
    v49 = v48;
    (*(v43 + 8))(v46, v41);
    v50 = v161;
    v51 = v162;
    v163 = v49;
    if (!v49)
    {
      goto LABEL_11;
    }

    v52 = *MEMORY[0x277D27D08];
    if (!*MEMORY[0x277D27D08])
    {
      goto LABEL_49;
    }

    v53 = v163;

    v54 = v52;
    v55 = sub_2664E02A8();
    *(&v167 + 1) = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    *&v166 = v55;
    sub_2664490A4(&v166, v54);

    v56 = sub_26648BD18(v47, v53);
    v58 = v57;
    sub_2663C51C4(&qword_280073350, MEMORY[0x277CC5540]);
    sub_2664E0178();
    sub_2663C50C4(v56, v58);
    sub_2664AB368(v56, v58);
    sub_266348774(v56, v58);
    v59 = v154;
    sub_2664E0168();
    sub_266348774(v56, v58);
    (*(v165 + 8))(v29, v25);
    (*(v155 + 16))(v33, v59, v156);
    sub_2663C51C4(&qword_280073358, MEMORY[0x277CC5290]);
    sub_2664E0438();
    v60 = v166;
    v61 = *(v166 + 16);
    v33 = MEMORY[0x277D84F90];
    if (*(&v166 + 1) == v61)
    {
      break;
    }

    v165 = xmmword_2664E36F0;
    v116 = *(&v166 + 1);
    while ((*(&v60 + 1) & 0x8000000000000000) == 0)
    {
      if (v116 >= *(v60 + 16))
      {
        goto LABEL_45;
      }

      v117 = *(v60 + 32 + v116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v118 = swift_allocObject();
      *(v118 + 16) = v165;
      *(v118 + 56) = MEMORY[0x277D84B78];
      *(v118 + 64) = MEMORY[0x277D84BC0];
      *(v118 + 32) = v117;
      v29 = sub_2664E02E8();
      v120 = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2663846F4(0, *(v33 + 2) + 1, 1, v33);
      }

      v25 = *(v33 + 2);
      v121 = *(v33 + 3);
      if (v25 >= v121 >> 1)
      {
        v33 = sub_2663846F4((v121 > 1), v25 + 1, 1, v33);
      }

      ++v116;
      *(v33 + 2) = v25 + 1;
      v122 = &v33[16 * v25];
      *(v122 + 4) = v29;
      *(v122 + 5) = v120;
      if (v61 == v116)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_9:
  (*(v155 + 8))(v154, v156);

  *&v166 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_26639EC30();
  v62 = sub_2664E0288();
  v64 = v63;

  if (*MEMORY[0x277D27DF0])
  {
    v65 = *MEMORY[0x277D27DF0];

    *(&v167 + 1) = MEMORY[0x277D837D0];
    *&v166 = v62;
    *(&v166 + 1) = v64;
    sub_2664490A4(&v166, v65);
    v50 = v161;
    v51 = v162;
LABEL_11:
    v66 = v158;
    v67 = v159;
    v68 = v157;
    if (v51 >= 2)
    {
      v69 = objc_opt_self();
      *&v166 = 0;
      v70 = v51;
      v71 = [v69 archivedDataWithRootObject:v70 requiringSecureCoding:1 error:&v166];
      if (!v71)
      {
        v123 = v166;

        v124 = sub_2664DE1A8();

        swift_willThrow();
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v125 = __swift_project_value_buffer(v66, qword_280F914F0);
        swift_beginAccess();
        v126 = *(v67 + 16);
        v126(v50, v125, v66);
        v127 = v124;
        v128 = sub_2664DFE18();
        v129 = sub_2664E06D8();

        v130 = os_log_type_enabled(v128, v129);
        *&v165 = v124;
        if (v130)
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *&v166 = v132;
          *v131 = 136446210;
          swift_getErrorValue();
          v133 = sub_2664E0DE8();
          v135 = sub_2662A320C(v133, v134, &v166);

          *(v131 + 4) = v135;
          v66 = v158;
          _os_log_impl(&dword_26629C000, v128, v129, "PlaybackStarter#send error archiving account info for prepareForSetQueue: %{public}s", v131, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v132);
          MEMORY[0x266784AD0](v132, -1, -1);
          v136 = v131;
          v67 = v159;
          MEMORY[0x266784AD0](v136, -1, -1);
        }

        v137 = *(v67 + 8);
        v137(v161, v66);
        v138 = v146;
        v126(v146, v125, v66);
        v139 = sub_2664DFE18();
        v140 = sub_2664E06B8();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = v138;
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *&v166 = v143;
          *v142 = 134218498;
          *(v142 + 4) = 15;
          *(v142 + 12) = 2048;
          *(v142 + 14) = 5;
          *(v142 + 22) = 2080;
          *(v142 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664F7320, &v166);
          _os_log_impl(&dword_26629C000, v139, v140, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v142, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v143);
          MEMORY[0x266784AD0](v143, -1, -1);
          MEMORY[0x266784AD0](v142, -1, -1);

          v144 = v141;
        }

        else
        {

          v144 = v138;
        }

        v137(v144, v66);
        v166 = xmmword_2664EA4D0;
        *&v167 = 0x80000002664F7320;
        BYTE8(v167) = 1;
        v151(&v166);

        sub_2662D2F30(v166, *(&v166 + 1), v167, SBYTE8(v167));
        goto LABEL_26;
      }

      v72 = v71;
      v73 = v166;
      v74 = sub_2664DE2F8();
      v76 = v75;

      v77 = *MEMORY[0x277D27E18];
      if (!*MEMORY[0x277D27E18])
      {
        goto LABEL_52;
      }

      *(&v167 + 1) = MEMORY[0x277CC9318];
      *&v166 = v74;
      *(&v166 + 1) = v76;
      v78 = v77;
      sub_2663C50C4(v74, v76);
      sub_2664490A4(&v166, v78);

      sub_266348774(v74, v76);
      v51 = v162;
    }

    v79 = *MEMORY[0x277D27CD8];
    if (*MEMORY[0x277D27CD8])
    {
      v80 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
      v81 = v79;
      v82 = sub_2664E08F8();
      *(&v167 + 1) = v80;
      *&v166 = v82;
      sub_2664490A4(&v166, v81);
      if (*MEMORY[0x277D27DC8])
      {
        v83 = *MEMORY[0x277D27DC8];

        v84 = v148[3];
        v85 = v148[4];
        __swift_project_boxed_opaque_existential_1(v148, v84);
        v86 = (*(v85 + 8))(v84, v85);
        *(&v167 + 1) = MEMORY[0x277D849A8];
        LODWORD(v166) = v86;
        sub_2664490A4(&v166, v83);
        v87 = sub_2664E02A8();
        [v68 setFeatureName_];

        if (v51 == 1)
        {
          v88 = 0;
        }

        else
        {
          v88 = v51;
        }

        [v68 setUserIdentity_];

        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v89 = a14;
        v90 = a13;
        LODWORD(v163) = a12;
        *&v165 = a11;
        v162 = a10;
        v91 = a9;
        v92 = __swift_project_value_buffer(v66, qword_280F914F0);
        swift_beginAccess();
        v93 = v153;
        (*(v67 + 16))(v153, v92, v66);

        v94 = sub_2664DFE18();
        v95 = sub_2664E06E8();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *&v166 = v97;
          *v96 = 136315138;
          v98 = v164;
          swift_beginAccess();
          v99 = *v98;
          type metadata accessor for CFString(0);
          sub_2663C51C4(&qword_280071F78, type metadata accessor for CFString);

          v100 = sub_2664E01D8();
          v102 = v101;

          v103 = v100;
          v91 = a9;
          v90 = a13;
          v89 = a14;
          v104 = sub_2662A320C(v103, v102, &v166);

          *(v96 + 4) = v104;
          _os_log_impl(&dword_26629C000, v94, v95, "PlaybackStarter#sendQueue Sending setQueue with options: %s", v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v97);
          v105 = v97;
          v68 = v157;
          MEMORY[0x266784AD0](v105, -1, -1);
          MEMORY[0x266784AD0](v96, -1, -1);

          (*(v159 + 8))(v153, v158);
        }

        else
        {

          (*(v67 + 8))(v93, v66);
        }

        v106 = v151;
        sub_26637C7BC(v149, &v166);
        v107 = swift_allocObject();
        v108 = v169;
        *(v107 + 48) = v168;
        *(v107 + 64) = v108;
        *(v107 + 80) = v170;
        v109 = v167;
        *(v107 + 16) = v166;
        *(v107 + 32) = v109;
        *(v107 + 96) = v150;
        *(v107 + 104) = v91;
        *(v107 + 112) = v162;
        *(v107 + 120) = v165;
        *(v107 + 128) = v68;
        *(v107 + 136) = v163 & 1;
        v110 = v160;
        *(v107 + 144) = v90;
        *(v107 + 152) = v110;
        v111 = v147;
        *(v107 + 160) = v147;
        *(v107 + 168) = v89 & 1;

        v112 = v68;
        v113 = v90;
        v114 = v111;

        sub_2663F4978(0xD000000000000019, 0x80000002664F7300, v114, v106, v152, 0, sub_2663C5174, v107);

LABEL_26:

        v115 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}