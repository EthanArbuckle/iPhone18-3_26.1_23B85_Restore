uint64_t sub_227301FC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52[0] = a3;
  v52[1] = a2;
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  swift_getKeyPath();
  sub_2276639A0();
  v20 = sub_227662390();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  v55[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v55[0] = v20;
  v55[1] = v22;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v23 = sub_22766C820();
  sub_226E93170(v55, v53, &unk_27D7BC990, &qword_227670A30);
  v24 = v54;
  if (v54)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v53, v54);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64);
    MEMORY[0x28223BE20](v25);
    v29 = v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

  sub_226E97D1C(v55, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v51 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v55, 0);
  swift_endAccess();

  v37 = v55[5];
  v38 = sub_227238EB8(100);
  if (v37)
  {
    swift_setDeallocating();

    v39 = *(v17 + 40);

    v40 = qword_2813B2078;
    v41 = sub_22766A100();
    (*(*(v41 - 8) + 8))(v17 + v40, v41);
    v42 = *(*v17 + 48);
    v43 = *(*v17 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v45 = v38;
    swift_setDeallocating();

    v46 = *(v17 + 40);

    v47 = qword_2813B2078;
    v48 = sub_22766A100();
    (*(*(v48 - 8) + 8))(v17 + v47, v48);
    v49 = *(*v17 + 48);
    v50 = *(*v17 + 52);
    result = swift_deallocClassInstance();
    *v52[0] = v45;
  }

  return result;
}

uint64_t sub_22730252C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = sub_2276639B0();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD9F0, qword_2276873A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  v19 = sub_227665490();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22722AF30(*a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v39 = a3;
    sub_226E97D1C(v18, &qword_27D7BD9F0, qword_2276873A0);
    sub_22766A6C0();
    (*(v42 + 16))(v10, a2, v7);
    v24 = sub_22766B380();
    v25 = sub_22766C890();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 141558274;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2080;
      sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v28 = sub_22766D140();
      v29 = a2;
      v31 = v30;
      (*(v42 + 8))(v10, v7);
      v32 = sub_226E97AE8(v28, v31, &v44);
      a2 = v29;

      *(v26 + 14) = v32;
      _os_log_impl(&dword_226E8E000, v24, v25, "Missing AssetResumableLoad for request %{mask.hash}s. Recovering by starting a new load.", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v10, v7);
    }

    (*(v40 + 8))(v14, v41);
    v37 = v39[3];
    v38 = v39[4];
    __swift_project_boxed_opaque_existential_0(v39, v37);
    return (*(v38 + 32))(a2, v37, v38);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    v33 = a2;
    v34 = a3[3];
    v35 = a3[4];
    __swift_project_boxed_opaque_existential_0(a3, v34);
    (*(v35 + 56))(v33, v23, v34, v35);
    return (*(v20 + 8))(v23, v19);
  }
}

void sub_2273029E4(char *a1, void *a2, NSObject *a3, void *a4, uint64_t a5)
{
  v299 = a5;
  v303 = a4;
  v291 = a2;
  v307 = a1;
  v265 = type metadata accessor for AssetProgressUpdated();
  v6 = *(*(v265 - 8) + 64);
  MEMORY[0x28223BE20](v265);
  v264 = v258 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v268 = v258 - v10;
  v271 = sub_227663CD0();
  v270 = *(v271 - 8);
  v11 = *(v270 + 64);
  MEMORY[0x28223BE20](v271);
  v269 = v258 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_2276639B0();
  v298 = *(v296 - 8);
  v13 = *(v298 + 64);
  v14 = MEMORY[0x28223BE20](v296);
  v288 = v258 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v277 = v258 - v17;
  MEMORY[0x28223BE20](v16);
  v276 = v258 - v18;
  v295 = sub_22766B390();
  v294 = *(v295 - 8);
  v19 = *(v294 + 64);
  v20 = MEMORY[0x28223BE20](v295);
  v293 = v258 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v278 = v258 - v23;
  MEMORY[0x28223BE20](v22);
  v282 = v258 - v24;
  v25 = sub_2276624A0();
  v26 = *(v25 - 8);
  v27 = v26;
  v28 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v273 = v258 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v272 = v258 - v32;
  MEMORY[0x28223BE20](v31);
  v287 = v258 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v284 = v258 - v36;
  v297 = type metadata accessor for AssetLoaderResponse();
  v37 = *(*(v297 - 8) + 64);
  MEMORY[0x28223BE20](v297);
  v289 = v258 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v39 = *(*(v285 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v285);
  v286 = (v258 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v301 = (v258 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v302 = (v258 - v45);
  v46 = sub_227663180();
  v304 = *(v46 - 8);
  v305 = v46;
  v47 = *(v304 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v275 = v258 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v281 = v258 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v274 = v258 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v280 = v258 - v55;
  MEMORY[0x28223BE20](v54);
  v300 = v258 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
  v58 = *(v26 + 80);
  v59 = (v58 + 32) & ~v58;
  v266 = *(v26 + 72);
  v267 = v57;
  v60 = swift_allocObject();
  v283 = xmmword_227670CD0;
  *(v60 + 16) = xmmword_227670CD0;
  v61 = v27 + 16;
  v62 = *(v27 + 16);
  v292 = a3;
  v62(v60 + v59, a3, v25);
  v63 = sub_226F4F878(v60);
  swift_setDeallocating();
  v279 = v27;
  v66 = *(v27 + 8);
  v65 = v27 + 8;
  v64 = v66;
  v290 = v25;
  v66(v60 + v59, v25);
  swift_deallocClassInstance();
  v67 = ObjectType;
  v68 = sub_22707B7C4(v63, v307);

  if (!v67)
  {
    v69 = v301;
    ObjectType = 0;
    v70 = v303;
    v258[1] = v58;
    v259 = (v58 + 32) & ~v58;
    v260 = v62;
    v262 = v61;
    v261 = v64;
    v263 = v65;
    v71 = v302;
    sub_22722AE54(v68, v302);

    v73 = v304;
    v72 = v305;
    if ((*(v304 + 48))(v71, 1, v305) == 1)
    {
      sub_226E97D1C(v71, &qword_27D7B8620, &qword_2276711C0);
      v74 = sub_227663190();
      sub_227307D58(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
      swift_allocError();
      (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D4FD08], v74);
      swift_willThrow();
      return;
    }

    v76 = v72;
    v77 = v300;
    (*(v73 + 32))(v300, v71, v76);
    sub_226E93170(v70, v69, &qword_27D7B9628, &unk_227674860);
    v78 = v297;
    sub_227664540();
    v79 = sub_227664570();
    if (v79 == sub_227664570())
    {
      v80 = v293;
      sub_22766A6C0();
      v81 = v298;
      v82 = v288;
      v83 = v299;
      v84 = v296;
      v302 = *(v298 + 16);
      v303 = (v298 + 16);
      (v302)(v288, v299, v296);
      v85 = sub_22766B380();
      v86 = sub_22766C8B0();
      v87 = os_log_type_enabled(v85, v86);
      v88 = ObjectType;
      if (v87)
      {
        v89 = ObjectType;
        v90 = v82;
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v310[0] = v92;
        *v91 = 141558274;
        *(v91 + 4) = 1752392040;
        *(v91 + 12) = 2080;
        sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
        v93 = sub_22766D140();
        v94 = v84;
        v96 = v95;
        v97 = v90;
        v88 = v89;
        (*(v81 + 8))(v97, v94);
        v98 = sub_226E97AE8(v93, v96, v310);

        *(v91 + 14) = v98;
        _os_log_impl(&dword_226E8E000, v85, v86, "Load cancelled for request: %{mask.hash}s", v91, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x22AA9A450](v92, -1, -1);
        MEMORY[0x22AA9A450](v91, -1, -1);

        v83 = v299;
        (*(v294 + 8))(v293, v295);
      }

      else
      {

        (*(v81 + 8))(v82, v84);
        (*(v294 + 8))(v80, v295);
      }

      v108 = __swift_project_boxed_opaque_existential_0(v307, *(v307 + 3));
      v109 = *v108;
      v110 = v108[1];
      v111 = *(v108 + 16);
      v112 = v108[3];
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
      v114 = *(v113 + 48);
      v115 = *(v113 + 52);
      v116 = swift_allocObject();
      v117 = v109;
      v118 = v110;

      sub_22766A070();
      *(v116 + 16) = v117;
      *(v116 + 24) = v118;
      *(v116 + 32) = v111;
      *(v116 + 40) = v112;
      swift_getKeyPath();
      v119 = sub_227662390();
      v121 = v120;
      v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v310[0] = v119;
      v310[1] = v121;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v122 = sub_22766C820();
      sub_226E93170(v310, &v308, &unk_27D7BC990, &qword_227670A30);
      v123 = v309;
      if (v309)
      {
        v124 = __swift_project_boxed_opaque_existential_0(&v308, v309);
        v125 = v88;
        v126 = *(v123 - 8);
        v127 = *(v126 + 64);
        MEMORY[0x28223BE20](v124);
        v129 = v258 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v126 + 16))(v129);
        v130 = sub_22766D170();
        (*(v126 + 8))(v129, v123);
        v88 = v125;
        v83 = v299;
        __swift_destroy_boxed_opaque_existential_0(&v308);
      }

      else
      {
        v130 = 0;
      }

      v134 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v135 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

      sub_226E97D1C(v310, &unk_27D7BC990, &qword_227670A30);
      swift_beginAccess();
      v136 = v135;
      v137 = sub_22766A080();
      v139 = v138;
      MEMORY[0x22AA985C0]();
      if (*((*v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v257 = *((*v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v137(v310, 0);
      swift_endAccess();

      v140 = *__swift_project_boxed_opaque_existential_0(v291 + 2, v291[5]);
      v141 = sub_2272322B8(100);
      if (v88)
      {

        (*(v304 + 8))(v300, v305);
      }

      else
      {
        v142 = sub_22707488C(v141, v307);
        v143 = v305;
        v200 = v142;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
        v201 = *(v298 + 72);
        v202 = (*(v298 + 80) + 32) & ~*(v298 + 80);
        v203 = swift_allocObject();
        *(v203 + 16) = v283;
        (v302)(v203 + v202, v83, v296);
        v204 = sub_22700A628(v203, v200);
        swift_setDeallocating();
        v205 = *(v203 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v206 = *(v204 + 16);

        if (v206)
        {
          (*(v304 + 8))(v300, v143);
        }

        else
        {
          v247 = v259;
          v248 = swift_allocObject();
          *(v248 + 16) = v283;
          v249 = v290;
          v260(v248 + v247, v292, v290);
          v250 = sub_226F4F878(v248);
          swift_setDeallocating();
          v261(v248 + v247, v249);
          swift_deallocClassInstance();
          sub_22707984C(v250, v307);
          (*(v304 + 8))(v300, v143);
        }

        swift_setDeallocating();

        v207 = *(v116 + 40);

        v208 = qword_2813B2078;
        v209 = sub_22766A100();
        (*(*(v209 - 8) + 8))(v116 + v208, v209);
        v210 = *(*v116 + 48);
        v211 = *(*v116 + 52);
        swift_deallocClassInstance();
      }
    }

    else
    {
      sub_227663120();
      v99 = sub_227664570();
      v100 = sub_227664570();
      v101 = v70;
      v102 = v286;
      sub_226E93170(v101, v286, &qword_27D7B9628, &unk_227674860);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v104 = v261;
      v105 = v298;
      v106 = ObjectType;
      if (EnumCaseMultiPayload == 1)
      {
        v107 = *v102;
        if (v99 != v100)
        {
          (*(v279 + 56))(v284, 1, 1, v290);
          sub_227663170();
          sub_227663130();
          v144 = v281;
          sub_227663150();
          v145 = v278;
          sub_22766A6C0();
          v146 = v277;
          v147 = v296;
          (*(v105 + 16))(v277, v299, v296);
          v148 = v275;
          v149 = v107;
          v301 = *(v304 + 16);
          v302 = (v304 + 16);
          v301(v275, v144, v305);
          v150 = v107;
          v151 = sub_22766B380();
          v152 = sub_22766C8B0();

          LODWORD(v297) = v152;
          v153 = os_log_type_enabled(v151, v152);
          v303 = v149;
          if (v153)
          {
            v154 = swift_slowAlloc();
            v292 = v151;
            v155 = v146;
            v156 = v154;
            v293 = swift_slowAlloc();
            v310[0] = v293;
            *v156 = 141559042;
            *(v156 + 4) = 1752392040;
            *(v156 + 12) = 2080;
            sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
            v157 = sub_22766D140();
            v159 = v158;
            (*(v105 + 8))(v155, v147);
            v160 = sub_226E97AE8(v157, v159, v310);

            *(v156 + 14) = v160;
            *(v156 + 22) = 2160;
            *(v156 + 24) = 1752392040;
            *(v156 + 32) = 2080;
            sub_227307D58(&qword_28139BD48, MEMORY[0x277D4FCA8]);
            v161 = v305;
            v162 = sub_22766D140();
            v164 = v163;
            v165 = v304;
            v166 = v148;
            v167 = *(v304 + 8);
            v167(v166, v161);
            v168 = sub_226E97AE8(v162, v164, v310);

            *(v156 + 34) = v168;
            *(v156 + 42) = 2082;
            swift_getErrorValue();
            v169 = MEMORY[0x22AA995D0](v313, v314);
            v171 = sub_226E97AE8(v169, v170, v310);

            *(v156 + 44) = v171;
            v172 = v292;
            _os_log_impl(&dword_226E8E000, v292, v297, "Load failed for request %{mask.hash}s, entry %{mask.hash}s with error %{public}s", v156, 0x34u);
            v173 = v293;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v173, -1, -1);
            MEMORY[0x22AA9A450](v156, -1, -1);

            (*(v294 + 8))(v278, v295);
          }

          else
          {

            v212 = v304;
            v161 = v305;
            v213 = v148;
            v167 = *(v304 + 8);
            v167(v213, v305);
            (*(v105 + 8))(v146, v147);
            (*(v294 + 8))(v145, v295);
            v165 = v212;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
          v214 = *(v165 + 72);
          v215 = (*(v165 + 80) + 32) & ~*(v165 + 80);
          v216 = swift_allocObject();
          *(v216 + 16) = v283;
          v217 = v281;
          v301((v216 + v215), v281, v161);
          v218 = sub_226F4AE10(v216);
          swift_setDeallocating();
          v167((v216 + v215), v161);
          swift_deallocClassInstance();
          v219 = ObjectType;
          sub_227079538(v218, v307);
          if (v219)
          {

            v167(v217, v161);
            v167(v300, v161);
            return;
          }

          v167(v217, v161);

          v77 = v300;
          v104 = v261;
          v107 = v303;
        }

        v226 = sub_227663960();
        if (v227)
        {
          v228 = v226;
          v229 = v227;
          v230 = v273;
          sub_2276639A0();
          sub_22708048C(v230, v228, v229, v307);

          v104(v230, v290);
          (*(v304 + 8))(v77, v305);
        }

        else
        {
          (*(v304 + 8))(v77, v305);
        }
      }

      else
      {
        v131 = v289;
        sub_2273065BC(v102, v289);
        if (v99 == v100)
        {
          v132 = v307;
          v133 = v106;
        }

        else
        {
          v174 = v284;
          v175 = v290;
          v260(v284, v131, v290);
          (*(v279 + 56))(v174, 0, 1, v175);
          sub_227663170();
          v176 = *(v131 + *(v78 + 20));
          v177 = v280;
          sub_227663150();
          sub_22766A6C0();
          v178 = v276;
          v179 = v296;
          (*(v105 + 16))(v276, v299, v296);
          v181 = v304;
          v180 = v305;
          v182 = v274;
          v302 = *(v304 + 16);
          v303 = (v304 + 16);
          (v302)(v274, v177, v305);
          v183 = sub_22766B380();
          v184 = sub_22766C8B0();
          if (os_log_type_enabled(v183, v184))
          {
            v185 = v105;
            v186 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v310[0] = v187;
            *v186 = 141558786;
            *(v186 + 4) = 1752392040;
            *(v186 + 12) = 2080;
            sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
            LODWORD(v301) = v184;
            v188 = sub_22766D140();
            v189 = v179;
            v191 = v190;
            (*(v185 + 8))(v178, v189);
            v192 = sub_226E97AE8(v188, v191, v310);

            *(v186 + 14) = v192;
            *(v186 + 22) = 2160;
            *(v186 + 24) = 1752392040;
            *(v186 + 32) = 2080;
            sub_227307D58(&qword_28139BD48, MEMORY[0x277D4FCA8]);
            v193 = sub_22766D140();
            v195 = v194;
            v196 = v304;
            v197 = *(v304 + 8);
            v197(v182, v305);
            v198 = sub_226E97AE8(v193, v195, v310);

            *(v186 + 34) = v198;
            _os_log_impl(&dword_226E8E000, v183, v301, "Load succeeded for request %{mask.hash}s using entry %{mask.hash}s", v186, 0x2Au);
            swift_arrayDestroy();
            v199 = v187;
            v180 = v305;
            MEMORY[0x22AA9A450](v199, -1, -1);
            MEMORY[0x22AA9A450](v186, -1, -1);

            (*(v294 + 8))(v282, v295);
          }

          else
          {

            v197 = *(v181 + 8);
            v197(v182, v180);
            (*(v105 + 8))(v178, v179);
            (*(v294 + 8))(v282, v295);
            v196 = v181;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
          v220 = *(v196 + 72);
          v221 = (*(v196 + 80) + 32) & ~*(v196 + 80);
          v222 = swift_allocObject();
          *(v222 + 16) = v283;
          v223 = v280;
          (v302)(v222 + v221, v280, v180);
          v224 = sub_226F4AE10(v222);
          swift_setDeallocating();
          v197((v222 + v221), v180);
          swift_deallocClassInstance();
          v225 = ObjectType;
          v132 = v307;
          sub_227079538(v224, v307);
          if (v225)
          {

            v197(v223, v180);
            sub_2273073F0(v289, type metadata accessor for AssetLoaderResponse);
            v197(v300, v180);
            return;
          }

          v197(v223, v180);

          v133 = 0;
          v104 = v261;
        }

        v231 = v299;
        v232 = sub_227663960();
        v234 = v290;
        if (v233)
        {
          v235 = v232;
          v236 = v233;
          v237 = v272;
          sub_2276639A0();
          sub_227080718(v237, v235, v236, v132);
          if (v133)
          {

            v104(v237, v234);
            sub_2273073F0(v289, type metadata accessor for AssetLoaderResponse);
            (*(v304 + 8))(v300, v305);
            return;
          }

          v104(v237, v234);
        }

        v238 = v291;
        v239 = *__swift_project_boxed_opaque_existential_0(v291 + 7, v291[10]);
        sub_226F92230(v310);
        v240 = v300;
        v241 = v292;
        if (v133)
        {
          sub_2273073F0(v289, type metadata accessor for AssetLoaderResponse);
          (*(v304 + 8))(v240, v305);
        }

        else
        {
          v242 = v311;
          v243 = v312;
          __swift_project_boxed_opaque_existential_0(v310, v311);
          v244 = v268;
          sub_2273A01F8(v242, v243, v268, 1.0);
          v245 = v270;
          v246 = v271;
          if ((*(v270 + 48))(v244, 1, v271) == 1)
          {
            sub_226E97D1C(v244, &qword_27D7B9648, &unk_227674880);
            __swift_destroy_boxed_opaque_existential_0(v310);
          }

          else
          {
            (*(v245 + 32))(v269, v244, v246);
            __swift_destroy_boxed_opaque_existential_0(v310);
            v251 = v245;
            v252 = v238[17];
            v307 = v238[18];
            ObjectType = swift_getObjectType();
            v253 = v246;
            v254 = v264;
            v260(v264, v241, v234);
            v255 = v269;
            (*(v251 + 16))(v254 + *(v265 + 20), v269, v253);
            sub_227307D58(qword_2813A1330, type metadata accessor for AssetProgressUpdated);
            sub_2276699D0();
            sub_2273073F0(v254, type metadata accessor for AssetProgressUpdated);
            (*(v251 + 8))(v255, v253);
          }

          sub_227306ACC(v231, v132);
          v256 = v304;
          sub_2273073F0(v289, type metadata accessor for AssetLoaderResponse);
          (*(v256 + 8))(v300, v305);
        }
      }
    }
  }
}

uint64_t sub_227304A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 8) == 1)
  {
    v44 = v18;
    v45 = a3;
    v46 = a5;
    v21 = *a1;
    v22 = *a1;
    sub_22766A6C0();
    (*(v11 + 16))(v14, a2, v10);
    v23 = v21;
    v24 = sub_22766B380();
    v25 = sub_22766C890();
    sub_226EB4548(v21, 1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = v25;
      v27 = v26;
      v42 = swift_slowAlloc();
      v49 = v42;
      *v27 = 141558530;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2080;
      sub_227307D58(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v28 = sub_22766D140();
      v43 = a4;
      v30 = v29;
      (*(v11 + 8))(v14, v10);
      v31 = sub_226E97AE8(v28, v30, &v49);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2082;
      swift_getErrorValue();
      v32 = MEMORY[0x22AA995D0](v47, v48);
      v34 = sub_226E97AE8(v32, v33, &v49);

      *(v27 + 24) = v34;
      a4 = v43;
      _os_log_impl(&dword_226E8E000, v24, v41, "Failed to write load result AssetEntry for request %{mask.hash}s, with error: %{public}s", v27, 0x20u);
      v35 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v27, -1, -1);

      sub_226EB4548(v21, 1);
    }

    else
    {

      sub_226EB4548(v21, 1);
      (*(v11 + 8))(v14, v10);
    }

    (*(v16 + 8))(v20, v44);
    a3 = v45;
  }

  v36 = *(a3 + 192);
  v37 = sub_227662390();
  sub_2272FAF7C(a4, v37, v38);
}

uint64_t sub_227304E3C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v94 = a1;
  v83 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v72 - v6;
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v86 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2276639B0();
  v78 = *(v81 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_227663180();
  v90 = *(v92 - 8);
  v16 = v90[8];
  v17 = MEMORY[0x28223BE20](v92);
  v88 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v87 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v89 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC38, &unk_22767FF60);
  v26 = *(v8 + 72);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v84 = xmmword_227670CD0;
  *(v28 + 16) = xmmword_227670CD0;
  v91 = a2;
  sub_2276639A0();
  v29 = sub_226F4F878(v28);
  swift_setDeallocating();
  v30 = v8;
  v32 = v8 + 8;
  v31 = *(v8 + 8);
  v33 = v28 + v27;
  v34 = v94;
  v31(v33, v7);
  swift_deallocClassInstance();
  v35 = v93;
  v36 = sub_22707B7C4(v29, v34);

  if (!v35)
  {
    v73 = v31;
    v74 = v32;
    v75 = v30;
    v38 = v88;
    v93 = v7;
    sub_22722AE54(v36, v25);

    v39 = v89;
    sub_226E93170(v25, v89, &qword_27D7B8620, &qword_2276711C0);
    v40 = v90;
    v41 = v92;
    v42 = (v90[6])(v39, 1, v92);
    v76 = v25;
    if (v42 == 1)
    {
      sub_226E97D1C(v39, &qword_27D7B8620, &qword_2276711C0);
LABEL_4:
      (*(v75 + 56))(v85, 1, 1, v93);
      sub_2276639A0();
      sub_227663150();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
      v43 = v40[9];
      v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v84;
      (v40[2])(v45 + v44, v38, v41);
      v46 = sub_226F4AE10(v45);
      swift_setDeallocating();
      (v40[1])(v45 + v44, v41);
      swift_deallocClassInstance();
      sub_227079538(v46, v94);
      sub_226E97D1C(v76, &qword_27D7B8620, &qword_2276711C0);

      return (v40[4])(v83, v38, v41);
    }

    v47 = v40;
    v49 = v40[4];
    v48 = v40 + 4;
    v50 = v87;
    v89 = v49;
    (v49)(v87, v39, v41);
    sub_227663120();
    v51 = sub_227664570();
    if (v51 != sub_227664570())
    {
      sub_227663120();
      v52 = sub_227664570();
      if (v52 != sub_227664570())
      {
        v40 = v47;
        v41 = v92;
        (v47[1])(v50, v92);
        goto LABEL_4;
      }
    }

    v53 = v82;
    sub_22766A6C0();
    v55 = v77;
    v54 = v78;
    v56 = v81;
    (*(v78 + 16))(v77, v91, v81);
    v57 = sub_22766B380();
    v58 = sub_22766C8B0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      LODWORD(v91) = v58;
      v60 = v54;
      v61 = v59;
      v90 = swift_slowAlloc();
      v95 = v90;
      *v61 = 141558274;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2080;
      v62 = v86;
      sub_2276639A0();
      sub_227307D58(&qword_28139BDD0, MEMORY[0x277CC9260]);
      v63 = v93;
      v64 = sub_22766D140();
      v94 = v48;
      v66 = v65;
      v73(v62, v63);
      (*(v60 + 8))(v55, v81);
      v67 = sub_226E97AE8(v64, v66, &v95);
      v68 = v57;
      v69 = v92;

      *(v61 + 14) = v67;
      _os_log_impl(&dword_226E8E000, v68, v91, "Found existing completed or paused entry for URL: %{mask.hash}s", v61, 0x16u);
      v70 = v90;
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x22AA9A450](v70, -1, -1);
      MEMORY[0x22AA9A450](v61, -1, -1);

      (*(v79 + 8))(v82, v80);
      sub_226E97D1C(v76, &qword_27D7B8620, &qword_2276711C0);
      v71 = v83;
    }

    else
    {

      (*(v54 + 8))(v55, v56);
      (*(v79 + 8))(v53, v80);
      sub_226E97D1C(v76, &qword_27D7B8620, &qword_2276711C0);
      v71 = v83;
      v69 = v92;
    }

    return (v89)(v71, v87, v69);
  }

  return result;
}

uint64_t sub_22730573C(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2276624A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_227663990() != 33)
  {
    goto LABEL_4;
  }

  v12 = sub_227663960();
  if (v13)
  {

LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
    v14 = sub_2276639B0();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_227670CD0;
    (*(v15 + 16))(v18 + v17, a2, v14);
    v19 = sub_226F4FB98(v18);
    swift_setDeallocating();
    (*(v15 + 8))(v18 + v17, v14);
    swift_deallocClassInstance();
    sub_22707C950(v19, a1);
  }

  v21 = v12;
  v94 = v8;
  v95 = a3;
  v102 = a2;
  v22 = *(a1 + 3);
  v96 = a1;
  v23 = __swift_project_boxed_opaque_existential_0(a1, v22);
  v24 = *v23;
  v25 = v23[1];
  LODWORD(v93) = *(v23 + 16);
  v26 = v23[3];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = v24;
  v32 = v25;

  sub_22766A070();
  *(v30 + 16) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v93;
  *(v30 + 40) = v26;
  KeyPath = swift_getKeyPath();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v99 = v93;
  v97 = v21;
  v98 = 0;
  v34 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v92 = v34;
  v35 = sub_22766C820();
  sub_226E93170(&v97, v100, &unk_27D7BC990, &qword_227670A30);
  v36 = v101;
  if (v101)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v100, v101);
    v90 = &v88;
    v91 = KeyPath;
    v38 = v35;
    v39 = v30;
    v40 = *(v36 - 8);
    v41 = *(v40 + 64);
    MEMORY[0x28223BE20](v37);
    v43 = &v88 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43);
    v44 = sub_22766D170();
    (*(v40 + 8))(v43, v36);
    v30 = v39;
    v35 = v38;
    __swift_destroy_boxed_opaque_existential_0(v100);
  }

  else
  {
    v44 = 0;
  }

  v90 = objc_opt_self();
  v45 = [v90 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0, &qword_22767FF20);
  v46 = [objc_allocWithZone(v89) initWithLeftExpression:v35 rightExpression:v45 modifier:0 type:4 options:0];

  sub_226E97D1C(&v97, &unk_27D7BC990, &qword_227670A30);
  v47 = qword_2813B2078;
  swift_beginAccess();
  v48 = v46;
  v91 = v47;
  v49 = sub_22766A080();
  v51 = v50;
  MEMORY[0x22AA985C0]();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v88 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v49(&v97, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_2276639A0();
  v52 = sub_227662390();
  v54 = v53;
  (*(v94 + 8))(v11, v7);
  v99 = v93;
  v97 = v52;
  v98 = v54;

  v55 = sub_22766C820();
  sub_226E93170(&v97, v100, &unk_27D7BC990, &qword_227670A30);
  v56 = v101;
  if (v101)
  {
    v57 = __swift_project_boxed_opaque_existential_0(v100, v101);
    v58 = v30;
    v59 = *(v56 - 8);
    v60 = *(v59 + 64);
    MEMORY[0x28223BE20](v57);
    v62 = &v88 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v62);
    v63 = sub_22766D170();
    (*(v59 + 8))(v62, v56);
    v30 = v58;
    __swift_destroy_boxed_opaque_existential_0(v100);
  }

  else
  {
    v63 = 0;
  }

  v64 = [v90 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v65 = [objc_allocWithZone(v89) initWithLeftExpression:v55 rightExpression:v64 modifier:0 type:4 options:0];

  sub_226E97D1C(&v97, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v66 = v65;
  v67 = sub_22766A080();
  v69 = v68;
  MEMORY[0x22AA985C0]();
  if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v87 = *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v67(&v97, 0);
  swift_endAccess();

  v70 = *__swift_project_boxed_opaque_existential_0((v95 + 16), *(v95 + 40));
  v71 = sub_2272322B8(100);
  a1 = v96;
  a2 = v102;
  if (!v3)
  {
    v72 = sub_22707488C(v71, v96);

    v73 = *(v72 + 16);
    if (v73)
    {
      v74 = sub_2274CD768(*(v72 + 16), 0);
      v75 = *(sub_2276639B0() - 8);
      v76 = sub_2274CDD80(&v97, (v74 + ((*(v75 + 80) + 32) & ~*(v75 + 80))), v73, v72);
      sub_226EBB21C();
      if (v76 == v73)
      {
LABEL_20:
        sub_227078AE0(v74, a1);

        swift_setDeallocating();

        v82 = *(v30 + 40);

        v83 = qword_2813B2078;
        v84 = sub_22766A100();
        (*(*(v84 - 8) + 8))(v30 + v83, v84);
        v85 = *(*v30 + 48);
        v86 = *(*v30 + 52);
        swift_deallocClassInstance();
        goto LABEL_4;
      }

      __break(1u);
    }

    v74 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  swift_setDeallocating();

  v77 = *(v30 + 40);

  v78 = qword_2813B2078;
  v79 = sub_22766A100();
  (*(*(v79 - 8) + 8))(v30 + v78, v79);
  v80 = *(*v30 + 48);
  v81 = *(*v30 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_22730617C(uint64_t a1)
{
  v3 = sub_2276639B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  sub_227663CF0();

  return sub_227669270();
}

uint64_t sub_227306350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v2 + 16);
  v9 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_2272FE328(a1, v8, v2 + v7, v9, a2);
}

id sub_227306428(void *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2272FFAF0(a1, v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4));
}

uint64_t sub_227306510(uint64_t a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_22730045C(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_2273065BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetLoaderResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227306620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  type metadata accessor for AssetLoaderResponse();

  return sub_227669270();
}

uint64_t sub_2273066B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_227306780(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_2273067E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(type metadata accessor for AssetLoaderResponse() - 8);
  v12 = *(v2 + v9);
  return sub_2272FE9E8(a1, (v2 + v7), (v2 + v10), v2 + ((v8 + *(v11 + 80) + v10) & ~*(v11 + 80)), a2);
}

uint64_t sub_227306948@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetLoaderResponse() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_227145B00(v4, a1);
}

uint64_t sub_2273069B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_227306A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD3C0, &qword_22767FE60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void sub_227306ACC(uint64_t a1, void *a2)
{
  v48 = a1;
  v49 = sub_2276624A0();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  v45 = v17;
  v46 = v16;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = v10;
  *(v15 + 32) = v10;
  v53 = v11;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  sub_2276639A0();
  v19 = sub_227662390();
  v21 = v20;
  (*(v3 + 8))(v6, v49);
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = v19;
  v52[1] = v21;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v22 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v23 = v51;
  if (v51)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v25 = *(v23 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v31 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  v32 = qword_2813B2078;
  swift_beginAccess();
  v33 = v31;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v43 = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v52, 0);
  swift_endAccess();

  v37 = sub_227542588(v15 + v32, v18, v53);
  if (v37)
  {
    if (v37 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v38 = v47;
    v39 = sub_2272846C4(0);
    if (!v38)
    {
      v40 = v39;
      [v39 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v41 = sub_22766C9E0();
      v42 = sub_226EDAB24(v41);

      sub_226EDAB78(v42, v45);

      return;
    }
  }
}

uint64_t sub_227306FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_2276639B0() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_2273070AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2272FAC14(v1[2], v1[3], v1[4], v1[5], v1[6]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2273070E4(void (*a1)(unint64_t, char *, uint64_t))
{
  v3 = *(sub_2276639B0() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  return sub_2272FC64C(a1, v4);
}

void sub_227307150(char *a1)
{
  v3 = *(sub_2276624A0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2276639B0() - 8);
  sub_2273029E4(a1, *(v1 + 16), (v1 + v4), (v1 + v7), v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)));
}

uint64_t sub_22730729C(uint64_t a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAB8, &qword_22767FE80) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2276624A0() - 8);
  v10 = *(v1 + v5);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_227304A78(a1, v1 + v4, v10, v1 + v7, v11);
}

uint64_t sub_2273073F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227307450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  return sub_227304E3C(a1, v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)), a2);
}

