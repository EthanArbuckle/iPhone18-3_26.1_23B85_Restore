uint64_t sub_2677E2288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2677E2350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9A18, &qword_267A69B68);
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_241();
  v71 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB410, &qword_267A78DE0);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_241();
  v73 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB408, &qword_267A78DD8);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_241();
  v72 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D99F0, &qword_267A69900);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_241();
  v68 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D99E8, &qword_267A698F8);
  OUTLINED_FUNCTION_3(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v67 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D96D8, &qword_267A672B0);
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v67 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9A20, &qword_267A69B98);
  sub_2677E2AA4(&qword_2801D99D0, type metadata accessor for Common.DateTimeRange);
  sub_2677E2AA4(&qword_2801D96F0, type metadata accessor for Common.DateTime);
  OUTLINED_FUNCTION_258();
  sub_267A41A04();

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D99F8, &qword_267A69930);
  OUTLINED_FUNCTION_14_1(v37);
  if (v39)
  {
    sub_2676F8798(v37, &qword_2801D96D8, &qword_267A672B0);
    v70 = 0;
  }

  else
  {
    v70 = Entity<A>.toDateTime()();
    OUTLINED_FUNCTION_0_5();
    (*(v40 + 8))(v37, v38);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_258();
  sub_267A41A04();

  OUTLINED_FUNCTION_14_1(v35);
  if (v39)
  {
    sub_2676F8798(v35, &qword_2801D96D8, &qword_267A672B0);
    v69 = 0;
  }

  else
  {
    v69 = Entity<A>.toDateTime()();
    OUTLINED_FUNCTION_0_5();
    (*(v41 + 8))(v35, v38);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_258();
  sub_267A41A04();

  OUTLINED_FUNCTION_14_1(v32);
  if (v39)
  {
    sub_2676F8798(v32, &qword_2801D96D8, &qword_267A672B0);
  }

  else
  {
    Entity<A>.toDateTime()();
    OUTLINED_FUNCTION_0_5();
    (*(v42 + 8))(v32, v38);
  }

  v44 = v72;
  v43 = v73;
  swift_getKeyPath();
  sub_2677E2AA4(&qword_2801D9A08, type metadata accessor for Common.Duration);
  OUTLINED_FUNCTION_258();
  sub_267A41A04();

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AD0, &qword_267A6A8C0);
  OUTLINED_FUNCTION_14_1(v25);
  if (v39)
  {
    sub_2676F8798(v25, &qword_2801D99E8, &qword_267A698F8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D88, &qword_267A6DFD8);
    v46 = v68;
    OUTLINED_FUNCTION_13_1();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    sub_2677E333C(v46);
    sub_2676F8798(v46, &qword_2801D99F0, &qword_267A69900);
    OUTLINED_FUNCTION_0_5();
    (*(v51 + 8))(v25, v45);
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_258();
  sub_267A419E4();

  v52 = v71;
  if (v75 == 24)
  {
    sub_267A41B74();
    OUTLINED_FUNCTION_13_1();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  }

  else
  {
    v74 = v75;
    sub_2677E2AEC(v44);
  }

  swift_getKeyPath();
  sub_2677E2AA4(&qword_2801D9A28, type metadata accessor for Common.DateTimeRangeQualifier);
  OUTLINED_FUNCTION_258();
  sub_267A41A04();

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9A30, &qword_267A69DD0);
  OUTLINED_FUNCTION_14_1(v52);
  if (v39)
  {
    sub_2676F8798(v52, &qword_2801D9A18, &qword_267A69B68);
    sub_267A41BE4();
    OUTLINED_FUNCTION_13_1();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  }

  else
  {
    sub_2677E2D2C(v43);
    OUTLINED_FUNCTION_0_5();
    (*(v62 + 8))(v52, v57);
  }

  v63 = sub_267A41BA4();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  return sub_267A41B94();
}

uint64_t sub_2677E2AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2677E2AEC@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 2:
      v3 = MEMORY[0x277D563E8];
      goto LABEL_25;
    case 3:
      v3 = MEMORY[0x277D56398];
      goto LABEL_25;
    case 4:
      v3 = MEMORY[0x277D56338];
      goto LABEL_25;
    case 5:
      v3 = MEMORY[0x277D56328];
      goto LABEL_25;
    case 6:
      v3 = MEMORY[0x277D56380];
      goto LABEL_25;
    case 7:
      v3 = MEMORY[0x277D563B8];
      goto LABEL_25;
    case 8:
      v3 = MEMORY[0x277D56330];
      goto LABEL_25;
    case 9:
      v3 = MEMORY[0x277D56388];
      goto LABEL_25;
    case 0xA:
      v3 = MEMORY[0x277D563F0];
      goto LABEL_25;
    case 0xB:
      v3 = MEMORY[0x277D56358];
      goto LABEL_25;
    case 0xC:
      v3 = MEMORY[0x277D56348];
      goto LABEL_25;
    case 0xD:
      v3 = MEMORY[0x277D56350];
      goto LABEL_25;
    case 0xE:
      v3 = MEMORY[0x277D563C0];
      goto LABEL_25;
    case 0xF:
      v3 = MEMORY[0x277D56320];
      goto LABEL_25;
    case 0x10:
      v3 = MEMORY[0x277D563C8];
      goto LABEL_25;
    case 0x11:
      v3 = MEMORY[0x277D56390];
      goto LABEL_25;
    case 0x12:
      v3 = MEMORY[0x277D563A0];
      goto LABEL_25;
    case 0x13:
      v3 = MEMORY[0x277D563A8];
      goto LABEL_25;
    case 0x14:
      v3 = MEMORY[0x277D563D0];
      goto LABEL_25;
    case 0x15:
      v3 = MEMORY[0x277D563B0];
      goto LABEL_25;
    case 0x16:
      v3 = MEMORY[0x277D563E0];
      goto LABEL_25;
    case 0x17:
      v3 = MEMORY[0x277D563D8];
LABEL_25:
      v8 = *v3;
      v9 = sub_267A41B74();
      (*(*(v9 - 8) + 104))(a1, v8, v9);
      v4 = a1;
      v5 = 0;
      v6 = 1;
      v7 = v9;
      break;
    default:
      sub_267A41B74();
      OUTLINED_FUNCTION_13_1();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_2677E2D2C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9A30, &qword_267A69DD0);
  sub_2677E2EB8();
  sub_267A419E4();

  switch(v9)
  {
    case 1:
      v5 = MEMORY[0x277D56450];
      goto LABEL_10;
    case 2:
      v5 = MEMORY[0x277D56428];
      goto LABEL_10;
    case 3:
      v5 = MEMORY[0x277D56458];
      goto LABEL_10;
    case 4:
      v5 = MEMORY[0x277D56420];
      goto LABEL_10;
    case 5:
      v5 = MEMORY[0x277D56480];
      goto LABEL_10;
    case 6:
      v5 = MEMORY[0x277D56468];
      goto LABEL_10;
    case 7:
      v5 = MEMORY[0x277D56478];
LABEL_10:
      v6 = *v5;
      v7 = sub_267A41BE4();
      (*(*(v7 - 8) + 104))(a1, v6, v7);
      v3 = a1;
      v4 = 0;
      v2 = v7;
      break;
    default:
      v2 = sub_267A41BE4();
      v3 = a1;
      v4 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

unint64_t sub_2677E2EB8()
{
  result = qword_2801D9A28;
  if (!qword_2801D9A28)
  {
    type metadata accessor for Common.DateTimeRangeQualifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D9A28);
  }

  return result;
}

