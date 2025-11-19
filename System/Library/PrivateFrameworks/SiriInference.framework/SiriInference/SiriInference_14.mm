uint64_t sub_1DD48DFB4(char a1, uint64_t a2, char a3, char a4, char *a5, char a6, char a7, char a8)
{
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *a5;
  *(v8 + 55) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 49) = a3;
  *(v8 + 50) = a4;
  *(v8 + 51) = v11;
  *(v8 + 52) = a7;
  *(v8 + 53) = a6;
  *(v8 + 56) = MEMORY[0x1E69E7CC0];
  *(v8 + 54) = a8;
  return v8;
}

uint64_t sub_1DD48E004()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000019, 0x80000001DD66D4A0);
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_15_20();
  MEMORY[0x1E12B2260](0x3D646E756F622CLL, 0xE700000000000000);
  LOBYTE(v4) = *(v0 + 49);
  OUTLINED_FUNCTION_15_20();
  MEMORY[0x1E12B2260](0x6572757361656D2CLL, 0xEA00000000005B3DLL);
  LOBYTE(v4) = *(v0 + 50);
  OUTLINED_FUNCTION_15_20();
  MEMORY[0x1E12B2260](0x5579427465732C5DLL, 0xEC0000003D726573);
  if (*(v0 + 53))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 53))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v1, v2);

  MEMORY[0x1E12B2260](0x3D65756C61762CLL, 0xE700000000000000);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  OUTLINED_FUNCTION_15_20();
  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0;
}

void sub_1DD48E1B8(uint64_t a1)
{
  v2 = v1;
  v46 = sub_1DD63D078();
  v4 = OUTLINED_FUNCTION_0(v46);
  v37 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1DD63D2B8();
  v12 = OUTLINED_FUNCTION_0(v11);
  v44 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v48 = v17 - v16;
  if (*(v2 + 50) > 1u)
  {
    return;
  }

  v18 = MEMORY[0x1E6968120];
  if (!*(v2 + 49))
  {
    goto LABEL_5;
  }

  if (*(v2 + 49) == 1)
  {
    v18 = MEMORY[0x1E6968110];
LABEL_5:
    v36 = sub_1DD48DBF4(a1, v18);
    goto LABEL_7;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v19 = sub_1DD48E73C();
  v43 = *(v19 + 16);
  if (v43)
  {
    v20 = 0;
    OUTLINED_FUNCTION_18_3();
    v40 = v19 + v21;
    v41 = v19;
    v22 = *(v36 + 16);
    v38 = (v23 + 8);
    v39 = v22;
    v42 = v11;
    while (v20 < *(v19 + 16))
    {
      v45 = v20;
      (*(v44 + 16))(v48, v40 + *(v44 + 72) * v20, v11);
      if (v22)
      {
        OUTLINED_FUNCTION_18_3();
        v25 = v36 + v24;
        v47 = *(v26 + 72);
        v27 = *(v26 + 16);
        v28 = v22;
        do
        {
          v27(v10, v25, v46);
          v29 = sub_1DD63D2C8();
          (*(v37 + 8))(v10, v46);
          v30 = *(v2 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 56) = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = *(v30 + 16);
            sub_1DD3BE460();
            v30 = v34;
            *(v2 + 56) = v34;
          }

          v32 = *(v30 + 16);
          if (v32 >= *(v30 + 24) >> 1)
          {
            sub_1DD3BE460();
            v30 = v35;
          }

          *(v30 + 16) = v32 + 1;
          *(v30 + 8 * v32 + 32) = v29;
          *(v2 + 56) = v30;
          v25 += v47;
          --v28;
        }

        while (v28);
      }

      v20 = v45 + 1;
      v11 = v42;
      (*v38)(v48, v42);
      v19 = v41;
      v22 = v39;
      if (v45 + 1 == v43)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1DD48E554(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v24 = v2;
    v25 = v3;
    if (*(a1 + 50) != *(a2 + 50))
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v20 = *(a1 + 24);
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v16 = *(a2 + 24);
    v17 = v10;
    v18 = v11;
    v19 = v12;
    sub_1DD48FEF0(v6, v7, v8, v9);
    sub_1DD48FEF0(v16, v10, v11, v12);
    v13 = sub_1DD48D7F4(&v20, &v16);
    sub_1DD48FF14(v16, v17, v18, v19);
    sub_1DD48FF14(v20, v21, v22, v23);
    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

    if (sub_1DD3B017C(*(a1 + 49), *(a2 + 49)))
    {
      v14 = *(a1 + 54) ^ *(a2 + 54) ^ 1;
    }

    else
    {
LABEL_7:
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DD48E664(void *a1)
{
  MEMORY[0x1E12B3140](*(v1 + 16));
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  sub_1DD48D9CC(a1);
  MEMORY[0x1E12B3140](*(v1 + 50));
  *(v1 + 49);
  sub_1DD63FD28();

  v3 = *(v1 + 54);
  return sub_1DD640E48();
}

uint64_t sub_1DD48E73C()
{
  v2 = MEMORY[0x1E69E7CC0];
  switch(*(v0 + 16))
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v3 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v3);
      v5 = v4;
      v7 = *(v6 + 72);
      v8 = *(v4 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A98];
      goto LABEL_13;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v21 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v21);
      v5 = v22;
      v24 = *(v23 + 72);
      v25 = *(v22 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A88];
      goto LABEL_13;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v11 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v11);
      v5 = v12;
      v14 = *(v13 + 72);
      v15 = *(v12 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A58];
      goto LABEL_13;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v36 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v36);
      v5 = v37;
      v39 = *(v38 + 72);
      v40 = *(v37 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A48];
      goto LABEL_13;
    case 6:
      if (*(v0 + 48) == 2)
      {
        v41 = *(v0 + 40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
        OUTLINED_FUNCTION_43();
        v42 = sub_1DD63D2B8();
        OUTLINED_FUNCTION_1_49(v42);
        v44 = v43;
        v46 = *(v45 + 72);
        v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v2 = OUTLINED_FUNCTION_32_12();
        if (v41)
        {
          *(v2 + 16) = xmmword_1DD643F90;
          (*(v44 + 104))(v2 + v47, *MEMORY[0x1E6969AB0], v0);
        }

        else
        {
          *(v2 + 16) = xmmword_1DD643F80;
          v54 = v2 + v47;
          v55 = *(v44 + 104);
          v55(v54, *MEMORY[0x1E6969AB0], v0);
          v55(v54 + v46, *MEMORY[0x1E6969A30], v0);
        }
      }

      return v2;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v16 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v16);
      v5 = v17;
      v19 = *(v18 + 72);
      v20 = *(v17 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A20];
      goto LABEL_13;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v26 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v26);
      v5 = v27;
      v29 = *(v28 + 72);
      v30 = *(v27 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A10];
      goto LABEL_13;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v31 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v31);
      v5 = v32;
      v34 = *(v33 + 72);
      v35 = *(v32 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A78];
      goto LABEL_13;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
      OUTLINED_FUNCTION_43();
      v48 = sub_1DD63D2B8();
      OUTLINED_FUNCTION_1_49(v48);
      v5 = v49;
      v51 = *(v50 + 72);
      v52 = *(v49 + 80);
      OUTLINED_FUNCTION_3_38();
      v9 = swift_allocObject();
      v2 = v9;
      *(v9 + 16) = xmmword_1DD643F90;
      v10 = MEMORY[0x1E6969A68];
LABEL_13:
      (*(v5 + 104))(v9 + v1, *v10, v0);
      break;
    default:
      return v2;
  }

  return v2;
}

void sub_1DD48ECD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v204 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_0();
  v203 = v5;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_0();
  v202 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  v201 = v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v200 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_0();
  v199 = v13;
  OUTLINED_FUNCTION_8_1();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v199 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v199 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v199 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v199 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v199 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v199 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v199 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v43 = &v199 - v42;
  v205 = v0;
  v44 = *(v0 + 16);
  v206 = MEMORY[0x1E69E7CC0];
  switch(v44)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      v45 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v45);
      v47 = *(v46 + 72);
      OUTLINED_FUNCTION_24_12();
      v48 = swift_allocObject();
      v49 = OUTLINED_FUNCTION_21_16(v48, xmmword_1DD643F90);
      v52 = OUTLINED_FUNCTION_9_27(v43, v50, v51, v49);
      OUTLINED_FUNCTION_8_29(v19, v53, v54, v52);
      if (v56)
      {
        goto LABEL_69;
      }

      if (v55)
      {
        OUTLINED_FUNCTION_27_15();
LABEL_69:
        OUTLINED_FUNCTION_18_19();
        OUTLINED_FUNCTION_28_7();
        v206 = v48;
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_31_13();
      if (v56)
      {
        goto LABEL_94;
      }

      if (v57 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_19_2();
        if (!v58)
        {
          goto LABEL_108;
        }

        OUTLINED_FUNCTION_30_11();
        goto LABEL_69;
      }

      goto LABEL_101;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v85 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v85);
      v87 = *(v86 + 72);
      v88 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v88, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      v92 = OUTLINED_FUNCTION_9_27(v40, v89, v90, v91);
      OUTLINED_FUNCTION_8_29(v17, v93, v94, v92);
      if (v56)
      {
        goto LABEL_71;
      }

      if (v95)
      {
        OUTLINED_FUNCTION_27_15();
LABEL_71:
        OUTLINED_FUNCTION_4_33();
        LOBYTE(v208) = v19;
        v207 = 0;
        OUTLINED_FUNCTION_0_64();
        LOBYTE(v204) = v166;
        v203 = v167;
        LOBYTE(v202) = v19;
        v201 = 0;
        v206 = v88;
        OUTLINED_FUNCTION_26_17();
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_31_13();
      if (v56)
      {
        goto LABEL_95;
      }

      if (v96 > -9.22337204e18)
      {
        OUTLINED_FUNCTION_19_2();
        if (!v58)
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_30_11();
        goto LABEL_71;
      }

      goto LABEL_102;
    case 4:
      if (*(v205 + 48))
      {
        goto LABEL_52;
      }

      v59 = v41;
      v60 = *(v205 + 24);
      if (*(v205 + 50) == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
        OUTLINED_FUNCTION_43();
        v61 = sub_1DD63CBB8();
        OUTLINED_FUNCTION_51(v61);
        v63 = *(v62 + 72);
        v64 = OUTLINED_FUNCTION_5_40();
        v65 = OUTLINED_FUNCTION_21_16(v64, xmmword_1DD643F90);
        OUTLINED_FUNCTION_9_27(v59, v66, v67, v65);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
        if ((~*&v60 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_114;
        }

        if (v60 <= -9.22337204e18)
        {
          goto LABEL_115;
        }

        OUTLINED_FUNCTION_23_17();
        if (!v58)
        {
          goto LABEL_116;
        }

        OUTLINED_FUNCTION_11_27();
        LOBYTE(v200) = v72;
        v199 = 0;
        goto LABEL_91;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v170 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v170);
      v172 = *(v171 + 72);
      v174 = (*(v173 + 80) + 32) & ~*(v173 + 80);
      if (v60 > 12.0)
      {
        v175 = OUTLINED_FUNCTION_32_12();
        v176 = OUTLINED_FUNCTION_21_16(v175, xmmword_1DD643F90);
        OUTLINED_FUNCTION_9_27(v59, v177, v178, v176);
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v179, v180, v181, v182);
        if ((~*&v60 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_117;
        }

        if (v60 <= -9.22337204e18)
        {
          goto LABEL_119;
        }

        OUTLINED_FUNCTION_23_17();
        if (!v58)
        {
          goto LABEL_121;
        }

        OUTLINED_FUNCTION_11_27();
        LOBYTE(v200) = v183;
        goto LABEL_84;
      }

      v184 = OUTLINED_FUNCTION_32_12();
      v185 = OUTLINED_FUNCTION_21_16(v184, xmmword_1DD643F80);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v186, v187, v188, v185);
      v189 = sub_1DD63D328();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v190, v191, v192, v189);
      if ((~*&v60 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_118;
      }

      if (v60 <= -9.22337204e18)
      {
        goto LABEL_120;
      }

      OUTLINED_FUNCTION_23_17();
      if (!v58)
      {
        goto LABEL_122;
      }

      v206 = v184;
      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_17_23();
      sub_1DD63CB68();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v193, v194, v195, v185);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v196, v197, v198, v189);
      if (!__OFADD__(v60, 12))
      {
        OUTLINED_FUNCTION_12_23();
        goto LABEL_91;
      }

      goto LABEL_123;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v122 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v122);
      v124 = *(v123 + 72);
      v206 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v206, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_9_27(v36, v125, v126, v127);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
      v132 = *(v205 + 24);
      if (*(v205 + 48))
      {
        goto LABEL_75;
      }

      if ((~*&v132 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_98;
      }

      v133 = *(v205 + 24);
      if (v132 <= -9.22337204e18)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v58)
      {
        goto LABEL_112;
      }

LABEL_75:
      OUTLINED_FUNCTION_4_33();
      LOBYTE(v208) = v19;
      v207 = 0;
      OUTLINED_FUNCTION_0_64();
      LOBYTE(v204) = v19;
      OUTLINED_FUNCTION_14_25();
      LOBYTE(v200) = v168;
      v199 = v169;
      goto LABEL_91;
    case 6:
      if (*(v205 + 48) != 2)
      {
LABEL_52:
        v206 = MEMORY[0x1E69E7CC0];
        return;
      }

      v135 = *(v205 + 24);
      v134 = *(v205 + 32);
      v136 = *(v205 + 40);
      v137 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      v138 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v138);
      v140 = *(v139 + 72);
      v142 = *(v141 + 80);
      OUTLINED_FUNCTION_3_38();
      v143 = swift_allocObject();
      v144 = OUTLINED_FUNCTION_21_16(v143, xmmword_1DD643F90);
      OUTLINED_FUNCTION_9_27(v137, v145, v146, v144);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
      v206 = v143;
      if (v136)
      {
        OUTLINED_FUNCTION_29_12();
        goto LABEL_92;
      }

      OUTLINED_FUNCTION_18_19();
      OUTLINED_FUNCTION_29_12();
      OUTLINED_FUNCTION_28_7();
LABEL_84:
      v199 = 0;
      goto LABEL_91;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v73 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v73);
      v75 = *(v74 + 72);
      OUTLINED_FUNCTION_24_12();
      v76 = swift_allocObject();
      OUTLINED_FUNCTION_21_16(v76, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      v80 = OUTLINED_FUNCTION_9_27(v33, v77, v78, v79);
      OUTLINED_FUNCTION_8_29(v201, v81, v82, v80);
      if (v56)
      {
        goto LABEL_65;
      }

      if (v83)
      {
        OUTLINED_FUNCTION_27_15();
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_31_13();
      if (v56)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      if (v84 <= -9.22337204e18)
      {
        goto LABEL_100;
      }

      OUTLINED_FUNCTION_19_2();
      if (v58)
      {
        OUTLINED_FUNCTION_30_11();
LABEL_65:
        OUTLINED_FUNCTION_4_33();
        LOBYTE(v208) = v164;
        v207 = v165;
        OUTLINED_FUNCTION_0_64();
        LOBYTE(v204) = v19;
        OUTLINED_FUNCTION_14_25();
        v206 = v76;
        OUTLINED_FUNCTION_26_17();
        goto LABEL_91;
      }

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
      return;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v97 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v97);
      v99 = *(v98 + 72);
      v100 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v100, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      v104 = OUTLINED_FUNCTION_9_27(v30, v101, v102, v103);
      OUTLINED_FUNCTION_8_29(v202, v105, v106, v104);
      if (v56)
      {
        goto LABEL_73;
      }

      if (v107)
      {
        OUTLINED_FUNCTION_27_15();
      }

      else
      {
        OUTLINED_FUNCTION_31_13();
        if (v56)
        {
          goto LABEL_96;
        }

        if (v108 <= -9.22337204e18)
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        OUTLINED_FUNCTION_19_2();
        if (!v58)
        {
          goto LABEL_110;
        }

        OUTLINED_FUNCTION_30_11();
      }

LABEL_73:
      OUTLINED_FUNCTION_0_64();
      OUTLINED_FUNCTION_14_25();
      v206 = v100;
      OUTLINED_FUNCTION_26_17();
LABEL_91:
      OUTLINED_FUNCTION_17_23();
LABEL_92:
      sub_1DD63CB68();
      return;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v109 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v109);
      v111 = *(v110 + 72);
      v112 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v112, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_9_27(v27, v113, v114, v115);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
      v120 = *(v205 + 24);
      if (*(v205 + 48))
      {
        goto LABEL_74;
      }

      if ((~*&v120 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_97;
      }

      v121 = *(v205 + 24);
      if (v120 <= -9.22337204e18)
      {
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v58)
      {
        goto LABEL_111;
      }

LABEL_74:
      OUTLINED_FUNCTION_4_33();
      LOBYTE(v208) = v19;
      v207 = 0;
      OUTLINED_FUNCTION_0_64();
      LOBYTE(v204) = v19;
      v206 = v112;
      OUTLINED_FUNCTION_14_25();
      OUTLINED_FUNCTION_26_17();
      OUTLINED_FUNCTION_17_23();
      goto LABEL_92;
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD460, &qword_1DD6503A8);
      OUTLINED_FUNCTION_43();
      v151 = sub_1DD63CBB8();
      OUTLINED_FUNCTION_51(v151);
      v153 = *(v152 + 72);
      v154 = OUTLINED_FUNCTION_5_40();
      OUTLINED_FUNCTION_21_16(v154, xmmword_1DD643F90);
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_9_27(v24, v155, v156, v157);
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
      v162 = *(v205 + 24);
      if (*(v205 + 48))
      {
        goto LABEL_76;
      }

      if ((~*&v162 & 0x7FF0000000000000) == 0)
      {
        goto LABEL_99;
      }

      v163 = *(v205 + 24);
      if (v162 <= -9.22337204e18)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v58)
      {
        goto LABEL_113;
      }

LABEL_76:
      OUTLINED_FUNCTION_4_33();
      LOBYTE(v208) = v19;
      v207 = 0;
      OUTLINED_FUNCTION_0_64();
      LOBYTE(v204) = v19;
      v206 = v154;
      OUTLINED_FUNCTION_14_25();
      OUTLINED_FUNCTION_26_17();
      goto LABEL_92;
    default:
      return;
  }
}

