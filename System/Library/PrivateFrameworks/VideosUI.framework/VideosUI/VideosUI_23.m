uint64_t sub_1E37E262C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4176B88();
  *a1 = result;
  return result;
}

uint64_t sub_1E37E2684(uint64_t (*a1)(void))
{
  type metadata accessor for BaseImpressionManager();
  (*(**(v1 + 64) + 176))();
  v3 = a1();
  swift_unknownObjectRelease();
  return v3;
}

void sub_1E37E27E0()
{
  OUTLINED_FUNCTION_9_4();
  v161 = v4;
  v163 = v5;
  v7 = v6;
  LODWORD(v162) = v8;
  v156 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v146 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v146 - v16;
  sub_1E4202434();
  OUTLINED_FUNCTION_0_10();
  v157 = v19;
  v158 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v155 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB10);
  OUTLINED_FUNCTION_0_10();
  v149 = v22;
  v150 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v159 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v151 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB20);
  OUTLINED_FUNCTION_0_10();
  v152 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v160 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB28);
  OUTLINED_FUNCTION_0_10();
  v154 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v153 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB30);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v165 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  v164 = v146 - v40;
  if ((v162 & 1) == 0)
  {
    memcpy(v173, v163, sizeof(v173));
    nullsub_1(v56, v57);
    memcpy(v174, v173, sizeof(v174));
    sub_1E3A546A4(v7, v174, 0, 0, v13);
    v58 = *(v7 + 16);
    v59 = *(v7 + 24);
    v60 = &v13[*(v10 + 52)];
    *v60 = v58;
    *(v60 + 1) = v59;
    sub_1E3743538(v13, v17, &qword_1ECF2AB00);
    swift_storeEnumTagMultiPayload();
    v61 = sub_1E37E6B84();

    *&v172[0] = v25;
    *(&v172[0] + 1) = v61;
    OUTLINED_FUNCTION_2_2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v172[0] = v28;
    *(&v172[0] + 1) = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_15_33();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_69();
    sub_1E374AD40(v63, &qword_1ECF2AB00);
    sub_1E4201F44();
    v64 = OUTLINED_FUNCTION_57();
    sub_1E325F69C(v64, v65);
    goto LABEL_29;
  }

  v41 = v14;
  v42 = v163;
  v162 = v25;
  v146[0] = v28;
  v146[1] = v41;
  v147 = v17;
  v148 = v10;
  OUTLINED_FUNCTION_26();
  v44 = (*(v43 + 392))();
  if (v44 && (OUTLINED_FUNCTION_12_6(), v46 = *(v45 + 1176), v47 = , v48 = v46(v47), v50 = v49, , (v50 & 1) == 0))
  {
    v55 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26();
    v52 = (*(v51 + 1040))();
    if (v52)
    {
      v53 = v52;
      if (sub_1E32AE9B0(v52))
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v53);
        }

        else
        {
          if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }
        }

        v174[3] = &unk_1F5D5D888;
        v174[4] = &off_1F5D5C918;
        LOBYTE(v174[0]) = 2;
        v48 = sub_1E39C2AB0(v174);
        v55 = v54;

        __swift_destroy_boxed_opaque_existential_1(v174);
        goto LABEL_14;
      }
    }

    v48 = 0;
    v55 = 1;
  }

LABEL_14:
  type metadata accessor for ViewModel();
  sub_1E40B99B8();
  if (v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v66);
  v146[-6] = v48;
  LOBYTE(v146[-5]) = v55 & 1;
  v146[-4] = v67;
  v146[-3] = v42;
  v144 = v44;
  sub_1E4202704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB68);
  sub_1E37E6CD4();
  sub_1E4200AD4();

  if (v44 && (OUTLINED_FUNCTION_12_6(), v69 = *(v68 + 152), v70 = , v69(v174, v70), v0 = v174[0], v1 = v174[1], v2 = v174[2], v3 = v174[3], , (v174[4] & 1) == 0))
  {
    v71.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v71, v72, v73, v74);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v75 = v151;
  v163 = v44;
  v76 = sub_1E4202734();
  v77 = (*(v149 + 32))(v75, v159, v150);
  v78 = v75 + *(v162 + 36);
  *v78 = v76;
  *(v78 + 8) = v0;
  *(v78 + 16) = v1;
  *(v78 + 24) = v2;
  *(v78 + 32) = v3;
  *(v78 + 40) = 0;
  if ((*(*v7 + 624))(v77))
  {
    OUTLINED_FUNCTION_30();
    v80 = (*(v79 + 392))();
  }

  else
  {
    v80 = 0;
  }

  v81 = v155;
  v82 = sub_1E37E6B84();
  sub_1E38838AC(v80, 2u, 2, v82, v160);

  sub_1E325F69C(v75, &qword_1ECF2AB18);
  sub_1E4201F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB88);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1E4299720;
  v84 = sub_1E4202704();
  *(v83 + 32) = v84;
  v85 = sub_1E42026E4();
  *(v83 + 33) = v85;
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v84)
  {
    sub_1E42026F4();
  }

  sub_1E42026F4();
  if (sub_1E42026F4() != v85)
  {
    sub_1E42026F4();
  }

  v86 = v147;
  *&v173[0] = v162;
  *(&v173[0] + 1) = v82;
  OUTLINED_FUNCTION_2_2();
  v87 = swift_getOpaqueTypeConformance2();
  v88 = v153;
  v89 = v146[0];
  v90 = v160;
  sub_1E4203084();
  (*(v157 + 8))(v81, v158);
  (*(v152 + 8))(v90, v89);
  v91 = v154;
  (*(v154 + 16))(v86, v88, v32);
  swift_storeEnumTagMultiPayload();
  *&v173[0] = v89;
  *(&v173[0] + 1) = v87;
  OUTLINED_FUNCTION_15_33();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_69();
  sub_1E374AD40(v92, v93);
  OUTLINED_FUNCTION_43_11();
  sub_1E4201F44();

  (*(v91 + 8))(v88, v32);
LABEL_29:
  v94 = v161;
  v95 = *(v161 + 48);
  if (!v95)
  {
LABEL_33:
    v148 = 0;
    v149 = 0;
    goto LABEL_34;
  }

  *(&v173[1] + 1) = &unk_1F5D5DAC8;
  *&v173[2] = &off_1F5D5C998;
  LOBYTE(v173[0]) = 19;

  v96 = j__OUTLINED_FUNCTION_18();
  v97 = sub_1E39C29F0(v173, v96 & 1);
  __swift_destroy_boxed_opaque_existential_1(v173);
  if ((v97 & 1) == 0)
  {

    goto LABEL_33;
  }

  v98 = sub_1E3F864C8(v95);
  v149 = v99;

  v148 = v98;

LABEL_34:
  if (*(v94 + 56))
  {
    v163 = sub_1E4201D44();
    v171 = 0;
    v162 = sub_1E4203684();
    sub_1E4203DA4();
    sub_1E4200D94();
    *(v166 + 6) = v176;
    *(&v166[1] + 6) = v177;
    *(&v166[2] + 6) = v178;
    sub_1E4201C14();
    v145 = 256;
    v144 = 0;
    v100 = sub_1E4202C24();
    v102 = v101;
    v104 = v103;
    sub_1E4202A64();
    sub_1E4202C04();
    v160 = v105;

    sub_1E37434B8(v100, v102, v104 & 1);

    *&v173[0] = sub_1E4203684();
    v106 = sub_1E4202BA4();
    v108 = v107;
    v110 = v109;
    v161 = v111;
    v112 = OUTLINED_FUNCTION_75();
    sub_1E37434B8(v112, v113, v114);

    v115 = v162;
    *&v172[0] = v162;
    WORD4(v172[0]) = 256;
    *(v172 + 10) = v166[0];
    *(&v172[1] + 10) = v166[1];
    *(&v172[2] + 10) = v166[2];
    *(&v172[3] + 1) = *(&v166[2] + 14);
    v175 = v110 & 1;
    v169 = v172[2];
    v170 = v172[3];
    v167 = v172[0];
    v168 = v172[1];
    sub_1E3743538(v172, v173, &qword_1ECF2ABA8);
    v116 = OUTLINED_FUNCTION_39_0();
    sub_1E37E6F1C(v116, v117, v110 & 1);
    v118 = v161;

    v119 = OUTLINED_FUNCTION_39_0();
    sub_1E37434B8(v119, v120, v110 & 1);

    *&v173[0] = v115;
    WORD4(v173[0]) = 256;
    *(v173 + 10) = v166[0];
    *(&v173[1] + 10) = v166[1];
    *(&v173[2] + 10) = v166[2];
    *(&v173[3] + 1) = *(&v166[2] + 14);
    sub_1E325F69C(v173, &qword_1ECF2ABA8);
    v172[0] = v167;
    v172[1] = v168;
    v172[2] = v169;
    v172[3] = v170;
    *&v172[4] = v106;
    *(&v172[4] + 1) = v108;
    LOBYTE(v172[5]) = v110 & 1;
    DWORD1(v172[5]) = *(&v176 + 3);
    *(&v172[5] + 1) = v176;
    *(&v172[5] + 1) = v118;
    v173[2] = v169;
    v173[3] = v170;
    v173[0] = v167;
    v173[1] = v168;
    *&v173[4] = v106;
    *(&v173[4] + 1) = v108;
    LOBYTE(v173[5]) = v110 & 1;
    DWORD1(v173[5]) = *(&v176 + 3);
    *(&v173[5] + 1) = v176;
    *(&v173[5] + 1) = v118;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v121, v122, v123);
    sub_1E325F69C(v173, &unk_1ECF2AB60);
    v124 = *(&v172[0] + 1);
    v125 = *&v172[0];
    v154 = *(&v172[1] + 1);
    v155 = *&v172[1];
    v152 = *(&v172[2] + 1);
    v153 = *&v172[2];
    v161 = *(&v172[3] + 1);
    v162 = *&v172[3];
    v159 = *(&v172[4] + 1);
    v160 = *&v172[4];
    v157 = *(&v172[5] + 1);
    v158 = *&v172[5];
    v126 = v171;
  }

  else
  {
    v162 = 0;
    v163 = 0;
    v125 = 0;
    v124 = 0;
    v154 = 0;
    v155 = 0;
    v152 = 0;
    v153 = 0;
    v160 = 0;
    v161 = 0;
    v158 = 0;
    v159 = 0;
    v157 = 0;
    v126 = 0;
  }

  v151 = v126;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v127, v128, v129);
  v130 = v156;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v131, v132, v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB50);
  v135 = (v130 + *(v134 + 48));
  v136 = v149;
  *v135 = v148;
  v135[1] = v136;
  v150 = *(v134 + 64);
  v172[0] = v163;
  *&v172[1] = v126;
  *(&v172[1] + 1) = v125;
  v137 = v154;
  v138 = v155;
  *&v172[2] = v124;
  *(&v172[2] + 1) = v155;
  v140 = v152;
  v139 = v153;
  *&v172[3] = v154;
  *(&v172[3] + 1) = v153;
  *&v172[4] = v152;
  *(&v172[4] + 1) = v162;
  *&v172[5] = v161;
  *(&v172[5] + 1) = v160;
  *&v172[6] = v159;
  *(&v172[6] + 1) = v158;
  *&v172[7] = v157;
  v141 = OUTLINED_FUNCTION_57();
  sub_1E37E6C3C(v141);
  sub_1E3743538(v172, v173, &qword_1ECF2AB58);
  v142 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v142);
  memcpy((v130 + v150), v172, 0x78uLL);
  sub_1E325F69C(v164, &qword_1ECF2AB30);
  v173[0] = v163;
  *&v173[1] = v151;
  *(&v173[1] + 1) = v125;
  *&v173[2] = v124;
  *(&v173[2] + 1) = v138;
  *&v173[3] = v137;
  *(&v173[3] + 1) = v139;
  *&v173[4] = v140;
  *(&v173[4] + 1) = v162;
  *&v173[5] = v161;
  *(&v173[5] + 1) = v160;
  *&v173[6] = v159;
  *(&v173[6] + 1) = v158;
  *&v173[7] = v157;
  sub_1E325F69C(v173, &qword_1ECF2AB58);
  v143 = OUTLINED_FUNCTION_57();
  sub_1E37E6C80(v143);
  sub_1E325F69C(v165, &qword_1ECF2AB30);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37E36F8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v22 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB80);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  *v0 = sub_1E4201D44();
  *(v0 + 8) = v10;
  *(v0 + 16) = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB90);
  v25 = v6;
  swift_getKeyPath();
  v14 = swift_allocObject();
  memcpy((v14 + 16), v4, 0x150uLL);

  sub_1E37E6E1C(v4, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB98);
  sub_1E374AD40(&qword_1EE23B548, &unk_1ECF2C790);
  sub_1E375BEF4();
  sub_1E37E6E78();
  v15 = sub_1E4203B34();
  if (v2 && ((*(*v2 + 176))(v23, v15), (v24 & 1) == 0))
  {
    v18.n128_u64[0] = v23[2];
    v19.n128_u64[0] = v23[3];
    v16.n128_u64[0] = v23[0];
    v17.n128_u64[0] = v23[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202734();
  sub_1E3741EA0(v0, v22, &qword_1ECF2AB80);
  v21 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB68) + 36));
  *v21 = v20;
  OUTLINED_FUNCTION_11_4(v21);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37E3944()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA00);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  v7 = v0[1];
  v8 = (*(*v7 + 464))();
  v9 = MEMORY[0x1E69E7CC0];
  v53 = v2;
  if (v8)
  {
    v10 = v8;
    v51 = v7;
    v52 = v1;
    v56 = MEMORY[0x1E69E7CC0];
    v54 = sub_1E32AE9B0(v8);
    sub_1E37E6500(v2, v55);
    sub_1E37E6500(v2, v55);
    for (i = 0; ; ++i)
    {
      if (v54 == i)
      {
        v2 = v53;
        sub_1E37E6F80(v53);

        sub_1E37E6F80(v53);
        v9 = v56;
        v1 = v52;
        v7 = v51;
        goto LABEL_36;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v12 = *(v10 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v13 = objc_opt_self();
      v14 = [v13 sharedInstance];
      v15 = [v14 multiviewPlayerCount];

      v16 = [v13 sharedInstance];
      v17 = [v16 maxMultiviewPlayerCount];

      v18 = (*(*v12 + 544))();
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = [v18 selectEventDataSource];

      if (!v20)
      {
        v19 = 0;
        goto LABEL_15;
      }

      v19 = [v20 action];

      if (!v19)
      {
        break;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      v22 = v21;
      if (v21)
      {
        v23 = [v21 playType];
        v20 = sub_1E4205F14();
        v19 = v24;
      }

      else
      {

        v20 = 0;
        v19 = 0;
      }

LABEL_16:
      v25 = sub_1E4205F14();
      if (!v19)
      {

        goto LABEL_27;
      }

      if (v20 == v25 && v19 == v26)
      {
      }

      else
      {
        v28 = sub_1E42079A4();

        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v15 == v17)
      {

LABEL_29:

        continue;
      }

LABEL_27:
      v55[3] = &unk_1F5D5D0A8;
      v55[4] = &off_1F5D5C758;
      LOBYTE(v55[0]) = 16;
      v29 = j__OUTLINED_FUNCTION_18();
      v30 = sub_1E39C29F0(v55, v29 & 1);
      __swift_destroy_boxed_opaque_existential_1(v55);
      if (v30)
      {
        v31 = sub_1E3C0EF18();

        if (v31)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    v20 = 0;
LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

LABEL_36:
  v32 = (*(*v7 + 392))();
  memcpy(v55, v2, sizeof(v55));
  sub_1E37E6668();
  v33 = sub_1E3884090(v32);
  if (v32)
  {
    OUTLINED_FUNCTION_26();
    v35 = *(v34 + 1152);

    v37 = v35(v36);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 1;
  }

  *v1 = v33;
  *(v1 + 8) = v37;
  *(v1 + 16) = v39 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABB8);
  v40 = sub_1E32AE9B0(v9);
  if (v40 < 0)
  {
    goto LABEL_47;
  }

  v56 = 0;
  v57 = v40;
  swift_getKeyPath();
  OUTLINED_FUNCTION_64_4();
  v41 = swift_allocObject();
  *(v41 + 16) = v9;
  memcpy((v41 + 24), v53, 0x48uLL);

  sub_1E37E6500(v53, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABC0);
  sub_1E37432DC();
  sub_1E37E6FBC();
  sub_1E4203B34();

  if (v32 && (OUTLINED_FUNCTION_26(), v43 = *(v42 + 176), v44 = , v43(v55, v44), , (v55[4] & 1) == 0))
  {
    v45.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v45, v46, v47, v48);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v49 = sub_1E4202734();

  sub_1E3741EA0(v1, v4, &qword_1ECF2AA00);
  v50 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9F0) + 36));
  *v50 = v49;
  OUTLINED_FUNCTION_11_4(v50);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E37E402C(void *a1, void *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (*a1 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:*a2 object:0];
}

void sub_1E37E40D0()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC00);
  OUTLINED_FUNCTION_0_10();
  v27 = v11;
  v28 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = *v7;
  sub_1E34AF4E4(v13, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E6911E60](v13, v5);
  }

  else
  {
    v14 = *(v5 + 8 * v13 + 32);
  }

  sub_1E37E435C(v14, v3, v1);
  OUTLINED_FUNCTION_26();
  v15 += 49;
  v16 = *v15;
  v17 = (*v15)();
  v18 = sub_1E37E69A8(&qword_1ECF2ABD8, &qword_1ECF2ABD0, &unk_1E429EC08, sub_1E37E70B8);
  sub_1E38838AC(v17, 2u, 2, v18, v0);

  v19 = sub_1E325F69C(v1, &qword_1ECF2ABD0);
  if ((v16)(v19) && (OUTLINED_FUNCTION_30(), (*(v20 + 152))(&v30), , (v31 & 1) == 0))
  {
    v21.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v21, v22, v23, v24);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v25 = sub_1E4202734();

  (*(v27 + 32))(v29, v0, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABC0);
  OUTLINED_FUNCTION_40_12();
  *v26 = v25;
  OUTLINED_FUNCTION_11_4(v26);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E37E435C@<X0>(__int16 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v87 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v76 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v80 = v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC08);
  OUTLINED_FUNCTION_0_10();
  v78 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v77 = v10;
  sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v82 = v12;
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v81 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v73 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC10);
  OUTLINED_FUNCTION_0_10();
  v75 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v74 = v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_31_2();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ABF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - v35;
  v37 = a1;
  if (sub_1E385051C(a1[49]))
  {
    v38 = swift_allocObject();
    v39 = v79;
    memcpy((v38 + 16), v79, 0x48uLL);
    sub_1E37E6500(v39, v90);
    sub_1E3EC24F4(v37, 0, sub_1E37E7270, v38);

    (*(v33 + 16))(v3, v36, v31);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_30();
    v40 = sub_1E37E6538();
    *v90 = &unk_1F5D57900;
    *&v90[8] = v40;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_39_0();
    sub_1E4201F44();
    sub_1E3743538(v30, v25, &qword_1ECF2ABF8);
    swift_storeEnumTagMultiPayload();
    sub_1E37E71A0();
    v41 = OUTLINED_FUNCTION_18_2();
    *v90 = v89;
    *&v90[8] = v41;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_44_17();
    sub_1E4201F44();
    sub_1E325F69C(v30, &qword_1ECF2ABF8);
    return (*(v33 + 8))(v36, v31);
  }

  else
  {
    v70 = v26;
    v71 = v3;
    v72 = v31;
    v79 = v30;
    v43 = v84;
    v44 = v89;
    if (sub_1E373F6E0())
    {
      *v90 = a1;
      v45 = *(*a1 + 576);

      if (v45(v46))
      {
        OUTLINED_FUNCTION_30();
        (*(v47 + 224))();
      }

      else
      {
        v53 = sub_1E4204724();
        __swift_storeEnumTagSinglePayload(v19, 1, 1, v53);
      }

      v54 = v43;
      v55 = sub_1E37E6538();
      v56 = v81;
      sub_1E3B29C44();
      v57 = v74;
      sub_1E3B29C48();
      (*(v82 + 8))(v56, v83);
      sub_1E325F69C(v19, &qword_1ECF2B7B0);

      v58 = v75;
      (*(v75 + 16))(v71, v57, v54);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_3_30();
      *v90 = &unk_1F5D57900;
      *&v90[8] = v55;
      swift_getOpaqueTypeConformance2();
      v59 = v79;
      sub_1E4201F44();
      sub_1E3743538(v59, v25, &qword_1ECF2ABF8);
      swift_storeEnumTagMultiPayload();
      sub_1E37E71A0();
      v60 = OUTLINED_FUNCTION_18_2();
      *v90 = v89;
      *&v90[8] = v60;
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_44_17();
      sub_1E4201F44();
      sub_1E325F69C(v59, &qword_1ECF2ABF8);
      return (*(v58 + 8))(v57, v54);
    }

    else
    {
      memset(v90, 0, sizeof(v90));
      v91 = 1;
      v48 = sub_1E382A9B4(a1, v90, 0, v80);
      v49 = v44;
      if ((*(*v37 + 576))(v48))
      {
        OUTLINED_FUNCTION_30();
        v51 = v73;
        (*(v50 + 224))();
        v52 = v51;
      }

      else
      {
        v61 = sub_1E4204724();
        v52 = v73;
        __swift_storeEnumTagSinglePayload(v73, 1, 1, v61);
      }

      v62 = v88;
      v63 = v25;
      v64 = OUTLINED_FUNCTION_18_2();
      v65 = v81;
      sub_1E3B29C44();
      v66 = v77;
      OUTLINED_FUNCTION_57();
      v67 = v52;
      v68 = v80;
      sub_1E3B29C48();
      (*(v82 + 8))(v65, v83);
      sub_1E325F69C(v67, &qword_1ECF2B7B0);
      (*(v76 + 8))(v68, v49);
      v69 = v78;
      (*(v78 + 16))(v63, v66, v62);
      swift_storeEnumTagMultiPayload();
      sub_1E37E71A0();
      v92 = v49;
      v93 = v64;
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_43_11();
      sub_1E4201F44();
      return (*(v69 + 8))(v66, v62);
    }
  }
}