uint64_t sub_2273074D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_227301394(a1, v6, v7, a2);
}

uint64_t sub_227307594@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *__swift_project_boxed_opaque_existential_0((*(v1 + 16) + 56), *(*(v1 + 16) + 80));
  return sub_226F92230(a1);
}

uint64_t sub_227307638(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_2276639B0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t objectdestroy_134Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_227307870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22730252C(a1, v2 + v6, v7, a2);
}

uint64_t sub_227307944(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void))
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return a2(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2273079F4()
{
  v1 = *(sub_2276639B0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2272FBDC8(v0 + v2, v3);
}

uint64_t sub_227307AB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227307BAC@<X0>(void (*a1)(void, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2272FB890(v2[2], v2[3], v2[4], a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_227307BE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  v7 = v5;
  v8 = v2;
  return v3(&v7);
}

uint64_t sub_227307C34(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

uint64_t sub_227307C78(void *a1)
{
  v3 = *(sub_227665490() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2276639B0() - 8);
  return sub_227300E94(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t sub_227307D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227307DF0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return swift_deallocClassInstance();
}

void sub_227307E64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v95 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v80 = &v80 - v4;
  v83 = sub_227664AE0();
  v5 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2276668A0();
  v81 = *(v88 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276639B0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v94 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v80 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v100 = &v80 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v101 = &v80 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - v20;
  v23 = *(a1 + 16);
  v99 = v21;
  v91 = v7;
  v93 = v23;
  if (!v23)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_25:
    v105 = *(v29 + 16);
    if (!v105)
    {
      v101 = MEMORY[0x277D84F90];
      v52 = v99;
LABEL_39:

      v69 = v101;
      v70 = *(v101 + 2);
      if (v70)
      {
        v106 = MEMORY[0x277D84F90];
        sub_226F1F4E8(0, v70, 0);
        v71 = v106;
        v73 = *(v52 + 16);
        v72 = v52 + 16;
        v74 = &v69[(*(v72 + 64) + 32) & ~*(v72 + 64)];
        v104 = *(v72 + 56);
        v105 = v73;
        v99 = v72;
        v75 = v80;
        do
        {
          v76 = v94;
          (v105)(v94, v74, v10);
          sub_22730884C(v76, v75);
          (*(v72 - 8))(v76, v10);
          v106 = v71;
          v78 = *(v71 + 2);
          v77 = *(v71 + 3);
          if (v78 >= v77 >> 1)
          {
            sub_226F1F4E8(v77 > 1, v78 + 1, 1);
            v71 = v106;
          }

          *(v71 + 2) = v78 + 1;
          (*(v96 + 32))(&v71[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v78], v75, v95);
          v74 += v104;
          --v70;
        }

        while (v70);
      }

      else
      {

        v71 = MEMORY[0x277D84F90];
      }

      v106 = v71;
      sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
      v79 = sub_22766C950();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
      sub_22718622C();
      sub_227669240();

      return;
    }

    v51 = 0;
    v52 = v99;
    v104 = v99 + 16;
    v93 = (v81 + 8);
    v102 = (v99 + 8);
    v97 = (v81 + 32);
    v98 = (v99 + 32);
    v101 = MEMORY[0x277D84F90];
    v53 = v83;
    v103 = v29;
    while (1)
    {
      if (v51 >= *(v29 + 16))
      {
        goto LABEL_48;
      }

      v54 = v29;
      v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v56 = *(v52 + 72);
      (*(v52 + 16))(v100, v54 + v55 + v56 * v51, v10);
      sub_227663970();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v87;
        v58 = v7;
        v59 = v7;
        v60 = v53;
        v61 = v88;
        (*v97)(v87, v58, v88);
        v62 = sub_227666850();
        v63 = v61;
        v53 = v60;
        v7 = v59;
        (*v93)(v57, v63);
        if (v62)
        {
          v64 = *v98;
          (*v98)(v86, v100, v10);
          v65 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226F1F508(0, *(v65 + 2) + 1, 1);
            v65 = v106;
          }

          v68 = *(v65 + 2);
          v67 = *(v65 + 3);
          if (v68 >= v67 >> 1)
          {
            sub_226F1F508(v67 > 1, v68 + 1, 1);
            v65 = v106;
          }

          *(v65 + 2) = v68 + 1;
          v101 = v65;
          v64(&v65[v55 + v68 * v56], v86, v10);
          v52 = v99;
          v53 = v83;
          v7 = v91;
          goto LABEL_29;
        }
      }

      else
      {
        sub_226F32360(v7);
      }

      (*v102)(v100, v10);
LABEL_29:
      ++v51;
      v29 = v103;
      if (v105 == v51)
      {
        goto LABEL_39;
      }
    }
  }

  v24 = 0;
  v26 = *(v21 + 16);
  v25 = v21 + 16;
  v103 = v26;
  v85 = *(v25 + 64);
  v97 = ((v85 + 32) & ~v85);
  v92 = v97 + a1;
  v27 = *(v25 + 56);
  v104 = v25;
  v105 = v27;
  v28 = (v25 - 8);
  v29 = MEMORY[0x277D84F90];
  v84 = xmmword_227670CD0;
  v89 = &v80 - v20;
  v102 = (v25 - 8);
  v26(v22, v97 + a1, v10);
  while (1)
  {
    v31 = sub_227663960();
    if (!v32)
    {
      v30 = *v28;
LABEL_4:
      v30(v22, v10);
      goto LABEL_5;
    }

    v33 = v32;
    v90 = v28 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v98 = v24;
    v34 = v10;
    v35 = *(v29 + 16);
    v36 = v101;
    if (!v35)
    {
      break;
    }

    v37 = v31;
    v38 = 0;
    v39 = v97 + v29;
    v40 = v29;
    while (1)
    {
      if (v38 >= *(v29 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v103(v36, v39, v34);
      v41 = sub_227663960();
      if (!v42)
      {
        (*v102)(v36, v34);
        goto LABEL_11;
      }

      if (v41 == v37 && v42 == v33)
      {
        break;
      }

      v43 = sub_22766D190();

      v36 = v101;
      v30 = *v102;
      (*v102)(v101, v34);
      if (v43)
      {

        v7 = v91;
        v29 = v40;
        v10 = v34;
        v22 = v89;
        v24 = v98;
        v28 = v102;
        goto LABEL_4;
      }

LABEL_11:
      ++v38;
      v39 = &v105[v39];
      v29 = v40;
      if (v35 == v38)
      {
        goto LABEL_18;
      }
    }

    v28 = v102;
    v50 = *v102;
    v10 = v34;
    (*v102)(v101, v34);

    v7 = v91;
    v22 = v89;
    v24 = v98;
    v50(v89, v10);
LABEL_5:
    v24 = (v24 + 1);
    if (v24 == v93)
    {
      goto LABEL_25;
    }

    v103(v22, &v92[v105 * v24], v10);
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v44 = v97;
  v45 = swift_allocObject();
  *(v45 + 16) = v84;
  v46 = v44 + v45;
  v22 = v89;
  v10 = v34;
  v103(v46, v89, v34);
  v47 = *(v29 + 16);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  if (!v48 || (v49 = *(v29 + 24) >> 1, v49 <= v47))
  {
    v29 = sub_2273A4EA4(v48, v47 + 1, 1, v29);
    v49 = *(v29 + 24) >> 1;
  }

  v7 = v91;
  v24 = v98;
  v28 = v102;
  if (v49 > *(v29 + 16))
  {
    swift_arrayInitWithCopy();

    ++*(v29 + 16);
    (*v28)(v22, v10);
    goto LABEL_5;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_22730884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = sub_22766B390();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  MEMORY[0x28223BE20](v3);
  v116 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2276639B0();
  v131 = *(v133 - 8);
  v6 = *(v131 + 64);
  v7 = MEMORY[0x28223BE20](v133);
  v109 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v8;
  MEMORY[0x28223BE20](v7);
  v127 = &v100 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v112 = *(v113 - 8);
  v10 = *(v112 + 64);
  v11 = MEMORY[0x28223BE20](v113);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v12;
  MEMORY[0x28223BE20](v11);
  v110 = &v100 - v13;
  v126 = sub_2276624A0();
  v107 = *(v126 - 1);
  v14 = *(v107 + 64);
  v15 = MEMORY[0x28223BE20](v126);
  v103 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v117 = *(v119 - 8);
  v18 = *(v117 + 64);
  v19 = MEMORY[0x28223BE20](v119);
  v114 = v20;
  v115 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v132 = &v100 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v124 = *(v22 - 8);
  v125 = v22;
  v23 = *(v124 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v122 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v25;
  MEMORY[0x28223BE20](v24);
  v123 = &v100 - v26;
  v27 = sub_227664AE0();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2276668A0();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v104 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v100 - v35;
  sub_227663970();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v102 = v32;
    v37 = *(v32 + 32);
    v120 = v32 + 32;
    v121 = v37;
    v111 = v36;
    v101 = v31;
    v37(v36, v30, v31);
    v100 = v17;
    v105 = a1;
    sub_2276639A0();
    v38 = v129[16];
    v39 = v129[17];
    __swift_project_boxed_opaque_existential_0(v129 + 13, v38);
    v40 = v107;
    v41 = v103;
    v42 = v126;
    (*(v107 + 16))(v103, v17, v126);
    v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v44 = swift_allocObject();
    (*(v40 + 32))(v44 + v43, v41, v42);
    v45 = v110;
    sub_226ECF5D8(sub_22730E10C, v44, v38, v42, v39, v110);

    v46 = swift_allocObject();
    *(v46 + 16) = sub_22730D388;
    *(v46 + 24) = 0;
    v47 = v112;
    v48 = v108;
    v49 = v113;
    (*(v112 + 16))(v108, v45, v113);
    v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v51 = (v106 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    (*(v47 + 32))(v52 + v50, v48, v49);
    v53 = (v52 + v51);
    *v53 = sub_22730E188;
    v53[1] = v46;
    sub_227669270();
    (*(v47 + 8))(v45, v49);
    (*(v40 + 8))(v100, v126);
    v54 = v102;
    v55 = v104;
    v56 = v101;
    (*(v102 + 16))(v104, v111, v101);
    v57 = v131;
    v58 = *(v131 + 16);
    v116 = (v131 + 16);
    v126 = v58;
    v59 = v127;
    v60 = v133;
    v58(v127, v105, v133);
    v61 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v62 = *(v57 + 80);
    v63 = (v33 + v62 + v61) & ~v62;
    v113 = v62 | 7;
    v64 = (v128 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    v121(v65 + v61, v55, v56);
    v131 = *(v57 + 32);
    (v131)(v65 + v63, v59, v60);
    *(v65 + v64) = v129;
    v66 = v117;
    v67 = v115;
    v68 = v119;
    (*(v117 + 16))(v115, v132, v119);
    v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v70 = (v114 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    (*(v66 + 32))(v71 + v69, v67, v68);
    v72 = (v71 + v70);
    *v72 = sub_22730E1B8;
    v72[1] = v65;

    v73 = v123;
    sub_227669270();
    (*(v66 + 8))(v132, v68);
    v74 = v127;
    v75 = v133;
    v126(v127, v105, v133);
    v76 = swift_allocObject();
    (v131)(v76 + ((v62 + 16) & ~v62), v74, v75);
    v78 = v124;
    v77 = v125;
    v79 = v122;
    (*(v124 + 16))(v122, v73, v125);
    v80 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v81 = (v118 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    (*(v78 + 32))(v82 + v80, v79, v77);
    v83 = (v82 + v81);
    *v83 = sub_22730E380;
    v83[1] = v76;
    sub_227669270();
    (*(v78 + 8))(v73, v77);
    return (*(v102 + 8))(v111, v101);
  }

  else
  {
    sub_226F32360(v30);
    v85 = v116;
    sub_22766A690();
    v86 = v131;
    v87 = v109;
    v88 = v133;
    (*(v131 + 16))(v109, a1, v133);
    v89 = sub_22766B380();
    v90 = sub_22766C890();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v134 = v92;
      *v91 = 141558274;
      *(v91 + 4) = 1752392040;
      *(v91 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v93 = sub_22766D140();
      v95 = v94;
      (*(v86 + 8))(v87, v88);
      v96 = sub_226E97AE8(v93, v95, &v134);

      *(v91 + 14) = v96;
      _os_log_impl(&dword_226E8E000, v89, v90, "[Keys] Deletion - Asset request %{mask.hash}s is not a key request", v91, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x22AA9A450](v92, -1, -1);
      MEMORY[0x22AA9A450](v91, -1, -1);
    }

    else
    {

      (*(v86 + 8))(v87, v88);
    }

    (*(v120 + 8))(v85, v121);
    v97 = sub_227663190();
    sub_226EB0F68(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v98 = swift_allocError();
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x277D4FCF0], v97);
    *(swift_allocObject() + 16) = v98;
    return sub_227669280();
  }
}

uint64_t sub_2273095CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v270 = a4;
  v268 = a3;
  v8 = sub_2276668A0();
  v252 = *(v8 - 8);
  v9 = *(v252 + 64);
  MEMORY[0x28223BE20](v8);
  v263 = v10;
  v264 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v251 = *(v262 - 8);
  v11 = *(v251 + 64);
  v12 = MEMORY[0x28223BE20](v262);
  v241 = &v211 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v261 = &v211 - v13;
  v250 = sub_227662750();
  v249 = *(v250 - 8);
  v14 = *(v249 + 64);
  v15 = MEMORY[0x28223BE20](v250);
  v245 = &v211 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = v16;
  MEMORY[0x28223BE20](v15);
  v260 = &v211 - v17;
  v233 = sub_22766B360();
  v232 = *(v233 - 1);
  v18 = *(v232 + 64);
  MEMORY[0x28223BE20](v233);
  v234 = &v211 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22766B340();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v231 = &v211 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v220 = *(v221 - 8);
  v23 = *(v220 + 64);
  v24 = MEMORY[0x28223BE20](v221);
  v216 = &v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v25;
  MEMORY[0x28223BE20](v24);
  v218 = &v211 - v26;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAE8, &qword_227680060);
  v224 = *(v226 - 8);
  v27 = *(v224 + 64);
  v28 = MEMORY[0x28223BE20](v226);
  v219 = &v211 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v29;
  MEMORY[0x28223BE20](v28);
  v222 = &v211 - v30;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v228 = *(v229 - 8);
  v31 = *(v228 + 64);
  v32 = MEMORY[0x28223BE20](v229);
  v225 = &v211 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = v33;
  MEMORY[0x28223BE20](v32);
  v227 = &v211 - v34;
  v240 = sub_227669890();
  v239 = *(v240 - 8);
  v35 = *(v239 + 64);
  MEMORY[0x28223BE20](v240);
  v265 = &v211 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v271 = *(v267 - 8);
  v37 = v271[8];
  v38 = MEMORY[0x28223BE20](v267);
  v235 = &v211 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v237 = &v211 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v266 = &v211 - v43;
  v230 = v44;
  MEMORY[0x28223BE20](v42);
  v259 = &v211 - v45;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v247 = *(v248 - 8);
  v46 = *(v247 + 64);
  v47 = MEMORY[0x28223BE20](v248);
  v244 = &v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = v48;
  MEMORY[0x28223BE20](v47);
  v246 = &v211 - v49;
  v272 = sub_2276639B0();
  v50 = *(v272 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v272);
  v54 = &v211 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x28223BE20](v52);
  v238 = &v211 - v56;
  v236 = v57;
  MEMORY[0x28223BE20](v55);
  v59 = &v211 - v58;
  v60 = sub_22766B390();
  v255 = *(v60 - 8);
  v256 = v60;
  v61 = v255[8];
  v62 = MEMORY[0x28223BE20](v60);
  v64 = &v211 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v66 = &v211 - v65;
  v67 = *a1;
  v257 = a1[1];
  v258 = v67;
  v269 = a2;
  v68 = (v50 + 16);
  if (sub_227666850())
  {
    v253 = v8;
    v254 = a5;
    sub_22766A690();
    v69 = *v68;
    v213 = v50 + 16;
    v212 = v69;
    v69(v59, v268, v272);
    v70 = sub_22766B380();
    v71 = sub_22766C8B0();
    v72 = os_log_type_enabled(v70, v71);
    v214 = v11;
    v211 = v50;
    if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v273 = v74;
      *v73 = 141558274;
      *(v73 + 4) = 1752392040;
      *(v73 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v75 = v50;
      v76 = v272;
      v77 = sub_22766D140();
      v79 = v78;
      (*(v75 + 8))(v59, v76);
      v80 = sub_226E97AE8(v77, v79, &v273);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_226E8E000, v70, v71, "[Keys] Deletion - Starting handshake for high value key %{mask.hash}s", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x22AA9A450](v74, -1, -1);
      MEMORY[0x22AA9A450](v73, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v59, v272);
    }

    (v255[1])(v66, v256);
    v91 = __swift_project_boxed_opaque_existential_0((v270 + 56), *(v270 + 80));
    v256 = sub_227666860();
    v93 = v92;
    v94 = sub_227666830();
    v96 = v95;
    v97 = sub_227666840();
    v99 = v98;
    v100 = sub_227666870();
    v101 = *v91;
    sub_22766A800();
    v102 = swift_allocObject();
    *(v102 + 16) = "SeymourServices/KeyProvider.swift";
    *(v102 + 24) = 33;
    *(v102 + 32) = 2;
    *(v102 + 40) = 263;
    *(v102 + 48) = &unk_227680078;
    *(v102 + 56) = v101;
    sub_2276624A0();

    v103 = v218;
    sub_227669270();
    v104 = swift_allocObject();
    *(v104 + 2) = v97;
    *(v104 + 3) = v99;
    v105 = v256;
    *(v104 + 4) = v101;
    *(v104 + 5) = v105;
    *(v104 + 6) = v93;
    *(v104 + 7) = v94;
    *(v104 + 8) = v96;
    *(v104 + 9) = v100;
    v106 = v220;
    v107 = v216;
    v108 = v221;
    (*(v220 + 16))(v216, v103, v221);
    v109 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v110 = (v215 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    (*(v106 + 32))(v111 + v109, v107, v108);
    v112 = (v111 + v110);
    *v112 = sub_22730E490;
    v112[1] = v104;
    sub_226E99364(0, &qword_281398B38, 0x277CEE6D0);

    v113 = v222;
    sub_227669270();
    (*(v106 + 8))(v103, v108);
    v114 = v224;
    v115 = v219;
    v116 = v226;
    (*(v224 + 16))(v219, v113, v226);
    v117 = (*(v114 + 80) + 16) & ~*(v114 + 80);
    v118 = (v217 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = swift_allocObject();
    (*(v114 + 32))(v119 + v117, v115, v116);
    v120 = (v119 + v118);
    *v120 = sub_22730E4EC;
    v120[1] = v101;
    sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

    v121 = v227;
    sub_227669270();
    (*(v114 + 8))(v113, v116);
    v122 = swift_allocObject();
    *(v122 + 16) = sub_22734CC58;
    *(v122 + 24) = 0;
    v123 = v228;
    v124 = v225;
    v125 = v229;
    (*(v228 + 16))(v225, v121, v229);
    v126 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v127 = (v223 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    (*(v123 + 32))(v128 + v126, v124, v125);
    v129 = (v128 + v127);
    *v129 = sub_22730E5B8;
    v129[1] = v122;
    v130 = v266;
    sub_227669270();
    (*(v123 + 8))(v121, v125);
    v131 = sub_2276697A0();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    v134 = sub_227669770();
    v135 = v234;
    sub_227669880();

    sub_22766B350();
    sub_22766B330();
    (*(v232 + 8))(v135, v233);
    sub_227669880();
    v136 = sub_22766A920();
    v137 = *(v136 + 48);
    v138 = *(v136 + 52);
    swift_allocObject();
    v139 = sub_22766A8F0();
    v228 = v139;
    v273 = v134;
    v140 = sub_22766C060();
    v227 = v140;
    v142 = v141;
    v143 = v260;
    sub_227662720();
    v144 = swift_allocObject();
    v229 = v134;
    *(v144 + 16) = v134;
    *(v144 + 24) = v139;
    *(v144 + 32) = v140;
    *(v144 + 40) = v142;
    v226 = v142;
    *(v144 + 48) = "KeyProvider.fetchOfflineNonce";
    *(v144 + 56) = 29;
    *(v144 + 64) = 2;

    v145 = v261;
    sub_227669270();
    v146 = v271;
    v147 = v271[2];
    v255 = v271 + 2;
    v256 = v147;
    v148 = v235;
    v149 = v267;
    v147(v235, v130, v267);
    v150 = v146;
    v234 = *(v146 + 80);
    v230 += (v234 + 16) & ~v234;
    v151 = (v234 + 16) & ~v234;
    v232 = v151;
    v152 = swift_allocObject();
    v153 = v150[4];
    v231 = (v150 + 4);
    v233 = v153;
    v153(v152 + v151, v148, v149);
    v154 = v251;
    v155 = v241;
    v156 = v262;
    (*(v251 + 16))(v241, v145, v262);
    v157 = (*(v154 + 80) + 16) & ~*(v154 + 80);
    v158 = (v214 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
    v159 = swift_allocObject();
    (*(v154 + 32))(v159 + v157, v155, v156);
    v160 = (v159 + v158);
    *v160 = sub_22730E5EC;
    v160[1] = v152;
    v161 = v237;
    sub_227669270();
    v162 = v249;
    v163 = v245;
    v164 = v143;
    v165 = v250;
    (*(v249 + 16))(v245, v164, v250);
    v166 = (*(v162 + 80) + 49) & ~*(v162 + 80);
    v167 = (v242 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
    v168 = swift_allocObject();
    v169 = v226;
    *(v168 + 16) = v227;
    *(v168 + 24) = v169;
    *(v168 + 32) = "KeyProvider.fetchOfflineNonce";
    *(v168 + 40) = 29;
    *(v168 + 48) = 2;
    (*(v162 + 32))(v168 + v166, v163, v165);
    *(v168 + v167) = v228;
    *(v168 + ((v167 + 15) & 0xFFFFFFFFFFFFFFF8)) = v229;
    v170 = v267;
    v256(v148, v161, v267);
    v171 = (v230 + 7) & 0xFFFFFFFFFFFFFFF8;
    v242 = v171;
    v172 = swift_allocObject();
    v233(v172 + v232, v148, v170);
    v173 = (v172 + v171);
    *v173 = sub_22730E63C;
    v173[1] = v168;

    sub_227669270();
    v174 = v271 + 1;
    v175 = v271[1];
    v175(v161, v170);
    v245 = v175;
    v271 = v174;
    (*(v154 + 8))(v261, v262);
    (*(v162 + 8))(v260, v165);
    v175(v266, v170);
    (*(v239 + 8))(v265, v240);

    v176 = v252;
    v177 = *(v252 + 16);
    v262 = v252 + 16;
    v265 = v177;
    v178 = v264;
    (v177)(v264, v269, v253);
    v179 = v238;
    v180 = v272;
    v212(v238, v268, v272);
    v181 = *(v176 + 80);
    v182 = (v181 + 40) & ~v181;
    v268 = v181 | 7;
    v183 = v211;
    v184 = (v263 + *(v211 + 80) + v182) & ~*(v211 + 80);
    v185 = swift_allocObject();
    v186 = v257;
    v187 = v258;
    *(v185 + 2) = v270;
    *(v185 + 3) = v187;
    *(v185 + 4) = v186;
    v188 = *(v176 + 32);
    v189 = v178;
    v190 = v253;
    v188(&v185[v182], v189, v253);
    (*(v183 + 32))(&v185[v184], v179, v180);
    v191 = v266;
    v192 = v267;
    v193 = v259;
    v256(v266, v259, v267);
    v194 = v242;
    v195 = swift_allocObject();
    v196 = v191;
    v197 = v192;
    v233(v195 + v232, v196, v192);
    v198 = (v195 + v194);
    *v198 = sub_22730E718;
    v198[1] = v185;
    v199 = v270;

    sub_226F5E0B4(v258, v257);
    sub_227666230();
    v200 = v246;
    sub_227669270();
    (v245)(v193, v197);
    v201 = v264;
    (v265)(v264, v269, v190);
    v202 = swift_allocObject();
    *(v202 + 16) = v199;
    v188((v202 + ((v181 + 24) & ~v181)), v201, v190);
    v203 = v247;
    v204 = v244;
    v205 = v248;
    (*(v247 + 16))(v244, v200, v248);
    v206 = (*(v203 + 80) + 16) & ~*(v203 + 80);
    v207 = (v243 + v206 + 7) & 0xFFFFFFFFFFFFFFF8;
    v208 = swift_allocObject();
    (*(v203 + 32))(v208 + v206, v204, v205);
    v209 = (v208 + v207);
    *v209 = sub_22730E82C;
    v209[1] = v202;

    sub_227669270();
    return (*(v203 + 8))(v200, v205);
  }

  else
  {
    sub_22766A690();
    (*v68)(v54, v268, v272);
    v81 = sub_22766B380();
    v82 = sub_22766C8B0();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v254 = a5;
      v84 = v83;
      v85 = swift_slowAlloc();
      v273 = v85;
      *v84 = 141558274;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v86 = v272;
      v87 = sub_22766D140();
      v89 = v88;
      (*(v50 + 8))(v54, v86);
      v90 = sub_226E97AE8(v87, v89, &v273);

      *(v84 + 14) = v90;
      _os_log_impl(&dword_226E8E000, v81, v82, "[Keys] Deletion - Not notifying server of low value key deletion %{mask.hash}s", v84, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x22AA9A450](v85, -1, -1);
      MEMORY[0x22AA9A450](v84, -1, -1);
    }

    else
    {

      (*(v50 + 8))(v54, v272);
    }

    (v255[1])(v64, v256);
    return sub_2276692A0();
  }
}

uint64_t sub_22730AF78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v61 = a5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD660, &qword_22767E5C0);
  v53 = *(v60 - 8);
  v59 = *(v53 + 64);
  v7 = MEMORY[0x28223BE20](v60);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v47 - v9;
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = *a1;
  v52 = a1[1];
  v18 = sub_227666860();
  v48 = v19;
  v49 = v18;
  v54 = v16;
  sub_2276639A0();
  sub_226E99364(0, &unk_281398AB0, 0x277CE64D8);
  v20 = sub_22766C990();
  v21 = [objc_opt_self() contentKeySessionWithKeySystem_];

  v47 = a2;
  swift_beginAccess();
  v22 = v21;
  sub_2270BE37C(v62, v22);
  swift_endAccess();

  v23 = *(v11 + 16);
  v50 = v10;
  v23(v14, v16, v10);
  v24 = *(v11 + 80);
  v51 = v11;
  v25 = (v24 + 32) & ~v24;
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v48;
  *(v28 + 16) = v49;
  *(v28 + 24) = v29;
  (*(v11 + 32))(v28 + v25, v14, v10);
  v30 = (v28 + v26);
  v31 = v17;
  *v30 = v17;
  v32 = v52;
  v30[1] = v52;
  *(v28 + v27) = v22;
  v33 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v56;
  v34 = v57;
  *v33 = v56;
  v33[1] = v34;
  v36 = v22;
  sub_226F5E0B4(v31, v32);
  sub_226F5E0B4(v35, v34);
  sub_227666230();
  v37 = v55;
  sub_227669270();
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  *(v38 + 24) = v36;
  v39 = v53;
  v40 = v58;
  v41 = v60;
  (*(v53 + 16))(v58, v37, v60);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v59 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v40, v41);
  v45 = (v44 + v43);
  *v45 = sub_22730EF84;
  v45[1] = v38;

  sub_227669270();
  (*(v39 + 8))(v37, v41);
  return (*(v51 + 8))(v54, v50);
}

uint64_t sub_22730B3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v177 = a3;
  v5 = sub_227662750();
  v175 = *(v5 - 8);
  v176 = v5;
  v174 = *(v175 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v173 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v191 = &v144 - v8;
  v9 = sub_22766B360();
  v181 = *(v9 - 8);
  v182 = v9;
  v10 = v181[8];
  MEMORY[0x28223BE20](v9);
  v180 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v179 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v154 = *(v156 - 8);
  v153 = *(v154 + 64);
  v15 = MEMORY[0x28223BE20](v156);
  v152 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v151 = &v144 - v17;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v160 = *(v161 - 8);
  v159 = *(v160 + 64);
  v18 = MEMORY[0x28223BE20](v161);
  v157 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v155 = &v144 - v20;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v164 = *(v178 - 8);
  v163 = *(v164 + 64);
  v21 = MEMORY[0x28223BE20](v178);
  v162 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v158 = &v144 - v23;
  v24 = sub_227666230();
  v25 = *(v24 - 8);
  v190 = *(v25 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v144 - v29;
  v172 = sub_227669890();
  v171 = *(v172 - 8);
  v31 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v184 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v188 = *(v166 - 8);
  v165 = v188[8];
  v33 = MEMORY[0x28223BE20](v166);
  v167 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v186 = &v144 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v168 = &v144 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v185 = &v144 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v183 = &v144 - v42;
  MEMORY[0x28223BE20](v41);
  v170 = &v144 - v43;
  v44 = __swift_project_boxed_opaque_existential_0((a2 + 56), *(a2 + 80));
  v148 = sub_227666840();
  v147 = v45;
  v150 = sub_227666830();
  v149 = v46;
  v146 = sub_227666870();
  v47 = *v44;
  sub_22766A800();
  v48 = v25;
  v49 = *(v25 + 16);
  v189 = v30;
  v49(v30, a1, v24);
  v50 = v30;
  v51 = v24;
  v187 = v24;
  v49(v28, v50, v24);
  v52 = *(v48 + 80);
  v53 = v48;
  v169 = v48;
  v54 = swift_allocObject();
  *(v54 + 16) = v47;
  v144 = v47;
  v145 = *(v53 + 32);
  v145(v54 + ((v52 + 24) & ~v52), v28, v51);
  v55 = swift_allocObject();
  *(v55 + 16) = "SeymourServices/KeyProvider.swift";
  *(v55 + 24) = 33;
  *(v55 + 32) = 2;
  *(v55 + 40) = 324;
  *(v55 + 48) = &unk_227680088;
  *(v55 + 56) = v54;
  sub_2276624A0();

  v56 = v151;
  sub_227669270();
  v57 = v28;
  v58 = v187;
  v49(v28, v189, v187);
  v59 = (v52 + 40) & ~v52;
  v60 = (v190 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v147;
  *(v61 + 2) = v148;
  *(v61 + 3) = v62;
  v63 = v144;
  *(v61 + 4) = v144;
  v145(v61 + v59, v57, v58);
  v64 = (v61 + v60);
  v65 = v149;
  *v64 = v150;
  v64[1] = v65;
  *(v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8)) = v146;
  v66 = v154;
  v67 = v152;
  v68 = v56;
  v69 = v156;
  (*(v154 + 16))(v152, v56, v156);
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v71 = (v153 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v73 = v72 + v70;
  v74 = v69;
  (*(v66 + 32))(v73, v67, v69);
  v75 = (v72 + v71);
  *v75 = sub_22730EA88;
  v75[1] = v61;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v76 = v155;
  sub_227669270();
  (*(v66 + 8))(v68, v74);
  v77 = swift_allocObject();
  *(v77 + 16) = sub_22734E920;
  *(v77 + 24) = 0;
  v78 = v160;
  v79 = v157;
  v80 = v76;
  v81 = v76;
  v82 = v161;
  (*(v160 + 16))(v157, v80, v161);
  v83 = v78;
  v84 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v85 = (v159 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  (*(v83 + 32))(v86 + v84, v79, v82);
  v87 = (v86 + v85);
  *v87 = sub_22730EB74;
  v87[1] = v77;
  v88 = v158;
  sub_227669270();
  (*(v83 + 8))(v81, v82);
  v89 = v164;
  v90 = v162;
  v91 = v88;
  v92 = v178;
  (*(v164 + 16))(v162, v88, v178);
  v93 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v94 = (v163 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  (*(v89 + 32))(v95 + v93, v90, v92);
  v96 = (v95 + v94);
  *v96 = sub_22730EBA4;
  v96[1] = v63;

  v97 = v183;
  sub_227669270();
  (*(v89 + 8))(v91, v92);
  v98 = sub_2276697A0();
  v99 = *(v98 + 48);
  v100 = *(v98 + 52);
  swift_allocObject();
  v101 = sub_227669770();
  v102 = v180;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (v181[1])(v102, v182);
  sub_227669880();
  v103 = sub_22766A920();
  v104 = *(v103 + 48);
  v105 = *(v103 + 52);
  swift_allocObject();
  v106 = sub_22766A8F0();
  v163 = v106;
  v192 = v101;
  v107 = sub_22766C060();
  v162 = v107;
  v109 = v108;
  sub_227662720();
  v110 = swift_allocObject();
  v164 = v101;
  *(v110 + 16) = v101;
  *(v110 + 24) = v106;
  *(v110 + 32) = v107;
  *(v110 + 40) = v109;
  v161 = v109;
  *(v110 + 48) = "KeyProvider.submitOfflineContextInvalidation";
  *(v110 + 56) = 44;
  *(v110 + 64) = 2;

  v111 = v185;
  sub_227669270();
  v112 = v188;
  v113 = v188 + 2;
  v190 = v188[2];
  v114 = v186;
  v115 = v166;
  v190(v186, v97, v166);
  v182 = v113;
  v116 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v117 = v116 + v165;
  v178 = *(v112 + 80);
  v165 = swift_allocObject();
  v118 = v112[4];
  v179 = v116;
  v118(v165 + v116, v114, v115);
  v180 = v118;
  v181 = v112 + 4;
  v119 = v167;
  v120 = v115;
  v190(v167, v111, v115);
  v121 = (v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  v118(v122 + v116, v119, v115);
  v123 = (v122 + v121);
  v124 = v165;
  *v123 = sub_226EC15F4;
  v123[1] = v124;
  v125 = v168;
  sub_227669270();
  v126 = v175;
  v127 = v176;
  v128 = v173;
  (*(v175 + 16))(v173, v191, v176);
  v129 = (*(v126 + 80) + 49) & ~*(v126 + 80);
  v130 = (v174 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
  v131 = swift_allocObject();
  v132 = v161;
  *(v131 + 16) = v162;
  *(v131 + 24) = v132;
  *(v131 + 32) = "KeyProvider.submitOfflineContextInvalidation";
  *(v131 + 40) = 44;
  *(v131 + 48) = 2;
  (*(v126 + 32))(v131 + v129, v128, v127);
  *(v131 + v130) = v163;
  *(v131 + ((v130 + 15) & 0xFFFFFFFFFFFFFFF8)) = v164;
  v133 = v186;
  v190(v186, v125, v120);
  v134 = swift_allocObject();
  (v180)(&v179[v134], v133, v120);
  v135 = (v134 + v121);
  *v135 = sub_22730EDD8;
  v135[1] = v131;

  v136 = v170;
  sub_227669270();
  v137 = v188[1];
  v137(v125, v120);
  v137(v185, v120);
  (*(v126 + 8))(v191, v127);
  v138 = v183;
  v137(v183, v120);
  (*(v169 + 8))(v189, v187);
  (*(v171 + 8))(v184, v172);

  v139 = swift_allocObject();
  v139[2] = 0xD00000000000002DLL;
  v139[3] = 0x800000022769D8A0;
  v139[4] = 91;
  v140 = swift_allocObject();
  *(v140 + 16) = sub_226F323BC;
  *(v140 + 24) = v139;
  v190(v138, v136, v120);
  v141 = swift_allocObject();
  (v180)(&v179[v141], v138, v120);
  v142 = (v141 + v121);
  *v142 = sub_226F323DC;
  v142[1] = v140;
  sub_227669270();
  return (v137)(v136, v120);
}

uint64_t sub_22730C5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  if (*(a1 + 8) == 1)
  {
    v47 = v13;
    v20 = *a1;
    v21 = *a1;
    sub_22766A690();
    (*(v5 + 16))(v11, a2, v4);
    v22 = v20;
    v23 = sub_22766B380();
    v24 = sub_22766C890();
    sub_226EB4548(v20, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v25 = 141558530;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v26 = sub_22766D140();
      v46 = v12;
      v28 = v27;
      (*(v5 + 8))(v11, v4);
      v29 = sub_226E97AE8(v26, v28, &v50);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      swift_getErrorValue();
      v30 = MEMORY[0x22AA995D0](v48, v49);
      v32 = sub_226E97AE8(v30, v31, &v50);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_226E8E000, v23, v24, "[Keys] Deletion - failed for request %{mask.hash}s with error %{public}s", v25, 0x20u);
      v33 = v45;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      sub_226EB4548(v20, 1);
      return (*(v47 + 8))(v19, v46);
    }

    else
    {

      sub_226EB4548(v20, 1);
      (*(v5 + 8))(v11, v4);
      return (*(v47 + 8))(v19, v12);
    }
  }

  else
  {
    sub_22766A690();
    (*(v5 + 16))(v9, a2, v4);
    v35 = sub_22766B380();
    v36 = sub_22766C8B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v13;
      v39 = v38;
      v50 = v38;
      *v37 = 141558274;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2080;
      sub_226EB0F68(&qword_28139BCA0, MEMORY[0x277D501C8]);
      v40 = sub_22766D140();
      v46 = v12;
      v41 = v40;
      v43 = v42;
      (*(v5 + 8))(v9, v4);
      v44 = sub_226E97AE8(v41, v43, &v50);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_226E8E000, v35, v36, "[Keys] Deletion - completed successfully for request %{mask.hash}s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);

      return (*(v47 + 8))(v17, v46);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      return (*(v13 + 8))(v17, v12);
    }
  }
}

uint64_t sub_22730CB88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - v11;
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = v13;
  v22 = v14;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  swift_getKeyPath();
  v23 = sub_227662390();
  v25 = v24;
  v69[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v69[0] = v23;
  v69[1] = v25;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v26 = sub_22766C820();
  sub_226E93170(v69, v67, &unk_27D7BC990, &qword_227670A30);
  v27 = v68;
  if (v68)
  {
    v28 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v29 = *(v27 - 8);
    v30 = *(v29 + 64);
    MEMORY[0x28223BE20](v28);
    v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32);
    v33 = sub_22766D170();
    (*(v29 + 8))(v32, v27);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v35 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

  sub_226E97D1C(v69, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v36 = v35;
  v37 = sub_22766A080();
  v39 = v38;
  MEMORY[0x22AA985C0]();
  v40 = v70;
  if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v37(v69, 0);
  swift_endAccess();

  v41 = MEMORY[0x22AA99A00]();
  v42 = v66;
  sub_227544DD4(v20, v40);
  if (v42)
  {
    objc_autoreleasePoolPop(v41);
    swift_setDeallocating();

    v43 = *(v20 + 40);

    v44 = qword_2813B2078;
    v45 = sub_22766A100();
    (*(*(v45 - 8) + 8))(v20 + v44, v45);
    v46 = *(*v20 + 48);
    v47 = *(*v20 + 52);
    return swift_deallocClassInstance();
  }

  objc_autoreleasePoolPop(v41);
  swift_setDeallocating();

  v49 = *(v20 + 40);

  v50 = qword_2813B2078;
  v51 = sub_22766A100();
  (*(*(v51 - 8) + 8))(v20 + v50, v51);
  v52 = *(*v20 + 48);
  v53 = *(*v20 + 52);
  swift_deallocClassInstance();
  sub_226E93170(v40, v10, &qword_27D7B8620, &qword_2276711C0);
  v54 = sub_227663180();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v10, 1, v54) == 1)
  {
    sub_226E97D1C(v10, &qword_27D7B8620, &qword_2276711C0);
    v56 = sub_2276624A0();
    v57 = v65;
    (*(*(v56 - 8) + 56))(v65, 1, 1, v56);
LABEL_11:
    sub_226E97D1C(v57, &unk_27D7BB570, &unk_227670FC0);
    v60 = sub_227663190();
    sub_226EB0F68(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v60 - 8) + 104))(v61, *MEMORY[0x277D4FD58], v60);
    swift_willThrow();
    return sub_226E97D1C(v40, &qword_27D7B8620, &qword_2276711C0);
  }

  v57 = v65;
  sub_227663160();
  (*(v55 + 8))(v10, v54);
  v58 = sub_2276624A0();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    goto LABEL_11;
  }

  sub_226E97D1C(v40, &qword_27D7B8620, &qword_2276711C0);
  return (*(v59 + 32))(v64, v57, v58);
}

uint64_t sub_22730D388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276624C0();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

void sub_22730D3B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9)
{
  v61 = a8;
  v57 = a7;
  v56 = a6;
  v64 = a1;
  v58 = a9;
  v13 = sub_2276624A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v59 = v17;
  v60 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v53 = sub_22766B390();
  v52 = *(v53 - 8);
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v65 = v14;
  v23 = *(v14 + 16);
  v62 = a5;
  v63 = v13;
  v55 = v14 + 16;
  v54 = v23;
  v23(v19, a5, v13);

  v24 = sub_22766B380();
  v25 = sub_22766C8B0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v51 = a2;
    v27 = v26;
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v27 = 136446722;
    *(v27 + 4) = sub_226E97AE8(a3, a4, aBlock);
    *(v27 + 12) = 2160;
    *(v27 + 14) = 1752392040;
    *(v27 + 22) = 2080;
    v28 = sub_227662390();
    v30 = v29;
    v31 = v19;
    v32 = v63;
    (*(v65 + 8))(v31, v63);
    v33 = sub_226E97AE8(v28, v30, aBlock);

    *(v27 + 24) = v33;
    _os_log_impl(&dword_226E8E000, v24, v25, "[Keys] Invalidating local FairPlay keys for workoutIdentifier: %{public}s, keyURL: %{mask.hash}s", v27, 0x20u);
    v34 = v50;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v27;
    a2 = v51;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  else
  {

    v36 = v19;
    v32 = v63;
    (*(v65 + 8))(v36, v63);
  }

  (*(v52 + 8))(v22, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF8, &qword_227680090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v38 = *MEMORY[0x277CE5D18];
  *(inited + 32) = *MEMORY[0x277CE5D18];
  v39 = v56;
  v40 = v57;
  *(inited + 40) = v56;
  *(inited + 48) = v40;
  v41 = v38;
  sub_226F5E0B4(v39, v40);
  v42 = sub_22714B360(inited);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &qword_27D7BCB00, qword_227680098);
  v43 = sub_227662560();
  sub_227332924(v42);

  type metadata accessor for AVContentKeySessionServerPlaybackContextOption(0);
  sub_226EB0F68(&qword_27D7B8360, type metadata accessor for AVContentKeySessionServerPlaybackContextOption);
  v44 = sub_22766BE90();

  v45 = v60;
  v54(v60, v62, v32);
  v46 = v65;
  v47 = (*(v65 + 80) + 48) & ~*(v65 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = v64;
  *(v48 + 3) = a2;
  *(v48 + 4) = a3;
  *(v48 + 5) = a4;
  (*(v46 + 32))(&v48[v47], v45, v32);
  aBlock[4] = sub_22730F07C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FD32A0;
  aBlock[3] = &block_descriptor_25;
  v49 = _Block_copy(aBlock);

  [v61 invalidatePersistableContentKey:v43 options:v44 completionHandler:v49];
  _Block_release(v49);
}

uint64_t sub_22730D9B8(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a8;
  v62 = a2;
  v59[0] = a7;
  v59[1] = a6;
  v67 = a5;
  v68 = a4;
  v60 = a1;
  v9 = sub_22766B390();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v59 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C8, &qword_227674900);
  v16 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = (v59 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v59 - v20;
  v22 = sub_2276624A0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_227666230();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_22766A690();
    v32 = a3;
    v33 = sub_22766B380();
    v34 = sub_22766C890();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73 = v36;
      *v35 = 136446210;
      swift_getErrorValue();
      v71 = MEMORY[0x22AA995D0](v69, v70);
      v72 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v38 = sub_22766CB80();
      v40 = v39;

      v41 = sub_226E97AE8(v38, v40, &v73);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_226E8E000, v33, v34, "[Keys] AV failed to invalidate persistable key with error: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    (*(v63 + 8))(v13, v64);
    v42 = v65;
    *v65 = a3;
    swift_storeEnumTagMultiPayload();
    v43 = a3;
  }

  else
  {
    v44 = v60;
    v45 = v62;
    if (v62 >> 60 != 15)
    {
      (*(v23 + 16))(v26, v61, v22);
      v57 = sub_227664900();
      (*(*(v57 - 8) + 56))(v21, 1, 1, v57);
      sub_226FB1554(v44, v45);

      sub_2276661E0();
      v58 = v65;
      (*(v28 + 16))(v65, v31, v27);
      swift_storeEnumTagMultiPayload();
      v68(v58);
      sub_226E97D1C(v58, &qword_27D7B96C8, &qword_227674900);
      return (*(v28 + 8))(v31, v27);
    }

    sub_22766A690();
    v46 = sub_22766B380();
    v47 = sub_22766C890();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72 = 0;
      v73 = v49;
      *v48 = 136446210;
      v71 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v50 = sub_22766CB80();
      v52 = sub_226E97AE8(v50, v51, &v73);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_226E8E000, v46, v47, "[Keys] invalidatePersistableContentKey failed with error: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AA9A450](v49, -1, -1);
      MEMORY[0x22AA9A450](v48, -1, -1);
    }

    (*(v63 + 8))(v15, v64);
    v53 = sub_227663190();
    sub_226EB0F68(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D4FDC0], v53);
    v42 = v65;
    *v65 = v54;
    swift_storeEnumTagMultiPayload();
  }

  v68(v42);
  return sub_226E97D1C(v42, &qword_27D7B96C8, &qword_227674900);
}

void sub_22730E0B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v4 = sub_22700D178(a3);
  swift_endAccess();
}

uint64_t sub_22730E1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276668A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2276639B0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2273095CC(a1, v2 + v6, v2 + v9, v10, a2);
}

uint64_t objectdestroy_7Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22730E380(uint64_t a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22730C5FC(a1, v4);
}

uint64_t sub_22730E3F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22734BB0C(a1, v1);
}

