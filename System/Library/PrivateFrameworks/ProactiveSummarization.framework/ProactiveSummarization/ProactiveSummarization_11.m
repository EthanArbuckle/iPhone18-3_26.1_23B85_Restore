uint64_t sub_231D914FC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_56_6(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

uint64_t sub_231D915A4()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v9 = sub_231E106A0();
  v0[8] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[9] = v10;
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_55();
  v13 = sub_231E106E0();
  v0[11] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[12] = v14;
  v16 = *(v15 + 64);
  v0[13] = OUTLINED_FUNCTION_55();
  v17 = sub_231E10A30();
  v0[14] = v17;
  OUTLINED_FUNCTION_6(v17);
  v0[15] = v18;
  v20 = *(v19 + 64);
  v0[16] = OUTLINED_FUNCTION_55();
  v21 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_231D91714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = v16[3];
  v18 = *(v17 + 16);
  v86 = v18;
  if (v18)
  {
    v19 = v16[15];
    v20 = *(v19 + 16);
    v19 += 16;
    v87 = v20;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = MEMORY[0x277D84F90];
    v23 = (v19 - 8);
    a10 = v16[9];
    a11 = *(v19 + 56);
    v24 = (a10 + 32);
    do
    {
      v25 = v16[16];
      v26 = v16[14];
      v27 = v16[7];
      v28 = v16[8];
      v29 = OUTLINED_FUNCTION_140_0();
      v87(v29);
      sub_231E108F0();
      (*v23)(v25, v26);
      OUTLINED_FUNCTION_8_17(v27, 1, v28);
      if (v30)
      {
        sub_231CC154C(v16[7], &qword_27DD74510, &qword_231E1E2D0);
      }

      else
      {
        v31 = *v24;
        (*v24)(v16[10], v16[7], v16[8]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_210();
          v40 = OUTLINED_FUNCTION_0_1();
          v22 = sub_231D9F7F4(v40, v41, v42, v22, &qword_27DD74E30, &qword_231E1CB80, v43, v44);
        }

        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        if (v34 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_2_12(v33);
          OUTLINED_FUNCTION_248_0();
          v22 = sub_231D9F7F4(v45, v46, v47, v48, &qword_27DD74E30, &qword_231E1CB80, v49, v50);
        }

        v35 = v16[10];
        v36 = v16[8];
        *(v22 + 16) = v34 + 1;
        v37 = *(a10 + 80);
        OUTLINED_FUNCTION_79();
        v31(v22 + v38 + *(v39 + 72) * v34);
      }

      v21 += a11;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v16[17] = v22;
  v51 = v16[13];
  v52 = v16[5];
  v53 = v16[6];
  sub_231E10B40();
  sub_231D91FB8();

  v54 = v16[6];
  v55 = v16[4];
  if (*(v22 + 16) == v86)
  {
    v56 = v55[9];
    __swift_project_boxed_opaque_existential_0(v55 + 5, v55[8]);
    sub_231DDAFC4();
    OUTLINED_FUNCTION_7_15();
    v16[18] = v57;
    v58 = *(v56 + 40);
    v88 = v56 + 40;
    OUTLINED_FUNCTION_34_2();
    v89 = v59 + *v59;
    v61 = *(v60 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v16[19] = v62;
    *v62 = v63;
    OUTLINED_FUNCTION_379(v62);
    OUTLINED_FUNCTION_94_5();
    OUTLINED_FUNCTION_37();
  }

  else
  {
    v74 = v16[3];

    v75 = v55[9];
    __swift_project_boxed_opaque_existential_0(v55 + 5, v55[8]);

    v76 = sub_231D11910();
    v16[21] = sub_231D922EC(v76, v74);
    sub_231DDAFC4();
    OUTLINED_FUNCTION_7_15();
    v16[22] = v77;
    v78 = *(v75 + 24);
    v88 = v75 + 24;
    OUTLINED_FUNCTION_34_2();
    v89 = v79 + *v79;
    v81 = *(v80 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    v16[23] = v82;
    *v82 = v83;
    OUTLINED_FUNCTION_379(v82);
    OUTLINED_FUNCTION_37();
  }

  return v72(v64, v65, v66, v67, v68, v69, v70, v71, v86, a10, a11, v88, v89, a14, a15, a16);
}

uint64_t sub_231D91B84()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *(v0 + 152);
  *v4 = *v2;
  *(v3 + 160) = v1;

  OUTLINED_FUNCTION_223();
  v7 = *(v6 + 144);
  v8 = *(v0 + 136);

  OUTLINED_FUNCTION_137_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D91CCC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_14_0();

  return v4();
}

uint64_t sub_231D91D68()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[21];
  v8 = *v1;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v10 + 192) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D91EA0()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 160);
  v2 = OUTLINED_FUNCTION_336();
  v3(v2);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_97_3();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_231D91F2C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 192);
  v2 = OUTLINED_FUNCTION_336();
  v3(v2);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_97_3();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_231D91FB8()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_231E10E30();
  v8 = OUTLINED_FUNCTION_24(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_450();
  if (!v4)
  {
    goto LABEL_7;
  }

  v13 = OUTLINED_FUNCTION_54_0();
  sub_231DAA834(v13, v14);
  v16 = v15;
  type metadata accessor for AssetManager();
  sub_231D46970();
  v18 = v17;
  LOBYTE(v16) = sub_231D936FC(v16, v17);

  if ((v16 & 1) != 0 || (sub_231D46C6C(), v20 = v19, v21 = OUTLINED_FUNCTION_54_0(), v23 = sub_231D24924(v21, v22, v20), , v23))
  {
    sub_231CB4EEC();
    v24 = OUTLINED_FUNCTION_396();
    v25(v24);

    v26 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    if (os_log_type_enabled(v26, v6))
    {
      v27 = OUTLINED_FUNCTION_9_1();
      v28 = OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_386(v28);
      *v27 = 136315138;
      v29 = sub_231DDB1E8();
      OUTLINED_FUNCTION_343(v29, v30);
      OUTLINED_FUNCTION_335();
      *(v27 + 4) = v2;
      _os_log_impl(&dword_231CAE000, v26, v6, "%s Using topic summary style", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_14();
    }

    (*(v10 + 8))(v0, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
    OUTLINED_FUNCTION_65_4();
    v31 = sub_231E106E0();
    OUTLINED_FUNCTION_7_4(v31);
    v33 = *(v32 + 72);
    *(OUTLINED_FUNCTION_366() + 16) = xmmword_231E138E0;
    sub_231E106B0();
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
    OUTLINED_FUNCTION_65_4();
    v34 = sub_231E106E0();
    OUTLINED_FUNCTION_7_4(v34);
    v36 = *(v35 + 72);
    *(OUTLINED_FUNCTION_366() + 16) = xmmword_231E138E0;
    sub_231E106C0();
  }

  OUTLINED_FUNCTION_2_25();
  sub_231CB4810(v37, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750E0, &qword_231E1E2A0);
  OUTLINED_FUNCTION_1_24();
  sub_231DA21B0(v39, &qword_27DD750E0, &qword_231E1E2A0);
  sub_231E11CD0();
  OUTLINED_FUNCTION_113();
}

size_t sub_231D922EC(unint64_t a1, uint64_t a2)
{
  v4 = sub_231E10A30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  v10 = *(a2 + 16);
  v33 = a1;
  if (v10 >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = v10;
  }

  v41 = MEMORY[0x277D84F90];
  sub_231D9FE04(0, v11, 0);
  v12 = v41;
  v13 = *(a2 + 16);
  if (!v13)
  {

    return v12;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v32 = a2;
  v38 = v16;
  v39 = v17;
  v18 = a2 + v17;
  v19 = *(v15 + 56);
  v34 = (v15 + 24);
  v35 = (v15 + 16);
  v20 = v33;
  v36 = v15;
  do
  {
    v21 = v9;
    result = v38(v9, v18, v4);
    v22 = *(v12 + 16);
    if (v22 >= v20)
    {
      if (v14 >= v22)
      {
        __break(1u);
        goto LABEL_30;
      }

      v9 = v21;
      (*v34)(v12 + v39 + v19 * v14, v21, v4);
      if ((v14 + 1) < v20)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v37 = v14;
      v23 = v4;
      v24 = v39;
      v41 = v12;
      v25 = *(v12 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_231D9FE04(v25 > 1, v22 + 1, 1);
        v20 = v33;
        v12 = v41;
      }

      *(v12 + 16) = v22 + 1;
      v26 = v12 + v24 + v22 * v19;
      v9 = v21;
      v4 = v23;
      (*v35)(v26, v21, v23);
      v14 = v37;
    }

    v18 += v19;
    --v13;
  }

  while (v13);

  if (!v14)
  {
    return v12;
  }

  v27 = *(v12 + 16);
  v40 = MEMORY[0x277D84F90];
  result = sub_231D9FE04(0, v27, 0);
  if (v27 >= v14)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_32;
    }

    v28 = *(v12 + 16);
    if (v28 >= v14 && v28 >= v27)
    {

      v31 = v39;
      sub_231D9FFEC(v30, v12 + v39, v14, (2 * v27) | 1);
      sub_231D9FFEC(v12, v12 + v31, 0, (2 * v14) | 1);
      return v40;
    }

    goto LABEL_33;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_231D925E0()
{
  OUTLINED_FUNCTION_18();
  v0[33] = v1;
  v0[34] = v2;
  v0[31] = v3;
  v0[32] = v4;
  v0[30] = v5;
  v6 = type metadata accessor for SummarizerResult();
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  v0[35] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D92660()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[32];
  v2 = *(v0[30] + 16);
  sub_231DA3A98(v0[31], v0[35]);
  OUTLINED_FUNCTION_244(xmmword_231E13680);
  sub_231DDBF28();
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_231D92744;
  v4 = v0[34];
  v5 = v0[33];
  OUTLINED_FUNCTION_105_6(v0[35]);

  return sub_231CD7848();
}

uint64_t sub_231D92744()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *(v4 + 280);
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  sub_231CD2C1C(v2 + 16);
  OUTLINED_FUNCTION_3_24();
  sub_231DA1DDC();

  OUTLINED_FUNCTION_14_0();

  return v9();
}

uint64_t sub_231D9284C()
{
  OUTLINED_FUNCTION_18();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_231E10340();
  v0[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_55();
  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D928F4()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  OUTLINED_FUNCTION_458();
  v5 = OUTLINED_FUNCTION_82();
  v6(v5);
  v7 = sub_231CE2244();
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_48();
  v10(v9);
  v11 = v0[3];
  v12 = v0[4];
  if (v7)
  {
    v13 = *(v11 + 24);
    v14 = *(**(v11 + 328) + 80);
    v25 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_231D92B60;
    v17 = OUTLINED_FUNCTION_27_1(v0[2]);

    return v25(v17, v13, v12);
  }

  else
  {
    v19 = *(v11 + 312);
    __swift_project_boxed_opaque_existential_0((v11 + 280), *(v11 + 304));
    v20 = *(OUTLINED_FUNCTION_129() + 24);
    OUTLINED_FUNCTION_34_2();
    v26 = (v21 + *v21);
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v0[9] = v24;
    *v24 = v0;
    v24[1] = sub_231D92C5C;
    OUTLINED_FUNCTION_27_1(v0[2]);
    OUTLINED_FUNCTION_128_2();

    return v26();
  }
}

uint64_t sub_231D92B60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D92C5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D92D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[9] = a8;
  v9[10] = a9;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return OUTLINED_FUNCTION_26_8();
}

uint64_t sub_231D92D80()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  if (sub_231E10180())
  {
    v2 = *(*(v0 + 32) + 24);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_290_0(v3);
    *v4 = v5;
    v4[1] = sub_231D92E5C;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = OUTLINED_FUNCTION_27_1(*(v0 + 40));

    return sub_231DF7BE8(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    **(v0 + 16) = 0;
    OUTLINED_FUNCTION_14_0();

    return v18();
  }
}

uint64_t sub_231D92E5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = *(v3 + 88);
  *v2 = *v0;
  *(v1 + 96) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D92F54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_362(v1, v2, v3);
  *(v0 + 56) = sub_231E10340();
  *(v0 + 64) = swift_projectBox();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D92FC0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_247_0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  sub_231CB4810(&qword_2814CB028, MEMORY[0x277D422B0]);
  OUTLINED_FUNCTION_180_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_179_1();

  return sub_231D2D724(v3, v4, v5, v6);
}

uint64_t sub_231D93088()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  swift_endAccess();
  OUTLINED_FUNCTION_19();

  return v8();
}

void sub_231D93168()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_477();
  v4 = sub_231E10E30();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_450();
  sub_231CB4EEC();
  v10 = OUTLINED_FUNCTION_396();
  v11(v10);

  v12 = sub_231E10E10();
  v13 = sub_231E11AF0();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_9_1();
    v19 = OUTLINED_FUNCTION_17_1();
    *v2 = 136446210;
    v14 = sub_231DDB1E8();
    sub_231CB5000(v14, v15, &v19);
    OUTLINED_FUNCTION_87_0();
    *(v2 + 4) = v3;
    OUTLINED_FUNCTION_498(&dword_231CAE000, v16, v17, "%{public}s Captioning timed out");
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  (*(v7 + 8))(v1, v4);
  v18 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_captioningResult;
  OUTLINED_FUNCTION_4_12();
  *(v0 + v18) = 2;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D932D4()
{
  OUTLINED_FUNCTION_18();
  v0[91] = v1;
  v0[90] = v2;
  v0[89] = v3;
  OUTLINED_FUNCTION_391(v4, v5, v6, v7, v8);
  v9 = sub_231E10340();
  v0[92] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[93] = v10;
  v12 = *(v11 + 64);
  v0[94] = OUTLINED_FUNCTION_55();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D93380()
{
  OUTLINED_FUNCTION_486();
  OUTLINED_FUNCTION_57_0();
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v4 = 0;
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  OUTLINED_FUNCTION_55_6((v0 + 552));
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A28(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v14 = 0;
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A90(v15, v16, v17, v18, 2, v19, v20, v21, v22);
  v23 = sub_231DDBF28();
  OUTLINED_FUNCTION_176_1();
  sub_231E100A0();
  swift_endAccess();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v24 = OUTLINED_FUNCTION_243_0();
  OUTLINED_FUNCTION_374(v24, v25, v26, v23);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v27 = *(v2 + 16);
  v28 = OUTLINED_FUNCTION_10_5();
  v29(v28);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 760) = v30;
  *v30 = v31;
  v30[1] = sub_231D934F8;
  v32 = *(v0 + 752);
  v33 = *(v0 + 728);
  v34 = *(v0 + 720);
  v35 = *(v0 + 712);
  v36 = *(v0 + 704);
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_368();

  return sub_231CD3B44(v37, v38, v39, v40, v41, v42);
}

uint64_t sub_231D934F8()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[95];
  v6 = v4[94];
  v7 = v4[93];
  v8 = v4[92];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  sub_231CC4F5C(v2 + 16);
  v11 = OUTLINED_FUNCTION_43_4();
  v12(v11);

  OUTLINED_FUNCTION_14_0();

  return v13();
}

uint64_t sub_231D93634()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_253_0();
  sub_231E119F0();
  v6 = OUTLINED_FUNCTION_91_1();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  OUTLINED_FUNCTION_299_0();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  v10 = OUTLINED_FUNCTION_71_5();
  sub_231CC3BE0(v10, v11, v0, v12, v9);
}

BOOL sub_231D936FC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *(a2 + 40);
  sub_231D2D2D4();
  v4 = sub_231E11550();
  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v11 = *(*(a2 + 48) + v6);
    sub_231D2D328();
    v9 = sub_231E115D0();
    v4 = v6 + 1;
  }

  while ((v9 & 1) == 0);
  return v8;
}

uint64_t sub_231D937E4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_461(v1, v2, v3, v4, v5);
  v6 = sub_231E10340();
  v0[10] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[11] = v7;
  v9 = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D93884()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_109_5();
  v8(v7);
  v9 = *(v4 + 224);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_446(v10);
  *v11 = v12;
  v11[1] = sub_231D93964;
  v13 = v0[12];
  v14 = v0[9];
  OUTLINED_FUNCTION_27_1(v0[7]);
  OUTLINED_FUNCTION_97_3();

  return sub_231DC5A08(v15, v16, v17, v18, v19);
}

uint64_t sub_231D93964()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[13];
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  *(v12 + 128) = v13;

  v14 = OUTLINED_FUNCTION_30_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D93AA0()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6].n128_u64[0];
  v2 = v0[2].n128_u64[1];
  OUTLINED_FUNCTION_502(v0[8].n128_u8[0], v0[7]);
  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D93B04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_354(v1, v2, v3, v4);
  v5 = sub_231E10340();
  v0[25] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[26] = v6;
  v8 = *(v7 + 64);
  v0[27] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D93BA4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = *(v0[22] + 80);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[28] = v9;
  *v9 = v10;
  v9[1] = sub_231D93C78;
  v11 = v0[27];
  v12 = v0[24];
  OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_97_3();

  return sub_231CE8498();
}

uint64_t sub_231D93C78()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1[28];
  v3 = v1[27];
  v4 = v1[26];
  v5 = v1[25];
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_30_3();
  v9(v8);
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D93DB0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_178(*(v0 + 168));

  OUTLINED_FUNCTION_14_0();

  return v2();
}

uint64_t sub_231D93E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v9[124] = a9;
  v9[123] = v10;
  v9[122] = v11;
  v9[121] = v12;
  v9[120] = v13;
  OUTLINED_FUNCTION_76_4(v14, v15, v16, v17);
  v18 = sub_231E10340();
  v9[125] = v18;
  OUTLINED_FUNCTION_6(v18);
  v9[126] = v19;
  v21 = *(v20 + 64);
  v9[127] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v22, v23, v24);
}

uint64_t sub_231D93EC0()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  OUTLINED_FUNCTION_90_5();
  v4.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_78_3(v5, v4);
  OUTLINED_FUNCTION_383();
  OUTLINED_FUNCTION_419(v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_242_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_88_6();
  sub_231E100A0();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v12 = OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_374(v13, v14, v15, v12);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v16 = *(v2 + 16);
  v17 = OUTLINED_FUNCTION_10_5();
  v18(v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[128] = v19;
  *v19 = v20;
  v19[1] = sub_231D93FEC;
  v21 = v0[127];
  v22 = v0[124];
  v23 = v0[123];
  v24 = v0[122];
  v25 = v0[121];
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_495();

  return sub_231CD3B44(v26, v27, v28, v29, v30, v31);
}

uint64_t sub_231D93FEC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[128];
  v6 = v4[127];
  v7 = v4[126];
  v8 = v4[125];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  sub_231CC4F5C(v2 + 16);
  v11 = OUTLINED_FUNCTION_43_4();
  v12(v11);

  OUTLINED_FUNCTION_14_0();

  return v13();
}

uint64_t sub_231D94128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v9[124] = a9;
  v9[123] = v10;
  v9[122] = v11;
  v9[121] = v12;
  v9[120] = v13;
  OUTLINED_FUNCTION_76_4(v14, v15, v16, v17);
  v18 = sub_231E10340();
  v9[125] = v18;
  OUTLINED_FUNCTION_6(v18);
  v9[126] = v19;
  v21 = *(v20 + 64);
  v9[127] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v22, v23, v24);
}