uint64_t sub_1E37E4D10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    result = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1E37E4FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*(*a1 + 392))();
  v26 = &unk_1F5D5E338;
  v27 = &off_1F5D5CB78;
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E39C29F0(&v23, v5 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  if (v6)
  {
    v23 = a1;
    sub_1E37E6538();
    v7 = sub_1E3884090(v4);
    if (v4)
    {
      OUTLINED_FUNCTION_12_6();
      v9 = *(v8 + 1176);

      v11 = v9(v10);
      LOBYTE(v9) = v12;

      if (v9)
      {
        OUTLINED_FUNCTION_12_6();
        v11 = (*(v13 + 1152))();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v11 = 0;
      v14 = 1;
    }

    v23 = v7;
    v24 = v11;
    v25 = v14 & 1;
    sub_1E37E65E0();
  }

  else
  {
    v23 = a1;
    sub_1E37E6538();
    v15 = sub_1E3884154(v4);
    if (v4)
    {
      OUTLINED_FUNCTION_12_6();
      v17 = *(v16 + 1152);

      v19 = v17(v18);
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 1;
    }

    v23 = v15;
    v24 = v19;
    v25 = v21 & 1;
    sub_1E37E658C();
  }

  *a2 = sub_1E4203E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA68);

  sub_1E37E523C(a1);
}

uint64_t sub_1E37E523C(uint64_t a1)
{
  v2 = (*(*a1 + 464))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1E37E53C4();
  result = sub_1E32AE9B0(v3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4 & 1;
    *(v6 + 32) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
    v7 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    sub_1E37432DC();
    sub_1E374AD40(&qword_1ECF2AA80, &unk_1ECF2AA78);
    return sub_1E4203B34();
  }

  return result;
}

uint64_t sub_1E37E53C4()
{
  v3 = &unk_1F5D5DAC8;
  v4 = &off_1F5D5C998;
  v2[0] = 13;
  sub_1E37E6ADC();
  sub_1E39C2B80();
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (v5 == 8)
  {
    v0 = 0;
  }

  else
  {
    v2[0] = v5;
    sub_1E37E6B30();
    v0 = sub_1E4205E84();
  }

  return v0 & 1;
}

void sub_1E37E5474()
{
  OUTLINED_FUNCTION_9_4();
  v58 = v1;
  v3 = v2;
  v5 = v4;
  v61 = v6;
  v66 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v57 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v56 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAB8);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v60 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v53 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAC8);
  OUTLINED_FUNCTION_0_10();
  v63 = v17;
  v64 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v68 = v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v59 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  v28 = *v5;
  sub_1E34AF4E4(*v5, (v3 & 0xC000000000000001) == 0, v3);
  v55 = v3;
  v65 = v27;
  v54 = v28;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1E6911E60](v28, v3);
  }

  else
  {
    v29 = *(v3 + 8 * v28 + 32);
  }

  v30 = sub_1E37E59F0(v29);
  v31 = (*v29 + 392);
  v32 = *v31;
  v33 = (*v31)(v30);
  v34 = sub_1E37E69A8(&qword_1ECF2AAD8, &qword_1ECF2AAC0, &unk_1E429EAF8, sub_1E37E6A20);
  sub_1E38838AC(v33, 2u, 2, v34, v68);

  v35 = sub_1E325F69C(v0, &qword_1ECF2AAC0);
  if (v32(v35) && (OUTLINED_FUNCTION_30(), (*(v36 + 152))(&v69), , (v70 & 1) == 0))
  {
    v37.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v37, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v41 = v65;
  v42 = sub_1E4202734();
  (*(v63 + 32))(v24, v68, v64);
  v43 = &v24[*(v62 + 36)];
  *v43 = v42;
  OUTLINED_FUNCTION_11_4(v43);
  sub_1E3741EA0(v24, v41, &qword_1ECF2AAD0);
  if (sub_1E39DFFC8())
  {
    v44 = 1;
    v45 = v66;
    v46 = v67;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v46, v44, 1, v45);
    v49 = v59;
    sub_1E3743538(v41, v59, &qword_1ECF2AAD0);
    v50 = v60;
    sub_1E3743538(v46, v60, &qword_1ECF2AAB8);
    v51 = v61;
    sub_1E3743538(v49, v61, &qword_1ECF2AAD0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAF0);
    sub_1E3743538(v50, v51 + *(v52 + 48), &qword_1ECF2AAB8);

    sub_1E325F69C(v46, &qword_1ECF2AAB8);
    sub_1E325F69C(v41, &qword_1ECF2AAD0);
    sub_1E325F69C(v50, &qword_1ECF2AAB8);
    sub_1E325F69C(v49, &qword_1ECF2AAD0);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  v45 = v66;
  v46 = v67;
  if ((v58 & 1) == 0)
  {
    goto LABEL_12;
  }

  v47 = sub_1E32AE9B0(v55);
  if (!__OFSUB__(v47, 1))
  {
    if (v54 < v47 - 1)
    {
LABEL_13:
      v48 = v56;
      sub_1E4203B04();
      (*(v57 + 32))(v46, v48, v45);
      v44 = 0;
      goto LABEL_15;
    }

LABEL_12:
    if ((sub_1E37E53C4() & 1) == 0)
    {
      v44 = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1E37E59F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AAF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19[-v14];
  if (sub_1E385051C(*(a1 + 98)))
  {
    sub_1E3EC24F4(a1, 0, 0, 0);
    (*(v12 + 16))(v1, v15, v10);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_31_11();
    sub_1E4201F44();
    return (*(v12 + 8))(v15, v10);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1;
    sub_1E382A9B4(a1, v19, 0, v8);
    v17 = OUTLINED_FUNCTION_75();
    v18(v17);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_31_11();
    sub_1E4201F44();
    return (*(v5 + 8))(v8, v3);
  }
}

unint64_t sub_1E37E5C70(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470);
  v2 = sub_1E4207744();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1E3743538(v6, &v15, &qword_1ECF2ABB0);
    v7 = v15;
    v8 = v16;
    result = sub_1E327D33C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1E329504C(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1E37E5DC4()
{
  sub_1E37E3944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9D0);
  OUTLINED_FUNCTION_40_12();
  *v0 = sub_1E37E3FDC;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9B8);
  OUTLINED_FUNCTION_40_12();
  *v1 = 0;
  v1[1] = 0;
  v1[2] = sub_1E37E4004;
  v1[3] = 0;
}

unint64_t sub_1E37E5E4C()
{
  result = qword_1ECF2A9C0;
  if (!qword_1ECF2A9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9B8);
    sub_1E37E5ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A9C0);
  }

  return result;
}

unint64_t sub_1E37E5ED8()
{
  result = qword_1ECF2A9C8;
  if (!qword_1ECF2A9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9D0);
    sub_1E37E69A8(&qword_1ECF2A9D8, &unk_1ECF2A9E0, &unk_1E429E898, sub_1E37E5F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A9C8);
  }

  return result;
}

unint64_t sub_1E37E5F90()
{
  result = qword_1ECF2A9E8;
  if (!qword_1ECF2A9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9F0);
    sub_1E374AD40(&qword_1ECF2A9F8, &qword_1ECF2AA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A9E8);
  }

  return result;
}

unint64_t sub_1E37E6048()
{
  result = qword_1ECF2AA08;
  if (!qword_1ECF2AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A980);
    sub_1E374AD40(&qword_1ECF2AA10, &unk_1ECF2AA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA08);
  }

  return result;
}

unint64_t sub_1E37E60F8()
{
  result = qword_1ECF2AA20;
  if (!qword_1ECF2AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A9B0);
    sub_1E374AD40(&qword_1ECF2AA28, &unk_1ECF2A9A8);
    sub_1E374AD40(&qword_1ECF2AA30, &unk_1ECF2AA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA20);
  }

  return result;
}

unint64_t sub_1E37E61DC()
{
  result = qword_1ECF2AA40;
  if (!qword_1ECF2AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A980);
    sub_1E37E6048();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1ECF2AA48, &unk_1ECF2AA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA40);
  }

  return result;
}

void sub_1E37E6314()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  sub_1E4200E64();
  v3 = v2;
  sub_1E4200E44();
  v5 = v3 + v4;
  sub_1E4200E44();
  *&v7 = v5 + v6;
  sub_1E4200E64();
  v9 = v8;
  j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_20();
  v10 = OUTLINED_FUNCTION_37_13();
  sub_1E3EB9C0C(v10, v11, v12, v7, v9, 0, v13, 2, v14, v40, 1, 0, 1, v41, v42[0], v42[1], v42[2]);
  sub_1E375C2C0(v45, __src);
  LOBYTE(v9) = j__OUTLINED_FUNCTION_18();
  v15 = j__OUTLINED_FUNCTION_18();
  v43 = j__OUTLINED_FUNCTION_51_1() & 1;
  OUTLINED_FUNCTION_18_15();
  OUTLINED_FUNCTION_48_13(v16, v17, v18, v19, v20, 1, 0, 0, 256, 3, 0, v9 & 1, v15 & 1, v43);
  v21 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v9) = j__OUTLINED_FUNCTION_18();
  j_j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  j__OUTLINED_FUNCTION_51_1();
  v22 = j__OUTLINED_FUNCTION_18();
  v23 = sub_1E3CBD2B8();
  v24 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EBA150(v25, v26, v27, v28, v21, v9, 0, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, 0, 1, v22 & 1, v23, v24 & 1);
  sub_1E375C31C(v45);
  memcpy(__dst, __src, 0x150uLL);
  *v1 = sub_1E4203D94();
  v1[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA58);
  sub_1E37E27E0();
  sub_1E375B760(__dst);
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E37E6538()
{
  result = qword_1ECF2AA60;
  if (!qword_1ECF2AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA60);
  }

  return result;
}

unint64_t sub_1E37E658C()
{
  result = qword_1EE289DC8;
  if (!qword_1EE289DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289DC8);
  }

  return result;
}

unint64_t sub_1E37E65E0()
{
  result = qword_1ECF2AA70;
  if (!qword_1ECF2AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA70);
  }

  return result;
}

unint64_t sub_1E37E6640(uint64_t a1)
{
  result = sub_1E37E6668();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37E6668()
{
  result = qword_1EE24EBC0;
  if (!qword_1EE24EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24EBC0);
  }

  return result;
}

uint64_t sub_1E37E6700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E37E6740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E37E67B4()
{
  result = qword_1ECF2AA88;
  if (!qword_1ECF2AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AA90);
    sub_1E37E60F8();
    sub_1E37E61DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA88);
  }

  return result;
}

unint64_t sub_1E37E6840()
{
  result = qword_1ECF2AA98;
  if (!qword_1ECF2AA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AA68);
    sub_1E374AD40(&qword_1EE289DD0, &unk_1ECF2AAA0);
    sub_1E37E68F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AA98);
  }

  return result;
}

unint64_t sub_1E37E68F8()
{
  result = qword_1ECF2AAA8;
  if (!qword_1ECF2AAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AAB0);
    sub_1E374AD40(&qword_1ECF2AA80, &unk_1ECF2AA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AAA8);
  }

  return result;
}

uint64_t sub_1E37E69A8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37E6A20()
{
  result = qword_1ECF2AAE0;
  if (!qword_1ECF2AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AAE8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AAE0);
  }

  return result;
}

unint64_t sub_1E37E6ADC()
{
  result = qword_1EE259C48;
  if (!qword_1EE259C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C48);
  }

  return result;
}

unint64_t sub_1E37E6B30()
{
  result = qword_1EE259C50;
  if (!qword_1EE259C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C50);
  }

  return result;
}

unint64_t sub_1E37E6B84()
{
  result = qword_1ECF2AB38;
  if (!qword_1ECF2AB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB18);
    sub_1E374AD40(&qword_1ECF2AB40, &unk_1ECF2AB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AB38);
  }

  return result;
}

uint64_t sub_1E37E6C3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E37E6C80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1E37E6CD4()
{
  result = qword_1ECF2AB70;
  if (!qword_1ECF2AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB68);
    sub_1E374AD40(&qword_1ECF2AB78, &qword_1ECF2AB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AB70);
  }

  return result;
}

__n128 sub_1E37E6D8C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, (v2 + 16), 0xC3uLL);
  sub_1E40EA03C(v4, __dst, 0, 0, a2);
  LOBYTE(v4) = sub_1E4202734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB98);
  OUTLINED_FUNCTION_40_12();
  *v5 = v4;
  result = *(v2 + 240);
  *(v5 + 24) = *(v2 + 256);
  *(v5 + 8) = result;
  *(v5 + 40) = 0;
  return result;
}

unint64_t sub_1E37E6E78()
{
  result = qword_1ECF2ABA0;
  if (!qword_1ECF2ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABA0);
  }

  return result;
}

uint64_t sub_1E37E6F1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E37E6FBC()
{
  result = qword_1ECF2ABC8;
  if (!qword_1ECF2ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABD0);
    sub_1E37E69A8(&qword_1ECF2ABD8, &qword_1ECF2ABD0, &unk_1E429EC08, sub_1E37E70B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABC8);
  }

  return result;
}

unint64_t sub_1E37E70B8()
{
  result = qword_1ECF2ABE0;
  if (!qword_1ECF2ABE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABE8);
    sub_1E37E71A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF289B8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABE0);
  }

  return result;
}

unint64_t sub_1E37E71A0()
{
  result = qword_1ECF2ABF0;
  if (!qword_1ECF2ABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ABF8);
    swift_getOpaqueTypeConformance2();
    sub_1E37E6538();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ABF0);
  }

  return result;
}