uint64_t sub_22730E490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_22734BCD4(a1, v2[4], v2[5], v2[6], v2[7], v2[8], a2, v2[9]);
}

uint64_t sub_22730E51C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_22730E63C(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2273539BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22730E718@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276668A0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2276639B0() - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_22730AF78(a1, v9, v10, v11, a2);
}

uint64_t sub_22730E82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(sub_2276668A0() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_22730B3E8(a1, v6, a2);
}

uint64_t objectdestroy_68Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22730E9A4(uint64_t a1)
{
  v4 = *(sub_227666230() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22734D698(a1, v6, v1 + v5);
}

uint64_t sub_22730EA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666230() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 40) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = (v2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v2 + v7);

  return sub_22734D8B8(a1, v10, v12, v13, v14, a2);
}

uint64_t objectdestroy_47Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_22730EC1C(void (*a1)(void), uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  sub_2274296CC(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t sub_22730EC50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_227662750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22730EDD8(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_227353A88(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_22730EEB4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v9 + 8);
  sub_22730D3B8(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v9));
}

uint64_t sub_22730EFB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22730F07C(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_2276624A0() - 8);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_22730D9B8(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_22730F118()
{
  v0 = sub_227665650();
  v1 = v0;
  v2 = v0 + 56;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(v1 + 48) + ((v8 << 10) | (16 * v10));
      if ((*(v11 + 8) & 1) == 0)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v13 = *v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A5120(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v14 = *(v9 + 16);
    v15 = *(v9 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v20 = v14 + 1;
      v17 = v9;
      v18 = *(v9 + 16);
      result = sub_2273A5120((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v20;
      v9 = result;
    }

    *(v9 + 16) = v16;
    *(v9 + 8 * v14 + 32) = v13;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  if (*(v9 + 16))
  {
    v19 = *(v9 + 32);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_22730F2B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v17 = sub_227662190();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662940();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = sub_2276629D0();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_227665400();
  sub_227665410();
  sub_227665420();
  sub_227665430();
  sub_227662180();
  v14 = sub_2276620D0();
  (*(v8 + 8))(v11, v17);
  return v14;
}

void sub_22730F570(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 seed];
  if (v4)
  {
    v5 = v4;
    v6 = sub_227662590();
    v8 = v7;

    v9 = [a1 workoutIdentifier];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22766C000();
      v13 = v12;

      *a2 = v6;
      a2[1] = v8;
      a2[2] = v11;
      a2[3] = v13;
      return;
    }

    sub_226EDC420(v6, v8);
  }

  v14 = sub_227664DD0();
  sub_226FC4F70();
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51028], v14);
  swift_willThrow();
}

void sub_22730F6C4(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_227662560();
  [a1 setSeed_];

  v8 = sub_22766BFD0();
  [a1 setWorkoutIdentifier_];
}

uint64_t _s15SeymourServices17StreamingKeyNonceV21representativeSamplesSayACGyFZ_0()
{
  v0 = sub_2276624D0();
  v17 = sub_22766C090();
  v18[0] = v0;
  v18[1] = v18;
  v18[2] = &v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v1 = sub_2276638E0();

  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    result = sub_226F20468(0, v2, 0);
    v4 = 0;
    v5 = v16;
    v6 = (v1 + 56);
    v14 = v2;
    v15 = v1;
    while (v4 < *(v1 + 16))
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v9 = *v6;
      sub_226F5E0B4(v7, v8);
      v11 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v11 >= v12 >> 1)
      {
        result = sub_226F20468((v12 > 1), v11 + 1, 1);
      }

      ++v4;
      *(v16 + 16) = v11 + 1;
      v13 = (v16 + 32 * v11);
      v13[4] = v7;
      v13[5] = v8;
      v13[6] = v10;
      v13[7] = v9;
      v6 += 4;
      v1 = v15;
      if (v14 == v4)
      {

        return v5;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_22730F928(uint64_t a1)
{
  result = sub_22730F950();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22730F950()
{
  result = qword_27D7BCB08;
  if (!qword_27D7BCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCB08);
  }

  return result;
}

uint64_t sub_22730F9A4(char a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  sub_22766A730();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_226E8E000, v9, v10, "using ServiceSubscriptionFakingProvider with subscribed = %{BOOL,public}d", v11, 8u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return v2;
}

uint64_t sub_22730FB24(void *a1, void (*a2)(id, void, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB10, &unk_2276801D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = sub_22766BD00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v14 = swift_dynamicCast();
  v15 = *(v9 + 56);
  if (v14)
  {
    v15(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v16 = sub_227333070();
    a2(v16, 0, 1);

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v15(v7, 1, 1, v8);
    sub_226E97D1C(v7, &qword_27D7BCB10, &unk_2276801D8);
    return (a2)(a1, 0, 1);
  }
}

uint64_t sub_22730FD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v29 = MEMORY[0x277D84F90];
  sub_226F1EFF0(0, v2, 0);
  v3 = v29;
  v5 = -1 << *(a1 + 32);
  v28 = a1 + 56;
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v26 = v2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v28 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v7));
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_226F1EFF0((v14 > 1), v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v29 + 16) = v15 + 1;
    v16 = v29 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v28 + 8 * v11);
    if ((v17 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v7 & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v26;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v10 = v26;
      v21 = (a1 + 64 + 8 * v11);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v7, v12, 0);
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v12, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_22730FF6C(uint64_t a1)
{
  v50 = sub_227669360();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v43 - v6;
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - v8;
  v9 = *(a1 + 16);
  v55 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v9, 0);
  v10 = a1 + 56;
  v11 = v55;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v51 = a1;
  v52 = v2;
  v48 = v9;
  if (v9)
  {
    v46 = v2 + 8;
    v47 = v2 + 16;

    v16 = 0;
    v17 = 0;
    while (v14)
    {
      v18 = v11;
LABEL_11:
      v20 = v52;
      v21 = *(a1 + 48) + *(v52 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v22 = v49;
      v23 = v50;
      (*(v52 + 16))(v49, v21, v50);
      v24 = sub_227669350();
      v53 = v25;
      v54 = v24;
      (*(v20 + 8))(v22, v23);
      v11 = v18;
      v55 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1EF90(v26 > 1, v27 + 1, 1);
        v11 = v55;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      v29 = v53;
      *(v28 + 32) = v54;
      *(v28 + 40) = v29;
      a1 = v51;
      if (v16 == v48)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v19);
      ++v17;
      if (v14)
      {
        v18 = v11;
        v17 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v30 = v52;
    v53 = v52 + 16;
    v48 = v52 + 8;
    v49 = (v52 + 32);
    if (!v14)
    {
      goto LABEL_18;
    }

    do
    {
      v54 = v11;
LABEL_22:
      v32 = *(a1 + 48) + *(v30 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v33 = v45;
      v34 = v50;
      (*(v30 + 16))(v45, v32, v50);
      v35 = v44;
      (*(v30 + 32))(v44, v33, v34);
      v36 = sub_227669350();
      v38 = v37;
      (*(v30 + 8))(v35, v34);
      v11 = v54;
      v55 = v54;
      v40 = *(v54 + 16);
      v39 = *(v54 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226F1EF90(v39 > 1, v40 + 1, 1);
        v11 = v55;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v40 + 1;
      v41 = v11 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      a1 = v51;
      v30 = v52;
    }

    while (v14);
LABEL_18:
    while (1)
    {
      v31 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v31 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 8 * v31);
      ++v17;
      if (v14)
      {
        v54 = v11;
        v17 = v31;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
LABEL_29:

  __break(1u);
  return result;
}

uint64_t sub_227310350()
{
  v0 = sub_227664F60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 200);
    v12 = *(result + 208);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v6 + 104))(v9, *MEMORY[0x277D4E048], v5);
    sub_227669980();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_227310564(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = sub_2276699A0();
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_227664F60();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[2];
  sub_22766A760();
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v28[1] = a3;
    v23 = v22;
    *v22 = 0;
    _os_log_impl(&dword_226E8E000, v20, v21, "Received Bookmark Update. Sending Event.", v22, 2u);
    MEMORY[0x22AA9A450](v23, -1, -1);
  }

  (*(v14 + 8))(v17, v13);

  sub_227664F40();
  swift_getObjectType();
  v24 = v30;
  (*(v7 + 16))(v29, v12, v30);
  v25 = v31;
  sub_227669990();
  v26 = v34;
  sub_2276699D0();
  (*(v32 + 8))(v25, v26);
  return (*(v7 + 8))(v12, v24);
}

uint64_t sub_227310898()
{
  v0 = sub_227665250();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227669910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 200);
    v12 = *(result + 208);
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v6 + 104))(v9, *MEMORY[0x277D4E050], v5);
    sub_227669A20();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_227310AAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = sub_227669A40();
  v32 = *(v34 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_227665250();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v30);
  v29 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[2];
  sub_22766A760();
  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v28[1] = a3;
    v23 = v22;
    *v22 = 0;
    _os_log_impl(&dword_226E8E000, v20, v21, "Received Playlist Update. Sending Event.", v22, 2u);
    MEMORY[0x22AA9A450](v23, -1, -1);
  }

  (*(v14 + 8))(v17, v13);

  sub_227665240();
  swift_getObjectType();
  v24 = v30;
  (*(v7 + 16))(v29, v12, v30);
  v25 = v31;
  sub_227669A30();
  v26 = v34;
  sub_2276699D0();
  (*(v32 + 8))(v25, v26);
  return (*(v7 + 8))(v12, v24);
}

uint64_t sub_227310DE0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v2 = v0[19];

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v3 = v0[25];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_227310E6C()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227310F2C, 0, 0);
}