uint64_t sub_1DD48FBC0@<X0>(uint64_t a1@<X8>)
{
  switch(*(v1 + 16))
  {
    case 1:
      v3 = MEMORY[0x1E6969A98];
      goto LABEL_11;
    case 2:
      v3 = MEMORY[0x1E6969A88];
      goto LABEL_11;
    case 4:
      v3 = MEMORY[0x1E6969A58];
      goto LABEL_11;
    case 5:
    case 6:
    case 0xA:
      v3 = MEMORY[0x1E6969A48];
      goto LABEL_11;
    case 7:
      v3 = MEMORY[0x1E6969A20];
      goto LABEL_11;
    case 8:
      v3 = MEMORY[0x1E6969A10];
      goto LABEL_11;
    case 9:
      v3 = MEMORY[0x1E6969A78];
      goto LABEL_11;
    case 0xB:
      v3 = MEMORY[0x1E6969A68];
LABEL_11:
      v8 = *v3;
      v9 = sub_1DD63D2B8();
      (*(*(v9 - 8) + 104))(a1, v8, v9);
      v4 = a1;
      v5 = 0;
      v6 = 1;
      v7 = v9;
      break;
    default:
      sub_1DD63D2B8();
      OUTLINED_FUNCTION_65_0();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1DD48FD00()
{
  sub_1DD48FF14(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_1DD48FD30()
{
  sub_1DD48FD00();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD48FD88()
{
  sub_1DD640E28();
  sub_1DD48E664(v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48FE10()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD48E664(v3);
  return sub_1DD640E78();
}

unint64_t sub_1DD48FE9C()
{
  result = qword_1ECCDD458;
  if (!qword_1ECCDD458)
  {
    type metadata accessor for DateTimeConstraint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD458);
  }

  return result;
}

uint64_t sub_1DD48FEF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5)
  {
  }

  return result;
}

uint64_t sub_1DD48FF14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return swift_allocObject();
}

uint64_t sub_1DD4900A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    type metadata accessor for DateTime();
    sub_1DD492CF8(&qword_1ECCDC740, type metadata accessor for DateTime);
    sub_1DD6402A8();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

uint64_t sub_1DD490190(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC750(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD490B34(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1DD4901FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, unsigned __int8 *a5)
{
  v6 = v5;
  LODWORD(v149) = a4;
  v151 = a3;
  v10 = sub_1DD63D168();
  v146 = *(v10 - 8);
  v147 = v10;
  v11 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v148) = *a2;
  v13 = a2[1];
  v152 = *(a2 + 1);
  HIDWORD(v150) = a2[16];
  LODWORD(v12) = a2[17];
  HIDWORD(v149) = v13;
  LODWORD(v150) = v12;
  LODWORD(v153) = a2[18];
  v14 = *a5;
  if (sub_1DD3CC020(MEMORY[0x1E69E7CC0]))
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v15, v16, v17, v18, v19, v20, v21, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CD0];
  }

  v164 = v22;
  v161 = &type metadata for DefinedTimeStore;
  v162 = &off_1F58B7818;
  v163 = v6;
  v23 = v148;
  if (*(a1 + 16))
  {
    LOBYTE(v154) = v148;
    BYTE1(v154) = BYTE4(v149);
    OUTLINED_FUNCTION_0_65(v152);
    HIBYTE(v153) = v14;

    OUTLINED_FUNCTION_1_50();
    sub_1DD4841F0(v24, v25, v26, v149, v27);
    sub_1DD608750(v28);
  }

  else
  {
  }

  v36 = *(a1 + 24);
  if (v36)
  {
    OUTLINED_FUNCTION_2_41();
    if (v39)
    {
      v40 = 0;
    }

    else
    {
      v40 = v37;
    }

    if (!v38)
    {
      v37 = 0;
    }

    v41 = v37 | HIDWORD(v150);
    OUTLINED_FUNCTION_3_39();
    if (v39)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    v45 = sub_1DD491BD8(v44, v40 | v23, v152, v41 | v43, v151, v149, v14);
    sub_1DD608750(v45);
    v46 = *(v36 + 64);
    if (v46 && (v47 = *(v46 + 56), v47 != 38))
    {
      LOBYTE(v154) = *(v46 + 56);
      v49 = v146;
      v48 = v147;
      v50 = v151;
      v51 = v145;
      (*(v146 + 16))(v145, v151 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v147);
      v52 = OUTLINED_FUNCTION_5_41(*(v50 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere));
      (*(v49 + 8))(v51, v48);
      if (v52)
      {
        v23 = v148;
        LOBYTE(v154) = v148;
        BYTE1(v154) = BYTE4(v149);
        OUTLINED_FUNCTION_0_65(v152);
        HIBYTE(v153) = v47;
        v57 = OUTLINED_FUNCTION_6_32(v53, v54, v55, v56);
        sub_1DD608750(v57);
      }

      else
      {

        v23 = v148;
      }
    }

    else
    {
    }
  }

  HIDWORD(v148) = v14;
  v58 = *(a1 + 56);
  if (v58)
  {
    v59 = *(v58 + 24);
    v60 = BYTE4(v148);
    if (v59 && *(v59 + 16))
    {
      LOBYTE(v154) = v23;
      BYTE1(v154) = BYTE4(v149);
      OUTLINED_FUNCTION_0_65(v152);
      HIBYTE(v153) = v60;

      OUTLINED_FUNCTION_1_50();
      sub_1DD4841F0(v61, v62, v63, v149, v64);
      sub_1DD608750(v65);
    }

    v66 = *(v58 + 32);
    if (v66 && *(v66 + 16))
    {
      LOBYTE(v154) = v23;
      BYTE1(v154) = BYTE4(v149);
      OUTLINED_FUNCTION_0_65(v152);
      HIBYTE(v153) = v60;

      OUTLINED_FUNCTION_1_50();
      sub_1DD4841F0(v67, v68, v69, 1, v70);
      sub_1DD608750(v71);
    }

    v72 = *(v58 + 24);
    if (v72 && *(v72 + 24))
    {
      OUTLINED_FUNCTION_2_41();
      if (v39)
      {
        v75 = 0;
      }

      else
      {
        v75 = v73;
      }

      if (!v74)
      {
        v73 = 0;
      }

      v76 = v73 | HIDWORD(v150);
      OUTLINED_FUNCTION_3_39();
      if (v39)
      {
        v78 = 0;
      }

      else
      {
        v78 = v77;
      }

      v80 = v76 | v78;
      v23 = v148;
      v60 = BYTE4(v148);
      v81 = sub_1DD491BD8(v79, v75 | v148, v152, v80, v151, v149, SHIDWORD(v148));
      sub_1DD608750(v81);
    }

    v82 = *(v58 + 32);
    if (!v82 || (v83 = *(v82 + 24)) == 0)
    {
LABEL_59:
      v92 = *(v58 + 48);
      if (v92)
      {
        LOBYTE(v154) = v60;
        sub_1DD4E1DE8(v92, &v154, v149);
        if (v93)
        {
          OUTLINED_FUNCTION_4_34(v93);
        }
      }

      v94 = *(v58 + 16);
      if (v94)
      {
        if (!*(v94 + 16))
        {
          goto LABEL_120;
        }

        LOBYTE(v154) = v23;
        BYTE1(v154) = BYTE4(v149);
        OUTLINED_FUNCTION_0_65(v152);
        HIBYTE(v153) = v60;

        OUTLINED_FUNCTION_1_50();
        sub_1DD4841F0(v95, v96, v97, 0, v98);
        sub_1DD608750(v99);

        v94 = *(v58 + 16);
        if (v94)
        {
LABEL_120:
          if (*(v94 + 24))
          {
            OUTLINED_FUNCTION_2_41();
            if (v39)
            {
              v102 = 0;
            }

            else
            {
              v102 = v100;
            }

            if (!v101)
            {
              v100 = 0;
            }

            v103 = v100 | HIDWORD(v150);
            OUTLINED_FUNCTION_3_39();
            if (v39)
            {
              v105 = 0;
            }

            else
            {
              v105 = v104;
            }

            v107 = v103 | v105;
            v23 = v148;
            v60 = BYTE4(v148);
            v108 = sub_1DD491BD8(v106, v102 | v148, v152, v107, v151, 0, SHIDWORD(v148));
            sub_1DD608750(v108);
          }
        }
      }

      v109 = *(v58 + 40);
      if (v109)
      {
        if (v153)
        {
          LOBYTE(v154) = v60;
          sub_1DD4E1DE8(v109, &v154, v149);
          if (!v110)
          {
            goto LABEL_81;
          }
        }

        else
        {
          LOBYTE(v154) = v60;
          v110 = sub_1DD4B7048(v109, &v154);
          if (!v110)
          {
            goto LABEL_81;
          }
        }

        OUTLINED_FUNCTION_4_34(v110);
      }

LABEL_81:
      v111 = *(v58 + 56);
      if (v111 == 38)
      {
        goto LABEL_105;
      }

      if (v36 && *(v36 + 58) != 3 || (v112 = *(v58 + 24)) != 0 && (v113 = *(v112 + 24)) != 0 && *(v113 + 58) != 3)
      {
        if (v111 > 0x18)
        {
LABEL_90:
          LOBYTE(v154) = *(v58 + 56);
          v114 = v23;
          v116 = v146;
          v115 = v147;
          v117 = v151;
          v118 = v145;
          (*(v146 + 16))(v145, v151 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v147);
          v119 = OUTLINED_FUNCTION_5_41(*(v117 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere));
          (*(v116 + 8))(v118, v115);
          v23 = v114;
          if (v119)
          {
            LOBYTE(v154) = v114;
            BYTE1(v154) = BYTE4(v149);
            OUTLINED_FUNCTION_0_65(v152);
            HIBYTE(v153) = v111;
            v124 = OUTLINED_FUNCTION_6_32(v120, v121, v122, v123);
            sub_1DD608750(v124);
          }

LABEL_92:
          v125 = *(v58 + 57);
          if (v125 != 20)
          {
            if (v125 == 6)
            {
              LOBYTE(v154) = v111;
              v127 = sub_1DD4A0D90(&v154);
              if (!v127)
              {
                goto LABEL_105;
              }

              goto LABEL_100;
            }

            if (v125 != 7)
            {
              if (v125 == 3)
              {
                LOBYTE(v154) = v111;
                sub_1DD4A0AC8(&v154, v29, v30, v31, v32, v33, v34, v35, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167);
                sub_1DD608750(v126);
              }

              else
              {
                LOBYTE(v154) = v111;
                HIBYTE(v153) = v125;
                v128 = sub_1DD4AD794(&v153 + 7);
                if (v128)
                {
                  v129 = a1;
                  LOBYTE(v154) = BYTE4(v148);
                  sub_1DD4E1DE8(v128, &v154, v149);
                  if (v130)
                  {
                    v131 = v130;

                    sub_1DD56E250(&v154, v131);
                  }

                  a1 = v129;
                }
              }

              goto LABEL_105;
            }
          }

          LOBYTE(v154) = v111;
          v127 = sub_1DD4A0D98(&v154);
          if (!v127)
          {
            goto LABEL_105;
          }

LABEL_100:
          OUTLINED_FUNCTION_4_34(v127);

          goto LABEL_105;
        }

        if (((1 << v111) & 0x1C1F1FD) != 0)
        {
          goto LABEL_105;
        }
      }

      if (v111 == 10)
      {
        goto LABEL_92;
      }

      goto LABEL_90;
    }

    v144 = a1;
    v84 = *(v58 + 24);
    if (v84 && (v85 = *(v84 + 24)) != 0)
    {
      v86 = *(v84 + 24);
    }

    else
    {

      v85 = v36;
      if (!v36)
      {
        goto LABEL_48;
      }
    }

    type metadata accessor for DateTime.Time();
    if (static DateTime.Time.== infix(_:_:)(v85, v83))
    {

      v60 = BYTE4(v148);
LABEL_58:
      a1 = v144;
      goto LABEL_59;
    }

LABEL_48:
    __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
    if (HIDWORD(v149))
    {
      v87 = 256;
    }

    else
    {
      v87 = 0;
    }

    if (v150)
    {
      v88 = 256;
    }

    else
    {
      v88 = 0;
    }

    v89 = v88 | HIDWORD(v150);
    if (v153)
    {
      v90 = 0x10000;
    }

    else
    {
      v90 = 0;
    }

    v60 = BYTE4(v148);
    v91 = sub_1DD491BD8(v83, v87 | v23, v152, v89 | v90, v151, 1, SHIDWORD(v148));
    sub_1DD608750(v91);

    goto LABEL_58;
  }

LABEL_105:
  v132 = *(a1 + 48);
  v133 = HIDWORD(v148);
  if (v132 != 4)
  {
    v155 = 0;
    v156 = 0;
    v154 = v132;
    LOBYTE(v157) = 4;
    HIBYTE(v153) = BYTE4(v148);
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v134 = sub_1DD48DFB4(13, &v154, 2, 4, &v153 + 7, 1, 1, 0);
    OUTLINED_FUNCTION_4_34(v134);
  }

  if (*(a1 + 40))
  {
    OUTLINED_FUNCTION_2_41();
    if (v39)
    {
      v137 = 0;
    }

    else
    {
      v137 = v135;
    }

    if (!v136)
    {
      v135 = 0;
    }

    v138 = v135 | HIDWORD(v150);
    OUTLINED_FUNCTION_3_39();
    if (v39)
    {
      v140 = 0;
    }

    else
    {
      v140 = v139;
    }

    v142 = sub_1DD492494(v141, v137 | v23, v152, v138 | v140, v151, v133);
    sub_1DD608750(v142);
  }

  sub_1DD490AE0(&v158);
  return v164;
}

uint64_t sub_1DD490B34(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD490C9C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DD490C28(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD490C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = qword_1DD650400[v7];
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v10 - 1);
        if (v8 >= qword_1DD650400[v11])
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v10 = v11;
        *--v10 = v7;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD490C9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = qword_1DD650400[*(*a3 + v8)];
        v10 = *(*a3 + v8);
        v11 = qword_1DD650400[*(*a3 + v6)];
        v12 = v6 + 2;
        if (v5 <= v6 + 2)
        {
          v8 = v6 + 2;
        }

        else
        {
          v8 = v5;
        }

        while (v12 < v5)
        {
          v13 = *(*a3 + v12);
          v14 = (v9 < v11) ^ (qword_1DD650400[v13] >= qword_1DD650400[v10]);
          ++v12;
          v10 = v13;
          if ((v14 & 1) == 0)
          {
            v8 = v12 - 1;
            break;
          }
        }

        if (v9 < v11)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            v15 = v8 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }
            }

            while (++v16 < v15--);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = qword_1DD650400[v23];
              v25 = v22;
              v26 = v21;
              do
              {
                v27 = *(v26 - 1);
                if (v24 >= qword_1DD650400[v27])
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v26 = v27;
                *--v26 = v23;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_1DD3BEB7C();
        v7 = v71;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v75;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_55:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_70:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_84;
          }

LABEL_77:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1DD491284((*a3 + *v65), (*a3 + *v67), (*a3 + v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7[2];
          if (v33 > v69)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v69)
          {
            goto LABEL_93;
          }

          v30 = v69 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v69 - 1 - v33));
          v7[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_84;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_55;
      }