void sub_1E37E7270()
{
  v18 = &unk_1F5D5DAC8;
  v19 = &off_1F5D5C998;
  LOBYTE(v17[0]) = 52;
  v0 = sub_1E39C29A4(v17);
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v2)
  {
    v18 = &unk_1F5D5DAC8;
    v19 = &off_1F5D5C998;
    LOBYTE(v17[0]) = 49;
    sub_1E39C29A4(v17);
    v4 = v3;
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (v4)
    {
      v5 = [objc_opt_self() standardUserDefaults];
      v6 = sub_1E4205ED4();

      v7 = sub_1E4205ED4();
      OUTLINED_FUNCTION_43_11();
      [v8 v9];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = 0xD000000000000024;
      *(inited + 40) = 0x80000001E425DBA0;
      *(inited + 48) = v0;
      *(inited + 56) = v2;
      v11 = sub_1E4205CB4();
      v12 = [objc_opt_self() defaultCenter];
      if (qword_1ECF46D80 != -1)
      {
        OUTLINED_FUNCTION_22_16();
      }

      sub_1E37E4D10(v11);

      OUTLINED_FUNCTION_43_11();
      sub_1E37E7460(v13, v14, v15, v16);
    }

    else
    {
    }
  }
}

void sub_1E37E7460(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1E4205C44();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

void *OUTLINED_FUNCTION_48_13@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, char a6, uint64_t a7, uint64_t a8, __int16 a9, char a10, uint64_t a11, char a12, char a13, char a14)
{

  return sub_1E3EB9DAC(a1, a2, a3, a4, v14, 0, 0, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1E37E7570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;

  v20 = sub_1E40B19D4(a1, a2, a3);
  v21 = v20;
  if (!v20)
  {
    goto LABEL_10;
  }

  v30 = v15;
  LOBYTE(v35) = 1;
  v22 = *(*v20 + 776);

  v22(aBlock, &v35, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (!v32)
  {
    sub_1E329505C(aBlock);
    goto LABEL_7;
  }

  if (!swift_dynamicCast())
  {
LABEL_7:
    v23 = 0;
    goto LABEL_8;
  }

  v23 = v35;
LABEL_8:
  v35 = 0;
  v24 = sub_1E32ADE38();
  MEMORY[0x1EEE9AC00](v24);
  *(&v28 - 2) = &v35;
  sub_1E3B79200(sub_1E37E78F8, (&v28 - 4));
  if (v23 != v35)
  {
    v29 = sub_1E4206A04();
    v33 = sub_1E37E7970;
    v34 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    v32 = &block_descriptor_10;
    v25 = _Block_copy(aBlock);
    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    v26 = v29;
    MEMORY[0x1E6911380](0, v19, v12, v25);
    _Block_release(v25);

    (*(v8 + 8))(v12, v6);
    (*(v30 + 8))(v19, v13);
    return v21;
  }

LABEL_10:

  return v21;
}

void sub_1E37E78F8()
{
  v1 = *(v0 + 16);
  v2 = sub_1E3285D14();
  v3 = *((*MEMORY[0x1E69E7D40] & **v2) + 0x78);
  v4 = *v2;
  v5 = v3();

  *v1 = v5;
}

void sub_1E37E7970()
{
  v0 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  v8 = *sub_1E3FC541C();
  sub_1E41FDEF4();
  v9 = sub_1E41FDED4();
  (*(v2 + 8))(v6, v0);
  [v7 postNotification_];
}

unint64_t sub_1E37E7A8C()
{
  result = qword_1EE2882E0;
  if (!qword_1EE2882E0)
  {
    sub_1E4203FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2882E0);
  }

  return result;
}

uint64_t sub_1E37E7B14()
{
  v0 = CollectionViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 402, 7);
}

__n128 sub_1E37E7B68@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  result = *(v1 + 104);
  v5 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1E37E7BB8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

BOOL sub_1E37E7C00()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

uint64_t sub_1E37E7C60()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E37E7CDC()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E37E7D30@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E37E7C00();
  *a1 = result;
  return result;
}

unint64_t sub_1E37E7D64@<X0>(void *a1@<X8>)
{
  result = sub_1E37E7C48();
  *a1 = 0xD000000000000011;
  a1[1] = result;
  return result;
}

uint64_t sub_1E37E7DB8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1560))();
  if (sub_1E3A24FDC(v1))
  {
    return 21;
  }

  OUTLINED_FUNCTION_8();
  (*(v3 + 984))();
  OUTLINED_FUNCTION_1_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0);
  OUTLINED_FUNCTION_4_35(v4, v5, v4, v6, v7, v8);
  return v9;
}

uint64_t sub_1E37E7EB0()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  sub_1E3952C94();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_3_0();
  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  *(v0 + 120) = v6;
  *(v0 + 128) = v8;
  *(v0 + 136) = 0;
  v9 = sub_1E3C2F9A0();
  v10 = *(*v9 + 1208);

  v10(0, 0);
  (*(*v9 + 1136))(0x3FF0000000000000, 0);
  __dst[0] = 18;
  LOBYTE(__dst[1]) = 0;
  v68[0] = 21;
  LOBYTE(v68[1]) = 0;
  type metadata accessor for VUIGridStyle(0);
  v12 = v11;
  sub_1E3C3DE00(v11);
  v13 = OUTLINED_FUNCTION_0_39();
  sub_1E3C3DE00(v13);
  OUTLINED_FUNCTION_3_31();
  sub_1E3C3DE00(v12);
  *&v47 = v50;
  BYTE8(v47) = BYTE8(v50);
  sub_1E3C3DE00(v12);
  *&v41 = v44;
  BYTE8(v41) = BYTE8(v44);
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0x59uLL);
  v14 = OUTLINED_FUNCTION_18();
  v15 = *(*v9 + 1600);
  v15(__dst, 40, v14 & 1, v12);
  __dst[0] = 0;
  LOBYTE(__dst[1]) = 1;
  v68[0] = 0x407C200000000000;
  LOBYTE(v68[1]) = 0;
  *&v61 = 0x407C200000000000;
  BYTE8(v61) = 0;
  *&v59[0] = 0x4083E00000000000;
  BYTE8(v59[0]) = 0;
  *&v56 = 0x407CC00000000000;
  BYTE8(v56) = 0;
  v16 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  *&v50 = v53;
  BYTE8(v50) = BYTE8(v53);
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0x59uLL);
  v17 = OUTLINED_FUNCTION_18();
  v15(__dst, 6, v17 & 1, v16);
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E418A50C();
  }

  else
  {
    sub_1E418A530();
  }

  OUTLINED_FUNCTION_8();
  (*(v18 + 440))();
  v66 = 0;
  v67 = 1;
  v19 = TVAppFeature.isEnabled.getter(17);
  if (v19)
  {
    v20 = 0x4087700000000000;
  }

  else
  {
    v20 = 0;
  }

  __src[30] = v20;
  v65 = (v19 & 1) == 0;
  v21 = TVAppFeature.isEnabled.getter(17);
  if (v21)
  {
    v22 = 0x4087700000000000;
  }

  else
  {
    v22 = 0;
  }

  __src[0] = v22;
  LOBYTE(__src[1]) = (v21 & 1) == 0;
  __dst[0] = 0x4004BAFDC61F2A4CLL;
  LOBYTE(__dst[1]) = 0;
  v23 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v24 = OUTLINED_FUNCTION_0_39();
  sub_1E3C3DE00(v24);
  OUTLINED_FUNCTION_3_31();
  sub_1E3C2FCB8(&v66, v68);
  memcpy(__src, v68, 0x59uLL);
  v25 = OUTLINED_FUNCTION_18();
  v15(__src, 8, v25 & 1, v23);
  sub_1E3952C88();
  __dst[0] = v26;
  __dst[1] = v27;
  __dst[2] = v28;
  __dst[3] = v29;
  LOBYTE(__dst[4]) = 0;
  type metadata accessor for UIEdgeInsets();
  v31 = v30;
  sub_1E3C3DE00(v30);
  v59[0] = v61;
  v59[1] = v62;
  v60 = v63;
  sub_1E3C2FC98();
  v53 = v56;
  v54 = v57;
  v55 = v58;
  sub_1E3C3DE00(v31);
  v47 = v50;
  v48 = v51;
  v49 = v52;
  sub_1E3C3DE00(v31);
  v41 = v44;
  v42 = v45;
  v43 = v46;
  sub_1E3C3DE00(v31);
  v35 = v38;
  v36 = v39;
  v37 = v40;
  sub_1E3C2FCB8(v59, __src);
  memcpy(__dst, __src, 0xE9uLL);
  v32 = OUTLINED_FUNCTION_18();
  v15(__dst, 0, v32 & 1, v31);

  return v9;
}

uint64_t sub_1E37E83C8()
{
  sub_1E3C34E14();
  v2[3] = &type metadata for EpicShowcaseViewLayout.CarouselLayoutKeys;
  v2[4] = &off_1F5D57AA0;
  sub_1E3F9F164(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  sub_1E4148DE0(sub_1E37E8478);
  sub_1E329505C(v1);
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

__n128 sub_1E37E8478(uint64_t a1)
{
  sub_1E328438C(a1, v6);
  type metadata accessor for UIEdgeInsets();
  if (swift_dynamicCast())
  {
    v2 = 0;
    v4 = v8;
    v5 = v7;
  }

  else
  {
    (*(*v1 + 1696))(&v7);
    v4 = v8;
    v5 = v7;
    v2 = v9;
  }

  OUTLINED_FUNCTION_3_0();
  result = v4;
  *(v1 + 104) = v5;
  *(v1 + 120) = v4;
  *(v1 + 136) = v2;
  return result;
}

double sub_1E37E8538()
{
  sub_1E3C35F80();
  type metadata accessor for CarouselViewLayout();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v3 = *(*v1 + 1728);

    v3(v6, v4);

    OUTLINED_FUNCTION_3_0();
    result = *v6;
    v5 = v6[1];
    *(v0 + 104) = v6[0];
    *(v0 + 120) = v5;
    *(v0 + 136) = v7;
  }

  return result;
}

uint64_t sub_1E37E85F8()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 137, 7);
}

void sub_1E37E8628(double a1)
{
  type metadata accessor for LayoutGrid();
  v3 = sub_1E37E7DB8();
  (*(*v1 + 1200))();
  OUTLINED_FUNCTION_1_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC28);
  v9 = OUTLINED_FUNCTION_4_35(v4, v5, v4, v6, v7, v8);
  v10 = *&v12[3];
  (*(*v1 + 1128))(v9);
  OUTLINED_FUNCTION_1_32();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E4148C68(sub_1E37E8790, v11, v12);
  sub_1E3A25D00(v3, v10, a1, v12[0]);
}

uint64_t sub_1E37E879C(char a1, double a2, double a3)
{
  v6 = sub_1E37E7DB8();
  result = 0;
  if (v6 != 21 && (a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    v8 = sub_1E3A25C38(v6, 0, 1.0);
    sub_1E3AC6158(a2, a3);
    if ((v10 & 1) != 0 || v9 <= 0.0)
    {
      return 0;
    }

    else
    {
      return *&v8;
    }
  }

  return result;
}

double sub_1E37E8894(double a1)
{
  OUTLINED_FUNCTION_8();
  v3 += 38;
  v4 = *v3;
  v5 = COERCE_DOUBLE((*v3)());
  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  if (TVAppFeature.isEnabled.getter(17))
  {
    if (sub_1E37E7DB8() == 21)
    {
      v8 = COERCE_DOUBLE(v4());
      if (v9)
      {
        return 0.0;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      type metadata accessor for LayoutGrid();
      v10 = sub_1E37E7DB8();
      v11 = sub_1E3A25D00(v10, 0, a1, 1.0);
      v12 = COERCE_DOUBLE((*(*v1 + 432))());
      if (v13)
      {
        v12 = 1.0;
      }

      return v11 / v12;
    }
  }

  return v7;
}

void sub_1E37E89C8(double a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1560))();
  if (sub_1E3A2511C(v3))
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(a1);
  }
}

uint64_t getEnumTagSinglePayload for EpicShowcaseViewLayout.CarouselLayoutKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for EpicShowcaseViewLayout.CarouselLayoutKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1E37E8B80()
{
  result = qword_1ECF46E30[0];
  if (!qword_1ECF46E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46E30);
  }

  return result;
}

uint64_t sub_1E37E8BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v61 = a5;
  v62 = a6;
  v60 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v59[-v12];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v59[-v14];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v59[-v16];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  v17 = *(v69 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A950);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v59[-v28];
  v30 = *(a1 + 98);
  if (v30 > 0x31)
  {
    goto LABEL_11;
  }

  v64 = a7;
  if (((1 << v30) & 0x18DFF80000000) != 0)
  {
    v63 = v25;
    type metadata accessor for ImageViewModel();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v34 = v31;
      swift_retain_n();
      sub_1E375C2C0(a2, __src);

      sub_1E39B6564(v34, a2, a3, v60 & 1, v73);
      v35 = swift_allocObject();
      v36 = v61;
      v37 = v62;
      *(v35 + 16) = v61;
      *(v35 + 24) = v37;
      sub_1E34AF604(v36);
      sub_1E39B6C40(sub_1E37E9448, v35, __src);

      sub_1E37E9478(v73);
      memcpy(v23, __src, 0x98uLL);
      swift_storeEnumTagMultiPayload();
      sub_1E37E94CC(__src, v72);
      sub_1E37E0CE8();
      OUTLINED_FUNCTION_5_1();
      sub_1E4201F44();

      sub_1E37E9478(__src);
    }

    else
    {
      nullsub_1(v32, v33);
      v38 = v69;
      (*(v17 + 16))(v23, v20, v69);
      swift_storeEnumTagMultiPayload();
      sub_1E37E0CE8();
      OUTLINED_FUNCTION_5_1();
      sub_1E4201F44();
      (*(v17 + 8))(v20, v38);
    }

    v39 = &qword_1ECF2A950;
    sub_1E37E93E8(v29, v66, &qword_1ECF2A950);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_32();
    sub_1E37E9768(v40, &qword_1ECF2A950, &unk_1E429E800, v41);
    sub_1E37E0D3C();
    v42 = v67;
    sub_1E4201F44();
    sub_1E37E93E8(v42, v71, &qword_1ECF2A948);
    swift_storeEnumTagMultiPayload();
    sub_1E37E0B98();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    sub_1E325F6F0(v42, &qword_1ECF2A948);
    v43 = v29;
    return sub_1E325F6F0(v43, v39);
  }

  if (v30 != 49)
  {
LABEL_11:
    nullsub_1(v26, v27);
    v58 = v69;
    (*(v17 + 16))(v71, v20, v69);
    swift_storeEnumTagMultiPayload();
    sub_1E37E0B98();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    return (*(v17 + 8))(v20, v58);
  }

  v45 = *a2;
  v46 = a2[1];
  v47 = *(a2 + 16);
  v48 = a2[3];
  v49 = a2[4];
  v50 = *(a2 + 40);

  v51 = j__OUTLINED_FUNCTION_18();
  v52 = j__OUTLINED_FUNCTION_18();
  sub_1E3DF9EB0(v45, v46, v47, v48, v49, v50, v51 & 1, 0, v72, 0, 1, 2, 1, 0, v52 & 1, 2);
  sub_1E3DC12B0(a1, v72, __src);
  memcpy(v66, __src, 0x5AuLL);
  swift_storeEnumTagMultiPayload();
  sub_1E37E9338(__src, v73);
  OUTLINED_FUNCTION_2_32();
  sub_1E37E9768(v53, v54, v55, v56);
  sub_1E37E0D3C();
  v57 = v67;
  sub_1E4201F44();
  v39 = &qword_1ECF2A948;
  sub_1E37E93E8(v57, v71, &qword_1ECF2A948);
  swift_storeEnumTagMultiPayload();
  sub_1E37E0B98();
  OUTLINED_FUNCTION_5_1();
  sub_1E4201F44();
  sub_1E37E9394(__src);
  v43 = v57;
  return sub_1E325F6F0(v43, v39);
}

uint64_t sub_1E37E93E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E37E9448()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

id sub_1E37E9528(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 1000))(a2, 0.0, 0.0);
  v5 = 0;
  if (v4 != 255)
  {
    v6 = v3;
    if (!v4)
    {
      v7 = (*(*a2 + 1944))();
      if (!v7)
      {
        v8 = (*(*a2 + 2016))();
        if (v9)
        {
          v10 = -1;
        }

        else
        {
          v10 = v8;
        }

        v7 = [objc_opt_self() configurationWithScale_];
      }

      v11 = [v6 name];
      v12 = sub_1E4205F14();
      v14 = v13;

      sub_1E37E96A4();
      v5 = sub_1E37E96E8(v12, v14, v7);
      v4 = 0;
    }

    sub_1E379098C(v6, v4);
  }

  return v5;
}

unint64_t sub_1E37E96A4()
{
  result = qword_1EE23AE00;
  if (!qword_1EE23AE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE00);
  }

  return result;
}

id sub_1E37E96E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

uint64_t sub_1E37E9768(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_5_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_1E37E9824(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E37E97EC();
  a1[1] = v3;
  return sub_1E37E986C;
}

uint64_t sub_1E37E98B0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  result = a1();
  if (!v4)
  {
    return a2(result);
  }

  return result;
}

uint64_t (*sub_1E37E98F0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E37E9884();
  a1[1] = v3;
  return sub_1E37E9938;
}

uint64_t sub_1E37E9950(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id sub_1E37E99D0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount + 9) & 1) == 0)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_mediaCollection) count];
  *v1 = result;
  v1[4] = 0;
  return result;
}