uint64_t sub_231D941D4()
{
  OUTLINED_FUNCTION_47_0();
  v1 = v0[127];
  v2 = v0[126];
  v3 = v0[125];
  OUTLINED_FUNCTION_90_5();
  sub_231CFEB04();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v4 = 0;
  v5.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_106_6(v6, v5);
  OUTLINED_FUNCTION_383();
  OUTLINED_FUNCTION_216_0();
  sub_231CD2A28(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_242_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_88_6();
  sub_231E100A0();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v16 = OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_374(v17, v18, v19, v16);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v20 = *(v2 + 16);
  v21 = OUTLINED_FUNCTION_10_5();
  v22(v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[128] = v23;
  *v23 = v24;
  v23[1] = sub_231DA48A0;
  v25 = v0[127];
  v26 = v0[124];
  v27 = v0[123];
  v28 = v0[122];
  v29 = v0[121];
  OUTLINED_FUNCTION_79_4();
  OUTLINED_FUNCTION_495();

  return sub_231CD3B44(v30, v31, v32, v33, v34, v35);
}

uint64_t sub_231D94320()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_102_4(v1, v2, v3, v4);
  v5 = sub_231E10340();
  v0[9] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[10] = v6;
  v8 = *(v7 + 64);
  v0[11] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D943C0()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_109_5();
  v9 = v8(v7);
  nullsub_1(v9);
  v10 = *(v5 + 216);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[12] = v11;
  *v11 = v12;
  v11[1] = sub_231D9449C;
  v13 = v0[11];
  v14 = v0[8];
  OUTLINED_FUNCTION_97_3();

  return sub_231D70A1C(v15, v16, v17);
}

uint64_t sub_231D9449C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[12];
  v5 = v3[11];
  v6 = v3[10];
  v7 = v3[9];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v12 + 104) = v10;
  *(v12 + 112) = v11;
  *(v12 + 120) = v13;

  v14 = OUTLINED_FUNCTION_30_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D945D8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_502(*(v0 + 120), *(v0 + 104));
  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D9463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_18();
  *(v11 + 1008) = a11;
  *(v11 + 1000) = a10;
  *(v11 + 984) = a9;
  *(v11 + 976) = v12;
  *(v11 + 968) = v13;
  *(v11 + 960) = v14;
  *(v11 + 665) = v15;
  OUTLINED_FUNCTION_76_4(v16, v17, v18, v19);
  v20 = sub_231E10340();
  *(v11 + 1016) = v20;
  OUTLINED_FUNCTION_6(v20);
  *(v11 + 1024) = v21;
  v23 = *(v22 + 64);
  *(v11 + 1032) = OUTLINED_FUNCTION_55();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_149_1(v24, v25, v26);
}

uint64_t sub_231D946F8()
{
  OUTLINED_FUNCTION_59_1();
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[127];
  OUTLINED_FUNCTION_265_0();
  v5.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_78_3(v6, v5);
  v7 = OUTLINED_FUNCTION_250_0();
  sub_231CC3500(v7, v8, v1);
  v9 = OUTLINED_FUNCTION_250_0();
  sub_231CD2A28(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_242_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_88_6();
  sub_231E100A0();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v18 = OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_374(v19, v20, v21, v18);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v22 = *(v3 + 16);
  v23 = OUTLINED_FUNCTION_10_5();
  v24(v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[130] = v25;
  *v25 = v26;
  v25[1] = sub_231D9485C;
  v27 = v0[129];
  v28 = v0[126];
  v29 = v0[125];
  v30 = v0[124];
  v31 = v0[123];
  v32 = OUTLINED_FUNCTION_101_2();

  return sub_231CD3B44(v32, v33, v34, v35, v36, v37);
}

uint64_t sub_231D9485C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[130];
  v6 = v4[129];
  v7 = v4[128];
  v8 = v4[127];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  sub_231CC4F5C(v2 + 16);
  v11 = OUTLINED_FUNCTION_43_4();
  v12(v11);

  OUTLINED_FUNCTION_14_0();

  return v13();
}

uint64_t sub_231D94998()
{
  OUTLINED_FUNCTION_18();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v5 = sub_231E106E0();
  v0[15] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[16] = v6;
  v8 = *(v7 + 64);
  v0[17] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10340();
  v0[18] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[19] = v10;
  v12 = *(v11 + 64);
  v0[20] = OUTLINED_FUNCTION_55();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231D94A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_484();
  OUTLINED_FUNCTION_51_0();
  v21 = *(v20 + 152);
  v22 = *(v20 + 160);
  v23 = *(v20 + 144);
  v58 = *(v20 + 136);
  v24 = *(v20 + 120);
  v25 = *(v20 + 128);
  v27 = *(v20 + 104);
  v26 = *(v20 + 112);
  sub_231DA0900(*(v20 + 96) + 40, v20 + 16);
  v28 = *(v20 + 48);
  v61 = *(v20 + 40);
  __swift_project_boxed_opaque_existential_0((v20 + 16), v61);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  (*(v21 + 16))(v22, v27, v23);
  v60 = sub_231DDAFC4();
  *(v20 + 168) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
  v30 = *(v25 + 72);
  v31 = *(v25 + 80);
  v32 = OUTLINED_FUNCTION_313();
  *(v32 + 16) = xmmword_231E138E0;
  sub_231E106C0();
  *(v20 + 80) = v32;
  OUTLINED_FUNCTION_2_25();
  sub_231CB4810(v33, v34);
  v35 = OUTLINED_FUNCTION_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_1_24();
  sub_231DA21B0(v37, &qword_27DD750E0, &qword_231E1E2A0);
  sub_231E11CD0();
  *(v20 + 208) = 0u;
  *(v20 + 192) = 0u;
  *(v20 + 224) = 1;
  v38 = *(v28 + 48);
  OUTLINED_FUNCTION_34_2();
  v59 = v39 + *v39;
  v41 = *(v40 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v20 + 176) = v42;
  *v42 = v43;
  v42[1] = sub_231D94D0C;
  v44 = *(v20 + 160);
  v45 = *(v20 + 136);
  v46 = *(v20 + 88);
  OUTLINED_FUNCTION_37();

  return v55(v47, v48, v49, v50, v51, v52, v53, v54, a9, v28 + 48, v59, v60, v61, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_231D94D0C()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[20];
  v8 = v4[19];
  v9 = v4[18];
  v10 = v4[17];
  v11 = v4[16];
  v12 = v4[15];
  v13 = *v1;
  OUTLINED_FUNCTION_4();
  *v14 = v13;
  *(v15 + 184) = v0;

  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_80();
  v18(v17);
  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_33();
  v21(v20);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_232_0();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_231D94EC8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[20];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D94F38()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[20];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_19();
  v4 = v0[23];

  return v3();
}

uint64_t sub_231D94FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18();
  *(v10 + 392) = a10;
  *(v10 + 376) = a9;
  *(v10 + 360) = v11;
  *(v10 + 368) = v12;
  *(v10 + 344) = v13;
  *(v10 + 352) = v14;
  *(v10 + 328) = v15;
  *(v10 + 336) = v16;
  *(v10 + 320) = v17;
  v18 = sub_231E10340();
  *(v10 + 400) = v18;
  OUTLINED_FUNCTION_6(v18);
  *(v10 + 408) = v19;
  v21 = *(v20 + 64);
  *(v10 + 416) = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_149_1(v22, v23, v24);
}

uint64_t sub_231D95064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_47_0();
  v11 = *(v9 + 408);
  v10 = *(v9 + 416);
  v12 = *(v9 + 400);
  v13 = *(v9 + 360);
  v14 = *(v9 + 344);
  v15 = *(*(v9 + 320) + 16);
  memcpy((v9 + 16), *(v9 + 336), 0x80uLL);
  sub_231DA1F60(v9 + 16, v9 + 144);
  sub_231DDBF28();
  OUTLINED_FUNCTION_176_1();
  sub_231E100A0();
  swift_endAccess();
  sub_231D147C8();
  *(v9 + 424) = v16;

  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v17 = *(v11 + 16);
  v18 = OUTLINED_FUNCTION_10_5();
  v19(v18);
  v20 = swift_task_alloc();
  *(v9 + 432) = v20;
  *v20 = v9;
  v20[1] = sub_231D951B8;
  v21 = *(v9 + 416);
  v22 = *(v9 + 384);
  v23 = *(v9 + 368);
  v24 = *(v9 + 376);
  v25 = *(v9 + 352);
  v36 = *(v9 + 392);
  OUTLINED_FUNCTION_105_6(*(v9 + 328));
  OUTLINED_FUNCTION_495();

  return sub_231CD7FC4(v26, v27, v28, v29, v30, v31, v32, v33, a9);
}

uint64_t sub_231D951B8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[54];
  v6 = v4[53];
  v7 = v4[52];
  v8 = v4[51];
  v9 = v4[50];
  v10 = *v0;
  OUTLINED_FUNCTION_4();
  *v11 = v10;

  sub_231CD2C1C(v2 + 16);
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_33();
  v14(v13);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_97_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_231D95314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18();
  *(v11 + 280) = a10;
  *(v11 + 288) = v10;
  *(v11 + 264) = v12;
  *(v11 + 272) = a9;
  *(v11 + 248) = v13;
  *(v11 + 256) = v14;
  *(v11 + 689) = v15;
  *(v11 + 688) = v16;
  *(v11 + 232) = v17;
  *(v11 + 240) = v18;
  *(v11 + 224) = v19;
  v20 = sub_231E0FDD0();
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  *(v11 + 296) = OUTLINED_FUNCTION_55();
  v23 = sub_231E10390();
  *(v11 + 304) = v23;
  OUTLINED_FUNCTION_6(v23);
  *(v11 + 312) = v24;
  v26 = *(v25 + 64);
  *(v11 + 320) = OUTLINED_FUNCTION_69();
  *(v11 + 328) = swift_task_alloc();
  v27 = sub_231E0FE20();
  *(v11 + 336) = v27;
  OUTLINED_FUNCTION_6(v27);
  *(v11 + 344) = v28;
  v30 = *(v29 + 64);
  *(v11 + 352) = OUTLINED_FUNCTION_55();
  v31 = sub_231E10E30();
  *(v11 + 360) = v31;
  OUTLINED_FUNCTION_6(v31);
  *(v11 + 368) = v32;
  v34 = *(v33 + 64);
  *(v11 + 376) = OUTLINED_FUNCTION_69();
  *(v11 + 384) = swift_task_alloc();
  *(v11 + 392) = swift_task_alloc();
  v35 = sub_231E0F5E0();
  *(v11 + 400) = v35;
  OUTLINED_FUNCTION_6(v35);
  *(v11 + 408) = v36;
  v38 = *(v37 + 64);
  *(v11 + 416) = OUTLINED_FUNCTION_55();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74470, &qword_231E17120);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  *(v11 + 424) = OUTLINED_FUNCTION_69();
  *(v11 + 432) = swift_task_alloc();
  *(v11 + 440) = swift_task_alloc();
  *(v11 + 448) = swift_task_alloc();
  *(v11 + 456) = swift_task_alloc();
  *(v11 + 464) = swift_task_alloc();
  v42 = type metadata accessor for SummarizerResult();
  *(v11 + 472) = v42;
  OUTLINED_FUNCTION_47(v42);
  v44 = *(v43 + 64);
  *(v11 + 480) = OUTLINED_FUNCTION_69();
  *(v11 + 488) = swift_task_alloc();
  *(v11 + 496) = swift_task_alloc();
  v45 = sub_231E107F0();
  *(v11 + 504) = v45;
  OUTLINED_FUNCTION_6(v45);
  *(v11 + 512) = v46;
  v48 = *(v47 + 64);
  *(v11 + 520) = OUTLINED_FUNCTION_55();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  OUTLINED_FUNCTION_47(v49);
  v51 = *(v50 + 64);
  *(v11 + 528) = OUTLINED_FUNCTION_55();
  v52 = sub_231E10210();
  *(v11 + 536) = v52;
  OUTLINED_FUNCTION_6(v52);
  *(v11 + 544) = v53;
  v55 = *(v54 + 64);
  *(v11 + 552) = OUTLINED_FUNCTION_69();
  *(v11 + 560) = swift_task_alloc();
  v56 = sub_231E10340();
  *(v11 + 568) = v56;
  OUTLINED_FUNCTION_6(v56);
  *(v11 + 576) = v57;
  v59 = *(v58 + 64);
  *(v11 + 584) = OUTLINED_FUNCTION_69();
  *(v11 + 592) = swift_task_alloc();
  *(v11 + 600) = swift_task_alloc();
  *(v11 + 608) = swift_task_alloc();
  v60 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v60, v61, v62);
}

uint64_t sub_231D956D4()
{
  OUTLINED_FUNCTION_166();
  v1 = v0 + 35;
  v2 = *(v0[29] + 16);
  v3 = v0[35] + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_depth;
  OUTLINED_FUNCTION_51();
  *v3 = v2;
  *(v3 + 8) = 0;
  if (v2)
  {
    v4 = v0[72];
    v5 = v0[29];
    v66 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_422();
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v8 = *(v6 + 64);
    OUTLINED_FUNCTION_79();
    v10 = v5 + v9;
    v63 = *(v6 + 56);
    v64 = v11;
    v62 = (v6 - 8);
    v12 = v10;
    v60 = v2;
    do
    {
      v13 = v0[76];
      v14 = v0[71];
      v15 = OUTLINED_FUNCTION_181();
      v16 = v6;
      v64(v15);
      sub_231E102D0();
      v17 = sub_231E116F0();

      v18 = *v62;
      v19 = OUTLINED_FUNCTION_301_0();
      v61 = v20;
      v20(v19);
      v22 = *(v66 + 16);
      v21 = *(v66 + 24);
      OUTLINED_FUNCTION_456();
      if (v24)
      {
        OUTLINED_FUNCTION_2_12(v23);
        OUTLINED_FUNCTION_291();
        sub_231D1C82C(v25, v26, v27);
      }

      *(v66 + 16) = v14;
      *(v66 + 8 * v22 + 32) = v17;
      v12 += v63;
      --v2;
      v6 = v16;
    }

    while (v2);
    v28 = v0[68];
    v29 = v0[35];
    OUTLINED_FUNCTION_4_12();
    sub_231D90C48(v66);
    v67 = MEMORY[0x277D84F90];
    v30 = v60;
    OUTLINED_FUNCTION_473();
    sub_231D1C82C(v31, v32, v33);
    v34 = v67;
    v35 = (v28 + 8);
    do
    {
      v36 = v0[75];
      v37 = v0[71];
      v38 = v0[70];
      v39 = v0[67];
      v40 = OUTLINED_FUNCTION_140_0();
      v64(v40);
      sub_231E10220();
      v41 = sub_231E10200();
      v43 = v42;
      v44 = *v35;
      v45 = OUTLINED_FUNCTION_203_0();
      v46(v45);
      if (v43)
      {
        sub_231E116F0();
        OUTLINED_FUNCTION_264_0();
      }

      else
      {
        v41 = 0;
      }

      v61(v0[75], v0[71]);
      v48 = *(v67 + 16);
      v47 = *(v67 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_2_12(v47);
        OUTLINED_FUNCTION_389();
        sub_231D1C82C(v49, v50, v51);
      }

      *(v67 + 16) = v48 + 1;
      *(v67 + 8 * v48 + 32) = v41;
      v10 += v63;
      --v30;
    }

    while (v30);
    v1 = v0 + 35;
  }

  else
  {
    v52 = *v1;
    OUTLINED_FUNCTION_4_12();
    v34 = MEMORY[0x277D84F90];
    sub_231D90C48(MEMORY[0x277D84F90]);
  }

  v53 = v0[29];
  v65 = *v1;
  OUTLINED_FUNCTION_4_12();
  sub_231D90C48(v34);
  v54 = swift_task_alloc();
  v0[77] = v54;
  *(v54 + 16) = v53;
  *(v54 + 24) = v65;
  v55 = swift_task_alloc();
  v0[78] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75058, &qword_231E1DAB0);
  OUTLINED_FUNCTION_136_1();
  *v55 = v56;
  v55[1] = sub_231D95A78;
  v57 = v0[35];
  OUTLINED_FUNCTION_95_1();

  return sub_231DDB61C();
}

void sub_231D95A78()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 624);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v3 + 616);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