uint64_t sub_2677E2F10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9A58, &qword_267A6A098);
  OUTLINED_FUNCTION_0_6();
  sub_2677E3258(v2, v3);
  sub_267A419E4();

  switch(v12)
  {
    case 1:
      v4 = MEMORY[0x277D56240];
      goto LABEL_10;
    case 2:
      v4 = MEMORY[0x277D56258];
      goto LABEL_10;
    case 3:
      v4 = MEMORY[0x277D56248];
      goto LABEL_10;
    case 4:
      v4 = MEMORY[0x277D56260];
      goto LABEL_10;
    case 5:
      v4 = MEMORY[0x277D56250];
      goto LABEL_10;
    case 6:
      v4 = MEMORY[0x277D56268];
      goto LABEL_10;
    case 7:
      sub_267A41B04();
      v5 = OUTLINED_FUNCTION_1_5();
      return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    default:
      v4 = MEMORY[0x277D56238];
LABEL_10:
      v9 = *v4;
      v10 = sub_267A41B04();
      (*(*(v10 - 8) + 104))(a1, v9, v10);
      v5 = a1;
      v6 = 0;
      v7 = 1;
      v8 = v10;
      return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2677E30A4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9A58, &qword_267A6A098);
  OUTLINED_FUNCTION_0_6();
  sub_2677E3258(v6, v7);
  sub_2677E3258(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  sub_267A41A04();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9BE0, &qword_267A6BC08);
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    sub_2677E32A0(v5);
    sub_267A41BE4();
    v9 = OUTLINED_FUNCTION_1_5();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    sub_2677E52AC(a1);
    return (*(*(v8 - 8) + 8))(v5, v8);
  }
}

