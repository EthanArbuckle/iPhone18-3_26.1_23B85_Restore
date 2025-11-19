uint64_t sub_227417CF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  v4[27] = a1;
  v4[28] = v1;

  (*(v3[19] + 8))(v3[20], v3[18]);
  if (v1)
  {
    v7 = sub_227418458;
  }

  else
  {
    v7 = sub_227417E64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227417E64()
{
  v62 = v0;
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[13];
    v4 = sub_2274CDB04(*(v1 + 16), 0);
    v5 = sub_2274CEFD4(&v61, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);

    sub_226EBB21C();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = v0[28];
  v61 = v4;
  sub_22742B020(&v61);
  if (v6)
  {
  }

  v8 = v0[27];

  v9 = v61;
  v10 = *(v61 + 2);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v13 = v0[13];
    v54 = *(v61 + 2);
    v57 = (v13 + 32);
    v55 = v61;
    while (v12 < *(v9 + 2))
    {
      v14 = v0[11];
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = *(v13 + 72);
      (*(v13 + 16))(v0[17], &v9[v15 + v16 * v12], v0[12]);
      sub_227664C50();
      v17 = sub_2276674C0();
      v18 = (*(*(v17 - 8) + 48))(v14, 1, v17);
      sub_226E97D1C(v14, &unk_27D7BB930, &unk_22767B3F0);
      v19 = v0[17];
      if (v18 == 1)
      {
        v20 = *v57;
        (*v57)(v0[16], v0[17], v0[12]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F828(0, *(v11 + 2) + 1, 1);
          v11 = v61;
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_226F1F828(v22 > 1, v23 + 1, 1);
          v11 = v61;
        }

        v24 = v0[16];
        v25 = v0[12];
        *(v11 + 2) = v23 + 1;
        result = v20(&v11[v15 + v23 * v16], v24, v25);
        v10 = v54;
        v9 = v55;
      }

      else
      {
        result = (*(v13 + 8))(v0[17], v0[12]);
      }

      if (v10 == ++v12)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_20:

  v26 = sub_2276671B0();
  result = sub_2273FC638(v26, v11, MEMORY[0x277D50E98]);
  v58 = v28;
  v60 = v29 >> 1;
  v30 = (v29 >> 1) - v27;
  if (__OFSUB__(v29 >> 1, v27))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30)
  {
    v31 = v27;
    v61 = MEMORY[0x277D84F90];
    result = sub_226F20128(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v53 = v0[13];
    v52 = v0[9];
    v32 = v60;
    v33 = v61;
    if (v31 > v60)
    {
      v32 = v31;
    }

    v56 = v32;
    while (v56 != v31)
    {
      v35 = v0[14];
      v34 = v0[15];
      v36 = v0[12];
      v37 = v0[10];
      v38 = *(v53 + 16);
      v38(v34, v58 + *(v53 + 72) * v31, v36);
      v38(v35, v34, v36);
      sub_227668820();
      (*(v53 + 8))(v34, v36);
      v61 = v33;
      v40 = *(v33 + 2);
      v39 = *(v33 + 3);
      if (v40 >= v39 >> 1)
      {
        sub_226F20128(v39 > 1, v40 + 1, 1);
        v33 = v61;
      }

      v41 = v0[10];
      v42 = v0[8];
      *(v33 + 2) = v40 + 1;
      result = (*(v52 + 32))(&v33[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v40], v41, v42);
      if (v60 == ++v31)
      {
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v33 = MEMORY[0x277D84F90];
LABEL_32:
  v43 = v0[7];
  v44 = v43[83];
  v45 = v43[84];
  __swift_project_boxed_opaque_existential_0(v43 + 80, v44);
  v46 = swift_allocObject();
  v0[29] = v46;
  *(v46 + 16) = v43;
  *(v46 + 24) = v33;
  v47 = *(v45 + 24);

  v59 = (v47 + *v47);
  v48 = v47[1];
  v49 = swift_task_alloc();
  v0[30] = v49;
  v50 = sub_227668B50();
  *v49 = v0;
  v49[1] = sub_227418544;
  v51 = v0[6];

  return (v59)(v51, sub_22742F598, v46, v50, v44, v45);
}

uint64_t sub_227418458()
{
  sub_226E97D1C(v0[23], &qword_27D7B93D8, &qword_227673E10);
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227418544()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 232);

  if (v0)
  {
    v6 = sub_227418844;
  }

  else
  {
    v6 = sub_227418678;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227418678()
{
  v1 = v0[22];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  sub_226E97D1C(v0[23], &qword_27D7B93D8, &qword_227673E10);

  v9 = v0[1];

  return v9();
}

uint64_t sub_227418768()
{
  v1 = v0[7];

  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[10];
  v10 = v0[11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_227418844()
{
  sub_226E97D1C(v0[23], &qword_27D7B93D8, &qword_227673E10);
  v1 = v0[31];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227418930@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v158 = a3;
  v176 = a2;
  v159 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB958, qword_22767B490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v161 = &v151 - v7;
  v162 = sub_227668630();
  v160 = *(v162 - 8);
  v8 = *(v160 + 64);
  MEMORY[0x28223BE20](v162);
  v157 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v156 = &v151 - v11;
  v165 = sub_227664530();
  v163 = *(v165 - 8);
  v12 = v163[8];
  MEMORY[0x28223BE20](v165);
  v164 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667AE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v178 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_227665FB0();
  v171 = *(v175 - 8);
  v17 = v171[8];
  MEMORY[0x28223BE20](v175);
  v169 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v174 = &v151 - v20;
  MEMORY[0x28223BE20](v21);
  v177 = &v151 - v22;
  v23 = sub_227667AA0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v170 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v172 = &v151 - v27;
  MEMORY[0x28223BE20](v28);
  v173 = &v151 - v29;
  v167 = sub_227663FA0();
  v166 = *(v167 - 8);
  v30 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v179 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = a1;
  v32 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v33 = *v32;
  v34 = v32[1];
  v35 = *(v32 + 16);
  v36 = v32[3];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  v41 = v33;
  v42 = v34;

  sub_22766A070();
  *(v40 + 16) = v41;
  *(v40 + 24) = v42;
  *(v40 + 32) = v35;
  *(v40 + 40) = v36;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
  v43 = swift_allocObject();
  v168 = xmmword_2276728D0;
  *(v43 + 16) = xmmword_2276728D0;
  *(v43 + 32) = sub_227664C10();
  *(v43 + 40) = v44;
  *(v43 + 48) = sub_227664C10();
  *(v43 + 56) = v45;
  v184[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v184[0] = v43;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v46 = sub_22766C820();
  sub_226E93170(v184, &v181, &unk_27D7BC990, &qword_227670A30);
  v47 = v183;
  if (v183)
  {
    v48 = __swift_project_boxed_opaque_existential_0(&v181, v183);
    v49 = *(v47 - 8);
    v50 = *(v49 + 64);
    v51 = MEMORY[0x28223BE20](v48);
    v53 = &v151 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v53, v51);
    v54 = sub_22766D170();
    (*(v49 + 8))(v53, v47);
    __swift_destroy_boxed_opaque_existential_0(&v181);
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(v184, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v56 = sub_22766A080();
  v58 = v57;
  MEMORY[0x22AA985C0]();
  if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v56(v184, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v60 = v185;
  v61 = sub_2273FCB68(KeyPath, sub_227284754, sub_2273C20B4, sub_22745EF20);
  if (v60)
  {

    swift_setDeallocating();

    v62 = *(v40 + 40);

    v63 = qword_2813B2078;
    v64 = sub_22766A100();
    (*(*(v64 - 8) + 8))(v40 + v63, v64);
    v65 = *(*v40 + 48);
    v66 = *(*v40 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v185 = sub_226F3E6A8(v61);

    swift_setDeallocating();

    v67 = *(v40 + 40);

    v68 = qword_2813B2078;
    v69 = sub_22766A100();
    v70 = *(v69 - 8);
    *&v155 = *(v70 + 8);
    v154 = v70 + 8;
    (v155)(v40 + v68, v69);
    v71 = *(*v40 + 48);
    v72 = *(*v40 + 52);
    swift_deallocClassInstance();
    v73 = __swift_project_boxed_opaque_existential_0(v180, v180[3]);
    v74 = *v73;
    v75 = v73[1];
    v76 = *(v73 + 16);
    v77 = v73[3];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    v81 = swift_allocObject();
    v82 = v74;
    v83 = v75;

    sub_22766A070();
    *(v81 + 16) = v82;
    *(v81 + 24) = v83;
    *(v81 + 32) = v76;
    *(v81 + 40) = v77;
    v84 = swift_getKeyPath();
    v85 = sub_2273FCB68(v84, sub_2272847B4, sub_2273C20B4, sub_22745EF20);
    v87 = sub_226F3E6A8(v85);

    swift_setDeallocating();

    v88 = *(v81 + 40);

    (v155)(v81 + qword_2813B2078, v69);
    v89 = *(*v81 + 48);
    v90 = *(*v81 + 52);
    swift_deallocClassInstance();
    v91 = *__swift_project_boxed_opaque_existential_0((v176 + 376), *(v176 + 400));
    sub_226EAF48C(v180, v179);
    sub_227663F60();
    sub_227665F60();
    sub_2276671A0();
    sub_227667AB0();
    sub_227667A80();
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
    v93 = *(sub_2276682D0() - 8);
    v94 = *(v93 + 72);
    v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v151 = v92;
    v96 = swift_allocObject();
    v155 = xmmword_227670CD0;
    *(v96 + 16) = xmmword_227670CD0;
    *(v96 + v95) = v87;
    swift_storeEnumTagMultiPayload();

    sub_226F4F620(v96);
    v176 = v87;
    swift_setDeallocating();
    v97 = MEMORY[0x277D53468];
    v153 = MEMORY[0x277D53468];
    sub_22742FDAC(v96 + v95, MEMORY[0x277D53468]);
    swift_deallocClassInstance();
    v98 = swift_allocObject();
    *(v98 + 16) = v155;
    sub_227663F60();
    *(v98 + v95) = v99;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v98);
    swift_setDeallocating();
    sub_22742FDAC(v98 + v95, v97);
    swift_deallocClassInstance();
    v100 = v174;
    sub_227665F80();
    v152 = v171[2];
    v154 = 0;
    v152(v177, v100, v175);
    sub_2276671B0();
    sub_227667AB0();
    sub_227667A80();
    v101 = swift_allocObject();
    *(v101 + 16) = v168;
    *(v101 + v95) = v176;
    swift_storeEnumTagMultiPayload();
    *(v101 + v95 + v94) = v185;
    swift_storeEnumTagMultiPayload();

    sub_226F4F620(v101);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v102 = v179;
    v103 = swift_allocObject();
    *(v103 + 16) = v155;
    sub_227663F60();
    *(v103 + v95) = v104;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v103);
    swift_setDeallocating();
    v105 = v103 + v95;
    v106 = v173;
    v107 = v175;
    sub_22742FDAC(v105, v153);
    v108 = v180;
    swift_deallocClassInstance();
    v109 = v169;
    sub_227665F80();
    v152(v177, v109, v107);
    sub_2276671B0();
    sub_227667AB0();
    v110 = v170;
    sub_227667A80();
    v111 = __swift_project_boxed_opaque_existential_0(v108, v108[3]);
    sub_22742F870(v106, *v111, v111[1], *(v111 + 16), v111[3]);
    v112 = v154;
    v113 = sub_227232EB8(100);
    if (v112)
    {

      v114 = MEMORY[0x277D530D0];
      sub_22742FDAC(v110, MEMORY[0x277D530D0]);
      v115 = v171[1];
      v115(v109, v107);
      sub_22742FDAC(v172, v114);
      v115(v174, v107);
      sub_22742FDAC(v106, v114);
      return (*(v166 + 8))(v102, v167);
    }

    else
    {
      v185 = v113;

      v116 = __swift_project_boxed_opaque_existential_0(v108, v108[3]);
      sub_22742F870(v172, *v116, v116[1], *(v116 + 16), v116[3]);
      v117 = sub_227232EB8(100);

      v118 = __swift_project_boxed_opaque_existential_0(v108, v108[3]);
      sub_22742F870(v110, *v118, v118[1], *(v118 + 16), v118[3]);
      v119 = sub_227232EB8(100);
      v154 = 0;
      v120 = v119;

      v121 = MEMORY[0x277D50978];
      v122 = sub_2273FB948(v117, v185, MEMORY[0x277D50978], sub_2270B3AA8);
      v123 = sub_2273FB948(v120, v122, v121, sub_2270B3AA8);
      v124 = v123;
      v125 = v123 + 56;
      v126 = 1 << *(v123 + 32);
      v127 = -1;
      if (v126 < 64)
      {
        v127 = ~(-1 << v126);
      }

      v128 = v127 & *(v123 + 56);
      v129 = (v126 + 63) >> 6;
      v180 = v163 + 2;
      v185 = (v163 + 1);
      v130 = (v160 + 48);
      v177 = (v160 + 32);

      v131 = 0;
      v178 = MEMORY[0x277D84F90];
      v132 = v165;
      while (1)
      {
        v133 = v164;
        if (!v128)
        {
          break;
        }

        v134 = v131;
LABEL_18:
        (v163[2])(v164, *(v124 + 48) + v163[9] * (__clz(__rbit64(v128)) | (v134 << 6)), v132);
        v110 = v132;
        v135 = v161;
        v136 = v154;
        sub_227419F30(v133, v176, v161);
        v131 = &v182;
        v154 = v136;
        if (v136)
        {
          goto LABEL_28;
        }

        v128 &= v128 - 1;
        (*v185)(v133, v110);
        if ((*v130)(v135, 1, v162) == 1)
        {
          sub_226E97D1C(v135, &qword_27D7BB958, qword_22767B490);
          v131 = v134;
          v132 = v165;
          v110 = v170;
        }

        else
        {
          v137 = *v177;
          v138 = v135;
          v139 = v162;
          (*v177)(v156, v138, v162);
          v137(v157, v156, v139);
          v140 = v137;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = v170;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v178 = sub_2273A694C(0, *(v178 + 2) + 1, 1, v178);
          }

          v132 = v165;
          v143 = *(v178 + 2);
          v142 = *(v178 + 3);
          v144 = v143 + 1;
          if (v143 >= v142 >> 1)
          {
            *&v168 = v143 + 1;
            *&v155 = v143;
            v146 = sub_2273A694C(v142 > 1, v143 + 1, 1, v178);
            v144 = v168;
            v143 = v155;
            v178 = v146;
          }

          v145 = v178;
          *(v178 + 2) = v144;
          v140(&v145[((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v143], v157, v162);
          v131 = v134;
        }
      }

      while (1)
      {
        v134 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          break;
        }

        if (v134 >= v129)
        {

          sub_226F477A4(v178);

          sub_226F47940(v147);

          sub_227668B40();
          v148 = MEMORY[0x277D530D0];
          sub_22742FDAC(v110, MEMORY[0x277D530D0]);
          v149 = v171[1];
          v150 = v175;
          v149(v169, v175);
          sub_22742FDAC(v172, v148);
          v149(v174, v150);
          sub_22742FDAC(v173, v148);
          return (*(v166 + 8))(v179, v167);
        }

        v128 = *(v125 + 8 * v134);
        v131 = (v131 + 1);
        if (v128)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:

      (*v185)(v133, v110);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_227419F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22766B390();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664530();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_2276644D0();
  sub_22718C70C(v17, v18, a2);

  v19 = *(v10 + 16);
  v19(v16, a1, v9);
  v40 = a3;
  v20 = v39;
  sub_2276685E0();
  if (v20)
  {
    sub_22766A680();
    v19(v13, a1, v9);
    v21 = v20;
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v24 = 136315394;
      sub_22742F224(&qword_27D7B8C68, MEMORY[0x277D50978]);
      v25 = sub_22766D140();
      v27 = v26;
      (*(v10 + 8))(v13, v9);
      v28 = sub_226E97AE8(v25, v27, &v42);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_22766D250();
      v31 = sub_226E97AE8(v29, v30, &v42);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_226E8E000, v22, v23, "Failed to transform %s for personalization with error: %s", v24, 0x16u);
      v32 = v39;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    (*(v37 + 8))(v41, v38);
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_227668630();
  return (*(*(v34 - 8) + 56))(v40, v33, 1, v34);
}

uint64_t sub_22741A33C@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v2 - 8);
  v95 = v2;
  v82 = *(v94 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v81 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v68 - v5;
  v96 = sub_227662750();
  v86 = *(v96 - 8);
  v85 = *(v86 + 64);
  v6 = MEMORY[0x28223BE20](v96);
  v83 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v68 - v8;
  v78 = sub_22766B360();
  v9 = *(v78 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v78);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD470, &unk_227684B80);
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = v90[8];
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v80 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v87 = sub_227669890();
  v84 = *(v87 - 8);
  v22 = *(v84 + 64);
  MEMORY[0x28223BE20](v87);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v25 = v1[83];
  v26 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v25);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAB0, &unk_227685300);
  v77 = v21;
  sub_226ECF5D8(sub_22741AC20, 0, v25, v92, v26, v21);
  v27 = sub_2276697A0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_227669770();
  v79 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v12, v78);
  sub_227669880();
  v31 = sub_22766A920();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_22766A8F0();
  v78 = v34;
  v98 = v30;
  v35 = sub_22766C060();
  v75 = v35;
  v37 = v36;
  sub_227662720();
  v38 = swift_allocObject();
  v76 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  v74 = v37;
  *(v38 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAchievementNotificationRecord";
  *(v38 + 56) = 68;
  *(v38 + 64) = 2;

  v39 = v93;
  sub_227669270();
  v40 = v90;
  v73 = v90[2];
  v41 = v89;
  v42 = v91;
  v73(v89, v21, v91);
  v43 = v40;
  v72 = *(v40 + 80);
  v69 = ((v72 + 16) & ~v72) + v16;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v43[4];
  v70(v45 + v44, v41, v42);
  v47 = v94;
  v46 = v95;
  v48 = v81;
  (*(v94 + 16))(v81, v39, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v82 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_22742F3B8;
  v52[1] = v45;
  v53 = v80;
  sub_227669270();
  v54 = v86;
  v55 = v83;
  v56 = v96;
  (*(v86 + 16))(v83, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v85 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAchievementNotificationRecord";
  *(v59 + 40) = 68;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v78;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v89;
  v62 = v91;
  v73(v89, v53, v91);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v90[1];
  v66(v53, v62);
  (*(v94 + 8))(v93, v95);
  (*(v54 + 8))(v97, v96);
  v66(v77, v62);
  (*(v84 + 8))(v79, v87);
}

uint64_t sub_22741AC20@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC098, qword_22767C5E8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_227239AF8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    result = swift_deallocClassInstance();
    *a2 = v22;
  }

  return result;
}

uint64_t sub_22741AE34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v76 = *(v77 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD460, &unk_22767E380);
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = v89[8];
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v79 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v93 = &v68 - v20;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v25 = *(v1 + 664);
  v26 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v25);
  v27 = sub_227668A00();
  v91 = v27;

  sub_226ECF5D8(sub_22742F324, v2, v25, v27, v26, v21);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v76 + 8))(v12, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v76 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v75 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryPersonalizationPrivacyPreference";
  *(v39 + 56) = 71;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v16;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_22742F340;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v76;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryPersonalizationPrivacyPreference";
  *(v59 + 40) = 71;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_22742F37C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_22741B734@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((a2 + 680), *(a2 + 704));
  result = sub_227362748(a1, v13);
  if (!v3)
  {
    sub_226E93170(v13, v11, &qword_27D7B93D8, &qword_227673E10);
    v16 = sub_227668A00();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {
      sub_226E97D1C(v11, &qword_27D7B93D8, &qword_227673E10);
      sub_2276689D0();
      sub_2276689B0();
      return sub_226E97D1C(v13, &qword_27D7B93D8, &qword_227673E10);
    }

    else
    {
      sub_226E97D1C(v13, &qword_27D7B93D8, &qword_227673E10);
      return (*(v17 + 32))(a3, v11, v16);
    }
  }

  return result;
}

uint64_t sub_22741B910@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v91 = *(v1 - 8);
  v92 = v1;
  v80 = *(v91 + 64);
  v2 = MEMORY[0x28223BE20](v1);
  v79 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v90 = &v67 - v4;
  v93 = sub_227662750();
  v84 = *(v93 - 8);
  v83 = *(v84 + 64);
  v5 = MEMORY[0x28223BE20](v93);
  v81 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v67 - v7;
  v8 = sub_22766B360();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = v88[8];
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v77 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v85 = sub_227669890();
  v82 = *(v85 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v85);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();

  v76 = v21;
  sub_227669280();
  v25 = sub_2276697A0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_227669770();
  v78 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v12, v8);
  sub_227669880();
  v29 = sub_22766A920();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_22766A8F0();
  v74 = v32;
  v95 = v28;
  v33 = sub_22766C060();
  v73 = v33;
  v35 = v34;
  sub_227662720();
  v36 = swift_allocObject();
  v75 = v28;
  *(v36 + 16) = v28;
  *(v36 + 24) = v32;
  *(v36 + 32) = v33;
  *(v36 + 40) = v35;
  v72 = v35;
  *(v36 + 48) = "RemoteBrowsingEnvironmentBuilder::queryWheelchairUse";
  *(v36 + 56) = 52;
  *(v36 + 64) = 2;

  v37 = v90;
  sub_227669270();
  v38 = v88;
  v71 = v88[2];
  v39 = v87;
  v40 = v89;
  v71(v87, v21, v89);
  v70 = *(v38 + 80);
  v67 = ((v70 + 16) & ~v70) + v16;
  v41 = (v70 + 16) & ~v70;
  v69 = v41;
  v42 = swift_allocObject();
  v68 = v38[4];
  v68(v42 + v41, v39, v40);
  v43 = v91;
  v44 = v79;
  v45 = v37;
  v46 = v92;
  (*(v91 + 16))(v79, v45, v92);
  v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v48 = (v80 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v43 + 32))(v49 + v47, v44, v46);
  v50 = (v49 + v48);
  *v50 = sub_22742F294;
  v50[1] = v42;
  v51 = v77;
  sub_227669270();
  v52 = v84;
  v53 = v81;
  v54 = v93;
  (*(v84 + 16))(v81, v94, v93);
  v55 = (*(v52 + 80) + 49) & ~*(v52 + 80);
  v56 = (v83 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v72;
  *(v57 + 16) = v73;
  *(v57 + 24) = v58;
  *(v57 + 32) = "RemoteBrowsingEnvironmentBuilder::queryWheelchairUse";
  *(v57 + 40) = 52;
  *(v57 + 48) = 2;
  (*(v52 + 32))(v57 + v55, v53, v54);
  *(v57 + v56) = v74;
  *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
  v59 = v87;
  v60 = v51;
  v61 = v89;
  v71(v87, v51, v89);
  v62 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v68(v63 + v69, v59, v61);
  v64 = (v63 + v62);
  *v64 = sub_22742F2D0;
  v64[1] = v57;

  sub_227669270();
  v65 = v88[1];
  v65(v60, v61);
  (*(v91 + 8))(v90, v92);
  (*(v52 + 8))(v94, v93);
  v65(v76, v61);
  (*(v82 + 8))(v78, v85);
}

uint64_t sub_22741C1CC@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1[72];
  __swift_project_boxed_opaque_existential_0(a1 + 67, a1[70]);
  result = sub_22766A330();
  if (!v2)
  {
    *a2 = result == 2;
  }

  return result;
}

uint64_t *sub_22741C238()
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
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  __swift_destroy_boxed_opaque_existential_0(v0 + 75);
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 85);
  __swift_destroy_boxed_opaque_existential_0(v0 + 90);
  __swift_destroy_boxed_opaque_existential_0(v0 + 95);
  __swift_destroy_boxed_opaque_existential_0(v0 + 100);
  __swift_destroy_boxed_opaque_existential_0(v0 + 105);
  __swift_destroy_boxed_opaque_existential_0(v0 + 110);
  __swift_destroy_boxed_opaque_existential_0(v0 + 115);
  __swift_destroy_boxed_opaque_existential_0(v0 + 120);
  v1 = v0[125];

  v2 = v0[126];

  __swift_destroy_boxed_opaque_existential_0(v0 + 127);
  return v0;
}

uint64_t sub_22741C328()
{
  sub_22741C238();

  return swift_deallocClassInstance();
}

unint64_t sub_22741C394()
{
  result = qword_27D7BDA60;
  if (!qword_27D7BDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDA60);
  }

  return result;
}