uint64_t sub_227310F2C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v9 = v0;
  v9[1] = sub_226F9D924;
  v11 = v0[3];

  return (v13)(v0 + 2, sub_2273170A0, v11, v10, v5, v6);
}

uint64_t sub_2273110FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2276641B0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311220, 0, 0);
}

uint64_t sub_227311220()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v7[17];
  v11 = v7[18];
  __swift_project_boxed_opaque_existential_0(v7 + 14, v10);
  (*(v5 + 16))(v4, v9, v8);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[12] = v13;
  *(v13 + 16) = v7;
  (*(v5 + 32))(v13 + v12, v4, v8);
  v14 = *(v11 + 24);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[13] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v16 = v0;
  v16[1] = sub_227311478;

  return (v19)(v0 + 2, sub_22731725C, v13, v17, v10, v11);
}

uint64_t sub_227311478()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_227317448;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_227317470;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227311594(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311654, 0, 0);
}

uint64_t sub_227311654()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[17];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v11 = v0;
  v11[1] = sub_227311858;

  return (v14)(v0 + 2, sub_2273173E0, v8, v12, v6, v7);
}

uint64_t sub_227311858()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_22731744C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_227317474;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227311974(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311A34, 0, 0);
}

uint64_t sub_227311A34()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[17];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v11 = v0;
  v11[1] = sub_227311858;

  return (v14)(v0 + 2, sub_22731736C, v8, v12, v6, v7);
}