uint64_t sub_2677E3258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2677E32A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2677E333C(uint64_t a1)
{
  v196 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D96C8, &qword_267A672A0);
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v204 = &v187 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AC8, &qword_267A6A890);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_3();
  v209 = v12;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_21_0();
  v198 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D99F0, &qword_267A69900);
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_0();
  v193 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB410, &qword_267A78DE0);
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_4();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v187 - v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11_3();
  v201 = v29;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11_3();
  v195 = v31;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21_0();
  v199 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D96D0, &qword_267A672A8);
  v35 = OUTLINED_FUNCTION_3(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_6();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_21_0();
  v192 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB428, &qword_267A79210);
  v44 = OUTLINED_FUNCTION_3(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_11_3();
  v206 = v48;
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_21_0();
  v194 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AE8, &qword_267A6AA30);
  v52 = OUTLINED_FUNCTION_3(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v187 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AF0, &qword_267A6AA60);
  v205 = *(v57 - 8);
  v58 = *(v205 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1_6();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_21_0();
  v64 = v63;
  swift_getKeyPath();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AD0, &qword_267A6A8C0);
  v66 = sub_2677E4FD8(&qword_2801D9A08, type metadata accessor for Common.Duration);
  v67 = sub_2677E4FD8(&qword_2801D9AD8, type metadata accessor for Common.DurationComponent);
  v202 = v66;
  v203 = v65;
  v207 = v1;
  v208 = v67;
  v68 = sub_267A41A44();

  v70 = *(v68 + 16);
  if (!v70)
  {
LABEL_36:

    return 0;
  }

  if (v70 == 1)
  {
    sub_2677E4480(v68, v56);
    OUTLINED_FUNCTION_15_1(v56, 1, v57);
    if (!v117)
    {

      v112 = v64;
      (*(v205 + 32))(v64, v56, v57);
      sub_2677E4534();
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_4();
      sub_2677E4FD8(v113, v114);
      v115 = v192;
      sub_267A41A04();

      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9FD8, &qword_267A71A40);
      OUTLINED_FUNCTION_15_1(v115, 1, v116);
      if (v117)
      {
        sub_2677E0C20(v115, &qword_2801D96D0, &qword_267A672A8);
        sub_267A41B64();
        OUTLINED_FUNCTION_13_1();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
      }

      else
      {
        sub_2679B6600(v194);
        OUTLINED_FUNCTION_12_2(v116);
        (*(v140 + 8))(v115, v116);
      }

      v142 = v198;
      v141 = v199;
      v143 = v195;
      v144 = v193;
      sub_2677E4F74(v196, v193, &qword_2801D99F0, &qword_267A69900);
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D88, &qword_267A6DFD8);
      OUTLINED_FUNCTION_15_1(v144, 1, v145);
      if (v117)
      {
        sub_2677E0C20(v144, &qword_2801D99F0, &qword_267A69900);
        sub_267A41BE4();
        OUTLINED_FUNCTION_13_1();
        __swift_storeEnumTagSinglePayload(v146, v147, v148, v149);
      }

      else
      {
        sub_2677E5B30(v143);
        OUTLINED_FUNCTION_12_2(v145);
        (*(v150 + 8))(v144, v145);
        v151 = sub_267A41BE4();
        OUTLINED_FUNCTION_15_1(v143, 1, v151);
        if (!v152)
        {
          OUTLINED_FUNCTION_12_2(v151);
          (*(v173 + 32))(v141, v143, v151);
          OUTLINED_FUNCTION_8_3();
          __swift_storeEnumTagSinglePayload(v174, v175, v176, v177);
LABEL_54:
          v178 = sub_267A41BD4();
          v179 = *(v178 + 48);
          v180 = *(v178 + 52);
          swift_allocObject();
          v139 = sub_267A41BC4();
          (*(v205 + 8))(v112, v57);
          return v139;
        }
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_0_7();
      sub_2677E4FD8(v153, v154);
      sub_267A41A04();

      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D50, &qword_267A6D8F8);
      OUTLINED_FUNCTION_15_1(v142, 1, v155);
      if (v117)
      {
        sub_2677E0C20(v142, &qword_2801D9AC8, &qword_267A6A890);
        sub_267A41BE4();
        OUTLINED_FUNCTION_13_1();
        __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
      }

      else
      {
        sub_2677E59C4(v141);
        OUTLINED_FUNCTION_12_2(v155);
        (*(v160 + 8))(v142, v155);
      }

      v161 = sub_267A41BE4();
      OUTLINED_FUNCTION_15_1(v143, 1, v161);
      if (!v117)
      {
        sub_2677E0C20(v143, &qword_2801DB410, &qword_267A78DE0);
      }

      goto LABEL_54;
    }

    result = sub_2677E0C20(v56, &qword_2801D9AE8, &qword_267A6AA30);
  }

  v193 = v28;
  v71 = 0;
  v198 = v205 + 16;
  LODWORD(v195) = *MEMORY[0x277D56460];
  LODWORD(v194) = *MEMORY[0x277D56440];
  v199 = v205 + 8;
  v200 = v68;
  v72 = 0.0;
  for (i = v70; ; v70 = i)
  {
    if (v70 == v71)
    {

      v122 = *MEMORY[0x277D56308];
      v123 = sub_267A41B64();
      OUTLINED_FUNCTION_12_2(v123);
      (*(v124 + 104))(v189, v122, v123);
      OUTLINED_FUNCTION_8_3();
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
      v129 = v188;
      sub_2677E4F74(v196, v188, &qword_2801D99F0, &qword_267A69900);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D88, &qword_267A6DFD8);
      OUTLINED_FUNCTION_15_1(v129, 1, v130);
      if (v117)
      {
        sub_2677E0C20(v129, &qword_2801D99F0, &qword_267A69900);
        sub_267A41BE4();
        v162 = v190;
        OUTLINED_FUNCTION_13_1();
        __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
        v135 = v193;
        v136 = v191;
      }

      else
      {
        v162 = v190;
        sub_2677E5B30(v190);
        OUTLINED_FUNCTION_12_2(v130);
        (*(v163 + 8))(v129, v130);
        v164 = sub_267A41BE4();
        OUTLINED_FUNCTION_15_1(v162, 1, v164);
        v135 = v193;
        v136 = v191;
        if (!v165)
        {
          OUTLINED_FUNCTION_12_2(v164);
          (*(v183 + 32))(v135, v162, v164);
          __swift_storeEnumTagSinglePayload(v135, 0, 1, v164);
LABEL_57:
          v184 = sub_267A41BD4();
          v185 = *(v184 + 48);
          v186 = *(v184 + 52);
          swift_allocObject();
          return sub_267A41BC4();
        }
      }

      swift_getKeyPath();
      OUTLINED_FUNCTION_0_7();
      sub_2677E4FD8(v166, v167);
      sub_267A41A04();

      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D50, &qword_267A6D8F8);
      OUTLINED_FUNCTION_15_1(v136, 1, v168);
      if (v117)
      {
        sub_2677E0C20(v136, &qword_2801D9AC8, &qword_267A6A890);
        sub_267A41BE4();
        OUTLINED_FUNCTION_13_1();
        __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
      }

      else
      {
        sub_2677E59C4(v135);
        OUTLINED_FUNCTION_12_2(v168);
        (*(v181 + 8))(v136, v168);
      }

      v182 = sub_267A41BE4();
      OUTLINED_FUNCTION_15_1(v162, 1, v182);
      if (!v117)
      {
        sub_2677E0C20(v162, &qword_2801DB410, &qword_267A78DE0);
      }

      goto LABEL_57;
    }

    if (v71 >= *(v68 + 16))
    {
      break;
    }

    (*(v205 + 16))(v61, v68 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v71, v57);
    swift_getKeyPath();
    sub_2677E4FD8(&qword_2801D9700, type metadata accessor for Common.Number);
    v73 = v204;
    sub_267A41A04();

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D48, &qword_267A6D788);
    OUTLINED_FUNCTION_15_1(v73, 1, v74);
    if (v117)
    {

      OUTLINED_FUNCTION_11_4();
      v137(v61, v57);
      sub_2677E0C20(v73, &qword_2801D96C8, &qword_267A672A0);
      return 0;
    }

    swift_getKeyPath();
    v75 = sub_267A41A24();
    v77 = v76;

    OUTLINED_FUNCTION_12_2(v74);
    (*(v78 + 8))(v73, v74);
    if (!v77 || (v210 = 0.0, v79 = sub_2677E4E64(v75, v77), , !v79))
    {

      OUTLINED_FUNCTION_11_4();
      v138(v61, v57);
      return 0;
    }

    v80 = v210;
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_4();
    sub_2677E4FD8(&qword_2801D96F8, v81);
    sub_267A41A04();

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9FD8, &qword_267A71A40);
    OUTLINED_FUNCTION_15_1(v40, 1, v82);
    if (v117)
    {
      sub_2677E0C20(v40, &qword_2801D96D0, &qword_267A672A8);
      sub_267A41B64();
      OUTLINED_FUNCTION_13_1();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
    }

    else
    {
      sub_2679B6600(v206);
      OUTLINED_FUNCTION_12_2(v82);
      (*(v87 + 8))(v40, v82);
    }

    swift_getKeyPath();
    OUTLINED_FUNCTION_0_7();
    v89 = sub_2677E4FD8(&qword_2801D9AE0, v88);
    sub_267A41A04();
    v90 = v209;

    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D50, &qword_267A6D8F8);
    OUTLINED_FUNCTION_15_1(v90, 1, v91);
    if (v117)
    {
      sub_2677E0C20(v90, &qword_2801D9AC8, &qword_267A6A890);
      sub_267A41BE4();
      OUTLINED_FUNCTION_12_4();
      OUTLINED_FUNCTION_13_1();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
    }

    else
    {
      swift_getKeyPath();
      sub_267A419E4();

      v89 = LOBYTE(v210);
      if (LOBYTE(v210) == 2)
      {
        sub_267A41BE4();
        OUTLINED_FUNCTION_12_4();
        OUTLINED_FUNCTION_13_1();
      }

      else
      {
        v100 = sub_267A41BE4();
        OUTLINED_FUNCTION_12_2(v100);
        v102 = *(v101 + 104);
        v103 = OUTLINED_FUNCTION_12_4();
        if (v89)
        {
          v105 = v194;
        }

        else
        {
          v105 = v195;
        }

        v104(v103, v105, v100);
        OUTLINED_FUNCTION_8_3();
      }

      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
      OUTLINED_FUNCTION_12_2(v91);
      (*(v106 + 8))(v209, v91);
    }

    v107 = v206;
    v108 = COERCE_DOUBLE(sub_2677E4738(v206, v89, v80));
    v110 = v109;
    sub_2677E0C20(v89, &qword_2801DB410, &qword_267A78DE0);
    sub_2677E0C20(v107, &qword_2801DB428, &qword_267A79210);
    OUTLINED_FUNCTION_11_4();
    result = v111(v61, v57);
    if (v110)
    {
      goto LABEL_36;
    }

    v72 = v72 + v108;
    ++v71;
    v68 = v200;
  }

  __break(1u);
  return result;
}