uint64_t sub_22741C3E8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v39 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v35[-v17];
  sub_22766A670();
  sub_22766B370();
  v19 = *(v12 + 8);
  v19(v18, v11);
  if (*a1 != 1)
  {
    *a1 = 1;
    v29 = swift_allocObject();
    *(v29 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
    *(v29 + 24) = 54;
    *(v29 + 32) = 2;
    *(v29 + 40) = 788;
    *(v29 + 48) = &unk_227685220;
    *(v29 + 56) = a2;
    sub_227667670();

    sub_227669270();
    sub_22741CB34(v36 & 1, v10);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = v37;
    v32 = sub_227669290();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_22742AE7C;
    *(v33 + 24) = v30;

    v32(sub_226E93814, v33);

    return (*(v38 + 8))(v10, v31);
  }

  sub_22766A670();

  v20 = sub_22766B380();
  v21 = sub_22766C8B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    v23 = *(a2 + 1008);
    result = sub_227669800();
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = result;
    }

    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
      return result;
    }

    *(v22 + 4) = v28;

    _os_log_impl(&dword_226E8E000, v20, v21, "RemoteBrowsingEnvironment build in progress. %ld awaiting.", v22, 0xCu);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {
  }

  v19(v16, v11);
  v34 = swift_allocObject();
  *(v34 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v34 + 24) = 54;
  *(v34 + 32) = 2;
  *(v34 + 40) = 780;
  *(v34 + 48) = &unk_227685230;
  *(v34 + 56) = a2;
  sub_227667670();

  return sub_227669270();
}

uint64_t sub_22741C874(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22741C894, 0, 0);
}

uint64_t sub_22741C894()
{
  v1 = *(v0[3] + 1008);
  v2 = *(MEMORY[0x277D4DFB0] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2273556E8;
  v4 = v0[2];

  return MEMORY[0x2821AE7E0](v4);
}

uint64_t sub_22741C934(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22741C954, 0, 0);
}

uint64_t sub_22741C954()
{
  v1 = *(v0[3] + 1008);
  v2 = *(MEMORY[0x277D4DFB0] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_22734BBE0;
  v4 = v0[2];

  return MEMORY[0x2821AE7E0](v4);
}

uint64_t sub_22741C9F4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_22766A670();
    sub_22766B370();
    (*(v5 + 8))(v9, v4);
    *a1 = 0;
    v10 = *(a2 + 1008);
    sub_227669840();
    return sub_227669820();
  }

  return result;
}