uint64_t sub_1E37E9A34(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E37E9A54(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E37E99D0();
  *(a1 + 8) = v3 & 1;
  return sub_1E37E9AA4;
}

uint64_t sub_1E37E9AA4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

unint64_t sub_1E37E9ACC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID + 5))
  {
    v2 = sub_1E3A28BAC();
    *v1 = v2;
    v3 = HIDWORD(v2) & 1;
    *(v1 + 4) = BYTE4(v2) & 1;
    *(v1 + 5) = 0;
  }

  else
  {
    LODWORD(v2) = *v1;
    LOBYTE(v3) = *(v1 + 4) & 1;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1E37E9B4C(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E37E9B6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_1E37E9ACC();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1E37E9BBC;
}

uint64_t sub_1E37E9BBC(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

uint64_t sub_1E37E9C3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_seasons;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E37E9CF4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if ([*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v13[0] = v10;
        v4 = sub_1E4207944();
        v6 = v5;
LABEL_10:
        v7 = *v1;
        v8 = v1[1];
        *v1 = v4;
        v1[1] = v6;

        sub_1E37E9E48(v7, v8);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E329505C(v13);
    }

    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1E37EA628(v2, v3);
  return v4;
}

uint64_t sub_1E37E9E48(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1E37E9E5C()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title + 8);
  v4 = v2;
  if (v3 == 1)
  {
    if ([*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        v5 = v10;
LABEL_10:
        v6 = *v1;
        v7 = v1[1];
        *v1 = v4;
        v1[1] = v5;

        sub_1E37E9E48(v6, v7);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1E329505C(v13);
    }

    v4 = 0;
    v5 = 0;
    goto LABEL_10;
  }

LABEL_11:
  sub_1E37EA628(v2, v3);
  return v4;
}

uint64_t sub_1E37E9FC8(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___episodeCount;
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage___storeID;
  *(v4 + 4) = 256;
  *v4 = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_seasons) = 0;
  v5 = (v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id);
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id) = xmmword_1E4297170;
  v6 = (v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title) = xmmword_1E4297170;
  v7 = [a1 representativeItem];
  if (v7)
  {
    v8 = v7;
    if ([a1 mediaTypes] == 512)
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity_mediaCollection) = a1;
      return sub_1E4028B38(v8);
    }
  }

  sub_1E37E9E48(*v5, v5[1]);
  sub_1E37E9E48(*v6, v6[1]);
  type metadata accessor for LibMPShowMediaEntity();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for LibMPShowMediaEntity()
{
  result = qword_1EE29D590;
  if (!qword_1EE29D590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E37EA17C()
{

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title + 8);

  return sub_1E37E9E48(v1, v2);
}

uint64_t *sub_1E37EA1EC()
{
  v0 = sub_1E4028C28();

  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____id + 8));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title), *(v0 + OBJC_IVAR____TtC8VideosUI20LibMPShowMediaEntity____lazy_storage____title + 8));
  return v0;
}

uint64_t sub_1E37EA25C()
{
  v0 = sub_1E37EA1EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E37EA380(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 632))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E37EA400()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 592))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

void (*sub_1E37EA4B0(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 608))();
  return sub_1E37C55D4;
}

unint64_t sub_1E37EA530(uint64_t a1)
{
  result = sub_1E37EA558();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37EA558()
{
  result = qword_1EE26C488[0];
  if (!qword_1EE26C488[0])
  {
    type metadata accessor for LibMPShowMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE26C488);
  }

  return result;
}

uint64_t sub_1E37EA628(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1E37EA63C()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    return *(v0 + 120);
  }

  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  return OUTLINED_FUNCTION_5_11();
}

double sub_1E37EA664()
{
  if ((*(v0 + 144) & 1) == 0)
  {
    return *(v0 + 136);
  }

  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return OUTLINED_FUNCTION_5_11();
}

double sub_1E37EA68C()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 152);
  }

  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  return OUTLINED_FUNCTION_5_11();
}

uint64_t sub_1E37EA700(int a1, char a2)
{
  HIDWORD(v108) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1;
  *(v2 + 98) = a2;
  v3 = sub_1E3C2F9A0();

  v150 = 0;
  v151 = 1;
  v5 = *(v4 + 98) == 0;
  v6 = 0x4067200000000000;
  if (*(v4 + 98))
  {
    v6 = 0x405A000000000000;
  }

  v148 = v6;
  v149 = 0;
  v7 = 0x4063400000000000;
  if (v5)
  {
    v7 = 0x4070400000000000;
  }

  v146[30] = v7;
  v147 = 0;
  v8 = 0x407A400000000000;
  if (!v5)
  {
    v8 = 0x4070400000000000;
  }

  v146[0] = v8;
  LOBYTE(v146[1]) = 0;
  v116[0] = 0x4070400000000000;
  LOBYTE(v116[1]) = 0;
  __dst[0] = 0x4073400000000000;
  LOBYTE(__dst[1]) = 0;
  v9 = MEMORY[0x1E69E7DE0];
  v10 = 2;
  if (v5)
  {
    v10 = 3;
  }

  v95 = v10;
  sub_1E3C2FCB8(&v150, __src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v146, __src, 0x59uLL);
  v11 = OUTLINED_FUNCTION_18();
  v12 = (*(*v3 + 1600))(v146, 7, v11 & 1, v9);
  v13 = (*v3 + 1736);
  v14 = *v13;
  (*v13)(v12);
  memcpy(v146, __dst, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v15 + 1600))(v146, 6, v16 & 1, v9);

  v100 = v14;
  v14(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1808))(3);

  v19 = sub_1E3E5FDEC();
  v116[0] = *v19;
  v20 = v116[0];
  v122[0] = *sub_1E3E5FD88();
  v140 = v122[0];
  v21 = *v19;
  v22 = sub_1E3755B54();
  v23 = v122[0];
  v24 = v21;
  sub_1E3C2FC98();
  v25 = sub_1E3C3DE00(v22);
  v33 = OUTLINED_FUNCTION_3_32(v25, v26, v27, v28, v29, v30, v31, v32, v92, v95, v98, v100, v103, v13, v106, v108, v110, v113, v116[0]);
  sub_1E3C2FCB8(v33, v34);
  v111 = v146[0];
  v114 = v146[1];
  v35 = v146[2];
  v36 = v146[3];
  v37 = v146[4];
  v93 = v146[5];
  sub_1E3952C58();
  LOBYTE(v116[0]) = v38;
  v116[1] = v39;
  v116[2] = v40;
  v116[3] = v41;
  LOBYTE(v116[4]) = 0;
  sub_1E3952C94();
  v122[0] = v42;
  v122[1] = v43;
  v122[2] = v44;
  v122[3] = v45;
  LOBYTE(v122[4]) = 0;
  sub_1E3952C94();
  v140 = v46;
  v141 = v47;
  v142 = v48;
  v143 = v49;
  v144 = 0;
  sub_1E3952C94();
  v135 = v50;
  v136 = v51;
  v137 = v52;
  v138 = v53;
  v139 = 0;
  type metadata accessor for UIEdgeInsets();
  v55 = v54;
  sub_1E3C2FC98();
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v56 = sub_1E3C3DE00(v55);
  v123 = v126;
  v124 = v127;
  v125 = v128;
  v64 = OUTLINED_FUNCTION_3_32(v56, v57, v58, v59, v60, v61, v62, v63, v93, v96, v99, v101, v104, v105, v107, v109, v111, v114, v116[0]);
  sub_1E3C2FCB8(v64, v65);
  v66 = *(*v3 + 1760);
  v66();
  LOBYTE(v122[0]) = 17;
  LOBYTE(v140) = 15;
  LOBYTE(v135) = 3;
  LOBYTE(v132) = 15;
  sub_1E3C2FC98();
  LOBYTE(v126) = v129;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v120) = v123;
  sub_1E3C2FCB8(v122, v116);
  LODWORD(v122[0]) = v116[0];
  WORD2(v122[0]) = WORD2(v116[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v67 + 1600))(v122, 48, v68 & 1, &qword_1F5D549D8);

  (v66)(v69);
  v116[0] = v112;
  v116[1] = v115;
  v116[2] = v35;
  v116[3] = v36;
  v116[4] = v37;
  v116[5] = v94;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v70 + 1600))(v116, 21, v71 & 1, v22);

  (v66)(v72);
  v116[0] = v97;
  LOBYTE(v116[1]) = 0;
  v140 = 2;
  LOBYTE(v141) = 0;
  v73 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  *&v132 = v135;
  BYTE8(v132) = v136;
  sub_1E3C3DE00(v73);
  *&v126 = v129;
  BYTE8(v126) = BYTE8(v129);
  sub_1E3C3DE00(v73);
  v120 = v123;
  v121 = BYTE8(v123);
  sub_1E3C3DE00(v73);
  v116[30] = v118;
  v117 = v119;
  sub_1E3C2FCB8(v116, v122);
  memcpy(v116, v122, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v74 + 1600))(v116, 62, v75 & 1, v73);

  (v66)(v76);
  OUTLINED_FUNCTION_2_1();
  (*(v77 + 968))(0);

  (v66)(v78);
  memcpy(v116, v146, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v79 + 1600))(v116, 0, v80 & 1, v55);

  (v66)(v81);
  OUTLINED_FUNCTION_2_1();
  (*(v82 + 1984))(4);

  if (sub_1E373F6E0())
  {
    (*(*v3 + 336))(0x4051400000000000, 0);
    sub_1E3952C94();
    v116[0] = v83;
    v116[1] = v84;
    v116[2] = v85;
    v116[3] = v86;
    LOBYTE(v116[4]) = 0;
    v87 = (*(*v3 + 184))(v116);
  }

  else
  {
    v87 = sub_1E373F6E0();
  }

  v88 = v102(v87);
  sub_1E3C37CBC(v88, 39);

  v90 = (v66)(v89);
  sub_1E3C37CBC(v90, 9);

  return v3;
}

void sub_1E37EB008()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E37EB084()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 161, 7);
}

uint64_t sub_1E37EB0D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for TimeBoundarySubscription();
  (*(v9 + 16))(v13, a1, a4);
  v15 = a3;

  v16 = sub_1E37EB238(v15, a2, v13);
  v18[3] = v14;
  v18[4] = swift_getWitnessTable();
  v18[0] = v16;
  sub_1E4200464();
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E37EB238(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E37EB2A0(a1, a2, a3);
  return v6;
}

uint64_t *sub_1E37EB2A0(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *v3;
  v7 = *(v28 + 80);
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  sub_1E42003F4();
  v13 = (v3 + qword_1ECF71258);
  *v13 = 0u;
  v13[1] = 0u;
  *(v3 + qword_1ECF71250) = a1;
  OUTLINED_FUNCTION_8();
  v15 = *(v9 + 16);
  v15(v3 + *(v14 + 120), a3, v7);
  v16 = a1;
  sub_1E37EB640(a2);

  v17 = sub_1E42062A4();

  v18 = swift_allocObject();
  swift_weakInit();
  v29 = a3;
  v15(v12, a3, v7);
  v19 = v27;
  v20 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v21 = swift_allocObject();
  v22 = v28;
  *(v21 + 2) = v7;
  *(v21 + 3) = *(v22 + 88);
  *(v21 + 4) = v18;
  (*(v19 + 32))(&v21[v20], v12, v7);
  v32 = sub_1E37EB73C;
  v33 = v21;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_1E37EB82C;
  *(&v31 + 1) = &block_descriptor_11;
  v23 = _Block_copy(&aBlock);

  v24 = [v16 addBoundaryTimeObserverForTimes:v17 withHandler:v23];
  _Block_release(v23);

  if (v24)
  {
    sub_1E4207264();

    swift_unknownObjectRelease();
    (*(v19 + 8))(v29, v7);
  }

  else
  {
    (*(v19 + 8))(v29, v7);

    aBlock = 0u;
    v31 = 0u;
  }

  v25 = qword_1ECF71258;
  OUTLINED_FUNCTION_11_3();
  sub_1E37EB5D0(&aBlock, v3 + v25);
  swift_endAccess();
  return v3;
}

uint64_t sub_1E37EB5D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37EB640(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1E37EBF70(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E37EBF70((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1E329504C(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E37EB73C()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_1ECF71250);

    [v1 elapsedTime];

    return sub_1E4200474();
  }

  return result;
}

uint64_t sub_1E37EB82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_1E37EB880()
{
  v1 = *v0;
  sub_1E37EB958();
  v2 = qword_1ECF71248;
  sub_1E4200404();
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(&v0[v2]);

  sub_1E329505C(&v0[qword_1ECF71258]);
  OUTLINED_FUNCTION_8();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 120)]);
  return v0;
}

uint64_t sub_1E37EB958()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = qword_1ECF71258;
  OUTLINED_FUNCTION_5_0();
  sub_1E3294F34(v1 + v18, &aBlock);
  if (!v29)
  {
    return sub_1E329505C(&aBlock);
  }

  sub_1E329504C(&aBlock, v33);
  v26 = v11;
  v19 = *(v1 + qword_1ECF71250);
  sub_1E32ADE38();
  v20 = sub_1E4206A04();
  v21 = swift_allocObject();
  swift_weakInit();
  sub_1E328438C(v33, v32);
  v22 = swift_allocObject();
  *(v22 + 16) = *(v3 + 80);
  *(v22 + 24) = *(v3 + 88);
  *(v22 + 32) = v19;
  sub_1E329504C(v32, (v22 + 40));
  *(v22 + 72) = v21;
  v30 = sub_1E37EBCE0;
  v31 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v28 = sub_1E378AEA4;
  v29 = &block_descriptor_10;
  v23 = _Block_copy(&aBlock);
  v24 = v19;

  sub_1E4203FE4();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v17, v10, v23);
  _Block_release(v23);

  (*(v6 + 8))(v10, v4);
  (*(v13 + 8))(v17, v26);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_1E37EBC88()
{
  sub_1E37EB880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37EBCE0()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  [v1 removeBoundaryTimeObserverWithToken_];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    memset(v5, 0, sizeof(v5));
    v4 = qword_1ECF71258;
    OUTLINED_FUNCTION_11_3();
    sub_1E37EB5D0(v5, v3 + v4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E37EBDC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1ECF71248;
  sub_1E4200404();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E37EBE88()
{
  result = sub_1E4200404();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1E37EBF70(char *a1, int64_t a2, char a3)
{
  result = sub_1E37EBF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E37EBF90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E37EC0A4()
{
  v1 = v0;
  type metadata accessor for ImageLayout();
  v2 = sub_1E3BD61D8();

  v3 = *sub_1E3E5FD88();
  v4 = *(*v2 + 680);
  v5 = v3;
  v4(v3);
  v106 = 1;
  v107 = 0;
  v104 = 1;
  v105 = 0;
  v102 = 1;
  v103 = 0;
  type metadata accessor for SymbolScale(0);
  v7 = v6;
  sub_1E3C3DE00(v6);
  v98 = v100;
  v99 = v101;
  v8 = sub_1E3C3DE00(v7);
  v94 = v96;
  v95 = v97;
  v16 = OUTLINED_FUNCTION_1_66(v8, v9, v10, v11, v12, v13, v14, v15, 2);
  sub_1E3C2FCB8(v16, v17);
  memcpy(v93, __src, 0x59uLL);
  v18 = OUTLINED_FUNCTION_18();
  v19 = *(*v2 + 1600);
  v27 = OUTLINED_FUNCTION_30_3(v18, v20, v21, v22, v23, v24, v25, v26, v93[0]);
  v19(v27, 91);
  v28 = objc_opt_self();
  if ([v28 isVision] & 1) != 0 || (objc_msgSend(v28, sel_isPad) & 1) != 0 || (objc_msgSend(v28, sel_isPhone))
  {
    v29 = 0x4020000000000000;
  }

  else if ([v28 isMac])
  {
    v29 = 0x4018000000000000;
  }

  else
  {
    v29 = 0x4024000000000000;
  }

  (*(*v2 + 2096))(10);
  (*(*v2 + 256))(v29, 0);

  LOBYTE(v93[0]) = 5;
  LOBYTE(v106) = 6;
  LOBYTE(v104) = 6;
  LOBYTE(v102) = 6;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v30 = OUTLINED_FUNCTION_3_33();
  v31 = sub_1E3C3DE00(v30);
  LOBYTE(v94) = v96;
  v39 = OUTLINED_FUNCTION_1_66(v31, v32, v33, v34, v35, v36, v37, v38, v93[0]);
  sub_1E3C2FCB8(v39, v40);
  OUTLINED_FUNCTION_0_40();
  v41 = OUTLINED_FUNCTION_18();
  v49 = OUTLINED_FUNCTION_30_3(v41, v42, v43, v44, v45, v46, v47, v48, v93[0]);
  v19(v49, 97);
  type metadata accessor for TextLayout();
  v50 = sub_1E383BCC0();
  (*(*v50 + 2056))(1, 0);
  OUTLINED_FUNCTION_2_33();
  (*(v51 + 2080))(1, 0);
  OUTLINED_FUNCTION_2_33();
  (*(v52 + 2104))(1, 0);
  OUTLINED_FUNCTION_2_33();
  (*(v53 + 1984))(1);
  OUTLINED_FUNCTION_2_33();
  (*(v54 + 2008))(1);

  v55 = *sub_1E3E5FDEC();
  v56 = *(*v50 + 680);
  v57 = v55;
  v56(v55);

  OUTLINED_FUNCTION_2_33();
  (*(v58 + 1720))(7);
  LOBYTE(v93[0]) = 27;
  LOBYTE(v106) = 3;
  LOBYTE(v104) = 20;
  LOBYTE(v102) = 14;
  LOBYTE(v100) = 21;
  v59 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v96) = v98;
  v67 = OUTLINED_FUNCTION_1_66(v59, v60, v61, v62, v63, v64, v65, v66, v93[0]);
  sub_1E3C2FCB8(v67, v68);
  OUTLINED_FUNCTION_0_40();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_2_33();
  v70 = *(v69 + 1600);
  v79 = OUTLINED_FUNCTION_30_3(v71, v72, v73, v74, v75, v76, v77, v78, v93[0]);
  v70(v79, 48);
  LOBYTE(v93[0]) = 5;
  LOBYTE(v106) = 10;
  sub_1E3C2FC98();
  LOBYTE(v102) = v104;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v80 = OUTLINED_FUNCTION_3_33();
  sub_1E3C3DE00(v80);
  LOBYTE(v94) = v96;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  __src[94] = __src[95];
  sub_1E3C2FCB8(v93, __src);
  OUTLINED_FUNCTION_0_40();
  v81 = OUTLINED_FUNCTION_18();
  v89 = OUTLINED_FUNCTION_30_3(v81, v82, v83, v84, v85, v86, v87, v88, v93[0]);
  v70(v89, 54);
  v90 = sub_1E37EC6E4();
  swift_beginAccess();
  v91 = v1[31];
  v1[31] = v2;
  v1[32] = v50;
  v1[33] = v90;
  return sub_1E37EC9B0(v91);
}

uint64_t sub_1E37EC6E4()
{
  v0 = sub_1E42012F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for TextLayout();
  v7 = sub_1E383BCC0();
  sub_1E41480CC(v7);
  type metadata accessor for TextBadgeLayout();
  v8 = sub_1E39DFD8C(v6);
  sub_1E3831898(v8);
  sub_1E3831908(1, 9, v6, v45);
  v9 = v45[3];
  v14 = *&v45[7];
  v15 = *&v45[5];
  (*(v1 + 8))(v3, v0);
  sub_1E37ECA8C(v6);
  v16[0] = v15;
  v16[1] = v14;
  LOBYTE(v16[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  sub_1E3C2FC98();
  v39 = v42;
  v40 = v43;
  v41 = v44;
  sub_1E3C3DE00(v11);
  v33 = v36;
  v34 = v37;
  v35 = v38;
  sub_1E3C3DE00(v11);
  v27 = v30;
  v28 = v31;
  v29 = v32;
  sub_1E3C3DE00(v11);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  sub_1E3C3DE00(v11);
  v16[15] = v18;
  v16[16] = v19;
  v17 = v20;
  sub_1E3C2FCB8(v16, v45);
  memcpy(v16, v45, 0xE9uLL);
  v12 = OUTLINED_FUNCTION_18();
  (*(*v7 + 1600))(v16, 1, v12 & 1, v11);

  return v7;
}

uint64_t sub_1E37EC9B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E37EC9FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E37ECA3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E37ECA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37ECB08()
{
  v1 = *(v0 + 304);
  if (!v1)
  {
    v1 = sub_1E39BE330();
  }

  return v1;
}

uint64_t sub_1E37ECB4C()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 312);
  }

  else
  {
    v1 = sub_1E3F53194();
  }

  return v1;
}

uint64_t sub_1E37ECBF4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3[38] = 0;
  v3[39] = 0;
  v3[40] = 0;
  return sub_1E3F53270(a1, a2, a3);
}

uint64_t sub_1E37ECC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  v10[38] = a5;
  v10[39] = a6;
  v10[40] = a7;
  return sub_1E3F537AC();
}