uint64_t sub_2677E4480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AF0, &qword_267A6AA60);
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2677E4534()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D96C8, &qword_267A672A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v8 - v1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9AF0, &qword_267A6AA60);
  sub_2677E4FD8(&qword_2801D9AD8, type metadata accessor for Common.DurationComponent);
  sub_2677E4FD8(&qword_2801D9700, type metadata accessor for Common.Number);
  sub_267A41A04();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D48, &qword_267A6D788);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2677E0C20(v2, &qword_2801D96C8, &qword_267A672A0);
  }

  else
  {
    swift_getKeyPath();
    v4 = sub_267A41A24();
    v6 = v5;

    (*(*(v3 - 8) + 8))(v2, v3);
    if (v6)
    {
      return sub_2677E4D80(v4, v6);
    }
  }

  return 0;
}

uint64_t sub_2677E4738(uint64_t a1, uint64_t a2, double a3)
{
  v46 = a2;
  v48 = a1;
  v4 = sub_267A41BE4();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  (MEMORY[0x28223BE20])();
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB430, &qword_267A79308);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v41 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB410, &qword_267A78DE0) - 8) + 64);
  v12 = (MEMORY[0x28223BE20])();
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB428, &qword_267A79210);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - v18;
  v20 = sub_267A41B64();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v47 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v41 - v25;
  sub_2677E4F74(v48, v19, &qword_2801DB428, &qword_267A79210);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_2677E0C20(v19, &qword_2801DB428, &qword_267A79210);
    return 0;
  }

  v48 = v21;
  v28 = *(v21 + 32);
  v42 = v26;
  v28(v26, v19, v20);
  v29 = v45;
  (*(v45 + 104))(v15, *MEMORY[0x277D56460], v4);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v4);
  v30 = *(v7 + 48);
  sub_2677E4F74(v46, v10, &qword_2801DB410, &qword_267A78DE0);
  sub_2677E4F74(v15, &v10[v30], &qword_2801DB410, &qword_267A78DE0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_2677E0C20(v15, &qword_2801DB410, &qword_267A78DE0);
    if (__swift_getEnumTagSinglePayload(&v10[v30], 1, v4) == 1)
    {
      sub_2677E0C20(v10, &qword_2801DB410, &qword_267A78DE0);
      v31 = -1.0;
      v32 = v42;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v33 = v44;
  sub_2677E4F74(v10, v44, &qword_2801DB410, &qword_267A78DE0);
  if (__swift_getEnumTagSinglePayload(&v10[v30], 1, v4) == 1)
  {
    sub_2677E0C20(v15, &qword_2801DB410, &qword_267A78DE0);
    (*(v29 + 8))(v33, v4);
LABEL_9:
    sub_2677E0C20(v10, &qword_2801DB430, &qword_267A79308);
    v32 = v42;
LABEL_10:
    v31 = 1.0;
    goto LABEL_11;
  }

  v38 = v43;
  (*(v29 + 32))(v43, &v10[v30], v4);
  sub_2677E4FD8(&qword_2801DB438, MEMORY[0x277D56488]);
  LODWORD(v46) = sub_267A41C14();
  v39 = *(v29 + 8);
  v39(v38, v4);
  sub_2677E0C20(v15, &qword_2801DB410, &qword_267A78DE0);
  v39(v33, v4);
  sub_2677E0C20(v10, &qword_2801DB410, &qword_267A78DE0);
  v31 = -1.0;
  v32 = v42;
  if ((v46 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v34 = v47;
  v28(v47, v32, v20);
  v35 = v48;
  v36 = (*(v48 + 88))(v34, v20);
  if (v36 == *MEMORY[0x277D562D8])
  {
    v37 = a3 * 60.0 * 60.0;
LABEL_19:
    v40 = v37 * v31;
    return *&v40;
  }

  if (v36 == *MEMORY[0x277D562B8])
  {
    v37 = a3 / 1000.0;
    goto LABEL_19;
  }

  if (v36 == *MEMORY[0x277D56300])
  {
    v37 = a3 * 60.0;
    goto LABEL_19;
  }

  if (v36 != *MEMORY[0x277D56308])
  {
    (*(v35 + 8))(v34, v20);
    return 0;
  }

  v40 = v31 * a3;
  return *&v40;
}

uint64_t sub_2677E4D80(uint64_t a1, uint64_t a2)
{
  sub_2677E4E64(a1, a2);

  return 0;
}

_BYTE *sub_2677E4DF8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_2677E4E64(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_267A41C34();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_2677E4F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2677E4FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2677E5094@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9BB8, &qword_267A6B788);
  sub_2677E5264(&qword_2801D99B8, type metadata accessor for Common.Integer);
  sub_2677E5264(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  sub_267A41A04();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9BE0, &qword_267A6BC08);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2677E32A0(v5);
    v7 = sub_267A41BE4();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }

  else
  {
    sub_2677E52AC(a1);
    return (*(*(v6 - 8) + 8))(v5, v6);
  }
}

uint64_t sub_2677E5264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2677E52AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9BE0, &qword_267A6BC08);
  sub_2677E5400();
  sub_267A419E4();

  switch(v9)
  {
    case 16:
      v2 = MEMORY[0x277D56430];
      goto LABEL_12;
    case 1:
      v2 = MEMORY[0x277D56458];
      goto LABEL_12;
    case 2:
      v2 = MEMORY[0x277D56448];
      goto LABEL_12;
    case 13:
      v2 = MEMORY[0x277D56438];
      goto LABEL_12;
    case 0:
      v2 = MEMORY[0x277D56470];
LABEL_12:
      v6 = *v2;
      v7 = sub_267A41BE4();
      (*(*(v7 - 8) + 104))(a1, v6, v7);
      v4 = a1;
      v5 = 0;
      v3 = v7;
      return __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
  }

  v3 = sub_267A41BE4();
  v4 = a1;
  v5 = 1;
  return __swift_storeEnumTagSinglePayload(v4, v5, 1, v3);
}

unint64_t sub_2677E5400()
{
  result = qword_2801D4EC0;
  if (!qword_2801D4EC0)
  {
    type metadata accessor for Common.ListPosition(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D4EC0);
  }

  return result;
}

uint64_t sub_2677E5458@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9C68, &qword_267A6C5F0);
  sub_2677E556C();
  sub_267A419E4();

  if (v8 == 2)
  {
    v2 = sub_267A41B34();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_267A41B34();
    if (v8)
    {
      v6 = MEMORY[0x277D562A0];
    }

    else
    {
      v6 = MEMORY[0x277D56298];
    }

    (*(*(v5 - 8) + 104))(a1, *v6, v5);
    v3 = a1;
    v4 = 0;
    v2 = v5;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

unint64_t sub_2677E556C()
{
  result = qword_2801D9C70;
  if (!qword_2801D9C70)
  {
    type metadata accessor for Common.Meridiem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D9C70);
  }

  return result;
}