uint64_t sub_227311C38@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  result = sub_227315FB4(a2, a1);
  if (!v3)
  {
    v6 = sub_2272391B8(0x64);

    *a3 = v6;
  }

  return result;
}

uint64_t sub_227311C98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227311D58, 0, 0);
}

uint64_t sub_227311D58()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[17];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  *v11 = v0;
  v11[1] = sub_227311858;

  return (v14)(v0 + 2, sub_227317350, v8, v12, v6, v7);
}

uint64_t sub_227311F5C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227316B70(a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v7 = sub_2272391B8(0x64);

  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_227311FD8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227312098, 0, 0);
}

uint64_t sub_227312098()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[17];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_227204F34;
  v12 = MEMORY[0x277D83B88];

  return (v14)(v0 + 2, sub_227317328, v8, v12, v6, v7);
}

void sub_22731228C(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_227315FB4(a2, a1);
  if (!v3)
  {
    v6 = v5;
    v7 = sub_22728494C(0);
    [v7 setResultType_];
    [v7 setFetchLimit_];
    [v7 setFetchOffset_];
    [v7 setIncludesSubentities_];
    v8 = *(v6 + 16);
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v9 = sub_22766C9D0();

    *a3 = v9;
  }
}

uint64_t sub_227312390(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2276641B0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273124B4, 0, 0);
}

uint64_t sub_2273124B4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v7[17];
  v11 = v7[18];
  __swift_project_boxed_opaque_existential_0(v7 + 14, v10);
  (*(v5 + 16))(v4, v9, v8);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[12] = v13;
  *(v13 + 16) = v7;
  (*(v5 + 32))(v13 + v12, v4, v8);
  v14 = *(v11 + 24);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_227204A68;
  v17 = MEMORY[0x277D83B88];

  return (v19)(v0 + 2, sub_2273171DC, v13, v17, v10, v11);
}

uint64_t sub_2273126FC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = sub_2275183DC(a2, a1);
  if (!v3)
  {
    v6 = *(result + 16);

    *a3 = v6;
  }

  return result;
}

uint64_t sub_227312748(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227312808, 0, 0);
}

uint64_t sub_227312808()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[17];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_227311858;
  v12 = MEMORY[0x277D83B88];

  return (v14)(v0 + 2, sub_2273171B4, v8, v12, v6, v7);
}

void sub_2273129FC(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = sub_227316B70(a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v8 = sub_22728494C(0);
  if (v3)
  {
  }

  else
  {
    v9 = v8;
    [v8 setResultType_];
    [v9 setFetchLimit_];
    [v9 setFetchOffset_];
    [v9 setIncludesSubentities_];
    v10 = *(v7 + 16);
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v11 = sub_22766C9D0();

    *a3 = v11;
  }
}

uint64_t sub_227312B18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276699A0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227664F60();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227312C40, 0, 0);
}

uint64_t sub_227312C40()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_227312DD0;

  return v9();
}

uint64_t sub_227312DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_227313054;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_227312EEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227312EEC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v14 = v0[4];
  v8 = v0[2];
  v9 = *__swift_project_boxed_opaque_existential_0(v7 + 20, v7[23]);
  sub_2271D7EE8();

  sub_227664F40();
  v10 = v7[12];
  v13 = v7[13];
  swift_getObjectType();
  (*(v4 + 16))(v1, v2, v3);
  sub_227669990();
  sub_2276699D0();
  (*(v6 + 8))(v5, v14);
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_227313054()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_2273130E0(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v84 = a1;
  v83 = sub_22766B390();
  v4 = *(v83 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v83);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v70 - v8;
  v9 = sub_227669360();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - v12;
  MEMORY[0x28223BE20](v14);
  v79 = &v70 - v17;
  v18 = a2 + 56;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 56);
  v22 = (v19 + 63) >> 6;
  v89 = v15 + 16;
  v90 = v15;
  v78 = v15 + 32;
  v91 = (v15 + 8);
  v82 = (v4 + 8);
  v85 = a2;
  v23 = v16;

  v25 = 0;
  *&v26 = 136315138;
  v72 = v26;
  v77 = xmmword_227670CD0;
  v80 = v23;
  v76 = v18;
  v75 = v22;
  v73 = v9;
  v81 = v13;
  if (v21)
  {
    while (1)
    {
      v27 = v25;
      v28 = v88;
LABEL_9:
      v29 = *(v85 + 48);
      v30 = v90;
      v86 = *(v90 + 72);
      v31 = *(v90 + 16);
      v32 = v79;
      v31(v79, v29 + v86 * (__clz(__rbit64(v21)) | (v27 << 6)), v9);
      (*(v30 + 32))(v13, v32, v9);
      sub_22766A730();
      v33 = v80;
      v87 = v31;
      v31(v80, v13, v9);
      v34 = sub_22766B380();
      v35 = v9;
      v36 = sub_22766C8B0();
      if (os_log_type_enabled(v34, v36))
      {
        v37 = v33;
        v38 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v93 = v74;
        *v38 = v72;
        sub_22731701C();
        v39 = sub_22766D140();
        v40 = v35;
        v41 = v39;
        v43 = v42;
        v44 = *v91;
        (*v91)(v37, v40);
        v45 = sub_226E97AE8(v41, v43, &v93);

        *(v38 + 4) = v45;
        _os_log_impl(&dword_226E8E000, v34, v36, "Inserting %s", v38, 0xCu);
        v46 = v74;
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v38, -1, -1);

        v47 = *v82;
        (*v82)(v88, v83);
        v9 = v73;
      }

      else
      {

        v44 = *v91;
        (*v91)(v33, v35);
        v47 = *v82;
        (*v82)(v28, v83);
        v9 = v35;
      }

      v48 = __swift_project_boxed_opaque_existential_0(v84, v84[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0F8, &qword_227679B00);
      v49 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v77;
      v13 = v81;
      v87(v50 + v49, v81, v9);
      v51 = v92;
      sub_227562F00(v50, v48[1], *(v48 + 16), v48[3]);
      v92 = v51;
      if (v51)
      {
        break;
      }

      v21 &= v21 - 1;

      result = (v44)(v13, v9);
      v25 = v27;
      v18 = v76;
      v22 = v75;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    v56 = v70;
    sub_22766A770();
    v57 = v92;
    v58 = v92;
    v59 = sub_22766B380();
    v60 = sub_22766C8B0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v44;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v93 = v63;
      *v62 = v72;
      swift_getErrorValue();
      v64 = sub_22766D250();
      v66 = sub_226E97AE8(v64, v65, &v93);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_226E8E000, v59, v60, "ERROR: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      v67 = v63;
      v13 = v81;
      MEMORY[0x22AA9A450](v67, -1, -1);
      v68 = v62;
      v44 = v61;
      MEMORY[0x22AA9A450](v68, -1, -1);

      v69 = v70;
    }

    else
    {

      v69 = v56;
    }

    v47(v69, v83);
    swift_willThrow();

    return (v44)(v13, v73);
  }

  else
  {
LABEL_5:
    v28 = v88;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
        v52 = v85;

        v53 = *__swift_project_boxed_opaque_existential_0((v71 + 160), *(v71 + 184));
        v54 = v92;
        v55 = sub_22730FF6C(v52);
        sub_2272D7E8C(0, v55, v84);

        v92 = v54;
        return result;
      }

      v21 = *(v18 + 8 * v27);
      ++v25;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2273137F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276699A0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227664F60();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22731391C, 0, 0);
}

uint64_t sub_22731391C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_0(v1 + 14, v1[17]);
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_227313AAC;

  return v9();
}

uint64_t sub_227313AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_227317450;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_227313BC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227313BC8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v14 = v0[4];
  v8 = v0[2];
  v9 = *__swift_project_boxed_opaque_existential_0(v7 + 20, v7[23]);
  sub_2271D7EE8();

  sub_227664F40();
  v10 = v7[12];
  v13 = v7[13];
  swift_getObjectType();
  (*(v4 + 16))(v1, v2, v3);
  sub_227669990();
  sub_2276699D0();
  (*(v6 + 8))(v5, v14);
  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

uint64_t sub_227313D34(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v25 = a1;
  v5 = sub_227669360();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v24 = v6 + 16;
  v15 = (v6 + 8);
  v26 = a2;

  v17 = 0;
  if (v13)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      (*(v6 + 16))(v9, *(v26 + 48) + *(v6 + 72) * (__clz(__rbit64(v13)) | (v18 << 6)), v5);
      sub_227519118(v9, v25);
      if (v3)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v15)(v9, v5);
      v17 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v15)(v9, v5);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        v19 = v26;

        v20 = *__swift_project_boxed_opaque_existential_0((v23 + 160), *(v23 + 184));
        v21 = sub_22730FF6C(v19);
        sub_2272D7E8C(1, v21, v25);
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227313F68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227664390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22731408C, 0, 0);
}

uint64_t sub_22731408C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v7[17];
  v11 = v7[18];
  __swift_project_boxed_opaque_existential_0(v7 + 14, v10);
  (*(v5 + 16))(v4, v9, v8);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v0[12] = v13;
  *(v13 + 16) = v7;
  (*(v5 + 32))(v13 + v12, v4, v8);
  v14 = *(v11 + 24);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[13] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  *v16 = v0;
  v16[1] = sub_227311478;

  return (v19)(v0 + 2, sub_227317174, v13, v17, v10, v11);
}

uint64_t sub_2273142E4()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273143A4, 0, 0);
}

uint64_t sub_2273143A4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_226EA3BA8;
  v10 = v0[3];
  v11 = MEMORY[0x277D83B88];

  return (v13)(v0 + 2, sub_227317458, v10, v11, v5, v6);
}

uint64_t sub_227314564()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227314624, 0, 0);
}

uint64_t sub_227314624()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_226EA3BA8;
  v10 = v0[3];
  v11 = MEMORY[0x277D83B88];

  return (v13)(v0 + 2, sub_227317148, v10, v11, v5, v6);
}

uint64_t sub_2273147E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22766B390();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273148A8, 0, 0);
}

uint64_t sub_2273148A8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v7 = v4[17];
  v8 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v7);
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v4;
  v9[3] = v6;
  v9[4] = v5;
  v10 = *(v8 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = sub_227669480();
  *v12 = v0;
  v12[1] = sub_226F9DFCC;
  v14 = v0[2];

  return (v16)(v14, sub_2273170E0, v9, v13, v7, v8);
}

uint64_t sub_227314AA4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227314B64, 0, 0);
}

uint64_t sub_227314B64()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v6 = v4[17];
  v7 = v4[18];
  __swift_project_boxed_opaque_existential_0(v4 + 14, v6);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v9 = *(v7 + 24);

  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  *v11 = v0;
  v11[1] = sub_227311858;

  return (v14)(v0 + 2, sub_227317074, v8, v12, v6, v7);
}

uint64_t sub_227314D68(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669A40();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227665250();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = sub_227669480();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v2[13] = *(v10 + 64);
  v2[14] = swift_task_alloc();
  v11 = sub_22766B390();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227314F50, 0, 0);
}

uint64_t sub_227314F50()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v8[18];
  __swift_project_boxed_opaque_existential_0(v8 + 14, v8[17]);
  v11 = *(v5 + 16);
  *(v0 + 144) = v11;
  *(v0 + 152) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v9, v7);
  v12 = *(v5 + 80);
  *(v0 + 184) = v12;
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 160) = v14;
  *(v14 + 16) = v8;
  (*(v5 + 32))(v14 + v13, v4, v7);
  v15 = *(v10 + 24);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_2273151A8;

  return v19();
}

uint64_t sub_2273151A8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_227317454;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_2273152C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2273152C4()
{
  v1 = *(v0 + 184);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v18 = *(v0 + 56);
  v19 = *(v0 + 72);
  v22 = *(v0 + 40);
  v6 = *(v0 + 24);
  v20 = *(v0 + 48);
  v21 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *__swift_project_boxed_opaque_existential_0(v6 + 20, v6[23]);
  sub_2271D7EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E8, &unk_227680260);
  v9 = *(v2 + 72);
  v10 = (v1 + 32) & ~v1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  v16(v11 + v10, v7, v3);
  sub_226F4FF78(v11);
  swift_setDeallocating();
  (*(v2 + 8))(v11 + v10, v3);
  swift_deallocClassInstance();
  sub_227665240();
  v12 = v6[12];
  v13 = v6[13];
  swift_getObjectType();
  (*(v5 + 16))(v19, v4, v18);
  sub_227669A30();
  sub_2276699D0();
  (*(v22 + 8))(v20, v21);
  (*(v5 + 8))(v4, v18);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2273154F0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E8, &unk_227680260);
  v8 = sub_227669480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a3, v8);
  sub_227564394(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a2 + 160), *(a2 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    *(v15 + 32) = sub_227669430();
    *(v15 + 40) = v16;
    sub_2272D7EB8(0, v15, a1);
  }

  return result;
}