uint64_t sub_22741CB34@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v1067) = a1;
  v1057 = a2;
  v1054 = sub_22766B360();
  v1053 = *(v1054 - 8);
  v4 = *(v1053 + 64);
  MEMORY[0x28223BE20](v1054);
  v1052 = &v881 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B340();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v1051 = &v881 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1064 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v1147 = *(v1064 - 8);
  v1050 = *(v1147 + 64);
  v9 = MEMORY[0x28223BE20](v1064);
  v1058 = &v881 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v1104 = &v881 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v1065 = &v881 - v14;
  MEMORY[0x28223BE20](v13);
  v1066 = &v881 - v15;
  v1056 = sub_227669890();
  v1055 = *(v1056 - 8);
  v16 = *(v1055 + 64);
  MEMORY[0x28223BE20](v1056);
  v1105 = &v881 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1060 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA260, &unk_227684B00);
  v1059 = *(v1060 - 1);
  v1048 = *(v1059 + 64);
  v18 = MEMORY[0x28223BE20](v1060);
  v1047 = &v881 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v1046 = &v881 - v20;
  v1045 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD460, &unk_22767E380);
  v1044 = *(v1045 - 8);
  v1043 = *(v1044 + 64);
  v21 = MEMORY[0x28223BE20](v1045);
  v1042 = &v881 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v1041 = &v881 - v23;
  v1040 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD470, &unk_227684B80);
  v1039 = *(v1040 - 8);
  v1038 = *(v1039 + 64);
  v24 = MEMORY[0x28223BE20](v1040);
  v1036 = &v881 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v1035 = &v881 - v26;
  v1034 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC640, &qword_22767E390);
  v1033 = *(v1034 - 8);
  v1032 = *(v1033 + 64);
  v27 = MEMORY[0x28223BE20](v1034);
  v1031 = &v881 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v1030 = &v881 - v29;
  v1029 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC648, &qword_22767E398);
  v1028 = *(v1029 - 8);
  v1027 = *(v1028 + 64);
  v30 = MEMORY[0x28223BE20](v1029);
  v1026 = &v881 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v1025 = &v881 - v32;
  v1024 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v1023 = *(v1024 - 8);
  v1022 = *(v1023 + 64);
  v33 = MEMORY[0x28223BE20](v1024);
  v1021 = &v881 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v1020 = &v881 - v35;
  v1019 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
  v1018 = *(v1019 - 8);
  v1017 = *(v1018 + 64);
  v36 = MEMORY[0x28223BE20](v1019);
  v1016 = &v881 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v1015 = &v881 - v38;
  v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC660, &unk_22767E3B0);
  v1013 = *(v1014 - 8);
  v1012 = *(v1013 + 64);
  v39 = MEMORY[0x28223BE20](v1014);
  v1011 = &v881 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v1010 = &v881 - v41;
  v1103 = sub_2276678C0();
  v1102 = *(v1103 - 8);
  v1068 = *(v1102 + 64);
  v42 = MEMORY[0x28223BE20](v1103);
  v1072 = &v881 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v1049 = &v881 - v45;
  MEMORY[0x28223BE20](v44);
  v1078 = &v881 - v46;
  v1009 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4C0, &unk_227684BD0);
  v1008 = *(v1009 - 8);
  v1007 = *(v1008 + 64);
  v47 = MEMORY[0x28223BE20](v1009);
  v1006 = &v881 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v1005 = &v881 - v49;
  v1004 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC668, &qword_22767E3C0);
  v1003 = *(v1004 - 8);
  v1002 = *(v1003 + 64);
  v50 = MEMORY[0x28223BE20](v1004);
  v1001 = &v881 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v1000 = &v881 - v52;
  v998 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4D0, &unk_227684BE0);
  v997 = *(v998 - 8);
  v996 = *(v997 + 64);
  v53 = MEMORY[0x28223BE20](v998);
  v995 = &v881 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v994 = &v881 - v55;
  v993 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v992 = *(v993 - 8);
  v991 = *(v992 + 64);
  v56 = MEMORY[0x28223BE20](v993);
  v990 = &v881 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v989 = &v881 - v58;
  v988 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC670, &qword_22767E3C8);
  v987 = *(v988 - 8);
  v986 = *(v987 + 64);
  v59 = MEMORY[0x28223BE20](v988);
  v985 = &v881 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v1071 = (&v881 - v61);
  v984 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v983 = *(v984 - 8);
  v982 = *(v983 + 64);
  v62 = MEMORY[0x28223BE20](v984);
  v981 = &v881 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v980 = &v881 - v64;
  v979 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4E0, &unk_227684C00);
  v978 = *(v979 - 8);
  v977 = *(v978 + 64);
  v65 = MEMORY[0x28223BE20](v979);
  v976 = &v881 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v975 = &v881 - v67;
  v974 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v973 = *(v974 - 8);
  v972 = *(v973 + 64);
  v68 = MEMORY[0x28223BE20](v974);
  v971 = &v881 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v970 = &v881 - v70;
  v969 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v968 = *(v969 - 8);
  v967 = *(v968 + 64);
  v71 = MEMORY[0x28223BE20](v969);
  v966 = &v881 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v965 = &v881 - v73;
  v964 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4F0, &unk_22767E3D0);
  v963 = *(v964 - 8);
  v962 = *(v963 + 64);
  v74 = MEMORY[0x28223BE20](v964);
  v961 = &v881 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v960 = &v881 - v76;
  v959 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v958 = *(v959 - 8);
  v957 = *(v958 + 64);
  v77 = MEMORY[0x28223BE20](v959);
  v956 = &v881 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v955 = &v881 - v79;
  v954 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD500, &qword_227684C20);
  v953 = *(v954 - 8);
  v952 = *(v953 + 64);
  v80 = MEMORY[0x28223BE20](v954);
  v951 = &v881 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v950 = &v881 - v82;
  v949 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD520, &unk_22767E3E0);
  v1107 = *(v949 - 8);
  v948 = *(v1107 + 64);
  v83 = MEMORY[0x28223BE20](v949);
  v947 = &v881 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v1070 = &v881 - v85;
  v946 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC678, &unk_227685240);
  v945 = *(v946 - 8);
  v944 = *(v945 + 64);
  v86 = MEMORY[0x28223BE20](v946);
  v943 = &v881 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v942 = &v881 - v88;
  v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD550, &unk_22767E3F0);
  v940 = *(v941 - 8);
  v939 = *(v940 + 64);
  v89 = MEMORY[0x28223BE20](v941);
  v938 = &v881 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89);
  v937 = &v881 - v91;
  v936 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v935 = *(v936 - 8);
  v934 = *(v935 + 64);
  v92 = MEMORY[0x28223BE20](v936);
  v933 = &v881 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v932 = &v881 - v94;
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC680, &unk_22767E400);
  v930 = *(v931 - 8);
  v929 = *(v930 + 64);
  v95 = MEMORY[0x28223BE20](v931);
  v928 = &v881 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v927 = &v881 - v97;
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v925 = *(v926 - 8);
  v924 = *(v925 + 64);
  v98 = MEMORY[0x28223BE20](v926);
  v923 = &v881 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v922 = &v881 - v100;
  v921 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD580, &unk_22767E410);
  v920 = *(v921 - 8);
  v919 = *(v920 + 64);
  v101 = MEMORY[0x28223BE20](v921);
  v918 = &v881 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v917 = &v881 - v103;
  v916 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC688, &unk_227685250);
  v915 = *(v916 - 8);
  v914 = *(v915 + 64);
  v104 = MEMORY[0x28223BE20](v916);
  v913 = &v881 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104);
  v912 = &v881 - v106;
  v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD590, &unk_22767E420);
  v910 = *(v911 - 8);
  v909 = *(v910 + 64);
  v107 = MEMORY[0x28223BE20](v911);
  v908 = &v881 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v907 = &v881 - v109;
  v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC690, &unk_227685260);
  v905 = *(v906 - 8);
  v904 = *(v905 + 64);
  v110 = MEMORY[0x28223BE20](v906);
  v903 = &v881 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v902 = &v881 - v112;
  v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A0, &unk_22767E430);
  v900 = *(v901 - 8);
  v899 = *(v900 + 64);
  v113 = MEMORY[0x28223BE20](v901);
  v898 = &v881 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v897 = &v881 - v115;
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC698, &unk_227685270);
  v895 = *(v896 - 8);
  v894 = *(v895 + 64);
  v116 = MEMORY[0x28223BE20](v896);
  v893 = &v881 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v892 = &v881 - v118;
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5B0, &unk_22767E440);
  v890 = *(v891 - 8);
  v889 = *(v890 + 64);
  v119 = MEMORY[0x28223BE20](v891);
  v888 = &v881 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v887 = &v881 - v121;
  v886 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v885 = *(v886 - 8);
  v884 = *(v885 + 64);
  v122 = MEMORY[0x28223BE20](v886);
  v883 = &v881 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v882 = &v881 - v124;
  v1165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5D0, &unk_22767E450);
  v1162 = *(v1165 - 8);
  v1164 = v1162[8];
  v125 = MEMORY[0x28223BE20](v1165);
  v1163 = &v881 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125);
  v128 = &v881 - v127;
  v1157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1167 = *(v1157 - 8);
  v129 = *(v1167 + 64);
  v130 = MEMORY[0x28223BE20](v1157);
  v1079 = &v881 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = MEMORY[0x28223BE20](v130);
  v1156 = &v881 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v1138 = &v881 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v1155 = &v881 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v1154 = &v881 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v1153 = &v881 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v1152 = &v881 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v1151 = &v881 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v1150 = &v881 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v1122 = &v881 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v1149 = &v881 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v1148 = &v881 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v1112 = &v881 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v1108 = &v881 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v1074 = &v881 - v158;
  v159 = MEMORY[0x28223BE20](v157);
  v1075 = &v881 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v1101 = &v881 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v1100 = &v881 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v1099 = &v881 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v1098 = &v881 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v1097 = &v881 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v1096 = &v881 - v172;
  v173 = MEMORY[0x28223BE20](v171);
  v1095 = &v881 - v174;
  v175 = MEMORY[0x28223BE20](v173);
  v1094 = &v881 - v176;
  v177 = MEMORY[0x28223BE20](v175);
  v1093 = &v881 - v178;
  v179 = MEMORY[0x28223BE20](v177);
  v1092 = &v881 - v180;
  v181 = MEMORY[0x28223BE20](v179);
  v1091 = &v881 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v1090 = &v881 - v184;
  v185 = MEMORY[0x28223BE20](v183);
  v1089 = &v881 - v186;
  v187 = MEMORY[0x28223BE20](v185);
  v1088 = &v881 - v188;
  v189 = MEMORY[0x28223BE20](v187);
  v1087 = &v881 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v1086 = &v881 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v1085 = &v881 - v194;
  v195 = MEMORY[0x28223BE20](v193);
  v1084 = &v881 - v196;
  v197 = MEMORY[0x28223BE20](v195);
  v1141 = &v881 - v198;
  v199 = MEMORY[0x28223BE20](v197);
  v1142 = &v881 - v200;
  v201 = MEMORY[0x28223BE20](v199);
  v1145 = &v881 - v202;
  MEMORY[0x28223BE20](v201);
  v1083 = &v881 - v203;
  v1081 = sub_227662750();
  v1146 = *(v1081 - 8);
  v1062 = *(v1146 + 64);
  v204 = MEMORY[0x28223BE20](v1081);
  v1037 = &v881 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = MEMORY[0x28223BE20](v204);
  v1080 = &v881 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v1082 = &v881 - v209;
  MEMORY[0x28223BE20](v208);
  v1063 = &v881 - v210;
  v211 = sub_22766B390();
  v212 = *(v211 - 8);
  v213 = *(v212 + 64);
  MEMORY[0x28223BE20](v211);
  v215 = &v881 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  v1069 = 0x800000022769FE30;
  sub_22766B370();
  (*(v212 + 8))(v215, v211);
  v216 = v3;
  v1166 = v3;
  v217 = v3[130];
  v218 = v3[131];
  __swift_project_boxed_opaque_existential_0(v216 + 127, v217);
  LOBYTE(v1168) = 19;
  sub_226F19410();
  sub_226F19464();
  sub_22766A130();
  sub_227662720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9330, &qword_227673B00);
  v1117 = swift_allocBox();
  v220 = v219;
  v221 = sub_227667A70();
  (*(*(v221 - 8) + 56))(v220, 1, 1, v221);
  v1130 = swift_allocObject();
  *(v1130 + 16) = 0;
  v1114 = swift_allocObject();
  *(v1114 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA68, &unk_227685290);
  v222 = swift_allocBox();
  v224 = v223;
  v225 = sub_227663CA0();
  (*(*(v225 - 8) + 56))(v224, 1, 1, v225);
  v1110 = swift_allocObject();
  *(v1110 + 16) = sub_22714BA90(MEMORY[0x277D84F90]);
  v226 = swift_allocObject();
  v1113 = v226;
  *(v226 + 16) = 0;
  *(v226 + 24) = 0;
  *(v226 + 32) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C90, &qword_227671C88);
  v1118 = swift_allocBox();
  v228 = v227;
  v229 = sub_227669040();
  (*(*(v229 - 8) + 56))(v228, 1, 1, v229);
  sub_2276668F0();
  v1120 = swift_allocBox();
  MEMORY[0x22AA92BD0]();
  v1144 = swift_allocObject();
  *(v1144 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA70, &qword_2276852A0);
  v1140 = swift_allocBox();
  v231 = v230;
  v232 = sub_227665630();
  (*(*(v232 - 8) + 56))(v231, 1, 1, v232);
  v1139 = swift_allocObject();
  v233 = MEMORY[0x277D84FA0];
  *(v1139 + 16) = MEMORY[0x277D84FA0];
  v1128 = swift_allocObject();
  *(v1128 + 16) = 0;
  v1127 = swift_allocObject();
  *(v1127 + 16) = 0;
  v1119 = swift_allocObject();
  *(v1119 + 16) = 0;
  v1132 = swift_allocObject();
  *(v1132 + 16) = 0;
  v1125 = swift_allocObject();
  *(v1125 + 16) = 0;
  v1137 = swift_allocObject();
  *(v1137 + 16) = v233;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA78, &qword_2276852A8);
  v1077 = swift_allocBox();
  v235 = v234;
  v236 = sub_227665E80();
  (*(*(v236 - 8) + 56))(v235, 1, 1, v236);
  v1136 = swift_allocObject();
  *(v1136 + 16) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8408, &qword_2276852B0);
  v1135 = swift_allocBox();
  v238 = v237;
  v239 = sub_227666C80();
  (*(*(v239 - 8) + 56))(v238, 1, 1, v239);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v1134 = swift_allocBox();
  v241 = v240;
  v242 = sub_227666650();
  (*(*(v242 - 8) + 56))(v241, 1, 1, v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8410, &qword_227670870);
  v1133 = swift_allocBox();
  v244 = v243;
  v245 = sub_2276666A0();
  (*(*(v245 - 8) + 56))(v244, 1, 1, v245);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA80, &unk_2276852B8);
  v1121 = swift_allocBox();
  v247 = v246;
  v248 = sub_227668B50();
  (*(*(v248 - 8) + 56))(v247, 1, 1, v248);
  v1143 = swift_allocObject();
  *(v1143 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v1126 = swift_allocBox();
  v250 = v249;
  v251 = sub_227668A00();
  (*(*(v251 - 8) + 56))(v250, 1, 1, v251);
  v1131 = swift_allocObject();
  *(v1131 + 16) = 0;
  v1129 = swift_allocObject();
  *(v1129 + 16) = v233;
  v1115 = swift_allocObject();
  *(v1115 + 16) = 0;
  v1124 = swift_allocObject();
  *(v1124 + 16) = 0;
  v1123 = swift_allocObject();
  *(v1123 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v1116 = swift_allocBox();
  v253 = v252;
  v254 = sub_227665AD0();
  (*(*(v254 - 8) + 56))(v253, 1, 1, v254);
  v1111 = swift_allocObject();
  *(v1111 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v1109 = swift_allocBox();
  v256 = v255;
  v257 = sub_2276638D0();
  (*(*(v257 - 8) + 56))(v256, 1, 1, v257);
  v1106 = swift_allocObject();
  *(v1106 + 16) = v233;
  v1073 = swift_allocObject();
  *(v1073 + 16) = v233;
  v1076 = swift_allocObject();
  *(v1076 + 16) = v233;
  v258 = *(v1166 + 46);
  __swift_project_boxed_opaque_existential_0(v1166 + 42, *(v1166 + 45));
  v259 = sub_22766A2C0();
  v999 = sub_2273FAC2C(v259);

  v260 = v128;
  sub_2273FF45C(v128);
  v261 = swift_allocObject();
  *(v261 + 16) = sub_22742E214;
  *(v261 + 24) = v222;
  v1061 = v222;
  v262 = v1162;
  v263 = v1163;
  v264 = v1165;
  (v1162[2])(v1163, v260, v1165);
  v265 = (*(v262 + 80) + 16) & ~*(v262 + 80);
  v266 = (v1164 + v265 + 7) & 0xFFFFFFFFFFFFFFF8;
  v267 = swift_allocObject();
  (v262[4])(v267 + v265, v263, v264);
  v268 = (v267 + v266);
  *v268 = sub_22742E254;
  v268[1] = v261;

  v269 = v1145;
  sub_227669270();
  (v262[1])(v260, v264);
  v270 = swift_allocObject();
  v270[2] = 0xD000000000000036;
  v270[3] = v1069;
  v270[4] = 857;
  v271 = swift_allocObject();
  *(v271 + 16) = sub_226F323BC;
  *(v271 + 24) = v270;
  v272 = v1167;
  v1158 = *(v1167 + 16);
  v1161 = v1167 + 16;
  v273 = v1142;
  v274 = v1157;
  v1158(v1142, v269, v1157);
  v275 = *(v272 + 80);
  v276 = v272;
  v1164 = (v275 + 16) & ~v275;
  v1165 = v275;
  v277 = v129 + v1164;
  v278 = v1164;
  v279 = (v277 + 7) & 0xFFFFFFFFFFFFFFF8;
  v1163 = v279;
  v280 = swift_allocObject();
  v281 = *(v276 + 32);
  v1159 = v276 + 32;
  v1162 = v281;
  (v281)(v280 + v278, v273, v274);
  v282 = (v280 + v279);
  *v282 = sub_226F323DC;
  v282[1] = v271;
  sub_227669270();
  v283 = *(v276 + 8);
  v1167 = v276 + 8;
  v1160 = v283;
  v283(v269, v274);
  v284 = v882;
  sub_2273FFE5C(v882);
  v285 = swift_allocObject();
  v286 = v1077;
  *(v285 + 16) = sub_22742E2AC;
  *(v285 + 24) = v286;
  v287 = v885;
  v288 = v883;
  v289 = v886;
  (*(v885 + 16))(v883, v284, v886);
  v290 = (*(v287 + 80) + 16) & ~*(v287 + 80);
  v291 = (v884 + v290 + 7) & 0xFFFFFFFFFFFFFFF8;
  v292 = swift_allocObject();
  v293 = v292 + v290;
  v294 = v289;
  (*(v287 + 32))(v293, v288, v289);
  v295 = (v292 + v291);
  *v295 = sub_22742E2EC;
  v295[1] = v285;

  v296 = v1142;
  sub_227669270();
  (*(v287 + 8))(v284, v294);
  v297 = swift_allocObject();
  v297[2] = 0xD000000000000036;
  v297[3] = v1069;
  v297[4] = 861;
  v298 = swift_allocObject();
  *(v298 + 16) = sub_226F33024;
  *(v298 + 24) = v297;
  v299 = v1141;
  v300 = v1157;
  v1158(v1141, v296, v1157);
  v301 = v1163;
  v302 = swift_allocObject();
  (v1162)(v302 + v1164, v299, v300);
  v303 = &v301[v302];
  *v303 = sub_226F32FE8;
  v303[1] = v298;
  sub_227669270();
  v1160(v296, v300);
  v304 = v887;
  sub_227400BB4(v887);
  v305 = swift_allocObject();
  v306 = v1144;
  *(v305 + 16) = sub_227431ACC;
  *(v305 + 24) = v306;
  v307 = v890;
  v308 = v888;
  v309 = v891;
  (*(v890 + 16))(v888, v304, v891);
  v310 = v307;
  v311 = (*(v307 + 80) + 16) & ~*(v307 + 80);
  v312 = (v889 + v311 + 7) & 0xFFFFFFFFFFFFFFF8;
  v313 = swift_allocObject();
  (*(v310 + 32))(v313 + v311, v308, v309);
  v314 = (v313 + v312);
  *v314 = sub_22742E31C;
  v314[1] = v305;

  sub_227669270();
  (*(v310 + 8))(v304, v309);
  v315 = v892;
  sub_2274014B4(v892);
  v316 = swift_allocObject();
  v317 = v1143;
  *(v316 + 16) = sub_227431ACC;
  *(v316 + 24) = v317;
  v318 = v895;
  v319 = v893;
  v320 = v896;
  (*(v895 + 16))(v893, v315, v896);
  v321 = (*(v318 + 80) + 16) & ~*(v318 + 80);
  v322 = (v894 + v321 + 7) & 0xFFFFFFFFFFFFFFF8;
  v323 = swift_allocObject();
  (*(v318 + 32))(v323 + v321, v319, v320);
  v324 = (v323 + v322);
  *v324 = sub_22742E37C;
  v324[1] = v316;

  sub_227669270();
  (*(v318 + 8))(v315, v320);
  v325 = v897;
  sub_227409FA8(v897);
  v326 = swift_allocObject();
  v327 = v1140;
  *(v326 + 16) = sub_22742E3DC;
  *(v326 + 24) = v327;
  v328 = v900;
  v329 = v898;
  v330 = v901;
  (*(v900 + 16))(v898, v325, v901);
  v331 = (*(v328 + 80) + 16) & ~*(v328 + 80);
  v332 = (v899 + v331 + 7) & 0xFFFFFFFFFFFFFFF8;
  v333 = swift_allocObject();
  (*(v328 + 32))(v333 + v331, v329, v330);
  v334 = (v333 + v332);
  *v334 = sub_22742E41C;
  v334[1] = v326;

  sub_227669270();
  (*(v328 + 8))(v325, v330);
  v335 = v902;
  sub_2274028E4(v902);
  v336 = swift_allocObject();
  v337 = v1139;
  *(v336 + 16) = sub_227431ACC;
  *(v336 + 24) = v337;
  v338 = v905;
  v339 = v903;
  v340 = v906;
  (*(v905 + 16))(v903, v335, v906);
  v341 = v338;
  v342 = (*(v338 + 80) + 16) & ~*(v338 + 80);
  v343 = (v904 + v342 + 7) & 0xFFFFFFFFFFFFFFF8;
  v344 = swift_allocObject();
  (*(v341 + 32))(v344 + v342, v339, v340);
  v345 = (v344 + v343);
  *v345 = sub_22742E44C;
  v345[1] = v336;

  sub_227669270();
  (*(v341 + 8))(v335, v340);
  v346 = v907;
  sub_2274031E4(v907);
  v347 = swift_allocObject();
  v348 = v1137;
  *(v347 + 16) = sub_227431ACC;
  *(v347 + 24) = v348;
  v349 = v910;
  v350 = v908;
  v351 = v911;
  (*(v910 + 16))(v908, v346, v911);
  v352 = v349;
  v353 = (*(v349 + 80) + 16) & ~*(v349 + 80);
  v354 = (v909 + v353 + 7) & 0xFFFFFFFFFFFFFFF8;
  v355 = swift_allocObject();
  (*(v352 + 32))(v355 + v353, v350, v351);
  v356 = (v355 + v354);
  *v356 = sub_22742E4AC;
  v356[1] = v347;

  sub_227669270();
  (*(v352 + 8))(v346, v351);
  v357 = v912;
  sub_2274066E8(v912);
  v358 = swift_allocObject();
  v359 = v1076;
  *(v358 + 16) = sub_227431ACC;
  *(v358 + 24) = v359;
  v360 = v915;
  v361 = v913;
  v362 = v916;
  (*(v915 + 16))(v913, v357, v916);
  v363 = (*(v360 + 80) + 16) & ~*(v360 + 80);
  v364 = (v914 + v363 + 7) & 0xFFFFFFFFFFFFFFF8;
  v365 = swift_allocObject();
  (*(v360 + 32))(v365 + v363, v361, v362);
  v366 = (v365 + v364);
  *v366 = sub_22742E50C;
  v366[1] = v358;

  sub_227669270();
  (*(v360 + 8))(v357, v362);
  v367 = v917;
  sub_227403AE4(v917);
  v368 = swift_allocObject();
  v369 = v1136;
  *(v368 + 16) = sub_226F09590;
  *(v368 + 24) = v369;
  v370 = v920;
  v371 = v918;
  v372 = v921;
  (*(v920 + 16))(v918, v367, v921);
  v373 = (*(v370 + 80) + 16) & ~*(v370 + 80);
  v374 = (v919 + v373 + 7) & 0xFFFFFFFFFFFFFFF8;
  v375 = swift_allocObject();
  (*(v370 + 32))(v375 + v373, v371, v372);
  v376 = (v375 + v374);
  *v376 = sub_226F095D8;
  v376[1] = v368;

  sub_227669270();
  (*(v370 + 8))(v367, v372);
  v377 = v922;
  sub_2274043A4(v922);
  v378 = swift_allocObject();
  v379 = v1135;
  *(v378 + 16) = sub_22742E594;
  *(v378 + 24) = v379;
  v380 = v925;
  v381 = v923;
  v382 = v926;
  (*(v925 + 16))(v923, v377, v926);
  v383 = (*(v380 + 80) + 16) & ~*(v380 + 80);
  v384 = (v924 + v383 + 7) & 0xFFFFFFFFFFFFFFF8;
  v385 = swift_allocObject();
  (*(v380 + 32))(v385 + v383, v381, v382);
  v386 = (v385 + v384);
  *v386 = sub_226F09648;
  v386[1] = v378;

  sub_227669270();
  (*(v380 + 8))(v377, v382);
  v387 = v927;
  sub_227415924(v927);
  v388 = swift_allocObject();
  v389 = v1134;
  *(v388 + 16) = sub_22742E5FC;
  *(v388 + 24) = v389;
  v390 = v930;
  v391 = v928;
  v392 = v931;
  (*(v930 + 16))(v928, v387, v931);
  v393 = (*(v390 + 80) + 16) & ~*(v390 + 80);
  v394 = (v929 + v393 + 7) & 0xFFFFFFFFFFFFFFF8;
  v395 = swift_allocObject();
  (*(v390 + 32))(v395 + v393, v391, v392);
  v396 = (v395 + v394);
  *v396 = sub_22742E618;
  v396[1] = v388;

  sub_227669270();
  (*(v390 + 8))(v387, v392);
  v397 = v932;
  sub_227404C4C(v932);
  v398 = swift_allocObject();
  v399 = v1133;
  *(v398 + 16) = sub_22742E648;
  *(v398 + 24) = v399;
  v400 = v935;
  v401 = v933;
  v402 = v936;
  (*(v935 + 16))(v933, v397, v936);
  v403 = v400;
  v404 = (*(v400 + 80) + 16) & ~*(v400 + 80);
  v405 = (v934 + v404 + 7) & 0xFFFFFFFFFFFFFFF8;
  v406 = swift_allocObject();
  (*(v403 + 32))(v406 + v404, v401, v402);
  v407 = (v406 + v405);
  *v407 = sub_226F096B8;
  v407[1] = v398;

  sub_227669270();
  (*(v403 + 8))(v397, v402);
  v408 = v937;
  sub_2274054F4(v937);
  v409 = swift_allocObject();
  v410 = v1131;
  *(v409 + 16) = sub_227431ACC;
  *(v409 + 24) = v410;
  v411 = v940;
  v412 = v938;
  v413 = v941;
  (*(v940 + 16))(v938, v408, v941);
  v414 = v411;
  v415 = (*(v411 + 80) + 16) & ~*(v411 + 80);
  v416 = (v939 + v415 + 7) & 0xFFFFFFFFFFFFFFF8;
  v417 = swift_allocObject();
  (*(v414 + 32))(v417 + v415, v412, v413);
  v418 = (v417 + v416);
  *v418 = sub_22742E6B0;
  v418[1] = v409;

  sub_227669270();
  (*(v414 + 8))(v408, v413);
  v419 = v942;
  sub_227405DE8(v942);
  v420 = swift_allocObject();
  v421 = v1129;
  *(v420 + 16) = sub_227431ACC;
  *(v420 + 24) = v421;
  v422 = v945;
  v423 = v943;
  v424 = v946;
  (*(v945 + 16))(v943, v419, v946);
  v425 = v422;
  v426 = (*(v422 + 80) + 16) & ~*(v422 + 80);
  v427 = (v944 + v426 + 7) & 0xFFFFFFFFFFFFFFF8;
  v428 = swift_allocObject();
  (*(v425 + 32))(v428 + v426, v423, v424);
  v429 = (v428 + v427);
  *v429 = sub_22742E710;
  v429[1] = v420;

  sub_227669270();
  (*(v425 + 8))(v419, v424);
  v430 = v1070;
  sub_227407328(v1070);
  v431 = swift_allocObject();
  v432 = v1128;
  *(v431 + 16) = sub_227431ACC;
  *(v431 + 24) = v432;
  v433 = v1107;
  v434 = *(v1107 + 16);
  v946 = v1107 + 16;
  v1069 = v434;
  v435 = v947;
  v436 = v949;
  v434(v947, v430, v949);
  v437 = v433;
  v438 = (*(v433 + 80) + 16) & ~*(v433 + 80);
  v945 = v438;
  v439 = (v948 + v438 + 7) & 0xFFFFFFFFFFFFFFF8;
  v440 = swift_allocObject();
  v948 = *(v437 + 32);
  v441 = v440 + v438;
  v442 = v435;
  v948(v441, v435, v436);
  v443 = v439;
  v444 = (v440 + v439);
  *v444 = sub_22742E770;
  v444[1] = v431;

  sub_227669270();
  v445 = *(v1107 + 8);
  v1107 += 8;
  v944 = v445;
  v446 = v1070;
  v445(v1070, v436);
  sub_227408470(v446);
  v447 = swift_allocObject();
  v448 = v1127;
  *(v447 + 16) = sub_227431ACC;
  *(v447 + 24) = v448;
  v449 = v442;
  v1069(v442, v446, v436);
  v450 = swift_allocObject();
  v948(v450 + v945, v449, v436);
  v451 = (v450 + v443);
  *v451 = sub_227431AC4;
  v451[1] = v447;

  sub_227669270();
  v944(v446, v436);
  v452 = v950;
  sub_22740BE40(v950);
  v453 = swift_allocObject();
  v454 = v1125;
  *(v453 + 16) = sub_227431ACC;
  *(v453 + 24) = v454;
  v455 = v953;
  v456 = v951;
  v457 = v954;
  (*(v953 + 16))(v951, v452, v954);
  v458 = v455;
  v459 = (*(v455 + 80) + 16) & ~*(v455 + 80);
  v460 = (v952 + v459 + 7) & 0xFFFFFFFFFFFFFFF8;
  v461 = swift_allocObject();
  (*(v458 + 32))(v461 + v459, v456, v457);
  v462 = (v461 + v460);
  *v462 = sub_22742E7D0;
  v462[1] = v453;

  sub_227669270();
  (*(v458 + 8))(v452, v457);
  v463 = v955;
  sub_2273FEB44(v955);
  v464 = swift_allocObject();
  v465 = v1124;
  *(v464 + 16) = sub_227431ACC;
  *(v464 + 24) = v465;
  v466 = v958;
  v467 = v956;
  v468 = v959;
  (*(v958 + 16))(v956, v463, v959);
  v469 = v466;
  v470 = (*(v466 + 80) + 16) & ~*(v466 + 80);
  v471 = (v957 + v470 + 7) & 0xFFFFFFFFFFFFFFF8;
  v472 = swift_allocObject();
  (*(v469 + 32))(v472 + v470, v467, v468);
  v473 = (v472 + v471);
  *v473 = sub_22742E830;
  v473[1] = v464;

  sub_227669270();
  (*(v469 + 8))(v463, v468);
  v474 = v960;
  sub_22740CCDC(v960);
  v475 = swift_allocObject();
  v476 = v1123;
  *(v475 + 16) = sub_227431ACC;
  *(v475 + 24) = v476;
  v477 = v963;
  v478 = v961;
  v479 = v964;
  (*(v963 + 16))(v961, v474, v964);
  v480 = v477;
  v481 = (*(v477 + 80) + 16) & ~*(v477 + 80);
  v482 = (v962 + v481 + 7) & 0xFFFFFFFFFFFFFFF8;
  v483 = swift_allocObject();
  (*(v480 + 32))(v483 + v481, v478, v479);
  v484 = (v483 + v482);
  *v484 = sub_22742E890;
  v484[1] = v475;

  sub_227669270();
  (*(v480 + 8))(v474, v479);
  v485 = v965;
  sub_227401FE4(v965);
  v486 = swift_allocObject();
  v487 = v1119;
  *(v486 + 16) = sub_227431ACC;
  *(v486 + 24) = v487;
  v488 = v968;
  v489 = v966;
  v490 = v969;
  (*(v968 + 16))(v966, v485, v969);
  v491 = v488;
  v492 = (*(v488 + 80) + 16) & ~*(v488 + 80);
  v493 = (v967 + v492 + 7) & 0xFFFFFFFFFFFFFFF8;
  v494 = swift_allocObject();
  (*(v491 + 32))(v494 + v492, v489, v490);
  v495 = (v494 + v493);
  *v495 = sub_22742E8F0;
  v495[1] = v486;

  sub_227669270();
  (*(v491 + 8))(v485, v490);
  v496 = v970;
  sub_2273FCFE0(v970);
  v497 = swift_allocObject();
  v498 = v1117;
  *(v497 + 16) = sub_22742E950;
  *(v497 + 24) = v498;
  v499 = v973;
  v500 = v971;
  v501 = v974;
  (*(v973 + 16))(v971, v496, v974);
  v502 = v499;
  v503 = (*(v499 + 80) + 16) & ~*(v499 + 80);
  v504 = (v972 + v503 + 7) & 0xFFFFFFFFFFFFFFF8;
  v505 = swift_allocObject();
  (*(v502 + 32))(v505 + v503, v500, v501);
  v506 = (v505 + v504);
  *v506 = sub_22742E990;
  v506[1] = v497;

  sub_227669270();
  (*(v502 + 8))(v496, v501);
  v507 = v975;
  sub_2273FDD68(v975);
  v508 = swift_allocObject();
  v509 = v1114;
  *(v508 + 16) = sub_227431ACC;
  *(v508 + 24) = v509;
  v510 = v978;
  v511 = v976;
  v512 = v979;
  (*(v978 + 16))(v976, v507, v979);
  v513 = v510;
  v514 = (*(v510 + 80) + 16) & ~*(v510 + 80);
  v515 = (v977 + v514 + 7) & 0xFFFFFFFFFFFFFFF8;
  v516 = swift_allocObject();
  (*(v513 + 32))(v516 + v514, v511, v512);
  v517 = (v516 + v515);
  *v517 = sub_22742E9C0;
  v517[1] = v508;

  sub_227669270();
  (*(v513 + 8))(v507, v512);
  v518 = v980;
  sub_22740D834(v1067, v980);
  v519 = swift_allocObject();
  v520 = v1116;
  *(v519 + 16) = sub_22742EA20;
  *(v519 + 24) = v520;
  v521 = v983;
  v522 = v981;
  v523 = v984;
  (*(v983 + 16))(v981, v518, v984);
  v524 = v521;
  v525 = (*(v521 + 80) + 16) & ~*(v521 + 80);
  v526 = (v982 + v525 + 7) & 0xFFFFFFFFFFFFFFF8;
  v527 = swift_allocObject();
  (*(v524 + 32))(v527 + v525, v522, v523);
  v528 = (v527 + v526);
  *v528 = sub_2273202AC;
  v528[1] = v519;

  v529 = v1074;
  sub_227669270();
  (*(v524 + 8))(v518, v523);
  v530 = v1108;
  v531 = v1157;
  v1158(v1108, v529, v1157);
  v532 = v1163;
  v533 = swift_allocObject();
  (v1162)(v533 + v1164, v530, v531);
  v534 = &v532[v533];
  *v534 = sub_22742505C;
  v534[1] = 0;
  sub_227669270();
  v1160(v529, v531);
  v535 = v1071;
  sub_22740E5B0(v1071);
  v536 = swift_allocObject();
  v537 = v1111;
  *(v536 + 16) = sub_22742EA88;
  *(v536 + 24) = v537;
  v538 = v987;
  v539 = v985;
  v540 = v988;
  (*(v987 + 16))(v985, v535, v988);
  v541 = v538;
  v542 = (*(v538 + 80) + 16) & ~*(v538 + 80);
  v543 = (v986 + v542 + 7) & 0xFFFFFFFFFFFFFFF8;
  v544 = swift_allocObject();
  (*(v541 + 32))(v544 + v542, v539, v540);
  v545 = (v544 + v543);
  *v545 = sub_22742EAA4;
  v545[1] = v536;

  sub_227669270();
  (*(v541 + 8))(v1071, v540);
  v546 = v989;
  sub_22740F1BC(v989);
  v547 = swift_allocObject();
  v548 = v1109;
  *(v547 + 16) = sub_22742EB04;
  *(v547 + 24) = v548;
  v549 = v992;
  v550 = v990;
  v551 = v546;
  v552 = v993;
  (*(v992 + 16))(v990, v546, v993);
  v553 = v549;
  v554 = (*(v549 + 80) + 16) & ~*(v549 + 80);
  v555 = (v991 + v554 + 7) & 0xFFFFFFFFFFFFFFF8;
  v556 = swift_allocObject();
  (*(v553 + 32))(v556 + v554, v550, v552);
  v557 = (v556 + v555);
  *v557 = sub_22742EB44;
  v557[1] = v547;

  v558 = v1112;
  sub_227669270();
  (*(v553 + 8))(v551, v552);
  v559 = swift_allocObject();
  *(v559 + 16) = sub_227425114;
  *(v559 + 24) = 0;
  v560 = v1148;
  v561 = v558;
  v562 = v558;
  v563 = v1157;
  v1158(v1148, v561, v1157);
  v564 = v1163;
  v565 = swift_allocObject();
  (v1162)(v565 + v1164, v560, v563);
  v566 = &v564[v565];
  *v566 = sub_226F5AAF8;
  v566[1] = v559;
  sub_227669270();
  v1160(v562, v563);
  v567 = v994;
  sub_22740FE4C(v994);
  v568 = swift_allocObject();
  v569 = v1073;
  *(v568 + 16) = sub_227431ACC;
  *(v568 + 24) = v569;
  v570 = v997;
  v571 = v995;
  v572 = v998;
  (*(v997 + 16))(v995, v567, v998);
  v573 = v570;
  v574 = (*(v570 + 80) + 16) & ~*(v570 + 80);
  v575 = (v996 + v574 + 7) & 0xFFFFFFFFFFFFFFF8;
  v576 = swift_allocObject();
  (*(v573 + 32))(v576 + v574, v571, v572);
  v577 = (v576 + v575);
  *v577 = sub_22742EB74;
  v577[1] = v568;

  v578 = v1148;
  sub_227669270();
  (*(v573 + 8))(v567, v572);
  v579 = swift_allocObject();
  *(v579 + 16) = sub_227425134;
  *(v579 + 24) = 0;
  v580 = v1149;
  v581 = v1157;
  v582 = v1158;
  v1158(v1149, v578, v1157);
  v583 = v1163;
  v584 = swift_allocObject();
  (v1162)(v584 + v1164, v580, v581);
  v585 = &v583[v584];
  *v585 = sub_226F5B0C0;
  v585[1] = v579;
  sub_227669270();
  v1160(v578, v581);
  v586 = v1000;
  sub_22741074C(v1000);
  v587 = swift_allocObject();
  v588 = v1106;
  *(v587 + 16) = sub_227431ACC;
  *(v587 + 24) = v588;
  v589 = v1003;
  v590 = v1001;
  v591 = v1004;
  (*(v1003 + 16))(v1001, v586, v1004);
  v592 = v589;
  v593 = (*(v589 + 80) + 16) & ~*(v589 + 80);
  v594 = (v1002 + v593 + 7) & 0xFFFFFFFFFFFFFFF8;
  v595 = swift_allocObject();
  (*(v592 + 32))(v595 + v593, v590, v591);
  v596 = (v595 + v594);
  *v596 = sub_22742EBD4;
  v596[1] = v587;

  v597 = v1149;
  sub_227669270();
  (*(v592 + 8))(v586, v591);
  v598 = swift_allocObject();
  *(v598 + 16) = sub_227425334;
  *(v598 + 24) = 0;
  v599 = v1122;
  v600 = v1157;
  v582(v1122, v597, v1157);
  v601 = v1163;
  v602 = swift_allocObject();
  v603 = v599;
  (v1162)(v602 + v1164, v599, v600);
  v604 = &v601[v602];
  *v604 = sub_226F5B0C0;
  v604[1] = v598;
  sub_227669270();
  v1160(v597, v600);
  v605 = v1005;
  sub_2274125C8(v1005);
  v606 = swift_allocObject();
  v607 = v1110;
  *(v606 + 16) = sub_22742EA88;
  *(v606 + 24) = v607;
  v608 = v1008;
  v609 = v1006;
  v610 = v1009;
  (*(v1008 + 16))(v1006, v605, v1009);
  v611 = v608;
  v612 = (*(v608 + 80) + 16) & ~*(v608 + 80);
  v613 = (v1007 + v612 + 7) & 0xFFFFFFFFFFFFFFF8;
  v614 = swift_allocObject();
  (*(v611 + 32))(v614 + v612, v609, v610);
  v615 = (v614 + v613);
  *v615 = sub_22742EC34;
  v615[1] = v606;

  sub_227669270();
  (*(v611 + 8))(v605, v610);
  v616 = swift_allocObject();
  *(v616 + 16) = sub_2274253BC;
  *(v616 + 24) = 0;
  v617 = v1150;
  v618 = v1157;
  v1158(v1150, v603, v1157);
  v619 = v1163;
  v620 = swift_allocObject();
  (v1162)(v620 + v1164, v617, v618);
  v621 = &v619[v620];
  *v621 = sub_226F5B0C0;
  v621[1] = v616;
  sub_227669270();
  v1160(v603, v618);
  sub_227413664();
  v622 = v1010;
  sub_2274138B0(v1010);
  v623 = swift_allocObject();
  v624 = v1113;
  *(v623 + 16) = sub_22742EC94;
  *(v623 + 24) = v624;
  v625 = v1013;
  v626 = v1011;
  v627 = v1014;
  (*(v1013 + 16))(v1011, v622, v1014);
  v628 = v625;
  v629 = (*(v625 + 80) + 16) & ~*(v625 + 80);
  v630 = (v1012 + v629 + 7) & 0xFFFFFFFFFFFFFFF8;
  v631 = swift_allocObject();
  (*(v628 + 32))(v631 + v629, v626, v627);
  v632 = (v631 + v630);
  *v632 = sub_22742ECB0;
  v632[1] = v623;

  v633 = v1150;
  sub_227669270();
  (*(v628 + 8))(v622, v627);
  v634 = swift_allocObject();
  *(v634 + 16) = sub_22742546C;
  *(v634 + 24) = 0;
  v635 = v1151;
  v636 = v1157;
  v1158(v1151, v633, v1157);
  v637 = v1163;
  v638 = swift_allocObject();
  (v1162)(v638 + v1164, v635, v636);
  v639 = &v637[v638];
  *v639 = sub_226F5B0C0;
  v639[1] = v634;
  sub_227669270();
  v640 = v1160;
  v1160(v633, v636);
  v641 = v1015;
  sub_2274141B0(v1015);
  v642 = swift_allocObject();
  v643 = v1118;
  *(v642 + 16) = sub_22742ED10;
  *(v642 + 24) = v643;
  v644 = v1018;
  v645 = v1016;
  v646 = v1019;
  (*(v1018 + 16))(v1016, v641, v1019);
  v647 = v644;
  v648 = (*(v644 + 80) + 16) & ~*(v644 + 80);
  v649 = (v1017 + v648 + 7) & 0xFFFFFFFFFFFFFFF8;
  v650 = swift_allocObject();
  (*(v647 + 32))(v650 + v648, v645, v646);
  v651 = (v650 + v649);
  *v651 = sub_22742ED50;
  v651[1] = v642;

  v652 = v1151;
  sub_227669270();
  (*(v647 + 8))(v641, v646);
  v653 = swift_allocObject();
  *(v653 + 16) = sub_22742548C;
  *(v653 + 24) = 0;
  v654 = v1152;
  v655 = v652;
  v656 = v652;
  v657 = v1157;
  v1158(v1152, v655, v1157);
  v658 = v1163;
  v659 = swift_allocObject();
  (v1162)(v659 + v1164, v654, v657);
  v660 = &v658[v659];
  *v660 = sub_226F5B0C0;
  v660[1] = v653;
  sub_227669270();
  v661 = v657;
  v640(v656, v657);
  v662 = v1020;
  sub_227414C7C(v1020);
  v663 = swift_allocObject();
  v664 = v1120;
  *(v663 + 16) = sub_22742ED80;
  *(v663 + 24) = v664;
  v665 = v1023;
  v666 = v1021;
  v667 = v1024;
  (*(v1023 + 16))(v1021, v662, v1024);
  v668 = v665;
  v669 = (*(v665 + 80) + 16) & ~*(v665 + 80);
  v670 = (v1022 + v669 + 7) & 0xFFFFFFFFFFFFFFF8;
  v671 = swift_allocObject();
  (*(v668 + 32))(v671 + v669, v666, v667);
  v672 = (v671 + v670);
  *v672 = sub_22742ED9C;
  v672[1] = v663;

  v673 = v1152;
  sub_227669270();
  (*(v668 + 8))(v662, v667);
  v674 = swift_allocObject();
  *(v674 + 16) = sub_227425544;
  *(v674 + 24) = 0;
  v675 = v1153;
  v676 = v673;
  v677 = v673;
  v678 = v661;
  v1158(v1153, v676, v661);
  v679 = v1163;
  v680 = swift_allocObject();
  v681 = v1162;
  (v1162)(v680 + v1164, v675, v678);
  v682 = &v679[v680];
  *v682 = sub_226F5B0C0;
  v682[1] = v674;
  sub_227669270();
  v1160(v677, v678);
  v683 = v1025;
  sub_227416268(v1025);
  v684 = swift_allocObject();
  v685 = v1115;
  *(v684 + 16) = sub_227431ACC;
  *(v684 + 24) = v685;
  v686 = v1028;
  v687 = v1026;
  v688 = v1029;
  (*(v1028 + 16))(v1026, v683, v1029);
  v689 = v686;
  v690 = (*(v686 + 80) + 16) & ~*(v686 + 80);
  v691 = (v1027 + v690 + 7) & 0xFFFFFFFFFFFFFFF8;
  v692 = swift_allocObject();
  (*(v689 + 32))(v692 + v690, v687, v688);
  v693 = (v692 + v691);
  *v693 = sub_22742EDCC;
  v693[1] = v684;

  v694 = v1153;
  sub_227669270();
  (*(v689 + 8))(v683, v688);
  v695 = swift_allocObject();
  *(v695 + 16) = sub_227425564;
  *(v695 + 24) = 0;
  v696 = v1154;
  v697 = v694;
  v698 = v694;
  v699 = v1157;
  v1158(v1154, v697, v1157);
  v700 = v1163;
  v701 = swift_allocObject();
  v681(v701 + v1164, v696, v699);
  v702 = &v700[v701];
  *v702 = sub_226F5B0C0;
  v702[1] = v695;
  sub_227669270();
  v1160(v698, v699);
  v703 = v1030;
  sub_227416BE4(v1030);
  v704 = swift_allocObject();
  v705 = v1121;
  *(v704 + 16) = sub_22742EE2C;
  *(v704 + 24) = v705;
  v706 = v1033;
  v707 = v1031;
  v708 = v1034;
  (*(v1033 + 16))(v1031, v703, v1034);
  v709 = (*(v706 + 80) + 16) & ~*(v706 + 80);
  v710 = (v1032 + v709 + 7) & 0xFFFFFFFFFFFFFFF8;
  v711 = swift_allocObject();
  (*(v706 + 32))(v711 + v709, v707, v708);
  v712 = (v711 + v710);
  *v712 = sub_22742EE6C;
  v712[1] = v704;

  v713 = v1154;
  sub_227669270();
  (*(v706 + 8))(v703, v708);
  v714 = swift_allocObject();
  *(v714 + 16) = sub_227425584;
  *(v714 + 24) = 0;
  v715 = v1155;
  v716 = v713;
  v717 = v1157;
  v1158(v1155, v713, v1157);
  v718 = v1163;
  v719 = swift_allocObject();
  (v1162)(v719 + v1164, v715, v717);
  v720 = &v718[v719];
  *v720 = sub_226F5B0C0;
  v720[1] = v714;
  sub_227669270();
  v1160(v716, v717);
  v721 = v1035;
  sub_22741A33C(v1035);
  v722 = swift_allocObject();
  v723 = v1130;
  *(v722 + 16) = sub_227431ACC;
  *(v722 + 24) = v723;
  v724 = v1039;
  v725 = v1036;
  v726 = v1040;
  (*(v1039 + 16))(v1036, v721, v1040);
  v727 = v724;
  v728 = (*(v724 + 80) + 16) & ~*(v724 + 80);
  v729 = (v1038 + v728 + 7) & 0xFFFFFFFFFFFFFFF8;
  v730 = swift_allocObject();
  (*(v727 + 32))(v730 + v728, v725, v726);
  v731 = (v730 + v729);
  *v731 = sub_22742EE9C;
  v731[1] = v722;

  v732 = v1155;
  sub_227669270();
  (*(v727 + 8))(v721, v726);
  v733 = swift_allocObject();
  *(v733 + 16) = sub_2274255A4;
  *(v733 + 24) = 0;
  v734 = v1138;
  v735 = v732;
  v1158(v1138, v732, v717);
  v736 = v1163;
  v737 = swift_allocObject();
  (v1162)(v737 + v1164, v734, v717);
  v738 = &v736[v737];
  *v738 = sub_226F5B0C0;
  v738[1] = v733;
  sub_227669270();
  v1160(v735, v717);
  v739 = v1041;
  sub_22741AE34(v1041);
  v740 = swift_allocObject();
  v741 = v1126;
  *(v740 + 16) = sub_22742EEFC;
  *(v740 + 24) = v741;
  v742 = v1044;
  v743 = v1042;
  v744 = v1045;
  (*(v1044 + 16))(v1042, v739, v1045);
  v745 = v742;
  v746 = (*(v742 + 80) + 16) & ~*(v742 + 80);
  v747 = (v1043 + v746 + 7) & 0xFFFFFFFFFFFFFFF8;
  v748 = swift_allocObject();
  (*(v745 + 32))(v748 + v746, v743, v744);
  v749 = (v748 + v747);
  *v749 = sub_22742EF3C;
  v749[1] = v740;

  v750 = v1138;
  sub_227669270();
  (*(v745 + 8))(v739, v744);
  v751 = swift_allocObject();
  *(v751 + 16) = sub_2274255C4;
  *(v751 + 24) = 0;
  v752 = v1156;
  v753 = v750;
  v1158(v1156, v750, v717);
  v754 = v1163;
  v755 = swift_allocObject();
  (v1162)(v755 + v1164, v752, v717);
  v756 = &v754[v755];
  *v756 = sub_226F5B0C0;
  v756[1] = v751;
  sub_227669270();
  v1160(v753, v717);
  v757 = v1046;
  sub_22741B910(v1046);
  v758 = swift_allocObject();
  v759 = v1132;
  *(v758 + 16) = sub_226F09590;
  *(v758 + 24) = v759;
  v760 = v1059;
  v761 = v1047;
  v762 = v1060;
  (*(v1059 + 16))(v1047, v757, v1060);
  v763 = v760;
  v764 = (*(v760 + 80) + 16) & ~*(v760 + 80);
  v765 = (v1048 + v764 + 7) & 0xFFFFFFFFFFFFFFF8;
  v766 = swift_allocObject();
  (*(v763 + 32))(v766 + v764, v761, v762);
  v767 = (v766 + v765);
  *v767 = sub_22742EF6C;
  v767[1] = v758;

  v768 = v1156;
  sub_227669270();
  (*(v763 + 8))(v757, v762);
  v769 = swift_allocObject();
  *(v769 + 16) = sub_2274255E4;
  *(v769 + 24) = 0;
  v770 = v1079;
  v771 = v1158;
  v1158(v1079, v768, v717);
  v772 = v1163;
  v773 = v1165;
  v774 = swift_allocObject();
  (v1162)(v774 + v1164, v770, v717);
  v775 = &v772[v774];
  *v775 = sub_226F5B0C0;
  v775[1] = v769;
  v776 = v1138;
  sub_227669270();
  v777 = v1167;
  v1160(v768, v717);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v778 = *(v777 + 64);
  v779 = swift_allocObject();
  *(v779 + 16) = xmmword_227685060;
  v780 = v779 + ((v773 + 32) & ~v773);
  v771(v780, v1083, v717);
  v771(v780 + v778, v1145, v717);
  v771(v780 + 2 * v778, v1142, v717);
  v771(v780 + 3 * v778, v1141, v717);
  v771(v780 + 4 * v778, v1085, v717);
  v771(v780 + 5 * v778, v1094, v717);
  v771(v780 + 6 * v778, v1086, v717);
  v771(v780 + 7 * v778, v1099, v717);
  v771(v780 + 8 * v778, v1095, v717);
  v771(v780 + 9 * v778, v1088, v717);
  v771(v780 + 10 * v778, v1089, v717);
  v771(v780 + 11 * v778, v1090, v717);
  v771(v780 + 12 * v778, v1091, v717);
  v771(v780 + 13 * v778, v1093, v717);
  v771(v780 + 14 * v778, v1092, v717);
  v771(v780 + 15 * v778, v1096, v717);
  v771(v780 + 16 * v778, v1153, v717);
  v771(v780 + 17 * v778, v1112, v717);
  v771(v780 + 18 * v778, v1148, v717);
  v771(v780 + 19 * v778, v1098, v717);
  v771(v780 + 20 * v778, v1074, v717);
  v771(v780 + 21 * v778, v1097, v717);
  v771(v780 + 22 * v778, v1075, v717);
  v771(v780 + 23 * v778, v1084, v717);
  v771(v780 + 24 * v778, v1108, v717);
  v771(v780 + 25 * v778, v1149, v717);
  v771(v780 + 26 * v778, v1087, v717);
  v771(v780 + 27 * v778, v1122, v717);
  v771(v780 + 28 * v778, v1150, v717);
  v771(v780 + 29 * v778, v1151, v717);
  v771(v780 + 30 * v778, v1100, v717);
  v771(v780 + 31 * v778, v1101, v717);
  v771(v780 + 32 * v778, v1152, v717);
  v771(v780 + 33 * v778, v1154, v717);
  v771(v780 + 34 * v778, v1155, v717);
  v771(v780 + 35 * v778, v776, v717);
  sub_22766A7E0();
  v781 = v1102;
  v782 = v1049;
  v783 = v1103;
  (*(v1102 + 16))(v1049, v1078, v1103);
  v784 = *(v1146 + 16);
  v1059 = v1146 + 16;
  v1060 = v784;
  (v784)(v1082, v1063, v1081);
  v1168 = v779;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v785 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_22718622C();
  sub_227669260();

  v1107 = *(v781 + 32);
  (v1107)(v1072, v782, v783);
  v786 = *(v781 + 80);
  v1102 = v781 + 32;
  v787 = (v1068 + 263) & 0xFFFFFFFFFFFFFFF8;
  v788 = (v787 + 15) & 0xFFFFFFFFFFFFFFF8;
  v789 = (v788 + 15) & 0xFFFFFFFFFFFFFFF8;
  v790 = (v789 + 15) & 0xFFFFFFFFFFFFFFF8;
  v791 = (v790 + 15) & 0xFFFFFFFFFFFFFFF8;
  v792 = (v791 + 15) & 0xFFFFFFFFFFFFFFF8;
  v793 = swift_allocObject();
  v794 = v1114;
  v793[2] = v1117;
  v793[3] = v794;
  v795 = v1118;
  v793[4] = v1113;
  v793[5] = v795;
  v796 = v1127;
  v793[6] = v1128;
  v793[7] = v796;
  v797 = v1135;
  v793[8] = v1136;
  v793[9] = v797;
  v798 = v1125;
  v793[10] = v1133;
  v793[11] = v798;
  v799 = v1131;
  v793[12] = v1121;
  v793[13] = v799;
  v800 = v1124;
  v793[14] = v1115;
  v793[15] = v800;
  v801 = v1140;
  v793[16] = v1123;
  v793[17] = v801;
  v802 = v1143;
  v793[18] = v1144;
  v793[19] = v802;
  v803 = v1111;
  v793[20] = v1119;
  v793[21] = v803;
  v804 = v1126;
  v793[22] = v1130;
  v793[23] = v804;
  v805 = v1137;
  v793[24] = v1139;
  v793[25] = v805;
  v806 = v1109;
  v793[26] = v1129;
  v793[27] = v806;
  v807 = v1061;
  v793[28] = v1110;
  v793[29] = v807;
  v808 = v1120;
  v793[30] = v999;
  v793[31] = v808;
  (v1107)(v793 + 32, v1072, v1103);
  *(v793 + v787) = v1132;
  *(v793 + v788) = v1077;
  *(v793 + v789) = v1134;
  *(v793 + v790) = v1116;
  *(v793 + v791) = v1106;
  *(v793 + v792) = v1073;
  *(v793 + ((v792 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1076;
  v809 = swift_allocObject();
  *(v809 + 16) = sub_22742EF9C;
  *(v809 + 24) = v793;
  v810 = swift_allocObject();
  *(v810 + 16) = sub_22742F0A0;
  *(v810 + 24) = v809;
  v811 = v1079;
  v812 = v1156;
  v813 = v1157;
  v1158(v1079, v1156, v1157);
  v814 = v1163;
  v815 = swift_allocObject();
  (v1162)(v815 + v1164, v811, v813);
  v816 = &v814[v815];
  *v816 = sub_22742F0C8;
  v816[1] = v810;
  v817 = sub_227667670();

  v818 = v1104;
  v1047 = v817;
  sub_227669270();
  v1160(v812, v813);
  v819 = v1147;
  v1068 = *(v1147 + 16);
  v1070 = v1147 + 16;
  v820 = v1058;
  v821 = v818;
  v822 = v1064;
  v1068(v1058, v818, v1064);
  v823 = v819;
  v824 = *(v819 + 80);
  v1069 = v824;
  v1050 += (v824 + 16) & ~v824;
  v825 = (v824 + 16) & ~v824;
  v1107 = v825;
  v826 = (v1050 + 7) & 0xFFFFFFFFFFFFFFF8;
  v827 = swift_allocObject();
  v828 = *(v823 + 32);
  v1072 = (v823 + 32);
  v1071 = v828;
  (v828)(v827 + v825, v820, v822);
  v829 = (v827 + v826);
  v830 = v1166;
  *v829 = sub_22742F0F8;
  v829[1] = v830;

  v831 = v1065;
  sub_227669270();
  v832 = *(v823 + 8);
  v1147 = v823 + 8;
  v1058 = v832;
  (v832)(v821, v822);
  v833 = v1080;
  v834 = v1081;
  (v1060)(v1080, v1082, v1081);
  v835 = v1146;
  v1048 = *(v1146 + 80);
  v836 = (v1048 + 25) & ~v1048;
  v837 = swift_allocObject();
  *(v837 + 16) = v830;
  *(v837 + 24) = v1067;
  v838 = *(v835 + 32);
  v1146 = v835 + 32;
  v1067 = v838;
  v838(v837 + v836, v833, v834);
  v1068(v821, v831, v822);
  v1049 = v826;
  v839 = swift_allocObject();
  (v1071)(v839 + v1107, v821, v822);
  v840 = (v839 + v826);
  *v840 = sub_22742F128;
  v840[1] = v837;

  v841 = v1066;
  sub_227669270();
  (v1058)(v831, v822);
  v842 = sub_2276697A0();
  v843 = *(v842 + 48);
  v844 = *(v842 + 52);
  swift_allocObject();
  v845 = sub_227669770();
  v846 = v1052;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v1053 + 8))(v846, v1054);
  sub_227669880();
  v847 = sub_22766A920();
  v848 = *(v847 + 48);
  v849 = *(v847 + 52);
  swift_allocObject();
  v850 = sub_22766A8F0();
  v1054 = v850;
  v1168 = v845;
  v851 = sub_22766C060();
  v1053 = v851;
  v853 = v852;
  sub_227662720();
  v854 = swift_allocObject();
  v1166 = v845;
  *(v854 + 16) = v845;
  *(v854 + 24) = v850;
  *(v854 + 32) = v851;
  *(v854 + 40) = v853;
  *(v854 + 48) = "RemoteBrowsingEnvironmentBuilder::fetchEnvironment";
  *(v854 + 56) = 50;
  *(v854 + 64) = 2;

  v855 = v1156;
  sub_227669270();
  v856 = v1104;
  v1068(v1104, v841, v822);
  v857 = swift_allocObject();
  (v1071)(v857 + v1107, v856, v822);
  v858 = v1079;
  v859 = v1157;
  v1158(v1079, v855, v1157);
  v860 = v1163;
  v861 = swift_allocObject();
  (v1162)(v861 + v1164, v858, v859);
  v862 = &v860[v861];
  *v862 = sub_22742F1A0;
  v862[1] = v857;
  v863 = v1065;
  sub_227669270();
  v864 = v1037;
  v865 = v1081;
  (v1060)(v1037, v1080, v1081);
  v866 = (v1048 + 49) & ~v1048;
  v867 = (v1062 + v866 + 7) & 0xFFFFFFFFFFFFFFF8;
  v868 = swift_allocObject();
  *(v868 + 16) = v1053;
  *(v868 + 24) = v853;
  *(v868 + 32) = "RemoteBrowsingEnvironmentBuilder::fetchEnvironment";
  *(v868 + 40) = 50;
  *(v868 + 48) = 2;
  v869 = v1146;
  v1067(v868 + v866, v864, v865);
  *(v868 + v867) = v1054;
  *(v868 + ((v867 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1166;
  v870 = v1104;
  v871 = v863;
  v872 = v1064;
  v1068(v1104, v863, v1064);
  v873 = v1049;
  v874 = swift_allocObject();
  (v1071)(v874 + v1107, v870, v872);
  v875 = &v873[v874];
  *v875 = sub_22742F1B4;
  v875[1] = v868;

  sub_227669270();
  v876 = v1058;
  (v1058)(v871, v872);
  v877 = v1157;
  v878 = v1160;
  v1160(v1156, v1157);
  v879 = *(v869 - 24);
  v879(v1080, v865);
  v876(v1066, v872);
  v879(v1082, v865);
  (*(v1055 + 8))(v1105, v1056);
  v878(v1138, v877);
  v878(v1155, v877);
  v878(v1154, v877);
  v878(v1153, v877);
  v878(v1152, v877);
  v878(v1151, v877);
  v878(v1150, v877);
  v878(v1122, v877);
  (*(v1102 - 24))(v1078, v1103);
  v878(v1149, v877);
  v878(v1148, v877);
  v878(v1112, v877);
  v878(v1108, v877);
  v878(v1074, v877);
  v878(v1075, v877);
  v878(v1101, v877);
  v878(v1100, v877);
  v878(v1099, v877);
  v878(v1098, v877);
  v878(v1097, v877);
  v878(v1096, v877);
  v878(v1095, v877);
  v878(v1094, v877);
  v878(v1093, v877);
  v878(v1092, v877);
  v878(v1091, v877);
  v878(v1090, v877);
  v878(v1089, v877);
  v878(v1088, v877);
  v878(v1087, v877);
  v878(v1086, v877);
  v878(v1085, v877);
  v878(v1084, v877);
  v878(v1141, v877);
  v878(v1142, v877);
  v878(v1145, v877);
  v878(v1083, v877);
  v879(v1063, v865);
}

uint64_t sub_227424EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = swift_projectBox();
  v14 = a5(0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  swift_beginAccess();
  return sub_226F09BAC(v12, v13, a3, a4);
}

uint64_t sub_227424FFC(uint64_t a1)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  return sub_227430F34(a1, v2);
}

uint64_t sub_22742505C(void *a1)
{
  sub_226F09B58();
  if (sub_2276660E0())
  {
    return sub_2276692A0();
  }

  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  return sub_227669280();
}

uint64_t sub_227425154(void *a1, const char *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A670();
  v10 = a1;
  v11 = sub_22766B380();
  v12 = sub_22766C890();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21[1] = v2;
    v16 = v15;
    v22 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v21[3], v21[4]);
    v19 = sub_226E97AE8(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v11, v12, v21[0], v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227425354(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

uint64_t sub_2274253DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_226F3AA10(3), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = sub_227665790() & 1;
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  v9 = *(a2 + 32);
  *(a2 + 32) = 1;
  return sub_227010FE0(v7, v8, v9);
}

uint64_t sub_2274254AC(uint64_t a1)
{
  v2 = sub_2276668F0();
  v3 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v2 - 8) + 24))(v3, a1, v2);
}

uint64_t sub_227425604@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (**a22)(void, void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v320 = a8;
  v394 = a7;
  v381 = a6;
  v383 = a5;
  v384 = a4;
  v391 = a3;
  v388 = a2;
  v389 = a1;
  v409 = a35;
  v400 = a34;
  v399 = a33;
  v398 = a30;
  v397 = a28;
  v396 = a26;
  v395 = a22;
  v393 = a16;
  v392 = a11;
  v390 = a9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v319 = v293 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v336 = v293 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA78, &qword_2276852A8);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v335 = v293 - v46;
  v47 = sub_2276678C0();
  v317 = *(v47 - 8);
  v318 = v47;
  v48 = *(v317 + 64);
  MEMORY[0x28223BE20](v47);
  v334 = v293 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v333 = v293 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA68, &unk_227685290);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v332 = v293 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v331 = v293 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94A0, &unk_2276852E0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v342 = v293 - v61;
  v362 = sub_2276675F0();
  v350 = *(v362 - 8);
  v62 = *(v350 + 64);
  v63 = MEMORY[0x28223BE20](v362);
  v330 = v293 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v353 = v293 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v344 = v293 - v68;
  MEMORY[0x28223BE20](v67);
  v339 = v293 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94B0, &unk_2276742A0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v341 = v293 - v72;
  v363 = sub_227667170();
  v351 = *(v363 - 8);
  v73 = *(v351 + 8);
  v74 = MEMORY[0x28223BE20](v363);
  v329 = v293 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v74);
  v358 = (v293 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v345 = v293 - v79;
  MEMORY[0x28223BE20](v78);
  v338 = v293 - v80;
  v365 = sub_227668D10();
  v321 = *(v365 - 8);
  v81 = *(v321 + 8);
  v82 = MEMORY[0x28223BE20](v365);
  v355 = v293 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v354 = v293 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v357 = (v293 - v87);
  v88 = MEMORY[0x28223BE20](v86);
  v356 = v293 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v361 = v293 - v91;
  MEMORY[0x28223BE20](v90);
  v360 = (v293 - v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94B8, &unk_2276852F0);
  v94 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93 - 8);
  v343 = v293 - v95;
  v364 = sub_227666F20();
  v352 = *(v364 - 8);
  v96 = *(v352 + 8);
  v97 = MEMORY[0x28223BE20](v364);
  v328 = v293 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x28223BE20](v97);
  v359 = v293 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v346 = v293 - v102;
  MEMORY[0x28223BE20](v101);
  v337 = v293 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104 - 8);
  v347 = v293 - v106;
  v107 = sub_227668A00();
  v348 = *(v107 - 8);
  v349 = v107;
  v108 = *(v348 + 64);
  v109 = MEMORY[0x28223BE20](v107);
  v327 = v293 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v340 = v293 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA70, &qword_2276852A0);
  v113 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112 - 8);
  v369 = v293 - v114;
  v368 = sub_227665630();
  v367 = *(v368 - 8);
  v115 = *(v367 + 64);
  v116 = MEMORY[0x28223BE20](v368);
  v316 = v293 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v366 = v293 - v118;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA80, &unk_2276852B8);
  v120 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119 - 8);
  v373 = v293 - v121;
  v372 = sub_227668B50();
  v371 = *(v372 - 8);
  v122 = *(v371 + 64);
  v123 = MEMORY[0x28223BE20](v372);
  v326 = v293 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v123);
  v370 = v293 - v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8410, &qword_227670870);
  v127 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126 - 8);
  v374 = v293 - v128;
  v376 = sub_2276666A0();
  v377 = *(v376 - 8);
  v129 = *(v377 + 64);
  v130 = MEMORY[0x28223BE20](v376);
  v325 = v293 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130);
  v375 = v293 - v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8408, &qword_2276852B0);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133 - 8);
  v378 = v293 - v135;
  v382 = sub_227666C80();
  v380 = *(v382 - 8);
  v136 = *(v380 + 64);
  v137 = MEMORY[0x28223BE20](v382);
  v324 = v293 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137);
  v379 = v293 - v139;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C90, &qword_227671C88);
  v141 = *(*(v140 - 8) + 64);
  v142 = MEMORY[0x28223BE20](v140 - 8);
  v323 = v293 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v142);
  v145 = v293 - v144;
  v387 = sub_227669040();
  v386 = *(v387 - 8);
  v146 = *(v386 + 64);
  MEMORY[0x28223BE20](v387);
  v385 = v293 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9330, &qword_227673B00);
  v149 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148 - 8);
  v151 = v293 - v150;
  v152 = sub_227667A70();
  v153 = *(v152 - 8);
  v154 = *(v153 + 64);
  v155 = MEMORY[0x28223BE20](v152);
  v322 = v293 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v155);
  v158 = v293 - v157;
  v159 = swift_projectBox();
  v391 = swift_projectBox();
  v394 = swift_projectBox();
  v390 = swift_projectBox();
  v392 = swift_projectBox();
  v393 = swift_projectBox();
  v395 = swift_projectBox();
  v315 = swift_projectBox();
  v396 = swift_projectBox();
  v397 = sub_2276668F0();
  v398 = swift_projectBox();
  v399 = swift_projectBox();
  v400 = swift_projectBox();
  v409 = swift_projectBox();
  swift_beginAccess();
  sub_226E93170(v159, v151, &qword_27D7B9330, &qword_227673B00);
  if ((*(v153 + 48))(v151, 1, v152) == 1)
  {
    sub_226E97D1C(v151, &qword_27D7B9330, &qword_227673B00);
LABEL_15:
    v176 = sub_227665A60();
    sub_22742F224(&qword_27D7BD250, MEMORY[0x277D51BF0]);
    swift_allocError();
    (*(*(v176 - 8) + 104))(v177, *MEMORY[0x277D51BA8], v176);
    return swift_willThrow();
  }

  (*(v153 + 32))(v158, v151, v152);
  v160 = v389;
  swift_beginAccess();
  v161 = *(v160 + 16);
  v162 = v158;
  if (!v161 || (v163 = v388, swift_beginAccess(), *(v163 + 32) == 255))
  {
LABEL_14:
    (*(v153 + 8))(v162, v152);
    goto LABEL_15;
  }

  v314 = *(v163 + 32);
  v164 = *(v163 + 16);
  v389 = *(v163 + 24);
  v165 = v391;
  swift_beginAccess();
  sub_226E93170(v165, v145, &qword_27D7B8C90, &qword_227671C88);
  v166 = v386;
  v167 = v387;
  if ((*(v386 + 48))(v145, 1, v387) == 1)
  {
    (*(v153 + 8))(v162, v152);
    sub_226E97D1C(v145, &qword_27D7B8C90, &qword_227671C88);
    goto LABEL_15;
  }

  v391 = v164;
  v168 = v385;
  (*(v166 + 32))(v385, v145, v167);
  v169 = v384;
  swift_beginAccess();
  v170 = *(v169 + 16);
  if (!v170)
  {
    v173 = *(v166 + 8);
    v174 = v168;
    v175 = v167;
    goto LABEL_13;
  }

  v171 = v383;
  swift_beginAccess();
  if (!*(v171 + 16) || (v388 = *(v171 + 16), v172 = v381, swift_beginAccess(), *(v172 + 16) == 3))
  {
    v173 = *(v166 + 8);
    v174 = v168;
LABEL_11:
    v175 = v387;
LABEL_13:
    v173(v174, v175);
    goto LABEL_14;
  }

  LODWORD(v383) = *(v172 + 16);
  v384 = v161;
  v179 = v394;
  swift_beginAccess();
  v180 = v179;
  v181 = v378;
  sub_226E93170(v180, v378, &qword_27D7B8408, &qword_2276852B0);
  v182 = v380;
  if ((*(v380 + 48))(v181, 1, v382) == 1)
  {
    (*(v166 + 8))(v168, v387);
    (*(v153 + 8))(v162, v152);
    v183 = &qword_27D7B8408;
    v184 = &qword_2276852B0;
LABEL_20:
    sub_226E97D1C(v181, v183, v184);
    goto LABEL_15;
  }

  v394 = v170;
  (*(v182 + 32))(v379, v181, v382);
  v185 = v390;
  swift_beginAccess();
  v181 = v374;
  sub_226E93170(v185, v374, &qword_27D7B8410, &qword_227670870);
  v186 = v376;
  if ((*(v377 + 48))(v181, 1, v376) == 1)
  {
    (*(v182 + 8))(v379, v382);
    (*(v166 + 8))(v168, v387);
    (*(v153 + 8))(v162, v152);
    v183 = &qword_27D7B8410;
    v184 = &qword_227670870;
    goto LABEL_20;
  }

  v187 = v377;
  (*(v377 + 32))(v375, v181, v186);
  swift_beginAccess();
  v188 = *(a10 + 16);
  if (!v188)
  {
    (*(v187 + 8))(v375, v186);
LABEL_34:
    (*(v380 + 8))(v379, v382);
    v173 = *(v166 + 8);
    v174 = v385;
    goto LABEL_11;
  }

  v189 = v392;
  swift_beginAccess();
  v190 = v189;
  v191 = v373;
  sub_226E93170(v190, v373, &qword_27D7BDA80, &unk_2276852B8);
  v192 = v371;
  v193 = v191;
  v194 = v372;
  v195 = (*(v371 + 48))(v193, 1, v372);
  v196 = v379;
  if (v195 == 1)
  {
    (*(v377 + 8))(v375, v376);
    (*(v380 + 8))(v196, v382);
    (*(v166 + 8))(v385, v387);
    (*(v153 + 8))(v162, v152);
    sub_226E97D1C(v373, &qword_27D7BDA80, &unk_2276852B8);
    goto LABEL_15;
  }

  v392 = v188;
  v197 = v370;
  (*(v192 + 32))(v370, v373, v194);
  swift_beginAccess();
  if (!*(a12 + 16))
  {
    (*(v192 + 8))(v197, v194);
LABEL_33:
    (*(v377 + 8))(v375, v376);
    goto LABEL_34;
  }

  v390 = *(a12 + 16);
  swift_beginAccess();
  v198 = *(a13 + 16);
  v199 = v387;
  if (!v198)
  {
    (*(v192 + 8))(v370, v372);
    (*(v377 + 8))(v375, v376);
    (*(v380 + 8))(v379, v382);
    (*(v166 + 8))(v385, v199);
    goto LABEL_14;
  }

  swift_beginAccess();
  v200 = v370;
  if (!*(a14 + 16) || (v381 = *(a14 + 16), swift_beginAccess(), !*(a15 + 16)))
  {
    (*(v192 + 8))(v200, v372);
    goto LABEL_33;
  }

  v378 = *(a15 + 16);
  v201 = v393;
  swift_beginAccess();
  v202 = v201;
  v203 = v369;
  sub_226E93170(v202, v369, &qword_27D7BDA70, &qword_2276852A0);
  v204 = v367;
  v205 = v203;
  v206 = v368;
  if ((*(v367 + 48))(v205, 1, v368) == 1)
  {
    (*(v192 + 8))(v370, v372);
    (*(v377 + 8))(v375, v376);
    (*(v380 + 8))(v379, v382);
    (*(v166 + 8))(v385, v387);
    (*(v153 + 8))(v162, v152);
    sub_226E97D1C(v369, &qword_27D7BDA70, &qword_2276852A0);
    goto LABEL_15;
  }

  v313 = v198;
  (*(v204 + 32))(v366, v369, v206);
  swift_beginAccess();
  v369 = *(a17 + 16);
  if (!v369)
  {
    (*(v204 + 8))(v366, v368);
    (*(v192 + 8))(v370, v372);
    goto LABEL_33;
  }

  v373 = v162;
  v374 = v152;
  v393 = v153;
  swift_beginAccess();
  v312 = *(a18 + 16);
  if (!v312 || (swift_beginAccess(), (v310 = *(a19 + 16)) == 0) || (swift_beginAccess(), (v309 = *(a20 + 16)) == 0) || (swift_beginAccess(), (v306 = *(a21 + 16)) == 0))
  {
    (*(v367 + 8))(v366, v368);
    (*(v371 + 8))(v370, v372);
    (*(v377 + 8))(v375, v376);
    (*(v380 + 8))(v379, v382);
    (*(v386 + 8))(v385, v387);
    (*(v393 + 8))(v373, v374);
    goto LABEL_15;
  }

  v207 = v395;
  swift_beginAccess();
  v208 = v207;
  v209 = v347;
  sub_226E93170(v208, v347, &qword_27D7B93D8, &qword_227673E10);
  if ((*(v348 + 48))(v209, 1, v349) == 1)
  {
    (*(v367 + 8))(v366, v368);
    (*(v371 + 8))(v370, v372);
    (*(v377 + 8))(v375, v376);
    (*(v380 + 8))(v379, v382);
    (*(v386 + 8))(v385, v387);
    (*(v393 + 8))(v373, v374);
    sub_226E97D1C(v347, &qword_27D7B93D8, &qword_227673E10);
    goto LABEL_15;
  }

  v293[1] = a29;
  v299 = a38;
  v298 = a37;
  v297 = a36;
  v295 = a31;
  v296 = a32;
  v293[0] = a27;
  v302 = a25;
  v303 = a24;
  (*(v348 + 32))(v340, v347, v349);
  swift_beginAccess();
  v294 = a23;
  v210 = *(a23 + 16);
  v211 = *(v210 + 56);
  v301 = v210 + 56;
  v212 = 1 << *(v210 + 32);
  v213 = -1;
  if (v212 < 64)
  {
    v213 = ~(-1 << v212);
  }

  v214 = v213 & v211;
  v308 = v210;
  swift_bridgeObjectRetain_n();

  sub_226F75830(v391, v389, v314);
  v300 = (v212 + 63) >> 6;
  v307 = (v352 + 16);
  v305 = (v352 + 32);
  LODWORD(v347) = *MEMORY[0x277D53870];
  v311 = (v321 + 104);
  v395 = (v321 + 8);
  v321 = v352 + 8;

  v215 = 0;
  if (!v214)
  {
LABEL_49:
    while (1)
    {
      v216 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        break;
      }

      if (v216 >= v300)
      {

        (*(v352 + 7))(v343, 1, 1, v364);
        goto LABEL_60;
      }

      v214 = *(v301 + 8 * v216);
      ++v215;
      if (v214)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    v216 = v215;
LABEL_52:
    v217 = v352;
    v218 = v346;
    v219 = v364;
    (*(v352 + 2))(v346, *(v308 + 48) + *(v352 + 9) * (__clz(__rbit64(v214)) | (v216 << 6)), v364);
    v304 = *(v217 + 4);
    v304(v359, v218, v219);
    sub_227666EF0();
    (*v311)(v361, v347, v365);
    sub_22742F224(&qword_27D7BDAA8, MEMORY[0x277D53880]);
    sub_22766C290();
    sub_22766C290();
    if (v407 == v405 && v408 == v406)
    {
      break;
    }

    v220 = sub_22766D190();
    v221 = *v395;
    v222 = v365;
    (*v395)(v361, v365);
    v221(v360, v222);

    if (v220)
    {
      goto LABEL_59;
    }

    v214 &= v214 - 1;
    result = (*v321)(v359, v364);
    v215 = v216;
    if (!v214)
    {
      goto LABEL_49;
    }
  }

  v223 = *v395;
  v224 = v365;
  (*v395)(v361, v365);
  v223(v360, v224);