uint64_t sub_1E37ECC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[38] = a5;
  v7[39] = a6;
  v7[40] = a7;
  return sub_1E3F537AC();
}

uint64_t sub_1E37ECC8C(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    if (!(*(*v3 + 392))())
    {
      return 0;
    }

    type metadata accessor for ImageLayout();
    if (!swift_dynamicCastClass())
    {
LABEL_8:

      return 0;
    }
  }

  type metadata accessor for ImageLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;
  v8 = *(*v3 + 1152);

  v9 = v8(v7, a2, a3);

  return v9;
}

uint64_t sub_1E37ECDC0(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(v1 + 24);
  result = (v3 | v4) == 0;
  if (v3 && v4)
  {
    if (*(a1 + 16) == *(v1 + 16) && v3 == v4)
    {
      return 1;
    }

    else
    {
      return sub_1E42079A4();
    }
  }

  return result;
}

void *sub_1E37ECE04(uint64_t a1, double a2, double a3)
{
  v5 = a3;
  v6 = a2;
  if (a2 == 0.0 && a3 == 0.0)
  {
    v6 = (*(*a1 + 2288))(a1);
    v5 = v7;
  }

  sub_1E37ECFB8();
  v8 = sub_1E37ECFFC(v6, v5, v6, v5);
  v9 = v8;
  if (v8)
  {
    v10 = (*(*v3 + 1160))(v8, a1);
    (*(*v3 + 904))(v10);
    if (v11)
    {
      v12 = sub_1E4205ED4();
    }

    else
    {
      v12 = 0;
    }

    [v9 setAccessibilityText_];

    v15[3] = &unk_1F5D5D408;
    v15[4] = &off_1F5D5C818;
    LOBYTE(v15[0]) = 1;
    v13 = sub_1E39C29F0(v15, 1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    [v9 setClearsExisting_];
  }

  return v9;
}

unint64_t sub_1E37ECFB8()
{
  result = qword_1EE23B008;
  if (!qword_1EE23B008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B008);
  }

  return result;
}

id sub_1E37ECFFC(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_1E4205ED4();

  v10 = [v8 initWithSrc:v9 size:a1 containerSize:{a2, a3, a4}];

  return v10;
}

void sub_1E37ED0A0(id a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v5 = (*(v4 + 744))();
    OUTLINED_FUNCTION_2_34(v5, sel_setBackgroundColor_);

    OUTLINED_FUNCTION_13();
    v7 = (*(v6 + 672))();
    v8 = v7;
  }

  else
  {
    v7 = [a1 setBackgroundColor_];
    v8 = 0;
  }

  OUTLINED_FUNCTION_2_34(v7, sel_setTintColor_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v10 = (*(v9 + 864))();
    OUTLINED_FUNCTION_2_34(v10, sel_setHighlightColor_);

    OUTLINED_FUNCTION_13();
    (*(v11 + 552))(v35);
    if ((v36 & 1) == 0)
    {
      [a1 setBorderRadii_];
    }

    OUTLINED_FUNCTION_47_0();
    v13 = (*(v12 + 1824))();
    v14 = v13;
  }

  else
  {
    v13 = [a1 setHighlightColor_];
    v14 = 0;
  }

  OUTLINED_FUNCTION_2_34(v13, sel_setBorderColor_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 1848))(v37);
    v16 = v37[0];
    if (v38)
    {
      v16 = 0.0;
    }

    [a1 setBorderWidth_];
    OUTLINED_FUNCTION_13();
    v18 = (*(v17 + 1872))();
  }

  else
  {
    [a1 setBorderWidth_];
    v18 = 0;
  }

  [a1 setContinuousBorder_];
  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    [a1 setRenderAsTemplate_];
    OUTLINED_FUNCTION_13();
    v21 = (*(v20 + 600))();
    v22 = v21;
  }

  else
  {
    v21 = [a1 setRenderAsTemplate_];
    v22 = 0;
  }

  OUTLINED_FUNCTION_2_34(v21, sel_setShadow_);

  if (a2)
  {
    OUTLINED_FUNCTION_47_0();
    v24 = (*(v23 + 1992))();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC48);
    v25 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v25);
    OUTLINED_FUNCTION_13();
    v34 = (*(v26 + 1968))();
    MEMORY[0x1EEE9AC00](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50);
    v27 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v27);

    OUTLINED_FUNCTION_13();
    v29 = (*(v28 + 1800))();
    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_4_15();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC58);
    v30 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v30);
    OUTLINED_FUNCTION_13();
    v32 = (*(v31 + 624))();
    MEMORY[0x1EEE9AC00](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60);
    v33 = OUTLINED_FUNCTION_3_34();
    sub_1E4148DE0(v33);
  }
}

void sub_1E37ED640(char *a1)
{
  v2 = *(v1 + 16);
  sub_1E3B65098(*a1);
  v3 = sub_1E4205ED4();

  [v2 setPlaceholderSrc_];
}

id sub_1E37ED6C4(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_13_30(*a1);

  return [v2 setScaleMode_];
}

uint64_t sub_1E37ED754()
{
}

uint64_t sub_1E37ED784()
{
  v0 = sub_1E3F5527C();

  return v0;
}

uint64_t sub_1E37ED7BC()
{
  v0 = sub_1E37ED784();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

uint64_t sub_1E37ED848(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void sub_1E37ED914(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E37ED9C4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1E37EDA10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  v2[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E37EDAA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EDADC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EDB68()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_badgeCount;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E37EDBB0(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E37EDC48()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EDC7C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EDD08()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EDD3C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EDDC8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EDDFC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EDE88()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EDEBC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EE010()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EE044(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EE11C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_37();
  *(v2 + v4) = a1;
}

uint64_t sub_1E37EE1B8(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1E37EE214(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1E37EE2A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EE2DC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EE368()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EE39C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EE428()
{
  v1 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E37EE45C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37EE4E8(void *a1)
{
  v3 = *(v1 + 808);

  OUTLINED_FUNCTION_25();
  v6 = v3(v4, v5);

  return v6;
}

void sub_1E37EE614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, char a10, uint64_t a11)
{

  v16 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_defaultChildSelectionIdentifier);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_manager);
  v17 = v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_badgeCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_imageViewModel) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_secondaryImageViewModel) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesImageViewModel) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesTitle);
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault) = 0;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites) = 1;
  OUTLINED_FUNCTION_3_0();
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable) = a7;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable) = a8;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader) = a9;
  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider) = a10;
  OUTLINED_FUNCTION_3_0();
  *(v11 + v16) = a11;

  *(v11 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected) = 1;

  v19 = sub_1E3D7141C(v18);
  v20 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v21 = *&v19[v20];
  v22 = sub_1E32AE9B0(v21);
  v23 = v19;

  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      return;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E6911E60](i, v21);
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v25 = *(v21 + 8 * i + 32);
    }

    v26 = v25;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_3_0();
    swift_unknownObjectWeakAssign();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1E37EE954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15)
{
  v16 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children) = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_defaultChildSelectionIdentifier);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_manager);
  v17 = v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_badgeCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_imageViewModel) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_secondaryImageViewModel) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showsImageInFavorites) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesImageViewModel) = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_favoritesTitle);
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isPinnedInFavorites) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isShownInFavoritesByDefault) = 0;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_isEditableInFavorites) = 1;
  OUTLINED_FUNCTION_3_0();
  *v17 = a9;
  *(v17 + 8) = a10 & 1;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_collapsable) = a11;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_editable) = a12;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_showHeader) = a13;
  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_hasDivider) = a14;
  OUTLINED_FUNCTION_3_0();
  *(v15 + v16) = a15;

  *(v15 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_canBeSelected) = 1;
  v18 = sub_1E3D71290(a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_children;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *&v18[v19];
  v21 = sub_1E32AE9B0(v20);
  v22 = v18;

  for (i = 0; ; ++i)
  {
    if (v21 == i)
    {

      return;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1E6911E60](i, v20);
    }

    else
    {
      if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v24 = *(v20 + 8 * i + 32);
    }

    v25 = v24;
    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_3_0();
    swift_unknownObjectWeakAssign();
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1E37EEBDC(uint64_t a1)
{
  sub_1E3294F34(a1, v12);
  if (!v13)
  {
    sub_1E329505C(v12);
    goto LABEL_7;
  }

  v2 = type metadata accessor for LibrarySidebarItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v3 = v11;
  v10.receiver = v1;
  v10.super_class = v2;
  if (!objc_msgSendSuper2(&v10, sel_isEqual_, v11))
  {

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 376))();
  v7 = (*((*v4 & *v3) + 0x178))();
  v8 = sub_1E37EED28(v6, v7);

  return v8 & 1;
}

uint64_t sub_1E37EED28(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for LibrarySidebarItem();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1E37EEF54(unint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 392))(v5);
  v4 = sub_1E37EF010(a1);
  v3(v5, 0);
  OUTLINED_FUNCTION_3_0();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1E37EF010(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1E37EFA58(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1E37EF0A0(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 392))(v8);
  sub_1E37EFABC(a2, *v6);
  sub_1E37EFB14(a2, a2, a1);
  v5(v8, 0);
  OUTLINED_FUNCTION_3_0();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E37EF1E0()
{

  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI18LibrarySidebarItem_parent);

  swift_unknownObjectRelease();
}

id sub_1E37EF288()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibrarySidebarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E37EF370()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 376))();
}

uint64_t sub_1E37EF3C4@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 400))();
  *a1 = result;
  return result;
}

uint64_t sub_1E37EF420()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 424))();
}

uint64_t sub_1E37EF474()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 448))();
}

uint64_t sub_1E37EF4C8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 472))() & 1;
}

uint64_t sub_1E37EF520()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 496))();
}

uint64_t sub_1E37EF578()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 520))() & 1;
}

uint64_t sub_1E37EF5D0()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 544))() & 1;
}

uint64_t sub_1E37EF628()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 568))() & 1;
}

uint64_t sub_1E37EF680()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))() & 1;
}

uint64_t sub_1E37EF6D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 616))();
}

uint64_t sub_1E37EF72C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 640))();
}

uint64_t sub_1E37EF780()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 664))() & 1;
}

uint64_t sub_1E37EF7D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 688))();
}

uint64_t sub_1E37EF82C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 712))();
}

uint64_t sub_1E37EF880()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 736))() & 1;
}

uint64_t sub_1E37EF8D8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 760))() & 1;
}

uint64_t sub_1E37EF930()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 784))() & 1;
}

uint64_t sub_1E37EF988()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 824))();
}

uint64_t sub_1E37EF9DC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 832))();
}

uint64_t sub_1E37EFA58(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4207384();
  }

  return sub_1E4207514();
}

uint64_t sub_1E37EFABC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_1E37EFB14(uint64_t a1, uint64_t a2, char *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12);

  sub_1E37EFBD0(a1, a2, 1, a3);
}

void sub_1E37EFBD0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for LibrarySidebarItem();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E37EFD10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3294EE4(v1 + v3, a1, &unk_1ECF296D0);
}

uint64_t sub_1E37EFD70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3();
  sub_1E37FA198(a1, v1 + v3, &unk_1ECF296D0);
  return swift_endAccess();
}

uint64_t sub_1E37EFE20()
{
  OUTLINED_FUNCTION_17_21();
  OUTLINED_FUNCTION_79_6();
  OUTLINED_FUNCTION_78_2();
  if (v2 == 2)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E37EFE84(char a1, char a2)
{
  if (a1 != 2)
  {
    if (a1 == 3)
    {
      if (a2 != 3)
      {
        return OUTLINED_FUNCTION_18();
      }
    }

    else
    {
      v3 = a2 & 0xFE;
      if (a1)
      {
        if (v3 == 2 || (a2 & 1) == 0)
        {
          return OUTLINED_FUNCTION_18();
        }
      }

      else if (v3 == 2 || (a2 & 1) != 0)
      {
        return OUTLINED_FUNCTION_18();
      }
    }

    return 1;
  }

  if (a2 == 2)
  {
    return 1;
  }

  return OUTLINED_FUNCTION_18();
}

void sub_1E37EFFB4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v8, v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_79_6();
    OUTLINED_FUNCTION_78_2();
    if (v20)
    {
      v18 = v19;
    }

    if (v14 == 2)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if (v14 == 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v18;
    }

    v23 = sub_1E3270FC8(v21, v22, &v24);

    *(v12 + 4) = v23;
    _os_log_impl(&dword_1E323F000, v10, v11, "PlaylistViewController:: playbackState to change to %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37F0170()
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E37F01B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
}

uint64_t sub_1E37F0214()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F0250(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E37F02E0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F031C(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout;
  OUTLINED_FUNCTION_46_3();
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37F03B8(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataFadeInTime);
  result = OUTLINED_FUNCTION_3_0();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

void sub_1E37F0454()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C465D8();

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

void sub_1E37F04C4()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    sub_1E3C4AA34(v0, 2, 1);
  }
}

uint64_t sub_1E37F0558(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  sub_1E37F0454();
  *v1 = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E37F05BC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C51370();

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E32AE9B0(v2);

  return v3;
}

void (*sub_1E37F0668(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E37F0644();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E37F06A8;
}

void (*sub_1E37F06F0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 8) = *v2;
  *(v4 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C515D0();

  *(v1 + 24) = v6 & 1;
  return sub_1E37F0790;
}

void sub_1E37F07A8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C52AD4();
}

uint64_t sub_1E37F084C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_waitForUserInitiatedPlaybackStart;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F08A8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void (*sub_1E37F0934(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E37F0910();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E37F0974;
}

uint64_t sub_1E37F0998()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v3 = *v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = v2[v3];

  return v4;
}

void (*sub_1E37F0A30(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E37F098C();
  OUTLINED_FUNCTION_62_3(v1);
  return sub_1E37F0A70;
}

void sub_1E37F0A88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 8);
  OUTLINED_FUNCTION_21();
  (*(v5 + 1072))();
  OUTLINED_FUNCTION_37_3();
  a3(v4);
}

uint64_t sub_1E37F0B50(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 24) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C52BE0();

  *v1 = v6;
  return OUTLINED_FUNCTION_116();
}

void sub_1E37F0BE8(uint64_t a1)
{
  v1 = *a1;
  (*(a1 + 16))();
  OUTLINED_FUNCTION_37_3();
  sub_1E3C52C40(v1);
}

uint64_t sub_1E37F0C54()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v3 = v0();

  return v3;
}

uint64_t sub_1E37F0CD8(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 16) = *v2;
  *(v4 + 24) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C53604();

  *v1 = v6;
  return OUTLINED_FUNCTION_116();
}

void sub_1E37F0D70(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = *a1;
    v2();
    OUTLINED_FUNCTION_97_5();
  }

  else
  {
    v2();
    OUTLINED_FUNCTION_97_5();
  }
}

uint64_t sub_1E37F0DDC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C4772C();

  return v2;
}

void sub_1E37F0E54()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 1072))();
  sub_1E3C47760(v1, v0);
}

uint64_t sub_1E37F0EE4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x430);
  v3[3] = v5;
  v3[4] = (v4 + 1072) & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v6 = v5();
  v7 = sub_1E3C4772C();
  v9 = v8;

  *v3 = v7;
  v3[1] = v9;
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E37F0FB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  if (a2)
  {

    (v4)(v6);
    v7 = OUTLINED_FUNCTION_38();
    sub_1E3C47760(v7, v3);
  }

  else
  {
    v4();
    v8 = OUTLINED_FUNCTION_38();
    sub_1E3C47760(v8, v3);
  }

  free(v2);
}

void sub_1E37F1040()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  v4 = (*v2)();
  v5 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C51FE8(*(v1 + v5));

  v6 = v3();
  sub_1E3C52DB4((*(v1 + v5) & 1) == 0);
}

uint64_t sub_1E37F1100()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly;
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E37F115C(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_14_0();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E37F11A8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E37F1210(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E37F126C()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v3 = v0();

  return v3 & 1;
}

void (*sub_1E37F12F0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  OUTLINED_FUNCTION_21();
  v2 += 134;
  v3 = *v2;
  *(v4 + 8) = *v2;
  *(v4 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xFABD000000000000;
  v5 = v3();
  v6 = sub_1E3C52EC0();

  *(v1 + 24) = v6 & 1;
  return sub_1E37F1390;
}

void sub_1E37F13A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a1 + 24);
  (*(a1 + 8))();
  OUTLINED_FUNCTION_37_3();
  a3(v4);
}