uint64_t sub_227315698(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227669A40();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_227665250();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = sub_227669480();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v2[13] = *(v10 + 64);
  v2[14] = swift_task_alloc();
  v11 = sub_22766B390();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227315880, 0, 0);
}

uint64_t sub_227315880()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_22766A760();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v10 = v8[18];
  __swift_project_boxed_opaque_existential_0(v8 + 14, v8[17]);
  v11 = *(v5 + 16);
  *(v0 + 144) = v11;
  *(v0 + 152) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v9, v7);
  v12 = *(v5 + 80);
  *(v0 + 184) = v12;
  v13 = (v12 + 24) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 160) = v14;
  *(v14 + 16) = v8;
  (*(v5 + 32))(v14 + v13, v4, v7);
  v15 = *(v10 + 24);

  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_227315AD8;

  return v19();
}

uint64_t sub_227315AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_227315E20;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_227315BF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227315BF4()
{
  v1 = *(v0 + 184);
  v16 = *(v0 + 144);
  v17 = *(v0 + 152);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v18 = *(v0 + 56);
  v19 = *(v0 + 72);
  v22 = *(v0 + 40);
  v6 = *(v0 + 24);
  v20 = *(v0 + 48);
  v21 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = *__swift_project_boxed_opaque_existential_0(v6 + 20, v6[23]);
  sub_2271D7EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0E8, &unk_227680260);
  v9 = *(v2 + 72);
  v10 = (v1 + 32) & ~v1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  v16(v11 + v10, v7, v3);
  sub_226F4FF78(v11);
  swift_setDeallocating();
  (*(v2 + 8))(v11 + v10, v3);
  swift_deallocClassInstance();
  sub_227665240();
  v12 = v6[12];
  v13 = v6[13];
  swift_getObjectType();
  (*(v5 + 16))(v19, v4, v18);
  sub_227669A30();
  sub_2276699D0();
  (*(v22 + 8))(v20, v21);
  (*(v5 + 8))(v4, v18);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_227315E20()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

void sub_227315ECC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22751A1C8(a3, a1);
  if (!v3)
  {
    v6 = *__swift_project_boxed_opaque_existential_0((a2 + 160), *(a2 + 184));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_227670CD0;
    *(v7 + 32) = sub_227669430();
    *(v7 + 40) = v8;
    sub_2272D7EB8(1, v7, a1);
  }
}

uint64_t sub_227315FB4(uint64_t a1, void *a2)
{
  v116 = a1;
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  KeyPath = swift_getKeyPath();
  v15 = sub_2273FC9C4(KeyPath);
  if (v121)
  {

    swift_setDeallocating();

    v16 = *(v11 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v11 + v17, v18);
    v19 = *(*v11 + 48);
    v20 = *(*v11 + 52);
LABEL_15:
    swift_deallocClassInstance();
    return v4;
  }

  v108 = v8;
  v114 = 0;
  v21 = sub_226F3E6A8(v15);

  swift_setDeallocating();

  v22 = *(v11 + 40);

  v23 = qword_2813B2078;
  v24 = sub_22766A100();
  v25 = *(v24 - 8);
  v111 = *(v25 + 8);
  v112 = v24;
  v110 = v25 + 8;
  v111(v11 + v23);
  v26 = *(*v11 + 48);
  v27 = *(*v11 + 52);
  swift_deallocClassInstance();
  v28 = a2[3];
  v113 = a2;
  v29 = __swift_project_boxed_opaque_existential_0(a2, v28);
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  v33 = v29[3];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = v30;
  v39 = v31;

  sub_22766A070();
  *(v37 + 16) = v38;
  *(v37 + 24) = v39;
  *(v37 + 32) = v32;
  *(v37 + 40) = v33;
  swift_getKeyPath();
  v40 = sub_227230638(v21);

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v119[0] = v40;
  v41 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v121 = v41;
  v42 = sub_22766C820();
  sub_226ED25F8(v119, v117);
  v43 = v118;
  if (v118)
  {
    v44 = __swift_project_boxed_opaque_existential_0(v117, v118);
    v45 = *(v43 - 8);
    v46 = *(v45 + 64);
    v47 = MEMORY[0x28223BE20](v44);
    v49 = &v107 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v49, v47);
    v50 = sub_22766D170();
    (*(v45 + 8))(v49, v43);
    __swift_destroy_boxed_opaque_existential_0(v117);
  }

  else
  {
    v50 = 0;
  }

  v115 = objc_opt_self();
  v51 = [v115 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v109) initWithLeftExpression:v42 rightExpression:v51 modifier:0 type:10 options:0];

  sub_226EBC888(v119);
  swift_beginAccess();
  v52 = sub_22766A080();
  v54 = v53;
  MEMORY[0x22AA985C0]();
  if (*((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v52(v119, 0);
  swift_endAccess();

  swift_getKeyPath();
  v55 = v114;
  v56 = sub_22730FD3C(v116, MEMORY[0x277D50DF8]);
  v116 = v55;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v119[0] = v56;

  v57 = sub_22766C820();
  sub_226ED25F8(v119, v117);
  v58 = v118;
  if (v118)
  {
    v59 = __swift_project_boxed_opaque_existential_0(v117, v118);
    v60 = *(v58 - 8);
    v61 = *(v60 + 64);
    v62 = MEMORY[0x28223BE20](v59);
    v64 = &v107 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v64, v62);
    v65 = sub_22766D170();
    (*(v60 + 8))(v64, v58);
    __swift_destroy_boxed_opaque_existential_0(v117);
  }

  else
  {
    v65 = 0;
  }

  v4 = v113;
  v66 = [v115 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v109) initWithLeftExpression:v57 rightExpression:v66 modifier:0 type:10 options:0];

  sub_226EBC888(v119);
  swift_beginAccess();
  v67 = sub_22766A080();
  v69 = v68;
  MEMORY[0x22AA985C0]();
  if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v105 = *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v67(v119, 0);
  swift_endAccess();

  v70 = swift_getKeyPath();
  v71 = v116;
  v72 = sub_2273FC91C(v70);
  if (v71)
  {

    swift_setDeallocating();

    v73 = *(v37 + 40);

    (v111)(v37 + qword_2813B2078, v112);
    v74 = *(*v37 + 48);
    v75 = *(*v37 + 52);
    goto LABEL_15;
  }

  v77 = sub_226F3E6A8(v72);

  swift_setDeallocating();

  v78 = *(v37 + 40);

  (v111)(v37 + qword_2813B2078, v112);
  v79 = *(*v37 + 48);
  v80 = *(*v37 + 52);
  swift_deallocClassInstance();
  v81 = __swift_project_boxed_opaque_existential_0(v4, *(v4 + 24));
  v82 = *v81;
  v83 = v81[1];
  v84 = *(v81 + 16);
  v85 = v81[3];
  v86 = *(v108 + 48);
  v87 = *(v108 + 52);
  v4 = swift_allocObject();
  v88 = v82;
  v89 = v83;

  sub_22766A070();
  *(v4 + 16) = v88;
  *(v4 + 24) = v89;
  *(v4 + 32) = v84;
  *(v4 + 40) = v85;
  swift_getKeyPath();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v119[0] = v77;

  v90 = sub_22766C820();
  sub_226ED25F8(v119, v117);
  v91 = v118;
  if (v118)
  {
    v92 = __swift_project_boxed_opaque_existential_0(v117, v118);
    v93 = *(v91 - 8);
    v94 = *(v93 + 64);
    v95 = MEMORY[0x28223BE20](v92);
    v97 = &v107 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v93 + 16))(v97, v95);
    v98 = sub_22766D170();
    (*(v93 + 8))(v97, v91);
    __swift_destroy_boxed_opaque_existential_0(v117);
  }

  else
  {
    v98 = 0;
  }

  v99 = [v115 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v100 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226EBC888(v119);
  swift_beginAccess();
  v101 = v100;
  v102 = sub_22766A080();
  v104 = v103;
  MEMORY[0x22AA985C0]();
  if (*((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v106 = *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v102(v119, 0);
  swift_endAccess();

  return v4;
}

uint64_t sub_227316B70(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v43[3] = &type metadata for PersistenceHandle;
  v43[4] = &off_283A9AF78;
  v10 = swift_allocObject();
  v43[0] = v10;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = __swift_project_boxed_opaque_existential_0(v43, &type metadata for PersistenceHandle);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB40, &qword_2276802B0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = a2;
  v21 = a3;

  v22 = v12;
  v23 = v13;

  sub_22766A070();
  *(v19 + 16) = v22;
  *(v19 + 24) = v23;
  *(v19 + 32) = v14;
  *(v19 + 40) = v15;
  swift_getKeyPath();
  v24 = sub_22730FD3C(a1, MEMORY[0x277D51D98]);
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v42[0] = v24;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v25 = sub_22766C820();
  sub_226ED25F8(v42, v40);
  v26 = v41;
  if (v41)
  {
    v27 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v28 = *(v26 - 8);
    v29 = *(v28 + 64);
    v30 = MEMORY[0x28223BE20](v27);
    v32 = v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v32, v30);
    v33 = sub_22766D170();
    (*(v28 + 8))(v32, v26);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v33 = 0;
  }

  v34 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB50 &qword_2276834E0))];

  sub_226EBC888(v42);
  swift_beginAccess();
  v35 = sub_22766A080();
  v37 = v36;
  MEMORY[0x22AA985C0]();
  if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v35(v42, 0);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v43);
  return v19;
}

unint64_t sub_22731701C()
{
  result = qword_27D7BCB28;
  if (!qword_27D7BCB28)
  {
    sub_227669360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCB28);
  }

  return result;
}

uint64_t sub_2273170E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = *__swift_project_boxed_opaque_existential_0((v2[2] + 16), *(v2[2] + 40));
  return sub_227516BF8(v5, v6, a1, a2);
}

uint64_t sub_227317148@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227519B90(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2273171DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_2276641B0() - 8);
  v6 = *(v2 + 16);
  return sub_2273126FC(a1, v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)), a2);
}

uint64_t sub_22731729C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(unint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(a2(0) - 8);
  result = a3(v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80)), a1);
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t objectdestroy_27Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_22731740C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*(v3 + 24), a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_227317478(uint64_t a1)
{
  v37 = sub_227663480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_2276633E0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227317780(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v36[1] = v2;
    v49 = MEMORY[0x277D84F90];
    sub_226F1F568(0, v11, 0);
    v13 = -1 << *(a1 + 32);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v40 = v5 + 8;
    v41 = v5 + 16;
    v38 = v11;
    v39 = v5 + 32;
    v37 = a1 + 64;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v47 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 36);
      v44 = v15;
      v45 = v18;
      v19 = *(a1 + 48);
      v46 = *(v5 + 72);
      v20 = v42;
      (*(v5 + 16))(v42, v19 + v46 * v14, v4);
      sub_227663470();
      (*(v5 + 8))(v20, v4);
      v21 = v48;
      v49 = v48;
      v22 = a1;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v48 = v24 + 1;
        sub_226F1F568(v23 > 1, v24 + 1, 1);
        v25 = v48;
        v21 = v49;
      }

      *(v21 + 16) = v25;
      v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v48 = v21;
      result = (*(v5 + 32))(v21 + v26 + v24 * v46, v10, v4);
      v16 = 1 << *(v22 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v27 = *(v47 + 8 * v17);
      if ((v27 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v22;
      if (v45 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v14 & 0x3F));
      if (v28)
      {
        v16 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v10;
        v30 = v4;
        v31 = v17 << 6;
        v32 = v17 + 1;
        v33 = (v37 + 8 * v17);
        while (v32 < (v16 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_226EB526C(v14, v45, 0);
            v16 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v14, v45, 0);
LABEL_19:
        v4 = v30;
        v10 = v29;
      }

      v15 = v44 + 1;
      v14 = v16;
      if (v44 + 1 == v38)
      {
        return v48;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_227317B4C()
{
  v0 = sub_227662750();
  v163 = *(v0 - 8);
  v164 = v0;
  v1 = *(v163 + 64);
  MEMORY[0x28223BE20](v0);
  v162 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v177 = v7;
  v178 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v150 - v8;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD970, &qword_227673C10);
  v156 = *(v157 - 8);
  v10 = *(v156 + 64);
  v11 = MEMORY[0x28223BE20](v157);
  v154 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v12;
  MEMORY[0x28223BE20](v11);
  v155 = &v150 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v180 = *(v151 - 8);
  v14 = *(v180 + 64);
  v15 = MEMORY[0x28223BE20](v151);
  v179 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v150 = &v150 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v152 = &v150 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v166 = &v150 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v167 = &v150 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v168 = &v150 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v158 = &v150 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v150 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v159 = &v150 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v160 = &v150 - v33;
  MEMORY[0x28223BE20](v32);
  v161 = &v150 - v34;
  v35 = sub_22766B390();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v40 = sub_22766B380();
  v41 = sub_22766C8B0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v3;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_226E8E000, v40, v41, "handleScheduledAssetMaintenance", v43, 2u);
    v44 = v43;
    v3 = v42;
    MEMORY[0x22AA9A450](v44, -1, -1);
  }

  (*(v36 + 8))(v39, v35);
  v45 = v176;
  v46 = v176[75];
  v47 = v176[76];
  __swift_project_boxed_opaque_existential_0(v176 + 72, v46);

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v49 = v9;
  sub_226ECF5D8(sub_22732069C, v45, v46, v48, v47, v9);

  v50 = swift_allocObject();
  *(v50 + 16) = sub_2273206E8;
  *(v50 + 24) = v45;
  v51 = v178;
  (*(v4 + 16))(v178, v49, v3);
  v52 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v53 = (v177 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v4 + 32))(v54 + v52, v51, v3);
  v55 = (v54 + v53);
  *v55 = sub_226FBE218;
  v55[1] = v50;

  v56 = v150;
  sub_227669270();
  (*(v4 + 8))(v49, v3);
  v172 = 0x800000022769DC00;
  v57 = swift_allocObject();
  v57[2] = 0xD000000000000021;
  v57[3] = 0x800000022769DC00;
  v57[4] = 270;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_226F33024;
  *(v58 + 24) = v57;
  v59 = v179;
  v60 = v180;
  v61 = *(v180 + 16);
  v174 = v180 + 16;
  v62 = v151;
  v61(v179, v56, v151);
  v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v177 = *(v60 + 80);
  v165 = v63 + v14;
  v64 = v63;
  v175 = v63;
  v65 = (v63 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v173 = v65;
  v66 = swift_allocObject();
  v178 = *(v60 + 32);
  v170 = v60 + 32;
  (v178)(v66 + v64, v59, v62);
  v67 = (v66 + v65);
  *v67 = sub_226F32FE8;
  v67[1] = v58;
  v68 = v152;
  sub_227669270();
  v179 = *(v60 + 8);
  (v179)(v56, v62);
  v180 = v60 + 8;
  v69 = swift_allocObject();
  v70 = v176;
  *(v69 + 16) = sub_2273204BC;
  *(v69 + 24) = v70;
  v71 = v61;
  v171 = v61;
  v61(v56, v68, v62);
  v72 = v173;
  v73 = swift_allocObject();
  v74 = v56;
  v75 = v62;
  (v178)(v73 + v175, v74, v62);
  v76 = (v73 + v72);
  *v76 = sub_22732067C;
  v76[1] = v69;

  v77 = v166;
  sub_227669270();
  (v179)(v68, v75);
  v78 = swift_allocObject();
  v78[2] = 0xD000000000000021;
  v78[3] = v172;
  v78[4] = 272;
  v79 = swift_allocObject();
  *(v79 + 16) = sub_226F33024;
  *(v79 + 24) = v78;
  v71(v68, v77, v75);
  v80 = swift_allocObject();
  v81 = v175;
  v82 = v178;
  (v178)(v80 + v175, v68, v75);
  v83 = (v80 + v72);
  *v83 = sub_226F32FE8;
  v83[1] = v79;
  v84 = v167;
  sub_227669270();
  (v179)(v77, v75);
  v85 = swift_allocObject();
  v86 = v176;
  *(v85 + 16) = sub_2273204C0;
  *(v85 + 24) = v86;
  v171(v77, v84, v75);
  v87 = v173;
  v88 = swift_allocObject();
  (v82)(v88 + v81, v77, v75);
  v89 = (v88 + v87);
  *v89 = sub_2272B81D4;
  v89[1] = v85;

  v90 = v155;
  sub_227669270();
  v91 = v75;
  (v179)(v167, v75);
  v92 = swift_allocObject();
  *(v92 + 16) = nullsub_1;
  *(v92 + 24) = 0;
  v93 = v156;
  v94 = v154;
  v95 = v157;
  (*(v156 + 16))(v154, v90, v157);
  v96 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v97 = (v153 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  (*(v93 + 32))(v98 + v96, v94, v95);
  v99 = (v98 + v97);
  *v99 = sub_2273204F0;
  v99[1] = v92;
  v100 = v168;
  sub_227669270();
  (*(v93 + 8))(v90, v95);
  v101 = swift_allocObject();
  v101[2] = 0xD000000000000021;
  v101[3] = v172;
  v101[4] = 274;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_226F33024;
  *(v102 + 24) = v101;
  v103 = v167;
  v104 = v171;
  v171(v167, v100, v91);
  v105 = v173;
  v106 = swift_allocObject();
  (v178)(v106 + v175, v103, v91);
  v107 = (v106 + v105);
  *v107 = sub_226F32FE8;
  v107[1] = v102;
  v108 = v158;
  sub_227669270();
  (v179)(v100, v91);
  v109 = __swift_project_boxed_opaque_existential_0(v176 + 52, v176[55]);
  v110 = sub_227665FC0();
  v111 = *v109;
  sub_22708193C(v110, v100);

  v104(v103, v100, v91);
  v112 = swift_allocObject();
  v113 = v175;
  v114 = v178;
  (v178)(v112 + v175, v103, v91);
  v115 = v166;
  v104(v166, v108, v91);
  v116 = v173;
  v117 = swift_allocObject();
  (v114)(v117 + v113, v115, v91);
  v118 = (v117 + v116);
  *v118 = sub_226EC14BC;
  v118[1] = v112;
  v119 = v169;
  sub_227669270();
  v120 = v179;
  (v179)(v168, v91);
  v120(v108, v91);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000021;
  v121[3] = v172;
  v121[4] = 276;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_226F33024;
  *(v122 + 24) = v121;
  v123 = v108;
  v124 = v108;
  v125 = v171;
  v171(v124, v119, v91);
  v126 = swift_allocObject();
  v127 = v175;
  (v178)(v126 + v175, v123, v91);
  v128 = (v126 + v116);
  *v128 = sub_226F32FE8;
  v128[1] = v122;
  v129 = v159;
  sub_227669270();
  v130 = v169;
  (v179)(v169, v91);
  v131 = v162;
  sub_227662740();
  sub_22751B450(v131, v130);
  (*(v163 + 8))(v131, v164);
  v125(v123, v130, v91);
  v132 = swift_allocObject();
  v133 = v132 + v127;
  v134 = v127;
  v135 = v178;
  (v178)(v133, v123, v91);
  v136 = v168;
  v125(v168, v129, v91);
  v137 = v173;
  v138 = swift_allocObject();
  (v135)(v138 + v134, v136, v91);
  v139 = (v138 + v137);
  *v139 = sub_226F33040;
  v139[1] = v132;
  v140 = v160;
  sub_227669270();
  v141 = v179;
  (v179)(v169, v91);
  v141(v129, v91);
  v142 = swift_allocObject();
  v142[2] = 0xD000000000000021;
  v142[3] = v172;
  v142[4] = 278;
  v143 = swift_allocObject();
  *(v143 + 16) = sub_226F33024;
  *(v143 + 24) = v142;
  v171(v129, v140, v91);
  v144 = swift_allocObject();
  (v178)(v144 + v134, v129, v91);
  v145 = (v144 + v137);
  *v145 = sub_226F32FE8;
  v145[1] = v143;
  v146 = v161;
  sub_227669270();
  v141(v140, v91);
  v147 = sub_227669290();
  v148 = swift_allocObject();
  *(v148 + 16) = 0;
  *(v148 + 24) = 0;
  v147(sub_226EB4544, v148);

  return (v141)(v146, v91);
}

uint64_t sub_227318E40(uint64_t a1, const char *a2, void (*a3)(void))
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, a2, v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_227318FC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - v3;
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, "handleScheduledPrivateDataBackgroundEvaluation", v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_2273C3E8C(v4);
  v13 = sub_227669290();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v13(sub_226EB4544, v14);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_227319210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2273C3E8C(v4);
    v6 = sub_227669290();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_226EB4544, v7);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_2273193C0(uint64_t a1)
{
  v2 = v1;
  v52 = a1;
  v53 = sub_227663480();
  v50 = *(v53 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_227669910();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  sub_22766A6C0();
  sub_22766B370();
  v17 = *(v11 + 8);
  v51 = v10;
  v47 = v17;
  v17(v16, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  v19 = *(*__swift_project_boxed_opaque_existential_0(v2 + 62, v2[65]) + 32);
  sub_2276696A0();
  v48 = v5;
  v20 = v55;
  *(inited + 32) = v54;
  *(inited + 40) = v20;
  v21 = *(*__swift_project_boxed_opaque_existential_0(v2 + 62, v2[65]) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  sub_2276696A0();
  v22 = v55;
  if (v55)
  {
    *(inited + 48) = v54;
    *(inited + 56) = v22;
  }

  else
  {
    v43 = sub_227663190();
    sub_227320474(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    v44 = swift_allocError();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D4FD80], v43);
    swift_willThrow();

    *(inited + 48) = 0;
    *(inited + 56) = 0;
  }

  v23 = v52;
  v54 = sub_227663430();
  v55 = v24;
  MEMORY[0x28223BE20](v54);
  *(&v46 - 2) = &v54;
  v25 = sub_226F7E20C(sub_227320454, (&v46 - 4), inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v25)
  {
    v26 = v2[99];
    v27 = v2[100];
    swift_getObjectType();
    v28 = v46;
    (*(v6 + 104))(v9, *MEMORY[0x277D4E068], v46);
    sub_227669650();
    return (*(v6 + 8))(v9, v28);
  }

  else
  {
    v30 = v49;
    sub_22766A6C0();
    v31 = v50;
    v32 = v48;
    v33 = v53;
    (*(v50 + 16))(v48, v23, v53);
    v34 = sub_22766B380();
    v35 = sub_22766C8B0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v54 = v37;
      *v36 = 141558274;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      sub_227320474(&qword_27D7B85C0, MEMORY[0x277D4FF88]);
      v38 = sub_22766D140();
      v39 = v32;
      v41 = v40;
      (*(v31 + 8))(v39, v33);
      v42 = sub_226E97AE8(v38, v41, &v54);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_226E8E000, v34, v35, "Broadcast - Skipping bundle update because device is neither current nor activePaired %{mask.hash}s", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9A450](v37, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v32, v33);
    }

    return v47(v30, v51);
  }
}

uint64_t sub_227319A5C()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_22766A6C0();
    sub_22766B370();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_227319B80()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_22766A6C0();
    sub_22766B370();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_227319CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v11);

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_227319E08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_227669910();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766A8A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227665780();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22766B390();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v20 = *(v12 + 16);
  v59 = a1;
  v20(v15, a1, v11);
  v21 = sub_22766B380();
  v22 = sub_22766C8B0();
  v23 = os_log_type_enabled(v21, v22);
  v57 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v53 = v7;
    v25 = v24;
    v26 = swift_slowAlloc();
    v52 = v8;
    v27 = v26;
    v62 = v26;
    *v25 = 136315138;
    sub_227320474(&qword_27D7BCB58, MEMORY[0x277D51940]);
    v28 = sub_22766D140();
    v29 = v11;
    v30 = v2;
    v32 = v31;
    (*(v12 + 8))(v15, v29);
    v33 = sub_226E97AE8(v28, v32, &v62);
    v2 = v30;

    *(v25 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v21, v22, "Broadcast - %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v34 = v27;
    v8 = v52;
    MEMORY[0x22AA9A450](v34, -1, -1);
    v35 = v25;
    v7 = v53;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  (*(v54 + 8))(v19, v55);
  v36 = v2[616];
  v37 = sub_2276693C0();
  v38 = v56;
  (*(v8 + 104))(v56, *MEMORY[0x277D4F948], v7);
  v39 = sub_226EC9A38(v38, v37);

  (*(v8 + 8))(v38, v7);
  v40 = *MEMORY[0x277D4E110];
  v41 = v60;
  v42 = v58;
  if (v39)
  {
    v43 = *(v2 + 69);
    v55 = *(v2 + 70);
    swift_getObjectType();
    v56 = v2;
    v44 = *(v41 + 104);
    v45 = v61;
    v44(v42, v40, v61);
    v2 = v56;
    sub_227669650();
    (*(v41 + 8))(v42, v45);
  }

  else
  {
    v44 = *(v60 + 104);
  }

  v46 = *(v2 + 99);
  v47 = *(v2 + 100);
  swift_getObjectType();
  v48 = v40;
  v49 = v61;
  v44(v42, v48, v61);
  sub_227669650();
  return (*(v41 + 8))(v42, v49);
}