LABEL_59:

  v225 = v343;
  v226 = v364;
  v304(v343, v359, v364);
  (*(v352 + 7))(v225, 0, 1, v226);
LABEL_60:

  v227 = *(v352 + 6);
  if (v227(v343, 1, v364) == 1)
  {
    sub_227666EE0();
    if (v227(v343, 1, v364) != 1)
    {
      sub_226E97D1C(v343, &qword_27D7B94B8, &unk_2276852F0);
    }
  }

  else
  {
    (*v305)(v337, v343, v364);
  }

  v228 = v303;
  swift_beginAccess();
  v229 = *(v228 + 16);
  v230 = *(v229 + 7);
  v343 = v229 + 56;
  v231 = 1 << v229[32];
  v232 = -1;
  if (v231 < 64)
  {
    v232 = ~(-1 << v231);
  }

  v233 = v232 & v230;
  v308 = (v231 + 63) >> 6;
  v360 = (v351 + 16);
  v359 = v351 + 32;
  v352 = v351 + 8;
  v361 = v229;
  result = swift_bridgeObjectRetain_n();
  v234 = 0;
  if (!v233)
  {
LABEL_68:
    while (1)
    {
      v235 = v234 + 1;
      if (__OFADD__(v234, 1))
      {
        break;
      }

      if (v235 >= v308)
      {

        (*(v351 + 7))(v341, 1, 1, v363);
        goto LABEL_79;
      }

      v233 = *&v343[8 * v235];
      ++v234;
      if (v233)
      {
        goto LABEL_71;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return result;
  }

  while (1)
  {
    v235 = v234;
LABEL_71:
    v236 = v351;
    v237 = v345;
    v238 = v363;
    (*(v351 + 2))(v345, *(v361 + 6) + *(v351 + 9) * (__clz(__rbit64(v233)) | (v235 << 6)), v363);
    v346 = *(v236 + 4);
    (v346)(v358, v237, v238);
    sub_227667140();
    (*v311)(v357, v347, v365);
    sub_22742F224(&qword_27D7BDAA8, MEMORY[0x277D53880]);
    sub_22766C290();
    sub_22766C290();
    if (v405 == v403 && v406 == v404)
    {
      break;
    }

    v239 = sub_22766D190();
    v240 = *v395;
    v241 = v365;
    (*v395)(v357, v365);
    v240(v356, v241);

    if (v239)
    {
      goto LABEL_78;
    }

    v233 &= v233 - 1;
    result = (*v352)(v358, v363);
    v234 = v235;
    if (!v233)
    {
      goto LABEL_68;
    }
  }

  v242 = *v395;
  v243 = v365;
  (*v395)(v357, v365);
  v242(v356, v243);

LABEL_78:

  v244 = v341;
  v245 = v363;
  (v346)(v341, v358, v363);
  (*(v351 + 7))(v244, 0, 1, v245);
LABEL_79:

  v246 = *(v351 + 6);
  if (v246(v341, 1, v363) == 1)
  {
    sub_227667130();
    if (v246(v341, 1, v363) != 1)
    {
      sub_226E97D1C(v341, &qword_27D7B94B0, &unk_2276742A0);
    }
  }

  else
  {
    (*v359)(v338, v341, v363);
  }

  v247 = v302;
  swift_beginAccess();
  v248 = *(v247 + 16);
  v249 = *(v248 + 7);
  v351 = v248 + 56;
  v250 = 1 << v248[32];
  v251 = -1;
  if (v250 < 64)
  {
    v251 = ~(-1 << v250);
  }

  v252 = v251 & v249;
  v346 = ((v250 + 63) >> 6);
  v361 = (v350 + 16);
  v357 = (v350 + 32);
  v358 = (v350 + 8);
  v359 = v248;
  result = swift_bridgeObjectRetain_n();
  v253 = 0;
  if (!v252)
  {
LABEL_87:
    while (1)
    {
      v254 = v253 + 1;
      if (__OFADD__(v253, 1))
      {
        goto LABEL_105;
      }

      if (v254 >= v346)
      {

        (*(v350 + 56))(v342, 1, 1, v362);
        goto LABEL_98;
      }

      v252 = *&v351[8 * v254];
      ++v253;
      if (v252)
      {
        goto LABEL_90;
      }
    }
  }

  while (1)
  {
    v254 = v253;
LABEL_90:
    v255 = v350;
    v256 = v344;
    v257 = v362;
    (*(v350 + 16))(v344, *(v359 + 6) + *(v350 + 72) * (__clz(__rbit64(v252)) | (v254 << 6)), v362);
    v356 = *(v255 + 32);
    (v356)(v353, v256, v257);
    sub_2276675C0();
    (*v311)(v355, v347, v365);
    sub_22742F224(&qword_27D7BDAA8, MEMORY[0x277D53880]);
    sub_22766C290();
    sub_22766C290();
    if (v403 == v401 && v404 == v402)
    {
      break;
    }

    v258 = sub_22766D190();
    v259 = *v395;
    v260 = v365;
    (*v395)(v355, v365);
    v259(v354, v260);

    if (v258)
    {
      goto LABEL_97;
    }

    v252 &= v252 - 1;
    result = (*v358)(v353, v362);
    v253 = v254;
    if (!v252)
    {
      goto LABEL_87;
    }
  }

  v261 = *v395;
  v262 = v365;
  (*v395)(v355, v365);
  v261(v354, v262);

LABEL_97:

  v263 = v342;
  v264 = v362;
  (v356)(v342, v353, v362);
  (*(v350 + 56))(v263, 0, 1, v264);
LABEL_98:

  v265 = *(v350 + 48);
  if (v265(v342, 1, v362) == 1)
  {
    sub_2276675B0();
    if (v265(v342, 1, v362) != 1)
    {
      sub_226E97D1C(v342, &qword_27D7B94A0, &unk_2276852E0);
    }
  }

  else
  {
    (*v357)(v339, v342, v362);
  }

  (*(v393 + 16))(v322, v373, v374);
  v266 = v315;
  swift_beginAccess();
  sub_226E93170(v266, v331, &unk_27D7BB920, &unk_227672480);
  v267 = v293[0];
  swift_beginAccess();
  v395 = *(v267 + 16);
  v268 = v396;
  swift_beginAccess();
  sub_226E93170(v268, v332, &qword_27D7BDA68, &unk_227685290);

  v396 = sub_226F44D54(v269);

  v270 = v386;
  v271 = v323;
  v272 = v387;
  (*(v386 + 16))(v323, v385, v387);
  (*(v270 + 56))(v271, 0, 1, v272);
  v273 = v398;
  swift_beginAccess();
  v274 = v397;
  v275 = *(v397 - 8);
  v276 = v333;
  (*(v275 + 16))(v333, v273, v397);
  (*(v275 + 56))(v276, 0, 1, v274);
  (*v307)(v328, v337, v364);
  v277 = v294;
  swift_beginAccess();
  v397 = *(v277 + 16);
  (*(v317 + 16))(v334, v295, v318);
  v278 = v296;
  swift_beginAccess();
  LODWORD(v398) = *(v278 + 16);
  (*v360)(v329, v338, v363);
  v279 = v303;
  swift_beginAccess();
  v280 = *(v279 + 16);
  v281 = v399;
  swift_beginAccess();
  sub_226E93170(v281, v335, &qword_27D7BDA78, &qword_2276852A8);
  (*(v380 + 16))(v324, v379, v382);
  v282 = v400;
  swift_beginAccess();
  sub_226E93170(v282, v336, &unk_27D7BB8C0, &qword_22767F780);
  (*(v377 + 16))(v325, v375, v376);
  (*(v371 + 16))(v326, v370, v372);
  (*(v348 + 16))(v327, v340, v349);
  (*v361)(v330, v339, v362);
  v283 = v302;
  swift_beginAccess();
  v284 = *(v283 + 16);
  v285 = v409;
  swift_beginAccess();
  sub_226E93170(v285, v319, &qword_27D7B8428, &qword_227675CB0);
  v286 = v367;
  (*(v367 + 16))(v316, v366, v368);
  v287 = v297;
  swift_beginAccess();
  v288 = *(v287 + 16);
  v289 = v298;
  swift_beginAccess();
  v290 = *(v289 + 16);
  v291 = v299;
  swift_beginAccess();
  v292 = *(v291 + 16);
  LODWORD(v409) = v314 & 1;

  sub_227667630();
  (*v358)(v339, v362);
  (*v352)(v338, v363);
  (*v321)(v337, v364);
  (*(v348 + 8))(v340, v349);
  (*(v286 + 8))(v366, v368);
  (*(v371 + 8))(v370, v372);
  (*(v377 + 8))(v375, v376);
  (*(v380 + 8))(v379, v382);
  (*(v386 + 8))(v385, v387);
  return (*(v393 + 8))(v373, v374);
}

uint64_t sub_227428360(uint64_t a1, void *a2)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a2[131];
  __swift_project_boxed_opaque_existential_0(a2 + 127, a2[130]);
  v13[15] = 19;
  sub_226F19410();
  sub_226F19464();
  sub_22766A120();
  sub_22766A710();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v9, v10, "Finished Remote Browsing Environment Build", v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_227428538(void (*a1)(char *, char *, uint64_t), void *a2, int a3, uint64_t a4)
{
  v160 = a1;
  v161 = a4;
  LODWORD(v162) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v147 = v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v144 = v142 - v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA90, &unk_2276852D0);
  v10 = *(*(v152 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v152);
  v148 = v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v145 = v142 - v13;
  v156 = sub_227665630();
  v151 = *(v156 - 8);
  v14 = *(v151 + 64);
  v15 = MEMORY[0x28223BE20](v156);
  v146 = v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v143 = v142 - v18;
  MEMORY[0x28223BE20](v17);
  v142[1] = v142 - v19;
  v20 = sub_227667670();
  v163 = *(v20 - 8);
  v164 = v20;
  v21 = *(v163 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v157 = v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v154 = v142 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v150 = v142 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v149 = v142 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = v142 - v30;
  v32 = sub_22766B390();
  v165 = *(v32 - 8);
  v166 = v32;
  v33 = *(v165 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v158 = v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v155 = v142 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v153 = v142 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v159 = v142 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = v142 - v42;
  v44 = sub_227662750();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = v142 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD450, &qword_227684B70);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (v142 - v51);
  sub_226E93170(v160, v142 - v51, &unk_27D7BD450, &qword_227684B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *v52;
    v54 = a2[21];
    __swift_project_boxed_opaque_existential_0(a2 + 17, a2[20]);
    sub_227662720();
    sub_227662680();
    v56 = v55;
    (*(v45 + 8))(v48, v44);
    v172 = &type metadata for RemoteBrowsingEnvironmentBuilderAnalyticsEvent;
    v57 = sub_22742F1C8();
    LOBYTE(v169) = v162 & 1;
    v170 = v56;
    v173 = v57;
    v171 = v53;
    v58 = v53;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(&v169);
    sub_22766A670();
    v59 = v53;
    v60 = sub_22766B380();
    v61 = sub_22766C8B0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v169 = v63;
      *v62 = 136446210;
      swift_getErrorValue();
      v64 = MEMORY[0x22AA995D0](v167, v168);
      v66 = sub_226E97AE8(v64, v65, &v169);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_226E8E000, v60, v61, "Finished making remote browsing environment: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x22AA9A450](v63, -1, -1);
      MEMORY[0x22AA9A450](v62, -1, -1);
    }

    else
    {
    }

    return (*(v165 + 8))(v43, v166);
  }

  else
  {
    v67 = v163;
    v68 = v164;
    (*(v163 + 32))(v31, v52, v164);
    v69 = a2[21];
    __swift_project_boxed_opaque_existential_0(a2 + 17, a2[20]);
    sub_227662720();
    sub_227662680();
    v71 = v70;
    (*(v45 + 8))(v48, v44);
    v172 = &type metadata for RemoteBrowsingEnvironmentBuilderAnalyticsEvent;
    v72 = sub_22742F1C8();
    LOBYTE(v169) = v162 & 1;
    v170 = v71;
    v173 = v72;
    v171 = 0;
    sub_227669B60();
    __swift_destroy_boxed_opaque_existential_0(&v169);
    sub_22766A670();
    v73 = v149;
    v160 = *(v67 + 16);
    v161 = v67 + 16;
    v160(v149, v31, v68);
    v74 = sub_22766B380();
    v75 = sub_22766C8B0();
    v76 = v68;
    v77 = v31;
    if (os_log_type_enabled(v74, v75))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v169 = v79;
      *v78 = 136446210;
      sub_22742F224(&qword_27D7BDAA0, MEMORY[0x277D52F00]);
      v80 = sub_22766D140();
      v81 = v73;
      v82 = v80;
      v84 = v83;
      v85 = *(v67 + 8);
      v85(v81, v76);
      v86 = sub_226E97AE8(v82, v84, &v169);

      *(v78 + 4) = v86;
      v87 = v75;
      v88 = v85;
      _os_log_impl(&dword_226E8E000, v74, v87, "Finished making remote browsing environment: %{public}s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x22AA9A450](v79, -1, -1);
      MEMORY[0x22AA9A450](v78, -1, -1);
    }

    else
    {

      v88 = *(v67 + 8);
      v88(v73, v68);
    }

    v162 = *(v165 + 8);
    v162(v159, v166);
    v90 = v153;
    v91 = v150;
    sub_22766A670();
    v160(v91, v77, v76);
    v92 = sub_22766B380();
    v93 = sub_22766C8B0();
    v94 = os_log_type_enabled(v92, v93);
    v142[0] = v77;
    if (v94)
    {
      v95 = swift_slowAlloc();
      v96 = v91;
      v97 = swift_slowAlloc();
      v169 = v97;
      *v95 = 136315138;
      sub_227667650();
      v98 = sub_22766C060();
      v100 = v99;
      v88(v96, v164);
      v101 = sub_226E97AE8(v98, v100, &v169);
      v76 = v164;

      *(v95 + 4) = v101;
      _os_log_impl(&dword_226E8E000, v92, v93, "User: %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x22AA9A450](v97, -1, -1);
      MEMORY[0x22AA9A450](v95, -1, -1);

      v102 = v153;
      v77 = v142[0];
    }

    else
    {

      v88(v91, v76);
      v102 = v90;
    }

    v162(v102, v166);
    v103 = v154;
    v104 = v155;
    sub_22766A670();
    v160(v103, v77, v76);
    v105 = sub_22766B380();
    v106 = sub_22766C8B0();
    if (os_log_type_enabled(v105, v106))
    {
      v159 = v88;
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v169 = v108;
      *v107 = 136315138;
      v109 = v143;
      sub_227667650();
      v110 = v144;
      sub_227665610();
      v111 = v110;
      (*(v151 + 8))(v109, v156);
      v112 = sub_2276661C0();
      v113 = *(v112 - 8);
      if ((*(v113 + 48))(v111, 1, v112) == 1)
      {
        sub_226E97D1C(v111, &qword_27D7BDA88, &qword_2276852C8);
        v114 = 1;
        v115 = v145;
      }

      else
      {
        v115 = v145;
        sub_2276661B0();
        (*(v113 + 8))(v111, v112);
        v114 = 0;
      }

      v117 = sub_227667620();
      (*(*(v117 - 8) + 56))(v115, v114, 1, v117);
      v118 = sub_22766CB80();
      v120 = v119;
      sub_226E97D1C(v115, &qword_27D7BDA90, &unk_2276852D0);
      v121 = v164;
      v88 = v159;
      (v159)(v154, v164);
      v122 = sub_226E97AE8(v118, v120, &v169);
      v76 = v121;

      *(v107 + 4) = v122;
      _os_log_impl(&dword_226E8E000, v105, v106, "Subscriber Account: %s", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v108);
      MEMORY[0x22AA9A450](v108, -1, -1);
      MEMORY[0x22AA9A450](v107, -1, -1);

      v116 = v155;
    }

    else
    {

      v88(v103, v76);
      v116 = v104;
    }

    v162(v116, v166);
    v124 = v157;
    v123 = v158;
    sub_22766A670();
    v160(v124, v77, v76);
    v125 = sub_22766B380();
    v126 = sub_22766C8B0();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v169 = v128;
      *v127 = 136315138;
      v129 = v146;
      sub_227667650();
      v130 = v147;
      sub_227665600();
      (*(v151 + 8))(v129, v156);
      v131 = sub_2276661C0();
      v132 = *(v131 - 8);
      if ((*(v132 + 48))(v130, 1, v131) == 1)
      {
        sub_226E97D1C(v130, &qword_27D7BDA88, &qword_2276852C8);
        v133 = 1;
        v134 = v148;
      }

      else
      {
        v135 = v130;
        v134 = v148;
        sub_2276661B0();
        (*(v132 + 8))(v135, v131);
        v133 = 0;
      }

      v136 = sub_227667620();
      (*(*(v136 - 8) + 56))(v134, v133, 1, v136);
      v137 = sub_22766CB80();
      v139 = v138;
      sub_226E97D1C(v134, &qword_27D7BDA90, &unk_2276852D0);
      v140 = v164;
      v88(v157, v164);
      v141 = sub_226E97AE8(v137, v139, &v169);

      *(v127 + 4) = v141;
      _os_log_impl(&dword_226E8E000, v125, v126, "Apple Account: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x22AA9A450](v128, -1, -1);
      MEMORY[0x22AA9A450](v127, -1, -1);

      v162(v158, v166);
      return (v88)(v142[0], v140);
    }

    else
    {

      v88(v124, v76);
      v162(v123, v166);
      return (v88)(v77, v76);
    }
  }
}

uint64_t sub_227429618()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 1000);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v1 + 20));
    sub_22742AF20((v1 + 16));
    os_unfair_lock_unlock((v1 + 20));
  }

  return result;
}