void sub_231D95B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_370();
  OUTLINED_FUNCTION_454();
  v29 = *(v28 + 208);
  *(v28 + 632) = v29;
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  v202 = v28;
  v178 = v29;
  v191 = v30;
  if (v30)
  {
    v32 = *(v28 + 576);
    v33 = *(v28 + 512);
    v204 = MEMORY[0x277D84F90];
    v34 = OUTLINED_FUNCTION_252_0();
    sub_231D1C82C(v34, v35, v36);
    v37 = *(v32 + 80);
    OUTLINED_FUNCTION_79();
    v183 = v29 + v39;
    v185 = v32;
    v40 = v204;
    v176 = v33;
    v196 = (v33 + 8);
    v180 = (v32 + 8);
    while (v38 < *(v29 + 16))
    {
      v194 = v38;
      (*(v185 + 16))(*(v28 + 584), v183 + *(v185 + 72) * v38, *(v28 + 568));
      v41 = sub_231E100A0();
      v42 = *(v41 + 16);
      if (v42)
      {
        v188 = v40;
        v43 = OUTLINED_FUNCTION_298_0();
        sub_231D1C82C(v43, v42, 0);
        v44 = v31;
        v45 = *(v176 + 80);
        OUTLINED_FUNCTION_79();
        v47 = v41 + v46;
        v49 = *(v48 + 72);
        v50 = *(v48 + 16);
        do
        {
          v50(*(v28 + 520), v47, *(v28 + 504));
          sub_231E107A0();
          if (v51)
          {
            sub_231E116F0();
            OUTLINED_FUNCTION_117_0();
          }

          else
          {
            v40 = 0;
          }

          (*v196)(*(v28 + 520), *(v28 + 504));
          a25 = v44;
          v53 = v44[2];
          v52 = v44[3];
          if (v53 >= v52 >> 1)
          {
            v54 = OUTLINED_FUNCTION_107_6(v52);
            sub_231D1C82C(v54, v53 + 1, 1);
          }

          v44[2] = v53 + 1;
          v44[v53 + 4] = v40;
          v47 += v49;
          --v42;
          v28 = v202;
        }

        while (v42);

        v29 = v178;
        v40 = v188;
        v30 = v191;
        v31 = MEMORY[0x277D84F90];
      }

      else
      {

        v44 = v31;
      }

      v55 = v44[2];
      if (v55)
      {
        v56 = 0;
        v57 = v44 + 4;
        while (1)
        {
          v58 = *v57++;
          v59 = __OFADD__(v56, v58);
          v56 += v58;
          if (v59)
          {
            break;
          }

          if (!--v55)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        break;
      }

      v56 = 0;
LABEL_20:
      v60 = *(v28 + 584);
      v61 = *(v28 + 568);

      v62 = *v180;
      v63 = OUTLINED_FUNCTION_48();
      v64(v63);
      a24 = v40;
      v66 = *(v40 + 16);
      v65 = *(v40 + 24);
      if (v66 >= v65 >> 1)
      {
        OUTLINED_FUNCTION_2_12(v65);
        OUTLINED_FUNCTION_393();
        sub_231D1C82C(v67, v68, v69);
      }

      v38 = v194 + 1;
      *(v40 + 16) = v66 + 1;
      *(v40 + 8 * v66 + 32) = v56;
      if (v194 + 1 == v30)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_25:
    v70 = *(v28 + 568);
    v71 = *(v28 + 528);
    v72 = *(v28 + 280);
    OUTLINED_FUNCTION_4_12();
    sub_231D90C48(v40);
    sub_231D914FC(v29, MEMORY[0x277D422B0], v71);
    v73 = OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_8_17(v73, v74, v70);
    if (v75)
    {
      v76 = *(v28 + 528);
      v77 = *(v28 + 384);
      v78 = *(v28 + 360);
      v79 = *(v28 + 368);
      v80 = *(v28 + 280);

      sub_231CC154C(v76, &qword_27DD74580, &qword_231E17110);
      sub_231CB4EEC();
      v81 = OUTLINED_FUNCTION_360();
      v82(v81);

      v83 = sub_231E10E10();
      sub_231E11AD0();

      v84 = OUTLINED_FUNCTION_91_0();
      v85 = *(v28 + 384);
      v86 = *(v28 + 360);
      v87 = *(v28 + 368);
      if (v84)
      {
        v88 = *(v28 + 280);
        OUTLINED_FUNCTION_9_1();
        v89 = OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_292_0(v89);
        *v29 = 136446210;
        v90 = sub_231DDB1E8();
        OUTLINED_FUNCTION_344(v90, v91);
        OUTLINED_FUNCTION_87_0();
        *(v29 + 4) = v31;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
        OUTLINED_FUNCTION_2_6();
        v28 = v202;
        OUTLINED_FUNCTION_30();
      }

      v97 = *(v87 + 8);
      v98 = OUTLINED_FUNCTION_33();
      v99(v98);
      v101 = *(v28 + 320);
      v100 = *(v28 + 328);
      v102 = *(v28 + 304);
      v103 = *(v28 + 312);
      v104 = *(v28 + 296);
      v105 = *(v28 + 224);
      objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_231D9EFAC(0xD000000000000012, 0x8000000231E36560, -1, 0);
      sub_231E10380();
      sub_231E0FDC0();
      v106 = *(v103 + 16);
      OUTLINED_FUNCTION_115_5();
      v107();
      OUTLINED_FUNCTION_54_0();
      sub_231E0FF50();
      v108 = *(v103 + 8);
      v109 = OUTLINED_FUNCTION_33();
      v110(v109);
      *(v105 + *(type metadata accessor for MailThreadSummarizationResponse() + 20)) = 16;
      OUTLINED_FUNCTION_33_12();
      v174 = v111;
      v175 = v112;
      v177 = v113;
      v179 = *(v28 + 448);
      v181 = *(v28 + 440);
      v182 = *(v28 + 432);
      v184 = *(v28 + 424);
      v186 = *(v28 + 416);
      v187 = *(v28 + 392);
      v189 = *(v28 + 384);
      v192 = *(v28 + 376);
      v195 = *(v28 + 352);
      v197 = *(v28 + 328);
      v200 = *(v28 + 320);
      v203 = *(v28 + 296);

      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_276_0();

      v115(v114, v115, v116, v117, v118, v119, v120, v121, v174, v175, v177, v179, v181, v182, v184, v186, v187, v189, v192, v195, v197, v200, v203, a24, a25, a26, a27, a28);
    }

    else
    {
      (*(*(v28 + 576) + 32))(*(v28 + 592), *(v28 + 528), *(v28 + 568));
      v122 = MEMORY[0x277D84F90];
      if (v30)
      {
        v123 = *(v28 + 576);
        v205 = MEMORY[0x277D84F90];
        v124 = OUTLINED_FUNCTION_252_0();
        sub_231CC686C(v124, v125, v126);
        v122 = v205;
        v127 = *(v123 + 16);
        v123 += 16;
        v128 = *(v123 + 64);
        OUTLINED_FUNCTION_79();
        v130 = v29 + v129;
        v198 = *(v123 + 56);
        v201 = v131;
        v132 = (v123 - 8);
        do
        {
          v133 = *(v28 + 608);
          v134 = *(v28 + 568);
          v135 = OUTLINED_FUNCTION_18_0();
          v201(v135);
          v136 = sub_231E10000();
          v138 = v137;
          v139 = *v132;
          v140 = OUTLINED_FUNCTION_48();
          v141(v140);
          v143 = *(v205 + 16);
          v142 = *(v205 + 24);
          if (v143 >= v142 >> 1)
          {
            OUTLINED_FUNCTION_107_6(v142);
            OUTLINED_FUNCTION_291();
            sub_231CC686C(v145, v146, v147);
          }

          *(v205 + 16) = v143 + 1;
          v144 = v205 + 16 * v143;
          *(v144 + 32) = v136;
          *(v144 + 40) = v138;
          v130 += v198;
          v75 = v191-- == 1;
          v28 = v202;
        }

        while (!v75);
        v29 = v178;
      }

      *(v28 + 640) = v122;
      v148 = sub_231CC8454();
      v149 = *(v28 + 592);
      if (v148)
      {
        v150 = *(v28 + 552);
        v151 = *(v28 + 544);
        v152 = *(v28 + 536);

        sub_231E10220();
        sub_231E10200();
        OUTLINED_FUNCTION_260_0();
        *(v28 + 648) = v153;
        v154 = *(v151 + 8);
        v155 = OUTLINED_FUNCTION_25();
        v156(v155);
        swift_task_alloc();
        OUTLINED_FUNCTION_58_0();
        *(v28 + 656) = v157;
        *v157 = v158;
        v157[1] = sub_231D96454;
        v159 = *(v28 + 488);
        v160 = *(v28 + 280);
        OUTLINED_FUNCTION_132_1();
        OUTLINED_FUNCTION_276_0();

        sub_231D8D948();
      }

      else
      {
        v199 = *(v28 + 288);
        v163 = *(v28 + 264);
        v162 = *(v28 + 272);
        v165 = *(v28 + 248);
        v164 = *(v28 + 256);
        v193 = *(v28 + 689);
        v190 = *(v28 + 688);
        v166 = *(v28 + 240);
        v167 = swift_task_alloc();
        *(v28 + 664) = v167;
        *(v167 + 16) = v29;
        *(v167 + 24) = v199;
        *(v167 + 32) = v149;
        *(v167 + 40) = v166;
        *(v167 + 48) = v190;
        *(v167 + 49) = v193;
        *(v167 + 52) = v165;
        *(v167 + 60) = v164;
        *(v167 + 68) = v163;
        *(v167 + 76) = v162;
        swift_task_alloc();
        OUTLINED_FUNCTION_58_0();
        *(v28 + 672) = v168;
        *v168 = v169;
        v168[1] = sub_231D96AAC;
        v171 = *(v28 + 472);
        v170 = *(v28 + 480);
        v172 = *(v28 + 280);
        OUTLINED_FUNCTION_133_2();
        OUTLINED_FUNCTION_276_0();

        sub_231DDB61C();
      }
    }
  }
}

uint64_t sub_231D96454()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 656);
  *(v1 + 648);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D96AAC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 672);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[85] = v0;

  if (!v0)
  {
    v9 = v3[83];
    v10 = v3[79];
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D97108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_370();
  OUTLINED_FUNCTION_454();
  v29 = v28[85];
  v30 = v28[83];
  v31 = v28[80];
  v32 = v28[79];
  v34 = v28[46];
  v33 = v28[47];
  v35 = v28[45];
  v36 = v28[35];

  v37 = sub_231CB4EEC();
  (*(v34 + 16))(v33, v37, v35);

  v38 = v29;
  v39 = sub_231E10E10();
  v40 = sub_231E11AD0();

  if (OUTLINED_FUNCTION_177())
  {
    v41 = v28[85];
    v42 = v28[80];
    v86 = v28[47];
    v82 = v28[46];
    v84 = v28[45];
    v43 = v28[35];
    v44 = OUTLINED_FUNCTION_67();
    v45 = OUTLINED_FUNCTION_53();
    v46 = OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_292_0(v46);
    *v44 = 136446722;
    v47 = sub_231DDB1E8();
    OUTLINED_FUNCTION_344(v47, v48);
    OUTLINED_FUNCTION_335();
    *(v44 + 4) = v31;
    *(v44 + 12) = 2112;
    v49 = v41;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v44 + 14) = v50;
    *v45 = v50;
    *(v44 + 22) = 2082;
    MEMORY[0x23837CD80](v42, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_3_12();

    v51 = OUTLINED_FUNCTION_140_0();
    v54 = sub_231CB5000(v51, v52, v53);

    *(v44 + 24) = v54;
    _os_log_impl(&dword_231CAE000, v39, v40, "%{public}s Mail summarization failed: %@; id: %{public}s", v44, 0x20u);
    sub_231CC154C(v45, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_91_2();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_223_0();

    (*(v82 + 8))(v86, v84);
  }

  else
  {
    v55 = v28[80];
    v57 = v28[46];
    v56 = v28[47];
    v58 = v28[45];

    v59 = *(v57 + 8);
    v60 = OUTLINED_FUNCTION_140_0();
    v61(v60);
  }

  v62 = v28[85];
  v63 = v28[72];
  v85 = v28[71];
  v87 = v28[74];
  v64 = v28[37];
  v65 = v28[35];
  v81 = v28[41];
  v83 = v28[28];
  sub_231DDB4C0(v62);
  v66 = sub_231E0F6E0();
  swift_getErrorValue();
  v68 = v28[14];
  v67 = v28[15];
  v69 = v28[16];
  sub_231E121C0();
  v70 = [v66 domain];
  sub_231E11620();
  OUTLINED_FUNCTION_64_1();

  [v66 code];
  OUTLINED_FUNCTION_258();
  sub_231E0FDC0();
  v71 = v66;
  sub_231E10380();
  sub_231E0FF50();

  *(v83 + *(type metadata accessor for MailThreadSummarizationResponse() + 20)) = 13;
  (*(v63 + 8))(v87, v85);
  OUTLINED_FUNCTION_33_12();
  OUTLINED_FUNCTION_70_6();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_276_0();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v81, v83, v85, v87, a25, a26, a27, a28);
}

uint64_t sub_231D97518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D97530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v13 = *(v12 + 40);
  v14 = sub_231E10340();
  v15 = swift_task_alloc();
  *(v12 + 48) = v15;
  *(v15 + 16) = *(v12 + 24);
  *(v15 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75058, &qword_231E1DAB0);
  v16 = *(MEMORY[0x277D858E8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v12 + 56) = v17;
  *v17 = v18;
  v17[1] = sub_231D9763C;
  v19 = *(v12 + 16);
  OUTLINED_FUNCTION_134_1();

  return MEMORY[0x282200600](v20, v21, v22, 0, 0, v23, v15, v14, a9, a10, a11, a12);
}

uint64_t sub_231D9763C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D97738()
{
  OUTLINED_FUNCTION_18();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[9] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  v0[14] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10340();
  v0[15] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[16] = v10;
  v0[17] = *(v11 + 64);
  v0[18] = OUTLINED_FUNCTION_69();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  v0[21] = OUTLINED_FUNCTION_69();
  v0[22] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231D97868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 88);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v10 + 128);
    v59 = **(v10 + 80);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = v11 + v14;
    v57 = *(v13 + 72);
    v56 = (v13 + 16);
    v58 = v14;
    v55 = (*(v10 + 136) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v13 + 32);
    v53 = sub_231E119F0();
    do
    {
      v61 = v12;
      v16 = *(v10 + 168);
      v17 = *(v10 + 160);
      v18 = *(v10 + 120);
      v19 = *(v10 + 96);
      v60 = *(v10 + 104);
      __swift_storeEnumTagSinglePayload(*(v10 + 176), 1, 1, v53);
      (*v56)(v17, v15, v18);
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = (v20 + 16);
      *(v20 + 24) = 0;
      (*v54)(v20 + v58, v17, v18);
      *(v20 + v55) = v19;
      *(v20 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;
      OUTLINED_FUNCTION_18_0();
      sub_231DA3AF0();
      LODWORD(v16) = OUTLINED_FUNCTION_314(v16);

      v22 = *(v10 + 168);
      if (v16 == 1)
      {
        v23 = OUTLINED_FUNCTION_181();
        sub_231CC154C(v23, v24, &qword_231E13690);
      }

      else
      {
        sub_231E119E0();
        v25 = *(*(v53 - 8) + 8);
        v26 = OUTLINED_FUNCTION_48();
        v27(v26);
      }

      if (*v21)
      {
        v28 = *(v20 + 24);
        v29 = *v21;
        swift_getObjectType();
        OUTLINED_FUNCTION_264_0();
        swift_unknownObjectRetain();
        v30 = sub_231E11920();
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = swift_allocObject();
      *(v33 + 16) = &unk_231E1E190;
      *(v33 + 24) = v20;

      if (v32 | v30)
      {
        v34 = v10 + 16;
        *(v10 + 16) = 0;
        *(v10 + 24) = 0;
        *(v10 + 32) = v30;
        *(v10 + 40) = v32;
      }

      else
      {
        v34 = 0;
      }

      v35 = *(v10 + 176);
      v36 = *(v10 + 120);
      *(v10 + 48) = 1;
      *(v10 + 56) = v34;
      *(v10 + 64) = v59;
      swift_task_create();

      v37 = OUTLINED_FUNCTION_70();
      sub_231CC154C(v37, v38, &qword_231E13690);
      v15 += v57;
      v12 = v61 - 1;
    }

    while (v61 != 1);
  }

  *(v10 + 184) = MEMORY[0x277D84F90];
  v39 = *(MEMORY[0x277D856A0] + 4);
  v40 = swift_task_alloc();
  *(v10 + 192) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750C0, &unk_231E1E1A0);
  OUTLINED_FUNCTION_180_0();
  *v40 = v41;
  v40[1] = sub_231D97C20;
  v42 = *(v10 + 112);
  v43 = *(v10 + 80);
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822002D0](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}

uint64_t sub_231D97C20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D97D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[14];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v10[15]);
  v13 = v10[23];
  if (EnumTagSinglePayload == 1)
  {
    v15 = v10[21];
    v14 = v10[22];
    v17 = v10[19];
    v16 = v10[20];
    v18 = v10[18];
    v19 = v10[9];
    sub_231CC154C(v11, &qword_27DD74580, &qword_231E17110);
    *v19 = v13;

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_232_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    v30 = v10[18];
    v29 = v10[19];
    v31 = v10[16];
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_134_1();
    v32();
    v33 = *(v31 + 16);
    v34 = OUTLINED_FUNCTION_52_8();
    v35(v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v10[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = *(v37 + 16);
      OUTLINED_FUNCTION_214_0();
      v58 = OUTLINED_FUNCTION_0_1();
      v37 = sub_231D9F7F4(v58, v59, v60, v37, v61, v62, v63, v64);
    }

    v38 = *(v37 + 16);
    if (v38 >= *(v37 + 24) >> 1)
    {
      OUTLINED_FUNCTION_214_0();
      v37 = sub_231D9F7F4(v65, v38 + 1, 1, v37, v66, v67, v68, MEMORY[0x277D422B0]);
    }

    v39 = v10[18];
    v40 = v10[16];
    v41 = *(v40 + 8);
    v40 += 8;
    v41(v10[19], v10[15]);
    *(v37 + 16) = v38 + 1;
    v42 = *(v40 + 72);
    OUTLINED_FUNCTION_79();
    v43 = *(v40 + 64);
    OUTLINED_FUNCTION_115_5();
    v32();
    v10[23] = v37;
    v44 = *(MEMORY[0x277D856A0] + 4);
    v45 = swift_task_alloc();
    v10[24] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750C0, &unk_231E1E1A0);
    OUTLINED_FUNCTION_180_0();
    *v45 = v46;
    v45[1] = sub_231D97C20;
    v47 = v10[14];
    v48 = v10[10];
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_232_0();

    return MEMORY[0x2822002D0](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10);
  }
}

uint64_t sub_231D97F88()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v5 = sub_231E10DB0();
  v0[7] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[8] = v6;
  v8 = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10340();
  v0[10] = v9;
  OUTLINED_FUNCTION_6(v9);
  v0[11] = v10;
  v12 = *(v11 + 64);
  v0[12] = OUTLINED_FUNCTION_69();
  v0[13] = swift_task_alloc();
  v13 = sub_231E10E30();
  v0[14] = v13;
  OUTLINED_FUNCTION_6(v13);
  v0[15] = v14;
  v16 = *(v15 + 64);
  v0[16] = OUTLINED_FUNCTION_55();
  v17 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_231D980D4()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v57 = v0[12];
  v5 = v0[10];
  v6 = v0[4];
  v7 = *(v0[11] + 16);
  v7(v0[3], v6, v5);
  sub_231CB4EEC();
  v8 = *(v2 + 16);
  v9 = OUTLINED_FUNCTION_82();
  v10(v9);
  v7(v4, v6, v5);
  v7(v57, v6, v5);

  v11 = sub_231E10E10();
  v12 = sub_231E11AF0();

  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[11];
  v19 = v0[12];
  v20 = v0[10];
  if (v13)
  {
    v56 = v12;
    v21 = v0[5];
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_222_0();
    *v17 = 136446722;
    v22 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v22, v23, v24, v25, v26, v27);
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_363();
    v28 = *(sub_231E100A0() + 16);

    v29 = *(v18 + 8);
    v29(v16, v20);
    *(v17 + 14) = v28;
    *(v17 + 22) = 2080;
    sub_231E10000();
    OUTLINED_FUNCTION_3_12();
    v30 = OUTLINED_FUNCTION_116_3();
    (v29)(v30);
    v31 = OUTLINED_FUNCTION_140_0();
    v34 = sub_231CB5000(v31, v32, v33);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_231CAE000, v11, v56, "%{public}s Encountered %ld attachments in user-initiated summary path for message: %s", v17, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_11();
  }

  else
  {
    v35 = *(v18 + 8);
    (v35)(v0[13], v0[10]);

    v36 = OUTLINED_FUNCTION_116_3();
    v35(v36);
  }

  (*(v15 + 8))(v14, v17);
  v38 = v0[8];
  v37 = v0[9];
  v40 = v0[6];
  v39 = v0[7];
  v41 = v0[4];
  sub_231DC4ED4();
  v42 = *(v38 + 16);
  v43 = OUTLINED_FUNCTION_82();
  v44(v43);
  v45 = swift_task_alloc();
  v0[17] = v45;
  *(v45 + 16) = v41;
  *(v45 + 24) = v40;
  v46 = swift_task_alloc();
  v0[18] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB8, &qword_231E1E1C0);
  *v46 = v0;
  v46[1] = sub_231D983FC;
  v47 = v0[9];
  OUTLINED_FUNCTION_37();

  return sub_231DC55B4(v48, v49, v50, v51, v52, v53);
}

void sub_231D983FC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[17];
    (*(v3[8] + 8))(v3[9], v3[7]);

    v10 = OUTLINED_FUNCTION_4_18();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_231D98530()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v5 = v0[2];
  v6 = v0[3];
  sub_231E100B0();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_97_3();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_231D985BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D985D4()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_231E100A0();
  v0[6] = v3;
  v0[2] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_231E107F0();
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_115_5();
  sub_231DA21B0(v7, v8, v9);
  OUTLINED_FUNCTION_136_1();
  *v4 = v10;
  v4[1] = sub_231D986E4;
  v11 = v0[5];
  OUTLINED_FUNCTION_106();

  return sub_231D135FC(v12, v13, v14, v15, v16);
}

void sub_231D986E4()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_4();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v12 = v5[5];
    v11 = v5[6];

    v5[8] = v3;
    v13 = OUTLINED_FUNCTION_143_2();

    MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_231D9881C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_474();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v4[1] = sub_231D630D4;

  return sub_231D140EC(v0, v2 + 128);
}