LABEL_84:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD491158(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD491158(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD491284((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DD491284(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_1DD3C2528(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_43;
      }

      v12 = *v4;
      if (qword_1DD650400[*v6] < qword_1DD650400[v12])
      {
        break;
      }

      v15 = v4 + 1;
      if (v7 < v4 || v7 >= v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      ++v7;
      v4 = v15;
    }

    if (v7 >= v6 && v7 < v6 + 1)
    {
      ++v6;
      v15 = v4;
      goto LABEL_20;
    }

    LOBYTE(v12) = *v6++;
    v15 = v4;
LABEL_19:
    *v7 = v12;
    goto LABEL_20;
  }

  sub_1DD3C2528(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v16 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (qword_1DD650400[v18] < qword_1DD650400[v19])
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_43:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_1DD491428(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  HIDWORD(v49) = a6;
  v48 = a5;
  HIDWORD(v47) = a4;
  v46 = a3;
  v7 = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  if (sub_1DD3CC020(MEMORY[0x1E69E7CC0]))
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v8, v9, v10, v11, v12, v13, v14, v42, v43, v44, v46, v47, v48, v49, v51, *v52, *&v52[8], *&v52[16], v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v7 = v15;
  }

  v55 = v7;

  sub_1DD4900A4(v16, &v57);
  v17 = v57;
  v18 = v58;
  v19 = v60;
  v20 = v61;
  v21 = v62;
  v45 = v59;
  v22 = ((v59 + 64) >> 6);
  if (v57 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v23 = v19;
  v24 = v20;
  v25 = v19;
  if (!v20)
  {
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_15;
      }

      v24 = *(v18 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_8:
  v26 = (v24 - 1) & v24;
  v27 = *(*(v17 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

  if (v27)
  {
    while (!__OFADD__(v21, 1))
    {
      sub_1DD49298C(v21, v27, &v56, &v55, SHIDWORD(v49), a2 & 0x1FF, v46, HIDWORD(v47) & 0x10101, v48);

      ++v21;
      v19 = v25;
      v20 = v26;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v28 = sub_1DD6407F8();
      if (v28)
      {
        v51 = v28;
        type metadata accessor for DateTime();
        swift_dynamicCast();
        v27 = *v52;
        v25 = v19;
        v26 = v20;
        if (*v52)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  sub_1DD3AA5A4();
  v36 = v56;
  if (!*(v56 + 16))
  {

    return v55;
  }

  sub_1DD5986CC(v56, v29, v30, v31, v32, v33, v34, v35, v42, v43, v45, v46, v47, v48, v49, v51, *v52, *&v52[8], *&v52[16], v53, v54, v55, v56, v57, v58, v59);
  *v52 = v37;
  v22 = 0;
  sub_1DD490190(v52);
  if (*(*v52 + 16))
  {
    v38 = *(*v52 + 32);

    *v52 = qword_1DD650400[v38];
    *&v52[8] = xmmword_1DD642F70;
    LOBYTE(v53) = 2;
    LOBYTE(v51) = v50;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v39 = sub_1DD48DFB4(6, v52, 0, 0, &v51, 1, 1, 0);
    sub_1DD56E250(v52, v39);

    *v52 = xmmword_1DD6503B0;
    *&v52[16] = v36;
    LOBYTE(v53) = 5;
    LOBYTE(v51) = v50;
    swift_allocObject();
    v40 = sub_1DD48DFB4(13, v52, 2, 3, &v51, 1, 1, 0);

    sub_1DD56E250(v52, v40);

    return v55;
  }

LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DD491770(char a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DD63D168();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = &type metadata for DefinedTimeStore;
  v50 = &off_1F58B7818;
  if (sub_1DD3CC020(MEMORY[0x1E69E7CC0]))
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v17, v18, v19, v20, v21, v22, v23, v32[0], v32[1], v32[2], v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2], v40, v41, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v49);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  v47 = v24;
  if (!a1)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    LOBYTE(v45) = 6;
    LOBYTE(v39[0]) = 41;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v26 = sub_1DD48DFB4(12, &v42, a6, 0, v39, 1, 1, 0);
    sub_1DD56E250(&v42, v26);
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    __swift_project_boxed_opaque_existential_1(v48, &type metadata for DefinedTimeStore);
    LOBYTE(v42) = 2;
    (*(v13 + 16))(v16, a5 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v12);
    LOBYTE(v39[0]) = *(a5 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
    v27 = sub_1DD4AF538(&v42);
    (*(v13 + 8))(v16, v12);
    if (!v27)
    {
      goto LABEL_11;
    }

    sub_1DD3C2388(v48, &v42);
    __swift_mutable_project_boxed_opaque_existential_1(&v42, v45);
    v40 = &type metadata for DefinedTimeStore;
    v41 = &off_1F58B7818;
    type metadata accessor for DateTimeConstraintGenerator();
    v28 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for DefinedTimeStore);
    *(v28 + 40) = &type metadata for DefinedTimeStore;
    *(v28 + 48) = &off_1F58B7818;
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    LOWORD(v42) = a2 & 0x1FF;
    v43 = a3;
    LOWORD(v44) = a4 & 0x101;
    BYTE2(v44) = BYTE2(a4) & 1;
    LOBYTE(v39[0]) = 41;
    v29 = sub_1DD4901FC(v27, &v42, a5, a6, v39);

    sub_1DD608750(v29);
LABEL_10:

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6503C0;
  v42 = 0;
  v43 = 0;
  LOBYTE(v45) = 0;
  v44 = 0;
  LOBYTE(v39[0]) = 41;
  type metadata accessor for DateTimeConstraint();
  swift_allocObject();
  *(inited + 32) = sub_1DD48DFB4(4, &v42, a6, 0, v39, 1, 1, 0);
  v42 = 0;
  v43 = 0;
  LOBYTE(v45) = 0;
  v44 = 0;
  LOBYTE(v39[0]) = 41;
  swift_allocObject();
  *(inited + 40) = sub_1DD48DFB4(2, &v42, a6, 0, v39, 1, 1, 0);
  v42 = 0;
  v43 = 0;
  LOBYTE(v45) = 0;
  v44 = 0;
  LOBYTE(v39[0]) = 41;
  swift_allocObject();
  *(inited + 48) = sub_1DD48DFB4(1, &v42, a6, 0, v39, 1, 1, 0);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  LOBYTE(v45) = 1;
  LOBYTE(v39[0]) = 41;
  swift_allocObject();
  *(inited + 56) = sub_1DD48DFB4(3, &v42, a6, 5, v39, 1, 1, 0);
  sub_1DD608904(inited);
LABEL_11:
  v30 = v47;
  __swift_destroy_boxed_opaque_existential_1(v48);
  return v30;
}

uint64_t sub_1DD491BD8(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v94) = a7;
  v13 = sub_1DD63D168();
  v92 = *(v13 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = &type metadata for DefinedTimeStore;
  v102 = &off_1F58B7818;
  if (sub_1DD3CC020(MEMORY[0x1E69E7CC0]))
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v16, v17, v18, v19, v20, v21, v22, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *&v95, v96, v97, v98, v99, v100[0], v100[1], v100[2], v101, v102, v103);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CD0];
  }

  v99 = v23;
  v24 = *(a1 + 58);
  if (v24 != 3)
  {
    if (v24 == 2 && (*(a1 + 24) & 1) == 0 && *(a1 + 57) == 2)
    {
      v25 = *(a1 + 16);
      v26 = v25 <= 11 && (v25 - 1) >= 6;
      v27 = *(a1 + 72);
      v28 = !v26;
      v96 = 0;
      v97 = 0;
      v95 = *&v28;
      LOBYTE(v98) = 1;
      HIBYTE(v94) = v94;
      type metadata accessor for DateTimeConstraint();
      swift_allocObject();
      v29 = sub_1DD48DFB4(3, &v95, a6, 5, &v94 + 7, v27, 1, 0);
      sub_1DD56E250(&v95, v29);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v100, &type metadata for DefinedTimeStore);
      v30 = sub_1DD491770(v24, a2 & 0x1FF, a3, a4 & 0x10101, a5, a6);
      sub_1DD608750(v30);
    }
  }

  v93 = a5;
  if ((*(a1 + 24) & 1) == 0)
  {
    v89 = *(a1 + 16);
    v31 = *(a1 + 72);
    v95 = v89;
    v96 = 0;
    v97 = 0;
    LOBYTE(v98) = 0;
    HIBYTE(v94) = v94;
    v90 = type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v32 = sub_1DD48DFB4(4, &v95, a6, 0, &v94 + 7, v31, 1, 0);
    sub_1DD56E250(&v95, v32);

    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v33 = sub_1DD63F9F8();
    v34 = __swift_project_value_buffer(v33, qword_1ECD0DDC0);
    v35 = v93;
    swift_retain_n();
    v88 = v34;
    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      HIDWORD(v86) = v37;
      v39 = v38;
      v85 = swift_slowAlloc();
      v95 = *&v85;
      *v39 = 136315394;
      v82 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
      LODWORD(v87) = a6;
      v40 = v92;
      v83 = *(v92 + 16);
      v84 = v36;
      v41 = v91;
      v83(v91, v35 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v13);
      sub_1DD492CF8(&qword_1EE1637E8, MEMORY[0x1E6969770]);
      v42 = sub_1DD640CB8();
      v44 = v43;
      v45 = *(v40 + 8);
      v45(v41, v13);
      v46 = sub_1DD39565C(v42, v44, &v95);

      *(v39 + 4) = v46;
      *(v39 + 12) = 1024;
      v83(v41, v35 + v82, v13);
      LOBYTE(a6) = v87;
      LOBYTE(v46) = sub_1DD4F9988();
      v45(v41, v13);

      *(v39 + 14) = v46 & 1;

      v47 = v84;
      _os_log_impl(&dword_1DD38D000, v84, BYTE4(v86), "context.regionFormat: %s, follows 24 hour clock: %{BOOL}d", v39, 0x12u);
      v48 = v85;
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x1E12B3DA0](v48, -1, -1);
      MEMORY[0x1E12B3DA0](v39, -1, -1);
    }

    else
    {
    }

    if (*(a1 + 57) == 2)
    {
      v49 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
      v50 = v92;
      v51 = *(v92 + 16);
      v52 = v91;
      v51(v91, v93 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v13);
      v53 = sub_1DD4F9988();
      v54 = *(v50 + 8);
      v92 = v50 + 8;
      v54(v52, v13);
      if (v53)
      {
        v55 = v93;

        v56 = sub_1DD63F9D8();
        v57 = sub_1DD640368();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v87 = v56;
          v59 = v58;
          v88 = swift_slowAlloc();
          v95 = *&v88;
          *v59 = 136315138;
          v60 = v55 + v49;
          v61 = v91;
          v51(v91, v60, v13);
          sub_1DD492CF8(&qword_1EE1637E8, MEMORY[0x1E6969770]);
          v62 = v57;
          v63 = sub_1DD640CB8();
          v64 = v13;
          v66 = v65;
          v54(v61, v64);
          v67 = sub_1DD39565C(v63, v66, &v95);

          v68 = v59;
          *(v59 + 4) = v67;
          v56 = v87;
          v69 = v68;
          _os_log_impl(&dword_1DD38D000, v87, v62, "locale: %s follows 24 hour clock", v68, 0xCu);
          v70 = v88;
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x1E12B3DA0](v70, -1, -1);
          MEMORY[0x1E12B3DA0](v69, -1, -1);
        }

        v71 = *(a1 + 72);
        v96 = 0;
        v97 = 0;
        *&v95 = v89 > 11;
        LOBYTE(v98) = 1;
        HIBYTE(v94) = 39;
        swift_allocObject();
        v72 = sub_1DD48DFB4(3, &v95, a6, 5, &v94 + 7, v71, 1, 0);
        sub_1DD56E250(&v95, v72);
      }
    }
  }

  v73 = *(a1 + 57);
  if (v73 != 2)
  {
    v74 = *(a1 + 72);
    v96 = 0;
    v97 = 0;
    *&v95 = v73 & 1;
    LOBYTE(v98) = 1;
    HIBYTE(v94) = v94;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v75 = sub_1DD48DFB4(3, &v95, a6, 5, &v94 + 7, v74, 1, 0);
    sub_1DD56E250(&v95, v75);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v76 = *(a1 + 72);
    v95 = *(a1 + 32);
    v96 = 0;
    v97 = 0;
    LOBYTE(v98) = 0;
    HIBYTE(v94) = v94;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v77 = sub_1DD48DFB4(2, &v95, a6, 0, &v94 + 7, v76, 1, 0);
    sub_1DD56E250(&v95, v77);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v78 = *(a1 + 72);
    v95 = *(a1 + 48);
    v96 = 0;
    v97 = 0;
    LOBYTE(v98) = 0;
    HIBYTE(v94) = v94;
    type metadata accessor for DateTimeConstraint();
    swift_allocObject();
    v79 = sub_1DD48DFB4(1, &v95, a6, 0, &v94 + 7, v78, 1, 0);
    sub_1DD56E250(&v95, v79);
  }

  v80 = v99;
  __swift_destroy_boxed_opaque_existential_1(v100);
  return v80;
}

uint64_t sub_1DD492494(uint64_t a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v62 = &type metadata for DefinedTimeStore;
  v63 = &off_1F58B7818;
  if (sub_1DD3CC020(MEMORY[0x1E69E7CC0]))
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v12, v13, v14, v15, v16, v17, v18, v52, v53, v55, v56, v57, v58, v59, v60, v61[0], v61[1], v61[2], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  v60 = v19;
  v20 = *(a1 + 48);
  if ((sub_1DD49C318(v20) & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v61, &type metadata for DefinedTimeStore);
    v21 = sub_1DD491428(v20, a2 & 0x1FF, a3, a4 & 0x10101, a5, a6);
    sub_1DD608750(v21);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    v23 = *(a1 + 64);
    if (v23)
    {
      LOBYTE(v64) = a6;

      v24 = sub_1DD57B660(v22, v23, &v64, 0.0);
      sub_1DD608750(v24);
    }
  }

  if (*(a1 + 72) != 3)
  {
    LOBYTE(v56) = *(a1 + 72);
    LOWORD(v64) = a2 & 0x1FF;
    v65 = a3;
    LOWORD(v66) = a4 & 0x101;
    BYTE2(v66) = BYTE2(a4) & 1;
    LOBYTE(v55) = a6;
    v25 = sub_1DD57B850(&v56, &v64, &v55);
    sub_1DD56E250(&v64, v25);
  }

  v26 = *(a1 + 24);
  if (v26)
  {
    LOBYTE(v64) = a6;
    v27 = sub_1DD57B8EC(v26, &v64);
    if (v27)
    {
      v54 = v27;
      v28 = v60;
      if ((v60 & 0xC000000000000001) != 0)
      {

        sub_1DD640778();
        type metadata accessor for DateTimeConstraint();
        sub_1DD492CF8(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint);
        result = sub_1DD6402A8();
        v28 = v64;
        v30 = v65;
        v31 = v66;
        v32 = v67;
        v33 = v68;
      }

      else
      {
        v34 = -1 << *(v60 + 32);
        v30 = v60 + 56;
        v31 = ~v34;
        v35 = -v34;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v33 = v36 & *(v60 + 56);

        v32 = 0;
      }

      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_20:
      v37 = sub_1DD6407F8();
      if (v37 && (v55 = v37, type metadata accessor for DateTimeConstraint(), swift_dynamicCast(), v38 = v56, v39 = v32, v40 = v33, v56))
      {
        while (*(v38 + 50) != 3)
        {

          v32 = v39;
          v33 = v40;
          if (v28 < 0)
          {
            goto LABEL_20;
          }

LABEL_23:
          v41 = v32;
          v42 = v33;
          v39 = v32;
          if (!v33)
          {
            while (1)
            {
              v39 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                break;
              }

              if (v39 >= ((v31 + 64) >> 6))
              {
                goto LABEL_31;
              }

              v42 = *(v30 + 8 * v39);
              ++v41;
              if (v42)
              {
                goto LABEL_27;
              }
            }

            __break(1u);
            return result;
          }

LABEL_27:
          v40 = (v42 - 1) & v42;
          v38 = *(*(v28 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v42)))));

          if (!v38)
          {
            goto LABEL_31;
          }
        }

        sub_1DD3AA5A4();
        if (*(v38 + 48) != 5)
        {
          goto LABEL_32;
        }

        v44 = *(v38 + 24);
        v45 = *(v38 + 32);
        v46 = *(v38 + 40);
        if (*(v54 + 48) == 5)
        {
          v47 = *(v54 + 24);
          v48 = *(v54 + 32);
          v49 = *(v38 + 40);

          if (v45 == v48)
          {
            sub_1DD581DE0(v38);

            v56 = v47;
            v57 = v45;
            v58 = v46;
            LOBYTE(v59) = 5;
            LOBYTE(v55) = 38;
            type metadata accessor for DateTimeConstraint();
            swift_allocObject();
            v50 = sub_1DD48DFB4(13, &v56, 2, 3, &v55, 1, 1, 0);
            sub_1DD56E250(&v56, v50);

            goto LABEL_32;
          }
        }

        else
        {
          v51 = *(v38 + 40);
        }

        sub_1DD48FF14(v44, v45, v46, 5);
      }

      else
      {
LABEL_31:
        sub_1DD3AA5A4();

        sub_1DD56E250(&v56, v54);
LABEL_32:
      }
    }
  }

  v43 = v60;
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v43;
}