void sub_2274296CC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v27 = a5;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669790();
  sub_22766A910();
  sub_227669870();

  v14 = sub_22766B380();
  v15 = sub_22766C8B0();

  if (os_log_type_enabled(v14, v15))
  {
    v26 = a1;
    v16 = swift_slowAlloc();
    v25[1] = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25[0] = v9;
    v19 = v18;
    v30 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_226E97AE8(v27, a6, &v30);
    *(v17 + 12) = 2082;
    v20 = sub_22766CE50();
    v22 = sub_226E97AE8(v20, v21, &v30);
    a1 = v26;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v14, v15, "[%{public}s] %{public}s begin", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v19, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v10 + 8))(v13, v25[0]);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D430();
  v23 = v30;
  v24 = v31;
  v28 = v30;
  v29 = v31;
  a1(&v28);
  sub_226EB4548(v23, v24);
}

uint64_t sub_2274299D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v72 = a7;
  v73 = a3;
  v68 = a6;
  v67[1] = a4;
  v67[2] = a5;
  v67[0] = a2;
  v77 = a9;
  v78 = a8;
  v12 = sub_227662750();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v71 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v67 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v67 - v20;
  v22 = sub_22766B390();
  v75 = *(v22 - 8);
  v76 = v22;
  v23 = *(v75 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v74 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (v67 - v30);
  v69 = a10;
  v70 = a11;
  sub_226E93170(a1, v67 - v30, a10, a11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    sub_227669870();
    (*(v13 + 16))(v19, v72, v12);
    v33 = v73;

    v34 = v32;
    v35 = sub_22766B380();
    v36 = sub_22766C890();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v80[0] = v72;
      *v37 = 136446978;
      *(v37 + 4) = sub_226E97AE8(v67[0], v33, v80);
      *(v37 + 12) = 2082;
      v38 = sub_22766CE50();
      v40 = sub_226E97AE8(v38, v39, v80);

      *(v37 + 14) = v40;
      *(v37 + 22) = 2048;
      v41 = v71;
      sub_227662720();
      sub_227662680();
      v43 = v42;
      v44 = *(v13 + 8);
      v44(v41, v12);
      v44(v19, v12);
      *(v37 + 24) = v43;
      *(v37 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v79 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v48 + 16))(v67 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = sub_22766C060();
      v51 = sub_226E97AE8(v49, v50, v80);

      *(v37 + 34) = v51;
      _os_log_impl(&dword_226E8E000, v35, v36, "[%{public}s] %{public}s ended in %fs -> %{public}s", v37, 0x2Au);
      v52 = v72;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v52, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v19, v12);
    }

    (*(v75 + 8))(v74, v76);
  }

  else
  {
    sub_227669870();
    v53 = v12;
    (*(v13 + 16))(v21, v72, v12);
    v54 = v73;

    v55 = sub_22766B380();
    v56 = sub_22766C8B0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v80[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_226E97AE8(v67[0], v54, v80);
      *(v57 + 12) = 2082;
      v59 = sub_22766CE50();
      LODWORD(v74) = v56;
      v61 = sub_226E97AE8(v59, v60, v80);

      *(v57 + 14) = v61;
      *(v57 + 22) = 2048;
      v62 = v71;
      sub_227662720();
      sub_227662680();
      v64 = v63;
      v65 = *(v13 + 8);
      v65(v62, v53);
      v65(v21, v53);
      *(v57 + 24) = v64;
      _os_log_impl(&dword_226E8E000, v55, v74, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v57, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v53);
    }

    (*(v75 + 8))(v27, v76);
    sub_226E97D1C(v31, v69, v70);
  }

  sub_22766A900();
  return sub_227669780();
}