uint64_t sub_2677E55C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D28, &qword_267A6D478);
  OUTLINED_FUNCTION_0_8();
  sub_2677E595C(v2, v3);
  sub_267A419E4();

  switch(v12)
  {
    case 1:
      v4 = MEMORY[0x277D56200];
      goto LABEL_15;
    case 2:
      v4 = MEMORY[0x277D56218];
      goto LABEL_15;
    case 3:
      v4 = MEMORY[0x277D56220];
      goto LABEL_15;
    case 4:
      v4 = MEMORY[0x277D56208];
      goto LABEL_15;
    case 5:
      v4 = MEMORY[0x277D561E0];
      goto LABEL_15;
    case 6:
      v4 = MEMORY[0x277D561E8];
      goto LABEL_15;
    case 7:
      v4 = MEMORY[0x277D561F8];
      goto LABEL_15;
    case 8:
      v4 = MEMORY[0x277D561D8];
      goto LABEL_15;
    case 9:
      v4 = MEMORY[0x277D56228];
      goto LABEL_15;
    case 10:
      v4 = MEMORY[0x277D56210];
      goto LABEL_15;
    case 11:
      v4 = MEMORY[0x277D56230];
      goto LABEL_15;
    case 12:
      sub_267A41AE4();
      v5 = OUTLINED_FUNCTION_1_5();
      return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    default:
      v4 = MEMORY[0x277D561F0];
LABEL_15:
      v9 = *v4;
      v10 = sub_267A41AE4();
      (*(*(v10 - 8) + 104))(a1, v9, v10);
      v5 = a1;
      v6 = 0;
      v7 = 1;
      v8 = v10;
      return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2677E57A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4E98, &qword_267A421B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D28, &qword_267A6D478);
  OUTLINED_FUNCTION_0_8();
  sub_2677E595C(v6, v7);
  sub_2677E595C(&qword_2801D4EC0, type metadata accessor for Common.ListPosition);
  sub_267A41A04();

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9BE0, &qword_267A6BC08);
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    sub_2677E32A0(v5);
    sub_267A41BE4();
    v9 = OUTLINED_FUNCTION_1_5();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    sub_2677E52AC(a1);
    return (*(*(v8 - 8) + 8))(v5, v8);
  }
}

uint64_t sub_2677E595C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2677E59C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D50, &qword_267A6D8F8);
  sub_2677E5AD8();
  sub_267A419E4();

  if (v8 == 2)
  {
    v2 = sub_267A41BE4();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_267A41BE4();
    if (v8)
    {
      v6 = MEMORY[0x277D56440];
    }

    else
    {
      v6 = MEMORY[0x277D56460];
    }

    (*(*(v5 - 8) + 104))(a1, *v6, v5);
    v3 = a1;
    v4 = 0;
    v2 = v5;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

unint64_t sub_2677E5AD8()
{
  result = qword_2801D9AE0;
  if (!qword_2801D9AE0)
  {
    type metadata accessor for Common.NumberSign(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D9AE0);
  }

  return result;
}

uint64_t sub_2677E5B30@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D9D88, &qword_267A6DFD8);
  sub_2677E5C44();
  sub_267A419E4();

  if (v8 == 2)
  {
    v2 = sub_267A41BE4();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_267A41BE4();
    if (v8)
    {
      v6 = MEMORY[0x277D56460];
    }

    else
    {
      v6 = MEMORY[0x277D56440];
    }

    (*(*(v5 - 8) + 104))(a1, *v6, v5);
    v3 = a1;
    v4 = 0;
    v2 = v5;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

unint64_t sub_2677E5C44()
{
  result = qword_2801D9A00;
  if (!qword_2801D9A00)
  {
    type metadata accessor for Common.OffsetDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801D9A00);
  }

  return result;
}

uint64_t Common.ActivationValue.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB440, &qword_267A79430);

  return sub_267A41984();
}

uint64_t Common.ActivationValue.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB440, &qword_267A79430);

  return sub_267A419A4();
}

uint64_t Common.ActivationValue.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t sub_2677E5EF4()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 20);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ActivationValue.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t sub_2677E6194()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 24);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ActivationValue.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t sub_2677E6434()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 28);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ActivationValue.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t sub_2677E66D4()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 32);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ActivationValue.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t sub_2677E6974()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 36);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ActivationValue.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB450, &qword_267A79448);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79450);
}

uint64_t sub_2677E6C14()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 40);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB458, &unk_267A79458);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB450, &qword_267A79448);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ActivationValue.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_2677E6EB4()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 44);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.ActivationValue.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ActivationValue(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentDirection.usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A41984();
}

uint64_t Common.AdjustmentDirection.$usoAssociatedApp.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);

  return sub_267A419A4();
}

uint64_t Common.AdjustmentDirection.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AdjustmentDirection.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentDirection.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AdjustmentDirection.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentDirection.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AdjustmentDirection.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentDirection.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AdjustmentDirection.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentDirection.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB460, &qword_267A79468);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79470);
}

uint64_t Common.AdjustmentDirection.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB468, &qword_267A79478);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB460, &qword_267A79468);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentDirection.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AdjustmentDirection.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentDirection(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB470, &qword_267A79480);

  return sub_267A41984();
}

uint64_t Common.AdjustmentType.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB470, &qword_267A79480);

  return sub_267A419A4();
}

uint64_t Common.AdjustmentType.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AdjustmentType.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AdjustmentType.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AdjustmentType.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AdjustmentType.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AdjustmentType.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB480, &unk_267A79490);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CF0);
}

uint64_t Common.AdjustmentType.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB488, &qword_267A794A0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB480, &unk_267A79490);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AdjustmentType.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AdjustmentType.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AdjustmentType(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB490, &qword_267A794A8);

  return sub_267A41984();
}

uint64_t Common.Age.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB490, &qword_267A794A8);

  return sub_267A419A4();
}

uint64_t Common.Age.referenceDateTime.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A794C0);
}

uint64_t Common.Age.$referenceDateTime.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A8, &qword_267A794C8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.unit.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4B0, &unk_267A794D0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78C00);
}

uint64_t Common.Age.$unit.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4B8, &qword_267A794E0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4B0, &unk_267A794D0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.value.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4C0, &qword_267A794E8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A794F0);
}

uint64_t Common.Age.$value.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4C8, &qword_267A794F8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4C0, &qword_267A794E8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Age.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Age.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Age.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Age.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t sub_2677EA340()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 48);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Age.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78D00);
}

uint64_t sub_2677EA5E0()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 52);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Age.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D8, &qword_267A79510);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Age.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Age(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_2677EA880()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 56);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Age.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Age(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4E0, &qword_267A79518);

  return sub_267A41984();
}