uint64_t sub_231D988C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_18();
  *(v10 + 80) = a10;
  *(v10 + 64) = a9;
  *(v10 + 202) = v11;
  *(v10 + 201) = v12;
  *(v10 + 48) = v13;
  *(v10 + 56) = v14;
  OUTLINED_FUNCTION_103_3(v15, v16, v17, v18);
  v19 = sub_231E0F9A0();
  *(v10 + 88) = v19;
  OUTLINED_FUNCTION_6(v19);
  *(v10 + 96) = v20;
  v22 = *(v21 + 64);
  *(v10 + 104) = OUTLINED_FUNCTION_69();
  *(v10 + 112) = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_149_1(v23, v24, v25);
}

uint64_t sub_231D98C58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[14];
    v12 = v3[15];
    v14 = v3[13];

    OUTLINED_FUNCTION_14_0();

    return v15();
  }
}

uint64_t sub_231D98D88()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  v3[20] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[18];
    v15 = v3 + 13;
    v13 = v3[13];
    v14 = v15[1];

    OUTLINED_FUNCTION_14_0();

    return v16();
  }
}

uint64_t sub_231D98EB8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231D98F30()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231D98FA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_362(v1, v2, v3);
  *(v0 + 56) = sub_231E106A0();
  *(v0 + 64) = swift_projectBox();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D99014()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_247_0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  sub_231CB4810(&qword_2814CB010, MEMORY[0x277D42368]);
  OUTLINED_FUNCTION_180_0();
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_179_1();

  return sub_231D2D724(v3, v4, v5, v6);
}

uint64_t sub_231D990DC()
{
  OUTLINED_FUNCTION_18();
  v0[45] = v1;
  v0[46] = v2;
  v0[43] = v3;
  v0[44] = v4;
  v0[41] = v5;
  v0[42] = v6;
  v7 = sub_231E10E30();
  v0[47] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[48] = v8;
  v10 = *(v9 + 64);
  v0[49] = OUTLINED_FUNCTION_69();
  v0[50] = swift_task_alloc();
  v11 = sub_231E0F950();
  v0[51] = v11;
  OUTLINED_FUNCTION_6(v11);
  v0[52] = v12;
  v14 = *(v13 + 64);
  v0[53] = OUTLINED_FUNCTION_69();
  v0[54] = swift_task_alloc();
  v15 = sub_231E106A0();
  v0[55] = v15;
  OUTLINED_FUNCTION_6(v15);
  v0[56] = v16;
  v18 = *(v17 + 64);
  v0[57] = OUTLINED_FUNCTION_55();
  v19 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_231D99238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_484();
  v65 = v12;
  OUTLINED_FUNCTION_51_0();
  v14 = *(v11 + 448);
  v13 = *(v11 + 456);
  v15 = *(v11 + 440);
  v16 = *(v11 + 336);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  OUTLINED_FUNCTION_458();
  v17 = OUTLINED_FUNCTION_109_5();
  v18(v17);
  LOBYTE(v16) = sub_231D6DA98();
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_48();
  v21(v20);
  v22 = *(v11 + 336);
  if (v16)
  {
    OUTLINED_FUNCTION_125_1();
    *(v11 + 504) = sub_231E10520();
    *(v11 + 512) = v23;
    if (v23)
    {
      OUTLINED_FUNCTION_81_0();
      v24 = *(v11 + 336);
      swift_endAccess();
      OUTLINED_FUNCTION_125_1();
      sub_231E10580();
      *(v11 + 520) = v25;
      if (v25)
      {
        v26 = *(v11 + 424);
        v27 = *(v11 + 360);
        v28 = *(v11 + 336);
        swift_endAccess();
        sub_231D11A38();
        sub_231E0F8F0();
        OUTLINED_FUNCTION_125_1();
        sub_231E10640();
        *(v11 + 528) = v29;
        swift_endAccess();
        sub_231D119A4();
        sub_231DA0900(v27 + 88, v11 + 144);
        v64 = *(v27 + 168);
        OUTLINED_FUNCTION_125_1();
        v30 = sub_231E105F0();
        if (v30)
        {
          v31 = v30;
          swift_endAccess();
          v32 = sub_231E11620();
          v34 = v33;
        }

        else
        {
          swift_endAccess();
          v32 = 0;
          v34 = 0;
        }

        type metadata accessor for SpotlightReader();
        v55 = objc_allocWithZone(MEMORY[0x277CC34A8]);
        OUTLINED_FUNCTION_390();
        swift_bridgeObjectRetain_n();
        v56 = OUTLINED_FUNCTION_70();
        sub_231D9F05C(v56, v57, v32, v34);
        v58 = OUTLINED_FUNCTION_71_5();
        sub_231D5EBAC(v58, v59, v60, 0, v61);
        *(v11 + 536) = sub_231DF7564();
        v62 = swift_task_alloc();
        *(v11 + 544) = v62;
        *v62 = v11;
        v62[1] = sub_231D99968;
        OUTLINED_FUNCTION_27_1(*(v11 + 424));
        OUTLINED_FUNCTION_37();

        return sub_231DED7B8();
      }

      swift_endAccess();

      goto LABEL_12;
    }

LABEL_10:
    swift_endAccess();
LABEL_12:
    OUTLINED_FUNCTION_359();
    **(v11 + 328) = MEMORY[0x277D84F90];

    OUTLINED_FUNCTION_14_0();

    return v54();
  }

  OUTLINED_FUNCTION_125_1();
  *(v11 + 464) = sub_231E10520();
  *(v11 + 472) = v35;
  if (!v35)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_9();
  v36 = *(v11 + 432);
  v37 = *(v11 + 360);
  swift_endAccess();
  sub_231D11A38();
  sub_231E0F8F0();
  sub_231DE8A04(0);
  OUTLINED_FUNCTION_64_1();
  *(v11 + 480) = v38;
  sub_231D119A4();
  v39 = *(v37 + 168);
  v40 = *(v37 + 24);
  v41 = swift_task_alloc();
  *(v11 + 488) = v41;
  *v41 = v11;
  v41[1] = sub_231D9962C;
  v42 = *(v11 + 344);
  v43 = *(v11 + 352);
  OUTLINED_FUNCTION_27_1(*(v11 + 432));
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_37();

  return sub_231DE9D80(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11);
}

uint64_t sub_231D9962C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[61];
  v5 = v3[60];
  v6 = v3[54];
  v7 = v3[52];
  v8 = v3[51];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v12 + 496) = v11;

  v13 = OUTLINED_FUNCTION_43_4();
  v14(v13);
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231D99780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = *(v16 + 496);
  v18 = *(v16 + 472);
  v19 = *(v16 + 400);
  v20 = *(v16 + 376);
  v21 = *(v16 + 384);
  v22 = *(v16 + 368);
  sub_231CB4EEC();
  v23 = OUTLINED_FUNCTION_360();
  v24(v23);
  OUTLINED_FUNCTION_220_0();
  swift_bridgeObjectRetain_n();

  v25 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();

  v26 = OUTLINED_FUNCTION_91_0();
  v27 = *(v16 + 496);
  v28 = *(v16 + 472);
  if (v26)
  {
    a12 = *(v16 + 400);
    v29 = *(v16 + 384);
    a10 = *(v16 + 464);
    a11 = *(v16 + 376);
    v30 = *(v16 + 368);
    OUTLINED_FUNCTION_67();
    a13 = OUTLINED_FUNCTION_222_0();
    *v22 = 136446723;
    v31 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_363();
    v37 = *(v27 + 16);

    *(v22 + 14) = v37;

    v42 = OUTLINED_FUNCTION_425(v38, v39, v40, v41);

    *(v22 + 24) = v42;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_11();

    (*(v29 + 8))(a12, a11);
  }

  else
  {
    v48 = *(v16 + 400);
    v49 = *(v16 + 376);
    v50 = *(v16 + 384);
    OUTLINED_FUNCTION_464();
    swift_bridgeObjectRelease_n();

    v51 = *(v50 + 8);
    v52 = OUTLINED_FUNCTION_140_0();
    v53(v52);
  }

  v54 = *(v16 + 496);
  OUTLINED_FUNCTION_359();
  **(v16 + 328) = v55;

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D99968()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[68];
  v6 = v4[67];
  v7 = v4[66];
  v8 = v4[65];
  v9 = v4[53];
  v10 = v4[52];
  v11 = v4[51];
  v12 = *v0;
  OUTLINED_FUNCTION_4();
  *v13 = v12;
  *(v2 + 552) = v14;

  __swift_destroy_boxed_opaque_existential_0((v2 + 144));
  v15 = *(v10 + 8);
  v16 = OUTLINED_FUNCTION_80();
  v17(v16);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_66_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_231D99B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = *(v16 + 552);
  v18 = *(v16 + 512);
  v20 = *(v16 + 384);
  v19 = *(v16 + 392);
  v22 = *(v16 + 368);
  v21 = *(v16 + 376);
  sub_231CB4EEC();
  v23 = OUTLINED_FUNCTION_360();
  v24(v23);
  OUTLINED_FUNCTION_220_0();
  swift_bridgeObjectRetain_n();

  v25 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_70_0();

  v26 = OUTLINED_FUNCTION_91_0();
  v27 = *(v16 + 552);
  v28 = *(v16 + 512);
  if (v26)
  {
    v29 = *(v16 + 384);
    a12 = *(v16 + 392);
    v30 = *(v16 + 368);
    a10 = *(v16 + 504);
    a11 = *(v16 + 376);
    OUTLINED_FUNCTION_67();
    a13 = OUTLINED_FUNCTION_222_0();
    *v22 = 136446723;
    v31 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_335();
    OUTLINED_FUNCTION_363();
    v37 = *(v27 + 16);

    *(v22 + 14) = v37;

    v42 = OUTLINED_FUNCTION_425(v38, v39, v40, v41);

    *(v22 + 24) = v42;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v43, v44, v45, v46, v47, 0x20u);
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_11();

    (*(v29 + 8))(a12, a11);
  }

  else
  {
    v49 = *(v16 + 384);
    v48 = *(v16 + 392);
    v50 = *(v16 + 376);
    OUTLINED_FUNCTION_464();
    swift_bridgeObjectRelease_n();

    v51 = *(v49 + 8);
    v52 = OUTLINED_FUNCTION_140_0();
    v53(v52);
  }

  v54 = *(v16 + 552);
  OUTLINED_FUNCTION_359();
  **(v16 + 328) = v55;

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231D99CE0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_391(v1, v2, v3, v4, v5);
  v6 = sub_231E106A0();
  v0[89] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[90] = v7;
  v9 = *(v8 + 64);
  v0[91] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D99D80()
{
  OUTLINED_FUNCTION_274_0();
  OUTLINED_FUNCTION_57_0();
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v5 = 0;
  *(v0 + 536) = 0;
  *(v0 + 544) = 1;
  OUTLINED_FUNCTION_55_6((v0 + 552));
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A28(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v15 = 0;
  OUTLINED_FUNCTION_134_2();
  sub_231CD2A90(v16, v17, v18, v19, 2, v20, v21, v22, v23);
  v24 = sub_231DDBF28();
  OUTLINED_FUNCTION_176_1();
  sub_231E104C0();
  swift_endAccess();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v25 = OUTLINED_FUNCTION_243_0();
  OUTLINED_FUNCTION_374(v25, v26, v27, v24);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v28 = *(v2 + 16);
  v29 = OUTLINED_FUNCTION_10_5();
  v30(v29);
  *(v0 + 736) = *v4;
  *(v0 + 744) = v4[1];
  *(v0 + 752) = v4[2];
  *(v0 + 760) = v4[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v31, v32, v33, v34);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 768) = v35;
  *v35 = v36;
  v35[1] = sub_231D99F1C;
  v37 = *(v0 + 728);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_273_0();

  return sub_231CD3E20(v38, v39, v40, v41, v42, v43);
}

uint64_t sub_231D99F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  *v13 = v12;
  v15 = v14[96];
  v16 = v14[95];
  v17 = v14[94];
  v18 = v14[93];
  v19 = v14[92];
  v20 = v14[91];
  v21 = v14[90];
  v22 = v14[89];
  v23 = *v10;
  OUTLINED_FUNCTION_4();
  *v24 = v23;

  v25 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v25, v26, v27, v28);
  sub_231CC4F5C(v12 + 16);
  v29 = OUTLINED_FUNCTION_135_1();
  v30(v29);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_232_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_231D9A0B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_461(v1, v2, v3, v4, v5);
  v6 = sub_231E106A0();
  v0[10] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[11] = v7;
  v9 = *(v8 + 64);
  v0[12] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D9A150()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_109_5();
  v8(v7);
  v9 = *(v4 + 224);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_446(v10);
  *v11 = v12;
  v11[1] = sub_231D9A22C;
  v13 = v0[12];
  v14 = v0[9];
  OUTLINED_FUNCTION_27_1(v0[7]);
  OUTLINED_FUNCTION_97_3();

  return sub_231D6ED64(v15, v16, v17, v18);
}

uint64_t sub_231D9A22C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = v3[13];
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v8 = *v0;
  OUTLINED_FUNCTION_4();
  *v9 = v8;
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  *(v12 + 128) = v13;

  v14 = OUTLINED_FUNCTION_30_3();
  v15(v14);
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D9A368()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_354(v1, v2, v3, v4);
  v5 = sub_231E106A0();
  v0[25] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[26] = v6;
  v8 = *(v7 + 64);
  v0[27] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D9A408()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = *(v0[22] + 80);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_37_0();
  v8(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[28] = v9;
  *v9 = v10;
  v9[1] = sub_231D8C4F4;
  v11 = v0[27];
  v12 = v0[24];
  OUTLINED_FUNCTION_101_2();
  OUTLINED_FUNCTION_97_3();

  return sub_231CEF5B4();
}

uint64_t sub_231D9A4DC()
{
  OUTLINED_FUNCTION_18();
  v0[121] = v1;
  v0[120] = v2;
  OUTLINED_FUNCTION_76_4(v3, v4, v5, v6);
  v7 = sub_231E106A0();
  v0[122] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[123] = v8;
  v10 = *(v9 + 64);
  v0[124] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D9A584()
{
  OUTLINED_FUNCTION_486();
  OUTLINED_FUNCTION_57_0();
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  OUTLINED_FUNCTION_90_5();
  sub_231CFEB04();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v5 = 0;
  v6.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_106_6(v7, v6);
  OUTLINED_FUNCTION_383();
  OUTLINED_FUNCTION_216_0();
  sub_231CD2A28(v8, v9, v10, v11, v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_242_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_88_6();
  sub_231E104C0();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v17 = OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_374(v18, v19, v20, v17);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v21 = *(v2 + 16);
  v22 = OUTLINED_FUNCTION_10_5();
  v23(v22);
  v0[125] = *v4;
  v0[126] = v4[1];
  v0[127] = v4[2];
  v0[128] = v4[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v24, v25, v26, v27);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[129] = v28;
  *v28 = v29;
  v28[1] = sub_231D9A6EC;
  v30 = v0[124];
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_368();

  return sub_231CD3E20(v31, v32, v33, v34, v35, v36);
}

uint64_t sub_231D9A6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  *v13 = v12;
  v15 = v14[129];
  v16 = v14[128];
  v17 = v14[127];
  v18 = v14[126];
  v19 = v14[125];
  v20 = v14[124];
  v21 = v14[123];
  v22 = v14[122];
  v23 = *v10;
  OUTLINED_FUNCTION_4();
  *v24 = v23;

  v25 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v25, v26, v27, v28);
  sub_231CC4F5C(v12 + 16);
  v29 = OUTLINED_FUNCTION_135_1();
  v30(v29);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_232_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_231D9A880()
{
  OUTLINED_FUNCTION_18();
  v0[121] = v1;
  v0[120] = v2;
  OUTLINED_FUNCTION_76_4(v3, v4, v5, v6);
  v7 = sub_231E106A0();
  v0[122] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[123] = v8;
  v10 = *(v9 + 64);
  v0[124] = OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231D9A928()
{
  OUTLINED_FUNCTION_486();
  OUTLINED_FUNCTION_57_0();
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  OUTLINED_FUNCTION_90_5();
  v5.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_78_3(v6, v5);
  OUTLINED_FUNCTION_383();
  OUTLINED_FUNCTION_419(v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_242_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_88_6();
  sub_231E104C0();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v13 = OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_374(v14, v15, v16, v13);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v17 = *(v2 + 16);
  v18 = OUTLINED_FUNCTION_10_5();
  v19(v18);
  v0[125] = *v4;
  v0[126] = v4[1];
  v0[127] = v4[2];
  v0[128] = v4[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v20, v21, v22, v23);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[129] = v24;
  *v24 = v25;
  v24[1] = sub_231DA48B8;
  v26 = v0[124];
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_368();

  return sub_231CD3E20(v27, v28, v29, v30, v31, v32);
}

uint64_t sub_231D9AA70()
{
  OUTLINED_FUNCTION_18();
  v0[19] = v1;
  v0[20] = v2;
  v0[17] = v3;
  v0[18] = v4;
  v0[16] = v5;
  v6 = sub_231E106A0();
  v0[21] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[22] = v7;
  v9 = *(v8 + 64);
  v0[23] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231D9AB1C()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = OUTLINED_FUNCTION_18_0();
  v9(v8);
  sub_231DA0900(v5 + 176, v0 + 64);

  sub_231D553E0(v10, (v0 + 64), (v0 + 16));
  v11 = *(v5 + 216);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 192) = v12;
  *v12 = v13;
  v12[1] = sub_231D9AC20;
  v14 = *(v0 + 184);
  v15 = *(v0 + 160);
  OUTLINED_FUNCTION_106();

  return sub_231D553F0(v16, v17, v18, v19);
}

uint64_t sub_231D9AC20()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[24];
  v6 = v4[23];
  v7 = v4[22];
  v8 = v4[21];
  v9 = *v0;
  OUTLINED_FUNCTION_4();
  *v10 = v9;
  *(v2 + 200) = v11;
  *(v2 + 208) = v12;
  *(v2 + 216) = v13;

  sub_231DA2B70(v2 + 16);
  v14 = OUTLINED_FUNCTION_43_4();
  v15(v14);
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D9AD64()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_502(*(v0 + 216), *(v0 + 200));
  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231D9ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  *(v9 + 984) = a9;
  *(v9 + 976) = v10;
  *(v9 + 968) = v11;
  *(v9 + 960) = v12;
  *(v9 + 665) = v13;
  OUTLINED_FUNCTION_76_4(v14, v15, v16, v17);
  v18 = sub_231E106A0();
  *(v9 + 992) = v18;
  OUTLINED_FUNCTION_6(v18);
  *(v9 + 1000) = v19;
  v21 = *(v20 + 64);
  *(v9 + 1008) = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v22, v23, v24);
}