BOOL sub_1E37F1410()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 1072))();
  v2 = sub_1E3C46500();

  if (!v2 || (OUTLINED_FUNCTION_8(), v4 = (*(v3 + 552))(), , !v4))
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v8[3] = &unk_1F5D7BE68;
  v8[4] = &off_1F5D7BC48;
  LOBYTE(v8[0]) = 8;
  sub_1E3F9F164(v8);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_1E325F6F0(&v9, &unk_1ECF296E0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v5 = v8[0];
LABEL_9:
  v6 = *(v5 + 16);

  return v6 != 0;
}

uint64_t sub_1E37F157C()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 512))();
  OUTLINED_FUNCTION_26_3();
  v20 = v2;
  v22 = (*((*v0 & v3) + 0x280))();
  LOBYTE(v23) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
  sub_1E38D2054(&v22, &v25);

  if (!v25)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 488))();

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1E373E010(224, v5);

  if (!v6)
  {
    return 0;
  }

  v7 = *(*v6 + 488);

  v9 = v7(v8);

  if (!v9 || (v10 = sub_1E373E010(91, v9), , !v10))
  {
LABEL_21:

    return 0;
  }

  v11 = *(*v10 + 464);

  v13 = v11(v12);

  if (!v13)
  {

    goto LABEL_21;
  }

  result = sub_1E32AE9B0(v13);
  v15 = result;
  v16 = 0;
  while (1)
  {
    if (v15 == v16)
    {

      return 0;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v16, v13);
      v17 = result;
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      break;
    }

    LOWORD(v25) = *(v17 + 98);
    v24 = 68;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v22 == v20 && v23 == v21)
    {

LABEL_26:

      return 1;
    }

    v19 = sub_1E42079A4();

    ++v16;
    if (v19)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E37F1B70(uint64_t *a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_33_9(*a1);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_67_0();
  a2(v3);
  return OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1E37F1BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_33_9(*a3);
  OUTLINED_FUNCTION_3_0();
  v8 = *v4;
  v9 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return a4(v8, v9);
}

uint64_t sub_1E37F1C90(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1E37F1CD4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_33_9(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight);
  result = OUTLINED_FUNCTION_3_0();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

id sub_1E37F1D24()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType);
    v21 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 0;
    type metadata accessor for PaginatedMediaController();
    OUTLINED_FUNCTION_26_3();
    v6 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x200))();
    v9 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_backgroundMediaInfo);
    (*((*v6 & *v0) + 0x1A0))(v22, v9);
    swift_unknownObjectRetain();
    sub_1E3C487D0(0, 0, v8, v9, 0x40201u >> (8 * v5), v0, &off_1F5D57E50, v22, 0, 0);
    v11 = v10;
    v12 = [objc_opt_self() isFeatureEnabled_];
    if (v5 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    sub_1E3C52CF0(v14);
    sub_1E3C52B94(v5 == 2);
    sub_1E3C46318(1);
    sub_1E3C53324(1);
    sub_1E3C475BC(0);
    sub_1E3C52950(0);
    sub_1E3C52728(1);
    sub_1E3C52DB4(1);
    sub_1E3C53038(0);
    sub_1E3C53850(0);
    v15 = (v5 - 1) > 1;
    v16 = (v5 - 1) < 2;
    sub_1E3C523AC(v16);
    sub_1E3C531B8(1);
    sub_1E3C533E4(v16);
    sub_1E3C531E8(1);
    sub_1E3C52E74(v16);
    sub_1E3C531D0(1);
    sub_1E3C522EC(1);
    sub_1E3C467F8(v15);
    sub_1E3C5246C(v15);
    sub_1E3C52AD4();
    sub_1E3C51644();
    sub_1E3C52C40(1);
    sub_1E3C52920(1);
    sub_1E3C4770C(v15);
    sub_1E3C5252C(v16);
    sub_1E3C51E68(v16);
    sub_1E3C51F28(v21);
    sub_1E3C5216C(0);
    v17 = *MEMORY[0x1E69874E0];
    sub_1E3C5369C();
    sub_1E3C53590(1);
    sub_1E3952C94();
    sub_1E3C534D0();
    sub_1E3C52848(1);
    v18 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

void sub_1E37F2018(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = a1;
}

uint64_t sub_1E37F202C(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E37F1D24();
  return OUTLINED_FUNCTION_116();
}

void sub_1E37F206C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController);
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = v2;
}

uint64_t sub_1E37F2084()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E37F20FC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4D8))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1E37F219C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1E4200684();
}

uint64_t sub_1E37F2220()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E37F2288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD80);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

id sub_1E37F23A8(double a1, uint64_t a2, char a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = OUTLINED_FUNCTION_31_4();
  return sub_1E37F2400(v9, a3, a4, a1);
}

id sub_1E37F2400(uint64_t a1, char a2, void *a3, double a4)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_2();
  v15 = (v4 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner);
  v16 = type metadata accessor for CollectionImpressionManager();
  v17 = sub_1E3F0AE3C();
  v15[3] = v16;
  v15[4] = &off_1F5D8D100;
  *v15 = v17;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  v18 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter;
  type metadata accessor for MediaShowcasingHeaderViewPresenter();
  *(v6 + v18) = sub_1E38C7E9C();
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 2;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout) = 0x4024000000000000;
  v19 = v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataFadeInTime;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_waitForUserInitiatedPlaybackStart) = 1;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly) = 0;
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_65_4();
  v20 = v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight;
  *v20 = 0;
  *(v20 + 8) = v21;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v22 = (v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver);
  *v22 = 0u;
  v22[1] = 0u;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) = 7;
  v23 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70);
  sub_1E4200634();
  (*(v13 + 32))(v6 + v23, v5, v11);
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels) = a1;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) = a2;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_backgroundMediaInfo) = a3;
  *(v6 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_autoPlayDuration) = a4;
  type metadata accessor for PlaylistViewController();

  v24 = a3;
  OUTLINED_FUNCTION_25();
  v27 = objc_msgSendSuper2(v25, v26);
  v28 = v27 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner;
  OUTLINED_FUNCTION_11_3();
  v29 = *(v28 + 24);
  if (v29)
  {
    v30 = *(v28 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v28, *(v28 + 24));
    (*(v30 + 72))(1, v29, v30);
  }

  swift_endAccess();
  sub_1E37F2A9C();
  if ([objc_opt_self() isPhone])
  {
    [v27 _setIgnoreAppSupportedOrientations_];
    [v27 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  result = [v27 vuiView];
  if (result)
  {
    v32 = result;

    [v32 setAccessibilityIgnoresInvertColors_];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E37F27C8()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = (v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner);
  v9 = type metadata accessor for CollectionImpressionManager();
  v10 = sub_1E3F0AE3C();
  v8[3] = v9;
  v8[4] = &off_1F5D8D100;
  *v8 = v10;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  v11 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter;
  type metadata accessor for MediaShowcasingHeaderViewPresenter();
  *(v1 + v11) = sub_1E38C7E9C();
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 2;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_dismissOnEnd) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataTimeout) = 0x4024000000000000;
  v12 = v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataFadeInTime;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_waitForUserInitiatedPlaybackStart) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isVideoOnly) = 0;
  v13 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_hostMetadataView);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackDidBegin);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_initialMediaLoaded);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_indexDidChange);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_onClosePressed);
  *v17 = 0;
  v17[1] = 0;
  v18 = v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController____lazy_storage___backgroundMediaController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v19 = (v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver);
  *v19 = 0u;
  v19[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) = 7;
  v20 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio;
  v21[1] = 0;
  v21[2] = 0;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70);
  sub_1E4200634();
  (*(v4 + 32))(v1 + v20, v7, v2);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E37F2A9C()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10);
  OUTLINED_FUNCTION_0_10();
  v115 = v1;
  v116 = v0;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v114 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF0);
  OUTLINED_FUNCTION_0_10();
  v118 = v5;
  v119 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v117 = v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF8);
  OUTLINED_FUNCTION_0_10();
  v106 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE00);
  OUTLINED_FUNCTION_0_10();
  v108 = v12;
  v109 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v124 = v16;
  v125 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v113 = v18 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v103 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE08);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v97 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE10);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_26_3();
  v35 = (*((*MEMORY[0x1E69E7D40] & v34) + 0x430))();
  v36 = sub_1E3C53ACC();

  objc_opt_self();
  v112 = v36;
  v37 = swift_dynamicCastObjCClass();
  v38 = &selRef_collectionViewCanBecomeFocused_;
  if (v37)
  {
    v123 = v37;
    swift_getKeyPath();
    sub_1E41FE2F4();

    v120 = sub_1E3280A90(0, &qword_1EE23B1D0);
    v121 = v32;
    v39 = sub_1E4206A04();
    v122 = OUTLINED_FUNCTION_102_4(v39);
    v40 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    OUTLINED_FUNCTION_8_33(&qword_1EE23AD88, &qword_1ECF2AE08);
    v44 = sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v25, &unk_1ECF2D2B0);

    (*(v28 + 8))(v31, v26);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_3_15();
    v111 = v45;
    sub_1E32752B0(v46, v47);
    OUTLINED_FUNCTION_40_1();
    sub_1E4200844();
    OUTLINED_FUNCTION_38();

    v48 = OUTLINED_FUNCTION_102_3();
    v49(v48);
    v121 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_cancellables;
    OUTLINED_FUNCTION_27_11();
    sub_1E42004C4();
    swift_endAccess();

    v110 = objc_opt_self();
    v50 = [v110 defaultCenter];
    v51 = v112;
    v98 = v51;
    v52 = v113;
    sub_1E4206C14();

    v53 = sub_1E4206A04();
    v126 = v53;
    v54 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v122);
    OUTLINED_FUNCTION_5_42();
    v112 = sub_1E37FA784(v57, v58);
    v59 = v102;
    v60 = v125;
    v101 = v44;
    sub_1E42007D4();
    sub_1E325F6F0(v25, &unk_1ECF2D2B0);

    v99 = *(v124 + 8);
    v100 = v124 + 8;
    v99(v52, v60);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    v97 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
    v61 = v104;
    sub_1E4200844();

    v103 = *(v103 + 8);
    (v103)(v59, v61);
    OUTLINED_FUNCTION_27_11();
    sub_1E42004C4();
    swift_endAccess();

    v62 = [v110 defaultCenter];
    v63 = v98;
    v98 = v63;
    sub_1E4206C14();

    v64 = sub_1E4206A04();
    v126 = v64;
    v65 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v122);
    v68 = v125;
    sub_1E42007D4();
    sub_1E325F6F0(v25, &unk_1ECF2D2B0);

    v69 = v99;
    v99(v52, v68);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    sub_1E4200844();

    (v103)(v59, v61);
    OUTLINED_FUNCTION_27_11();
    sub_1E42004C4();
    swift_endAccess();

    v70 = [v110 defaultCenter];
    v71 = v98;
    sub_1E4206C14();

    v72 = v105;
    sub_1E42006C4();
    v73 = OUTLINED_FUNCTION_102_3();
    v69(v73);
    v74 = sub_1E4206A04();
    v126 = v74;
    v75 = OUTLINED_FUNCTION_23_19();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v122);
    OUTLINED_FUNCTION_36_13(&qword_1EE28A378, &qword_1ECF2ADF8);
    v78 = v107;
    sub_1E42007D4();
    sub_1E325F6F0(v25, &unk_1ECF2D2B0);

    (*(v106 + 8))(v72, v78);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_45_2();
    sub_1E32752B0(&qword_1EE28A278, &qword_1ECF2AE00);
    sub_1E4200844();
    OUTLINED_FUNCTION_31_4();

    v79 = OUTLINED_FUNCTION_58_8();
    v80(v79);
    OUTLINED_FUNCTION_27_11();
    sub_1E42004C4();
    swift_endAccess();

    v38 = &selRef_collectionViewCanBecomeFocused_;

    v81 = v125;
  }

  else
  {

    v81 = v125;
    v52 = v113;
  }

  v82 = [objc_opt_self() v38[372]];
  v83 = *MEMORY[0x1E69DF7E0];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_5_42();
  sub_1E37FA784(v84, v85);
  sub_1E42007B4();

  (*(v124 + 8))(v52, v81);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v86 = sub_1E4206A04();
  OUTLINED_FUNCTION_102_4(v86);
  v87 = OUTLINED_FUNCTION_23_19();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
  OUTLINED_FUNCTION_34_16(&qword_1EE28A2E0, &unk_1ECF33A10);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v25, &unk_1ECF2D2B0);

  v91 = OUTLINED_FUNCTION_58_8();
  v92(v91);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_3_15();
  sub_1E32752B0(v93, v94);
  OUTLINED_FUNCTION_40_1();
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  v95 = OUTLINED_FUNCTION_102_3();
  v96(v95);
  OUTLINED_FUNCTION_27_11();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E37F3838@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 player];
  *a2 = result;
  return result;
}

id sub_1E37F3888@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentMediaItemPresentationSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E37F38BC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  v3 = v2;
  sub_1E4205F14();
  sub_1E4207414();
  sub_1E375D7E8(v5, v3, &v6);

  sub_1E375D84C(v5);
  if (!*(&v7 + 1))
  {
LABEL_6:
    result = sub_1E325F6F0(&v6, &unk_1ECF296E0);
    goto LABEL_7;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a1 = 2;
  }

  return result;
}

void sub_1E37F39B8()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_21();
  (*(v2 + 1072))();
  OUTLINED_FUNCTION_37_3();
  v0(v1);
}

void sub_1E37F3A44(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v4 += 134;
  v5 = *v4;
  v6 = (*v4)();
  sub_1E3C52AD4();

  v7 = v5();
  sub_1E3C53790(a1);

  v8 = v5();
  sub_1E3C53B10();

  v5();
  v9 = OUTLINED_FUNCTION_70_3();
  sub_1E3C4770C(v9);

  v5();
  OUTLINED_FUNCTION_37_3();
  sub_1E3C475BC(1);
}

void sub_1E37F3B84()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 1072))();
  v0();
}

void sub_1E37F3C04()
{
  v3 = v1;
  OUTLINED_FUNCTION_61_6();
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 512))();
  v7 = sub_1E32AE9B0(v6);

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v0 & 0x8000000000000000) == 0 && v7 > v0)
  {
    v8 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataViewModels;
    OUTLINED_FUNCTION_11_3();
    v9 = *(v3 + v8);

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v3 + v8) = v9;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v9 = sub_1E37EFA58(v9);
      *(v3 + v8) = v9;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > v0)
    {
      *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v0 + 0x20) = v2;
      *(v3 + v8) = v9;
      swift_endAccess();

      v12 = *((*v4 & *v3) + 0x430);
      v13 = (v12)(v11);
      sub_1E3C465D8();

      v12();
      OUTLINED_FUNCTION_38();
      sub_1E3C4FCE0();

      return;
    }

LABEL_12:
    __break(1u);
  }
}

void sub_1E37F3DB8(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_21();
  (*(v4 + 1072))();
  OUTLINED_FUNCTION_37_3();
  a2(a1);
}