uint64_t Common.Agent.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4E0, &qword_267A79518);

  return sub_267A419A4();
}

uint64_t Common.Agent.$attributes.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F8, &qword_267A79530);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4F0, &qword_267A79528);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.specifyingContactAddress.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A79550);
}

uint64_t Common.Agent.$specifyingContactAddress.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Agent.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Agent.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Agent.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Agent.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.Agent.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB520, &unk_267A79560);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CF8);
}

uint64_t Common.Agent.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB528, &qword_267A79570);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB520, &unk_267A79560);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Agent.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Agent(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.Agent.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Agent(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_2677EC100(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_2857(a1, a2, a3);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  sub_2676F8AF4(a1, &v13 - v9, a2, a3);
  OUTLINED_FUNCTION_1848();
  sub_267A41994();
  v10 = OUTLINED_FUNCTION_1862();
  return sub_2678A9230(v10, v11, a3);
}

uint64_t Common.App.associatedDateTime.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A794C0);
}

uint64_t Common.App.$associatedDateTime.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A8, &qword_267A794C8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.$attributes.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB548, &qword_267A79598);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB540, &qword_267A79590);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.developer.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB520, &unk_267A79560);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CF8);
}

uint64_t Common.App.$developer.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB528, &qword_267A79570);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB520, &unk_267A79560);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.genre.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB550, &unk_267A795A0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78D58);
}

uint64_t Common.App.$genre.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB558, &qword_267A795B0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB550, &unk_267A795A0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.section.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB560, &qword_267A795B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A795C0);
}

uint64_t Common.App.$section.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB568, &qword_267A795C8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB560, &qword_267A795B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.state.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB570, &unk_267A795D0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78D50);
}

uint64_t Common.App.$state.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB578, &qword_267A795E0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB570, &unk_267A795D0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.App.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.App.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.App.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t sub_2677ED8EC()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 60);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.App.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t sub_2677EDB8C()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 64);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.App.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t sub_2677EDE2C()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 68);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.App.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.App.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.App(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_2677EE0CC()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 72);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.App.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.App(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.$contains.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB580, &qword_267A795E8);

  return sub_267A419A4();
}

uint64_t Common.AppEntity.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.type.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB590, &qword_267A795F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79600);
}

uint64_t Common.AppEntity.$type.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB598, &qword_267A79608);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB590, &qword_267A795F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppEntity.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AppEntity.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AppEntity.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AppEntity.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AppEntity.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5A0, &unk_267A79610);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CE8);
}

uint64_t Common.AppEntity.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5A8, &qword_267A79620);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5A0, &unk_267A79610);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntity.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AppEntity.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntity(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppEntityType.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AppEntityType.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AppEntityType.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AppEntityType.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AppEntityType.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB590, &qword_267A795F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79600);
}

uint64_t Common.AppEntityType.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB598, &qword_267A79608);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB590, &qword_267A795F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppEntityType.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AppEntityType.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppEntityType(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppGenre.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AppGenre.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AppGenre.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AppGenre.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AppGenre.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB550, &unk_267A795A0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78D58);
}

uint64_t Common.AppGenre.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB558, &qword_267A795B0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB550, &unk_267A795A0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppGenre.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AppGenre.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppGenre(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.ageRating.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);

  return sub_267A41984();
}

uint64_t Common.AppListing.$ageRating.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4D0, &unk_267A79500);

  return sub_267A419A4();
}

uint64_t Common.AppListing.app.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppListing.$app.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_2677F1C0C()
{
  v0 = OUTLINED_FUNCTION_14_2();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_1864();
  return v4;
}

uint64_t sub_2677F1C7C()
{
  v0 = OUTLINED_FUNCTION_15_3();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_100_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  return sub_267A41994();
}

uint64_t Common.AppListing.$attributes.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5B8, &qword_267A79630);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5B0, &qword_267A79628);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.$genres.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5C8, &qword_267A79640);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5C0, &qword_267A79638);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.$keywords.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5C8, &qword_267A79640);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5C0, &qword_267A79638);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.price.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5D0, &qword_267A79648);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79650);
}

uint64_t Common.AppListing.$price.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5D8, &qword_267A79658);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5D0, &qword_267A79648);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppListing.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AppListing.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AppListing.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AppListing.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AppListing.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB530, &qword_267A79578);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79580);
}

uint64_t Common.AppListing.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB538, &qword_267A79588);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB530, &qword_267A79578);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppListing.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppListing(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AppListing.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppListing(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.$name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);

  return sub_267A419A4();
}

uint64_t Common.AppSection.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppSection.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AppSection.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AppSection.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AppSection.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AppSection.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB560, &qword_267A795B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A795C0);
}

uint64_t Common.AppSection.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB568, &qword_267A795C8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB560, &qword_267A795B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppSection.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppSection(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AppSection.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppSection(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5E0, &qword_267A79660);

  return sub_267A41984();
}

uint64_t Common.AppState.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5E0, &qword_267A79660);

  return sub_267A419A4();
}

uint64_t Common.AppState.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AppState.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AppState.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AppState.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AppState.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AppState.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB570, &unk_267A795D0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78D50);
}

uint64_t Common.AppState.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB578, &qword_267A795E0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB570, &unk_267A795D0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AppState.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AppState(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AppState.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AppState(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.collaborationMode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5F0, &unk_267A79670);

  return sub_267A41984();
}

uint64_t Common.Attachment.$collaborationMode.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5F0, &unk_267A79670);

  return sub_267A419A4();
}

uint64_t Common.Attachment.sharedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Attachment.$sharedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.sharedAppEntity.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5A0, &unk_267A79610);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CE8);
}

uint64_t Common.Attachment.$sharedAppEntity.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5A8, &qword_267A79620);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5A0, &unk_267A79610);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.type.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB600, &qword_267A79688);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79690);
}

uint64_t Common.Attachment.$type.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB608, &qword_267A79698);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB600, &qword_267A79688);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Attachment.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Attachment.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Attachment.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Attachment.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.Attachment.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB610, &unk_267A796A0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CE0);
}

uint64_t Common.Attachment.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB618, &qword_267A796B0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB610, &unk_267A796A0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Attachment.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Attachment(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.Attachment.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Attachment(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB620, &qword_267A796B8);

  return sub_267A41984();
}

uint64_t Common.AttachmentType.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB620, &qword_267A796B8);

  return sub_267A419A4();
}

uint64_t sub_2677F7024()
{
  v0 = OUTLINED_FUNCTION_87_0();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v4;
}

uint64_t sub_2677F70AC()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v2 = *(v1(v0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Common.AttachmentType.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.AttachmentType.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.AttachmentType.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.AttachmentType.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.AttachmentType.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.AttachmentType.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB600, &qword_267A79688);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79690);
}