uint64_t sub_22742A0B8(void *a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = a8;
  v69 = a6;
  v70 = a7;
  v68 = a4;
  v73 = a1;
  v76 = a10;
  v77 = a11;
  v14 = sub_227662750();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v72 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  v24 = sub_22766B390();
  v74 = *(v24 - 8);
  v75 = v24;
  v25 = *(v74 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  v30 = (v15 + 16);
  if (a3)
  {
    v31 = a2;
    v32 = v27;
    sub_227669870();
    (*v30)(v21, a9, v14);
    v33 = a5;

    v34 = v73;
    sub_227431AB8(v73, v31, 1);
    v67 = v32;
    v35 = sub_22766B380();
    v36 = sub_22766C890();

    sub_2270934D8(v34, v31, 1);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v79[0] = v38;
      *v37 = 136446978;
      *(v37 + 4) = sub_226E97AE8(v68, v33, v79);
      *(v37 + 12) = 2082;
      v39 = sub_22766CE50();
      v41 = sub_226E97AE8(v39, v40, v79);

      *(v37 + 14) = v41;
      *(v37 + 22) = 2048;
      v42 = v72;
      sub_227662720();
      sub_227662680();
      v44 = v43;
      v45 = *(v15 + 8);
      v45(v42, v14);
      v45(v21, v14);
      *(v37 + 24) = v44;
      *(v37 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v47 = *(*(v78 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v49 + 16))(&v66 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
      v50 = sub_22766C060();
      v52 = sub_226E97AE8(v50, v51, v79);

      *(v37 + 34) = v52;
      _os_log_impl(&dword_226E8E000, v35, v36, "[%{public}s] %{public}s ended in %fs -> %{public}s", v37, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v21, v14);
    }

    (*(v74 + 8))(v67, v75);
  }

  else
  {
    sub_227669870();
    (*v30)(v23, a9, v14);
    v53 = a5;

    v54 = sub_22766B380();
    v55 = sub_22766C8B0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v79[0] = v57;
      *v56 = 136446722;
      *(v56 + 4) = sub_226E97AE8(v68, v53, v79);
      *(v56 + 12) = 2082;
      v58 = sub_22766CE50();
      v60 = sub_226E97AE8(v58, v59, v79);

      *(v56 + 14) = v60;
      *(v56 + 22) = 2048;
      v61 = v72;
      sub_227662720();
      sub_227662680();
      v63 = v62;
      v64 = *(v15 + 8);
      v64(v61, v14);
      v64(v23, v14);
      *(v56 + 24) = v63;
      _os_log_impl(&dword_226E8E000, v54, v55, "[%{public}s] %{public}s ended in %fs", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v57, -1, -1);
      MEMORY[0x22AA9A450](v56, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v23, v14);
    }

    (*(v74 + 8))(v29, v75);
  }

  sub_22766A900();
  return sub_227669780();
}

uint64_t sub_22742A794(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, uint64_t), void (*a12)(uint64_t, uint64_t))
{
  v69 = a7;
  v67 = a5;
  v68 = a6;
  v66 = a3;
  v71 = a1;
  v74 = a9;
  v75 = a10;
  v15 = sub_227662750();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v70 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v25 = sub_22766B390();
  v72 = *(v25 - 8);
  v73 = v25;
  v26 = *(v72 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v64 - v30;
  v32 = (v16 + 16);
  if (a2)
  {
    sub_227669870();
    (*v32)(v22, a8, v15);

    v33 = v71;
    a11(v71, 1);
    v34 = sub_22766B380();
    v35 = sub_22766C890();

    a12(v33, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v77[0] = v65;
      *v36 = 136446978;
      *(v36 + 4) = sub_226E97AE8(v66, a4, v77);
      *(v36 + 12) = 2082;
      v37 = sub_22766CE50();
      v39 = sub_226E97AE8(v37, v38, v77);

      *(v36 + 14) = v39;
      *(v36 + 22) = 2048;
      v40 = v70;
      sub_227662720();
      sub_227662680();
      v42 = v41;
      v43 = *(v16 + 8);
      v43(v40, v15);
      v43(v22, v15);
      *(v36 + 24) = v42;
      *(v36 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v45 = *(*(v76 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v47 + 16))(&v64 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
      v48 = sub_22766C060();
      v50 = sub_226E97AE8(v48, v49, v77);

      *(v36 + 34) = v50;
      _os_log_impl(&dword_226E8E000, v34, v35, "[%{public}s] %{public}s ended in %fs -> %{public}s", v36, 0x2Au);
      v51 = v65;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v51, -1, -1);
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v22, v15);
    }

    (*(v72 + 8))(v29, v73);
  }

  else
  {
    sub_227669870();
    (*v32)(v24, a8, v15);

    v52 = sub_22766B380();
    v53 = sub_22766C8B0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v77[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_226E97AE8(v66, a4, v77);
      *(v54 + 12) = 2082;
      v56 = sub_22766CE50();
      v58 = sub_226E97AE8(v56, v57, v77);

      *(v54 + 14) = v58;
      *(v54 + 22) = 2048;
      v59 = v70;
      sub_227662720();
      sub_227662680();
      v61 = v60;
      v62 = *(v16 + 8);
      v62(v59, v15);
      v62(v24, v15);
      *(v54 + 24) = v61;
      _os_log_impl(&dword_226E8E000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v55, -1, -1);
      MEMORY[0x22AA9A450](v54, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v24, v15);
    }

    (*(v72 + 8))(v31, v73);
  }

  sub_22766A900();
  return sub_227669780();
}

uint64_t sub_22742ADC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22741C934(a1, v1);
}

uint64_t sub_22742AE84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22741C874(a1, v1);
}