void sub_1E37F3E4C()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PlaylistViewController();
  objc_msgSendSuper2(&v4, sel_vui_viewDidLoad);
  v1 = [v0 vuiView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() blackColor];
    [v2 setVuiBackgroundColor_];

    sub_1E37F5270();
    sub_1E37F6B10();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E37F3F48(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaylistViewController();
  objc_msgSendSuper2(&v5, sel_vui_viewWillAppear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  v4 = (*((*MEMORY[0x1E69E7D40] & v3) + 0x430))();
  sub_1E3C52938(*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 0);
}

id sub_1E37F4048(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PlaylistViewController();
  objc_msgSendSuper2(&v9, sel_vui_viewDidAppear_, a1 & 1);
  OUTLINED_FUNCTION_36_3();
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x430);
  v6 = v5();
  v7 = sub_1E3C46500();

  if (v7)
  {
    if ((v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType] | 2) == 2)
    {
      v5();
      OUTLINED_FUNCTION_38();
      sub_1E3C4DFE0();
    }

    else
    {
    }
  }

  [v2 setNeedsStatusBarAppearanceUpdate];
  [v2 setNeedsUpdateOfHomeIndicatorAutoHidden];
  result = [objc_opt_self() isPhone];
  if (result)
  {
    [v2 _setIgnoreAppSupportedOrientations_];
    return [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

uint64_t sub_1E37F41F8(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PlaylistViewController();
  objc_msgSendSuper2(&v6, sel_vui_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer;
  if (*&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer])
  {

    sub_1E42004E4();
  }

  *&v2[v4] = 0;
}

void sub_1E37F42D4()
{
  v2 = OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v47 - v13;
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    v48 = v14;
    [v15 bounds];
    OUTLINED_FUNCTION_3();

    v49.origin.x = OUTLINED_FUNCTION_6();
    Width = CGRectGetWidth(v49);
    v18 = [v0 view];
    if (v18)
    {
      [v18 frame];
      OUTLINED_FUNCTION_99_3();
      v19 = OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_36_3();
      v21 = *((*MEMORY[0x1E69E7D40] & v20) + 0x430);
      v22 = v21();
      v23 = sub_1E3C511D0();

      if (v23)
      {
        OUTLINED_FUNCTION_12_5();
        *&v25 = COERCE_DOUBLE((*(v24 + 1048))());
        if ((v26 & 1) == 0 && Width < v19 && *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 2)
        {
          v27 = *&v25;
          [v23 videoBounds];
          MaxY = CGRectGetMaxY(v50);
          v29 = sub_1E324FBDC();
          v30 = *(v4 + 16);
          if (MaxY <= v27)
          {
            v30(v10, v29, v2);
            v41 = sub_1E41FFC94();
            v42 = sub_1E42067E4();
            if (OUTLINED_FUNCTION_104(v42))
            {
              v43 = OUTLINED_FUNCTION_125_0();
              *v43 = 0;
              _os_log_impl(&dword_1E323F000, v41, v42, "PlaylistViewController:: updateLegibleContentInsets to zero because metadata does not overlap", v43, 2u);
              OUTLINED_FUNCTION_55();
            }

            v44 = (*(v4 + 8))(v10, v2);
            v45 = (v21)(v44);
          }

          else
          {
            v31 = v48;
            v30(v48, v29, v2);
            v32 = sub_1E41FFC94();
            v33 = sub_1E42067E4();
            if (OUTLINED_FUNCTION_104(v33))
            {
              v34 = OUTLINED_FUNCTION_6_21();
              *v34 = 134217984;
              *(v34 + 4) = v27 + 20.0;
              _os_log_impl(&dword_1E323F000, v32, v33, "PlaylistViewController:: updateLegibleContentInsets to %f", v34, 0xCu);
              OUTLINED_FUNCTION_55();
            }

            v46 = (*(v4 + 8))(v31, v2);
            v45 = (v21)(v46);
          }

          sub_1E3952C94();
          sub_1E3C534D0();

LABEL_14:
          return;
        }
      }

      v35 = sub_1E324FBDC();
      (*(v4 + 16))(v7, v35, v2);
      v36 = sub_1E41FFC94();
      v37 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_104(v37))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_5_20(&dword_1E323F000, v38, v39, "PlaylistViewController:: updateLegibleContentInsets to default inset of 60");
        OUTLINED_FUNCTION_6_0();
      }

      v40 = (*(v4 + 8))(v7, v2);
      v23 = (v21)(v40);
      sub_1E3952C94();
      sub_1E3C534D0();
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E37F475C()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for PlaylistViewController();
  objc_msgSendSuper2(&v57, sel_vui_viewDidLayoutSubviews);
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x430);
  v5 = v4();
  v6 = [v5 view];

  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = OUTLINED_FUNCTION_85_3();
  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = v7;
  [v7 bounds];
  OUTLINED_FUNCTION_3();

  v9 = OUTLINED_FUNCTION_6();
  [v10 v11];

  v12 = OUTLINED_FUNCTION_85_3();
  if (!v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = v12;
  type metadata accessor for LayoutGrid();
  [v13 bounds];
  OUTLINED_FUNCTION_3();

  v58.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v58);
  v15 = sub_1E3A2579C(Width);
  v16 = OUTLINED_FUNCTION_85_3();
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v16;
  [v16 bounds];
  OUTLINED_FUNCTION_3();

  v59.origin.x = OUTLINED_FUNCTION_6();
  v18 = CGRectGetWidth(v59);
  v19 = OUTLINED_FUNCTION_85_3();
  if (!v19)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v19 frame];
  OUTLINED_FUNCTION_99_3();
  v20 = OUTLINED_FUNCTION_98_2();
  v21 = objc_opt_self();
  if ([v21 isPad] && sub_1E3A25310(v15) != 5 && (sub_1E37F9A28(), (OUTLINED_FUNCTION_75_2() & 1) != 0))
  {
    *&v22 = 46.0;
  }

  else
  {
    *&v22 = 40.0;
  }

  v23 = *&v22;
  if (![v21 isPad] || sub_1E3A25310(v15) == 5 || (sub_1E37F9A28(), v24 = 25.0, (OUTLINED_FUNCTION_75_2() & 1) == 0))
  {
    v24 = 20.0;
  }

  v25 = v4();
  if (v18 >= v20)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  sub_1E3C464B4(v26);

  sub_1E37F42D4();
  v27 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) == 7 || (sub_1E37F99D4(), (OUTLINED_FUNCTION_75_2() & 1) == 0))
  {
    v28 = v4();
    sub_1E3C50DD4(v15, 0);

    v29 = [v1 vuiTraitCollection];
    v55 = v15;
    sub_1E3C2AE10();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v56 = v1;
    v36 = (*((*v2 & *v1) + 0x200))();
    v37 = sub_1E32AE9B0(v36);
    v38 = 0;
    v15 = (v36 & 0xC000000000000001);
    while (1)
    {
      if (v37 == v38)
      {

        v1 = v56;
        *(v56 + v27) = v55;
        goto LABEL_31;
      }

      if (v15)
      {
        v40 = MEMORY[0x1E6911E60](v38, v36);
        v39 = v40;
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      if (__OFADD__(v38, 1))
      {
        break;
      }

      v41 = (*(*v39 + 392))(v40);
      if (v41)
      {
        (*(*v41 + 1640))(v31, v33, v35);
      }

      ++v38;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_31:
  sub_1E37F4D20();
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager))
  {
    OUTLINED_FUNCTION_88_0();
    v43 = *(v42 + 352);
    v45 = v44;
    OUTLINED_FUNCTION_66_8();
    v46 = v43();

    if (v46)
    {
      v47 = OUTLINED_FUNCTION_85_3();
      if (!v47)
      {
LABEL_43:
        __break(1u);
        return;
      }

      v48 = v47;
      [v47 bounds];
      v50 = v49;
      v52 = v51;

      [v46 sizeThatFits_];
      [v46 setFrame_];
    }
  }
}

void sub_1E37F4D20()
{
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView];
  if (!v1)
  {
    OUTLINED_FUNCTION_81_2();
    return;
  }

  v2 = v0;
  v66 = v1;
  v3 = [v0 vuiView];
  if (!v3)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v4 = v3;
  [v3 vui:v66 bringSubviewToFront:?];

  v5 = [v2 vuiView];
  if (!v5)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;

  v9 = [v2 vuiView];
  if (!v9)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;

  v13 = [v2 view];
  if (!v13)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14 = v13;
  v15 = [v13 window];

  if (v15 && (v16 = [v15 windowScene], v15, v16))
  {
    v17 = [v16 statusBarManager];

    if (v17)
    {
      [v17 statusBarFrame];
      CGRectGetHeight(v72);
    }
  }

  else
  {
    v17 = 0;
  }

  OUTLINED_FUNCTION_12_5();
  v19 = (*(v18 + 512))();
  if (!sub_1E32AE9B0(v19))
  {

    v23 = 0.0;
    goto LABEL_28;
  }

  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v19 + 32);

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_53;
  }

  v20 = MEMORY[0x1E6911E60](0, v19);
LABEL_15:

  v22 = (*(*v20 + 392))(v21);

  v23 = 0.0;
  if (!v22)
  {
LABEL_28:
    v38 = 0.0;
    goto LABEL_29;
  }

  type metadata accessor for PlaylistLockupLayout();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    goto LABEL_28;
  }

  v25 = v24;
  v26 = [v2 view];
  if (!v26)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v27 = v26;
  [v26 safeAreaInsets];
  v29 = v28;
  v31 = v30;

  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 176);

  v33(v67, v34);
  v35 = *v67;
  v36 = *MEMORY[0x1E69DDCE0];
  v37 = *(MEMORY[0x1E69DDCE0] + 8);
  if (v68)
  {
    v35 = *MEMORY[0x1E69DDCE0];
  }

  v65 = v35;
  if (v68)
  {
    v38 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    v38 = *&v67[1];
  }

  if (v8 >= v12)
  {
    OUTLINED_FUNCTION_8();
    (*(v55 + 152))(&v69);
    v40 = v69;
    v41 = v70;
    v42 = v71;
  }

  else
  {

    OUTLINED_FUNCTION_8();
    (*(v39 + 1728))(&v69);
    v40 = v69;
    v41 = v70;
    v42 = v71;
  }

  v56 = [v2 traitCollection];
  [v56 displayCornerRadius];
  v58 = v57;

  if (v58 <= 0.0)
  {
    v61 = [v2 view];
    if (!v61)
    {
LABEL_59:
      __break(1u);
      return;
    }

    v62 = v61;
    [v61 safeAreaInsets];
    v64 = v63;

    v23 = v65 * 0.5 + v64;
    if (v38 > v23)
    {
      v23 = v38;
    }
  }

  else
  {
    if (v42)
    {
      v59 = v37;
    }

    else
    {
      v59 = v41;
    }

    if (v42)
    {
      v40 = v36;
    }

    if (v59 > v31)
    {
      v38 = v59;
    }

    else
    {
      v38 = v31;
    }

    v60 = (*(*v25 + 1752))();

    if (v60 > v29)
    {
      v23 = v40;
    }

    else
    {
      v23 = v29 + v65;
    }

    if (v23 <= v29)
    {
      v23 = v29;
    }
  }

LABEL_29:
  v43 = [v2 vuiView];
  if (!v43)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v44 = v43;
  [v43 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v73.origin.x = v46;
  v73.origin.y = v48;
  v73.size.width = v50;
  v73.size.height = v52;
  [v66 setFrame_];

  OUTLINED_FUNCTION_81_2();
}

void sub_1E37F5270()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30);
  OUTLINED_FUNCTION_0_10();
  v62 = v3;
  v63 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v61 = v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADE0);
  OUTLINED_FUNCTION_0_10();
  v65 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v64 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADE8);
  OUTLINED_FUNCTION_0_10();
  v68 = v10;
  v69 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v66 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v60 = v15;
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v55 = v17;
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10);
  OUTLINED_FUNCTION_0_10();
  v58 = v21;
  v59 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v57 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  type metadata accessor for LayoutGrid();
  sub_1E3280A90(0, &qword_1EE23AD50);
  v25 = sub_1E41DA724();
  v26 = sub_1E3A2579C(v25);
  OUTLINED_FUNCTION_36_3();
  v28 = (*((*MEMORY[0x1E69E7D40] & v27) + 0x200))();
  v29 = sub_1E32AE9B0(v28);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {

      *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_currentSizeClass) = v26;
      sub_1E37F6530();
      v37 = [objc_opt_self() defaultCenter];
      v38 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x430);
      v39 = v38();
      v40 = sub_1E3C53ACC();

      sub_1E4206C14();
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      OUTLINED_FUNCTION_5_42();
      sub_1E37FA784(v41, v42);
      sub_1E42007B4();

      (*(v55 + 8))(v54, v56);
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v43 = sub_1E4206A04();
      v44 = OUTLINED_FUNCTION_102_4(v43);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
      OUTLINED_FUNCTION_34_16(&qword_1EE28A2E0, &unk_1ECF33A10);
      sub_1E3746800();
      sub_1E42007D4();
      sub_1E325F6F0(v60, &unk_1ECF2D2B0);

      (*(v58 + 8))(v57, v59);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      sub_1E32752B0(&qword_1EE28A250, &qword_1ECF2ADF0);
      OUTLINED_FUNCTION_40_1();
      sub_1E4200844();
      OUTLINED_FUNCTION_38();

      v48 = OUTLINED_FUNCTION_58_8();
      v49(v48);
      OUTLINED_FUNCTION_27_11();
      sub_1E42004C4();
      swift_endAccess();

      sub_1E37F5BE0();
      v50 = v38();
      sub_1E3C47C20();

      sub_1E32752B0(&qword_1EE28A110, &qword_1ECF35A30);
      sub_1E42006C4();
      (*(v62 + 8))(v61, v63);
      v70 = sub_1E4206A04();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v44);
      OUTLINED_FUNCTION_36_13(&qword_1EE28A380, &qword_1ECF2ADE0);
      sub_1E42007D4();
      sub_1E325F6F0(v60, &unk_1ECF2D2B0);

      (*(v65 + 8))(v64, v67);
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      sub_1E32752B0(&qword_1EE28A280, &qword_1ECF2ADE8);
      OUTLINED_FUNCTION_40_1();
      sub_1E4200844();
      OUTLINED_FUNCTION_38();

      (*(v68 + 8))(v66, v69);
      OUTLINED_FUNCTION_27_11();
      sub_1E42004C4();
      swift_endAccess();

      sub_1E37F66D0();
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1E6911E60](i, v28);
      v31 = v32;
    }

    else
    {
      if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v31 = *(v28 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v33 = (*(*v31 + 392))(v32);
    if (v33)
    {
      v34 = v33;
      sub_1E3C2AE10();
      v36 = v35;
      (*(*v34 + 1640))();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1E37F5BE0()
{
  OUTLINED_FUNCTION_31_1();
  v79 = sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v77 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v76 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD98);
  OUTLINED_FUNCTION_0_10();
  v74 = v6;
  v75 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v73 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADA0);
  OUTLINED_FUNCTION_0_10();
  v80 = v10;
  v81 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v78 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADA8);
  OUTLINED_FUNCTION_0_10();
  v83 = v14;
  v84 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v82 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v87 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADB0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v72 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF40C90);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v72 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADB8);
  OUTLINED_FUNCTION_0_10();
  v85 = v33;
  v86 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_31_2();
  v35 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver;
  v88 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_volumeObserver))
  {

    sub_1E42004E4();
  }

  v36 = [objc_opt_self() sharedInstance];
  swift_getKeyPath();
  sub_1E41FE2F4();

  OUTLINED_FUNCTION_8_33(&qword_1EE23ADB0, &qword_1ECF2ADB0);
  sub_1E4200824();
  (*(v22 + 8))(v25, v20);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  OUTLINED_FUNCTION_66_8();
  v37 = sub_1E4206A04();
  OUTLINED_FUNCTION_102_4(v37);
  v38 = v87;
  OUTLINED_FUNCTION_32_2();
  v72[0] = v39;
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_1E32752B0(&qword_1EE28A338, &unk_1ECF40C90);
  v72[1] = sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F6F0(v38, &unk_1ECF2D2B0);

  (*(v28 + 8))(v31, v26);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v43 = v88;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3_15();
  sub_1E32752B0(v44, v45);
  v46 = sub_1E4200844();

  v47 = OUTLINED_FUNCTION_102_3();
  v48(v47);
  *(v43 + v35) = v46;

  v50 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x430))(v49);
  v51 = sub_1E3C53ACC();

  objc_opt_self();
  v52 = swift_dynamicCastObjCClass();
  if (v52)
  {
    v53 = v52;
    swift_getKeyPath();
    v54 = v38;
    v55 = v73;
    v85 = v53;
    sub_1E41FE2F4();

    v86 = v51;
    v56 = v76;
    sub_1E42069B4();
    v57 = sub_1E4206A04();
    v89 = v57;
    OUTLINED_FUNCTION_8_33(&qword_1EE23AD98, &qword_1ECF2AD98);
    v58 = v78;
    v59 = v75;
    sub_1E4200804();

    (*(v77 + 8))(v56, v79);
    (*(v74 + 8))(v55, v59);
    v60 = sub_1E4206A04();
    v89 = v60;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v72[0]);
    sub_1E32752B0(&qword_1EE28A2A8, &qword_1ECF2ADA0);
    v64 = v81;
    v65 = v82;
    sub_1E42007D4();
    sub_1E325F6F0(v54, &unk_1ECF2D2B0);

    (*(v80 + 8))(v58, v64);
    OUTLINED_FUNCTION_4_0();
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v67 = swift_allocObject();
    *(v67 + 16) = v85;
    *(v67 + 24) = v66;
    OUTLINED_FUNCTION_3_15();
    sub_1E32752B0(v68, v69);
    v70 = v86;
    OUTLINED_FUNCTION_40_1();
    v71 = v84;
    sub_1E4200844();
    OUTLINED_FUNCTION_38();

    (*(v83 + 8))(v65, v71);
    OUTLINED_FUNCTION_27_11();
    sub_1E42004C4();
    swift_endAccess();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E37F6478@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 outputVolume];
  *a2 = v4;
  return result;
}

id sub_1E37F64AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 avPlayer];
  *a2 = result;
  return result;
}

id sub_1E37F64E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMuted];
  *a2 = result;
  return result;
}

void sub_1E37F6530()
{
  OUTLINED_FUNCTION_21();
  v1 += 134;
  v2 = *v1;
  v3 = (*v1)();
  [v0 addChildViewController_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = v2();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v5 addSubview_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v2();
  v11 = [v10 view];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v9 vui:v11 sendSubviewToBack:?];

  v12 = v2();
  [v12 vui:v0 didMoveToParentViewController:?];
}

void sub_1E37F66D0()
{
  OUTLINED_FUNCTION_82_2();
  v1 = type metadata accessor for BackgroundPlaybackUIInteractionManager();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 1072))();
  v4 = v0;
  v5 = v1;
  sub_1E3C9B3A4();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  (*(v6 + 240))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v7) + 0x138))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v8) + 0x150))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v9) + 0x108))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v10) + 0x120))(0);
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_26_3();
  v13 = *((*v2 & v12) + 0x198);

  v13(sub_1E37FA2C4, v11);

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_26_3();
  v15 = *((*v2 & v14) + 0x1B0);

  v16 = OUTLINED_FUNCTION_40_1();
  v15(v16);

  OUTLINED_FUNCTION_26_3();
  v18 = (*((*v2 & v17) + 0x160))();
  if (v18)
  {
    v19 = v18;
    [v18 setVuiAlpha_];
    v20 = [v4 view];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = v20;
    [v20 vui:v19 addSubview:0 oldView:?];
  }

  *&v4[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager] = v5;
  OUTLINED_FUNCTION_95();
}

void sub_1E37F6A2C()
{
  OUTLINED_FUNCTION_55_4();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v1 + 1072))();
  OUTLINED_FUNCTION_26_3();
  if ((*((*v0 & v2) + 0x280))() < 0)
  {
    __break(1u);
  }

  else
  {
    j__OUTLINED_FUNCTION_18();
    sub_1E3C4EE0C();
  }
}

void sub_1E37F6B10()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_26_3();
  v11 = (*((*MEMORY[0x1E69E7D40] & v10) + 0x200))();
  if (!sub_1E32AE9B0(v11))
  {

    v21 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v21, v3);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v23))
    {
      v24 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v24);
      _os_log_impl(&dword_1E323F000, v22, v23, "PlaylistViewController:: Not adding header view because there are no video models", v1, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_10;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v12 = *(v11 + 32);
  }

  v13 = *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter];
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E38C8038(v12, v13, sub_1E37FA87C, v14, sub_1E37FA884, v15, v27);
  memcpy(v26, v27, sizeof(v26));
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADD8));
  sub_1E37FA88C(v27, &v25);
  v17 = sub_1E4201214();
  v18 = [v2 view];
  if (v18)
  {
    v19 = v18;
    [v18 vui:v17 addSubview:0 oldView:?];

    sub_1E37FA8E8(v27);

    v20 = *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView];
    *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView] = v17;