uint64_t Common.AttachmentType.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB608, &qword_267A79698);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB600, &qword_267A79688);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.AttachmentType.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.AttachmentType.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.AttachmentType(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CalendarEra.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CalendarEra.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CalendarEra.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CalendarEra.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CalendarEra.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB630, &qword_267A796C8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A796D0);
}

uint64_t Common.CalendarEra.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB638, &qword_267A796D8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB630, &qword_267A796C8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarEra.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CalendarEra.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarEra(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CalendarSystem.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CalendarSystem.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CalendarSystem.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CalendarSystem.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CalendarSystem.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB640, &unk_267A796E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CD8);
}

uint64_t Common.CalendarSystem.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB648, &qword_267A796F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB640, &unk_267A796E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CalendarSystem.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CalendarSystem.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CalendarSystem(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_2677FA3D0()
{
  v0 = OUTLINED_FUNCTION_14_2();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_1864();
  return v4;
}

uint64_t sub_2677FA460()
{
  v0 = OUTLINED_FUNCTION_15_3();
  v2 = *(v1(v0) + 20);
  v3 = OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_100_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  return sub_267A41994();
}

uint64_t Common.Car.$associatedUserEntities.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FC0, &qword_267A42430);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB8, &unk_267A79710);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.$attributes.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB668, &qword_267A79728);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB660, &qword_267A79720);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.deviceCategory.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB670, &unk_267A79730);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78C98);
}

uint64_t Common.Car.$deviceCategory.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB678, &qword_267A79740);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB670, &unk_267A79730);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.$model.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_2677FABCC()
{
  v0 = OUTLINED_FUNCTION_87_0();
  v2 = *(v1(v0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v4;
}

uint64_t sub_2677FAC34()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v2 = *(v1(v0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Common.Car.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.$productCategories.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB688, &qword_267A79750);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB680, &qword_267A79748);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.properties.getter()
{
  v0 = *(type metadata accessor for Common.Car(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB690, &qword_267A79758);
  OUTLINED_FUNCTION_2866();
  return v2;
}

uint64_t Common.Car.properties.setter()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v1 = *(type metadata accessor for Common.Car(v0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB690, &qword_267A79758);
  OUTLINED_FUNCTION_100_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_267A41994();
}

uint64_t Common.Car.$properties.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB698, &qword_267A79760);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB690, &qword_267A79758);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.types.getter()
{
  v0 = *(type metadata accessor for Common.Car(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6A0, &qword_267A79768);
  OUTLINED_FUNCTION_2866();
  return v2;
}

uint64_t Common.Car.types.setter()
{
  v0 = OUTLINED_FUNCTION_102_0();
  v1 = *(type metadata accessor for Common.Car(v0) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6A0, &qword_267A79768);
  OUTLINED_FUNCTION_100_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_267A41994();
}

uint64_t Common.Car.$types.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6A8, &qword_267A79770);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6A0, &qword_267A79768);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Car.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Car.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Car.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Car.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.Car.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6B0, &qword_267A79778);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79780);
}

uint64_t Common.Car.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6B8, &qword_267A79788);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6B0, &qword_267A79778);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Car.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Car(0) + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_2677FC2AC()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 76);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Car.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Car(0) + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CarProfile.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CarProfile.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CarProfile.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CarProfile.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CarProfile.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6C0, &unk_267A79790);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CD0);
}

uint64_t Common.CarProfile.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6C8, &qword_267A797A0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6C0, &unk_267A79790);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarProfile.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CarProfile.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarProfile(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.associatedSetting.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6D0, &qword_267A797A8);

  return sub_267A41984();
}

uint64_t Common.CarSetting.$associatedSetting.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6D0, &qword_267A797A8);

  return sub_267A419A4();
}

uint64_t Common.CarSetting.device.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6B0, &qword_267A79778);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79780);
}

uint64_t Common.CarSetting.$device.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6B8, &qword_267A79788);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6B0, &qword_267A79778);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_2677FD84C()
{
  v0 = OUTLINED_FUNCTION_87_0();
  v2 = *(v1(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_1849();
  return v4;
}

uint64_t sub_2677FD8B4()
{
  v0 = OUTLINED_FUNCTION_99_0();
  v2 = *(v1(v0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  return OUTLINED_FUNCTION_80_0();
}

uint64_t Common.CarSetting.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.value.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6E0, &unk_267A797C0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78C30);
}

uint64_t Common.CarSetting.$value.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6E8, &qword_267A797D0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6E0, &unk_267A797C0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CarSetting.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CarSetting.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CarSetting.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CarSetting.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CarSetting.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6F0, &qword_267A797D8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A797E0);
}

uint64_t Common.CarSetting.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6F8, &qword_267A797E8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB6F0, &qword_267A797D8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CarSetting.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CarSetting.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CarSetting(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB700, &qword_267A797F0);

  return sub_267A41984();
}

uint64_t Common.CollaborationMode.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB700, &qword_267A797F0);

  return sub_267A419A4();
}

uint64_t Common.CollaborationMode.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CollaborationMode.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CollaborationMode.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CollaborationMode.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CollaborationMode.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CollaborationMode.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5F0, &unk_267A79670);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78D48);
}

uint64_t Common.CollaborationMode.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5F8, &qword_267A79680);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5F0, &unk_267A79670);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CollaborationMode.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CollaborationMode.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CollaborationMode(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Color.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Color.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Color.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Color.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.Color.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB710, &unk_267A79800);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CC8);
}

uint64_t Common.Color.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB718, &qword_267A79810);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB710, &unk_267A79800);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Color.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Color(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.Color.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Color(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB720, &qword_267A79818);

  return sub_267A41984();
}

uint64_t Common.CommunicationTrigger.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB720, &qword_267A79818);

  return sub_267A419A4();
}

uint64_t Common.CommunicationTrigger.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CommunicationTrigger.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CommunicationTrigger.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CommunicationTrigger.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CommunicationTrigger.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CommunicationTrigger.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB730, &qword_267A79828);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79830);
}

uint64_t Common.CommunicationTrigger.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB738, &qword_267A79838);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB730, &qword_267A79828);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CommunicationTrigger.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CommunicationTrigger.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CommunicationTrigger(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.$value.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.ContactAddress.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.ContactAddress.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.ContactAddress.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.ContactAddress.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.ContactAddress.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A79550);
}

uint64_t Common.ContactAddress.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB518, &unk_267A8F130);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB510, &unk_267A8F120);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.ContactAddress.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.ContactAddress.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.ContactAddress(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Currency.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Currency.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Currency.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Currency.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.Currency.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB740, &unk_267A79840);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CC0);
}

uint64_t Common.Currency.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB748, &qword_267A79850);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB740, &unk_267A79840);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Currency.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Currency(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.Currency.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Currency(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB750, &qword_267A79858);

  return sub_267A41984();
}

uint64_t Common.CurrencyAmount.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB750, &qword_267A79858);

  return sub_267A419A4();
}