uint64_t sub_22731A36C()
{
  v0 = sub_2276668F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22766A3D0();
    sub_22731A474();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_22731A474()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v15 + 8))(v18, v14);
  v19 = *(v1 + 75);
  v20 = *(v1 + 76);
  __swift_project_boxed_opaque_existential_0(v1 + 72, v19);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_227320684, v1, v19, v21, v20, v8);

  (*(v3 + 16))(v6, v8, v2);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v22, v6, v2);
  v24 = (v23 + ((v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_227320330;
  v24[1] = v1;

  sub_227669270();
  (*(v3 + 8))(v8, v2);
  v25 = v29;
  v26 = sub_227669290();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v26(sub_226EB4544, v27);

  return (*(v30 + 8))(v13, v25);
}

uint64_t sub_22731A86C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2274717D4(v1, v2, v3);
  }

  return result;
}

uint64_t sub_22731A8E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v129 = v4;
  v130 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v132 = (&v115 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v133 = *(v6 - 8);
  v7 = *(v133 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v127 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v115 = &v115 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v115 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v117 = &v115 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v118 = &v115 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v115 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v115 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v115 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v122 = &v115 - v24;
  MEMORY[0x28223BE20](v23);
  v123 = &v115 - v25;
  v26 = sub_22766B390();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "handleCatalogUpdated", v34, 2u);
    v35 = v34;
    v0 = v33;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (*(v27 + 8))(v30, v26);
  v36 = v131;
  v37 = v131[75];
  v38 = v131[76];
  __swift_project_boxed_opaque_existential_0(v131 + 72, v37);

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v40 = v132;
  sub_226ECF5D8(sub_22731FEB8, v36, v37, v39, v38, v132);

  v41 = *__swift_project_boxed_opaque_existential_0((v36 + 136), *(v36 + 160));
  v135[3] = type metadata accessor for AssetCatalogUpdater();
  v135[4] = &off_283A9F710;
  v135[0] = v41;
  sub_226E91B50(v135, v134);
  v42 = swift_allocObject();
  sub_226E92AB8(v134, v42 + 16);

  __swift_destroy_boxed_opaque_existential_0(v135);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22731FED4;
  *(v43 + 24) = v42;
  v44 = v130;
  (*(v1 + 16))(v130, v40, v0);
  v45 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v46 = (v129 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v1 + 32))(v47 + v45, v44, v0);
  v48 = (v47 + v46);
  *v48 = sub_226FBE058;
  v48[1] = v43;
  v49 = v115;
  sub_227669270();
  (*(v1 + 8))(v40, v0);
  v125 = 0x800000022769DC00;
  v50 = swift_allocObject();
  v50[2] = 0xD000000000000021;
  v50[3] = 0x800000022769DC00;
  v50[4] = 235;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_226F323BC;
  *(v51 + 24) = v50;
  v52 = v133;
  v132 = *(v133 + 16);
  v128 = v133 + 16;
  v53 = v127;
  (v132)(v127, v49, v6);
  v54 = *(v52 + 80);
  v129 = v54;
  v130 = ((v54 + 16) & ~v54);
  v55 = &v130[v7];
  v56 = v130;
  v57 = (v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = *(v52 + 32);
  v59(&v56[v58], v53, v6);
  v60 = v52 + 32;
  v126 = v59;
  v61 = (v58 + v57);
  *v61 = sub_226F323DC;
  v61[1] = v51;
  v62 = v116;
  sub_227669270();
  v63 = *(v52 + 8);
  v133 = v52 + 8;
  v127 = v63;
  (v63)(v49, v6);
  v64 = swift_allocObject();
  v66 = v131;
  v65 = v132;
  *(v64 + 16) = sub_22731FF6C;
  *(v64 + 24) = v66;
  v65(v49, v62, v6);
  v67 = swift_allocObject();
  v59(&v130[v67], v49, v6);
  v68 = v60;
  v69 = (v67 + v57);
  *v69 = sub_227086964;
  v69[1] = v64;

  v70 = v117;
  sub_227669270();
  (v127)(v62, v6);
  v71 = swift_allocObject();
  v71[2] = 0xD000000000000021;
  v71[3] = v125;
  v71[4] = 243;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_226F33024;
  *(v72 + 24) = v71;
  (v132)(v62, v70, v6);
  v73 = swift_allocObject();
  v74 = v130;
  v124 = v68;
  v126(&v130[v73], v62, v6);
  v75 = (v73 + v57);
  *v75 = sub_226F32FE8;
  v75[1] = v72;
  v76 = v118;
  sub_227669270();
  (v127)(v70, v6);
  v77 = swift_allocObject();
  v79 = v131;
  v78 = v132;
  *(v77 + 16) = sub_22731FF74;
  *(v77 + 24) = v79;
  v78(v70, v76, v6);
  v80 = swift_allocObject();
  v81 = v126;
  v126(&v74[v80], v70, v6);
  v82 = (v80 + v57);
  *v82 = sub_22732067C;
  v82[1] = v77;

  v83 = v119;
  sub_227669270();
  v84 = v127;
  (v127)(v76, v6);
  v85 = swift_allocObject();
  v85[2] = 0xD000000000000021;
  v85[3] = v125;
  v85[4] = 251;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_226F33024;
  *(v86 + 24) = v85;
  v87 = v132;
  (v132)(v76, v83, v6);
  v88 = swift_allocObject();
  v81(&v130[v88], v76, v6);
  v89 = (v88 + v57);
  *v89 = sub_226F32FE8;
  v89[1] = v86;
  v90 = v120;
  sub_227669270();
  v84(v83, v6);
  v91 = swift_allocObject();
  v92 = v131;
  *(v91 + 16) = sub_22731FF7C;
  *(v91 + 24) = v92;
  v87(v83, v90, v6);
  v93 = swift_allocObject();
  v94 = v130;
  v126(&v130[v93], v83, v6);
  v95 = (v93 + v57);
  *v95 = sub_22732067C;
  v95[1] = v91;

  v96 = v121;
  sub_227669270();
  v84(v90, v6);
  v97 = swift_allocObject();
  v97[2] = 0xD000000000000021;
  v97[3] = v125;
  v97[4] = 257;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_226F33024;
  *(v98 + 24) = v97;
  (v132)(v90, v96, v6);
  v99 = swift_allocObject();
  v100 = &v94[v99];
  v101 = v126;
  v126(v100, v90, v6);
  v102 = (v99 + v57);
  *v102 = sub_226F32FE8;
  v102[1] = v98;
  v103 = v122;
  sub_227669270();
  v84(v96, v6);
  v104 = swift_allocObject();
  v106 = v131;
  v105 = v132;
  *(v104 + 16) = sub_2273206D0;
  *(v104 + 24) = v106;
  v105(v96, v103, v6);
  v107 = swift_allocObject();
  v101(&v130[v107], v96, v6);
  v108 = (v107 + v57);
  *v108 = sub_22732067C;
  v108[1] = v104;

  v109 = v123;
  sub_227669270();
  v110 = v103;
  v111 = v127;
  (v127)(v110, v6);
  v112 = sub_227669290();
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  *(v113 + 24) = 0;
  v112(sub_226E9F7B0, v113);

  return v111(v109, v6);
}

uint64_t sub_22731B7F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_22731B854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v72 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v8 = *(v85 - 1);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v85);
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v72 - v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v82 = *(v83 - 8);
  v13 = *(v82 + 64);
  v14 = MEMORY[0x28223BE20](v83);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v15;
  MEMORY[0x28223BE20](v14);
  v81 = &v72 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v88 = *(v86 - 8);
  v17 = *(v88 + 64);
  v18 = MEMORY[0x28223BE20](v86);
  v76 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v87 = &v72 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v77 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v80 = &v72 - v23;
  v24 = *(v0 + 688);
  v84 = v0;
  v25 = *__swift_project_boxed_opaque_existential_0((v0 + 664), v24);
  v26 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v25 + v26, &v91);
  if (v92)
  {
    sub_226E92AB8(&v91, v90);
    sub_226E91B50(v90, v89);
    v27 = swift_allocObject();
    sub_226E92AB8(v89, v27 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v90);
  }

  else
  {
    sub_226F099DC();
    v28 = swift_allocError();
    *v29 = 0;
    *(swift_allocObject() + 16) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v5, v7, v1);
  v30 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v31 = v1;
  v32 = swift_allocObject();
  (*(v2 + 32))(v32 + v30, v5, v1);
  v33 = (v32 + ((v3 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_22731C5A0;
  v33[1] = 0;
  sub_227665AD0();
  v34 = v75;
  sub_227669270();
  (*(v2 + 8))(v7, v31);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_22731C6BC;
  *(v35 + 24) = 0;
  v36 = v74;
  v37 = v85;
  (*(v8 + 16))(v74, v34, v85);
  v38 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v39 = (v73 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v8 + 32))(v40 + v38, v36, v37);
  v41 = (v40 + v39);
  *v41 = sub_2273202AC;
  v41[1] = v35;
  v42 = v87;
  sub_227669270();
  (*(v8 + 8))(v34, v37);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22731C974;
  *(v43 + 24) = 0;
  v44 = v88;
  v75 = *(v88 + 16);
  v45 = v76;
  (v75)(v76, v42, v86);
  v46 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v74 = v46;
  v47 = (v17 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = *(v44 + 32);
  v50 = v48 + v46;
  v51 = v86;
  v49(v50, v45, v86);
  v52 = (v48 + v47);
  *v52 = sub_226F5AAF8;
  v52[1] = v43;
  v53 = v77;
  sub_227669270();
  v54 = *(v44 + 8);
  v88 = v44 + 8;
  v85 = v54;
  (v54)(v87, v51);
  v55 = swift_allocObject();
  v56 = v84;
  *(v55 + 16) = sub_2273202DC;
  *(v55 + 24) = v56;
  (v75)(v45, v53, v51);
  v57 = swift_allocObject();
  v49(&v74[v57], v45, v51);
  v58 = (v57 + v47);
  *v58 = sub_226F09740;
  v58[1] = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v59 = v81;
  sub_227669270();
  (v85)(v53, v51);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_22732030C;
  *(v60 + 24) = v56;
  v61 = v82;
  v62 = v79;
  v63 = v83;
  (*(v82 + 16))(v79, v59, v83);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v78 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v61 + 32))(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  *v67 = sub_226FBE218;
  v67[1] = v60;

  v68 = v80;
  sub_227669270();
  (*(v61 + 8))(v59, v63);
  v69 = sub_227669290();
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  v69(sub_226EB4544, v70);

  return (v85)(v68, v51);
}

uint64_t sub_22731C308(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v13);

    v15 = sub_227669290();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v15(a5, v16);

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t *sub_22731C480()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  v1 = v0[67];
  swift_unknownObjectRelease();
  v2 = v0[69];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0(v0 + 78);
  __swift_destroy_boxed_opaque_existential_0(v0 + 83);
  v3 = v0[88];

  __swift_destroy_boxed_opaque_existential_0(v0 + 89);
  __swift_destroy_boxed_opaque_existential_0(v0 + 94);
  v4 = v0[99];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_22731C548()
{
  sub_22731C480();

  return swift_deallocClassInstance();
}

uint64_t sub_22731C5A0(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22731C6BC()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227662740();
  v10 = sub_227665AA0();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    sub_22766A6C0();
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v12, "Subscription status - subscribed. Offline content is permitted.", v13, 2u);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v14 = sub_227663190();
    sub_227320474(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D4FDA8], v14);
  }

  else
  {
    sub_226F099DC();
    swift_allocError();
    *v16 = 4;
  }

  return swift_willThrow();
}

id sub_22731C974(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  swift_getErrorValue();
  v22[3] = MEMORY[0x277D52C78];
  v22[4] = sub_226F09B58();
  LOBYTE(v22[0]) = 4;
  v10 = sub_22766D290();
  __swift_destroy_boxed_opaque_existential_0(v22);
  if (v10)
  {
    sub_22766A6C0();
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v12, "Subscription status - not subscribed. Offline content will be deleted.", v13, 2u);
      MEMORY[0x22AA9A450](v13, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_22766A6C0();
    v15 = a1;
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_226E8E000, v16, v17, "Subscription fetch failed with error %@. Skipping asset bundle cancellation.", v18, 0xCu);
      sub_226E97D1C(v19, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    swift_willThrow();
    return a1;
  }
}

uint64_t sub_22731CC50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[75];
  v5 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v4);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_227320314, a1, v4, v6, v5, a2);
}

uint64_t sub_22731CCFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v13 = *(*__swift_project_boxed_opaque_existential_0((a2 + 496), *(a2 + 520)) + 32);
  sub_2276696A0();
  if (v3)
  {
    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  else
  {
    v66 = v11;
    v60 = v8;
    v61 = v7;
    v62 = a3;
    v15 = v65[1];
    *(inited + 32) = v65[0];
    *(inited + 40) = v15;
    v16 = sub_226F3E6A8(inited);
    swift_setDeallocating();
    sub_226FA6DA4(inited + 32);
    v17 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 16);
    v21 = v17[3];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = v18;
    v27 = v19;

    sub_22766A070();
    *(v25 + 16) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    swift_getKeyPath();
    v28 = sub_227230638(v16);

    v65[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    v65[0] = v28;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v29 = sub_22766C820();
    sub_226ED25F8(v65, v63);
    v30 = v64;
    if (v64)
    {
      v31 = __swift_project_boxed_opaque_existential_0(v63, v64);
      v32 = *(v30 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v31);
      v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v35);
      v36 = sub_22766D170();
      (*(v32 + 8))(v35, v30);
      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {
      v36 = 0;
    }

    v37 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

    sub_226E97D1C(v65, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v38 = sub_22766A080();
    v40 = v39;
    MEMORY[0x22AA985C0]();
    if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v38(v65, 0);
    swift_endAccess();

    v41 = sub_2272328B8(100);
    swift_setDeallocating();

    v42 = *(v25 + 40);

    v43 = qword_2813B2078;
    v44 = sub_22766A100();
    (*(*(v44 - 8) + 8))(v25 + v43, v44);
    v45 = *(*v25 + 48);
    v46 = *(*v25 + 52);
    swift_deallocClassInstance();
    v47 = v66;
    sub_22766A6C0();

    v48 = sub_22766B380();
    v49 = sub_22766C8B0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65[0] = v51;
      *v50 = 136446210;
      sub_227317478(v41);
      v52 = MEMORY[0x22AA98660]();
      v54 = v53;

      v55 = sub_226E97AE8(v52, v54, v65);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_226E8E000, v48, v49, "Subscription status - Cancelling asset bundles on account change: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AA9A450](v51, -1, -1);
      MEMORY[0x22AA9A450](v50, -1, -1);

      (*(v60 + 8))(v66, v61);
    }

    else
    {

      (*(v60 + 8))(v47, v61);
    }

    v56 = v62;
    v57 = sub_227317780(v41, 7);

    v58 = sub_226F40934(v57);

    *v56 = v58;
  }

  return result;
}