uint64_t sub_231D9AE74()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v0[126];
  v4 = v0[125];
  v5 = v0[124];
  v6 = v0[123];
  OUTLINED_FUNCTION_265_0();
  v39 = v7;
  v8.n128_f64[0] = OUTLINED_FUNCTION_30_9();
  OUTLINED_FUNCTION_78_3(v9, v8);
  v10 = OUTLINED_FUNCTION_250_0();
  sub_231CC3500(v10, v11, v2);
  v12 = OUTLINED_FUNCTION_250_0();
  sub_231CD2A28(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_242_0();
  OUTLINED_FUNCTION_372();
  OUTLINED_FUNCTION_371();
  sub_231DDBF28();
  OUTLINED_FUNCTION_88_6();
  sub_231E104C0();
  OUTLINED_FUNCTION_376();
  sub_231D147C8();
  OUTLINED_FUNCTION_202_0();

  v21 = OUTLINED_FUNCTION_51_5();
  OUTLINED_FUNCTION_374(v22, v23, v24, v21);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  (*(v4 + 16))(v39, v1, v5);
  v0[127] = *v6;
  v0[128] = v6[1];
  v0[129] = v6[2];
  v0[130] = v6[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v25, v26, v27, v28);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[131] = v29;
  *v29 = v30;
  v29[1] = sub_231D9B000;
  v31 = v0[126];
  v32 = OUTLINED_FUNCTION_31_10();

  return sub_231CD3E20(v32, v33, v34, v35, v36, v37);
}

uint64_t sub_231D9B000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  *v13 = v12;
  v15 = v14[131];
  v16 = v14[130];
  v17 = v14[129];
  v18 = v14[128];
  v19 = v14[127];
  v20 = v14[126];
  v21 = v14[125];
  v22 = v14[124];
  v23 = *v10;
  OUTLINED_FUNCTION_4();
  *v24 = v23;

  v25 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v25, v26, v27, v28);
  sub_231CC4F5C(v12 + 16);
  v29 = OUTLINED_FUNCTION_135_1();
  v30(v29);

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_232_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_231D9B194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_231E106A0();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_231E106A0();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_231D9B25C()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = sub_231E106E0();
  v0[8] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[9] = v6;
  v8 = *(v7 + 64);
  v0[10] = OUTLINED_FUNCTION_69();
  v0[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  v0[12] = OUTLINED_FUNCTION_55();
  v12 = sub_231E106A0();
  v0[13] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[14] = v13;
  v15 = *(v14 + 64);
  v0[15] = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D9B388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_207_0();
  v19 = v18[5];
  if (*(v19 + 16) == 1)
  {
    v20 = v18[13];
    sub_231D914FC(v19, MEMORY[0x277D42368], v18[12]);
    v21 = OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_8_17(v21, v22, v20);
    if (!v23)
    {
      v87 = v18[11];
      v51 = v18[8];
      v50 = v18[9];
      v52 = v18[6];
      v53 = v18[7];
      (*(v18[14] + 32))(v18[15], v18[12], v18[13]);
      v54 = v52[9];
      v91 = v52[8];
      v90 = __swift_project_boxed_opaque_existential_0(v52 + 5, v91);
      v89 = sub_231DDAFC4();
      v18[16] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
      v56 = *(v50 + 72);
      v57 = *(v50 + 80);
      v58 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_506(v58, xmmword_231E138E0);
      v18[3] = v58;
      OUTLINED_FUNCTION_2_25();
      sub_231CB4810(v59, v60);
      v61 = OUTLINED_FUNCTION_181();
      __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_340();
      sub_231DA21B0(v63, v64, v65);
      OUTLINED_FUNCTION_250_0();
      OUTLINED_FUNCTION_428();
      v66 = *(v54 + 32);
      v86 = (v54 + 32);
      OUTLINED_FUNCTION_34_2();
      v88 = v67 + *v67;
      v69 = *(v68 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      v18[17] = v70;
      *v70 = v71;
      v70[1] = sub_231D9B7AC;
      v72 = v18[15];
      v73 = v18[11];
      v74 = v18[4];
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_107_1();

      return v83(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, v86, v88, v89, v90, v91, a16, a17, a18);
    }

    sub_231CC154C(v18[12], &qword_27DD74510, &qword_231E1E2D0);
  }

  v24 = v18[9];
  v25 = v18[10];
  v26 = v18[7];
  v27 = v18[8];
  v28 = v18[6];
  v91 = v28[8];
  v88 = v28[9];
  v90 = __swift_project_boxed_opaque_existential_0(v28 + 5, v91);
  v89 = sub_231DDAFC4();
  v18[19] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
  v30 = *(v24 + 72);
  v31 = *(v24 + 80);
  v32 = OUTLINED_FUNCTION_313();
  *(v32 + 16) = xmmword_231E138E0;
  sub_231E106C0();
  v18[2] = v32;
  OUTLINED_FUNCTION_2_25();
  sub_231CB4810(v33, v34);
  v35 = OUTLINED_FUNCTION_181();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_340();
  sub_231DA21B0(v37, v38, v39);
  OUTLINED_FUNCTION_428();
  v40 = *(v88 + 5);
  a10 = v88 + 40;
  OUTLINED_FUNCTION_34_2();
  v86 = v41 + *v41;
  v43 = *(v42 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v18[20] = v44;
  *v44 = v45;
  v44[1] = sub_231D9B9B0;
  v46 = v18[10];
  v47 = v18[4];
  v48 = v18[5];
  OUTLINED_FUNCTION_441();
  OUTLINED_FUNCTION_107_1();

  return v83(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, v86, v88, v89, v90, v91, a16, a17, a18);
}

uint64_t sub_231D9B7AC()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[11];
  v8 = v4[9];
  v9 = v4[8];
  v10 = *v1;
  OUTLINED_FUNCTION_4();
  *v11 = v10;
  *(v12 + 144) = v0;

  v13 = *(v8 + 8);
  v14 = OUTLINED_FUNCTION_33();
  v15(v14);

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D9B918()
{
  OUTLINED_FUNCTION_29();
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];

  OUTLINED_FUNCTION_14_0();

  return v5();
}

uint64_t sub_231D9B9B0()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = v5[20];
  v7 = v5[19];
  v8 = v5[10];
  v9 = v5[9];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_4();
  *v12 = v11;
  v3[21] = v0;

  v13 = OUTLINED_FUNCTION_54_7();
  v14(v13);

  if (v0)
  {
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_106();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = v3[15];
    v21 = v3[11];
    v20 = v3[12];
    v22 = v3[10];

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_106();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_231D9BB60()
{
  OUTLINED_FUNCTION_29();
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231D9BBFC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[21];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231D9BC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_18();
  v9[82] = a9;
  v9[81] = v10;
  v9[80] = v11;
  v9[79] = v12;
  v9[78] = v13;
  v9[77] = v14;
  v9[76] = v15;
  v9[75] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  v9[83] = OUTLINED_FUNCTION_55();
  v20 = sub_231E106A0();
  v9[84] = v20;
  OUTLINED_FUNCTION_6(v20);
  v9[85] = v21;
  v23 = *(v22 + 64);
  v9[86] = OUTLINED_FUNCTION_69();
  v9[87] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_33_1(v24, v25, v26);
}

uint64_t sub_231D9BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_57_0();
  v10 = v9[87];
  v11 = v9[85];
  v12 = v9[84];
  v13 = v9[81];
  v14 = v9[80];
  v15 = v9[78];
  v16 = v9[77];
  v9[88] = *(v9[75] + 16);
  memcpy(v9 + 2, v16, 0x80uLL);
  sub_231DA1F60((v9 + 2), (v9 + 34));
  sub_231DDBF28();
  OUTLINED_FUNCTION_176_1();
  sub_231E104C0();
  swift_endAccess();
  sub_231D147C8();
  v9[89] = v17;

  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v18 = *(v11 + 16);
  v19 = OUTLINED_FUNCTION_10_5();
  v20(v19);
  v9[90] = *v13;
  v9[91] = v13[1];
  v21 = v13[2];
  v9[92] = v21;
  v22 = v13[3];
  v9[93] = v22;
  v23 = OUTLINED_FUNCTION_33();
  sub_231D586EC(v23, v24, v21, v22);
  v25 = swift_task_alloc();
  v9[94] = v25;
  *v25 = v9;
  v25[1] = sub_231D9BF0C;
  v26 = v9[87];
  v27 = v9[79];
  OUTLINED_FUNCTION_105_6(v9[76]);
  OUTLINED_FUNCTION_368();

  return sub_231CD8F60(v28, v29, v30, v31, v32, v33, v34, v35, a9);
}

uint64_t sub_231D9BF0C()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[94];
  v6 = v4[93];
  v7 = v4[92];
  v8 = v4[91];
  v9 = v4[90];
  v10 = v4[89];
  v11 = v4[87];
  v12 = v4[85];
  v13 = v4[84];
  v14 = *v0;
  OUTLINED_FUNCTION_4();
  *v15 = v14;

  v16 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v16, v17, v18, v19);

  sub_231CD2C1C(v2 + 16);
  v20 = *(v12 + 8);
  *(v2 + 760) = v20;
  *(v2 + 768) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v11, v13);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_231D9C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_50_0();
  v11 = *(v10 + 672);
  v12 = *(v10 + 664);
  sub_231D9B194(*(v10 + 656), v12);
  v13 = OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_8_17(v13, v14, v11);
  if (v19)
  {
    sub_231CC154C(*(v10 + 664), &qword_27DD74510, &qword_231E1E2D0);
  }

  else
  {
    v15 = *(v10 + 640);
    (*(*(v10 + 680) + 32))(*(v10 + 688), *(v10 + 664), *(v10 + 672));
    sub_231E10690();
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_270_0();
    v16 = sub_231E10690();
    v18 = v17;
    swift_endAccess();
    v19 = v9 == v16 && v12 == v18;
    if (v19)
    {
    }

    else
    {
      OUTLINED_FUNCTION_150_1();
      v20 = sub_231E12100();

      if ((v20 & 1) == 0)
      {
        v21 = *(v10 + 648);
        v22 = *(v10 + 624);
        memcpy((v10 + 144), *(v10 + 616), 0x80uLL);
        sub_231DA1F60(v10 + 144, v10 + 400);
        sub_231DDBF28();
        v23 = *v21;
        *(v10 + 776) = *v21;
        v24 = v21[1];
        *(v10 + 784) = v24;
        v25 = v21[2];
        *(v10 + 792) = v25;
        v26 = v21[3];
        *(v10 + 800) = v26;
        OUTLINED_FUNCTION_128_2();
        sub_231D586EC(v27, v28, v29, v26);
        v30 = swift_task_alloc();
        *(v10 + 808) = v30;
        *v30 = v10;
        v30[1] = sub_231D9C330;
        v31 = *(v10 + 704);
        v32 = *(v10 + 688);
        v33 = *(v10 + 632);
        v34 = OUTLINED_FUNCTION_27_1(*(v10 + 608));

        return sub_231CD8F60(v34, v35, v36, 0, v37, v23, v24, v25, a9);
      }
    }

    v39 = OUTLINED_FUNCTION_436();
    v40(v39);
  }

  v41 = *(v10 + 696);
  v42 = *(v10 + 688);
  v43 = *(v10 + 664);

  OUTLINED_FUNCTION_14_0();

  return v44();
}

uint64_t sub_231D9C330()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[101];
  v6 = v4[100];
  v7 = v4[99];
  v8 = v4[98];
  v9 = v4[97];
  v10 = *v0;
  OUTLINED_FUNCTION_4();
  *v11 = v10;

  v12 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v12, v13, v14, v15);
  sub_231CD2C1C(v2 + 144);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_97_3();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_231D9C474()
{
  OUTLINED_FUNCTION_18();
  v1 = OUTLINED_FUNCTION_436();
  v2(v1);
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[83];

  OUTLINED_FUNCTION_14_0();

  return v6();
}

uint64_t sub_231D9C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[99] = a6;
  v6[98] = a5;
  v6[97] = a4;
  v6[96] = a3;
  v6[95] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D9C510()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 792);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(*(v0 + 760) + 16);
  sub_231CFEB04();
  OUTLINED_FUNCTION_22_7();
  swift_allocError();
  *v5 = 0;
  *(v0 + 664) = 0;
  *(v0 + 672) = 1;
  OUTLINED_FUNCTION_55_6((v0 + 680));
  OUTLINED_FUNCTION_453();
  OUTLINED_FUNCTION_216_0();
  sub_231CD2A28(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  sub_231DA1F60(v3, v0 + 288);
  sub_231CD2B00(v3, (v0 + 416));
  sub_231DDBF28();
  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_81();
  sub_231CD2C70(v15, v16, v17, v18, v19, v20);
  *(v0 + 800) = *v1;
  *(v0 + 808) = v1[1];
  *(v0 + 816) = v1[2];
  *(v0 + 824) = v1[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v21, v22, v23, v24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 832) = v25;
  *v25 = v26;
  v25[1] = sub_231D9C650;
  v27 = *(v0 + 784);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_97_3();

  return sub_231CD4364(v28, v29, v30, v31, v32, v33);
}

uint64_t sub_231D9C650()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[104];
  v6 = v4[103];
  v7 = v4[102];
  v8 = v4[101];
  v9 = v4[100];
  v10 = *v0;
  OUTLINED_FUNCTION_4();
  *v11 = v10;

  v12 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v12, v13, v14, v15);
  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_97_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_231D9C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D9C7A8()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[4];
  nullsub_1(v2);
  v3 = *(v1 + 216);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[6] = v4;
  *v4 = v5;
  v4[1] = sub_231D9C858;
  v6 = v0[5];
  v7 = v0[3];

  return sub_231D596CC(v1 + 88, v3, v6);
}

uint64_t sub_231D9C858()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;

  v8 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231D9C944()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 56);
  *(v2 + 16) = v1;
  return OUTLINED_FUNCTION_9_7();
}

uint64_t sub_231D9C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 808) = a9;
  *(v9 + 800) = a8;
  *(v9 + 792) = a7;
  *(v9 + 784) = a6;
  *(v9 + 537) = a5;
  *(v9 + 776) = a4;
  *(v9 + 768) = a3;
  *(v9 + 760) = a2;
  return OUTLINED_FUNCTION_26_8();
}

uint64_t sub_231D9C990()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 537);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  OUTLINED_FUNCTION_39_6();
  v7 = OUTLINED_FUNCTION_54_0();
  sub_231CC3500(v7, v8, v4);
  v9 = OUTLINED_FUNCTION_54_0();
  sub_231CD2A28(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  sub_231DA1F60(v3, v0 + 288);
  sub_231CD2B00(v3, (v0 + 416));
  sub_231DDBF28();
  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_81();
  sub_231CD2C70(v18, v19, v20, v21, v22, v23);
  *(v0 + 816) = *v1;
  *(v0 + 824) = v1[1];
  *(v0 + 832) = v1[2];
  *(v0 + 840) = v1[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v24, v25, v26, v27);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 848) = v28;
  *v28 = v29;
  v28[1] = sub_231D9CABC;
  v30 = *(v0 + 800);
  OUTLINED_FUNCTION_31_10();
  OUTLINED_FUNCTION_66_0();

  return sub_231CD4364(v31, v32, v33, v34, v35, v36);
}

uint64_t sub_231D9CABC()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = v4[106];
  v6 = v4[105];
  v7 = v4[104];
  v8 = v4[103];
  v9 = v4[102];
  v10 = *v0;
  OUTLINED_FUNCTION_4();
  *v11 = v10;

  v12 = OUTLINED_FUNCTION_34_11();
  sub_231DA1BC8(v12, v13, v14, v15);
  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_97_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_231D9CBFC()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v5 = sub_231E106E0();
  v0[7] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[8] = v6;
  v8 = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_55();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231D9CCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = v16[8];
  v52 = v16[9];
  v18 = v16[6];
  v19 = v16[7];
  v20 = v16[4];
  v21 = v20[9];
  v55 = __swift_project_boxed_opaque_existential_0(v20 + 5, v20[8]);
  v54 = sub_231DDAFC4();
  v16[10] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D8, &qword_231E1E298);
  v23 = *(v17 + 72);
  v24 = *(v17 + 80);
  v25 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_506(v25, xmmword_231E138E0);
  v16[2] = v25;
  OUTLINED_FUNCTION_2_25();
  sub_231CB4810(v26, v27);
  v28 = OUTLINED_FUNCTION_181();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_340();
  sub_231DA21B0(v30, v31, v32);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_428();
  v33 = *(v21 + 64);
  OUTLINED_FUNCTION_34_2();
  v53 = v34 + *v34;
  v36 = *(v35 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v16[11] = v37;
  *v37 = v38;
  v37[1] = sub_231D9CE94;
  v39 = v16[9];
  v40 = v16[5];
  v41 = v16[3];
  OUTLINED_FUNCTION_37();

  return v49(v42, v43, v44, v45, v46, v47, v48, v49, a9, v21 + 64, v53, v54, v55, a14, a15, a16);
}

uint64_t sub_231D9CE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_21();
  v13 = v12;
  OUTLINED_FUNCTION_7_0();
  *v14 = v13;
  v16 = v15[11];
  v17 = v15[10];
  v18 = v15[9];
  v19 = v15[8];
  v20 = v15[7];
  v21 = *v11;
  OUTLINED_FUNCTION_4();
  *v22 = v21;
  *(v13 + 96) = v10;

  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_80();
  v25(v24);

  if (v10)
  {
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_66_0();

    return MEMORY[0x2822009F8](v26, v27, v28);
  }

  else
  {
    v30 = *(v13 + 72);

    v31 = *(v21 + 8);
    OUTLINED_FUNCTION_66_0();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_231D9D030()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_231D9D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D9D0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_50_0();
  v10 = v9[8];
  v11 = v9[5];
  v12 = *(v9[2] + 16);
  sub_231DDBF28();
  v13 = *v10;
  v9[9] = *v10;
  v14 = v10[1];
  v9[10] = v14;
  v15 = v10[2];
  v9[11] = v15;
  v9[12] = v10[3];
  OUTLINED_FUNCTION_44_9();
  sub_231D586EC(v16, v17, v18, v19);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_446(v20);
  *v21 = v22;
  v21[1] = sub_231D9D1B0;
  v23 = v9[6];
  v24 = v9[7];
  v25 = v9[4];
  v26 = OUTLINED_FUNCTION_27_1(v9[3]);

  return sub_231CDA090(v26, v27, v28, 0, v29, v13, v14, v15, a9);
}

uint64_t sub_231D9D1B0()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  v7 = *v0;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_37_0();
  sub_231DA1BC8(v9, v10, v4, v3);
  OUTLINED_FUNCTION_14_0();

  return v11();
}

uint64_t sub_231D9D2F8()
{
  OUTLINED_FUNCTION_18();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v0[5] = *v2;
  v4 = sub_231E10E30();
  v0[6] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[7] = v5;
  v7 = *(v6 + 64);
  v0[8] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0F950();
  v0[9] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[10] = v9;
  v11 = *(v10 + 64);
  v0[11] = OUTLINED_FUNCTION_69();
  v0[12] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231D9D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v17 = v16[11];
  v19 = v16[4];
  v18 = v16[5];
  v41 = v16[3];
  v42 = *(v16[2] + 272);
  v20 = *(v19 + 24);
  v21 = *(v19 + 32);
  v22 = *(v19 + 48);
  v23 = *(v19 + 56);
  v24 = *(v19 + 40);
  (*(v16[10] + 16))(v16[12], v19 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_receivedDate, v16[9]);
  v25 = *(v19 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_positionInReceivedItems);

  sub_231DDA8A0();
  v27 = v26;
  v28 = sub_231DA04D8(&unk_2846F6B30);
  sub_231D50828();
  sub_231D5082C(v41, v27, v28, 1, v17);
  (*(v16[10] + 8))(v16[11], v16[9]);

  v30 = v16[11];
  v29 = v16[12];
  v31 = v16[8];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_37();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, a12, a13, a14, a15, a16);
}