LABEL_10:
    OUTLINED_FUNCTION_95();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1E37F6E18()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v12 = OUTLINED_FUNCTION_22_4();
  v13(v12);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v15 = (*(v14 + 1072))();

    v0 = v15;
    sub_1E3C53C48();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v17 = (*(v16 + 1024))();

    if (v17)
    {
      v17();
      sub_1E34AF594(v17);
    }
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F6FEC()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E324FBDC();
    v5 = OUTLINED_FUNCTION_24_10();
    v6(v5);
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_77_3(v8))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_55();
    }

    v14 = OUTLINED_FUNCTION_63_0();
    v15(v14);
    OUTLINED_FUNCTION_8();
    v17 = *(v16 + 152);

    v17(v1 & 1);

    OUTLINED_FUNCTION_67_1();
    v19 = (*((*MEMORY[0x1E69E7D40] & v18) + 0x430))();
    sub_1E3C52FF4(v1 & 1);
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E37F71B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v69 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v63 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADC0);
  OUTLINED_FUNCTION_0_10();
  v66 = v9;
  v67 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v65 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADC8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v68 = v16;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v64 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer))
  {

    sub_1E42004E4();
  }

  v26 = sub_1E324FBDC();
  v61 = *(v19 + 16);
  v62 = v26;
  v61(v25);
  v27 = sub_1E41FFC94();
  v28 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v28))
  {
    v29 = OUTLINED_FUNCTION_125_0();
    v60 = v17;
    *v29 = 0;
    OUTLINED_FUNCTION_5_20(&dword_1E323F000, v30, v31, "PlaylistViewController: starting fullscreen transition timer");
    v17 = v60;
    OUTLINED_FUNCTION_6_0();
  }

  v32 = *(v19 + 8);
  v33 = v32(v25, v17);
  v34 = v1;
  v35 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  if ((COERCE_UNSIGNED_INT64((v35)(v33)) & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_1E3280A90(0, &qword_1EE23AE40);
    v35();
    v39 = [objc_opt_self() mainRunLoop];
    sub_1E4207054();
    v40 = v63;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = sub_1E4206F14();

    sub_1E325F6F0(v40, &unk_1ECF3DB30);
    v70 = v45;
    sub_1E4206F04();
    sub_1E37FA784(&qword_1EE23AE48, MEMORY[0x1E6969F70]);
    v46 = sub_1E4200584();

    v70 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40);
    sub_1E32752B0(&qword_1EE28A360, &unk_1ECF3DB40);
    v47 = v65;
    sub_1E42007A4();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v48 = sub_1E4206A04();
    v70 = v48;
    sub_1E42069A4();
    v49 = v69;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    sub_1E32752B0(&qword_1ECF3DB50, &qword_1ECF2ADC0);
    sub_1E3746800();
    v55 = v67;
    v54 = v68;
    sub_1E42007D4();
    sub_1E325F6F0(v49, &unk_1ECF2D2B0);

    (*(v66 + 8))(v47, v55);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_3_15();
    sub_1E32752B0(v56, v57);
    OUTLINED_FUNCTION_40_1();
    sub_1E4200844();
    OUTLINED_FUNCTION_38();

    (*(v14 + 8))(v54, v12);
    *(v34 + v64) = v54;
  }

  else
  {
    (v61)(v22, v62, v17);
    v36 = sub_1E41FFC94();
    v37 = sub_1E42067E4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_125_0();
      *v38 = 0;
      _os_log_impl(&dword_1E323F000, v36, v37, "PlaylistViewController: ignoring the metadata timeout since accessibility is enabled", v38, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    return v32(v22, v17);
  }
}

void sub_1E37F78C4()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v5);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_22_4();
  v12(v11);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1E37F8064();
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E37F79E4()
{
  v1 = OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_26_3();
  v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x430))();
  v10 = sub_1E3C51004();

  if (!v10)
  {
LABEL_4:
    v14 = sub_1E324FBDC();
    (*(v3 + 16))(v7, v14, v1);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "PlaylistViewController: not adding fade in because player or time is missing", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_12_5();
  *&v12 = COERCE_DOUBLE((*(v11 + 592))());
  if (v13)
  {

    goto LABEL_4;
  }

  v19 = *&v12;
  [v10 duration];
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E4297BE0;
  *(v22 + 56) = MEMORY[0x1E69E63B0];
  *(v22 + 32) = v21 - v19;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_2_4();
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = v10;
  v31 = sub_1E37FA190;
  v32 = v23;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_1E37EB82C;
  *(&v30 + 1) = &block_descriptor_83;
  _Block_copy(&aBlock);
  v24 = v10;

  v25 = OUTLINED_FUNCTION_63_0();
  sub_1E37F9910(v25, v26, v24);
  v27 = OUTLINED_FUNCTION_31_4();
  _Block_release(v27);
  if (v22)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {

    aBlock = 0u;
    v30 = 0u;
  }

  v28 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver;
  OUTLINED_FUNCTION_11_3();
  sub_1E37FA198(&aBlock, v0 + v28, &unk_1ECF296E0);
  return swift_endAccess();
}

void sub_1E37F7D30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E324FBDC();
    v7 = OUTLINED_FUNCTION_24_10();
    v8(v7);
    v9 = sub_1E41FFC94();
    v10 = sub_1E42067E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v3 & 1;
      _os_log_impl(&dword_1E323F000, v9, v10, "PlaylistViewController: did cross boundary due to time jump %{BOOL}d", v11, 8u);
      OUTLINED_FUNCTION_6_0();
    }

    v12 = OUTLINED_FUNCTION_63_0();
    v13(v12);
    v6[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden] = 0;
    [v6 setNeedsStatusBarAppearanceUpdate];
    OUTLINED_FUNCTION_67_1();
    v15 = *((*MEMORY[0x1E69E7D40] & v14) + 0x430);
    v15();
    v16 = OUTLINED_FUNCTION_70_3();
    sub_1E3C4D450(v16);

    v17 = (v15)();
    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    v19 = sub_1E3C4D0C0();
    sub_1E3C4D0C8(0, 1, sub_1E37FA1E8, v18, nullsub_1, 0, v19);

    MEMORY[0x1E69144A0](&v23);

    v6[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState] = 3;
    sub_1E37EFFB4();
    v20 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3294EE4(&v6[v20], &v21, &unk_1ECF296E0);
    if (v22)
    {
      sub_1E329504C(&v21, &v23);
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      [v1 removeBoundaryTimeObserverWithToken_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {

      sub_1E325F6F0(&v21, &unk_1ECF296E0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37F8064()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState;
  v2 = v0[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState];
  if (v2 != 2)
  {
    v3 = v0;
    if (v2 == 3)
    {

      sub_1E37F817C();
    }

    else if (v2)
    {

      sub_1E37F82B0();
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      v5 = (*(v4 + 1072))();
      sub_1E3C53CE8(1);

      v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden] = 0;
      [v3 setNeedsStatusBarAppearanceUpdate];
      v3[v1] = 1;

      sub_1E37EFFB4();
    }
  }
}

void sub_1E37F817C()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer])
  {

    sub_1E42004E4();
  }

  OUTLINED_FUNCTION_12_5();
  v2 += 134;
  v3 = *v2;
  v4 = (*v2)();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();

  OUTLINED_FUNCTION_76_3();

  (v3)(v5);
  v6 = OUTLINED_FUNCTION_70_3();
  sub_1E3C4D450(v6);

  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 1;
  [v1 setNeedsStatusBarAppearanceUpdate];
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 0;

  sub_1E37EFFB4();
}

void sub_1E37F82B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) == 1;
  OUTLINED_FUNCTION_21();
  v4 += 134;
  v5 = *v4;
  v6 = (*v4)();
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  OUTLINED_FUNCTION_19_6();
  OUTLINED_FUNCTION_91_2();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v3;
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_45_2();
  OUTLINED_FUNCTION_91_2();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;

  sub_1E3C4CD98();

  (v5)(v10);
  v11 = OUTLINED_FUNCTION_70_3();
  sub_1E3C4D450(v11);

  *(v2 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  [v2 setNeedsStatusBarAppearanceUpdate];
  v12 = [v2 vuiView];
  if (v12)
  {
    v13 = v12;
    [v12 setNeedsLayout];

    sub_1E37F71B4();
    *(v2 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 3;
    OUTLINED_FUNCTION_25_2();

    sub_1E37EFFB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E37F84F4()
{
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner, &unk_1ECF296D0);

  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_hostMetadataView);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackDidBegin);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_initialMediaLoaded);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_indexDidChange);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_onClosePressed);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver, &unk_1ECF296E0);
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78);
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_1E37F8654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E37F88A4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 432))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E37F8944(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  result = (*(v4 + 928))();
  if (result)
  {
    OUTLINED_FUNCTION_152();
    v6 = v2(a2);
    v7 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v7);
    return v6 & 1;
  }

  return result;
}

void sub_1E37F89C8()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v5);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_22_4();
  v12(v11);
  OUTLINED_FUNCTION_36_3();
  if ((*((*MEMORY[0x1E69E7D40] & v13) + 0x3D0))())
  {
    OUTLINED_FUNCTION_152();
    v14();
    v15 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v15);
  }

  OUTLINED_FUNCTION_12_5();
  if ((*(v16 + 864))())
  {
    sub_1E37F8B60(1);
  }

  sub_1E37F42D4();
  OUTLINED_FUNCTION_95();
}

void sub_1E37F8B60(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager))
  {
    OUTLINED_FUNCTION_88_0();
    v5 = *(v4 + 352);
    v7 = v6;
    OUTLINED_FUNCTION_66_8();
    v8 = v5();

    if (v8)
    {
      if (a1)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      v10 = v8;
      [v10 setVuiAlpha_];
      if (a1)
      {
        CGAffineTransformMakeScale(&v18, 1.1, 1.1);
        v12 = *&v18.a;
        v11 = *&v18.c;
        v13 = *&v18.tx;
      }

      else
      {
        v11 = xmmword_1E4297490;
        v12 = xmmword_1E4297540;
        v13 = 0uLL;
      }

      *&v18.a = v12;
      *&v18.c = v11;
      *&v18.tx = v13;
      [v10 setTransform_];

      v14 = objc_opt_self();
      OUTLINED_FUNCTION_2_4();
      v15 = swift_allocObject();
      *(v15 + 16) = a1 & 1;
      *(v15 + 24) = v10;
      *&v18.tx = sub_1E37FA7D4;
      *&v18.ty = v15;
      *&v18.a = MEMORY[0x1E69E9820];
      *&v18.b = 1107296256;
      *&v18.c = sub_1E378AEA4;
      *&v18.d = &block_descriptor_109;
      v16 = _Block_copy(&v18);
      v17 = v10;
      OUTLINED_FUNCTION_31_4();

      [v14 vui:v16 animateWithDuration:0.25 animations:?];

      _Block_release(v16);
    }
  }
}

void sub_1E37F8D40(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_21();
  if (((*(v3 + 864))() & 1) == 0)
  {

    sub_1E37F8B60(a2 & 1);
  }
}

void sub_1E37F8DCC()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v12 = OUTLINED_FUNCTION_22_4();
  v13(v12);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer))
  {

    sub_1E42004E4();
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F8EDC()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_24_10();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_77_3(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = v2 & 1;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_63_0();
  v15(v14);
  OUTLINED_FUNCTION_67_1();
  if ((*((*MEMORY[0x1E69E7D40] & v16) + 0x3B8))())
  {
    OUTLINED_FUNCTION_152();
    v0(v2 & 1);
    v17 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v17);
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F9060()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_24_10();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_77_3(v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_63_0();
  v15(v14);
  OUTLINED_FUNCTION_67_1();
  v16 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & v17) + 0x390))() & 1) == 0 || *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v18 + 104))(v19 & 1);
  }

  if (v2)
  {
    (*((*v16 & *v0) + 0x2A8))(1);
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  [v0 setNeedsStatusBarAppearanceUpdate];
  OUTLINED_FUNCTION_67_1();
  if (!(*((*v16 & v20) + 0x3E8))())
  {
    goto LABEL_11;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_152();
    (v0)(v2);
    v21 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v21);
LABEL_11:
    OUTLINED_FUNCTION_95();
    return;
  }

  __break(1u);
}

void sub_1E37F92C4()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v5);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_22_4();
  v12(v11);
  sub_1E37F71B4();
  OUTLINED_FUNCTION_95();
}

void sub_1E37F93B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_24_10();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v5;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v3;
    _os_log_impl(&dword_1E323F000, v9, v10, "PlaylistViewController:: will change from page %lu to index %lu", v11, 0x16u);
    OUTLINED_FUNCTION_6_0();
  }

  v12 = OUTLINED_FUNCTION_63_0();
  v13(v12);
  OUTLINED_FUNCTION_36_3();
  if ((*((*MEMORY[0x1E69E7D40] & v14) + 0x390))())
  {
    v15 = sub_1E3C51370();
    if (v15)
    {
      v16 = sub_1E32AE9B0(v15);

      if (v16 >= 2)
      {
        OUTLINED_FUNCTION_12_5();
        v17 += 134;
        v18 = *v17;
        v19 = (*v17)();
        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        OUTLINED_FUNCTION_19_6();

        OUTLINED_FUNCTION_76_3();

        v20 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        sub_1E3294EE4(v1 + v20, &v27, &unk_1ECF296E0);
        if (v28)
        {
          v21 = sub_1E329504C(&v27, &v29);
          (v18)(v21);
          OUTLINED_FUNCTION_66_8();
          v22 = sub_1E3C51004();

          if (v22)
          {
            __swift_project_boxed_opaque_existential_1(&v29, v30);
            [v22 removeBoundaryTimeObserverWithToken_];

            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_1(&v29);
        }

        else
        {
          sub_1E325F6F0(&v27, &unk_1ECF296E0);
        }

        if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager))
        {
          OUTLINED_FUNCTION_88_0();
          v24 = *(v23 + 704);
          v26 = v25;
          v24();
        }

        *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 2;
        sub_1E37EFFB4();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37F9728()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v8, v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_79_6();
    OUTLINED_FUNCTION_78_2();
    if (v20)
    {
      v18 = v19;
    }

    if (v14 == 2)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if (v14 == 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v18;
    }

    v23 = sub_1E3270FC8(v21, v22, &v29);

    *(v12 + 4) = v23;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v3 + 8))(v7, v1);
  sub_1E37F8064();
  OUTLINED_FUNCTION_25_2();
}

id sub_1E37F9910(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E42062A4();

  v6 = [a3 addBoundaryTimeObserverForTimes:v5 withHandler:a2];

  return v6;
}

uint64_t type metadata accessor for PlaylistViewController()
{
  result = qword_1EE29A0F0;
  if (!qword_1EE29A0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E37F99D4()
{
  result = qword_1EE287FA0;
  if (!qword_1EE287FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287FA0);
  }

  return result;
}

unint64_t sub_1E37F9A28()
{
  result = qword_1EE23C240;
  if (!qword_1EE23C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23C240);
  }

  return result;
}

unint64_t sub_1E37F9A88()
{
  result = qword_1ECF2AD88;
  if (!qword_1ECF2AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AD88);
  }

  return result;
}

unint64_t sub_1E37F9AE0()
{
  result = qword_1ECF2AD90;
  if (!qword_1ECF2AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AD90);
  }

  return result;
}

void sub_1E37F9B3C()
{
  sub_1E37F9C6C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E37F9C6C()
{
  if (!qword_1EE289F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AD70);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289F10);
    }
  }
}

_BYTE *sub_1E37F9CE8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistViewController.BackgroundPlaybackState(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
      }
    }

    return OUTLINED_FUNCTION_18();
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = (*result | (v5 << 8)) - 3;
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaylistViewController.BackgroundPlaybackState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E37F9F58(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E37F9F74(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1E37F9F9C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((v1 & 1) == 0)
    {
      v4 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
      if (v4)
      {
        v5 = v4;
        [v5 setVuiAlpha_];
      }
    }
  }
}

void sub_1E37FA01C()
{
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      OUTLINED_FUNCTION_19_6();
      v11 = sub_1E37FAED0;
      v12 = v1;
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_28_16();
      v9 = v6;
      v10 = &block_descriptor_12;
      v7 = _Block_copy(aBlock);

      [v5 vui:v7 animateWithDuration:0.25 animations:?];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

void sub_1E37FA110(double a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
    v5 = v4;

    if (v4)
    {
      [v5 setVuiAlpha_];
    }
  }
}

uint64_t sub_1E37FA198(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 40))(v3, v4);
  return v3;
}

void sub_1E37FA1E8()
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
    if (v3)
    {
      [v3 setVuiAlpha_];
    }

    if (*&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager])
    {
      OUTLINED_FUNCTION_88_0();
      v5 = *(v4 + 352);
      v7 = v6;
      OUTLINED_FUNCTION_66_8();
      v8 = v5();

      if (v8)
      {
        [v8 setVuiAlpha_];
      }
    }
  }
}

void sub_1E37FA2C4(char a1)
{
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_91_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;
  v11 = sub_1E37FA4CC;
  v12 = v5;
  OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_28_16();
  v9 = v6;
  v10 = &block_descriptor_93;
  v7 = _Block_copy(aBlock);

  [v2 vui:v7 animateWithDuration:0.25 animations:?];
  _Block_release(v7);
}

void sub_1E37FA3C0(char a1)
{
  OUTLINED_FUNCTION_7_4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1 == 1)
    {
      OUTLINED_FUNCTION_12_5();
      if ((*(v4 + 912))())
      {
        OUTLINED_FUNCTION_8();
        v6 = *(v5 + 104);

        v6(1);
      }

      v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden] = 0;
      [v3 setNeedsStatusBarAppearanceUpdate];
      v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState] = 3;
      sub_1E37EFFB4();
      sub_1E37F71B4();
    }
  }
}