void sub_22731D454(uint64_t a1, uint64_t a2)
{

  sub_2273CAE98(a1, a2);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v4 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

uint64_t sub_22731D54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v10 = __swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  v11 = *v10;
  v12 = *(*v10 + 336);
  v13 = *(*v10 + 344);
  __swift_project_boxed_opaque_existential_0((*v10 + 312), v12);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_2273201F0, v11, v12, v14, v13, v9);

  (*(v4 + 16))(v7, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v7, v3);
  v17 = (v16 + ((v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_22732020C;
  v17[1] = a1;

  sub_227669270();
  return (*(v4 + 8))(v9, v3);
}

void sub_22731D788(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_22766A6C0();

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_227663480();
    sub_227320474(&unk_2813A5800, MEMORY[0x277D4FF88]);
    v17 = sub_22766C610();
    v19 = sub_226E97AE8(v17, v18, &v24);
    v23[0] = v6;
    v20 = v19;

    *(v15 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v12, v13, "Catalog Updated - cancelling bundles: %{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v7 + 8))(v10, v23[0]);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v21 = sub_2273CAE98(v11, a2);

  v24 = v21;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v22 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();
}

uint64_t sub_22731DA7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  sub_22749C4F8(v8);
  (*(v3 + 16))(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v6, v2);
  v12 = (v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = sub_2273201C0;
  v12[1] = a1;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22731DC54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = sub_22766B390();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = *a1;
  sub_22766A6C0();

  v14 = sub_22766B380();
  v15 = sub_22766C8B0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = v18;
    v33 = v18;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v20 = sub_2276639B0();
    v21 = MEMORY[0x22AA98660](v13, v20);
    v23 = sub_226E97AE8(v21, v22, &v33);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v14, v15, "Catalog Updated - cancelling requests: %{mask.hash}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    a2 = v30;
    MEMORY[0x22AA9A450](v24, -1, -1);
    v25 = v17;
    a3 = v31;
    MEMORY[0x22AA9A450](v25, -1, -1);
  }

  v26 = *(v6 + 8);
  v27 = v32;
  v26(v12, v32);
  sub_22766A6C0();
  sub_22766B370();
  v26(v10, v27);
  v28 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  return sub_226F29A00(v13, a3);
}

uint64_t sub_22731DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v12 = *(v44 - 8);
  v43 = *(v12 + 64);
  v13 = MEMORY[0x28223BE20](v44);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v15;
  v16 = *__swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  sub_2274934C4(v6);
  v39 = a1;
  v17 = *__swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  v47[3] = type metadata accessor for AssetBundleHandler();
  v47[4] = &off_283AC3B48;
  v47[0] = v17;
  sub_226E91B50(v47, v46);
  v18 = swift_allocObject();
  sub_226E92AB8(v46, v18 + 16);

  __swift_destroy_boxed_opaque_existential_0(v47);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v19 = sub_22766C950();
  sub_227669A50();
  sub_227663480();
  sub_226E9CFD0(&qword_281398E90, &qword_27D7B8640, qword_227671210);
  sub_227669230();

  (*(v40 + 8))(v6, v3);
  v20 = swift_allocObject();
  *(v20 + 16) = nullsub_1;
  *(v20 + 24) = 0;
  v21 = v37;
  v22 = v41;
  (*(v7 + 16))(v37, v11, v41);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227320140;
  v25[1] = v20;
  v26 = v38;
  sub_227669270();
  (*(v7 + 8))(v11, v22);
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 16) = sub_227320170;
  *(v27 + 24) = v28;
  v29 = v42;
  v30 = v26;
  v31 = v44;
  (*(v12 + 16))(v42, v26, v44);
  v32 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v33 = (v43 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v12 + 32))(v34 + v32, v29, v31);
  v35 = (v34 + v33);
  *v35 = sub_22732067C;
  v35[1] = v27;

  sub_227669270();
  return (*(v12 + 8))(v30, v31);
}

uint64_t sub_22731E45C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_227320178, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227320190;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22731E784(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_226FBE034, a1, v9, v11, v10, v8);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_226FBE050;
  *(v12 + 24) = a1;
  (*(v3 + 16))(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v6, v2);
  v16 = (v15 + v14);
  *v16 = sub_226FBE218;
  v16[1] = v12;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22731E9DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  sub_226ECF5D8(sub_227181860, a1, v9, MEMORY[0x277D84D38], v10, a2);
}

uint64_t sub_22731EB40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v64 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v71 = v64 - v12;
  MEMORY[0x28223BE20](v11);
  v72 = v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v77 = *(v14 - 8);
  v78 = v14;
  v76 = *(v77 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v74 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v81 = *(v18 - 8);
  v82 = v18;
  v80 = *(v81 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v75 = v64 - v21;
  v70 = a1;
  v22 = *__swift_project_boxed_opaque_existential_0((a1 + 56), *(a1 + 80));
  v67 = v10;
  sub_22748F300(v10);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22731F364;
  *(v23 + 24) = 0;
  v68 = *(v4 + 16);
  v68(v7, v10, v3);
  v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v66 = v24;
  v25 = (v5 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v65 = *(v4 + 32);
  v27 = v7;
  v28 = v3;
  v65(v26 + v24, v27, v3);
  v29 = (v26 + v25);
  *v29 = sub_227320338;
  v29[1] = v23;
  v64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v30 = v71;
  sub_227669270();
  v31 = *(v4 + 8);
  v32 = v67;
  v31(v67, v28);
  v69 = v31;
  v68(v32, v30, v28);
  v33 = swift_allocObject();
  v34 = v32;
  v35 = v28;
  v65(v33 + v66, v34, v28);
  v36 = (v33 + v25);
  v37 = v70;
  *v36 = sub_227320368;
  v36[1] = v37;

  v38 = v72;
  sub_227669270();
  v31(v30, v35);
  v39 = *__swift_project_boxed_opaque_existential_0((v37 + 56), *(v37 + 80));
  v85[3] = type metadata accessor for AssetBundleHandler();
  v85[4] = &off_283AC3B48;
  v85[0] = v39;
  sub_226E91B50(v85, v84);
  v40 = swift_allocObject();
  sub_226E92AB8(v84, v40 + 16);

  __swift_destroy_boxed_opaque_existential_0(v85);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v41 = sub_22766C950();
  sub_227669A50();
  sub_227663480();
  sub_226E9CFD0(&qword_281398E90, &qword_27D7B8640, qword_227671210);
  v42 = v73;
  sub_227669230();

  v69(v38, v35);
  v43 = swift_allocObject();
  *(v43 + 16) = nullsub_1;
  *(v43 + 24) = 0;
  v44 = v77;
  v45 = v78;
  v46 = v74;
  v47 = v42;
  (*(v77 + 16))(v74, v42, v78);
  v48 = v44;
  v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v50 = (v76 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v48 + 32))(v51 + v49, v46, v45);
  v52 = (v51 + v50);
  *v52 = sub_227320680;
  v52[1] = v43;
  v53 = v75;
  sub_227669270();
  (*(v48 + 8))(v47, v45);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_227320378;
  *(v54 + 24) = v37;
  v55 = v81;
  v56 = v82;
  v57 = v79;
  (*(v81 + 16))(v79, v53, v82);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v60 = (v80 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  (*(v58 + 32))(v61 + v59, v57, v56);
  v62 = (v61 + v60);
  *v62 = sub_22732067C;
  v62[1] = v54;

  sub_227669270();
  return (*(v58 + 8))(v53, v56);
}

uint64_t sub_22731F364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_227317780(*a1, 7);
  v4 = sub_226F40934(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_22731F3B8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = v8;
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = sub_22766B390();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_22766A6C0();

  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v4;
    v19 = v18;
    v40 = swift_slowAlloc();
    v46 = v40;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    sub_227663480();
    v41 = a2;
    sub_227320474(&unk_2813A5800, MEMORY[0x277D4FF88]);
    v20 = sub_22766C610();
    v22 = sub_226E97AE8(v20, v21, &v46);
    v39 = v11;
    v23 = v22;
    a2 = v41;

    *(v19 + 14) = v23;
    _os_log_impl(&dword_226E8E000, v16, v17, "Audio Language Preference Updated - cancelling mismatched bundles: %{mask.hash}s", v19, 0x16u);
    v24 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AA9A450](v24, -1, -1);
    v25 = v19;
    v4 = v42;
    MEMORY[0x22AA9A450](v25, -1, -1);

    (*(v43 + 8))(v14, v39);
  }

  else
  {

    (*(v43 + 8))(v14, v11);
  }

  v26 = v15;
  v27 = sub_2273CAE98(v15, a2);

  v46 = v27;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v28 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669240();

  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_227320428;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_227086F10;
  *(v31 + 24) = v30;
  v32 = v45;
  (*(v5 + 16))(v45, v10, v4);
  v33 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v34 = (v44 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v5 + 32))(v35 + v33, v32, v4);
  v36 = (v35 + v34);
  *v36 = sub_227320430;
  v36[1] = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_227669270();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_22731F8E8(uint64_t a1)
{
  v1 = sub_227317780(a1, 0);
  v2 = sub_226F40934(v1);

  return v2;
}

uint64_t sub_22731F938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v28 - v12;
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v14 = *v13;
  v15 = *(*v13 + 336);
  v29 = *(*v13 + 344);
  v28 = __swift_project_boxed_opaque_existential_0((v14 + 312), v15);
  v16 = a1;
  v17 = v5;
  (*(v6 + 16))(v8, v16, v5);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v18, v8, v17);
  *(v20 + v19) = v14;

  v21 = v30;
  sub_226ECF5D8(sub_2273206B4, v20, v15, v17, v29, v30);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273206EC;
  v26[1] = v14;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_22731FC60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = a1[75];
  v10 = a1[76];
  __swift_project_boxed_opaque_existential_0(a1 + 72, v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  sub_226ECF5D8(sub_22732069C, a1, v9, v11, v10, v8);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_2273206E8;
  *(v12 + 24) = a1;
  (*(v3 + 16))(v6, v8, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v13, v6, v2);
  v16 = (v15 + v14);
  *v16 = sub_226FBE218;
  v16[1] = v12;

  sub_227669270();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_22731FF8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

BOOL sub_227320028(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22766D190() & 1;
    }
  }

  return result;
}

uint64_t sub_22732009C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_227320214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);

  return sub_227669270();
}

void sub_227320380(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_227494A60(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_227320474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_359Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2273205B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227320744()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22732081C, 0, 0);
}

uint64_t sub_22732081C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(*__swift_project_boxed_opaque_existential_0((v0[3] + 16), *(v0[3] + 40)) + 16);
  sub_2272858E0(24, 0, 0, v2);
  sub_2272A1748(v2, v1);
  v6 = *(v4 + 8);
  v0[8] = v6;
  v0[9] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = "SeymourServices/SearchScriptClient.swift";
  *(v7 + 24) = 40;
  *(v7 + 32) = 2;
  *(v7 + 40) = 23;
  *(v7 + 48) = v1;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A8, &unk_227680630);
  *v9 = v0;
  v9[1] = sub_2273209AC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227323674, v7, v10);
}

uint64_t sub_2273209AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  v5 = v2[10];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227320B4C, 0, 0);
  }

  else
  {
    v7 = v2[8];
    v6 = v2[9];
    v9 = v2[6];
    v8 = v2[7];
    v10 = v2[4];
    v11 = v2[2];

    v7(v8, v10);

    v12 = *(v4 + 8);

    return v12(v11);
  }
}

uint64_t sub_227320B4C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  (*(v0 + 64))(*(v0 + 56), *(v0 + 32));

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3();
}

uint64_t sub_227320BCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227320C9C, 0, 0);
}

uint64_t sub_227320C9C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *__swift_project_boxed_opaque_existential_0((v0[4] + 16), *(v0[4] + 40));
  sub_22732136C(25, v2, v1);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = "SeymourServices/SearchScriptClient.swift";
  *(v4 + 24) = 40;
  *(v4 + 32) = 2;
  *(v4 + 40) = 27;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_227664420();
  *v6 = v0;
  v6[1] = sub_227320DD8;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_227323558, v4, v7);
}

uint64_t sub_227320DD8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227323BC4, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_227320F5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22732102C, 0, 0);
}

uint64_t sub_22732102C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *__swift_project_boxed_opaque_existential_0((v0[4] + 16), *(v0[4] + 40));
  sub_22732171C(26, v2, v1);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = "SeymourServices/SearchScriptClient.swift";
  *(v4 + 24) = 40;
  *(v4 + 32) = 2;
  *(v4 + 40) = 31;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = sub_2276676E0();
  *v6 = v0;
  v6[1] = sub_227321168;
  v8 = v0[2];

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2273234C8, v4, v7);
}

uint64_t sub_227321168()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2273212EC, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_2273212EC()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_22732136C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v5 = sub_227664030();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v31 = *(v33 - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x28223BE20](v33);
  v16 = &v28 - v15;
  v17 = *(v3 + 16);
  v28 = v17;
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v14);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v32;
  v22 = v29;
  v21 = v30;
  (*(v8 + 16))(v29, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323644;
  v25[1] = v20;
  sub_227664420();
  v26 = v28;
  sub_227669270();
  (*(v8 + 8))(v12, v21);
  sub_2272A1C8C(v16, v34);
  return (*(v31 + 8))(v16, v33);
}

uint64_t sub_22732171C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v5 = sub_227667200();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA310, &unk_22767E470);
  v31 = *(v33 - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x28223BE20](v33);
  v16 = &v28 - v15;
  v17 = *(v3 + 16);
  v28 = v17;
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v14);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v18, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_227669280();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v32;
  v22 = v29;
  v21 = v30;
  (*(v8 + 16))(v29, v12, v30);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v22, v21);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323528;
  v25[1] = v20;
  sub_2276676E0();
  v26 = v28;
  sub_227669270();
  (*(v8 + 8))(v12, v21);
  sub_2272A21C0(v16, v34);
  return (*(v31 + 8))(v16, v33);
}

uint64_t sub_227321ACC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v33 = a3;
  v5 = sub_2276690A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v30 = *(v32 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v15 = &v27 - v14;
  v16 = *(v3 + 16);
  v27 = v16;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_227669280();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v31;
  v21 = v28;
  v20 = v29;
  (*(v8 + 16))(v28, v12, v29);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_2273237B8;
  v24[1] = v19;
  sub_227668CE0();
  v25 = v27;
  sub_227669270();
  (*(v8 + 8))(v12, v20);
  sub_2272A658C(v15, v33);
  return (*(v30 + 8))(v15, v32);
}

uint64_t sub_227321E7C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227667B70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC348, &unk_22767E520);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323920;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC290, &unk_227680650);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272AC3E4(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_227322234@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227667480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD880, &unk_22767E540);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_2273238A8;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB178, &unk_227680640);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272ACE5C(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_2273225EC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v35 = a3;
  v5 = sub_227664590();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v31);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D90, &unk_22767B290);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v29 = *(v3 + 16);
  (*(v6 + 16))(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v18 = v36;
  sub_227669280();
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 16) = v29;
  *(v19 + 24) = v32;
  v22 = v31;
  (*(v8 + 16))(v21, v18, v31);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227323830;
  v25[1] = v19;
  v26 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8B0, &unk_22767E490);
  sub_227669270();
  (*(v8 + 8))(v36, v22);
  sub_2272A55D0(v15, v35);
  return (*(v33 + 8))(v15, v34);
}

uint64_t sub_2273229A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v36 = a3;
  v5 = sub_2276654E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v29 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v30 = *(v3 + 16);
  (*(v6 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v14);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v37;
  sub_227669280();
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  *(v20 + 16) = v30;
  *(v20 + 24) = v33;
  v23 = v32;
  (*(v8 + 16))(v22, v19, v32);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_2273239F8;
  v26[1] = v20;
  v27 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  sub_227669270();
  (*(v8 + 8))(v37, v23);
  sub_2272AE880(v16, v36);
  return (*(v34 + 8))(v16, v35);
}

uint64_t sub_227322D5C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v36 = a3;
  v5 = sub_227665A40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v29 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3E8, &unk_22767E4F0);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v30 = *(v3 + 16);
  (*(v6 + 16))(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5, v14);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v6 + 32))(v18 + v17, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = v37;
  sub_227669280();
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v31;
  *(v20 + 16) = v30;
  *(v20 + 24) = v33;
  v23 = v32;
  (*(v8 + 16))(v22, v19, v32);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v25 = swift_allocObject();
  (*(v8 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227323BC8;
  v26[1] = v20;
  v27 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6D0, &qword_227680660);
  sub_227669270();
  (*(v8 + 8))(v37, v23);
  sub_2272AE880(v16, v36);
  return (*(v34 + 8))(v16, v35);
}

uint64_t sub_227323114@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = a1;
  v37 = a3;
  v4 = sub_227665030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA388, &unk_22767E4A0);
  v34 = *(v36 - 8);
  v12 = *(v34 + 64);
  v13 = MEMORY[0x28223BE20](v36);
  v15 = v30 - v14;
  v16 = *(v3 + 16);
  v17 = *(v5 + 16);
  v18 = v4;
  v30[1] = v4;
  v17(v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v4, v13);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = v11;
  v30[0] = v11;
  sub_227669280();
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v35;
  v23 = v31;
  v24 = v33;
  (*(v7 + 16))(v31, v21, v33);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v25, v23, v24);
  v27 = (v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_227323740;
  v27[1] = v22;
  v28 = v16;
  sub_227669270();
  (*(v7 + 8))(v30[0], v24);
  sub_2272AFD60(v15, v37);
  return (*(v34 + 8))(v15, v36);
}

uint64_t sub_2273236A4@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  a1(0);
  result = sub_227667710();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_227323AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_227323C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_227323CD0(&qword_27D7BCB68);
  v5 = sub_227323CD0(&qword_28139B778);

  return a3(a1, v4, v5);
}

uint64_t sub_227323CD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227665A50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227323D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_226F1FC68(0, v1, 0);
    v4 = v47;
    v5 = v3 + 64;
    v6 = -1 << *(v3 + 32);
    result = sub_22766CC90();
    v8 = 0;
    v42 = *(v3 + 36);
    v34 = v3 + 72;
    v35 = v3;
    v36 = v1;
    v37 = v3 + 64;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
    {
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_32;
      }

      if (v42 != *(v3 + 36))
      {
        goto LABEL_33;
      }

      v39 = 1 << result;
      v40 = result >> 6;
      v11 = *(v3 + 48) + 24 * result;
      v12 = *(v11 + 16);
      v41 = result;
      v13 = *(*(v3 + 56) + 8 * result);
      v14 = *(v13 + 16);
      v43 = *v11;
      v44 = *(v11 + 8);
      v15 = *v11;
      if (v14)
      {
        sub_226EB396C(v15, v44, v12);

        v38 = v4;
        sub_226F1FCC8(0, v14, 0);
        v16 = v2;
        v17 = 32;
        v45 = v13;
        do
        {
          v46 = *(v13 + v17);
          sub_226EB396C(v43, v44, v12);
          v18 = v12;
          v20 = *(v2 + 16);
          v19 = *(v2 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_226F1FCC8((v19 > 1), v20 + 1, 1);
            v4 = v38;
          }

          *(v2 + 16) = v20 + 1;
          v21 = v2 + 32 * v20;
          *(v21 + 32) = v46;
          *(v21 + 40) = v43;
          *(v21 + 48) = v44;
          *(v21 + 56) = v18;
          v17 += 8;
          --v14;
          v12 = v18;
          v13 = v45;
        }

        while (v14);
        LOBYTE(v22) = v12;

        v2 = MEMORY[0x277D84F90];
        v3 = v35;
      }

      else
      {
        v22 = *(v11 + 16);
        sub_226EB396C(v15, *(v11 + 8), v12);
        v16 = v2;
      }

      v24 = *(v4 + 16);
      v23 = *(v4 + 24);
      result = v41;
      if (v24 >= v23 >> 1)
      {
        sub_226F1FC68((v23 > 1), v24 + 1, 1);
        result = v41;
      }

      *(v4 + 16) = v24 + 1;
      v25 = v4 + 32 * v24;
      *(v25 + 32) = v43;
      *(v25 + 40) = v44;
      *(v25 + 48) = v22;
      *(v25 + 56) = v16;
      v9 = 1 << *(v3 + 32);
      if (result >= v9)
      {
        goto LABEL_34;
      }

      v5 = v37;
      v26 = *(v37 + 8 * v40);
      if ((v26 & v39) == 0)
      {
        goto LABEL_35;
      }

      if (v42 != *(v3 + 36))
      {
        goto LABEL_36;
      }

      v27 = v26 & (-2 << (result & 0x3F));
      if (v27)
      {
        v9 = __clz(__rbit64(v27)) | result & 0x7FFFFFFFFFFFFFC0;
        v10 = v36;
      }

      else
      {
        v28 = v4;
        v29 = v40 << 6;
        v30 = v40 + 1;
        v31 = (v34 + 8 * v40);
        v10 = v36;
        while (v30 < (v9 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_22704FE58(result, v42, 0);
            v9 = __clz(__rbit64(v32)) + v29;
            goto LABEL_27;
          }
        }

        sub_22704FE58(result, v42, 0);
LABEL_27:
        v4 = v28;
      }

      ++v8;
      result = v9;
      if (v8 == v10)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}