BOOL sub_231D9D700()
{
  sub_231DA2B1C();
  sub_231E117E0();
  sub_231E117E0();
  return v2 == v1;
}

id sub_231D9D778()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_231E115F0();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t sub_231D9D7EC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __n128 a9, unint64_t a10)
{
  OUTLINED_FUNCTION_285(a2, a3, a4, a5, a6, a7, a8, a10, a9);
  v10 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_149_1(v10, v11, v12);
}

uint64_t sub_231D9D82C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_453();
  sub_231CD2A28(37, 0, 0x10Du, v5, v6, v7, v8, v9, v10);
  sub_231DA1F60(v4, v0 + 288);
  sub_231CD2B00(v4, (v0 + 416));
  sub_231DDBF28();

  v11 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_413(v11, v12, v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 840) = v14;
  *v14 = v15;
  v14[1] = sub_231DA48CC;
  v16 = *(v0 + 832);
  v17 = *(v0 + 824);
  v18 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  OUTLINED_FUNCTION_79_4();

  return sub_231CD2DA0();
}

uint64_t sub_231D9D93C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __n128 a9, unint64_t a10)
{
  OUTLINED_FUNCTION_285(a2, a3, a4, a5, a6, a7, a8, a10, a9);
  v10 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_149_1(v10, v11, v12);
}

uint64_t sub_231D9D97C()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_453();
  OUTLINED_FUNCTION_419(v5, v6, v7, v8, v9, v10);
  sub_231DA1F60(v4, v0 + 288);
  sub_231CD2B00(v4, (v0 + 416));
  sub_231DDBF28();

  v11 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_413(v11, v12, v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 840) = v14;
  *v14 = v15;
  v14[1] = sub_231D9DA80;
  v16 = *(v0 + 832);
  v17 = *(v0 + 824);
  v18 = *(v0 + 816);
  v19 = *(v0 + 808);
  v20 = *(v0 + 800);
  OUTLINED_FUNCTION_79_4();

  return sub_231CD2DA0();
}

uint64_t sub_231D9DA80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 840);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v8();
}

uint64_t sub_231D9DB60(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __n128 a9, unint64_t a10, uint64_t a11)
{
  *(v11 + 840) = a11;
  OUTLINED_FUNCTION_285(a2, a3, a4, a5, a6, a7, a8, a10, a9);
  v12 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_149_1(v12, v13, v14);
}

uint64_t sub_231D9DBA4()
{
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  OUTLINED_FUNCTION_39_6();
  v6 = v5;
  OUTLINED_FUNCTION_453();
  OUTLINED_FUNCTION_216_0();
  sub_231CD2A28(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  sub_231DA1F60(v4, v0 + 288);
  sub_231CD2B00(v4, (v0 + 416));
  sub_231DDBF28();

  v16 = OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_413(v16, v17, v18);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 848) = v19;
  *v19 = v20;
  v19[1] = sub_231D9DCC4;
  v21 = *(v0 + 840);
  v22 = *(v0 + 832);
  v23 = *(v0 + 824);
  v24 = *(v0 + 816);
  v25 = *(v0 + 808);
  OUTLINED_FUNCTION_79_4();

  return sub_231CD2DA0();
}

uint64_t sub_231D9DCC4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  *v3 = v2;
  v5 = *(v4 + 848);
  v6 = *v0;
  OUTLINED_FUNCTION_4();
  *v7 = v6;

  sub_231CC4F5C(v2 + 16);
  OUTLINED_FUNCTION_14_0();

  return v8();
}

void sub_231D9DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_118();
  v27 = v26;
  v109 = v28;
  v113 = v29;
  v114 = v30;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_300_0();
  v111 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  OUTLINED_FUNCTION_47(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v39);
  v41 = &v101[-v40];
  v42 = sub_231E10E30();
  v43 = OUTLINED_FUNCTION_24(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v50 = v48 - v49;
  MEMORY[0x28223BE20](v51);
  v53 = &v101[-v52];
  v110 = v25;
  v54 = *v25;
  v112 = v24;
  v55 = OUTLINED_FUNCTION_25();
  v58 = sub_231D9E3D8(v55, v56, v57);
  if (!v60)
  {
LABEL_16:
    v90 = v114;
    v91 = sub_231E119F0();
    OUTLINED_FUNCTION_12(v91);
    (*(v92 + 16))(v41, a21, v91);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v91);
    v93 = swift_allocObject();
    v93[2] = 0;
    v93[3] = 0;
    v94 = v112;
    v93[4] = v112;
    v93[5] = v34;
    v93[6] = a22;
    v93[7] = a23;
    v93[8] = a24;

    v95 = OUTLINED_FUNCTION_71_5();
    v98 = sub_231D6AE00(v95, v96, v41, v97, v93);
    sub_231CC154C(v41, &qword_27DD75180, &qword_231E13690);
    swift_retain_n();

    v99 = v110;
    v100 = *v110;
    swift_isUniquelyReferenced_nonNull_native();
    v116 = *v99;
    sub_231DA0724(v113, v32, v90, v98, v94, v34);
    *v99 = v116;
    sub_231D76188();

    goto LABEL_19;
  }

  v106 = v61;
  v107 = v60;
  v108 = v59;
  v62 = v45;
  if (v59)
  {
    if (v32)
    {
      v63 = v58 == v113 && v59 == v32;
      if (v63 || (sub_231E12100() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_12;
  }

  if (v32)
  {
LABEL_12:
    sub_231CB4EEC();
    OUTLINED_FUNCTION_463();
    v74(v50);
    v75 = v114;

    v76 = sub_231E10E10();
    v77 = sub_231E11AF0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_67();
      v104 = v62;
      v79 = v78;
      v103 = swift_slowAlloc();
      v115[0] = v103;
      *v79 = 136446722;
      v102 = v77;
      v80 = sub_231DDB1E8();
      sub_231CB5000(v80, v81, v115);
      v105 = v42;
      OUTLINED_FUNCTION_87_0();
      *(v79 + 4) = v75;
      v82 = OUTLINED_FUNCTION_455();
      v84 = sub_231CB5000(v82, v27, v83);
      *(v79 + 24) = OUTLINED_FUNCTION_416(v84);
      _os_log_impl(&dword_231CAE000, v76, v102, "%{public}s Cancelling existing %s summarization task with key: %s", v79, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_49_2();

      (*(v104 + 8))(v50, v105);
    }

    else
    {

      v85 = *(v62 + 8);
      v86 = OUTLINED_FUNCTION_295_0();
      v87(v86);
    }

    v88 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_cancellationReason;
    v89 = v107;
    OUTLINED_FUNCTION_4_12();
    *(v89 + v88) = 1;
    sub_231E11A00();

    goto LABEL_16;
  }

LABEL_9:
  sub_231CB4EEC();
  OUTLINED_FUNCTION_463();
  v64(v53);

  v65 = sub_231E10E10();
  v66 = v42;
  v67 = sub_231E11AF0();

  if (os_log_type_enabled(v65, v67))
  {
    v68 = OUTLINED_FUNCTION_67();
    v115[0] = swift_slowAlloc();
    *v68 = 136446722;
    v105 = v66;
    v69 = sub_231DDB1E8();
    sub_231CB5000(v69, v70, v115);
    OUTLINED_FUNCTION_335();
    *(v68 + 4) = v27;
    v71 = OUTLINED_FUNCTION_455();
    v73 = sub_231CB5000(v71, v27, v72);
    *(v68 + 24) = OUTLINED_FUNCTION_416(v73);
    _os_log_impl(&dword_231CAE000, v65, v67, "%{public}s Ignoring identical request for %s with key: %s", v68, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_49_2();

    (*(v45 + 8))(v53, v105);
  }

  else
  {

    (*(v45 + 8))(v53, v66);
  }

  v98 = 0;
LABEL_19:
  *v111 = v98;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D9E3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_231CE0CA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 32 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];

  return v7;
}

uint64_t sub_231D9E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D9E478()
{
  OUTLINED_FUNCTION_47_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_231E11D70();

  v4 = OUTLINED_FUNCTION_37_0();
  MEMORY[0x23837CC20](v4);
  sub_231E116A0();
  OUTLINED_FUNCTION_404();
  v0[7] = os_transaction_create();

  v8 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_325(v6);

  return v8();
}

uint64_t sub_231D9E5D8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231D9E6BC()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0[6] + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock(v3 + 8);
  sub_231DA3C44();
  v5 = v0[7];
  os_unfair_lock_unlock(v3 + 8);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231D9E798()
{
  OUTLINED_FUNCTION_18();
  v0[19] = v1;
  v2 = sub_231E10E30();
  v0[20] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[21] = v3;
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_69();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231D9E854()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  v0[25] = sub_231CB4EEC();
  v0[26] = *(v3 + 16);
  v0[27] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_82();
  v5(v4);
  v6 = sub_231E10E10();
  v7 = sub_231E11AF0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_16_1();
    *v8 = 0;
    _os_log_impl(&dword_231CAE000, v6, v7, "Fetching Mail VIPs", v8, 2u);
    OUTLINED_FUNCTION_49_2();
  }

  v9 = v0[24];
  v10 = v0[20];
  v11 = v0[21];

  v0[28] = *(v11 + 8);
  v12 = OUTLINED_FUNCTION_70();
  v13(v12);
  v14 = [objc_allocWithZone(PSUVIPManager) init];
  v0[29] = v14;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_231D9EA30;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D0, &unk_231E1E1D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231D9EE3C;
  v0[13] = &block_descriptor_8;
  v0[14] = v15;
  [v14 emailVIPAddressesWithCompletion_];
  OUTLINED_FUNCTION_66_0();

  return MEMORY[0x282200938](v16);
}

uint64_t sub_231D9EA30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_43();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231D9EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 144);
  v12 = *(*(v10 + 152) + 32);
  *(swift_task_alloc() + 16) = v11;
  os_unfair_lock_lock(v12 + 8);
  sub_231DA0960(&v12[4]);
  os_unfair_lock_unlock(v12 + 8);
  v14 = *(v10 + 208);
  v13 = *(v10 + 216);
  v15 = *(v10 + 200);
  v16 = *(v10 + 184);
  v17 = *(v10 + 160);

  v18 = OUTLINED_FUNCTION_37_0();
  v14(v18);
  v19 = sub_231E10E10();
  v20 = sub_231E11AF0();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v10 + 232);
  if (v21)
  {
    v23 = OUTLINED_FUNCTION_16_1();
    *v23 = 0;
    _os_log_impl(&dword_231CAE000, v19, v20, "Received Mail VIPs", v23, 2u);
    OUTLINED_FUNCTION_30();
  }

  v24 = *(v10 + 192);
  v25 = *(v10 + 176);
  v26 = *(v10 + 168) + 8;
  (*(v10 + 224))(*(v10 + 184), *(v10 + 160));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

void sub_231D9ECA0()
{
  OUTLINED_FUNCTION_57_0();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_340();
  v4();
  v8 = v1;
  v9 = sub_231E10E10();
  v10 = sub_231E11AD0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 240);
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_9_1();
    v14 = OUTLINED_FUNCTION_53();
    *v13 = 138543362;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_231CAE000, v9, v10, "Error getting Mail VIPs: %{public}@", v13, 0xCu);
    sub_231CC154C(v14, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 168) + 8;
  (*(v0 + 224))(*(v0 + 176), *(v0 + 160));

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_367();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231D9EE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_231CBF8D4(v4, v5);
  }

  else
  {
    v7 = sub_231E11A60();

    return sub_231CBF940(v4, v7);
  }
}

uint64_t sub_231D9EED8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v5 = *(v0 + 168);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  __swift_destroy_boxed_opaque_existential_0((v0 + 232));

  __swift_destroy_boxed_opaque_existential_0((v0 + 280));
  v8 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  __swift_destroy_boxed_opaque_existential_0((v0 + 376));
  return v0;
}

uint64_t sub_231D9EF78()
{
  sub_231D9EED8();

  return swift_deallocClassInstance();
}

id sub_231D9EFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_231E115F0();

  if (a4)
  {
    v8 = sub_231E11520();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_231D9F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231E115F0();

  if (a4)
  {
    v7 = sub_231E115F0();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_231E115F0();

  v9 = [v4 initWithName:v6 protectionClass:v7 bundleIdentifier:v8];

  return v9;
}

uint64_t sub_231D9F144(uint64_t a1)
{
  v2 = sub_231CB4810(&qword_2814CAFB8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_231D9F1B0(uint64_t a1)
{
  v2 = sub_231CB4810(&qword_2814CAFB8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_231D9F21C(void *a1, uint64_t a2)
{
  v4 = sub_231CB4810(&qword_2814CAFB8, type metadata accessor for SummarizationClientError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_231D9F2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_231CB4810(&qword_2814CAFB8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_231D9F354()
{
  v2 = *v0;
  sub_231E12220();
  sub_231E11560();
  return sub_231E12250();
}

void sub_231D9F3B4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_231D9F3E8();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_231D9F3F0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_231D9F41C(uint64_t a1)
{
  v2 = sub_231CB4810(&qword_2814CAFC0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_231D9F488(uint64_t a1)
{
  v2 = sub_231CB4810(&qword_2814CAFC0, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_231D9F4F4(uint64_t a1)
{
  v2 = sub_231CB4810(&qword_2814CAFB8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_231D9F560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231CB4810(&qword_2814CAFB8, type metadata accessor for SummarizationClientError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_231D9F5F0(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((a1 + 32));
  sub_231DA34F8((a1 + 16), &v5);
  os_unfair_lock_unlock((a1 + 32));
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

uint64_t sub_231D9F670(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231D6D4E8;

  return v7(a1);
}

char *sub_231D9F768()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231D9F900(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_231D9F7B4(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231D9F900((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

size_t sub_231D9F7F4(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231D9FB30(v14, v13, a5, a6, a7);
  v16 = *(*(a8(0) - 8) + 80);
  OUTLINED_FUNCTION_79();
  if (v11)
  {
    sub_231D9FC20(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_231D9F900(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74AB0, &unk_231E1C220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_231D9FA00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75110, &qword_231E1E580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BB8, &qword_231E1E1C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231D9FB30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_65_4();
  v9 = a5(v8);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231D9FC20(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_300_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_12(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_231D9FCEC(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_231D9F7F4(result, v7, a2 & 1, v5, &qword_27DD75108, &unk_231E1E570, MEMORY[0x277D42428], MEMORY[0x277D42428]);
    *v2 = result;
  }

  return result;
}

uint64_t sub_231D9FD8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

size_t sub_231D9FE04(size_t a1, int64_t a2, char a3)
{
  result = sub_231D9FE24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_231D9FE24(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75108, &unk_231E1E570);
  v10 = *(sub_231E10A30() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_231E10A30() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231D9FC20(a4 + v16, v8, v13 + v16, MEMORY[0x277D42428]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_231D9FFEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v56 = a2;
  v8 = sub_231E10A30();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v50 - v17;
  result = MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  v22 = a4 >> 1;
  v57 = a3;
  v23 = __OFSUB__(a4 >> 1, a3);
  v24 = (a4 >> 1) - a3;
  if (v23)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v25 = *v4;
  v26 = *(*v4 + 16);
  v27 = v26 + v24;
  if (__OFADD__(v26, v24))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v59 = v22;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v25;
  if (result)
  {
    v28 = *(v25 + 24) >> 1;
    if (v28 >= v27)
    {
      goto LABEL_12;
    }

    if (v26 <= v27)
    {
      v29 = v26 + v24;
    }

    else
    {
      v29 = v26;
    }
  }

  else if (v26 <= v27)
  {
    v29 = v26 + v24;
  }

  else
  {
    v29 = v26;
  }

  result = sub_231D9FE04(result, v29, 1);
  v25 = *v4;
  v28 = *(*v4 + 24) >> 1;
LABEL_12:
  v30 = *(v25 + 16);
  v31 = v28 - v30;
  if (v59 != v57)
  {
    if (v31 >= v24)
    {
      v33 = v25 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v30;
      result = swift_arrayInitWithCopy();
      if (v24 <= 0)
      {
        v32 = v59;
        goto LABEL_20;
      }

      v34 = *(v25 + 16);
      v23 = __OFADD__(v34, v24);
      v35 = v34 + v24;
      v32 = v59;
      if (!v23)
      {
        *(v25 + 16) = v35;
        goto LABEL_20;
      }

LABEL_47:
      __break(1u);
      return result;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v24 > 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = 0;
  v32 = v57;
LABEL_20:
  if (v24 == v31)
  {
    v53 = v4;
    v54 = v25;
    v50 = a1;
    v36 = *(v25 + 16);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v8);
    v37 = (v60 + 32);
    v55 = (v60 + 16);
    v51 = (v60 + 8);
    v52 = v18;
    v38 = &qword_27DD74BE0;
    v39 = v58;
    while (1)
    {
      sub_231DA3AF0();
      if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
      {
        break;
      }

      sub_231CC154C(v18, v38, &qword_231E1CC20);
      v40 = *(v54 + 24);
      if (v36 + 1 > (v40 >> 1))
      {
        sub_231D9FE04(v40 > 1, v36 + 1, 1);
      }

      v41 = *v53;
      v61 = *(*v53 + 24) >> 1;
      v42 = *(v60 + 80);
      v54 = v41;
      v43 = v41 + ((v42 + 32) & ~v42);
      while (1)
      {
        sub_231DA3AF0();
        if (__swift_getEnumTagSinglePayload(v15, 1, v8) == 1)
        {
          sub_231CC154C(v15, v38, &qword_231E1CC20);
          goto LABEL_39;
        }

        v44 = v38;
        v45 = *v37;
        (*v37)(v39, v15, v8);
        if (v36 >= v61)
        {
          break;
        }

        sub_231CC154C(v21, v44, &qword_231E1CC20);
        v46 = v39;
        v47 = *(v60 + 72);
        result = v45((v43 + v47 * v36), v46, v8);
        if (v32 == v59)
        {
          v48 = 1;
          v32 = v59;
        }

        else
        {
          if (v32 < v57 || v32 >= v59)
          {
            __break(1u);
            goto LABEL_43;
          }

          (*v55)(v21, v56 + v47 * v32, v8);
          v48 = 0;
          ++v32;
        }

        __swift_storeEnumTagSinglePayload(v21, v48, 1, v8);
        ++v36;
        v39 = v58;
        v38 = v44;
      }

      (*v51)(v39, v8);
      v38 = v44;
LABEL_39:
      *(v54 + 16) = v36;
      v18 = v52;
    }

    sub_231CC154C(v21, &qword_27DD74BE0, &qword_231E1CC20);
    swift_unknownObjectRelease();
    result = sub_231CC154C(v18, &qword_27DD74BE0, &qword_231E1CC20);
    v4 = v53;
    v25 = v54;
  }

  else
  {
    result = swift_unknownObjectRelease();
  }

  *v4 = v25;
  return result;
}

uint64_t sub_231DA04D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750F8, &qword_231E1E3B0);
  result = sub_231E11D50();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    v8 = *(v3 + 40);
    sub_231E12220();
    MEMORY[0x23837D730](v7);
    result = sub_231E12250();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_231DA0624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_231CE0CA4(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  v9 = *(*v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75118, &qword_231E1E598);
  sub_231E11EA0();
  v10 = *(*(v17 + 48) + 16 * v7 + 8);

  v11 = (*(v17 + 56) + 32 * v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  sub_231E11EB0();
  *v3 = v17;
  return v12;
}

uint64_t sub_231DA0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_231CE0CA4(a5, a6);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75118, &qword_231E1E598);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v7;
  v19 = sub_231CE0CA4(a5, a6);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v7;
  if (v17)
  {
    v22 = (v21[7] + 32 * v16);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;
  }

  else
  {
    sub_231DA08B0(v16, a5, a6, a1, a2, a3, a4, v21);
  }
}

unint64_t sub_231DA08B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_231DA0900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_56_6(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_231DA0960(uint64_t a1)
{
  OUTLINED_FUNCTION_427(a1);

  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_231DA0998()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10A30();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D77734();
}

uint64_t sub_231DA0A70()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10BE0();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D7BC34();
}

uint64_t sub_231DA0B48()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10340();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D7F860();
}

uint64_t sub_231DA0C20()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E106A0();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D85B94();
}

uint64_t sub_231DA0CF8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10AE0();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D89990();
}

uint64_t sub_231DA0DD0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;

  return sub_231D9E798();
}

uint64_t sub_231DA0E5C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return sub_231D97518(v4, v5, v6, v0);
}

uint64_t sub_231DA0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_110_5();
  v12 = *(v11 + 48);
  v13 = *(v11 + 49);
  v14 = *(v11 + 52);
  v37 = *(v11 + 60);
  v15 = *(v11 + 76);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_17(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_141_2(v17, v19, v20, v21, v22, v23, v24, v25, v26);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_35();

  return sub_231D988C0(v27, v28, v29, v30, v31, v32, v33, v34, v37, a11);
}

unint64_t sub_231DA0FAC()
{
  result = qword_27DD750B0;
  if (!qword_27DD750B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD750B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummarizationManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231DA110C()
{
  result = sub_231E0FF70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_71_5();
  }

  return result;
}

uint64_t sub_231DA11A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_231DA11E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_231DA1258(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231DA1368()
{
  result = qword_27DD83C70[0];
  if (!qword_27DD83C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD83C70);
  }

  return result;
}

unint64_t sub_231DA13C0()
{
  result = qword_27DD83D80;
  if (!qword_27DD83D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83D80);
  }

  return result;
}

unint64_t sub_231DA1418()
{
  result = qword_27DD83D88[0];
  if (!qword_27DD83D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD83D88);
  }

  return result;
}

unint64_t sub_231DA1470()
{
  result = qword_27DD83E10;
  if (!qword_27DD83E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83E10);
  }

  return result;
}

unint64_t sub_231DA14C8()
{
  result = qword_27DD83E18[0];
  if (!qword_27DD83E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD83E18);
  }

  return result;
}

unint64_t sub_231DA1520()
{
  result = qword_27DD83EA0;
  if (!qword_27DD83EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD83EA0);
  }

  return result;
}

unint64_t sub_231DA1578()
{
  result = qword_27DD83EA8[0];
  if (!qword_27DD83EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD83EA8);
  }

  return result;
}

unint64_t sub_231DA15D0()
{
  result = qword_2814CDE50;
  if (!qword_2814CDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CDE50);
  }

  return result;
}

unint64_t sub_231DA1628()
{
  result = qword_2814CDE58[0];
  if (!qword_2814CDE58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CDE58);
  }

  return result;
}

unint64_t sub_231DA167C()
{
  result = qword_27DD750B8;
  if (!qword_27DD750B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD750B8);
  }

  return result;
}

uint64_t sub_231DA16D0()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_474();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v5[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_97_3();

  return sub_231D97738();
}

uint64_t sub_231DA1778()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_477();
  v1 = sub_231E10340();
  OUTLINED_FUNCTION_6(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v8[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_97_3();

  return sub_231D97F88();
}

uint64_t sub_231DA187C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7(v1);

  return v4(v3);
}

uint64_t sub_231DA190C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_29_0(v2);

  return sub_231D985BC(v4, v5, v0);
}

uint64_t sub_231DA199C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_474();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_94_5();

  return sub_231D9881C();
}

uint64_t sub_231DA1A60()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10AE0();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D89B48();
}

uint64_t sub_231DA1B38()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D89CE0();
}

void sub_231DA1BC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t sub_231DA1C1C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_17(v2);

  return sub_231D9C790(v4, v5, v6, v0);
}

uint64_t sub_231DA1CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_70_2();
  v10 = *(v9 + 64);
  v11 = *(v9 + 72);
  v12 = *(v9 + 40);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_38(v13);
  *v14 = v15;
  v14[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_227_0();

  return sub_231D9C95C(v16, v17, v18, v19, v20, v21, v22, v23, a9);
}

uint64_t sub_231DA1D4C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D9CBFC();
}

uint64_t sub_231DA1DDC()
{
  v1 = OUTLINED_FUNCTION_477();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_231DA1E30()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_77_4();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_66_0();

  return sub_231D9D08C(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_231DA1EC8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_166_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_97_3();

  return sub_231D9C4EC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_231DA1FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_75_4();
  v12 = *(v10 + 88);
  v11 = *(v10 + 96);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_38(v13);
  *v14 = v15;
  v14[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_35();

  return sub_231D9DB60(v16, v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_231DA2078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  OUTLINED_FUNCTION_482();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_75_4();
  v10 = *(v9 + 88);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_38(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_141_2(v12, v14, v15, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_367();

  return sub_231D9D93C(v22, v23, v24, v25, v26, v27, v28, v29, v30, a9);
}

uint64_t sub_231DA2114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  OUTLINED_FUNCTION_482();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_75_4();
  v10 = *(v9 + 88);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_38(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_141_2(v12, v14, v15, v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_367();

  return sub_231D9D7EC(v22, v23, v24, v25, v26, v27, v28, v29, v30, a9);
}

uint64_t sub_231DA21B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231DA21F8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E106A0();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D85D4C();
}

uint64_t sub_231DA22D0()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D85EE4();
}

uint64_t sub_231DA2360()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_58_8();

  return sub_231D98FA8();
}

uint64_t sub_231DA23F4()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_110_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_6_18(v3);
  OUTLINED_FUNCTION_106();

  return sub_231D990DC();
}

uint64_t sub_231DA248C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D9A0B0();
}

uint64_t sub_231DA251C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D9AA70();
}

uint64_t sub_231DA25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_70_2();
  v10 = *(v9 + 64);
  v11 = *(v9 + 72);
  v12 = *(v9 + 40);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_38(v13);
  *v14 = v15;
  v14[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_227_0();

  return sub_231D9ADC8(v16, v17, v18, v19, v20, v21, v22, v23, a9);
}

uint64_t sub_231DA264C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D9B25C();
}

uint64_t sub_231DA26DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_77_4();
  v11 = *(v9 + 64);
  v10 = *(v9 + 72);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_38(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_326(v13);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_227_0();

  return sub_231D9BC80(v15, v16, v17, v18, v19, v20, v21, v22, a9);
}

uint64_t sub_231DA2774()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_166_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_97_3();

  return sub_231D9A880();
}

uint64_t sub_231DA280C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_166_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_97_3();

  return sub_231D9A4DC();
}

uint64_t sub_231DA28A4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D9A368();
}

uint64_t sub_231DA2934()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_24_9();

  return sub_231D99CE0();
}

uint64_t sub_231DA29CC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_95_5();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_59_0();
  v9(v8);
  return a2;
}

uint64_t sub_231DA2A24()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_6(v1);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38(v6);
  *v7 = v8;
  v7[1] = sub_231CC6BF8;

  return sub_231D9D2F8();
}