uint64_t sub_22742AF3C(void **a1)
{
  v2 = *(sub_227664AA0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22711787C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22742B104(v6, MEMORY[0x277D50CD0], sub_22742B89C, sub_22742B254);
  *a1 = v3;
  return result;
}

uint64_t sub_22742B020(void **a1)
{
  v2 = *(sub_227664CA0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2271178C8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22742B104(v6, MEMORY[0x277D50E98], sub_22742C280, sub_22742B4FC);
  *a1 = v3;
  return result;
}

uint64_t sub_22742B104(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22766C380();
        *(v12 + 16) = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_22742B254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227664AA0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v34 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v15 + 16);
    v18 = v15 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = v17 + v20 * (a3 - 1);
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      v46(v48, v23, v8);
      v27 = v49;
      v26(v49, v24, v8);
      v28 = sub_227664A50();
      v29 = sub_227664A50();
      v30 = *v45;
      (*v45)(v27, v8);
      result = v30(v25, v8);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = v39 + v35;
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v24, v32, v8);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22742B4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_227662750();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = &v43 - v12;
  v13 = sub_227664CA0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v43 - v17;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v19 + 16);
    v23 = v19 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      (v56)(v58, v28, v13, v20);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_227664C90();
      v34 = v61;
      sub_227664C90();
      v64 = sub_2276626B0();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22742B89C(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_227664AA0();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v115 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v115 - v16;
  result = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v19;
  v20 = a3[1];
  v127 = v18;
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_2271171D0(v22);
      v22 = result;
    }

    v140 = v22;
    v111 = *(v22 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v22[16 * v111];
        v113 = *&v22[16 * v111 + 24];
        sub_22742CE80(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v22[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2271171D0(v22);
        }

        if (v111 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v22[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v22;
        result = sub_227117144(v111 - 1);
        v22 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v116 = a4;
  v21 = 0;
  v135 = (v18 + 8);
  v136 = v18 + 16;
  v134 = (v18 + 32);
  v22 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v129 = v20;
      v117 = v6;
      v23 = *a3;
      v119 = v21;
      v24 = v127[9];
      v5 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v133 = v23;
      v26 = v9;
      v27 = v127[2];
      v28 = v137;
      v27(v137, v5, v26);
      v29 = &v25[v24 * v21];
      v30 = v138;
      v125 = v27;
      v27(v138, v29, v26);
      v130 = sub_227664A50();
      v126 = sub_227664A50();
      v31 = v127[1];
      v31(v30, v26);
      v124 = v31;
      result = (v31)(v28, v26);
      v32 = v119 + 2;
      v131 = v24;
      v33 = &v133[v24 * (v119 + 2)];
      while (1)
      {
        v34 = v129;
        if (v129 == v32)
        {
          break;
        }

        v35 = v125;
        LODWORD(v133) = v130 < v126;
        v36 = v137;
        v37 = v139;
        (v125)(v137, v33, v139);
        v38 = v138;
        v35(v138, v5, v37);
        v39 = sub_227664A50();
        v40 = sub_227664A50();
        v41 = v124;
        (v124)(v38, v37);
        result = v41(v36, v37);
        v22 = v128;
        ++v32;
        v33 += v131;
        v5 += v131;
        if (((v133 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v6 = v117;
      v21 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v34 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v34)
        {
          v42 = v131 * (v34 - 1);
          v5 = v34 * v131;
          v129 = v34;
          v43 = v34;
          v44 = v119;
          v45 = v119 * v131;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v134;
              (*v134)(v122, &v46[v45], v9);
              if (v45 < v42 || &v46[v45] >= &v46[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v47)(&v46[v42], v122, v9);
              a3 = v120;
              v22 = v128;
            }

            ++v44;
            v42 -= v131;
            v5 -= v131;
            v45 += v131;
          }

          while (v44 < v43);
          v6 = v117;
          v21 = v119;
          v34 = v129;
        }
      }
    }

    v48 = a3[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v116)
      {
        if (__OFADD__(v21, v116))
        {
          goto LABEL_124;
        }

        if (v21 + v116 >= v48)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v21 + v116;
        }

        if (v5 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v5)
        {
          break;
        }
      }
    }

    v5 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v22 + 2) + 1, 1, v22);
      v22 = result;
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_2273A4F9C((v49 > 1), v50 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v5;
    v53 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v50)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v5 - 1;
        if (v5 - 1 >= v51)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v5 + 40];
        sub_22742CE80(*a3 + v127[9] * v92, *a3 + v127[9] * *&v22[16 * v5 + 32], *a3 + v127[9] * v93, v53);
        if (v6)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2271171D0(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v140 = v22;
        result = sub_227117144(v5);
        v22 = v140;
        v51 = *(v140 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v123;
    if (v123 >= v20)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v95 = *a3;
  v96 = v127[9];
  v133 = v127[2];
  v97 = &v95[v96 * (v34 - 1)];
  v130 = -v96;
  v131 = v95;
  v119 = v21;
  v98 = (v21 - v34);
  v121 = v96;
  v99 = &v95[v34 * v96];
  v123 = v5;
LABEL_85:
  v129 = v34;
  v124 = v99;
  v125 = v98;
  v126 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v137;
    v102 = v133;
    (v133)(v137, v99, v9);
    v103 = v138;
    v102(v138, v100, v139);
    v104 = sub_227664A50();
    v105 = sub_227664A50();
    v106 = *v135;
    v107 = v103;
    v9 = v139;
    (*v135)(v107, v139);
    result = v106(v101, v9);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v129 + 1;
      v97 = v126 + v121;
      v98 = v125 - 1;
      v5 = v123;
      v99 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v21 = v119;
      a3 = v120;
      v22 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v108 = *v134;
    v109 = v132;
    (*v134)(v132, v99, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v9);
    v100 += v130;
    v99 += v130;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

void sub_22742C280(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v162 = sub_227662750();
  v8 = *(v162 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v162);
  v161 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v160 = &v136 - v12;
  v13 = sub_227664CA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  MEMORY[0x28223BE20](v13);
  v143 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v152 = &v136 - v18;
  MEMORY[0x28223BE20](v19);
  v159 = &v136 - v20;
  v22.n128_f64[0] = MEMORY[0x28223BE20](v21);
  v163 = &v136 - v23;
  v24 = *(a3 + 1);
  v148 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v140;
    if (!*v140)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v148;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v13 = sub_2271171D0(v13);
    }

    v165 = v13;
    v132 = *(v13 + 16);
    if (v132 >= 2)
    {
      while (*v54)
      {
        v133 = *(v13 + 16 * v132);
        v134 = *(v13 + 16 * (v132 - 1) + 40);
        sub_22742D438(*v54 + *(v14 + 9) * v133, *v54 + *(v14 + 9) * *(v13 + 16 * (v132 - 1) + 32), *v54 + *(v14 + 9) * v134, v26);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v134 < v133)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2271171D0(v13);
        }

        if (v132 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v135 = (v13 + 16 * v132);
        *v135 = v133;
        v135[1] = v134;
        v165 = v13;
        sub_227117144(v132 - 1);
        v13 = v165;
        v132 = *(v165 + 16);
        if (v132 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v136 = a4;
  v25 = 0;
  v156 = (v8 + 8);
  v157 = v14 + 16;
  v154 = (v14 + 32);
  v155 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v158 = v13;
  v139 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v148;
    }

    else
    {
      v149 = v24;
      v137 = v26;
      v138 = v5;
      v28 = v25;
      v141 = v25;
      v29 = *v148;
      v164 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v163, v31, v13, v22);
      v34 = v159;
      v150 = v33;
      (v33)(v159, v29 + v30 * v28, v32);
      v35 = v160;
      sub_227664C90();
      v36 = v161;
      sub_227664C90();
      LODWORD(v151) = sub_2276626B0();
      v37 = *v156;
      v38 = v36;
      v39 = v162;
      (*v156)(v38, v162);
      v147 = v37;
      (v37)(v35, v39);
      v40 = *(v139 + 1);
      v26 = v155;
      v40(v34, v32);
      v146 = v40;
      v40(v163, v32);
      v41 = v141 + 2;
      v153 = v30;
      v42 = v164 + v30 * (v141 + 2);
      while (1)
      {
        v43 = v149;
        if (v149 == v41)
        {
          break;
        }

        v44 = v158;
        v45 = v150;
        v150();
        v46 = v159;
        v45(v159, v31, v44);
        v47 = v160;
        sub_227664C90();
        v48 = v161;
        sub_227664C90();
        LOBYTE(v164) = sub_2276626B0() & 1;
        LODWORD(v164) = v164;
        v49 = v48;
        v50 = v162;
        v51 = v31;
        v52 = v147;
        (v147)(v49, v162);
        v52(v47, v50);
        v26 = v155;
        v53 = v146;
        (v146)(v46, v44);
        v53(v163, v44);
        ++v41;
        v42 += v153;
        v31 = &v153[v51];
        if ((v151 & 1) != v164)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v138;
      v54 = v148;
      v14 = v139;
      v13 = v158;
      v25 = v141;
      if ((v151 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v141)
      {
        goto LABEL_125;
      }

      if (v141 < v43)
      {
        v55 = v43;
        v56 = v153 * (v43 - 1);
        v57 = v43 * v153;
        v149 = v43;
        v58 = v141;
        v59 = v141 * v153;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v154;
            (*v154)(v143, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v61((v60 + v56), v143, v13);
            v54 = v148;
          }

          ++v58;
          v56 -= v153;
          v57 -= v153;
          v59 += v153;
        }

        while (v58 < v55);
        v5 = v138;
        v14 = v139;
        v26 = v137;
        v25 = v141;
        v43 = v149;
      }

      else
      {
LABEL_23:
        v26 = v137;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v136)
      {
        if (__OFADD__(v25, v136))
        {
          goto LABEL_126;
        }

        if (v25 + v136 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v136;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_2273A4F9C(0, *(v26 + 2) + 1, 1, v26);
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      v26 = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v26);
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v140;
    if (!*v140)
    {
      goto LABEL_133;
    }

    v144 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v148)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_22742D438(*v148 + *(v54 + 9) * v109, *v148 + *(v54 + 9) * *&v26[16 * v70 + 32], *v148 + *(v54 + 9) * v110, v14);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2271171D0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v165 = v26;
        sub_227117144(v70);
        v26 = v165;
        v67 = *(v165 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v148 + 1);
    v25 = v144;
    v14 = v54;
    if (v144 >= v24)
    {
      goto LABEL_96;
    }
  }

  v137 = v26;
  v138 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v153 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v150 = -v113;
  v141 = v25;
  v115 = (v25 - v43);
  v151 = v112;
  v142 = v113;
  v116 = v112 + v43 * v113;
  v144 = v63;
LABEL_87:
  v149 = v43;
  v145 = v116;
  v146 = v115;
  v117 = v116;
  v147 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v163;
    v119 = v153;
    (v153)(v163, v117, v13, v22);
    v120 = v159;
    v119(v159, v118, v13);
    v121 = v160;
    sub_227664C90();
    v122 = v161;
    sub_227664C90();
    LODWORD(v164) = sub_2276626B0();
    v123 = *v156;
    v124 = v122;
    v125 = v162;
    (*v156)(v124, v162);
    v126 = v121;
    v13 = v158;
    v123(v126, v125);
    v127 = *v155;
    (*v155)(v120, v13);
    v127(v54, v13);
    if ((v164 & 1) == 0)
    {
LABEL_86:
      v43 = v149 + 1;
      v114 = &v147[v142];
      v115 = v146 - 1;
      v64 = v144;
      v116 = v145 + v142;
      if (v149 + 1 != v144)
      {
        goto LABEL_87;
      }

      v5 = v138;
      v14 = v139;
      v26 = v137;
      v25 = v141;
      if (v144 < v141)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v151)
    {
      break;
    }

    v128 = *v154;
    v129 = v152;
    (*v154)(v152, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v150 + v118;
    v117 += v150;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_22742CE80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = sub_227664AA0();
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v60 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v59 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v15;
  v66 = a1;
  v65 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v19;
    if (v19 >= 1)
    {
      v34 = -v15;
      v53 = a4;
      v54 = (v8 + 16);
      v52 = (v8 + 8);
      v35 = v33;
      v62 = a1;
      v55 = v34;
      do
      {
        v50 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v38 = a3;
        v56 = v36;
        v57 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v66 = v36;
            v64 = v50;
            goto LABEL_58;
          }

          v39 = v38;
          v51 = v33;
          v61 = v38 + v34;
          v40 = v35 + v34;
          v41 = *v54;
          v42 = v59;
          v43 = v35 + v34;
          v44 = v35;
          v45 = v63;
          (*v54)(v59, v43, v63);
          v46 = v60;
          (v41)(v60, v37, v45);
          v58 = sub_227664A50();
          v47 = sub_227664A50();
          v48 = *v52;
          (*v52)(v46, v45);
          v48(v42, v45);
          if (v58 < v47)
          {
            break;
          }

          v33 = v40;
          v38 = v61;
          if (v39 < v44 || v61 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v57;
            a1 = v62;
          }

          else
          {
            v37 = v57;
            a1 = v62;
            if (v39 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v40;
          v34 = v55;
          v36 = v56;
          if (v40 <= v53)
          {
            a2 = v56;
            goto LABEL_57;
          }
        }

        v35 = v44;
        if (v39 < v56 || v61 >= v56)
        {
          a3 = v61;
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v62;
          v33 = v51;
          v34 = v55;
        }

        else
        {
          a3 = v61;
          a2 = v57;
          a1 = v62;
          v33 = v51;
          v34 = v55;
          if (v39 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v53);
    }

LABEL_57:
    v66 = a2;
    v64 = v33;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v18;
    v64 = a4 + v18;
    v61 = a3;
    if (v18 >= 1 && a2 < a3)
    {
      v21 = *(v8 + 16);
      v56 = v15;
      v57 = v8 + 16;
      v54 = (v8 + 8);
      v55 = v21;
      do
      {
        v62 = a1;
        v22 = v59;
        v23 = v63;
        v24 = v55;
        v55(v59, a2, v63);
        v25 = v60;
        v24(v60, a4, v23);
        v26 = a2;
        v27 = sub_227664A50();
        v28 = sub_227664A50();
        v29 = *v54;
        (*v54)(v25, v23);
        v29(v22, v23);
        if (v27 >= v28)
        {
          v30 = v56;
          v32 = a4 + v56;
          v31 = v62;
          if (v62 < a4 || v62 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v62 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v32;
          a4 += v30;
        }

        else
        {
          v30 = v56;
          a2 = v26 + v56;
          v31 = v62;
          if (v62 < v26 || v62 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v31 + v30;
        v66 = a1;
      }

      while (a4 < v58 && a2 < v61);
    }
  }

LABEL_58:
  sub_22711736C(&v66, &v65, &v64);
  return 1;
}

void sub_22742D438(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v74 = a3;
  v69 = sub_227662750();
  v7 = *(v69 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v57 - v11;
  v73 = sub_227664CA0();
  v12 = *(v73 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v57 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v19 = v74 - a2;
  if (v74 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_62;
  }

  v20 = (a2 - a1) / v18;
  v77 = a1;
  v76 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v22;
    if (v22 >= 1)
    {
      v40 = -v18;
      v61 = (v7 + 8);
      v62 = (v12 + 16);
      v59 = a4;
      v60 = (v12 + 8);
      v41 = v39;
      v72 = a1;
      v63 = -v18;
      v42 = v73;
      while (2)
      {
        while (1)
        {
          v57 = v39;
          v43 = a2;
          v44 = a2 + v40;
          v64 = v43;
          v65 = v44;
          while (1)
          {
            v45 = v74;
            if (v43 <= a1)
            {
              v77 = v43;
              v75 = v57;
              goto LABEL_59;
            }

            v58 = v39;
            v74 += v40;
            v46 = v41 + v40;
            v47 = *v62;
            (*v62)();
            v48 = v66;
            (v47)(v66, v44, v42);
            v49 = v67;
            sub_227664C90();
            v50 = v68;
            sub_227664C90();
            v70 = sub_2276626B0();
            v51 = *v61;
            v52 = v50;
            v53 = v69;
            (*v61)(v52, v69);
            v51(v49, v53);
            v54 = *v60;
            (*v60)(v48, v42);
            v54(v71, v42);
            if (v70)
            {
              break;
            }

            v39 = v46;
            v55 = v59;
            if (v45 < v41 || v74 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v65;
              v40 = v63;
            }

            else
            {
              v44 = v65;
              v40 = v63;
              if (v45 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v41 = v46;
            a1 = v72;
            v43 = v64;
            if (v46 <= v55)
            {
              a2 = v64;
              goto LABEL_58;
            }
          }

          v56 = v59;
          if (v45 < v64 || v74 >= v64)
          {
            break;
          }

          a2 = v65;
          a1 = v72;
          v39 = v58;
          v40 = v63;
          if (v45 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v41 <= v56)
          {
            goto LABEL_58;
          }
        }

        a2 = v65;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v72;
        v39 = v58;
        v40 = v63;
        if (v41 > v56)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v77 = a2;
    v75 = v39;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = a4 + v21;
    v75 = a4 + v21;
    if (v21 >= 1 && a2 < v74)
    {
      v24 = *(v12 + 16);
      v61 = (v7 + 8);
      v62 = v24;
      v63 = v18;
      v64 = v12 + 16;
      v60 = (v12 + 8);
      v25 = v73;
      do
      {
        v72 = a1;
        v26 = v71;
        v27 = v62;
        (v62)(v71, a2, v25);
        v28 = v66;
        (v27)(v66, a4, v25);
        v29 = v67;
        sub_227664C90();
        v30 = v68;
        sub_227664C90();
        v70 = sub_2276626B0();
        v31 = a2;
        v32 = *v61;
        v33 = v30;
        v34 = a4;
        v35 = v69;
        (*v61)(v33, v69);
        v32(v29, v35);
        v36 = *v60;
        (*v60)(v28, v25);
        v36(v26, v25);
        if (v70)
        {
          v37 = v63;
          a2 = v31 + v63;
          v38 = v72;
          a4 = v34;
          if (v72 < v31 || v72 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v72 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v31;
          v37 = v63;
          a4 = v34 + v63;
          v38 = v72;
          if (v72 < v34 || v72 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v72 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v76 = a4;
        }

        a1 = v38 + v37;
        v77 = a1;
      }

      while (a4 < v65 && a2 < v74);
    }
  }

LABEL_59:
  sub_227117384(&v77, &v76, &v75);
}

uint64_t sub_22742DB14(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_227669270();
}

void sub_22742DBB0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, char *), uint64_t a4, char *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_226EB4548(v6, 0);
}

uint64_t sub_22742DC4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = v5;

  return sub_227669270();
}

void sub_22742DCF0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, void **), uint64_t a4, void **a5)
{
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v8 = v10;
  LOBYTE(v9) = 0;
  a1(&v8);

  sub_226EB4548(v7, 0);
}

uint64_t sub_22742DD8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22742DDAC(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_22742DE4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_22742DEB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_22742DFB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  sub_227665E80();

  return sub_227669270();
}

uint64_t sub_22742E054(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_227669270();
}

uint64_t sub_22742E0F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_227669270();
}

uint64_t sub_22742E184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_227667670();

  return sub_227669270();
}

uint64_t sub_22742EF9C@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(sub_2276678C0() - 8) + 64) + 263) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_227425604(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1, *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248), v1 + 256, *(v1 + v3), *(v1 + v4), *(v1 + v5), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22742F0A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22742F128(void (*a1)(char *, char *, uint64_t))
{
  v3 = *(sub_227662750() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_227428538(a1, v4, v5, v6);
}

unint64_t sub_22742F1C8()
{
  result = qword_27D7BDA98;
  if (!qword_27D7BDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDA98);
  }

  return result;
}

uint64_t sub_22742F224(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22742F41C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2274174F8(a1, v1);
}

uint64_t sub_22742F60C(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      sub_226EB396C(v6, v5, *v3);
      sub_227105A48(v8, v6, v5, v4);
      sub_226EB2DFC(v8[0], v8[1], v9);
      v3 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return a2;
}

uint64_t sub_22742F6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v23 = a2;
  v15 = *(a1 + 16);
  if (v15)
  {
    v17 = *(v12 + 16);
    v16 = v12 + 16;
    v22 = v17;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = *(v16 + 56);
    v20 = (v16 - 8);
    do
    {
      v22(v11, v18, v7);
      a4(v14, v11);
      (*v20)(v14, v7);
      v18 += v19;
      --v15;
    }

    while (v15);
    return v23;
  }

  return a2;
}

uint64_t sub_22742F870(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v54 = a1;
  v51 = sub_227667AE0();
  v55 = *(v51 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v51);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[3] = &type metadata for PersistenceHandle;
  v57[4] = &off_283A9AF78;
  v12 = swift_allocObject();
  v57[0] = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = __swift_project_boxed_opaque_existential_0(v57, &type metadata for PersistenceHandle);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = v13[3];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = a2;
  v23 = a3;

  v24 = v14;
  v25 = v15;

  v26 = v54;
  sub_22766A070();
  *(v21 + 16) = v24;
  *(v21 + 24) = v25;
  *(v21 + 32) = v16;
  *(v21 + 40) = v17;
  v27 = sub_2273FCE18();
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = sub_22766A080();
  v31 = v30;
  v32 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v49 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v56, 0);
  swift_endAccess();

  v33 = sub_227667AA0();
  v34 = *(v26 + v33[5]);
  swift_beginAccess();
  sub_22766A0D0();
  v35 = *(v26 + v33[6]);
  sub_22766A0F0();
  swift_endAccess();
  v36 = *(v26 + v33[7]);
  v37 = *(v36 + 16);
  if (v37)
  {
    v53 = *(v55 + 16);
    v38 = v36 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v52 = *(v55 + 72);
    v55 += 16;
    v39 = (v55 - 8);

    v40 = v51;
    v54 = v28;
    do
    {
      v53(v11, v38, v40);
      sub_227667AC0();
      sub_2276629E0();
      if (sub_227667AD0())
      {
        swift_getKeyPath();
        sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);

        sub_22766C900();
        swift_beginAccess();
        v41 = sub_22766A0A0();
        v43 = v42;
        MEMORY[0x22AA985C0]();
        if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v47 = *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
          v40 = v51;
        }

        sub_22766C3A0();
        v41(v56, 0);
        swift_endAccess();
      }

      else
      {
        swift_getKeyPath();
        sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);

        sub_22766C900();
        swift_beginAccess();
        v44 = sub_22766A0A0();
        v46 = v45;
        MEMORY[0x22AA985C0]();
        if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22766C360();
        }

        sub_22766C3A0();
        v44(v56, 0);
        swift_endAccess();
        v40 = v51;
      }

      (*v39)(v11, v40);
      v38 += v52;
      --v37;
    }

    while (v37);
  }

  __swift_destroy_boxed_opaque_existential_0(v57);
  return v21;
}

uint64_t sub_22742FDAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227430018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22722BFF4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2274300C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227412EDC(a1, v1);
}

uint64_t sub_227430228(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_227411060(a1);
}

uint64_t sub_22743035C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226E93028;

  return sub_22741181C(a1, a2, v7, v6);
}

uint64_t sub_227430410(uint64_t a1)
{
  v4 = *(sub_2276638D0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226E93028;

  return sub_227412298(a1, v6, v7, v8, v1 + v5);
}

char *sub_227430508@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_227666D70();
  result = sub_227282BA0(v5, a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2274305B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22740FAD0(a1, v1);
}

uint64_t sub_22743077C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2273FE67C(a1, v1);
}

uint64_t sub_227430894(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2273FD8F4(a1, v1);
}

uint64_t sub_227430CC8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *(sub_227663FA0() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_227409288(a1, a2);
}

uint64_t sub_227430F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_227431348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_22740B900(v1[2], a1);
}

uint64_t sub_227431444@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_227431584(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v7 = *(sub_227662750() - 8);
  v8 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22742A794(*a1, *(a1 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_227431678(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22740091C(a1, v1);
}

uint64_t sub_2274317E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2273FFD70(a1, v1);
}

uint64_t sub_227431900(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_227662750() - 8);
  v8 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2274299D8(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_2274319F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_227431AB8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_226F5E0B4(a1, a2);
  }
}

uint64_t sub_227431B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    sub_227431D60();
    v10 = *(v5 + 16);
    v10(v8, a1, v4);
    v11 = sub_226F97E0C(0x5F72756F6D796573, 0xE900000000000062, v8, 2);
    v10(v8, a1, v4);
    v12 = sub_226F97E0C(0x5F72756F6D796573, 0xE900000000000063, v8, 1);
    v10(v8, a1, v4);
    v13 = sub_226F97E0C(0x5F72756F6D796573, 0xE900000000000064, v8, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2276856D0;
    *(inited + 32) = v11;
    *(inited + 40) = v12;
    *(inited + 48) = v13;
    sub_226F4D6A0(inited);
    v9 = v15;
    swift_setDeallocating();
    v16 = *(inited + 16);
    swift_arrayDestroy();
  }

  return v9;
}