uint64_t sub_1DD49298C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, uint64_t a7, int a8, uint64_t a9)
{
  v53 = &type metadata for DefinedTimeStore;
  v54 = &off_1F58B7818;
  v12 = a2[2];
  if (v12 && (v13 = *(v12 + 89), v13 != 7))
  {
    sub_1DD56E428(&v48, v13);
  }

  else
  {
    v14 = a2[7];
    if (v14 && ((v15 = *(v14 + 56), v15 != 35) ? (v16 = v15 == 21) : (v16 = 1), v16) || v12 && (v17 = *(v12 + 112)) != 0 && ((v18 = *(v17 + 56), v18 == 21) || v18 == 35) || v14 && *(v14 + 56) == 19 || v12 && (v19 = *(v12 + 112)) != 0 && *(v19 + 56) == 19)
    {
      sub_1DD56C5AC();
      v48 = xmmword_1DD6503B0;
      v49 = v20;
      v50 = 5;
      v51 = a5;
      type metadata accessor for DateTimeConstraint();
      swift_allocObject();
      v21 = sub_1DD48DFB4(13, &v48, 2, 3, &v51, 1, 1, 0);
      sub_1DD56E250(&v48, v21);
LABEL_20:

      goto LABEL_22;
    }

    if (v14)
    {
      v37 = *(v14 + 24);
      if (v37)
      {
        v38 = *(v14 + 32);
        if (v38)
        {
          LOBYTE(v48) = a5;

          v39 = sub_1DD57B660(v37, v38, &v48, 1.0);
          sub_1DD608750(v39);

LABEL_40:

          goto LABEL_20;
        }
      }
    }

    if (v12)
    {
      v40 = *(v12 + 112);
      if (v40)
      {
        v41 = *(v40 + 24);
        if (v41)
        {
          v42 = *(v40 + 32);
          if (v42)
          {
            LOBYTE(v48) = a5;

            v43 = sub_1DD57B660(v41, v42, &v48, 1.0);
            sub_1DD608750(v43);

            goto LABEL_40;
          }
        }
      }
    }
  }

LABEL_22:
  v22 = a2[3];
  if (v22)
  {
    v23 = a2[7];
    if (v23 && (v24 = *(v23 + 56), v24 != 38))
    {
      v44 = a7;
      v45 = *(v22 + 16);
      v27 = *(v22 + 24);
      v28 = *(v22 + 32);
      v29 = *(v22 + 40);
      v30 = *(v22 + 48);
      v31 = *(v22 + 56);
      v51 = v24;
      sub_1DD57B970(&v51, &v48);
      v32 = v48;
      if (v48 == 2)
      {
        v32 = *(v22 + 57);
      }

      LOBYTE(v48) = v32;
      v51 = *(v22 + 58);
      v33 = *(v22 + 64);
      v34 = *(v22 + 72);
      type metadata accessor for DateTime.Time();
      swift_allocObject();
      v22 = DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v45, v27, v28, v29, v30, v31, &v48, &v51, v33, v34);

      v26 = v53;
      a7 = v44;
    }

    else
    {
      v25 = a2[3];

      v26 = &type metadata for DefinedTimeStore;
    }

    __swift_project_boxed_opaque_existential_1(v52, v26);
    v35 = sub_1DD491BD8(v22, a6 & 0x1FF, a7, a8 & 0x10101, a9, 0, a5);
    sub_1DD608750(v35);
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1DD492CF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DD492D50(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DD6407B8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1DD42BC08();
    v3 = v35;
    v32 = sub_1DD55AD40(v1);
    v33 = v4;
    v34 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v1 + 56;
      v27 = v1 + 64;
      v29 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v9 = v32;
        v8 = v33;
        v10 = v34;
        v11 = v1;
        v12 = *(sub_1DD55AE74(v32, v33, v34, v1) + 16);

        v35 = v3;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1DD42BC08();
          v3 = v35;
        }

        *(v3 + 16) = v13 + 1;
        *(v3 + v13 + 32) = v12;
        if (v30)
        {
          if (!v10)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v14 = v3;
          if (sub_1DD640788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v19 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD468, &qword_1DD650488);
          v20 = sub_1DD640298();
          sub_1DD640818();
          v20(v31, 0);
        }

        else
        {
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v14 = v3;
          v1 = v11;
          v15 = 1 << *(v11 + 32);
          if (v9 >= v15)
          {
            goto LABEL_32;
          }

          v16 = v9 >> 6;
          v17 = *(v28 + 8 * (v9 >> 6));
          if (((v17 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_34;
          }

          v18 = v17 & (-2 << (v9 & 0x3F));
          if (v18)
          {
            v15 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v16 << 6;
            v22 = v16 + 1;
            v23 = (v27 + 8 * v16);
            while (v22 < (v15 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_1DD3AA558(v9, v8, 0);
                v15 = __clz(__rbit64(v24)) + v21;
                goto LABEL_27;
              }
            }

            sub_1DD3AA558(v9, v8, 0);
          }

LABEL_27:
          v26 = *(v11 + 36);
          v32 = v15;
          v33 = v26;
          v34 = 0;
          v19 = v29;
        }

        v3 = v14;
        if (v6 == v19)
        {
          sub_1DD3AA558(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1DD493044(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DD4EC918(v5);
    *a1 = v5;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + 32;
  v9[1] = v7;

  sub_1DD497F10(v9, a2);
  sub_1DD640968();
  if (!v2)
  {
  }
}

BOOL sub_1DD493108(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1DD6407B8();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void *sub_1DD493148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v3[4] = a3;
  v3[5] = v4;
  return v3;
}

uint64_t sub_1DD493160()
{
  v1 = sub_1DD63D2D8();
  v2 = OUTLINED_FUNCTION_0(v1);
  v65 = v3;
  v66 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DD63D078();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v70 = sub_1DD63C868();
  v17 = OUTLINED_FUNCTION_0(v70);
  v64 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD643B80;
  v24 = *(v0 + 24);
  v25 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date;
  v26 = *(v10 + 16);
  v26(v16, v24 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v7);
  v67 = v24;
  v26(v69, v24 + v25, v7);
  v27 = v0;
  sub_1DD63C838();
  v28 = type metadata accessor for RecurringDateInterval();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v69 = v22;
  *(v23 + 32) = sub_1DD57F5F8(v22, 0);
  v74 = v23;
  sub_1DD4962A0();
  v32 = v31;
  swift_beginAccess();
  v33 = *(v0 + 40);
  *(v0 + 40) = v32;

  sub_1DD497974();
  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v34 = sub_1DD63F9F8();
  __swift_project_value_buffer(v34, qword_1ECD0DDC0);

  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640368();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v73 = v38;
    *v37 = 136315138;
    v39 = *(v27 + 40);
    v40 = type metadata accessor for DateTimeConstraint();

    v42 = MEMORY[0x1E12B2430](v41, v40);
    v44 = v43;

    v45 = sub_1DD39565C(v42, v44, &v73);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_1DD38D000, v35, v36, "ordered constraints: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v46 = v68;
  v47 = *(v27 + 40);

  sub_1DD494160(v48, &v74);
  if (v46)
  {
    v49 = v74;

    return v49;
  }

  v50 = v74;
  v51 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  v52 = v67;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v65 + 16))(v71, v52 + v51, v66);
  v49 = MEMORY[0x1E69E7CC0];
  v72 = MEMORY[0x1E69E7CC0];
  v68 = v50;
  result = sub_1DD3CC020(v50);
  if (!result)
  {
LABEL_16:
    (*(v65 + 8))(v71, v66);

    return v49;
  }

  v54 = result;
  v63 = 0;
  if (result >= 1)
  {
    v55 = 0;
    v67 = v68 & 0xC000000000000001;
    v56 = (v64 + 16);
    v57 = (v64 + 8);
    v58 = v70;
    do
    {
      if (v67)
      {
        v59 = MEMORY[0x1E12B2C10](v55, v68);
      }

      else
      {
        v59 = *(v68 + 8 * v55 + 32);
      }

      v60 = v69;
      (*v56)(v69, v59 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval, v58);
      v61 = *(v59 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern);

      sub_1DD484CB8(v71, v61);

      v62 = (*v57)(v60, v58);
      MEMORY[0x1E12B23F0](v62);
      if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      ++v55;
      sub_1DD640168();
      v49 = v72;
    }

    while (v54 != v55);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL sub_1DD493734()
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = sub_1DD498FB0(v2, v0);
  v4 = sub_1DD493108(v3);

  return !v4;
}

uint64_t sub_1DD4937AC(char a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_28:
    v6 = 0;
    return v6 & 1;
  }

  while (2)
  {
    v5 = v3 & 0xC000000000000001;

    v6 = 0;
    v7 = 0;
    v8 = 0;
LABEL_4:
    v9 = v8;
    if (v5)
    {
LABEL_5:
      v10 = OUTLINED_FUNCTION_62_5();
      v11 = MEMORY[0x1E12B2C10](v10);
      goto LABEL_8;
    }

LABEL_6:
    if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v12 = *(v3 + 8 * v9 + 32);

LABEL_8:
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      OUTLINED_FUNCTION_18_20();
      v4 = sub_1DD6407B8();
      if (!v4)
      {
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  switch(*(v11 + 50))
  {
    case 0:
      v13 = *(v11 + 16);

      if (v13 != 12 && v13 != 11)
      {
        goto LABEL_14;
      }

      v6 = 1;
      v7 = 1;
      goto LABEL_23;
    case 1:

      if (v7)
      {
LABEL_14:
        if (v8 == v4)
        {
          goto LABEL_24;
        }

        ++v9;
        v7 = 1;
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_6;
      }

      v7 = 0;
LABEL_22:
      v6 = 1;
LABEL_23:
      if (v8 != v4)
      {
        goto LABEL_4;
      }

LABEL_24:

      return v6 & 1;
    case 2:

      goto LABEL_22;
    case 4:

      v6 |= a1;
      goto LABEL_23;
    default:

      goto LABEL_23;
  }
}

uint64_t sub_1DD493938(char a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = sub_1DD3CC020(v2);

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v8 = *(v1 + 40);
      v9 = sub_1DD3CC020(v8);

      for (j = 0; ; ++j)
      {
        v11 = v9 != j;
        if (v9 == j)
        {
          goto LABEL_46;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E12B2C10](j, v8);
          v12 = result;
        }

        else
        {
          if (j >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v12 = *(v8 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_49;
        }

        v13 = 0xE300000000000000;
        if (v12[49] != 1)
        {
          v13 = 0xE600000000000000;
        }

        if (v12[49])
        {
          v14 = v13;
        }

        else
        {
          v14 = 0xE500000000000000;
        }

        if (a1)
        {
          OUTLINED_FUNCTION_29_13();
          v18 = v17 & 0xFFFF00000000FFFFLL | 0x746573740000;
          if (v15)
          {
            v19 = 6581861;
          }

          else
          {
            v19 = v18;
          }

          if (v15)
          {
            v20 = 0xE300000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }
        }

        else
        {
          v20 = 0xE500000000000000;
          OUTLINED_FUNCTION_12_0();
        }

        if (v16 == v19 && v14 == v20)
        {
        }

        else
        {
          v22 = sub_1DD640CD8();

          if ((v22 & 1) == 0)
          {

            continue;
          }
        }

        if (v12[51] == 38)
        {
          goto LABEL_44;
        }

        v23 = v12[53];

        if (v23)
        {
          goto LABEL_46;
        }
      }
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12B2C10](i, v2);
      v6 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    if (v6[50] != 2)
    {

      continue;
    }

    if (v6[51] == 38)
    {
      break;
    }

    v7 = v6[53];

    if (v7)
    {
      goto LABEL_45;
    }
  }

LABEL_44:

LABEL_45:
  v11 = 1;
LABEL_46:

  return v11;
}

void sub_1DD493BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = 0;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v27 = *(v20 + 16);
  HIDWORD(v96) = v25;
  LOBYTE(v103) = v25;
  if ((v27 & 0xC000000000000001) == 0)
  {
    v57 = *(v27 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v59 = v58 >> 6;

    if (v57 > 0xD)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v90 = v26;
      v92 = &v89;
      OUTLINED_FUNCTION_44_10();
      MEMORY[0x1EEE9AC00](v60);
      v61 = OUTLINED_FUNCTION_11_28();
      v93 = v59;
      v94 = v62;
      sub_1DD57634C(v61, v59, v62);
      v95 = 0;
      v63 = 0;
      v59 = v27 + 56;
      v64 = *(v27 + 56);
      v65 = *(v27 + 32);
      OUTLINED_FUNCTION_4_1();
      v68 = v67 & v66;
      v26 = (v69 + 63) >> 6;
      while (v68)
      {
        v70 = __clz(__rbit64(v68));
        v68 &= v68 - 1;
LABEL_47:
        v74 = *(*(v27 + 48) + 8 * (v70 | (v63 << 6)));
        if (sub_1DD48FCF0())
        {
          v75 = 0;
          v76 = *(v74 + 16);
          while (v75 != 7)
          {
            OUTLINED_FUNCTION_60_5(v75);
            if (v36)
            {
              goto LABEL_54;
            }
          }

          if (sub_1DD4E21DC(v76, &unk_1F58ADBE8))
          {
LABEL_54:
            OUTLINED_FUNCTION_59_5();
            v78 = 0xE300000000000000;
            if (!v36)
            {
              v78 = 0xE600000000000000;
            }

            if (v77)
            {
              v79 = v78;
            }

            else
            {
              v79 = 0xE500000000000000;
            }

            OUTLINED_FUNCTION_58_5();
            if (v36)
            {
              v21 = 0xE500000000000000;
              OUTLINED_FUNCTION_12_0();
            }

            else
            {
              if (v81 == 1)
              {
                v82 = 6581861;
              }

              else
              {
                v82 = v21;
              }

              if (v81 == 1)
              {
                v21 = 0xE300000000000000;
              }

              else
              {
                v21 = 0xE600000000000000;
              }
            }

            if (v80 == v82 && v79 == v21)
            {

LABEL_74:
              v84 = *(v74 + 53);

              OUTLINED_FUNCTION_44_10();
              if (v84)
              {
                OUTLINED_FUNCTION_32_13();
                OUTLINED_FUNCTION_13_24(v85);
                if (__OFADD__(v95++, 1))
                {
                  __break(1u);
LABEL_78:
                  sub_1DD51607C(v94, v93, v95, v27);
                  OUTLINED_FUNCTION_57_9(&a16);
                  goto LABEL_79;
                }
              }
            }

            else
            {
              HIDWORD(v91) = sub_1DD640CD8();

              if ((v91 & 0x100000000) != 0)
              {
                goto LABEL_74;
              }

              OUTLINED_FUNCTION_44_10();
            }
          }
        }
      }

      v71 = v63;
      while (1)
      {
        v63 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v63 >= v26)
        {
          goto LABEL_78;
        }

        ++v71;
        if (*(v59 + 8 * v63))
        {
          OUTLINED_FUNCTION_14_3();
          v68 = v73 & v72;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_81:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v88 = swift_slowAlloc();
        OUTLINED_FUNCTION_66_3(v88);

        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        goto LABEL_79;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CD0];
  v100 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_37_13();
  sub_1DD640778();
  while (1)
  {
    v29 = sub_1DD6407F8();
    if (!v29)
    {
      break;
    }

    OUTLINED_FUNCTION_71_1(v29);
    OUTLINED_FUNCTION_27_16();
    swift_dynamicCast();
    v30 = v99;
    if (!sub_1DD48FCF0())
    {
      goto LABEL_36;
    }

    v31 = 0;
    v32 = *(v30 + 16);
    while (v31 != 7)
    {
      OUTLINED_FUNCTION_60_5(v31);
      if (v36)
      {
        goto LABEL_11;
      }
    }

    if (!sub_1DD4E21DC(v32, &unk_1F58ADBE8))
    {
      goto LABEL_36;
    }

LABEL_11:
    OUTLINED_FUNCTION_59_5();
    if (v36)
    {
      v34 = 0xE300000000000000;
    }

    else
    {
      v34 = 0xE600000000000000;
    }

    if (v33)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    OUTLINED_FUNCTION_58_5();
    if (v36)
    {
      v41 = 0xE500000000000000;
      OUTLINED_FUNCTION_12_0();
    }

    else
    {
      OUTLINED_FUNCTION_29_13();
      v39 = v38 & 0xFFFF00000000FFFFLL | 0x746573740000;
      if (v36)
      {
        v40 = 6581861;
      }

      else
      {
        v40 = v39;
      }

      if (v36)
      {
        v41 = 0xE300000000000000;
      }

      else
      {
        v41 = 0xE600000000000000;
      }
    }

    if (v37 == v40 && v35 == v41)
    {

LABEL_32:
      if ((*(v30 + 53) & 1) == 0)
      {
        goto LABEL_36;
      }

      v51 = v99;
      v52 = *(v28 + 16);
      if (*(v28 + 24) <= v52)
      {
        OUTLINED_FUNCTION_70_1(v44, v45, v46, v47, v48, v49, v50, v52, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98[0], v98[1], v98[2], v98[3], v98[4], v98[5], v98[6], v98[7], v98[8], v99, v100, v101, v102, v103, v104);
      }

      v28 = v100;
      v53 = *(v100 + 40);
      sub_1DD640E28();
      sub_1DD48E664(v98);
      sub_1DD640E78();
      v54 = *(v28 + 32);
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_25_10();
      OUTLINED_FUNCTION_5_42(v55);
      *(*(v28 + 48) + 8 * v56) = v51;
      ++*(v28 + 16);
    }

    else
    {
      v43 = sub_1DD640CD8();

      if (v43)
      {
        goto LABEL_32;
      }

LABEL_36:
    }
  }

LABEL_79:
  v87 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4940DC(void *a1, char a2)
{
  v3 = *a1;
  if (sub_1DD48FCF0() && ((v4 = v3[16], sub_1DD4E21DC(v4, &unk_1F58ADBC0)) || sub_1DD4E21DC(v4, &unk_1F58ADBE8)) && (sub_1DD3B017C(v3[49], a2) & 1) != 0)
  {
    return v3[53];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD494160(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020(a1);

  v6 = 0;
  for (i = 0; ; i = v8)
  {
    if (v4 == v6)
    {
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12B2C10](v6, a1);
      v8 = result;
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    sub_1DD49427C(v8, i, a2);
    if (v2)
    {

LABEL_12:
    }

    ++v6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DD49427C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(v3 + 32);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1DD3C2388(v8, &v19);
    v9 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v19, v20);
    if ((*(v10 + 8))(v4, v9, v10))
    {
      sub_1DD3AA4A8(&v19, v22);
      sub_1DD3AA4A8(v22, v23);
      v11 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v13 = *(v3 + 24);
      v14 = sub_1DD4943FC(v4);
      v15 = sub_1DD494980(v4);
      v16 = v26;
      (*(v12 + 16))(v4, a2, v13, v14, v15 & 1, a3, v11, v12);

      if (!v16)
      {
        *(v4 + 55) = 1;
      }

      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(&v19);
    v8 += 40;
  }

  return result;
}

uint64_t sub_1DD4943FC(uint64_t a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1DD499304(v4, a1);
  v60[0] = v5;
  swift_retain_n();

  v6 = sub_1DD4994E0(v5, a1);
  sub_1DD492D50(v6);
  v58 = v7;

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v5 = v60[1];
    v8 = v60[2];
    v9 = v60[3];
    v10 = v60[4];
    v11 = v60[5];
  }

  else
  {
    v10 = 0;
    v12 = *(v5 + 32);
    OUTLINED_FUNCTION_23_18();
    v8 = v5 + 56;
    v13 = *(v5 + 56);
    OUTLINED_FUNCTION_10_5();
    v11 = v14 & v15;
  }

  v57 = v5;
  v16 = (v9 + 64) >> 6;
LABEL_5:
  while (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    if (!sub_1DD6407F8())
    {
      goto LABEL_73;
    }

    type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_42_7();
    v23 = v59[0];
    v18 = v10;
    v21 = v11;
    if (!v59[0])
    {
      goto LABEL_73;
    }

LABEL_14:
    if (*(a1 + 50) == 1 && !v23[50])
    {
      v6 = v60;
      sub_1DD581DE0(v23);
    }

    v24 = a1;
    v25 = *(a1 + 49);
    if (v23[49])
    {
      if (v23[49] == 1)
      {
        OUTLINED_FUNCTION_24_13();
        OUTLINED_FUNCTION_43_11();
      }

      else
      {
        v6 = 0xE600000000000000;
        OUTLINED_FUNCTION_43_11();
        v26 = v27;
      }

      v28 = 0x7472617473;
      if (!v25)
      {
LABEL_21:
        v29 = 0xE500000000000000;
        v27 = v28;
        goto LABEL_27;
      }
    }

    else
    {
      v6 = 0xE500000000000000;
      OUTLINED_FUNCTION_43_11();
      if (!v25)
      {
        goto LABEL_21;
      }
    }

    if (v25 == 1)
    {
      v29 = 0xE300000000000000;
      v27 = 6581861;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

LABEL_27:
    if (v26 == v27 && v6 == v29)
    {
    }

    else
    {
      v31 = OUTLINED_FUNCTION_41_8();

      if ((v31 & 1) == 0 && v23[50] == 1)
      {
        v6 = v60;
        sub_1DD581DE0(v23);
      }
    }

    v32 = (v58 + 32);
    v33 = *(v58 + 16);
    do
    {
      if (!v33)
      {

        v10 = v18;
        v11 = v21;
        a1 = v24;
        v5 = v57;
        goto LABEL_5;
      }

      v34 = *v32++;
      --v33;
    }

    while (v34 != v23[16]);
    v35 = v23[49];
    if (v35 == 1)
    {
      v36 = 6581861;
    }

    else
    {
      v36 = 0x746573746F6ELL;
    }

    if (v35 == 1)
    {
      v37 = 0xE300000000000000;
    }

    else
    {
      v37 = 0xE600000000000000;
    }

    if (v23[49])
    {
      v38 = v36;
    }

    else
    {
      v38 = 0x7472617473;
    }

    if (v23[49])
    {
      v6 = v37;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v25 == 1)
    {
      v39 = 6581861;
    }

    else
    {
      v39 = 0x746573746F6ELL;
    }

    if (v25 == 1)
    {
      v40 = 0xE300000000000000;
    }

    else
    {
      v40 = 0xE600000000000000;
    }

    if (v25)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0x7472617473;
    }

    if (v25)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    v43 = v38 == v41 && v6 == v42;
    a1 = v24;
    if (v43)
    {
    }

    else
    {
      v44 = OUTLINED_FUNCTION_41_8();

      if ((v44 & 1) == 0)
      {
        v6 = sub_1DD581DE0(v23);
      }
    }

    v10 = v18;
    v11 = v21;
    v5 = v57;
  }

  v17 = v10;
  v18 = v10;
  if (!v11)
  {
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        goto LABEL_73;
      }

      ++v17;
      if (*(v8 + 8 * v18))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_78;
  }

LABEL_10:
  OUTLINED_FUNCTION_14_3();
  v21 = v20 & v19;
  v23 = *(*(v5 + 48) + ((v18 << 9) | (8 * v22)));

  if (v23)
  {
    goto LABEL_14;
  }

LABEL_73:

  sub_1DD3AA5A4();
  if (qword_1ECCDB0C0 == -1)
  {
    goto LABEL_74;
  }

LABEL_78:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_74:
  v45 = sub_1DD63F9F8();
  __swift_project_value_buffer(v45, qword_1ECD0DDC0);
  v46 = v60[0];

  v47 = sub_1DD63F9D8();
  v48 = sub_1DD640368();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v49 = 136315394;
    v50 = sub_1DD48E004();
    v52 = sub_1DD39565C(v50, v51, v59);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    v53 = sub_1DD640278();
    v55 = sub_1DD39565C(v53, v54, v59);

    *(v49 + 14) = v55;
    _os_log_impl(&dword_1DD38D000, v47, v48, "constraints stricter than %s: %s", v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  return v46;
}

uint64_t sub_1DD494980(uint64_t a1)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1DD499750(v4, a1);
  LOBYTE(v3) = sub_1DD493108(v5);

  return v3 & 1;
}

void sub_1DD4949F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v25 = *(v20 + 16);
  HIDWORD(v94) = v24;
  LOBYTE(v101) = v24;
  v93 = 0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1E69E7CD0];
    v98 = MEMORY[0x1E69E7CD0];
    OUTLINED_FUNCTION_37_13();
    sub_1DD640778();
LABEL_3:
    while (1)
    {
      v27 = sub_1DD6407F8();
      if (!v27)
      {
        break;
      }

      OUTLINED_FUNCTION_71_1(v27);
      OUTLINED_FUNCTION_27_16();
      swift_dynamicCast();
      v28 = v97;
      if (sub_1DD48FCF0())
      {
        v29 = 0;
        while (v29 != 4)
        {
          v30 = &unk_1F58ADBE8 + v29++;
          if (v30[32] == *(v28 + 16))
          {
            OUTLINED_FUNCTION_59_5();
            if (v34)
            {
              v32 = 0xE300000000000000;
            }

            else
            {
              v32 = 0xE600000000000000;
            }

            if (v31)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0xE500000000000000;
            }

            OUTLINED_FUNCTION_58_5();
            if (v34)
            {
              v39 = 0xE500000000000000;
              OUTLINED_FUNCTION_12_0();
            }

            else
            {
              OUTLINED_FUNCTION_29_13();
              v37 = v36 & 0xFFFF00000000FFFFLL | 0x746573740000;
              if (v34)
              {
                v38 = 6581861;
              }

              else
              {
                v38 = v37;
              }

              if (v34)
              {
                v39 = 0xE300000000000000;
              }

              else
              {
                v39 = 0xE600000000000000;
              }
            }

            if (v35 == v38 && v33 == v39)
            {
            }

            else
            {
              v41 = sub_1DD640CD8();

              if ((v41 & 1) == 0)
              {
                break;
              }
            }

            v49 = *(v26 + 16);
            if (*(v26 + 24) <= v49)
            {
              OUTLINED_FUNCTION_70_1(v42, v43, v44, v45, v46, v47, v48, v49, v89, v90, v91, v92, v93, v94, v95, v96[0], v96[1], v96[2], v96[3], v96[4], v96[5], v96[6], v96[7], v96[8], v97, v98, v99, v100, v101, v102, v103, v104);
            }

            v26 = v98;
            v50 = *(v98 + 40);
            sub_1DD640E28();
            sub_1DD48E664(v96);
            sub_1DD640E78();
            v51 = *(v26 + 32);
            OUTLINED_FUNCTION_9_28();
            OUTLINED_FUNCTION_25_10();
            OUTLINED_FUNCTION_5_42(v52);
            OUTLINED_FUNCTION_50_10(v53);
            goto LABEL_3;
          }
        }
      }
    }
  }

  else
  {
    v54 = *(v25 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v56 = v55 >> 6;

    if (v54 > 0xD)
    {
      goto LABEL_72;
    }

    while (1)
    {
      v89 = &v89;
      MEMORY[0x1EEE9AC00](v57);
      v58 = OUTLINED_FUNCTION_11_28();
      v90 = v56;
      v91 = v59;
      sub_1DD57634C(v58, v56, v59);
      v60 = 0;
      v61 = 0;
      v56 = v25 + 56;
      v62 = *(v25 + 56);
      v63 = *(v25 + 32);
      OUTLINED_FUNCTION_4_1();
      v66 = v65 & v64;
      v68 = (v67 + 63) >> 6;
LABEL_35:
      while (v66)
      {
        v69 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
LABEL_42:
        v73 = *(*(v25 + 48) + 8 * (v69 | (v61 << 6)));
        if (sub_1DD48FCF0())
        {
          v74 = 0;
          while (v74 != 4)
          {
            v75 = &unk_1F58ADBE8 + v74++;
            if (v75[32] == *(v73 + 16))
            {
              OUTLINED_FUNCTION_59_5();
              v77 = 0xE300000000000000;
              if (!v34)
              {
                v77 = 0xE600000000000000;
              }

              if (v76)
              {
                v78 = v77;
              }

              else
              {
                v78 = 0xE500000000000000;
              }

              v92 = v60;
              OUTLINED_FUNCTION_58_5();
              if (v34)
              {
                v82 = 0xE500000000000000;
                OUTLINED_FUNCTION_12_0();
              }

              else
              {
                if (v80 == 1)
                {
                  v81 = 6581861;
                }

                else
                {
                  v81 = 0x746573746F6ELL;
                }

                if (v80 == 1)
                {
                  v82 = 0xE300000000000000;
                }

                else
                {
                  v82 = 0xE600000000000000;
                }
              }

              if (v79 == v81 && v78 == v82)
              {

                v60 = v92;
              }

              else
              {
                v84 = sub_1DD640CD8();

                v60 = v92;
                if ((v84 & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              OUTLINED_FUNCTION_32_13();
              OUTLINED_FUNCTION_13_24(v85);
              if (__OFADD__(v60++, 1))
              {
                __break(1u);
                goto LABEL_69;
              }

              goto LABEL_35;
            }
          }
        }
      }

      v70 = v61;
      while (1)
      {
        v61 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v61 >= v68)
        {
LABEL_69:
          sub_1DD51607C(v91, v90, v60, v25);
          OUTLINED_FUNCTION_57_9(&a15);
          goto LABEL_70;
        }

        ++v70;
        if (*(v56 + 8 * v61))
        {
          OUTLINED_FUNCTION_14_3();
          v66 = v72 & v71;
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_72:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v88 = swift_slowAlloc();
    OUTLINED_FUNCTION_66_3(v88);

    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

LABEL_70:
  v87 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD494EC4(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (sub_1DD48FCF0() && sub_1DD4E21DC(*(v3 + 16), &unk_1F58ADBE8))
  {
    return sub_1DD3B017C(*(v3 + 49), a2) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DD494F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v25 = *(v20 + 16);
  LOBYTE(v176) = v24;
  v26 = MEMORY[0x1E69E7CD0];
  v161 = v25;
  v158 = 0;
  v160 = v20;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v173 = MEMORY[0x1E69E7CD0];

    v27 = sub_1DD640778();
    for (i = v26; ; ++i[2])
    {
      while (1)
      {
        v29 = v27;
        v30 = sub_1DD6407F8();
        if (!v30)
        {

          goto LABEL_66;
        }

        OUTLINED_FUNCTION_71_1(v30);
        OUTLINED_FUNCTION_27_16();
        OUTLINED_FUNCTION_42_7();
        v31 = v172;
        if (*(v172 + 51) == 38)
        {
          break;
        }

LABEL_29:
      }

      if (*(v172 + 49))
      {
        if (*(v172 + 49) == 1)
        {
          OUTLINED_FUNCTION_24_13();
        }

        else
        {
          v29 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v29 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v24)
      {
        OUTLINED_FUNCTION_29_13();
        v35 = v34 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v32)
        {
          v36 = 6581861;
        }

        else
        {
          v36 = v35;
        }

        if (v32)
        {
          v37 = 0xE300000000000000;
        }

        else
        {
          v37 = 0xE600000000000000;
        }
      }

      else
      {
        v37 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v33 == v36 && v29 == v37)
      {
      }

      else
      {
        v39 = OUTLINED_FUNCTION_41_8();

        if ((v39 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v47 = *(v31 + 16);
      v48 = v172;
      if (v47 != 4)
      {
        goto LABEL_29;
      }

      v49 = i[2];
      if (i[3] <= v49)
      {
        OUTLINED_FUNCTION_70_1(v40, v41, v42, v43, v44, v45, v46, v49, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
      }

      i = v173;
      v50 = v173[5];
      sub_1DD640E28();
      sub_1DD48E664(&v163);
      sub_1DD640E78();
      v51 = *(i + 32);
      OUTLINED_FUNCTION_9_28();
      OUTLINED_FUNCTION_25_10();
      OUTLINED_FUNCTION_5_42(v52);
      *(i[6] + 8 * v53) = v48;
    }
  }

  v54 = v161[4] & 0x3F;
  OUTLINED_FUNCTION_10_30();
  v56 = v55 >> 6;

  if (v54 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v149 = swift_slowAlloc();
      i = sub_1DD497E80(v149, v56, v161, sub_1DD49C27C);
      v158 = 0;

      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      goto LABEL_67;
    }
  }

  v154 = &v154;
  MEMORY[0x1EEE9AC00](v57);
  v58 = OUTLINED_FUNCTION_11_28();
  v155 = v56;
  v156 = v59;
  sub_1DD57634C(v58, v56, v59);
  v157 = 0;
  v60 = 0;
  v62 = v161[7];
  v61 = (v161 + 7);
  v63 = *(v161 + 32);
  OUTLINED_FUNCTION_4_1();
  v66 = v65 & v64;
  v68 = (v67 + 63) >> 6;
  while (v66)
  {
    v69 = __clz(__rbit64(v66));
    v66 &= v66 - 1;
LABEL_40:
    v73 = *(v161[6] + 8 * (v69 | (v60 << 6)));
    if (v73[51] == 38)
    {
      if (v73[49])
      {
        if (v73[49] == 1)
        {
          v74 = 0xE300000000000000;
          OUTLINED_FUNCTION_30_12();
        }

        else
        {
          v74 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v74 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v24)
      {
        OUTLINED_FUNCTION_29_13();
        v79 = v78 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v75)
        {
          v80 = 6581861;
        }

        else
        {
          v80 = v79;
        }

        if (v75)
        {
          v81 = 0xE300000000000000;
        }

        else
        {
          v81 = 0xE600000000000000;
        }
      }

      else
      {
        v81 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      v159 = v77;
      if (v76 == v80 && v74 == v81)
      {

LABEL_61:
        v84 = v73[16];

        if (v84 == 4)
        {
          OUTLINED_FUNCTION_32_13();
          OUTLINED_FUNCTION_13_24(v85);
          v86 = __OFADD__(v157, 1);
          v157 = (v157 + 1);
          if (v86)
          {
            __break(1u);
            goto LABEL_65;
          }
        }
      }

      else
      {
        v83 = sub_1DD640CD8();

        if (v83)
        {
          goto LABEL_61;
        }
      }
    }
  }

  v70 = v60;
  while (1)
  {
    v60 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
      goto LABEL_135;
    }

    if (v60 >= v68)
    {
      break;
    }

    ++v70;
    if (*(v61 + 8 * v60))
    {
      OUTLINED_FUNCTION_14_3();
      v66 = v72 & v71;
      goto LABEL_40;
    }
  }

LABEL_65:
  sub_1DD51607C(v156, v155, v157, v161);
  i = v87;
  OUTLINED_FUNCTION_57_9(&a13);
LABEL_66:
  v20 = v160;
LABEL_67:
  LODWORD(v61) = sub_1DD493108(i);

  v161 = &v154;
  v89 = *(v20 + 16);
  MEMORY[0x1EEE9AC00](v88);
  LOBYTE(v152) = v24;
  LODWORD(v159) = v61;
  if ((v89 & 0xC000000000000001) != 0)
  {
    v173 = v26;

    v90 = sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v91 = v90;
        v92 = sub_1DD6407F8();
        if (!v92)
        {

          goto LABEL_129;
        }

        OUTLINED_FUNCTION_71_1(v92);
        OUTLINED_FUNCTION_27_16();
        OUTLINED_FUNCTION_42_7();
        if ((*(v172 + 51) | 8) == 0x18)
        {
          break;
        }

LABEL_89:
      }

      if (*(v172 + 49))
      {
        if (*(v172 + 49) == 1)
        {
          OUTLINED_FUNCTION_24_13();
        }

        else
        {
          v91 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v91 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v24)
      {
        OUTLINED_FUNCTION_29_13();
        v96 = v95 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v93)
        {
          v97 = 6581861;
        }

        else
        {
          v97 = v96;
        }

        if (v93)
        {
          v98 = 0xE300000000000000;
        }

        else
        {
          v98 = 0xE600000000000000;
        }
      }

      else
      {
        v98 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v94 == v97 && v91 == v98)
      {
      }

      else
      {
        v100 = OUTLINED_FUNCTION_41_8();

        if ((v100 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v108 = v172;
      v109 = v26[2];
      if (v26[3] <= v109)
      {
        OUTLINED_FUNCTION_70_1(v101, v102, v103, v104, v105, v106, v107, v109, v151[0], v151[1], v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173);
      }

      v26 = v173;
      v110 = v173[5];
      sub_1DD640E28();
      sub_1DD48E664(&v163);
      sub_1DD640E78();
      v111 = -1 << *(v26 + 32);
      OUTLINED_FUNCTION_20_18();
      OUTLINED_FUNCTION_25_10();
      OUTLINED_FUNCTION_5_42(v112);
      *(v26[6] + 8 * v113) = v108;
      OUTLINED_FUNCTION_46_3();
    }
  }

  v114 = *(v89 + 32) & 0x3F;
  OUTLINED_FUNCTION_10_30();
  v116 = (v115 >> 6);

  if (v114 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v150 = swift_slowAlloc();
      v26 = sub_1DD497E80(v150, v116, v89, sub_1DD49C29C);

      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
LABEL_130:
      v24 = sub_1DD493108(v26);

      if (qword_1ECCDB0C0 != -1)
      {
        goto LABEL_136;
      }

      goto LABEL_131;
    }
  }

  v155 = v151;
  MEMORY[0x1EEE9AC00](v117);
  v118 = OUTLINED_FUNCTION_11_28();
  v156 = v116;
  v157 = v119;
  sub_1DD57634C(v118, v116, v119);
  v160 = 0;
  v61 = 0;
  v120 = *(v89 + 56);
  v121 = *(v89 + 32);
  OUTLINED_FUNCTION_4_1();
  v124 = v123 & v122;
  v126 = (v125 + 63) >> 6;
  while (v124)
  {
    v127 = __clz(__rbit64(v124));
    v124 &= v124 - 1;
LABEL_104:
    v131 = *(*(v89 + 48) + 8 * (v127 | (v61 << 6)));
    if ((*(v131 + 51) | 8) == 0x18)
    {
      v132 = *(v131 + 49);
      if (v132)
      {
        if (v132 == 1)
        {
          v133 = 0xE300000000000000;
          OUTLINED_FUNCTION_30_12();
        }

        else
        {
          v133 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v133 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (v24)
      {
        OUTLINED_FUNCTION_29_13();
        v137 = v136 & 0xFFFF00000000FFFFLL | 0x746573740000;
        if (v134)
        {
          v138 = 6581861;
        }

        else
        {
          v138 = v137;
        }

        if (v134)
        {
          v139 = 0xE300000000000000;
        }

        else
        {
          v139 = 0xE600000000000000;
        }
      }

      else
      {
        v139 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v135 == v138 && v133 == v139)
      {

LABEL_125:
        OUTLINED_FUNCTION_32_13();
        OUTLINED_FUNCTION_13_24(v142);
        v86 = __OFADD__(v160++, 1);
        if (v86)
        {
          __break(1u);
LABEL_128:
          sub_1DD51607C(v157, v156, v160, v89);
          v26 = v143;
          OUTLINED_FUNCTION_57_9(&a14);
LABEL_129:
          LOBYTE(v61) = v159;
          goto LABEL_130;
        }
      }

      else
      {
        v141 = sub_1DD640CD8();

        if (v141)
        {
          goto LABEL_125;
        }
      }
    }
  }

  v128 = v61;
  while (1)
  {
    v61 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      break;
    }

    if (v61 >= v126)
    {
      goto LABEL_128;
    }

    ++v128;
    if (*(v89 + 56 + 8 * v61))
    {
      OUTLINED_FUNCTION_14_3();
      v124 = v130 & v129;
      goto LABEL_104;
    }
  }

LABEL_135:
  __break(1u);
LABEL_136:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_131:
  v144 = sub_1DD63F9F8();
  __swift_project_value_buffer(v144, qword_1ECD0DDC0);
  v145 = sub_1DD63F9D8();
  v146 = sub_1DD640368();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    *v147 = 67109376;
    *(v147 + 4) = (v61 & 1) == 0;
    *(v147 + 8) = 1024;
    *(v147 + 10) = !v24;
    _os_log_impl(&dword_1DD38D000, v145, v146, "startHourConstraintSet: %{BOOL}d, nightTimeConstraintsExist: %{BOOL}d", v147, 0xEu);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v148 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD495994(uint64_t a1, char a2)
{
  if ((*(*a1 + 51) | 8) == 0x18)
  {
    return sub_1DD3B017C(*(*a1 + 49), a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4959E0(unsigned __int8 a1, char a2)
{
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v4 = *(v2 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *(v2 + 16);
    }

    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v4 = v46;
    v6 = v47;
    v7 = v48;
    v8 = v49;
    v9 = v50;
  }

  else
  {
    v10 = *(v4 + 32);
    OUTLINED_FUNCTION_23_18();
    v6 = v4 + 56;
    v11 = *(v4 + 56);
    v7 = ~v12;
    OUTLINED_FUNCTION_10_5();
    v9 = v13 & v14;

    v8 = 0;
  }

  v42 = a1;
  *&v15 = (v7 + 64) >> 6;
  v43 = v4;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1DD6407F8() || (type metadata accessor for DateTimeConstraint(), OUTLINED_FUNCTION_42_7(), (v20 = v45) == 0))
      {
LABEL_40:
        OUTLINED_FUNCTION_38_9();
        sub_1DD3AA5A4();
        goto LABEL_41;
      }
    }

    else
    {
      v16 = v8;
      if (!v9)
      {
        while (1)
        {
          v8 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v8 >= *&v15)
          {
            goto LABEL_40;
          }

          ++v16;
          if (*(v6 + 8 * v8))
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        return *&v15;
      }

LABEL_12:
      OUTLINED_FUNCTION_14_3();
      v9 = v18 & v17;
      v20 = *(*(v4 + 48) + ((v8 << 9) | (8 * v19)));

      if (!v20)
      {
        goto LABEL_40;
      }
    }

    if (*(v20 + 51) == 38)
    {
      if (*(v20 + 49))
      {
        if (*(v20 + 49) == 1)
        {
          v21 = 0xE300000000000000;
          OUTLINED_FUNCTION_30_12();
        }

        else
        {
          v21 = 0xE600000000000000;
          OUTLINED_FUNCTION_6_33();
        }
      }

      else
      {
        v21 = 0xE500000000000000;
        OUTLINED_FUNCTION_8_30();
      }

      if (a2)
      {
        OUTLINED_FUNCTION_29_13();
        v25 = v24 & 0xFFFF00000000FFFFLL | 0x746573740000;
        v26 = v22 ? 6581861 : v25;
        v27 = v22 ? 0xE300000000000000 : 0xE600000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
        OUTLINED_FUNCTION_12_0();
      }

      if (v23 == v26 && v21 == v27)
      {

        v4 = v43;
      }

      else
      {
        v29 = sub_1DD640CD8();

        v4 = v43;
        if ((v29 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      if (*(v20 + 16) == v42 && !*(v20 + 50))
      {
        break;
      }
    }

LABEL_39:
  }

  OUTLINED_FUNCTION_38_9();
  sub_1DD3AA5A4();
  v15 = *(v20 + 24);
  v31 = *(v20 + 32);
  v32 = *(v20 + 40);
  v33 = *(v20 + 48);
  v34 = OUTLINED_FUNCTION_56_6();
  sub_1DD48FEF0(v34, v35, v36, v37);

  if (v33 == 2)
  {
    return *&v15;
  }

  if (v33)
  {
    v38 = OUTLINED_FUNCTION_56_6();
    sub_1DD48FF14(v38, v39, v40, v41);
LABEL_41:
    v15 = 0.0;
    return *&v15;
  }

  if ((~*&v15 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v15 < 9.22337204e18)
  {
    *&v15 = v15;
    return *&v15;
  }

LABEL_54:
  __break(1u);
  return result;
}

unint64_t *sub_1DD495D20(unsigned __int8 a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a1;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v4 = *(v1 + 16);
  LOBYTE(v55) = a1;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CD0];
    v52 = MEMORY[0x1E69E7CD0];

    sub_1DD640778();
    while (1)
    {
      v6 = sub_1DD6407F8();
      if (!v6)
      {
        break;
      }

      v43[0] = v6;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v14 = v51;
      if (!*(v51 + 48) && *(v51 + 24) == 0.0 && *(v51 + 16) == v3 && *(v51 + 50) == 1)
      {
        v15 = v5[2];
        if (v5[3] <= v15)
        {
          OUTLINED_FUNCTION_53_6(v7, v8, v9, v10, v11, v12, v13, v15, v42, v43[0], v43[1], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        }

        v5 = v52;
        v16 = v52[5];
        sub_1DD640E28();
        sub_1DD48E664(v43);
        sub_1DD640E78();
        v17 = -1 << *(v5 + 32);
        OUTLINED_FUNCTION_20_18();
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_5_42(v18);
        *(v5[6] + 8 * v19) = v14;
        ++v5[2];
      }

      else
      {
      }
    }
  }

  else
  {
    v20 = *(v4 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v22 = v21 >> 6;
    v23 = 8 * (v21 >> 6);

    if (v20 > 0xD)
    {
      goto LABEL_32;
    }

    while (1)
    {
      MEMORY[0x1EEE9AC00](v24);
      v25 = OUTLINED_FUNCTION_40_6();
      sub_1DD57634C(v25, v22, v23);
      OUTLINED_FUNCTION_2_42(v4);
      while (v29)
      {
        OUTLINED_FUNCTION_17_24();
LABEL_22:
        v33 = *(*(v4 + 48) + 8 * v30);
        if (!*(v33 + 48) && *(v33 + 24) == 0.0 && *(v33 + 16) == v3 && *(v33 + 50) == 1)
        {
          OUTLINED_FUNCTION_33_9();
          if (v34)
          {
            __break(1u);
LABEL_29:
            v35 = OUTLINED_FUNCTION_62_5();
            sub_1DD51607C(v35, v36, v37, v4);
            v5 = v38;
            goto LABEL_30;
          }
        }
      }

      v31 = v27;
      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v28)
        {
          goto LABEL_29;
        }

        ++v31;
        if (*(v26 + 8 * v32))
        {
          OUTLINED_FUNCTION_16_24();
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_32:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v41 = swift_slowAlloc();
    v5 = sub_1DD497E80(v41, v22, v4, sub_1DD49C25C);

    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

LABEL_30:
  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL sub_1DD49602C(uint64_t *a1, unsigned __int8 a2)
{
  result = 0;
  v4 = *a1;
  if (!*(v4 + 48) && *(v4 + 24) == 0.0)
  {
    return *(v4 + 16) == a2 && *(v4 + 50) == 1;
  }

  return result;
}

uint64_t sub_1DD496070(unsigned __int8 *a1, uint64_t a2)
{
  v5 = a1[49];
  v6 = *(a2 + 49);
  if (sub_1DD3B017C(a1[49], *(a2 + 49)))
  {
    v7 = a1[16];
    v8 = *(a2 + 16);
    if (v7 == v8)
    {
      v9 = a1[50];
      if (v9 == *(a2 + 50))
      {
        v10 = a1[54] ^ 1;
      }

      else
      {
        v10 = v9 == 0;
      }
    }

    else
    {
      v10 = v8 < v7;
    }

    return v10 & 1;
  }

  if (!v5)
  {

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_68_2();
  if ((v2 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v6)
  {
LABEL_8:
    if (v6 == 1)
    {
      goto LABEL_27;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_22_15();
  OUTLINED_FUNCTION_68_2();
  if (v2)
  {
LABEL_28:
    v10 = 1;
    return v10 & 1;
  }

LABEL_15:
  if (!v5)
  {

    if (!v6)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_68_2();
  if ((v2 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v6)
  {
LABEL_18:
    if (v6 != 1)
    {
LABEL_27:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_30_12();
  }

LABEL_21:
  sub_1DD640CD8();
  OUTLINED_FUNCTION_68_2();
  if (v2)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v5 == 1)
  {

    goto LABEL_25;
  }

  v11 = OUTLINED_FUNCTION_22_15();

  v10 = 0;
  if (v11)
  {
LABEL_25:
    if (v6 <= 1)
    {
      v12 = sub_1DD640CD8();

      return v12 & 1;
    }

    goto LABEL_27;
  }

  return v10 & 1;
}

void sub_1DD4962A0()
{
  OUTLINED_FUNCTION_18_4();
  v273 = v0;
  OUTLINED_FUNCTION_54_7(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CD0];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v296 = MEMORY[0x1E69E7CD0];

    sub_1DD640778();
    v3 = v2;
    while (1)
    {
      v4 = sub_1DD6407F8();
      if (!v4)
      {
        break;
      }

      OUTLINED_FUNCTION_39_8(v4);
      OUTLINED_FUNCTION_42_7();
      v12 = v291;
      if (*(v291 + 51) == 38 || (*(v291 + 54) & 1) != 0)
      {
      }

      else
      {
        v13 = *(v3 + 16);
        if (*(v3 + 24) <= v13)
        {
          OUTLINED_FUNCTION_53_6(v5, v6, v7, v8, v9, v10, v11, v13, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        }

        v3 = v296;
        v14 = v296[5];
        sub_1DD640E28();
        sub_1DD48E664(&v276);
        sub_1DD640E78();
        v15 = -1 << *(v3 + 32);
        OUTLINED_FUNCTION_20_18();
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_5_42(v16);
        *(*(v3 + 48) + 8 * v17) = v12;
        ++*(v3 + 16);
      }
    }
  }

  else
  {
    v18 = *(v1 + 32) & 0x3F;
    OUTLINED_FUNCTION_10_30();
    v20 = v19 >> 6;
    v21 = 8 * (v19 >> 6);

    if (v18 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v265 = swift_slowAlloc();

        v3 = sub_1DD497E80(v265, v20, v1, sub_1DD49785C);
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        goto LABEL_26;
      }
    }

    MEMORY[0x1EEE9AC00](v22);
    v23 = (&v267 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v20, v23);
    OUTLINED_FUNCTION_2_42(v1);
    while (1)
    {
      if (v28)
      {
        OUTLINED_FUNCTION_17_24();
      }

      else
      {
        v31 = v26;
        do
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_192;
          }

          if (v32 >= v27)
          {
            goto LABEL_25;
          }

          ++v31;
        }

        while (!*(v25 + 8 * v32));
        OUTLINED_FUNCTION_16_24();
      }

      v33 = *(*(v1 + 48) + 8 * v30);
      if (*(v33 + 51) != 38 && (*(v33 + 54) & 1) == 0)
      {
        *(v23 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v29 << v30;
        v34 = __OFADD__(v24++, 1);
        if (v34)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    sub_1DD51607C(v23, v20, v24, v1);
    v3 = v35;
  }

LABEL_26:
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v36 = v291;
    v37 = v292;
    v38 = v293;
    v39 = v294;
    v40 = v295;
  }

  else
  {
    v41 = *(v3 + 32);
    OUTLINED_FUNCTION_23_18();
    v37 = (v3 + 56);
    v42 = *(v3 + 56);
    v44 = ~v43;
    OUTLINED_FUNCTION_10_5();
    v40 = v45 & v46;

    v38 = v44;
    v39 = 0;
    v36 = v3;
  }

  v268 = v38;
  v47 = (v38 + 64) >> 6;
  v271 = v36;
  v269 = v47;
  v270 = v37;
  if (v36 < 0)
  {
    goto LABEL_36;
  }

LABEL_30:
  v48 = v39;
  i = v39;
  if (!v40)
  {
    while (1)
    {
      i = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (i >= v47)
      {
        v40 = 0;
        goto LABEL_131;
      }

      ++v48;
      if (*&v37[8 * i])
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:

LABEL_195:
    OUTLINED_FUNCTION_12_24();
    sub_1DD3AA5A4();

    i = v269;
    if (qword_1ECCDB0C0 == -1)
    {
      goto LABEL_196;
    }

    goto LABEL_228;
  }

LABEL_34:
  OUTLINED_FUNCTION_14_3();
  v272 = v51 & v50;
  v53 = *(*(v36 + 48) + ((i << 9) | (8 * v52)));

  if (v53)
  {
    while (1)
    {
      OUTLINED_FUNCTION_55_6();
      v55 = *(v40 + 16);

      sub_1DD498A58(v56, v53);
      OUTLINED_FUNCTION_49_7();
      if (v201)
      {
        v57 = *(v55 + 16);
      }

      else
      {
        v57 = sub_1DD6407B8();
      }

      if (v57)
      {
        OUTLINED_FUNCTION_15_21();
        OUTLINED_FUNCTION_69_1();
        OUTLINED_FUNCTION_52_6();
      }

      if (v53[16] == 3 && v53[51] == 39)
      {
        v58 = *(v40 + 16);

        sub_1DD498D04(v59, v53);
        OUTLINED_FUNCTION_49_7();
        v60 = v201 ? *(v58 + 16) : sub_1DD6407B8();

        if (v60)
        {
          OUTLINED_FUNCTION_15_21();
          OUTLINED_FUNCTION_69_1();
          OUTLINED_FUNCTION_52_6();
        }
      }

      if (v53[49])
      {
        if (v53[49] == 1)
        {

          goto LABEL_56;
        }

        OUTLINED_FUNCTION_6_33();
      }

      else
      {
        OUTLINED_FUNCTION_8_30();
      }

      v68 = OUTLINED_FUNCTION_22_15();

      if ((v68 & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_56:
      if ((v53[51] & 0xFE) != 0x28)
      {
        goto LABEL_86;
      }

      sub_1DD4949F8(0, v61, v62, v63, v64, v65, v66, v67, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278);
      OUTLINED_FUNCTION_49_7();
      if (v201)
      {
        OUTLINED_FUNCTION_28_8();
        if (!(!v201 & v85))
        {
          goto LABEL_67;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {

LABEL_67:
          MEMORY[0x1EEE9AC00](v84);
          OUTLINED_FUNCTION_36_10(v86, v87, v88, v89, v90, v91, v92, v93, v267);
          OUTLINED_FUNCTION_19_19();
          while (v97)
          {
            OUTLINED_FUNCTION_48_10();
LABEL_75:
            OUTLINED_FUNCTION_61_6();
            if (v201)
            {
              OUTLINED_FUNCTION_34_12();
              if (v34)
              {
                while (1)
                {
                  __break(1u);
LABEL_227:
                  __break(1u);
LABEL_228:
                  OUTLINED_FUNCTION_0_6();
                  swift_once();
LABEL_196:
                  v223 = sub_1DD63F9F8();
                  v224 = __swift_project_value_buffer(v223, qword_1ECD0DDC0);
                  v225 = swift_allocObject();
                  *(v225 + 16) = i;
                  v268 = v224;
                  v226 = sub_1DD63F9D8();
                  v227 = sub_1DD640368();
                  v228 = swift_allocObject();
                  *(v228 + 16) = 0;
                  v229 = swift_allocObject();
                  *(v229 + 16) = 8;
                  v230 = swift_allocObject();
                  *(v230 + 16) = sub_1DD49C244;
                  *(v230 + 24) = v225;
                  v231 = swift_allocObject();
                  *(v231 + 16) = sub_1DD49C24C;
                  *(v231 + 24) = v230;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
                  v232 = swift_allocObject();
                  sub_1DD3AE030(v232, 3);
                  *v233 = sub_1DD3FA50C;
                  v233[1] = v228;
                  v233[2] = sub_1DD3FAEC8;
                  v233[3] = v229;
                  v233[4] = sub_1DD49C254;
                  v233[5] = v231;

                  if (os_log_type_enabled(v226, v227))
                  {
                    v234 = swift_slowAlloc();
                    *v234 = 134217984;

                    *(v234 + 4) = i;

                    _os_log_impl(&dword_1DD38D000, v226, v227, "removing .pm constraint for hourValue: %ld and adding an .am constraint", v234, 0xCu);
                    OUTLINED_FUNCTION_13_0();
                    MEMORY[0x1E12B3DA0]();
                  }

                  else
                  {
                  }

                  v235 = v270;
                  v236 = v270[16];
                  v277 = 0;
                  v276 = 0;
                  v278 = 0;
                  LOBYTE(v279) = 1;
                  v237 = v270[50];
                  v238 = v270[49];
                  LOBYTE(v285) = v270[51];
                  v239 = v270[53];
                  v240 = v270[52];
                  v241 = v270[54];
                  v242 = type metadata accessor for DateTimeConstraint();
                  swift_allocObject();
                  v243 = sub_1DD48DFB4(v236, &v276, v238, v237, &v285, v239, v240, v241);
                  v244 = v273;
                  OUTLINED_FUNCTION_45_8();
                  sub_1DD56E250(&v285, v243);
                  swift_endAccess();

                  OUTLINED_FUNCTION_45_8();
                  sub_1DD581DE0(v235);
                  OUTLINED_FUNCTION_52_6();

                  v245 = *(v244 + 16);
                  v272 = v242;
                  if ((v245 & 0xC000000000000001) != 0)
                  {
                    OUTLINED_FUNCTION_37_13();
                    swift_unknownObjectRetain();
                    sub_1DD640778();
                    sub_1DD49C1EC();
                    sub_1DD6402A8();
                    v246 = v276;
                    v40 = v277;
                    v247 = v278;
                    v248 = v279;
                    v249 = v280;
                  }

                  else
                  {
                    v250 = *(v245 + 32);
                    OUTLINED_FUNCTION_23_18();
                    v40 = v245 + 56;
                    v251 = *(v245 + 56);
                    v247 = ~v252;
                    OUTLINED_FUNCTION_10_5();
                    v249 = v253 & v254;
                    swift_bridgeObjectRetain_n();
                    v248 = 0;
                    v246 = v245;
                  }

                  v271 = v247;
                  for (i = (v247 + 64) >> 6; v246 < 0; v249 = v259)
                  {
                    v261 = sub_1DD6407F8();
                    if (!v261)
                    {
                      goto LABEL_214;
                    }

                    v274 = v261;
                    swift_dynamicCast();
                    v3 = v285;
                    v256 = v248;
                    v259 = v249;
LABEL_210:
                    if (!v3)
                    {
LABEL_214:
                      OUTLINED_FUNCTION_12_24();
                      sub_1DD3AA5A4();

LABEL_187:

                      OUTLINED_FUNCTION_55_6();
                      goto LABEL_188;
                    }

                    v285 = v3;
                    if (sub_1DD497898(&v285))
                    {
                      goto LABEL_216;
                    }

                    v248 = v256;
                  }

                  v255 = v248;
                  v256 = v248;
                  if (v249)
                  {
                    break;
                  }

                  while (1)
                  {
                    v256 = v255 + 1;
                    if (__OFADD__(v255, 1))
                    {
                      break;
                    }

                    if (v256 >= i)
                    {
                      goto LABEL_214;
                    }

                    ++v255;
                    if (*(v40 + 8 * v256))
                    {
                      goto LABEL_207;
                    }
                  }

                  __break(1u);
                }

LABEL_207:
                OUTLINED_FUNCTION_14_3();
                v259 = v258 & v257;
                v3 = *(*(v246 + 48) + ((v256 << 9) | (8 * v260)));

                goto LABEL_210;
              }
            }
          }

          v98 = v95;
          while (1)
          {
            v99 = v98 + 1;
            if (__OFADD__(v98, 1))
            {
              goto LABEL_190;
            }

            if (v99 >= v96)
            {
              break;
            }

            ++v98;
            if (*(v94 + 8 * v99))
            {
              OUTLINED_FUNCTION_51_7();
              goto LABEL_75;
            }
          }

          v100 = OUTLINED_FUNCTION_38_9();
          sub_1DD51607C(v100, v101, v102, v40);
          v69 = v103;
          goto LABEL_81;
        }

        swift_slowAlloc();

        v148 = OUTLINED_FUNCTION_38_9();
        v69 = sub_1DD497E80(v148, v149, v40, v150);
        OUTLINED_FUNCTION_35_10();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
        v296 = v2;
        OUTLINED_FUNCTION_18_20();
        sub_1DD640778();
        v69 = v2;
        while (1)
        {
          v70 = sub_1DD6407F8();
          if (!v70)
          {
            break;
          }

          OUTLINED_FUNCTION_39_8(v70);
          OUTLINED_FUNCTION_47_8();
          OUTLINED_FUNCTION_42_7();
          v78 = v285;
          if (*(v285 + 51) == 38)
          {
            v79 = v69[2];
            if (v69[3] <= v79)
            {
              OUTLINED_FUNCTION_53_6(v71, v72, v73, v74, v75, v76, v77, v79, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
            }

            v69 = v296;
            v80 = v296[5];
            sub_1DD640E28();
            sub_1DD48E664(&v276);
            sub_1DD640E78();
            v81 = *(v69 + 32);
            OUTLINED_FUNCTION_9_28();
            OUTLINED_FUNCTION_25_10();
            OUTLINED_FUNCTION_5_42(v82);
            *(v69[6] + 8 * v83) = v78;
            OUTLINED_FUNCTION_46_3();
          }

          else
          {
          }
        }
      }

LABEL_81:
      v40 = v273;
      if ((v69 & 0xC000000000000001) != 0)
      {
        v104 = sub_1DD6407B8();
      }

      else
      {
        v104 = v69[2];
      }

      if (v104)
      {
        OUTLINED_FUNCTION_15_21();
        OUTLINED_FUNCTION_69_1();
        OUTLINED_FUNCTION_52_6();
      }

LABEL_86:
      if (!v53[49])
      {
        OUTLINED_FUNCTION_8_30();
        goto LABEL_91;
      }

      if (v53[49] != 1)
      {
        OUTLINED_FUNCTION_6_33();
LABEL_91:
        v112 = OUTLINED_FUNCTION_22_15();

        if ((v112 & 1) == 0)
        {
          goto LABEL_122;
        }

        goto LABEL_92;
      }

LABEL_92:
      if (v53[51] - 38 > 3)
      {
        sub_1DD4949F8(0, v105, v106, v107, v108, v109, v110, v111, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278);
        OUTLINED_FUNCTION_49_7();
        if (!v201)
        {
          v296 = v2;
          OUTLINED_FUNCTION_18_20();
          sub_1DD640778();
          v113 = v2;
          while (1)
          {
            v114 = sub_1DD6407F8();
            if (!v114)
            {
              break;
            }

            OUTLINED_FUNCTION_39_8(v114);
            OUTLINED_FUNCTION_47_8();
            OUTLINED_FUNCTION_42_7();
            v122 = v285;
            if (*(v285 + 51) == 38)
            {
              v123 = v113[2];
              if (v113[3] <= v123)
              {
                OUTLINED_FUNCTION_53_6(v115, v116, v117, v118, v119, v120, v121, v123, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
              }

              v113 = v296;
              v124 = v296[5];
              sub_1DD640E28();
              sub_1DD48E664(&v276);
              sub_1DD640E78();
              v125 = *(v113 + 32);
              OUTLINED_FUNCTION_9_28();
              OUTLINED_FUNCTION_25_10();
              OUTLINED_FUNCTION_5_42(v126);
              *(v113[6] + 8 * v127) = v122;
              OUTLINED_FUNCTION_46_3();
            }

            else
            {
            }
          }

LABEL_117:
          if ((v113 & 0xC000000000000001) != 0)
          {
            v147 = sub_1DD6407B8();
          }

          else
          {
            v147 = v113[2];
          }

          if (v147)
          {
            OUTLINED_FUNCTION_15_21();
            OUTLINED_FUNCTION_69_1();
            OUTLINED_FUNCTION_52_6();
          }

          goto LABEL_122;
        }

        OUTLINED_FUNCTION_28_8();
        if (!v201 & v85)
        {

          if (!swift_stdlib_isStackAllocationSafe())
          {
            swift_slowAlloc();

            v151 = OUTLINED_FUNCTION_38_9();
            v113 = sub_1DD497E80(v151, v152, v40, v153);
            OUTLINED_FUNCTION_35_10();
            swift_bridgeObjectRelease_n();
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            goto LABEL_117;
          }
        }

        MEMORY[0x1EEE9AC00](v128);
        OUTLINED_FUNCTION_36_10(v129, v130, v131, v132, v133, v134, v135, v136, v267);
        OUTLINED_FUNCTION_19_19();
        while (v140)
        {
          OUTLINED_FUNCTION_48_10();
LABEL_111:
          OUTLINED_FUNCTION_61_6();
          if (v201)
          {
            OUTLINED_FUNCTION_34_12();
            if (v34)
            {
              goto LABEL_227;
            }
          }
        }

        v141 = v138;
        while (1)
        {
          v142 = v141 + 1;
          if (__OFADD__(v141, 1))
          {
            goto LABEL_191;
          }

          if (v142 >= v139)
          {
            break;
          }

          ++v141;
          if (*(v137 + 8 * v142))
          {
            OUTLINED_FUNCTION_51_7();
            goto LABEL_111;
          }
        }

        v143 = OUTLINED_FUNCTION_38_9();
        sub_1DD51607C(v143, v144, v145, v40);
        v113 = v146;
        goto LABEL_117;
      }

LABEL_122:

      v39 = i;
      v40 = v272;
      v36 = v271;
      v47 = v269;
      v37 = v270;
      if ((v271 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_36:
      v54 = sub_1DD6407F8();
      if (v54)
      {
        v296 = v54;
        type metadata accessor for DateTimeConstraint();
        OUTLINED_FUNCTION_42_7();
        v53 = v276;
        i = v39;
        v272 = v40;
        if (v276)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_131:
  sub_1DD3AA5A4();
  OUTLINED_FUNCTION_55_6();
  sub_1DD4949F8(v154, v155, v156, v157, v158, v159, v160, v161, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278);
  OUTLINED_FUNCTION_49_7();
  if (!v201)
  {

    v296 = v2;
    OUTLINED_FUNCTION_18_20();
    sub_1DD640778();
    while (1)
    {
      v162 = sub_1DD6407F8();
      if (!v162)
      {
        break;
      }

      OUTLINED_FUNCTION_39_8(v162);
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_42_7();
      v3 = v285;
      if (*(v285 + 50) == 1)
      {
        v170 = v2[2];
        if (v2[3] <= v170)
        {
          OUTLINED_FUNCTION_53_6(v163, v164, v165, v166, v167, v168, v169, v170, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290);
        }

        v2 = v296;
        v171 = v296[5];
        sub_1DD640E28();
        sub_1DD48E664(&v276);
        sub_1DD640E78();
        v172 = -1 << *(v2 + 32);
        OUTLINED_FUNCTION_20_18();
        OUTLINED_FUNCTION_25_10();
        OUTLINED_FUNCTION_5_42(v173);
        OUTLINED_FUNCTION_50_10(v174);
      }

      else
      {
      }
    }

    goto LABEL_154;
  }

  v175 = *(v40 + 32);
  v176 = ((1 << v175) + 63) >> 6;
  v177 = (8 * v176);
  if ((v175 & 0x3Fu) <= 0xD)
  {
LABEL_141:

    MEMORY[0x1EEE9AC00](v178);
    v179 = OUTLINED_FUNCTION_40_6();
    sub_1DD57634C(v179, v176, v177);
    OUTLINED_FUNCTION_2_42(v40);
    while (1)
    {
      if (v184)
      {
        OUTLINED_FUNCTION_17_24();
      }

      else
      {
        v186 = v182;
        do
        {
          v187 = v186 + 1;
          if (__OFADD__(v186, 1))
          {
            goto LABEL_193;
          }

          if (v187 >= v183)
          {
            goto LABEL_153;
          }

          ++v186;
        }

        while (!*(v181 + 8 * v187));
        OUTLINED_FUNCTION_16_24();
      }

      if (*(*(*(v40 + 48) + 8 * v185) + 50) == 1)
      {
        OUTLINED_FUNCTION_33_9();
        if (v34)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_153:
    sub_1DD51607C(v177, v176, v180, v40);
    v2 = v188;
    goto LABEL_154;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_141;
  }

  v266 = swift_slowAlloc();

  v2 = sub_1DD497E80(v266, v176, v40, sub_1DD497884);
  OUTLINED_FUNCTION_35_10();
  swift_bridgeObjectRelease_n();

  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1E12B3DA0]();
LABEL_154:
  v189 = sub_1DD493108(v2);

  if (!v189)
  {
    v197 = sub_1DD495D20(5u);
    OUTLINED_FUNCTION_15_21();
    sub_1DD49BD28(v197);
    swift_endAccess();
  }

  sub_1DD494F2C(0, v190, v191, v192, v193, v194, v195, v196, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278);
  if ((v198 & 1) == 0)
  {
    goto LABEL_188;
  }

  v199 = sub_1DD4959E0(4u, 0);
  if (v200)
  {
    goto LABEL_188;
  }

  v201 = v199 < 4 || v199 == 12;
  if (!v201)
  {
    goto LABEL_188;
  }

  v202 = *(v40 + 16);
  v269 = v199;
  v272 = v202;
  if ((v202 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DD640778();
    OUTLINED_FUNCTION_67_2();
    sub_1DD49C1EC();
    sub_1DD6402A8();
    v202 = v296;
    v40 = v297;
    v203 = v298;
    v204 = v299;
    v205 = v300;
  }

  else
  {
    v206 = *(v202 + 32);
    OUTLINED_FUNCTION_23_18();
    v40 = v202 + 56;
    v207 = *(v202 + 56);
    v203 = ~v208;
    OUTLINED_FUNCTION_10_5();
    v205 = v209 & v210;
    swift_bridgeObjectRetain_n();
    v204 = 0;
  }

  v271 = v203;
  while (v202 < 0)
  {
    v217 = sub_1DD6407F8();
    if (!v217 || (v285 = v217, type metadata accessor for DateTimeConstraint(), OUTLINED_FUNCTION_42_7(), (v216 = v276) == 0))
    {
LABEL_186:
      OUTLINED_FUNCTION_12_24();
      sub_1DD3AA5A4();
      goto LABEL_187;
    }

LABEL_177:
    if (v216[51] | 8) == 0x18 && v216[48] == 1 && (*(v216 + 6))
    {
      v218 = v216[49];
      v270 = v216;
      if (v218 == 1)
      {
        OUTLINED_FUNCTION_24_13();
      }

      else
      {
        if (v218 != 2)
        {
          goto LABEL_194;
        }

        OUTLINED_FUNCTION_6_33();
      }

      OUTLINED_FUNCTION_12_0();
      v3 = sub_1DD640CD8();

      if (v3)
      {
        goto LABEL_195;
      }
    }
  }

  v211 = v204;
  if (v205)
  {
LABEL_173:
    OUTLINED_FUNCTION_14_3();
    v205 = v213 & v212;
    v215 = *(*(v202 + 48) + ((v204 << 9) | (8 * v214)));

    if (!v216)
    {
      goto LABEL_186;
    }

    goto LABEL_177;
  }

  while (1)
  {
    v204 = v211 + 1;
    if (__OFADD__(v211, 1))
    {
      break;
    }

    if (v204 >= ((v203 + 64) >> 6))
    {
      goto LABEL_186;
    }

    ++v211;
    if (*(v40 + 8 * v204))
    {
      goto LABEL_173;
    }
  }

  __break(1u);
LABEL_216:
  OUTLINED_FUNCTION_12_24();
  sub_1DD3AA5A4();

  v262 = sub_1DD63F9D8();
  v263 = sub_1DD640368();
  if (os_log_type_enabled(v262, v263))
  {
    v264 = swift_slowAlloc();
    *v264 = 0;
    _os_log_impl(&dword_1DD38D000, v262, v263, "Removing dayOfWeekConstraint of value: 0", v264, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_45_8();
  sub_1DD581DE0(v3);
  swift_endAccess();

LABEL_188:
  v219 = *(v40 + 16);

  sub_1DD59870C(v220);

  swift_retain_n();

  v285 = sub_1DD4D3D7C(v221);
  sub_1DD493044(&v285, v40);

  v222 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD49785C(uint64_t a1)
{
  if (*(*a1 + 51) == 38)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*a1 + 54) ^ 1;
  }

  return v1 & 1;
}

BOOL sub_1DD497898(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 51) != 24)
  {
    return 0;
  }

  result = 0;
  if (!*(v1 + 48) && *(v1 + 24) == 0.0)
  {
    if (*(v1 + 16) == 5)
    {
      if (!*(v1 + 49))
      {

        return *(v1 + 50) == 1;
      }

      v3 = sub_1DD640CD8();

      if (v3)
      {
        return *(v1 + 50) == 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1DD497974()
{
  v1 = v0;
  LOBYTE(v2) = sub_1DD4937AC(0);
  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_60;
  }

LABEL_2:
  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1ECD0DDC0);
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640368();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&dword_1DD38D000, v4, v5, "temporalIntentSetByUserWithoutTemporality: %{BOOL}d", v6, 8u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  if ((v2 & 1) == 0)
  {
    return;
  }

  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD38D000, v7, v8, "Removing temporality constraints", v9, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  OUTLINED_FUNCTION_45_8();
  v10 = *(v1 + 40);
  v11 = sub_1DD3CC020(v10);
  v2 = 0;
  while (1)
  {
    if (v11 == v2)
    {
LABEL_50:
      v2 = sub_1DD3CC020(v10);
LABEL_51:
      v29 = sub_1DD3CC020(v10);
      if (v29 < v2)
      {
        goto LABEL_66;
      }

      sub_1DD49C018(v2, v29);
      swift_endAccess();
      return;
    }

    if ((v10 & 0xC000000000000001) == 0)
    {
      if (v2 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if (*(*(v10 + 8 * v2 + 32) + 50) == 4)
        {
          break;
        }

        goto LABEL_12;
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      OUTLINED_FUNCTION_0_6();
      swift_once();
      goto LABEL_2;
    }

    v13 = *(MEMORY[0x1E12B2C10](v2, v10) + 50);
    swift_unknownObjectRelease();
    if (v13 == 4)
    {
      break;
    }

LABEL_12:
    v12 = __OFADD__(v2++, 1);
    if (v12)
    {
      goto LABEL_55;
    }
  }

  if (__OFADD__(v2, 1))
  {
    goto LABEL_67;
  }

  if (v2 + 1 == sub_1DD3CC020(v10))
  {
    goto LABEL_51;
  }

  v14 = v2 + 5;
  while (1)
  {
    v15 = v14 - 4;
    if ((v10 & 0xC000000000000001) == 0)
    {
      break;
    }

    v26 = OUTLINED_FUNCTION_62_5();
    v27 = *(MEMORY[0x1E12B2C10](v26) + 50);
    swift_unknownObjectRelease();
    if (v27 != 4)
    {
      if (v15 != v2)
      {
        v18 = MEMORY[0x1E12B2C10](v2, v10);
        v28 = OUTLINED_FUNCTION_62_5();
        v17 = MEMORY[0x1E12B2C10](v28);
        goto LABEL_27;
      }

LABEL_38:
      v12 = __OFADD__(v2++, 1);
      if (v12)
      {
        goto LABEL_59;
      }
    }

LABEL_39:
    v12 = __OFADD__(v15, 1);
    v24 = v14 - 3;
    if (v12)
    {
      goto LABEL_58;
    }

    if (v10 >> 62)
    {
      OUTLINED_FUNCTION_18_20();
      v25 = sub_1DD6407B8();
    }

    else
    {
      v25 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v14;
    if (v24 == v25)
    {
      goto LABEL_51;
    }
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_56;
  }

  v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15 >= v16)
  {
    goto LABEL_57;
  }

  v17 = *(v10 + 8 * v14);
  if (*(v17 + 50) == 4)
  {
    goto LABEL_39;
  }

  if (v15 == v2)
  {
    goto LABEL_38;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 >= v16)
    {
      goto LABEL_63;
    }

    v18 = *(v10 + 32 + 8 * v2);

LABEL_27:
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 40) = v10;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = sub_1DD58716C(v10);
      *(v1 + 40) = v10;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    v20 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v2 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

    v21 = v20 + 8 * v2;
    v22 = *(v21 + 32);
    *(v21 + 32) = v17;

    *(v1 + 40) = v10;
    if ((v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = sub_1DD58716C(v10);
      *(v1 + 40) = v10;
      v20 = v10 & 0xFFFFFFFFFFFFFF8;
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    else if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v15 >= *(v20 + 16))
    {
      goto LABEL_65;
    }

    v23 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = v18;

    *(v1 + 40) = v10;
    goto LABEL_38;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void *sub_1DD497D50()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_1DD497D88()
{
  sub_1DD497D50();

  return swift_deallocClassInstance();
}

void *sub_1DD497DE0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    OUTLINED_FUNCTION_35_10();
    swift_retain_n();
    v10 = a5(v9, a2, a3, a4);
    OUTLINED_FUNCTION_35_10();

    return v10;
  }

  return result;
}

unint64_t *sub_1DD497E80(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD516ED0(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1DD497F10(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_retain_n();
  result = sub_1DD640CA8();
  if (result >= v5)
  {
    goto LABEL_5;
  }

  v7 = result;
  v8 = sub_1DD4D32F8(v5 / 2);
  v10[0] = v9;
  v10[1] = (v5 / 2);

  result = sub_1DD498150(v10, v11, a1, v7, a2);
  if (!v2)
  {
    if (v5 < -1)
    {
      goto LABEL_13;
    }

LABEL_10:
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  if (v5 >= -1)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_5:
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {

      sub_1DD498040(0, v5, 1, a1);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1DD498040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;

    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;

        v13 = sub_1DD496070(v9, v12);

        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v6)
        {

          __break(1u);
          return result;
        }

        v14 = *v11;
        v9 = v11[1];
        *v11 = v9;
        v11[1] = v14;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 += 8;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1DD498150(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  swift_retain_n();
  if (v7 < 1)
  {
    v106 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v101 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    swift_retain_n();
    v5 = v106;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v107 = v5;
      v88 = *(v5 + 16);
      v5 += 16;
      for (i = v88; ; *v92 = i)
      {
        if (i < 2)
        {
        }

        v89 = *a3;
        if (!*a3)
        {
          goto LABEL_132;
        }

        v90 = (v107 + 16 * i);
        v91 = *v90;
        v92 = v5;
        v93 = v5 + 16 * i;
        v94 = *(v93 + 8);
        v95 = (v89 + 8 * *v90);
        v104 = (v89 + 8 * *v93);
        v96 = (v89 + 8 * v94);
        v5 = a5;

        sub_1DD498844(v95, v104, v96, v101);
        if (v109)
        {
          break;
        }

        if (v94 < v91)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v92)
        {
          goto LABEL_121;
        }

        v5 = v92;
        *v90 = v91;
        v90[1] = v94;
        v97 = *v92 - i;
        if (*v92 < i)
        {
          goto LABEL_122;
        }

        i = *v92 - 1;
        sub_1DD4EC4E4((v93 + 16), v97, v93);
      }
    }

LABEL_129:
    v5 = sub_1DD4EC2B8(v5);
    goto LABEL_94;
  }

  v99 = a4;
  v8 = 0;
  v106 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v8;
    if (++v8 >= v7)
    {
      goto LABEL_19;
    }

    v10 = *(*a3 + 8 * v8);
    v11 = v9;
    v12 = (*a3 + 8 * v9);
    v5 = 8 * v11;
    v14 = *v12;
    v13 = (v12 + 2);

    v15 = sub_1DD496070(v10, v14);

    v101 = v11;
    v16 = (v11 + 2);
    while (1)
    {
      v17 = v16;
      if (++v8 >= v7)
      {
        break;
      }

      v19 = *(v13 - 1);
      v18 = *v13;

      v20 = sub_1DD496070(v18, v19) & 1;

      ++v13;
      v16 = (v17 + 1);
      if ((v15 & 1) != v20)
      {
        if (v15)
        {
          goto LABEL_8;
        }

LABEL_21:
        v25 = v106;
        v9 = v101;
        goto LABEL_22;
      }
    }

    v8 = v7;
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_8:
    v9 = v101;
    if (v8 < v101)
    {
      goto LABEL_126;
    }

    if (v101 >= v8)
    {
LABEL_19:
      v25 = v106;
    }

    else
    {
      v21 = v7 >= v17 ? v17 : v7;
      v22 = 8 * v21 - 8;
      v23 = v8;
      v24 = v101;
      v25 = v106;
      do
      {
        if (v24 != --v23)
        {
          v26 = *a3;
          if (!*a3)
          {
            goto LABEL_133;
          }

          v27 = *(v26 + v5);
          *(v26 + v5) = *(v26 + v22);
          *(v26 + v22) = v27;
        }

        v24 = (v24 + 1);
        v22 -= 8;
        v5 += 8;
      }

      while (v24 < v23);
    }

LABEL_22:
    v28 = a3[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v9))
      {
        goto LABEL_125;
      }

      if (v8 - v9 < v99)
      {
        break;
      }
    }

LABEL_38:
    if (v8 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = v25[2];
      sub_1DD3BEB7C();
      v25 = v85;
    }

    v5 = v25[2];
    v39 = v5 + 1;
    if (v5 >= v25[3] >> 1)
    {
      sub_1DD3BEB7C();
      v25 = v86;
    }

    v25[2] = v39;
    v40 = v25 + 4;
    v41 = &v25[2 * v5 + 4];
    *v41 = v9;
    v41[1] = v8;
    v103 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v106 = v25;
    if (v5)
    {
      v101 = v8;
      while (1)
      {
        v42 = v39 - 1;
        v43 = &v40[2 * v39 - 2];
        v44 = &v25[2 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v45 = v25[4];
          v46 = v25[5];
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_59:
          if (v48)
          {
            goto LABEL_111;
          }

          v60 = *v44;
          v59 = v44[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_114;
          }

          v64 = v43[1];
          v65 = v64 - *v43;
          if (__OFSUB__(v64, *v43))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v62, v65))
          {
            goto LABEL_119;
          }

          if (v62 + v65 >= v47)
          {
            if (v47 < v65)
            {
              v42 = v39 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v39 < 2)
        {
          goto LABEL_113;
        }

        v67 = *v44;
        v66 = v44[1];
        v55 = __OFSUB__(v66, v67);
        v62 = v66 - v67;
        v63 = v55;
LABEL_74:
        if (v63)
        {
          goto LABEL_116;
        }

        v69 = *v43;
        v68 = v43[1];
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v70 < v62)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v42 - 1 >= v39)
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        v74 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v75 = &v40[2 * v42 - 2];
        v76 = *v75;
        v77 = v40;
        v5 = v42;
        v78 = &v40[2 * v42];
        v79 = *(v78 + 1);
        v80 = (v74 + 8 * *v75);
        v81 = (v74 + 8 * *v78);
        v82 = (v74 + 8 * v79);

        sub_1DD498844(v80, v81, v82, v103);
        if (v109)
        {
        }

        v25 = v106;
        if (v79 < v76)
        {
          goto LABEL_106;
        }

        v83 = v106[2];
        if (v5 > v83)
        {
          goto LABEL_107;
        }

        *v75 = v76;
        v75[1] = v79;
        if (v5 >= v83)
        {
          goto LABEL_108;
        }

        v39 = v83 - 1;
        sub_1DD4EC4E4(v78 + 16, v83 - 1 - v5, v78);
        v106[2] = v83 - 1;
        v40 = v77;
        v8 = v101;
        if (v83 <= 2)
        {
          goto LABEL_88;
        }
      }

      v49 = &v40[2 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_109;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v56 = v44[1];
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_112;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_115;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = v43[1];
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_123;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v29 = (v9 + v99);
  if (__OFADD__(v9, v99))
  {
    goto LABEL_127;
  }

  if (v29 >= v28)
  {
    v29 = a3[1];
  }

  if (v29 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v8 == v29)
  {
    goto LABEL_38;
  }

  v30 = *a3;
  v31 = *a3 + 8 * v8 - 8;
  v101 = v9;
  v102 = v29;
  v5 = v9 - v8;
LABEL_31:
  v32 = *(v30 + 8 * v8);
  v33 = v5;
  v34 = v31;
  while (1)
  {
    v35 = *v34;

    v36 = sub_1DD496070(v32, v35);

    if ((v36 & 1) == 0)
    {
LABEL_36:
      ++v8;
      v31 += 8;
      --v5;
      if (v8 == v102)
      {
        v8 = v102;
        v25 = v106;
        v9 = v101;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v30)
    {
      break;
    }

    v37 = *v34;
    v32 = v34[1];
    *v34 = v32;
    v34[1] = v37;
    --v34;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_131:

  __break(1u);
LABEL_132:

  __break(1u);
LABEL_133:

  __break(1u);
LABEL_134:

  __break(1u);
LABEL_135:

  __break(1u);
  return result;
}

uint64_t sub_1DD498844(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;

  if (v8 < v9)
  {
    sub_1DD3C2520(v7, v8, a4);
    v10 = &a4[v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *a4;

      v15 = sub_1DD496070(v13, v14);

      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      v5 = v12;
    }

    v16 = a4;
    v17 = v7 == a4++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  sub_1DD3C2520(v6, v9, a4);
  v10 = &a4[v9];
  v28 = a4;
LABEL_15:
  v18 = v6 - 1;
  --v5;
  while (v10 > a4 && v6 > v7)
  {
    v20 = *(v10 - 1);
    v21 = v18;
    v22 = *v18;

    v23 = sub_1DD496070(v20, v22);

    v24 = v5 + 1;
    if (v23)
    {
      v17 = v24 == v6;
      v6 = v21;
      a4 = v28;
      if (!v17)
      {
        *v5 = *v21;
        v6 = v21;
      }

      goto LABEL_15;
    }

    if (v10 != v24)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v18 = v21;
    a4 = v28;
  }

LABEL_28:
  v25 = v10 - a4;
  if (v6 != a4 || v6 >= &a4[v25])
  {
    memmove(v6, a4, 8 * v25);
  }

  return 1;
}

void *sub_1DD498A58(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v39 = v2;
    v5 = 0x746573746F6ELL;
    v6 = 0x7472617473;
    v7 = MEMORY[0x1E69E7CD0];
    v52 = MEMORY[0x1E69E7CD0];

    v40 = sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v8 = sub_1DD6407F8();
        if (!v8)
        {

          return v7;
        }

        v41 = v8;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v9 = v50;
        if (*(v50 + 16) == *(a2 + 16))
        {
          break;
        }

LABEL_41:
      }

      v10 = *(v50 + 49);
      v11 = *(a2 + 49);
      if (v10 == 1)
      {
        v12 = 6581861;
      }

      else
      {
        v12 = v5;
      }

      if (v10 == 1)
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (*(v50 + 49))
      {
        v14 = v12;
      }

      else
      {
        v14 = v6;
      }

      if (*(v50 + 49))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      v16 = v5;
      if (v11 == 1)
      {
        v17 = 6581861;
      }

      else
      {
        v17 = v5;
      }

      if (v11 == 1)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (*(a2 + 49))
      {
        v19 = v17;
      }

      else
      {
        v19 = v6;
      }

      if (*(a2 + 49))
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = v6;
      if (v14 == v19 && v15 == v20)
      {
      }

      else
      {
        v23 = sub_1DD640CD8();

        if ((v23 & 1) == 0)
        {
          v5 = v16;
LABEL_40:
          v6 = v21;
          goto LABEL_41;
        }
      }

      v31 = *(v9 + 51);
      v32 = v50;
      v5 = v16;
      if (v31 != 38)
      {
        goto LABEL_40;
      }

      v33 = *(v7 + 16);
      v6 = v21;
      if (*(v7 + 24) <= v33)
      {
        sub_1DD57162C(v33 + 1, v24, v25, v26, v27, v28, v29, v30, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, vars0, vars8);
      }

      v7 = v52;
      v34 = *(v52 + 40);
      sub_1DD640E28();
      sub_1DD48E664(&v41);
      sub_1DD640E78();
      v35 = -1 << *(v7 + 32);
      v36 = sub_1DD640758();
      *(v7 + 56 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(*(v7 + 48) + 8 * v36) = v32;
      ++*(v7 + 16);
    }
  }

  v38 = sub_1DD499D84(a1, a2);

  return v38;
}

void *sub_1DD498D04(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v39 = v2;
    v5 = 0x746573746F6ELL;
    v6 = 0x7472617473;
    v7 = MEMORY[0x1E69E7CD0];
    v52 = MEMORY[0x1E69E7CD0];

    v40 = sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v8 = sub_1DD6407F8();
        if (!v8)
        {

          return v7;
        }

        v41 = v8;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v9 = v50;
        if (*(v50 + 16) == *(a2 + 16))
        {
          break;
        }

LABEL_38:
      }

      v10 = *(v50 + 49);
      v11 = *(a2 + 49);
      if (v10 == 1)
      {
        v12 = 6581861;
      }

      else
      {
        v12 = v5;
      }

      if (v10 == 1)
      {
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE600000000000000;
      }

      if (*(v50 + 49))
      {
        v14 = v12;
      }

      else
      {
        v14 = v6;
      }

      if (*(v50 + 49))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      v16 = v5;
      if (v11 == 1)
      {
        v17 = 6581861;
      }

      else
      {
        v17 = v5;
      }

      if (v11 == 1)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      if (*(a2 + 49))
      {
        v19 = v17;
      }

      else
      {
        v19 = v6;
      }

      if (*(a2 + 49))
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      v21 = v6;
      if (v14 == v19 && v15 == v20)
      {
      }

      else
      {
        v23 = sub_1DD640CD8();

        if ((v23 & 1) == 0)
        {
          v5 = v16;
LABEL_37:
          v6 = v21;
          goto LABEL_38;
        }
      }

      v31 = *(v9 + 51);
      v32 = v50;
      v5 = v16;
      if (v31 == 39)
      {
        goto LABEL_37;
      }

      v33 = *(v7 + 16);
      v6 = v21;
      if (*(v7 + 24) <= v33)
      {
        sub_1DD57162C(v33 + 1, v24, v25, v26, v27, v28, v29, v30, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, vars0, vars8);
      }

      v7 = v52;
      v34 = *(v52 + 40);
      sub_1DD640E28();
      sub_1DD48E664(&v41);
      sub_1DD640E78();
      v35 = -1 << *(v7 + 32);
      v36 = sub_1DD640758();
      *(v7 + 56 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(*(v7 + 48) + 8 * v36) = v32;
      ++*(v7 + 16);
    }
  }

  v38 = sub_1DD4999E8(a1, a2);

  return v38;
}

void *sub_1DD498FB0(char *a1, uint64_t a2)
{
  v36 = sub_1DD63D168();
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {

    v9 = sub_1DD49A120(a1, a2);

    return v9;
  }

  v33 = v2;
  v9 = MEMORY[0x1E69E7CD0];
  v40 = MEMORY[0x1E69E7CD0];
  v37 = a2;

  sub_1DD640778();
  v35 = (v5 + 16);
  v34 = (v5 + 8);
  while (1)
  {
    v10 = sub_1DD6407F8();
    if (!v10)
    {
      break;
    }

    v38[0] = v10;
    type metadata accessor for DateTimeConstraint();
    swift_dynamicCast();
    v18 = v39;
    v19 = *(v39 + 16);
    if (v19 == 12 || v19 == 3)
    {
      if (*(v39 + 53))
      {
        if (v19 != 4)
        {
          goto LABEL_29;
        }

        v21 = 1;
        goto LABEL_23;
      }

      if (v19 == 3)
      {
        v22 = v36;
        (*v35)(v8, *(v37 + 24) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v36);
        v23 = sub_1DD4F9988();
        (*v34)(v8, v22);
        if ((v23 & 1) != 0 && *(v18 + 51) == 39)
        {
          goto LABEL_29;
        }
      }
    }

    v24 = 0;
    while (v24 != 4)
    {
      v25 = &unk_1F58ADBE8 + v24++;
      if (v25[32] == v19)
      {
        if (*(v18 + 50) == 1)
        {
          v21 = *(v18 + 53);
          if (v19 == 4)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }

        break;
      }
    }

    if (v19 != 4)
    {
      goto LABEL_28;
    }

    v21 = 0;
LABEL_23:
    if (*(v18 + 24) > 12.0 && *(v18 + 48) == 0)
    {
LABEL_29:
      v27 = v39;
      v28 = v9[2];
      if (v9[3] <= v28)
      {
        sub_1DD57162C(v28 + 1, v11, v12, v13, v14, v15, v16, v17, v33, v34, v35, v36, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
      }

      v9 = v40;
      v29 = v40[5];
      sub_1DD640E28();
      sub_1DD48E664(v38);
      sub_1DD640E78();
      v30 = -1 << *(v9 + 32);
      v31 = sub_1DD640758();
      *(v9 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v31;
      *(v9[6] + 8 * v31) = v27;
      ++v9[2];
    }

    else
    {
LABEL_27:
      if (v21)
      {
        goto LABEL_29;
      }

LABEL_28:
    }
  }

  return v9;
}

void *sub_1DD4994E0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v36 = v2;
    v5 = 0x746573746F6ELL;
    v6 = MEMORY[0x1E69E7CD0];
    v49 = MEMORY[0x1E69E7CD0];

    v37 = sub_1DD640778();
    while (1)
    {
      v7 = sub_1DD6407F8();
      if (!v7)
      {

        return v6;
      }

      v38 = v7;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v8 = *(v47 + 49);
      v9 = *(a2 + 49);
      if (v8 == 1)
      {
        v10 = 6581861;
      }

      else
      {
        v10 = v5;
      }

      if (v8 == 1)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (*(v47 + 49))
      {
        v12 = v10;
      }

      else
      {
        v12 = 0x7472617473;
      }

      if (*(v47 + 49))
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      v14 = a2;
      v15 = v5;
      if (v9 == 1)
      {
        v16 = 6581861;
      }

      else
      {
        v16 = v5;
      }

      if (v9 == 1)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0xE600000000000000;
      }

      if (v9)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x7472617473;
      }

      if (v9)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v12 == v18 && v13 == v19)
      {
      }

      else
      {
        v21 = sub_1DD640CD8();

        if ((v21 & 1) == 0)
        {

          goto LABEL_38;
        }
      }

      v29 = v47;
      v30 = *(v6 + 16);
      if (*(v6 + 24) <= v30)
      {
        sub_1DD57162C(v30 + 1, v22, v23, v24, v25, v26, v27, v28, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
      }

      v6 = v49;
      v31 = *(v49 + 40);
      sub_1DD640E28();
      sub_1DD48E664(&v38);
      sub_1DD640E78();
      v32 = -1 << *(v6 + 32);
      v33 = sub_1DD640758();
      *(v6 + 56 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      *(*(v6 + 48) + 8 * v33) = v29;
      ++*(v6 + 16);
LABEL_38:
      v5 = v15;
      a2 = v14;
    }
  }

  v35 = sub_1DD49A5A8(a1, a2);

  return v35;
}

void *sub_1DD499750(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v30 = v2;
    v5 = MEMORY[0x1E69E7CD0];
    v42 = MEMORY[0x1E69E7CD0];

    sub_1DD640778();
    while (1)
    {
      while (1)
      {
        v6 = sub_1DD6407F8();
        if (!v6)
        {

          return v5;
        }

        v31 = v6;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v7 = v40;
        if (*(v40 + 49))
        {
          if (*(v40 + 49) == 1)
          {
            v8 = 0xE300000000000000;
            v9 = 6581861;
          }

          else
          {
            v8 = 0xE600000000000000;
            v9 = 0x746573746F6ELL;
          }
        }

        else
        {
          v8 = 0xE500000000000000;
          v9 = 0x7472617473;
        }

        v10 = (0x20001u >> (8 * *(a2 + 49)));
        if ((0x20001u >> (8 * *(a2 + 49))))
        {
          v11 = v10 == 1 ? 6581861 : 0x746573746F6ELL;
          v12 = v10 == 1 ? 0xE300000000000000 : 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
          v11 = 0x7472617473;
        }

        if (v9 != v11 || v8 != v12)
        {
          break;
        }

LABEL_24:
        if ((*(v7 + 55) & 1) == 0)
        {
          goto LABEL_28;
        }

        v22 = v40;
        v23 = *(v5 + 16);
        if (*(v5 + 24) <= v23)
        {
          sub_1DD57162C(v23 + 1, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, vars0, vars8);
        }

        v5 = v42;
        v24 = *(v42 + 40);
        sub_1DD640E28();
        sub_1DD48E664(&v31);
        sub_1DD640E78();
        v25 = -1 << *(v5 + 32);
        v26 = sub_1DD640758();
        *(v5 + 56 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v5 + 48) + 8 * v26) = v22;
        ++*(v5 + 16);
      }

      v14 = sub_1DD640CD8();

      if (v14)
      {
        goto LABEL_24;
      }

LABEL_28:
    }
  }

  v28 = sub_1DD49ABAC(a1, a2);

  return v28;
}

void *sub_1DD4999E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v37 = v3;
    v35 = &v35;
    MEMORY[0x1EEE9AC00](v10);
    v36 = v8;
    v38 = (&v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v38);
    v39 = 0;
    v40 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v9 = (v12 + 63) >> 6;
    v41 = a2;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v3 = v15 | (v11 << 6);
      v18 = *(*(v5 + 48) + 8 * v3);
      if (v18[16] == *(a2 + 16))
      {
        if (v18[49])
        {
          if (v18[49] == 1)
          {
            v19 = 0xE300000000000000;
            v20 = 6581861;
          }

          else
          {
            v19 = 0xE600000000000000;
            v20 = 0x746573746F6ELL;
          }
        }

        else
        {
          v19 = 0xE500000000000000;
          v20 = 0x7472617473;
        }

        v21 = *(a2 + 49);
        v22 = 0x746573746F6ELL;
        if (v21 == 1)
        {
          v22 = 6581861;
        }

        v23 = 0xE300000000000000;
        if (v21 != 1)
        {
          v23 = 0xE600000000000000;
        }

        if (*(a2 + 49))
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x7472617473;
        }

        if (*(a2 + 49))
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        if (v20 == v24 && v19 == v25)
        {

LABEL_35:
          v28 = v18[51];

          v5 = v40;
          a2 = v41;
          if (v28 != 39)
          {
            *(v38 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
            if (__OFADD__(v39++, 1))
            {
              __break(1u);
LABEL_39:
              sub_1DD51607C(v38, v36, v39, v5);
              v31 = v30;

              goto LABEL_40;
            }
          }
        }

        else
        {
          v27 = sub_1DD640CD8();

          if (v27)
          {
            goto LABEL_35;
          }

          v5 = v40;
          a2 = v41;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_39;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_42:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v34 = swift_slowAlloc();

  v31 = sub_1DD497DE0(v34, v8, v5, a2, sub_1DD49AF48);

  MEMORY[0x1E12B3DA0](v34, -1, -1);

LABEL_40:
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void *sub_1DD499D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v37 = v3;
    v35 = &v35;
    MEMORY[0x1EEE9AC00](v10);
    v36 = v8;
    v38 = (&v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v38);
    v39 = 0;
    v40 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    v9 = (v12 + 63) >> 6;
    v41 = a2;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v3 = v15 | (v11 << 6);
      v18 = *(*(v5 + 48) + 8 * v3);
      if (v18[16] == *(a2 + 16))
      {
        if (v18[49])
        {
          if (v18[49] == 1)
          {
            v19 = 0xE300000000000000;
            v20 = 6581861;
          }

          else
          {
            v19 = 0xE600000000000000;
            v20 = 0x746573746F6ELL;
          }
        }

        else
        {
          v19 = 0xE500000000000000;
          v20 = 0x7472617473;
        }

        v21 = *(a2 + 49);
        v22 = 0x746573746F6ELL;
        if (v21 == 1)
        {
          v22 = 6581861;
        }

        v23 = 0xE300000000000000;
        if (v21 != 1)
        {
          v23 = 0xE600000000000000;
        }

        if (*(a2 + 49))
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x7472617473;
        }

        if (*(a2 + 49))
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        if (v20 == v24 && v19 == v25)
        {

LABEL_35:
          v28 = v18[51];

          v5 = v40;
          a2 = v41;
          if (v28 == 38)
          {
            *(v38 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
            if (__OFADD__(v39++, 1))
            {
              __break(1u);
LABEL_39:
              sub_1DD51607C(v38, v36, v39, v5);
              v31 = v30;

              goto LABEL_40;
            }
          }
        }

        else
        {
          v27 = sub_1DD640CD8();

          if (v27)
          {
            goto LABEL_35;
          }

          v5 = v40;
          a2 = v41;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_39;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_42:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v34 = swift_slowAlloc();

  v31 = sub_1DD497DE0(v34, v8, v5, a2, sub_1DD49B1B0);

  MEMORY[0x1E12B3DA0](v34, -1, -1);

LABEL_40:
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

void *sub_1DD49A120(char *a1, uint64_t a2)
{
  v3 = v2;
  v52 = *MEMORY[0x1E69E9840];
  v44 = sub_1DD63D168();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v8) = a1[32];
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v49 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v47 = v3;
    v45 = v38;
    MEMORY[0x1EEE9AC00](v12);
    v46 = v10;
    v48 = &v38[-((v11 + 15) & 0x3FFFFFFFFFFFFFF0)];
    sub_1DD57634C(0, v10, v48);
    v10 = 0;
    v13 = 0;
    v51 = a1;
    v14 = a1 + 56;
    v15 = 1 << a1[32];
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v11 = v16 & *(a1 + 7);
    v17 = (v15 + 63) >> 6;
    v41 = (v6 + 8);
    v42 = (v6 + 16);
    a1 = &unk_1F58ADBE8;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v6 = *(*(v51 + 6) + 8 * (v18 | (v13 << 6)));
      v3 = *(v6 + 16);
      v21 = v3 == 12 || v3 == 3;
      v50 = v18 | (v13 << 6);
      if (!v21)
      {
        goto LABEL_24;
      }

      if (*(v6 + 53))
      {

        if (v3 == 4)
        {
          v22 = 1;
LABEL_33:
          if (*(v6 + 48))
          {
LABEL_34:

            if (v22)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v30 = *(v6 + 24);

            if ((v30 > 12.0) | v22 & 1)
            {
              goto LABEL_38;
            }
          }
        }

        else
        {
LABEL_23:

LABEL_38:
          *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
          if (__OFADD__(v10++, 1))
          {
            __break(1u);
LABEL_41:
            sub_1DD51607C(v48, v46, v10, v51);
            v33 = v32;

            goto LABEL_42;
          }
        }
      }

      else
      {
        if (v3 == 3)
        {
          v23 = *v42;
          v24 = *(v49 + 24) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat;
          v40 = v10;
          v26 = v43;
          v25 = v44;
          v23(v43, v24, v44);

          v39 = sub_1DD4F9988();
          v27 = v26;
          v10 = v40;
          (*v41)(v27, v25);
          if ((v39 & 1) == 0 || *(v6 + 51) != 39)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }

LABEL_24:

LABEL_25:
        v28 = 0;
        while (v28 != 4)
        {
          v29 = &unk_1F58ADBE8 + v28++;
          if (v29[32] == v3)
          {
            if (*(v6 + 50) == 1)
            {
              v22 = *(v6 + 53);
              if (v3 == 4)
              {
                goto LABEL_33;
              }

              goto LABEL_34;
            }

            break;
          }
        }

        if (v3 == 4)
        {
          v22 = 0;
          goto LABEL_33;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        goto LABEL_41;
      }

      v20 = *&v14[8 * v13];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v36 = swift_slowAlloc();
  v37 = v49;

  v33 = sub_1DD497DE0(v36, v10, a1, v37, sub_1DD49B418);

  MEMORY[0x1E12B3DA0](v36, -1, -1);

LABEL_42:
  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

void *sub_1DD49A5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v37 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_40;
  }

  while (2)
  {
    v34 = v3;
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](v9);
    v33 = v7;
    v35 = (v32 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v7, v35);
    v36 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v8 = v11 & *(a1 + 56);
    v12 = (v10 + 63) >> 6;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v3 = v13 | (v7 << 6);
      if (*(*(*(a1 + 48) + 8 * v3) + 49))
      {
        if (*(*(*(a1 + 48) + 8 * v3) + 49) == 1)
        {
          v16 = 0xE300000000000000;
          v17 = 6581861;
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x746573746F6ELL;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        v17 = 0x7472617473;
      }

      v18 = *(v37 + 49);
      v19 = 0x746573746F6ELL;
      if (v18 == 1)
      {
        v19 = 6581861;
      }

      v20 = 0xE300000000000000;
      if (v18 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (*(v37 + 49))
      {
        v21 = v19;
      }

      else
      {
        v21 = 0x7472617473;
      }

      if (*(v37 + 49))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (v17 == v21 && v16 == v22)
      {

LABEL_34:
        *(v35 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_37:
          sub_1DD51607C(v35, v33, v36, a1);
          v27 = v26;

          goto LABEL_38;
        }
      }

      else
      {
        v24 = sub_1DD640CD8();

        if (v24)
        {
          goto LABEL_34;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_37;
      }

      v15 = *(a1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_40:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();
  v31 = v37;

  v27 = sub_1DD497DE0(v30, v7, a1, v31, sub_1DD49B75C);

  MEMORY[0x1E12B3DA0](v30, -1, -1);

LABEL_38:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}