unint64_t sub_231DA2B1C()
{
  result = qword_27DD750F0;
  if (!qword_27DD750F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD750F0);
  }

  return result;
}

uint64_t sub_231DA2BC4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10340();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D7FB54();
}

uint64_t sub_231DA2CB8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D7FFD8();
}

uint64_t sub_231DA2D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_110_5();
  v10 = v9[6];
  v11 = v9[7];
  v13 = v9[8];
  v12 = v9[9];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_17(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_326(v15);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_44();

  return sub_231D92D58(v17, v18, v19, v20, v21, v22, v23, v24, a9);
}

uint64_t sub_231DA2DEC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CBFF60;
  OUTLINED_FUNCTION_58_8();

  return sub_231D92F54();
}

uint64_t sub_231DA2E9C()
{
  OUTLINED_FUNCTION_474();

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_231DA2F04()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D937E4();
}

uint64_t sub_231DA2F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_77_4();
  v11 = *(v9 + 64);
  v10 = *(v9 + 72);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_38(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_326(v13);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_227_0();

  return sub_231D93E14(v15, v16, v17, v18, v19, v20, v21, v22, a9);
}

uint64_t sub_231DA302C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D94320();
}

uint64_t sub_231DA30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_483();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_70_2();
  v13 = *(v12 + 64);
  v29 = *(v12 + 72);
  v14 = *(v12 + 88);
  v15 = *(v12 + 96);
  v16 = *(v12 + 40);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_38(v17);
  *v18 = v19;
  v18[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_35();

  return sub_231D9463C(v20, v21, v22, v23, v24, v25, v26, v27, v29, a11, a12);
}

uint64_t sub_231DA3174()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D94998();
}

uint64_t sub_231DA3204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_482();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_75_4();
  v11 = *(v10 + 88);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_38(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_141_2(v13, v15, v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_367();

  return sub_231D94FAC(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_231DA32A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_77_4();
  v11 = *(v9 + 64);
  v10 = *(v9 + 72);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_38(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_326(v13);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_227_0();

  return sub_231D94128(v15, v16, v17, v18, v19, v20, v21, v22, a9);
}

uint64_t sub_231DA3338()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D93B04();
}

uint64_t sub_231DA33C8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_77_4();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_66_0();

  return sub_231D932D4();
}

uint64_t sub_231DA3460()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_128_2();

  return sub_231D9284C();
}

uint64_t sub_231DA34F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_231DA3540()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10BE0();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D7BDEC();
}

uint64_t sub_231DA3618()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D7BF84();
}

uint64_t sub_231DA36A8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D90634(v3, v4, v5, v6, v7);
}

uint64_t sub_231DA3738()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_29_0(v1);

  return sub_231D90810();
}

uint64_t sub_231DA37C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_110_5();
  v10 = v9[6];
  v11 = v9[7];
  v13 = v9[8];
  v12 = v9[9];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_17(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_326(v15);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_44();

  return sub_231D91034(v17, v18, v19, v20, v21, v22, v23, v24, a9);
}

uint64_t sub_231DA386C()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_70_2();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_106();

  return sub_231D912E0(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_231DA390C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D915A4();
}

uint64_t sub_231DA399C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_166_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_97_3();

  return sub_231D925E0();
}

uint64_t sub_231DA3A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizerResult();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231DA3A98(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_95_5();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_59_0();
  v9(v8);
  return a2;
}

uint64_t sub_231DA3AF0()
{
  OUTLINED_FUNCTION_300_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_59_0();
  v7(v6);
  return v0;
}

uint64_t sub_231DA3B98()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_38(v6);
  *v7 = v8;
  v7[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_97_3();

  return sub_231D9E45C(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_231DA3C44()
{
  v1 = sub_231DA0624(*(v0 + 16), *(v0 + 24));
  sub_231DA3C88(v1, v2, v3);
  return sub_231D76188();
}

uint64_t sub_231DA3C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_24(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);

  v10 = *(v1 + 24);

  (*(v4 + 8))(v1 + v6, v2);
  v11 = *(v1 + v8);

  return MEMORY[0x2821FE8E8](v1, v8 + 8, v5 | 7);
}

uint64_t sub_231DA3DB4()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  v0 = sub_231E10A30();
  OUTLINED_FUNCTION_6(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_25_9(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_15_15(v5);
  OUTLINED_FUNCTION_97_3();

  return sub_231D778EC();
}

uint64_t sub_231DA3E8C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D77B9C();
}

uint64_t sub_231DA3F1C()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_52_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_18(v1);
  OUTLINED_FUNCTION_97_3();

  return sub_231D8B964(v3, v4, v5, v6, v7);
}

uint64_t sub_231DA3FAC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D8C218();
}

uint64_t sub_231DA403C()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_110_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_6_18(v3);
  OUTLINED_FUNCTION_106();

  return sub_231D8D2A0();
}

uint64_t sub_231DA40D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_70_2();
  v11 = *(v10 + 64);
  v12 = *(v10 + 72);
  v13 = *(v10 + 80);
  v14 = *(v10 + 40);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_38(v15);
  *v16 = v17;
  v16[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_145_1();
  OUTLINED_FUNCTION_44();

  return sub_231D8D6F0(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_231DA417C()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_110_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_6_18(v3);
  OUTLINED_FUNCTION_106();

  return sub_231D8E05C();
}

uint64_t sub_231DA4214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_77_4();
  v11 = *(v9 + 64);
  v10 = *(v9 + 72);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_38(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_326(v13);
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_227_0();

  return sub_231D8F808(v15, v16, v17, v18, v19, v20, v21, v22, a9);
}

uint64_t sub_231DA42AC()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_166_0();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  v4[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_106();

  return sub_231D8D05C(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_231DA4348()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_80_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_6_17(v1);

  return sub_231D8C380();
}

uint64_t sub_231DA43D8()
{
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_166_0();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  v3[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_97_3();

  return sub_231D8BFB8(v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_140Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_299_0();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_231DA44B4()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_108_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;
  OUTLINED_FUNCTION_58_8();

  return sub_231D8BE84();
}

uint64_t sub_231DA4548()
{
  OUTLINED_FUNCTION_288_0();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_110_5();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_6_18(v5);
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_232_0();

  return sub_231D8BB64();
}

unint64_t sub_231DA47D8()
{
  result = qword_2814CAFD0;
  if (!qword_2814CAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAFD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_14()
{
  result = v0[246];
  v2 = v0[243];
  v3 = v0[242];
  v4 = v0[241];
  v5 = v0[240];
  v6 = v0[239];
  v7 = v0[238];
  v8 = v0[237];
  v9 = v0[234];
  v10 = v0[232];
  v11 = v0[231];
  v12 = v0[230];
  return result;
}

void OUTLINED_FUNCTION_17_8()
{
  v3 = v0[120];
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[115];
  v7 = v0[112];
  v8 = v0[111];
  v9 = v0[110];
  v10 = v0[109];
  v11 = v0[107];
  v12 = v0[106];
  v13 = v0[105];
  v14 = v0[104];
  v15 = v0[103];
  v16 = v0[102];
  v17 = v0[101];
  v2 = v0[99];
  *(v1 - 104) = v0[100];
  *(v1 - 96) = v2;
  *(v1 - 88) = v0[96];
}

uint64_t OUTLINED_FUNCTION_21_9()
{
  result = v0[256];
  v2 = v0[255];
  v3 = v0[254];
  v4 = v0[253];
  v5 = v0[252];
  v6 = v0[251];
  v7 = v0[248];
  v8 = v0[246];
  v9 = v0[245];
  v10 = v0[242];
  v11 = v0[239];
  v12 = v0[238];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  result = v0[134];
  v2 = v0[131];
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[128];
  v6 = v0[127];
  v7 = v0[124];
  v8 = v0[123];
  v9 = v0[122];
  v10 = v0[121];
  v11 = v0[120];
  v12 = v0[119];
  return result;
}

void OUTLINED_FUNCTION_25_9(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_33_12()
{
  result = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[65];
  v10 = v0[61];
  v9 = v0[62];
  v11 = v0[60];
  v13 = v0[57];
  v12 = v0[58];
  return result;
}

uint64_t OUTLINED_FUNCTION_37_9()
{
  v4 = *v1;
  v5 = v1[1];
  *v1 = v0;
  v1[1] = v2;
  v6 = *(v1 + 16);
  *(v1 + 16) = v3;
  return v0;
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  v6 = *(v4 + 32);
  return a1 + v5;
}

double OUTLINED_FUNCTION_39_6()
{
  v1 = *(*(v0 + 760) + 16);
  *(v0 + 664) = 0;
  *(v0 + 672) = 1;
  result = 0.0;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_9()
{
  v7 = v0[304];
  v8 = v0[303];
  v9 = v0[302];
  v10 = v0[301];
  v11 = v0[300];
  v12 = v0[299];
  v13 = v0[298];
  v14 = v0[297];
  v15 = v0[296];
  v16 = v0[293];
  v17 = v0[292];
  v18 = v0[289];
  v19 = v0[288];
  v20 = v0[287];
  v21 = v0[286];
  v22 = v0[285];
  v23 = v0[284];
  v24 = v0[281];
  v25 = v0[278];
  v26 = v0[275];
  v27 = v0[272];
  v3 = v0[268];
  *(v1 - 152) = v0[271];
  *(v1 - 144) = v3;
  v4 = v0[265];
  *(v1 - 136) = v0[266];
  *(v1 - 128) = v4;
  v5 = v0[262];
  *(v1 - 120) = v0[264];
  *(v1 - 112) = v5;
  *(v1 - 104) = v0[261];
}

double OUTLINED_FUNCTION_55_6@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void OUTLINED_FUNCTION_56_9()
{
  v1 = v0[66];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v8 = v0[57];
  v7 = v0[58];
  v9 = v0[54];
  v10 = v0[55];
  v11 = v0[51];
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t result)
{
  *(result + 8) = sub_231D79454;
  v2 = *(v1 + 1832);
  return result;
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t result)
{
  *(result + 8) = sub_231D79230;
  v2 = *(v1 + 1832);
  return result;
}

__n128 OUTLINED_FUNCTION_65_6(__n128 *a1)
{
  v3[7].n128_u64[1] = a1;
  result = v3[3];
  a1[1] = result;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_6()
{
  v5 = v0[56];
  v6 = v0[55];
  v7 = v0[54];
  v8 = v0[53];
  v9 = v0[52];
  v10 = v0[49];
  v11 = v0[48];
  v12 = v0[47];
  v13 = v0[44];
  v14 = v0[41];
  v3 = v0[37];
  *(v1 - 96) = v0[40];
  *(v1 - 88) = v3;
}

__n128 OUTLINED_FUNCTION_75_4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  return *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[119] = a4;
  v4[118] = a3;
  v4[117] = a2;
  return 0;
}

void OUTLINED_FUNCTION_77_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

void OUTLINED_FUNCTION_78_3(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  a1[2] = a2;
  a1[3] = a2;
  a1[4] = a2;
}

void OUTLINED_FUNCTION_80_3()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_85_4()
{
  v2 = v0[237];
  v4 = v0[235];
  v5 = v0[234];
}

uint64_t OUTLINED_FUNCTION_87_6()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  v13 = v0[25];
}

uint64_t OUTLINED_FUNCTION_88_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_89_5()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
}

void OUTLINED_FUNCTION_90_5()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  v4 = *(v0[117] + 16);
}

void OUTLINED_FUNCTION_100_6()
{
  v4 = *(v0 + v3);
  *(v4 + 16) = v2 + 1;
  *(v4 + 8 * v2 + 32) = v1;
  *(v0 + v3) = v4;
}

void OUTLINED_FUNCTION_101_6()
{
  v1 = v0[319];
  v2 = v0[318];
  v3 = v0[317];
}

uint64_t OUTLINED_FUNCTION_102_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_103_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return 0;
}

void OUTLINED_FUNCTION_106_6(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[3] = a2;
  a1[4] = a2;
  a1[1] = a2;
  a1[2] = a2;
  *a1 = a2;
}

void OUTLINED_FUNCTION_110_5()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_117_5()
{
  v2 = v0[228];
  v4 = v0[227];
  v5 = v0[226];
}

uint64_t OUTLINED_FUNCTION_118_5()
{
  v2 = v0[262];
  v3 = v0[261];
  v4 = v0[258];
  v5 = v0[231];
  v6 = v0[229];

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_122_2()
{
  v6 = v0[302];
  v7 = v0[301];
  v8 = v0[300];
  v9 = v0[299];
  v10 = v0[298];
  v11 = v0[297];
  v12 = v0[296];
  v13 = v0[293];
  v14 = v0[292];
  v15 = v0[289];
  v16 = v0[288];
  v17 = v0[287];
  v18 = v0[286];
  v19 = v0[285];
  v20 = v0[284];
  v21 = v0[281];
  v22 = v0[278];
  v23 = v0[275];
  v2 = v0[271];
  *(v1 - 152) = v0[272];
  *(v1 - 144) = v2;
  v3 = v0[266];
  *(v1 - 136) = v0[268];
  *(v1 - 128) = v3;
  v4 = v0[264];
  *(v1 - 120) = v0[265];
  *(v1 - 112) = v4;
  v5 = v0[261];
  *(v1 - 104) = v0[262];
  *(v1 - 96) = v5;
}

uint64_t OUTLINED_FUNCTION_125_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_131_2()
{
  *(v0 + 8) = sub_231D86AD4;
  v2 = *(v1 + 1768);
  return v1 + 1752;
}

void OUTLINED_FUNCTION_140_2()
{
  v2 = v0[322];
  v3 = v0[321];
  *(v1 - 104) = v0[320];
  *(v1 - 96) = v3;
}

__n128 OUTLINED_FUNCTION_141_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(a1 + 8) = v9;
  v11[2].n128_u64[0] = v10;
  result = a9;
  v11[1] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_144_2()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[334];
  return v0[333];
}

uint64_t OUTLINED_FUNCTION_149_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_158_1()
{
  v6 = v0[118];
  v7 = v0[115];
  v8 = v0[112];
  v9 = v0[111];
  v10 = v0[110];
  v11 = v0[109];
  v12 = v0[107];
  v13 = v0[106];
  v14 = v0[105];
  v15 = v0[104];
  v16 = v0[103];
  v17 = v0[102];
  v3 = v0[100];
  *(v1 - 104) = v0[101];
  *(v1 - 96) = v3;
  v4 = v0[96];
  *(v1 - 88) = v0[99];
  *(v1 - 80) = v4;
}

uint64_t OUTLINED_FUNCTION_164_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 2048);
  return result;
}

void OUTLINED_FUNCTION_166_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void OUTLINED_FUNCTION_170_1()
{
  v2 = v0[174];
  v3 = v0[175];
  v4 = v0[176];
  v5 = v0[177];

  sub_231DA1BC8(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_171_1(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1832);
  return result;
}

void OUTLINED_FUNCTION_174_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_176_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_179_1()
{
  *(v1 + 8) = v0;
  v3 = v2[7];
  v4 = v2[8];
  return v2[5];
}

void *OUTLINED_FUNCTION_182_0(void *result)
{
  *(v3 + 2216) = result;
  result[2] = v5;
  result[3] = v6;
  result[4] = v4;
  result[5] = v2;
  result[6] = v1;
  return result;
}

void OUTLINED_FUNCTION_183_0()
{
  v1 = v0[251];
  v2 = v0[250];
  v3 = v0[249];
  v4 = v0[248];
  v5 = v0[246];
}

uint64_t OUTLINED_FUNCTION_195_0()
{
  v1 = v0[324];
  v2 = v0[323];
  v3 = v0[322];
  result = v0[286];
  v5 = v0[282];
  v6 = v0[278];
  v7 = v0[277];
  v8 = v0[276];
  v0[330] = (v0[283] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_196(uint64_t result)
{
  *(result + 8) = sub_231D8823C;
  v2 = *(v1 + 1768);
  return result;
}

uint64_t OUTLINED_FUNCTION_197(uint64_t result)
{
  *(result + 8) = sub_231D87DF4;
  v2 = *(v1 + 1768);
  return result;
}

uint64_t OUTLINED_FUNCTION_198(uint64_t result)
{
  *(result + 8) = sub_231D7ECB4;
  v2 = *(v1 + 736);
  return result;
}

uint64_t OUTLINED_FUNCTION_199_0(uint64_t result)
{
  *(result + 8) = sub_231D8B378;
  v2 = *(v1 + 376);
  return result;
}

uint64_t OUTLINED_FUNCTION_200_0(uint64_t result)
{
  *(result + 8) = sub_231D88F64;
  v2 = *(v1 + 1768);
  return result;
}

uint64_t OUTLINED_FUNCTION_201(uint64_t result)
{
  *(result + 8) = sub_231D88014;
  v2 = *(v1 + 1768);
  return result;
}

uint64_t OUTLINED_FUNCTION_208_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1768);
  return result;
}

void OUTLINED_FUNCTION_217_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14[4] = v13;
  v14[3] = a13;
  v14[2] = a11;
  v15 = v14[5];
}

uint64_t OUTLINED_FUNCTION_221_0()
{
  v2 = *(v0 + 2048);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_222_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_223_0()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_224()
{
  v2 = v0[72];
  v13 = v0[71];
  v14 = v0[74];
  v3 = v0[62];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];
  v7 = v0[43];
  v8 = v0[44];
  v11 = v0[42];
  v9 = v0[28];
  v12 = v0[59];

  return sub_231D48194();
}

uint64_t OUTLINED_FUNCTION_225_0()
{

  return sub_231D9F5F0(v0);
}

uint64_t OUTLINED_FUNCTION_233_0()
{
  v2 = *(v0 + 2048);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_235_0()
{
  v2 = *(v1 + 2448);
  v3 = *(v1 + 2048);
  return v0;
}

uint64_t OUTLINED_FUNCTION_237_0()
{
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];

  return sub_231E0F5C0();
}

void OUTLINED_FUNCTION_238_0()
{
  v1 = v0[248];
  v2 = v0[223];
  v3 = v0[221];
}

void *OUTLINED_FUNCTION_242_0()
{

  return memcpy((v0 + 288), v1, 0x80uLL);
}

void *OUTLINED_FUNCTION_244(__n128 a1)
{
  *(v1 + 144) = a1;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;

  return sub_231CE25FC((v1 + 144), 2, 36, 0, 0x10Du, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_247_0()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_254_0()
{
  v1 = v0[324];
  v2 = v0[323];
  v3 = v0[322];
}

void OUTLINED_FUNCTION_257()
{
  v1 = v0[265];
  v2 = v0[264];
  v3 = v0[263];
}

uint64_t OUTLINED_FUNCTION_259_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v4 - 96);
  v5 = *(v3 + 32);
  return a1 + v1;
}

void OUTLINED_FUNCTION_265_0()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v4 = *(v0 + 665);
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v7 = *(*(v0 + 936) + 16);
}

uint64_t OUTLINED_FUNCTION_270_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_277_0()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_278_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_279_0@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v2 + 1920);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * a1;

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_281_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_282_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_285(unint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>, __n128 a9@<Q0>)
{
  v9[52].n128_u64[0] = a8;
  v9[51] = a9;
  v9[50].n128_u64[1] = a7;
  v9[50].n128_u64[0] = a6;
  v9[49].n128_u64[1] = a5;
  v9[49].n128_u64[0] = a4;
  v9[48].n128_u64[1] = a3;
  v9[48].n128_u64[0] = a2;
  v9[47].n128_u64[1] = a1;
}