unint64_t sub_227431D60()
{
  result = qword_28139D238;
  if (!qword_28139D238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D238);
  }

  return result;
}

uint64_t sub_227431DAC(uint64_t a1)
{
  v37 = sub_227664530();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v29 = v1;
  v40 = MEMORY[0x277D84F90];
  v31 = v5;
  sub_226F1FCE8(0, v7, 0);
  v8 = v40;
  v9 = -1 << *(v31 + 32);
  v39 = v31 + 64;
  result = sub_22766CC90();
  v11 = result;
  v12 = v31;
  v13 = 0;
  v34 = v3 + 8;
  v35 = v3 + 16;
  v30 = v31 + 72;
  v32 = v7;
  v33 = v3;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v39 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v38 = *(v12 + 36);
    v16 = v36;
    v17 = v37;
    (*(v3 + 16))(v36, *(v12 + 56) + *(v3 + 72) * v11, v37);
    sub_227664510();
    v19 = v18;
    result = (*(v3 + 8))(v16, v17);
    v40 = v8;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_226F1FCE8((v20 > 1), v21 + 1, 1);
      v8 = v40;
    }

    *(v8 + 16) = v21 + 1;
    *(v8 + 8 * v21 + 32) = v19;
    v14 = 1 << *(v12 + 32);
    if (v11 >= v14)
    {
      goto LABEL_22;
    }

    v22 = *(v39 + 8 * v15);
    if ((v22 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v38 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v11 & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v3 = v33;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v30 + 8 * v15);
      v3 = v33;
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v11, v38, 0);
          v12 = v31;
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v11, v38, 0);
      v12 = v31;
    }

LABEL_4:
    ++v13;
    v11 = v14;
    if (v13 == v32)
    {
      return v8;
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

uint64_t sub_2274320C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  sub_226F1FCE8(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = v24;
  v8 = 0;
  v9 = *(a1 + 36);
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(a1 + 56) + 8 * result);
    v15 = *(v25 + 16);
    v14 = *(v25 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = result;
      sub_226F1FCE8((v14 > 1), v15 + 1, 1);
      v7 = v24;
      result = v23;
    }

    *(v25 + 16) = v15 + 1;
    *(v25 + 8 * v15 + 32) = v13;
    v10 = 1 << *(a1 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v16 = *(v4 + 8 * v11);
    if ((v16 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v10 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v11 << 6;
      v19 = v11 + 1;
      v20 = (a1 + 72 + 8 * v11);
      while (v19 < (v10 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_226EB526C(result, v9, 0);
          v7 = v24;
          v10 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v9, 0);
      v7 = v24;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v7)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_227432300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_227662750() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_2276627D0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_227664530();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22743247C, 0, 0);
}

uint64_t sub_22743247C()
{
  v1 = *(v0 + 32);

  v3 = sub_227431DAC(v2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v6 = 0.0;
    goto LABEL_10;
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_8:
    v10 = v4 - v5;
    v11 = (v3 + 8 * v5 + 32);
    do
    {
      v12 = *v11++;
      v6 = v6 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_10;
  }

  v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = v3 + 48;
  v6 = 0.0;
  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v9 = *v7;
    v6 = v6 + *(v7 - 16) + *(v7 - 8) + *v7 + *(v7 + 8);
    v7 += 32;
    v8 -= 4;
  }

  while (v8);
  if (v4 != v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(v0 + 136) = v6;
  v13 = *(v0 + 88);
  v14 = *(v0 + 32);

  v15 = v14 + 64;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & *(v14 + 64);
  v19 = (63 - v17) >> 6;
  v86 = (v13 + 8);
  v84 = (v13 + 32);

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  while (v18)
  {
    v25 = v23;
LABEL_18:
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v27 = *(v13 + 72);
    (*(v13 + 16))(*(v0 + 128), *(v14 + 56) + v27 * (v26 | (v25 << 6)), *(v0 + 80));
    v28 = sub_227664490();
    v29 = *(v0 + 128);
    if ((v30 & 1) != 0 || v28 != 29)
    {
      v31 = *v84;
      (*v84)(*(v0 + 120), *(v0 + 128), *(v0 + 80));
      v87 = v24;
      v82 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_226F1F628(0, *(v24 + 16) + 1, 1);
      }

      v32 = v24;
      v33 = *(v24 + 16);
      v34 = *(v32 + 24);
      if (v33 >= v34 >> 1)
      {
        sub_226F1F628(v34 > 1, v33 + 1, 1);
        v32 = v87;
      }

      v35 = *(v0 + 120);
      v36 = *(v0 + 80);
      *(v32 + 16) = v33 + 1;
      v20 = v82(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v33 * v27, v35, v36);
      v23 = v25;
      v24 = v32;
    }

    else
    {
      v20 = (*v86)(*(v0 + 128), *(v0 + 80));
      v23 = v25;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v25 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v25);
    ++v23;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  v83 = v24;
  v37 = *(v0 + 32);

  v38 = -1;
  v39 = -1 << *(v14 + 32);
  v40 = v14;
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v41 = v38 & *(v14 + 64);
  v42 = (63 - v39) >> 6;

  v43 = 0;
  v44 = MEMORY[0x277D84F90];
  for (*(v0 + 144) = MEMORY[0x277D84F90]; v41; *(v0 + 144) = v44)
  {
LABEL_35:
    while (1)
    {
      v46 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v47 = *(v13 + 72);
      (*(v13 + 16))(*(v0 + 112), *(v40 + 56) + v47 * (v46 | (v43 << 6)), *(v0 + 80));
      v48 = sub_227664490();
      v49 = *(v0 + 112);
      if ((v50 & 1) == 0 && v48 == 29)
      {
        break;
      }

      v20 = (*v86)(*(v0 + 112), *(v0 + 80));
      *(v0 + 144) = v44;
      if (!v41)
      {
        goto LABEL_31;
      }
    }

    v51 = *v84;
    (*v84)(*(v0 + 104), *(v0 + 112), *(v0 + 80));
    v88 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_226F1F628(0, *(v44 + 16) + 1, 1);
    }

    v53 = *(v44 + 16);
    v52 = *(v44 + 24);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v79 = v53 + 1;
      v57 = *(v44 + 16);
      sub_226F1F628(v52 > 1, v53 + 1, 1);
      v54 = v79;
      v53 = v57;
      v44 = v88;
    }

    v55 = *(v0 + 104);
    v56 = *(v0 + 80);
    *(v44 + 16) = v54;
    v20 = v51(v44 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v53 * v47, v55, v56);
  }

LABEL_31:
  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      v58 = *(v0 + 32);
      v59 = *(v0 + 40);
      v60 = *(v0 + 24);

      *(v0 + 152) = *(v58 + 16);
      *(v0 + 160) = *(sub_2276637D0() + 16);

      v61 = v60[3];
      v62 = v60[4];
      __swift_project_boxed_opaque_existential_0(v60, v61);
      v63 = *(v83 + 16);
      *(v0 + 168) = v63;
      if (v63)
      {
        v80 = v62;
        v81 = v61;
        v85 = v0;
        v89 = MEMORY[0x277D84F90];
        sub_226F1EF90(0, v63, 0);
        v64 = v89;
        v65 = v83 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v66 = *(v13 + 72);
        v67 = *(v13 + 16);
        do
        {
          v68 = *(v85 + 96);
          v69 = *(v85 + 80);
          v67(v68, v65, v69);
          v70 = sub_2276644D0();
          v72 = v71;
          (*v86)(v68, v69);
          v74 = *(v89 + 16);
          v73 = *(v89 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_226F1EF90(v73 > 1, v74 + 1, 1);
          }

          *(v89 + 16) = v74 + 1;
          v75 = v89 + 16 * v74;
          *(v75 + 32) = v70;
          *(v75 + 40) = v72;
          v65 += v66;
          --v63;
        }

        while (v63);

        v0 = v85;
        v61 = v81;
        v62 = v80;
      }

      else
      {

        v64 = MEMORY[0x277D84F90];
      }

      *(v0 + 176) = v64;
      v76 = *(MEMORY[0x277D4F210] + 4);
      v77 = swift_task_alloc();
      *(v0 + 184) = v77;
      v22 = *(v62 + 8);
      *v77 = v0;
      v77[1] = sub_227432AD4;
      v20 = v64;
      v21 = v61;

      return MEMORY[0x2821AED78](v20, v21, v22);
    }

    v41 = *(v15 + 8 * v45);
    ++v43;
    if (v41)
    {
      v43 = v45;
      goto LABEL_35;
    }
  }

LABEL_54:
  __break(1u);
  return MEMORY[0x2821AED78](v20, v21, v22);
}

uint64_t sub_227432AD4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_227432E7C;
  }

  else
  {
    v8 = *(v4 + 176);

    *(v4 + 200) = a1;
    v7 = sub_227432C04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227432C04()
{
  v1 = v0[24];
  v2 = sub_2274320C8(v0[25]);

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 > 3)
  {
    v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v6 = v2 + 48;
    v5 = 0.0;
    v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v8 = *v6;
      v5 = v5 + *(v6 - 16) + *(v6 - 8) + *v6 + *(v6 + 8);
      v6 += 32;
      v7 -= 4;
    }

    while (v7);
    if (v3 == v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v9 = v3 - v4;
  v10 = (v2 + 8 * v4 + 32);
  do
  {
    v11 = *v10++;
    v5 = v5 + v11;
    --v9;
  }

  while (v9);
LABEL_10:
  v12 = v0[9];
  v14 = v0[5];
  v13 = v0[6];

  sub_2276637C0();
  sub_227663870();
  if (v1)
  {
    v15 = v0[18];
    v16 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v18 = v0[15];
    v17 = v0[16];
    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v22 = v0[9];
    v23 = v0[6];
  }

  else
  {
    v25 = v0[21];
    v26 = v0[17];
    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];
    v37 = v0[13];
    v38 = v0[12];
    v30 = v0[9];
    v31 = v0[6];
    v32 = v0[4];
    v33 = v0[2];
    v34 = *(v0[18] + 16);
    v35 = v0[19] / v0[20];

    sub_227665730();
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_227432E7C()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[4];

  v4 = v0[24];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_227432F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227662D90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227662B10();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227433124(a1, v14);
  v15 = 1;
  if ((*(v7 + 48))(v14, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v14, v6);
    sub_2273CCF40(a2, a3);
    (*(v7 + 8))(v10, v6);
    v15 = 0;
  }

  v16 = sub_227666D60();
  return (*(*(v16 - 8) + 56))(a3, v15, 1, v16);
}

uint64_t sub_227433124(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662B10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227433194(uint64_t a1)
{
  result = sub_2274331BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274331BC()
{
  result = qword_27D7BDB30;
  if (!qword_27D7BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB30);
  }

  return result;
}

unint64_t sub_22743321C(uint64_t a1)
{
  result = sub_227433244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227433244()
{
  result = qword_27D7BDB38;
  if (!qword_27D7BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB38);
  }

  return result;
}

uint64_t sub_227433298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2274332E4();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

unint64_t sub_2274332E4()
{
  result = qword_27D7BDB40;
  if (!qword_27D7BDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB40);
  }

  return result;
}

void sub_227433344(void *a1)
{
  v2 = [a1 sessionIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 workoutIdentifier];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_2276674A0();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_227433808(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static HealthKitSessionReference.representativeSamples()()
{
  v19 = sub_2276674C0();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v25 = sub_22766C090();
  v26[0] = v4;
  v26[1] = v26;
  v26[2] = &v25;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = v23;
  v21 = sub_2272BFE28();
  v22 = v21;
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_226F206C8(0, v6, 0);
    v8 = 0;
    v9 = v20;
    v17 = v0 + 32;
    v18 = v5;
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      sub_2276674A0();
      v20 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F206C8(v15 > 1, v16 + 1, 1);
        v9 = v20;
      }

      ++v8;
      *(v9 + 16) = v16 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v16, v3, v19);
      v10 += 4;
      v5 = v18;
      if (v6 == v8)
      {

        return v9;
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

void sub_227433714(void *a1)
{
  sub_227667490();
  v2 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_2276674B0();
  v3 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];
}

uint64_t sub_2274337B0(uint64_t a1)
{
  result = sub_227433808(&qword_27D7B8ED0, MEMORY[0x277D52DB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227433808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227433850(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_226F1F090(0, v1, 0);
  v2 = v25;
  v4 = -1 << *(a1 + 32);
  v24 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v24 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_227669310();
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = result;
      sub_226F1F090((v13 > 1), v14 + 1, 1);
      result = v22;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = result;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v24 + 8 * v10);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v23;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v9 = v23;
      v19 = (a1 + 64 + 8 * v10);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
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

uint64_t sub_227433A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_226F1FD68(0, v1, 0);
  v2 = v31;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  v28 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v29 = v8;
    v30 = *(v3 + 36);
    v11 = *(v3 + 48) + 24 * v7;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    result = sub_226EB396C(*v11, v13, v14);
    v16 = *(v31 + 16);
    v15 = *(v31 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_226F1FD68((v15 > 1), v16 + 1, 1);
    }

    *(v31 + 16) = v16 + 1;
    v17 = v31 + 32 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 48) = v14;
    *(v17 + 56) = 0;
    v3 = v28;
    v9 = 1 << *(v28 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v30 != *(v28 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_226EB526C(v7, v30, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v30, 0);
    }

LABEL_4:
    v8 = v29 + 1;
    v7 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
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

uint64_t sub_227433CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_2276692E0();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_226F1EF90(v14 > 1, v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
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

unint64_t sub_227433ED0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  swift_beginAccess();
  for (i = (a1 + 32); ; ++i)
  {
    if (!v4)
    {
      return 0;
    }

    v6 = *i;
    result = sub_227669310();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(*a2 + 16))
    {
      goto LABEL_10;
    }

    --v4;
    if (*(*a2 + 8 * result + 32) >= v6)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_227433F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  do
  {
    if (!v7)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          v13 = 1;
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          v10 = v11;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

LABEL_9:
    v12 = *(*(a1 + 48) + (__clz(__rbit64(v7)) | (v10 << 6)));
    result = sub_227669310();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

    if (result >= *(*a2 + 16))
    {
      goto LABEL_17;
    }

    v7 &= v7 - 1;
  }

  while (*(*(*a2 + 8 * result + 32) + 16));
  v13 = 0;
LABEL_14:

  return v13;
}

uint64_t SetCoverStatus.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_22743412C()
{
  result = qword_27D7BDB48;
  if (!qword_27D7BDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB48);
  }

  return result;
}

void sub_227434190(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void *@<X8>), uint64_t a8)
{
  v138 = a8;
  v146 = a4;
  v147 = a7;
  i = a3;
  v150 = a2;
  v136 = a1;
  v139 = sub_227664EC0();
  v143 = *(v139 - 8);
  v11 = *(v143 + 64);
  MEMORY[0x28223BE20](v139);
  v141 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v131 = *(v130 - 8);
  v13 = *(v131 + 64);
  MEMORY[0x28223BE20](v130);
  v135 = &v129 - v14;
  v15 = sub_227667370();
  v156 = *(v15 - 8);
  v157 = v15;
  v16 = *(v156 + 64);
  MEMORY[0x28223BE20](v15);
  v162 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2276627D0();
  v153 = *(v18 - 8);
  v154 = v18;
  v19 = *(v153 + 64);
  MEMORY[0x28223BE20](v18);
  v152 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for WorkoutPlanGenerationScaffold();
  v21 = *(*(v155 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v155);
  v161 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v129 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v151 = &v129 - v27;
  MEMORY[0x28223BE20](v26);
  v142 = &v129 - v28;
  v149 = sub_22766B390();
  v29 = *(v149 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v149);
  v134 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v129 - v33;
  v35 = sub_2276681F0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a6;
  v40 = a6[2];
  v158 = v8;
  sub_227667240();
  v160 = a5;
  if (a5 == 90 || v40 == 1)
  {
    v41 = sub_227668160();
  }

  else
  {
    v41 = sub_227668060();
  }

  v42 = v41;
  (*(v36 + 8))(v39, v35);
  sub_22766A630();
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = v42;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v160;
    _os_log_impl(&dword_226E8E000, v43, v44, "Computed maxWorkoutsPerDay=%ld based on duration: %ld", v45, 0x16u);
    MEMORY[0x22AA9A450](v45, -1, -1);
  }

  v46 = *(v29 + 8);
  v133 = v29 + 8;
  v132 = v46;
  v46(v34, v149);
  v47 = v152;
  v48 = *(v153 + 16);
  v145 = v42;
  v49 = v154;
  v48(v152, v150, v154);
  v50 = v157;
  v144 = *(v156 + 16);
  v51 = v158;
  v52 = v162;
  v144(v162, v158 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration, v157);
  v150 = sub_227149B3C(MEMORY[0x277D84F90]);
  v53 = *(v51 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode);
  v54 = v151;
  v48(v151, v47, v49);
  v55 = v155;
  v56 = v146;
  *&v54[*(v155 + 20)] = v146;
  swift_bridgeObjectRetain_n();
  v57 = sub_226F491E4(v56);
  *&v54[v55[6]] = v57;
  v58 = i;
  *&v54[v55[7]] = v160;
  v59 = v147;
  *&v54[v55[8]] = v148;
  *&v54[v55[9]] = v59;
  v60 = v55[12];
  LODWORD(v146) = v53;
  v54[v60] = v53;
  *&v54[v55[10]] = v145;
  *&v54[v55[13]] = v58;
  v144(&v54[v55[14]], v52, v50);
  *&v54[v55[15]] = MEMORY[0x277D84F90];
  *&v54[v55[16]] = v150;
  v61 = v57 + 56;
  v62 = 1 << *(v57 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v57 + 56);
  v65 = (v62 + 63) >> 6;
  v160 = v57;

  v147 = 0;
  v66 = 0;
  v148 = MEMORY[0x277D84F98];
  v67 = v161;
  for (i = v57 + 56; v64; v61 = i)
  {
LABEL_14:
    v69 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    v70 = *(v160 + 48) + 24 * (v69 | (v66 << 6));
    v72 = *v70;
    v71 = *(v70 + 8);
    v73 = *(v70 + 16);
    sub_226EB396C(*v70, v71, *(v70 + 16));
    v74 = sub_2276672C0();
    if (!*(v74 + 16))
    {
      sub_226EB2DFC(v72, v71, v73);
LABEL_22:

      goto LABEL_23;
    }

    v75 = sub_226F491D8(v72, v71, v73);
    v77 = v76;
    sub_226EB2DFC(v72, v71, v73);
    if ((v77 & 1) == 0)
    {
      goto LABEL_22;
    }

    v78 = *(v131 + 72);
    v79 = *(v74 + 56) + v78 * v75;
    v80 = v135;
    sub_226E93170(v79, v135, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v147);
    v81 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v81;
    v84 = sub_226F3ADC4(v80);
    v85 = v81[2];
    v86 = (v83 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      goto LABEL_49;
    }

    v88 = v83;
    if (v81[3] >= v87)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v91 = v163;
        if ((v83 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_226FF2414();
        v91 = v163;
        if ((v88 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v87, isUniquelyReferenced_nonNull_native);
      v89 = sub_226F3ADC4(v135);
      if ((v88 & 1) != (v90 & 1))
      {
        goto LABEL_52;
      }

      v84 = v89;
      v91 = v163;
      if ((v88 & 1) == 0)
      {
LABEL_27:
        v92 = v91;
        sub_227444F98(&v163);
        v93 = v163;
        v92[(v84 >> 6) + 8] |= 1 << v84;
        sub_226E93170(v135, v92[6] + v84 * v78, &qword_27D7B88C0, &unk_22767A720);
        *(v92[7] + 8 * v84) = v93;
        v94 = v92[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          goto LABEL_51;
        }

        v91 = v92;
        v92[2] = v96;
      }
    }

    v148 = v91;
    v97 = v91[7];
    v98 = *(v97 + 8 * v84);
    v95 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (v95)
    {
      goto LABEL_50;
    }

    *(v97 + 8 * v84) = v99;
    sub_226E97D1C(v135, &qword_27D7B88C0, &unk_22767A720);
    v147 = sub_227444F98;
LABEL_23:
    v67 = v161;
  }

  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v68 >= v65)
    {

      v100 = v155;
      v102 = v150;
      v101 = v151;
      *&v151[*(v155 + 44)] = v148;
      v103 = sub_22746B5DC(v102);

      (*(v156 + 8))(v162, v157);
      (*(v153 + 8))(v152, v154);
      *(v101 + *(v100 + 68)) = v103;
      v104 = v142;
      sub_227442570(v101, v142);
      sub_226EA9E3C(v147);
      v105 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
      v106 = *(v104 + *(v100 + 24));
      v107 = sub_226F4D188(&unk_283A927A8);
      sub_226E97D1C(&unk_283A927C8, &qword_27D7B8560, &unk_227671560);
      v108 = sub_2270356EC(v106, v107);

      v109 = sub_227668780();
      if (v109 == sub_227668780() && (v108 & 1) != 0)
      {
        v110 = *(v158 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_focusUtils);
        v111 = v137;
        v112 = v140;
        sub_227454B28(v137, v104);
        v113 = v112;
        v114 = v143;
        v115 = v141;
        if (!v112)
        {
          sub_227442570(v111, v136);
LABEL_45:
          WorkoutPlanGenerationScaffold.prettyPrint()();

          sub_227442514(v104);
          return;
        }
      }

      else
      {
        v116 = v138;
        v117 = v158;
        v118 = v140;
        sub_227437F54(v67, v104, v138, v105);
        v113 = v118;
        v114 = v143;
        v115 = v141;
        if (!v118)
        {
          v128 = *(v117 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_focusUtils);
          sub_227454D9C(v67, v116, v136);
          sub_227442514(v67);
          goto LABEL_45;
        }
      }

      v163 = v113;
      v119 = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
      v120 = v139;
      if (swift_dynamicCast())
      {
        if ((*(v114 + 88))(v115, v120) == *MEMORY[0x277D511D0])
        {

          v121 = v134;
          sub_22766A630();
          v122 = sub_22766B380();
          v123 = sub_22766C890();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&dword_226E8E000, v122, v123, "Failed to generate scaffold", v124, 2u);
            v125 = v124;
            v121 = v134;
            MEMORY[0x22AA9A450](v125, -1, -1);
          }

          v132(v121, v149);
          sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210]);
          v126 = v139;
          swift_allocError();
          (*(v114 + 104))(v127, *MEMORY[0x277D51188], v126);
          swift_willThrow();
          goto LABEL_43;
        }

        sub_227442514(v104);
        (*(v114 + 8))(v115, v120);
      }

      else
      {
LABEL_43:

        sub_227442514(v104);
      }

      return;
    }

    v64 = *(v61 + 8 * v68);
    ++v66;
    if (v64)
    {
      v66 = v68;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_22766D220();
  __break(1u);
}