uint64_t Common.CurrencyAmount.amount.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4C0, &qword_267A794E8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A794F0);
}

uint64_t Common.CurrencyAmount.$amount.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4C8, &qword_267A794F8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4C0, &qword_267A794E8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.$attributes.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB768, &qword_267A79870);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB760, &qword_267A79868);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.currency.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB740, &unk_267A79840);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CC0);
}

uint64_t Common.CurrencyAmount.$currency.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB748, &qword_267A79850);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB740, &unk_267A79840);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.CurrencyAmount.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.CurrencyAmount.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.CurrencyAmount.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.CurrencyAmount.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.CurrencyAmount.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5D0, &qword_267A79648);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79650);
}

uint64_t Common.CurrencyAmount.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5D8, &qword_267A79658);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB5D0, &qword_267A79648);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.CurrencyAmount.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.CurrencyAmount.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.CurrencyAmount(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB770, &qword_267A79878);

  return sub_267A41984();
}

uint64_t Common.Date.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB770, &qword_267A79878);

  return sub_267A419A4();
}

uint64_t Common.Date.calendarEra.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB630, &qword_267A796C8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A796D0);
}

uint64_t Common.Date.$calendarEra.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB638, &qword_267A796D8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB630, &qword_267A796C8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.calendarSystem.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB640, &unk_267A796E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CD8);
}

uint64_t Common.Date.$calendarSystem.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB648, &qword_267A796F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB640, &unk_267A796E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t sub_267806068()
{
  v0 = OUTLINED_FUNCTION_14_2();
  v2 = *(v1(v0) + 28);
  OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_1864();
  return v4;
}

uint64_t sub_2678060D8()
{
  v0 = OUTLINED_FUNCTION_15_3();
  v2 = *(v1(v0) + 28);
  v3 = OUTLINED_FUNCTION_1848();
  OUTLINED_FUNCTION_100_0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  return sub_267A41994();
}

uint64_t Common.Date.$dateType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB788, &qword_267A79890);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB780, &qword_267A79888);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.dayOfMonth.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB790, &qword_267A79898);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A798A0);
}

uint64_t Common.Date.$dayOfMonth.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB798, &qword_267A798A8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB790, &qword_267A79898);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.dayOfWeek.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7A0, &unk_267A798B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78CA8);
}

uint64_t Common.Date.$dayOfWeek.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7A8, &qword_267A798C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7A0, &unk_267A798B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.monthOfYear.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7B0, &qword_267A798C8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A798D0);
}

uint64_t Common.Date.$monthOfYear.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7B8, &qword_267A798D8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7B0, &qword_267A798C8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.occurringIn.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7C0, &unk_267A798E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78C40);
}

uint64_t Common.Date.$occurringIn.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7C8, &qword_267A798F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7C0, &unk_267A798E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.partOfRecurringDateTime.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7D0, &qword_267A798F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79900);
}

uint64_t Common.Date.$partOfRecurringDateTime.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7D8, &qword_267A79908);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7D0, &qword_267A798F8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.weekOfYear.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB790, &qword_267A79898);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A798A0);
}

uint64_t Common.Date.$weekOfYear.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB798, &qword_267A798A8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB790, &qword_267A79898);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.year.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB790, &qword_267A79898);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A798A0);
}

uint64_t Common.Date.$year.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB798, &qword_267A798A8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB790, &qword_267A79898);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.Date.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.Date.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.Date.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.Date.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t sub_267807EB8()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 80);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Date.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F0D0);
}

uint64_t sub_267808158()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 84);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Date.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E8, &qword_267A79920);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.Date.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.Date(0) + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t sub_2678083F8()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = *(v2(v1) + 88);
  v4 = OUTLINED_FUNCTION_83_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_84_0();
  return v0();
}

uint64_t Common.Date.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.Date(0) + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7F0, &qword_267A79928);

  return sub_267A41984();
}

uint64_t Common.DateTime.$definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7F0, &qword_267A79928);

  return sub_267A419A4();
}

uint64_t Common.DateTime.date.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F0D0);
}

uint64_t Common.DateTime.$date.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E8, &qword_267A79920);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7E0, &unk_267A79910);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.direction.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB800, &qword_267A79938);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79940);
}

uint64_t Common.DateTime.$direction.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB808, &qword_267A79948);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB800, &qword_267A79938);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.$name.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB508, &unk_267A79540);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB500, &qword_267A79538);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.occurringIn.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7C0, &unk_267A798E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78C40);
}

uint64_t Common.DateTime.$occurringIn.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7C8, &qword_267A798F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB7C0, &unk_267A798E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.offsetReference.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A794C0);
}

uint64_t Common.DateTime.$offsetReference.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A8, &qword_267A794C8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.offsetValue.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB810, &unk_267A79950);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A78C38);
}

uint64_t Common.DateTime.$offsetValue.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB818, &qword_267A79960);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB810, &unk_267A79950);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.time.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB820, &qword_267A79968);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A79970);
}

uint64_t Common.DateTime.$time.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB828, &qword_267A79978);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB820, &qword_267A79968);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F140);
}

uint64_t Common.DateTime.$usoAssociatedApp.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F50, &unk_267A42390);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F48, &unk_267A42380);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423A0);
}

uint64_t Common.DateTime.$usoListPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F60, &unk_267A8F160);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F58, &unk_267A8F150);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F170);
}

uint64_t Common.DateTime.$usoQuantifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F70, &unk_267A423C0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F68, &unk_267A423B0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoReferenceType.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A423D0);
}

uint64_t Common.DateTime.$usoReferenceType.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F80, &unk_267A8F190);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F78, &unk_267A8F180);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1A0);
}

uint64_t Common.DateTime.$usoSearchQualifier.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F90, &qword_267A423F0);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4F88, &unk_267A423E0);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &qword_267A794C0);
}

uint64_t Common.DateTime.$usoSameAs.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A8, &qword_267A794C8);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801DB4A0, &qword_267A794B8);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}

uint64_t Common.DateTime.usoSpatialPosition.setter()
{
  v0 = OUTLINED_FUNCTION_32_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2_0(v5, v10);
  v6 = *(type metadata accessor for Common.DateTime(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A41994();
  v7 = OUTLINED_FUNCTION_10_0();
  return sub_2678A9230(v7, v8, &unk_267A8F1D0);
}

uint64_t Common.DateTime.$usoSpatialPosition.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FB0, &unk_267A42420);
  OUTLINED_FUNCTION_1_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_0_1(v3, v10);
  v5(v4);
  v6 = *(type metadata accessor for Common.DateTime(0) + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801D4FA8, &unk_267A42410);
  OUTLINED_FUNCTION_12_0();
  sub_267A419B4();
  v7 = OUTLINED_FUNCTION_6_0();
  return v8(v7);
}