void OUTLINED_FUNCTION_296_0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1952);
  v3 = *(v1 + 1928);
  v4 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v2 + 72);
}

double OUTLINED_FUNCTION_297_0(__n128 a1)
{
  *(v1 + 1296) = a1;
  result = 0.0;
  *(v1 + 1312) = 0u;
  *(v1 + 1328) = 0u;
  *(v1 + 1344) = 0u;
  *(v1 + 1360) = 0u;
  *(v1 + 1376) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_302_0(uint64_t a1)
{
  *(v3 + 2736) = a1;
  v7 = *v1;
  result = v1[1];
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v7;
  *(a1 + 56) = result;
  return result;
}

int8x16_t OUTLINED_FUNCTION_303(uint64_t a1)
{
  v3[143].i64[0] = a1;
  v5 = v3[115];
  *(a1 + 16) = v4;
  *(a1 + 24) = v1;
  *(a1 + 32) = v2;
  result = vextq_s8(v5, v5, 8uLL);
  *(a1 + 40) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_305_0(uint64_t a1)
{
  v7 = *(v3 + 144);
  result = *(v3 + 160);
  v8 = *(v3 + 128);
  *(a1 + 16) = v1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  *(a1 + 48) = vextq_s8(v8, v8, 8uLL);
  *(a1 + 64) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_311()
{
  *(v2 - 96) = v0;
  v4 = v1[326];
  v5 = v1[319];
  v6 = v1[318];
  v7 = v1[317];
  v8 = v1[308];
  v9 = v1[306];
  v10 = v1[256];
}

char *OUTLINED_FUNCTION_312()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_231D9F7B4(v3);
}

uint64_t OUTLINED_FUNCTION_313()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_314(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_315()
{
  v2 = v0[322];
  v3 = v0[258];
  v4 = v0[256];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_316(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_231CB5000(a1, a2, va);
}

void OUTLINED_FUNCTION_317()
{
  v2 = v0[321];
  v3 = v0[320];
  v4 = v0[308];
  *(v1 - 104) = v0[307];
  v5 = v0[306];
}

uint64_t OUTLINED_FUNCTION_318()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v12 = v0 + 25;
  v11 = v0[25];
  v14 = v12[1];
}

uint64_t OUTLINED_FUNCTION_320()
{
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v10 = v0[27];
  v9 = v0[28];
  v11 = v0[26];
  v13 = v0[25];
}

uint64_t OUTLINED_FUNCTION_323()
{
  v2 = v0[326];
  v3 = v0[319];
  v4 = v0[318];
  v5 = v0[317];
  v6 = v0[313];
  v7 = v0[306];
  v8 = v0[256];
}

uint64_t OUTLINED_FUNCTION_324()
{
  v1[329] = v2;
  v4 = v1[322];
  v5 = v1[286];
  v6 = v1[283];
  v7 = v1[282];
  *(v0 + 8) = 0;

  return sub_231E10220();
}

uint64_t OUTLINED_FUNCTION_325(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_326(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

void *OUTLINED_FUNCTION_329(void *result)
{
  *(v4 + 2696) = result;
  result[2] = v8;
  result[3] = v9;
  result[4] = v7;
  result[5] = v2;
  result[6] = v6;
  result[7] = v5;
  result[8] = v3;
  result[9] = v1;
  return result;
}

void OUTLINED_FUNCTION_330()
{
  v1 = v0[228];
  v2 = v0[227];
  v3 = v0[226];
}

void OUTLINED_FUNCTION_331()
{
  v1 = v0[237];
  v2 = v0[235];
  v3 = v0[234];
}

uint64_t OUTLINED_FUNCTION_334()
{
}

uint64_t OUTLINED_FUNCTION_335()
{
}

uint64_t OUTLINED_FUNCTION_336()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v5 = *(v0[12] + 8);
  return v0[13];
}

int8x16_t OUTLINED_FUNCTION_341(int8x16_t *a1)
{
  v3[140].i64[0] = a1;
  v4 = v3[111];
  a1[1].i64[0] = v2;
  a1[1].i64[1] = v1;
  result = vextq_s8(v4, v4, 8uLL);
  a1[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_343(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_344(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 80));
}

void OUTLINED_FUNCTION_348()
{
  v1 = v0[250];
  v2 = v0[249];
  v3 = v0[246];
}

void OUTLINED_FUNCTION_350()
{
  v1 = v0[248];
  v2 = v0[223];
  v3 = v0[221];
}

uint64_t OUTLINED_FUNCTION_351(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(result + 32) = v2;
  *(result + 40) = v3;
  return result;
}

void OUTLINED_FUNCTION_352()
{
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[259];
}

uint64_t OUTLINED_FUNCTION_354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_359()
{
  result = v0[57];
  v2 = v0[53];
  v3 = v0[54];
  v5 = v0[49];
  v4 = v0[50];
  return result;
}

uint64_t OUTLINED_FUNCTION_362(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return 0;
}

uint64_t OUTLINED_FUNCTION_364()
{
  v2 = v0[261];
  v3 = v0[258];
  v4 = v0[239];
  v5 = v0[231];
  v6 = v0[229];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_365()
{
  v2 = v0[159];
  v3 = v0[112];
  v4 = v0[94];
  v5 = v0[92];
  v6 = v0[91];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_366()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_371()
{

  return sub_231CD2B00(v0 + 288, (v0 + 544));
}

uint64_t OUTLINED_FUNCTION_372()
{

  return sub_231DA1F60(v0 + 288, v0 + 416);
}

void *OUTLINED_FUNCTION_374@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{

  return sub_231CD2C70(a1, a2, v4, 0, a3, a4);
}

uint64_t OUTLINED_FUNCTION_376()
{

  return swift_endAccess();
}

void OUTLINED_FUNCTION_377()
{
  v1 = v0[321];
  v2 = v0[320];
  v3 = v0[313];
  v4 = v0[307];
  v5 = v0[306];
}

uint64_t OUTLINED_FUNCTION_379(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 104);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_384()
{
  v2 = *(v0 - 120);
  result = *(v0 - 112);
  v3 = *(v0 - 128);
  return result;
}

void OUTLINED_FUNCTION_387()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[334];
  v4 = v0[333];
  v5 = v0[321];
}

uint64_t OUTLINED_FUNCTION_391(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[88] = a5;
  v5[87] = a4;
  v5[86] = a3;
  v5[85] = a2;
  return 0;
}

BOOL OUTLINED_FUNCTION_392(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_231CBA16C(a1, a2, a3);

  return os_log_type_enabled(v3, v4);
}

uint64_t OUTLINED_FUNCTION_394()
{
  result = v0[30];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[33];
  return result;
}

uint64_t OUTLINED_FUNCTION_398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + *(a1 + 20)) = 12;
  v22 = *(v21 + 8);
  return a20;
}

void *OUTLINED_FUNCTION_400(void *result)
{
  *(v3 + 1320) = result;
  result[2] = v4;
  result[3] = v2;
  result[4] = v5;
  result[5] = v1;
  result[6] = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_404()
{
}

void OUTLINED_FUNCTION_408()
{
  v3 = v1[321];
  v4 = v1[320];
  v5 = v1[314];
  v6 = v1[307];
  v7 = v1[306];
}

void OUTLINED_FUNCTION_409()
{
  v3 = v1[321];
  v4 = v1[320];
  v5 = v1[315];
  v6 = v1[307];
  v7 = v1[306];
}

void *OUTLINED_FUNCTION_410(void *a1)
{

  return memcpy(a1, (v1 + 1040), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_411()
{
  v2 = v0[326];
  v3 = v0[325];
  v4 = v0[322];
  v5 = v0[258];
}

uint64_t OUTLINED_FUNCTION_412()
{
  v2[336] = v0;
  v2[335] = v1;
  v2[334] = v3;
  v2[333] = v4;
  v6 = v2[322];

  return sub_231E102F0();
}

void *OUTLINED_FUNCTION_413@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{

  return sub_231CD2C70(a1, a2, v4, v3, a3, v6);
}

uint64_t OUTLINED_FUNCTION_414()
{
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];

  return sub_231E0F5F0();
}

uint64_t OUTLINED_FUNCTION_416(uint64_t a1)
{
  *(v1 + 14) = a1;
  *(v1 + 22) = v2;
  v6 = *(v4 - 144);

  return sub_231CB5000(v6, v3, (v4 - 120));
}

uint64_t OUTLINED_FUNCTION_418()
{
  v2 = v0[322];
  v3 = v0[266];
  v4 = v0[258];
  v5 = v0[256];

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_419@<X0>(void *a1@<X3>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W7>, uint64_t a6@<X8>)
{

  return sub_231CD2A28(3, 0, 0x200u, a1, a2, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_420()
{

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_421()
{

  return swift_arrayDestroy();
}

char *OUTLINED_FUNCTION_422()
{

  return sub_231D1C82C(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_423(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231D5EF7C(a1, a2, a3, v3, v4, 0);
}

uint64_t OUTLINED_FUNCTION_425(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v4 + 22) = 2085;

  return sub_231CB5000(a2, v5, va);
}

uint64_t OUTLINED_FUNCTION_426()
{
  *(v1 + v2) = v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_427(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 8);
}

uint64_t OUTLINED_FUNCTION_428()
{

  return sub_231E11CD0();
}

uint64_t OUTLINED_FUNCTION_429()
{
  v2 = v0[248];
  v3 = v0[232];
  v4 = v0[223];
  v5 = v0[221];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_433(char a1)
{
  *(v1 + 32) = a1;
}

uint64_t OUTLINED_FUNCTION_434(uint64_t a1)
{
  *(v1 + 88) = a1;

  return sub_231E10E30();
}

uint64_t OUTLINED_FUNCTION_435()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_436()
{
  v1 = v0[96];
  v2 = v0[95];
  result = v0[86];
  v4 = v0[84];
  return result;
}

uint64_t OUTLINED_FUNCTION_439()
{
  result = v0[286];
  v2 = v0[282];
  v3 = v0[283] + 8;
  return result;
}

void OUTLINED_FUNCTION_443()
{
  v1 = v0[80];
  v2 = v0[49];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[35];
}

uint64_t OUTLINED_FUNCTION_452(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_462()
{
  result = v0;
  v3 = *(v1 - 144);
  v4 = *(v1 - 120);
  return result;
}

void *OUTLINED_FUNCTION_465(void *result)
{
  *(v4 + 2200) = result;
  result[2] = v1;
  result[3] = v2;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_466()
{
  result = *(v0 - 112);
  v2 = *(v0 - 104);
  return result;
}

void OUTLINED_FUNCTION_468()
{
  *(v1 - 80) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void *OUTLINED_FUNCTION_478(void *result)
{
  *(v3 + 2752) = result;
  result[2] = v1;
  result[3] = v5;
  result[4] = v2;
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_487()
{
  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_488@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_489()
{
  v2 = v0[326];
  v3 = v0[286];
  v4 = v0[283];
  v5 = v0[282];
}

unint64_t OUTLINED_FUNCTION_490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;

  return sub_231DA167C();
}

uint64_t OUTLINED_FUNCTION_491()
{
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];

  return sub_231E0F5C0();
}

uint64_t OUTLINED_FUNCTION_492()
{
  v1[285] = v0;
  v3 = v1[274];
  v4 = v1[258];

  return swift_task_alloc();
}

unint64_t OUTLINED_FUNCTION_493()
{
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v0[85] + 16);

  return sub_231CFEB04();
}

void OUTLINED_FUNCTION_494(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_496(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_497(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void OUTLINED_FUNCTION_498(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_499()
{

  return sub_231E115F0();
}

uint64_t OUTLINED_FUNCTION_500(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_501()
{

  return sub_231DA3AF0();
}

uint64_t OUTLINED_FUNCTION_502@<X0>(unsigned __int8 a1@<W8>, __n128 a2@<Q0>)
{
  *v2 = a2;
  v2[1].n128_u8[0] = a1;
}

uint64_t OUTLINED_FUNCTION_503()
{

  return sub_231DA3AF0();
}

uint64_t OUTLINED_FUNCTION_504()
{

  return sub_231E10220();
}

uint64_t OUTLINED_FUNCTION_505()
{
  v2 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_506(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_231E106C0();
}