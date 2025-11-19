void sub_217937EFC()
{
  OUTLINED_FUNCTION_81();
  v39 = v1;
  v37 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7F8, &qword_217971CD8);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  v36 = &v36 - v7;
  v38 = sub_2179683BC();
  v8 = OUTLINED_FUNCTION_2(v38);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_49_4();
  v13 = sub_21796809C();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = sub_21796814C();
  v23 = OUTLINED_FUNCTION_2(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_5();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v36 - v32;
  v37(0);
  sub_2179684BC();
  sub_21796807C();
  (*(v16 + 8))(v21, v13);
  v34 = v36;
  sub_217936444(v36);
  (*(v10 + 8))(v0, v38);
  if (__swift_getEnumTagSinglePayload(v34, 1, v22) == 1)
  {
    sub_2178653BC(v34, &qword_27CB8E7F8, &qword_217971CD8);
  }

  else
  {
    (*(v25 + 32))(v33, v34, v22);
    (*(v25 + 104))(v30, *MEMORY[0x277CD7CD0], v22);
    sub_21796813C();
    v35 = *(v25 + 8);
    v35(v30, v22);
    v35(v33, v22);
  }

  OUTLINED_FUNCTION_80();
}

void sub_217938234()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_2(v3);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v12 = *(v9 + 16);
  v12(v14 - v13, v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B068, &unk_21796B720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2178653BC(v18, &qword_27CB8B070, &unk_217971CA0);
LABEL_6:
    v6[3] = v4;
    v6[4] = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    v12(boxed_opaque_existential_1, v0, v4);
    goto LABEL_7;
  }

  sub_21784A7D4(v18, v20);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_56_5() & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_2178653BC(v16, &qword_27CB8B088, &qword_21796B740);
    __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_6;
  }

  sub_21784A7D4(v16, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_7:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_217938560()
{
  v1 = OUTLINED_FUNCTION_16_10();
  v2(v1);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v18, v19, v20, v21, v22[0]);
  if ((OUTLINED_FUNCTION_56_5() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v22[3])
  {
LABEL_5:
    result = sub_2178653BC(v22, &qword_27CB8B088, &qword_21796B740);
    v13 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_42_2(v22);
  v11 = OUTLINED_FUNCTION_54_3();
  v12(v11);
  v13 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(v22);
LABEL_6:
  *v0 = v13;
  return result;
}

double sub_217938684()
{
  v0 = OUTLINED_FUNCTION_52_2();
  v1(v0);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_41_3();
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20, v21, v22[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v22[3])
  {
LABEL_5:
    sub_2178653BC(v22, &qword_27CB8B088, &qword_21796B740);
    return 1.0;
  }

  OUTLINED_FUNCTION_86_1(v22);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_11_12();
  v14 = v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v14;
}

double sub_217938770()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);
  OUTLINED_FUNCTION_57_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20, v21, v22[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v22[3])
  {
LABEL_5:
    sub_2178653BC(v22, &qword_27CB8B088, &qword_21796B740);
    return 1.0;
  }

  OUTLINED_FUNCTION_86_1(v22);
  v11 = *(v10 + 104);
  v12 = OUTLINED_FUNCTION_11_12();
  v14 = v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v14;
}

uint64_t sub_2179388A4()
{
  v0 = OUTLINED_FUNCTION_16_10();
  v1(v0);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21, v22, v23, v24, v25[0]);
  if (OUTLINED_FUNCTION_56_5())
  {
    if (v25[3])
    {
      OUTLINED_FUNCTION_42_2(v25);
      v11 = *(v10 + 120);
      v12 = OUTLINED_FUNCTION_15_11();
      v13(v12);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_4();
  }

  sub_2178653BC(v25, &qword_27CB8B088, &qword_21796B740);
  sub_21796870C();
  v15 = OUTLINED_FUNCTION_3_21();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_217938B94()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);
  OUTLINED_FUNCTION_57_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v22, v23, v24, v25, v26, v27, v28[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v10 = v29;
  if (!v29)
  {
LABEL_5:
    sub_2178653BC(v28, &qword_27CB8B088, &qword_21796B740);
    v10 = 0;
    return v10 & 1;
  }

  OUTLINED_FUNCTION_86_1(v28);
  v12 = *(v11 + 136);
  v13 = OUTLINED_FUNCTION_11_12();
  v15 = v14(v13);
  OUTLINED_FUNCTION_50_4(v15, v16, v17, v18, v19, v20);
  return v10 & 1;
}

uint64_t sub_217938D80()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);
  OUTLINED_FUNCTION_57_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v22, v23, v24, v25, v26, v27, v28[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v10 = v29;
  if (!v29)
  {
LABEL_5:
    sub_2178653BC(v28, &qword_27CB8B088, &qword_21796B740);
    v10 = 0;
    return v10 & 1;
  }

  OUTLINED_FUNCTION_86_1(v28);
  v12 = *(v11 + 144);
  v13 = OUTLINED_FUNCTION_11_12();
  v15 = v14(v13);
  OUTLINED_FUNCTION_50_4(v15, v16, v17, v18, v19, v20);
  return v10 & 1;
}

uint64_t sub_217938F6C()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);
  OUTLINED_FUNCTION_57_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v22, v23, v24, v25, v26, v27, v28[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v10 = v29;
  if (!v29)
  {
LABEL_5:
    sub_2178653BC(v28, &qword_27CB8B088, &qword_21796B740);
    v10 = 0;
    return v10 & 1;
  }

  OUTLINED_FUNCTION_86_1(v28);
  v12 = *(v11 + 152);
  v13 = OUTLINED_FUNCTION_11_12();
  v15 = v14(v13);
  OUTLINED_FUNCTION_50_4(v15, v16, v17, v18, v19, v20);
  return v10 & 1;
}

uint64_t sub_21793916C()
{
  v0 = OUTLINED_FUNCTION_16_10();
  v1(v0);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21, v22, v23, v24, v25[0]);
  if (OUTLINED_FUNCTION_56_5())
  {
    if (v25[3])
    {
      OUTLINED_FUNCTION_42_2(v25);
      v11 = *(v10 + 160);
      v12 = OUTLINED_FUNCTION_15_11();
      v13(v12);
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_4();
  }

  sub_2178653BC(v25, &qword_27CB8B088, &qword_21796B740);
  sub_217965EDC();
  v15 = OUTLINED_FUNCTION_3_21();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_217939274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 16);

  return v9(a4, a1, v7);
}

uint64_t sub_217939308()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);
  OUTLINED_FUNCTION_57_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v16, v17, v18, v19, v20, v21, v22[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v22[3])
  {
LABEL_5:
    sub_2178653BC(v22, &qword_27CB8B088, &qword_21796B740);
    return 0;
  }

  OUTLINED_FUNCTION_86_1(v22);
  v11 = *(v10 + 80);
  v12 = OUTLINED_FUNCTION_11_12();
  v14 = v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v14;
}

uint64_t sub_217939560()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v1(v0);
  OUTLINED_FUNCTION_57_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v22, v23, v24, v25, v26, v27, v28[0]);
  if ((OUTLINED_FUNCTION_47_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v10 = v29;
  if (!v29)
  {
LABEL_5:
    sub_2178653BC(v28, &qword_27CB8B088, &qword_21796B740);
    v10 = 0;
    return v10 & 1;
  }

  OUTLINED_FUNCTION_86_1(v28);
  v12 = *(v11 + 128);
  v13 = OUTLINED_FUNCTION_11_12();
  v15 = v14(v13);
  OUTLINED_FUNCTION_50_4(v15, v16, v17, v18, v19, v20);
  return v10 & 1;
}

uint64_t sub_21793979C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8F8, &qword_217971D70);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E900, &qword_217971D78);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  if (sub_217939628(MEMORY[0x277D2A350], &qword_27CB8D3E8, MEMORY[0x277D2A350], MEMORY[0x277D2A338]))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E908, &qword_217971D80);
    (*(*(v19 - 8) + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E910, &qword_27CB8E908, &qword_217971D80);
    sub_21793F104();
    return sub_217966F8C();
  }

  else
  {
    v21 = swift_allocObject();
    v22[1] = a4;
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E908, &qword_217971D80);
    sub_217864B2C(&qword_27CB8E910, &qword_27CB8E908, &qword_217971D80);
    sub_21796788C();

    (*(v8 + 8))(v11, v7);
    sub_2178AEC6C(v14, v18, &qword_27CB8E8F8, &qword_217971D70);
    swift_storeEnumTagMultiPayload();
    sub_21793F104();
    sub_217966F8C();
    return sub_2178653BC(v14, &qword_27CB8E8F8, &qword_217971D70);
  }
}

uint64_t sub_217939B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9A0, &qword_217971DD0);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9A8, &qword_217971DD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  if (sub_217939628(MEMORY[0x277D2A460], &qword_27CB8D3F0, MEMORY[0x277D2A460], MEMORY[0x277D2A390]))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9B0, &qword_217971DE0);
    (*(*(v19 - 8) + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E9B8, &qword_27CB8E9B0, &qword_217971DE0);
    sub_21793F2D4();
    return sub_217966F8C();
  }

  else
  {
    v21 = swift_allocObject();
    v22[1] = a4;
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9B0, &qword_217971DE0);
    sub_217864B2C(&qword_27CB8E9B8, &qword_27CB8E9B0, &qword_217971DE0);
    sub_21796788C();

    (*(v8 + 8))(v11, v7);
    sub_2178AEC6C(v14, v18, &qword_27CB8E9A0, &qword_217971DD0);
    swift_storeEnumTagMultiPayload();
    sub_21793F2D4();
    sub_217966F8C();
    return sub_2178653BC(v14, &qword_27CB8E9A0, &qword_217971DD0);
  }
}

uint64_t sub_217939EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8B8, &qword_217971D48);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8C0, &qword_217971D50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  if (sub_217939560())
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8C8, &qword_217971D58);
    (*(*(v19 - 8) + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E8D0, &qword_27CB8E8C8, &qword_217971D58);
    sub_21793F01C();
    return sub_217966F8C();
  }

  else
  {
    v21 = swift_allocObject();
    v22[1] = a4;
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8C8, &qword_217971D58);
    sub_217864B2C(&qword_27CB8E8D0, &qword_27CB8E8C8, &qword_217971D58);
    sub_21796788C();

    (*(v8 + 8))(v11, v7);
    sub_2178AEC6C(v14, v18, &qword_27CB8E8B8, &qword_217971D48);
    swift_storeEnumTagMultiPayload();
    sub_21793F01C();
    sub_217966F8C();
    return sub_2178653BC(v14, &qword_27CB8E8B8, &qword_217971D48);
  }
}

uint64_t sub_21793A260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9D8, &qword_217971DF0);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9E0, &qword_217971DF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  if (sub_217939560())
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9E8, &qword_217971E00);
    (*(*(v19 - 8) + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E9F0, &qword_27CB8E9E8, &qword_217971E00);
    sub_21793F3BC();
    return sub_217966F8C();
  }

  else
  {
    v21 = swift_allocObject();
    v22[1] = a4;
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9E8, &qword_217971E00);
    sub_217864B2C(&qword_27CB8E9F0, &qword_27CB8E9E8, &qword_217971E00);
    sub_21796788C();

    (*(v8 + 8))(v11, v7);
    sub_2178AEC6C(v14, v18, &qword_27CB8E9D8, &qword_217971DF0);
    swift_storeEnumTagMultiPayload();
    sub_21793F3BC();
    sub_217966F8C();
    return sub_2178653BC(v14, &qword_27CB8E9D8, &qword_217971DF0);
  }
}

uint64_t sub_21793A5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E880, &qword_217971D28);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E888, &qword_217971D30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  if (sub_217939560())
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E890, &qword_217971D38);
    (*(*(v19 - 8) + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E898, &qword_27CB8E890, &qword_217971D38);
    sub_21793EF34();
    return sub_217966F8C();
  }

  else
  {
    v21 = swift_allocObject();
    v22[1] = a4;
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E890, &qword_217971D38);
    sub_217864B2C(&qword_27CB8E898, &qword_27CB8E890, &qword_217971D38);
    sub_21796788C();

    (*(v8 + 8))(v11, v7);
    sub_2178AEC6C(v14, v18, &qword_27CB8E880, &qword_217971D28);
    swift_storeEnumTagMultiPayload();
    sub_21793EF34();
    sub_217966F8C();
    return sub_2178653BC(v14, &qword_27CB8E880, &qword_217971D28);
  }
}

uint64_t sub_21793A958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E940, &qword_217971D98);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E948, &qword_217971DA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v22 - v17;
  if (sub_217939628(MEMORY[0x277CD8590], &qword_27CB8B0E0, MEMORY[0x277CD8590], MEMORY[0x277D2B450]))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E950, &qword_217971DA8);
    (*(*(v19 - 8) + 16))(v18, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E958, &qword_27CB8E950, &qword_217971DA8);
    sub_21793F1EC();
    return sub_217966F8C();
  }

  else
  {
    v21 = swift_allocObject();
    v22[1] = a4;
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E950, &qword_217971DA8);
    sub_217864B2C(&qword_27CB8E958, &qword_27CB8E950, &qword_217971DA8);
    sub_21796788C();

    (*(v8 + 8))(v11, v7);
    sub_2178AEC6C(v14, v18, &qword_27CB8E940, &qword_217971D98);
    swift_storeEnumTagMultiPayload();
    sub_21793F1EC();
    sub_217966F8C();
    return sub_2178653BC(v14, &qword_27CB8E940, &qword_217971D98);
  }
}

uint64_t sub_21793AD38(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v11[-1] - v6, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7E8, &qword_217971CD0);
  v8 = OUTLINED_FUNCTION_47_4();
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return v8 ^ 1u;
}

uint64_t sub_21793AE24()
{
  OUTLINED_FUNCTION_32_3();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793AE74()
{
  OUTLINED_FUNCTION_32_3();
  sub_21793AEC4();
  return v0 & 1;
}

void sub_21793AEC4()
{
  OUTLINED_FUNCTION_81();
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_21796809C();
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_5();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_58_4();
  v26 = v8(v25);
  OUTLINED_FUNCTION_2(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v29);
  v31 = OUTLINED_FUNCTION_52_4(v30, v37);
  v32(v31, v0, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7E8, &qword_217971CD0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v38);
    sub_21793F4A4(v6, v4);
    sub_2179684BC();
    sub_21796808C();
    v33 = *(v18 + 8);
    v33(v1, v15);
    v34 = sub_21796862C();
    __swift_getEnumTagSinglePayload(v14, 1, v34);
    sub_2178653BC(v14, &qword_27CB8AC40, &qword_21796B248);
    sub_2179684BC();
    sub_21796806C();
    v36 = v35;
    v33(v23, v15);
    if (v36)
    {
    }
  }

  OUTLINED_FUNCTION_80();
}

void sub_21793B144()
{
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_4();
  v8 = sub_21796809C();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_58_4();
  v3(v18);
  sub_2179684BC();
  sub_21796808C();
  v19 = *(v11 + 8);
  v19(v1, v8);
  v20 = sub_21796862C();
  __swift_getEnumTagSinglePayload(v0, 1, v20);
  sub_2178653BC(v0, &qword_27CB8AC40, &qword_21796B248);
  sub_2179684BC();
  sub_21796806C();
  v22 = v21;
  v19(v16, v8);
  if (v22)
  {
  }

  OUTLINED_FUNCTION_80();
}

void sub_21793B2F8()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = sub_21796809C();
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_5();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  v21 = v2(0);
  OUTLINED_FUNCTION_2(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v24);
  v26 = OUTLINED_FUNCTION_52_4(v25, v32);
  v27(v26, v0, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7E8, &qword_217971CD0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v33);
    sub_2179684BC();
    sub_21796808C();
    v28 = *(v12 + 8);
    v28(v20, v9);
    v29 = sub_21796862C();
    __swift_getEnumTagSinglePayload(v8, 1, v29);
    sub_2178653BC(v8, &qword_27CB8AC40, &qword_21796B248);
    sub_2179684BC();
    sub_21796806C();
    v31 = v30;
    v28(v17, v9);
    if (v31)
    {
    }
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_21793B594()
{
  v1 = OUTLINED_FUNCTION_16_10();
  v3 = v2(v1);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(v14 - v7, v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7D8, &qword_217971CB8);
  if (swift_dynamicCast())
  {
    sub_21784A7D4(v14, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    OUTLINED_FUNCTION_15_11();
    sub_217965F0C();
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_2178653BC(v14, &qword_27CB8E7E0, &unk_217971CC0);
    sub_217965EDC();
    v10 = OUTLINED_FUNCTION_3_21();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_21793B6D8(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = a1(0);
  v8 = v4;
  v9 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_217965F0C();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_21793B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E930, &qword_217971D90);
  sub_217864B2C(&qword_27CB8E938, &qword_27CB8E930, &qword_217971D90);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793B910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E870, &qword_217971D20);
  sub_217864B2C(&qword_27CB8E878, &qword_27CB8E870, &qword_217971D20);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793BA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9C8, &qword_217971DE8);
  sub_217864B2C(&qword_27CB8E9D0, &qword_27CB8E9C8, &qword_217971DE8);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793BC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E830, &qword_217971CF8);
  sub_217864B2C(&qword_27CB8E838, &qword_27CB8E830, &qword_217971CF8);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793BDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E840, &qword_217971D00);
  sub_217864B2C(&qword_27CB8E848, &qword_27CB8E840, &qword_217971D00);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E980, &qword_217971DC0);
  sub_217864B2C(&qword_27CB8E988, &qword_27CB8E980, &qword_217971DC0);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E920, &qword_217971D88);
  sub_217864B2C(&qword_27CB8E928, &qword_27CB8E920, &qword_217971D88);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7C8, &qword_217971CB0);
  sub_217864B2C(&qword_27CB8E7D0, &qword_27CB8E7C8, &qword_217971CB0);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8A8, &qword_217971D40);
  sub_217864B2C(&qword_27CB8E8B0, &qword_27CB8E8A8, &qword_217971D40);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8E8, &qword_217971D68);
  sub_217864B2C(&qword_27CB8E8F0, &qword_27CB8E8E8, &qword_217971D68);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E970, &qword_217971DB8);
  sub_217864B2C(&qword_27CB8E978, &qword_27CB8E970, &qword_217971DB8);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E850, &qword_217971D08);
  sub_217864B2C(&qword_27CB8E858, &qword_27CB8E850, &qword_217971D08);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793C9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E990, &qword_217971DC8);
  sub_217864B2C(&qword_27CB8E998, &qword_27CB8E990, &qword_217971DC8);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793CB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E800, &qword_217971CE0);
  sub_217864B2C(&qword_27CB8E808, &qword_27CB8E800, &qword_217971CE0);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793CCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E810, &qword_217971CE8);
  sub_217864B2C(&qword_27CB8E818, &qword_27CB8E810, &qword_217971CE8);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793CE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E820, &qword_217971CF0);
  sub_217864B2C(&qword_27CB8E828, &qword_27CB8E820, &qword_217971CF0);
  sub_21796788C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21793D3E8()
{
  OUTLINED_FUNCTION_31_1();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793D438()
{
  OUTLINED_FUNCTION_31_1();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793D598()
{
  OUTLINED_FUNCTION_30_5();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793D5E8()
{
  OUTLINED_FUNCTION_30_5();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793D938()
{
  OUTLINED_FUNCTION_28_4();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793D988()
{
  OUTLINED_FUNCTION_28_4();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793DA14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217968C2C();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_21793DA8C()
{
  OUTLINED_FUNCTION_27_6();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793DADC()
{
  OUTLINED_FUNCTION_27_6();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793DBB4@<X0>(uint64_t a1@<X8>)
{
  sub_21796591C();
  sub_21793F4A4(&qword_27CB8D3E8, MEMORY[0x277D2A350]);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (swift_dynamicCast())
  {
    v2 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v3 = v8;
      __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
      (*(v3 + 88))(v2, v3);
      return __swift_destroy_boxed_opaque_existential_1(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  sub_2178653BC(&v6, &qword_27CB8B088, &qword_21796B740);
  v5 = sub_217968C2C();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
}

uint64_t sub_21793E030()
{
  OUTLINED_FUNCTION_45_3();
  sub_217937EFC();
  return v0 & 1;
}

uint64_t sub_21793E27C()
{
  OUTLINED_FUNCTION_39_5();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793E2CC()
{
  OUTLINED_FUNCTION_39_5();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793E498()
{
  OUTLINED_FUNCTION_38_3();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793E4E8()
{
  OUTLINED_FUNCTION_38_3();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793E570()
{
  OUTLINED_FUNCTION_43_3();
  sub_217937EFC();
  return v0 & 1;
}

uint64_t sub_21793E62C()
{
  OUTLINED_FUNCTION_44_3();
  sub_217937EFC();
  return v0 & 1;
}

uint64_t sub_21793E7C0()
{
  OUTLINED_FUNCTION_37_4();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793E810()
{
  OUTLINED_FUNCTION_37_4();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t sub_21793E8C8()
{
  OUTLINED_FUNCTION_34_3();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793E918()
{
  OUTLINED_FUNCTION_34_3();
  sub_21793AEC4();
  return v0 & 1;
}

uint64_t Artwork.Treatment.hashValue.getter()
{
  v1 = *v0;
  sub_21796973C();
  MEMORY[0x21CEA86B0](v1);
  return sub_21796977C();
}

unint64_t sub_21793EA7C()
{
  result = qword_27CB8E7C0;
  if (!qword_27CB8E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E7C0);
  }

  return result;
}

_BYTE *_s9TreatmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21793EE64()
{
  OUTLINED_FUNCTION_23_7();
  sub_217937BF0();
  return v0 & 1;
}

uint64_t sub_21793EEB4()
{
  OUTLINED_FUNCTION_23_7();
  sub_21793AEC4();
  return v0 & 1;
}

unint64_t sub_21793EF34()
{
  result = qword_27CB8E8A0;
  if (!qword_27CB8E8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E880, &qword_217971D28);
    sub_217864B2C(&qword_27CB8E898, &qword_27CB8E890, &qword_217971D38);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E8A0);
  }

  return result;
}

unint64_t sub_21793F01C()
{
  result = qword_27CB8E8D8;
  if (!qword_27CB8E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E8B8, &qword_217971D48);
    sub_217864B2C(&qword_27CB8E8D0, &qword_27CB8E8C8, &qword_217971D58);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E8D8);
  }

  return result;
}

unint64_t sub_21793F104()
{
  result = qword_27CB8E918;
  if (!qword_27CB8E918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E8F8, &qword_217971D70);
    sub_217864B2C(&qword_27CB8E910, &qword_27CB8E908, &qword_217971D80);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E918);
  }

  return result;
}

unint64_t sub_21793F1EC()
{
  result = qword_27CB8E960;
  if (!qword_27CB8E960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E940, &qword_217971D98);
    sub_217864B2C(&qword_27CB8E958, &qword_27CB8E950, &qword_217971DA8);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E960);
  }

  return result;
}

unint64_t sub_21793F2D4()
{
  result = qword_27CB8E9C0;
  if (!qword_27CB8E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E9A0, &qword_217971DD0);
    sub_217864B2C(&qword_27CB8E9B8, &qword_27CB8E9B0, &qword_217971DE0);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E9C0);
  }

  return result;
}

unint64_t sub_21793F3BC()
{
  result = qword_27CB8E9F8;
  if (!qword_27CB8E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E9D8, &qword_217971DF0);
    sub_217864B2C(&qword_27CB8E9F0, &qword_27CB8E9E8, &qword_217971E00);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E9F8);
  }

  return result;
}

uint64_t sub_21793F4A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_21793F4A4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_21793F4A4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_56_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return sub_217967F0C();
}

uint64_t sub_21793F958()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_21793FA14(void *a1)
{
  a1[2] = sub_21793FAC4(&qword_27CB8EA18);
  a1[3] = sub_21793FAC4(&qword_27CB8EA20);
  a1[4] = sub_21793FAC4(&qword_27CB8EA28);
  result = sub_21793FAC4(&qword_27CB8EA30);
  a1[5] = result;
  return result;
}

uint64_t sub_21793FAC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968E6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793FB78()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_21793FC34(void *a1)
{
  a1[2] = sub_21793FCE4(&qword_27CB8EA40);
  a1[3] = sub_21793FCE4(&qword_27CB8EA48);
  a1[4] = sub_21793FCE4(&qword_27CB8EA50);
  result = sub_21793FCE4(&qword_27CB8EA58);
  a1[5] = result;
  return result;
}

uint64_t sub_21793FCE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968C9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793FD98()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_21793FE50(void *a1)
{
  a1[2] = sub_21793FF00(&qword_27CB8EA68);
  a1[3] = sub_21793FF00(&qword_27CB8EA70);
  a1[4] = sub_21793FF00(&qword_27CB8EA78);
  result = sub_21793FF00(&qword_27CB8EA80);
  a1[5] = result;
  return result;
}

uint64_t sub_21793FF00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217968C5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793FFB4()
{
  if (qword_27CB8A380 != -1)
  {
    OUTLINED_FUNCTION_39_0();
  }

  return OUTLINED_FUNCTION_0_20();
}

uint64_t sub_217940024(void *a1)
{
  a1[1] = sub_2179400F8(&qword_27CB8E7F0);
  a1[2] = sub_2179400F8(&qword_27CB8EA90);
  a1[3] = sub_2179400F8(&qword_27CB8EA98);
  a1[4] = sub_2179400F8(&qword_27CB8EAA0);
  result = sub_2179400F8(qword_27CB8EAA8);
  a1[5] = result;
  return result;
}

uint64_t sub_2179400F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21796620C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return sub_21796560C();
}

double sub_217940188@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v38 = a5;
  v39 = a3;
  v36 = sub_21796595C();
  OUTLINED_FUNCTION_10(v36);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = sub_217965C6C();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v35 = *a2;
  v24 = a2[1];
  v25 = a2[2];
  v34 = a2[3];
  sub_217965C7C();
  (*(v16 + 104))(v21, *MEMORY[0x277D2A6B0], v13);
  v26 = sub_2178FF2D8();
  v27 = *(v16 + 8);
  v27(v21, v13);
  v27(v23, v13);
  v28 = 0;
  v29 = 0;
  if (v26)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v28 = sub_21796560C();
    v29 = v30;
  }

  sub_217965C5C();
  v31 = sub_217965C8C();
  OUTLINED_FUNCTION_10(v31);
  (*(v32 + 8))(a1);
  v40[0] = v35;
  v41 = v24;
  v42 = v25;
  v43 = v34;
  sub_2179425A4(&qword_27CB8B808, MEMORY[0x277D2A460]);
  *&result = sub_217940474(v12, v40, v28, v29, v36, v38).n128_u64[0];
  return result;
}

__n128 sub_217940474@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v19 = *(a2 + 8);
  v12 = *(a2 + 3);
  v13 = _s16SearchResultCellVMa();
  v14 = a6 + v13[15];
  *v14 = xmmword_217971E80;
  *(v14 + 16) = xmmword_217971E90;
  *(v14 + 32) = 0;
  OUTLINED_FUNCTION_10(a5);
  (*(v15 + 32))(a6, a1, a5);
  v16 = a6 + v13[13];
  *v16 = v11;
  result = v19;
  *(v16 + 8) = v19;
  *(v16 + 24) = v12;
  v18 = (a6 + v13[14]);
  *v18 = a3;
  v18[1] = a4;
  return result;
}

uint64_t sub_21794057C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    sub_217897C74();
    if (v6 > 0x3F)
    {
      return v5;
    }

    else
    {
      v9 = *(a1 + 24);
      v10 = *(a1 + 40);
      v3 = _s16SearchResultCellV9ConstantsVMa();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

_DWORD *sub_217940654(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_2179407A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v17[2] = 0;
              v17[3] = 0;
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[2] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2179409B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179409F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217940A10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_217940A60(uint64_t a1)
{
  v2 = sub_2179661DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v9 = swift_dynamicCast();
  if (v9)
  {
    (*(v3 + 8))(v6, v2);
  }

  return v9;
}

uint64_t sub_217940B70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v187 = sub_217966FAC();
  v3 = OUTLINED_FUNCTION_2(v187);
  v182 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v8 - v7);
  v180 = sub_21796722C();
  v9 = OUTLINED_FUNCTION_2(v180);
  v179 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v14 - v13);
  v160 = *(a1 - 1);
  v157 = *(v160 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_52(&v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = *(a1 + 2);
  v156 = *(v186 - 8);
  v17 = *(v156 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v20 - v19);
  v21 = *(a1 + 4);
  v151 = *(a1 + 3);
  v22 = v151;
  v188 = a1;
  *&v150 = v21;
  _s11ArtworkViewVMa();
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  v23 = sub_21796944C();
  *(&v150 + 1) = *(a1 + 5);
  v24 = *(&v150 + 1);
  OUTLINED_FUNCTION_3_17();
  WitnessTable = swift_getWitnessTable();
  v26 = MEMORY[0x277CDF918];
  v203[3] = WitnessTable;
  v203[4] = MEMORY[0x277CDF918];
  v203[1] = swift_getWitnessTable();
  v203[2] = v26;
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_23();
  v30 = sub_2179425A4(v28, v29);
  v202[2] = v27;
  v203[0] = v30;
  v202[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  v154 = v23;
  v152 = swift_getWitnessTable();
  v31 = v186;
  v197 = v186;
  v198 = v22;
  v199 = v23;
  v200 = v21;
  v201 = v24;
  v202[0] = v152;
  v32 = _s9HItemCellVMa();
  OUTLINED_FUNCTION_2(v32);
  v155 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v37);
  OUTLINED_FUNCTION_5_5();
  v38 = swift_getWitnessTable();
  v197 = v32;
  v198 = v38;
  v39 = v32;
  v148 = v32;
  v40 = v38;
  v149 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(OpaqueTypeMetadata2);
  v170 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v46);
  v173 = v47;
  v48 = sub_21796698C();
  OUTLINED_FUNCTION_2(v48);
  v176 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v53);
  v197 = v39;
  v198 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v196[0] = OpaqueTypeConformance2;
  v196[1] = v30;
  v54 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_24();
  v57 = sub_2179425A4(v55, v56);
  v162 = v48;
  v197 = v48;
  v198 = v187;
  v164 = v54;
  v199 = v54;
  v200 = v57;
  v161 = v57;
  v58 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2(v58);
  v167 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v63);
  v169 = v64;
  v65 = sub_21796698C();
  OUTLINED_FUNCTION_2(v65);
  v172 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v70);
  v174 = v71;
  v177 = sub_21796698C();
  v72 = OUTLINED_FUNCTION_2(v177);
  v175 = v73;
  v75 = *(v74 + 64);
  v76 = MEMORY[0x28223BE20](v72);
  v165 = &v147 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_52(&v147 - v78);
  v79 = v189;
  v80 = v31;
  (*(v156 + 16))(v184, v189, v31);
  v81 = v188;
  v82 = v188[14];
  v83 = v79 + v188[13];
  v84 = *(v83 + 8);
  v85 = *(v83 + 16);
  v86 = *(v83 + 24);
  LOBYTE(v197) = *v83;
  v198 = v84;
  v199 = v85;
  v200 = v86;
  v87 = *(v79 + v82 + 8);
  v156 = *(v79 + v82);
  v147 = v87;
  v88 = v160;
  v89 = v158;
  (*(v160 + 16))(v158, v79, v188);
  v90 = (*(v88 + 80) + 48) & ~*(v88 + 80);
  v91 = swift_allocObject();
  *&v92 = v80;
  v93 = v151;
  *(&v92 + 1) = v151;
  v94 = v150;
  v95 = *(&v150 + 1);
  *(v91 + 16) = v92;
  *(v91 + 32) = v94;
  v96 = v91 + v90;
  v97 = v94;
  (*(v88 + 32))(v96, v89, v81);

  sub_217863EC4(v86);

  v145 = v80;
  v99 = v153;
  sub_2178EFD2C(v184, &v197, 1, 1, 0, 0, 0, 11, v153, 0.0, 1u, v156, v98, 0, v93, sub_2179425EC, v91, v145, v93, v154, v97, v95, v152);
  v100 = v178;
  sub_21796720C();
  v101 = v148;
  sub_2179678AC();
  OUTLINED_FUNCTION_54(v202);
  v102(v100, v180);
  OUTLINED_FUNCTION_54(&v187);
  v103(v99, v101);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v105 = qword_27CB979C8;
  v104 = unk_27CB979D0;
  v106 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v108 = *(v97 + 8);

  v109 = v189;
  v110 = sub_21796849C();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v110;
  *(inited + 56) = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v112 = sub_217968EAC();
  v197 = v105;
  v198 = v104;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0xD000000000000010, 0x8000000217971E80);

  sub_2178ED924(v112, v197, v198, v106);
  v114 = v113;
  v116 = v115;
  v118 = v117;

  v119 = v171;
  v120 = v173;
  v121 = v185;
  sub_2178ED854(v114, v116, v118);

  OUTLINED_FUNCTION_54(v195);
  v122(v121, v120);
  v123 = v181;
  v124 = v162;
  v125 = v187;
  v126 = v164;
  v127 = v161;
  sub_217884F70();
  OUTLINED_FUNCTION_59();
  v128 = v163;
  sub_21796773C();
  OUTLINED_FUNCTION_54(v203);
  v129(v123, v125);
  OUTLINED_FUNCTION_54(&v199);
  v130(v119, v124);
  v131 = v109 + v188[15];
  v132 = *(v131 + 24);
  v197 = v124;
  v198 = v125;
  v199 = v126;
  v200 = v127;
  v133 = swift_getOpaqueTypeConformance2();
  v146 = v169;
  sub_2178935BC();
  v134 = v166;
  sub_2179679AC();
  OUTLINED_FUNCTION_54(v194);
  v135(v128, v146);
  sub_21796743C();
  v136 = *(v131 + 32);
  v192 = v133;
  v193 = MEMORY[0x277CDFC60];
  v137 = v174;
  v138 = swift_getWitnessTable();
  v139 = v165;
  sub_217967A0C();
  OUTLINED_FUNCTION_54(v196);
  v140(v134, v137);
  v190 = v138;
  v191 = MEMORY[0x277CDF918];
  v141 = v177;
  swift_getWitnessTable();
  v142 = v168;
  sub_2179560E4(v139, v141);
  v143 = *(v175 + 8);
  v143(v139, v141);
  sub_2179560E4(v142, v141);
  return (v143)(v142, v141);
}

uint64_t sub_217941980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v74 = a3;
  v79 = a6;
  v66 = *(a2 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](a1);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s11ArtworkViewVMa();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - v14;
  v16 = sub_21796698C();
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v16);
  v68 = &v64 - v18;
  v19 = sub_21796698C();
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v19);
  v75 = &v64 - v21;
  sub_21796732C();
  v22 = sub_21796698C();
  v73 = *(v22 - 8);
  v23 = *(v73 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v71 = &v64 - v26;
  v78 = sub_21796944C();
  v77 = *(v78 - 8);
  v27 = *(v77 + 64);
  v28 = MEMORY[0x28223BE20](v78);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v76 = &v64 - v31;
  *&v99 = a2;
  *(&v99 + 1) = v74;
  v100 = a4;
  v101 = a5;
  v32 = _s16SearchResultCellVMa();
  if (sub_217940A60(v32))
  {
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v22);
    WitnessTable = swift_getWitnessTable();
    v33 = MEMORY[0x277CDF918];
    v85 = MEMORY[0x277CDF918];
    v82 = swift_getWitnessTable();
    v83 = v33;
    v34 = swift_getWitnessTable();
    v35 = sub_2179425A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    v80 = v34;
    v81 = v35;
    swift_getWitnessTable();
    v36 = v30;
  }

  else
  {
    v74 = v30;
    (*(v66 + 16))(v65, a1, a2);
    v37 = (a1 + *(v32 + 60));
    v38 = *v37;
    v39 = v37[1];
    sub_21790B394();
    sub_21796742C();
    v40 = v37[2];
    v41 = swift_getWitnessTable();
    v42 = v68;
    sub_217967A0C();
    (*(v67 + 8))(v15, v12);
    sub_21796743C();
    v97 = v41;
    v43 = MEMORY[0x277CDF918];
    v98 = MEMORY[0x277CDF918];
    v44 = swift_getWitnessTable();
    sub_217967A0C();
    (*(v69 + 8))(v42, v16);
    if (qword_27CB8A3F0 != -1)
    {
      swift_once();
    }

    v45 = qword_27CB979F0;
    v99 = xmmword_27CB979E0;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

    v47 = *(&v99 + 1);
    v46 = v99;
    v95 = v44;
    v96 = v43;
    v48 = v19;
    v49 = swift_getWitnessTable();
    v50 = v72;
    v51 = v46;
    v52 = v75;
    sub_2178ED854(v51, v47, v45);

    (*(v70 + 8))(v52, v48);
    v53 = sub_2179425A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
    v93 = v49;
    v94 = v53;
    swift_getWitnessTable();
    v54 = v71;
    sub_2179560E4(v50, v22);
    v55 = v73;
    v56 = *(v73 + 8);
    v56(v50, v22);
    sub_2179560E4(v54, v22);
    v56(v54, v22);
    v36 = v74;
    (*(v55 + 32))(v74, v50, v22);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v22);
  }

  v57 = v76;
  sub_2178AEE20(v36, v76);
  v58 = *(v77 + 8);
  v59 = v78;
  v58(v36, v78);
  v91 = swift_getWitnessTable();
  v60 = MEMORY[0x277CDF918];
  v92 = MEMORY[0x277CDF918];
  v89 = swift_getWitnessTable();
  v90 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_2179425A4(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v87 = v61;
  v88 = v62;
  v86 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4(v57, v59);
  return (v58)(v57, v59);
}

uint64_t sub_217942358()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v5);
}

uint64_t sub_2179423EC()
{
  sub_21796973C();
  sub_217942358();
  return sub_21796977C();
}

BOOL sub_217942434(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v3;
  v11 = *(a1 + 32);
  v4 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v4;
  v13 = *(a2 + 32);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  return sub_2179422FC(v10, v12);
}

uint64_t sub_21794248C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_2179423EC();
}

uint64_t sub_2179424C8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_217942358();
}

uint64_t sub_217942504()
{
  sub_21796973C();
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_217942358();
  return sub_21796977C();
}

uint64_t sub_21794255C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2179425A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2179425EC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(_s16SearchResultCellVMa() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_217941980(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_2179426C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t (*a11)(uint64_t))
{
  v13 = *a8;
  v21 = a8[1];
  v14 = *(a8 + 16);
  v22 = *a10;
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *a9 = sub_217966ACC();
  *(a9 + 8) = v15;
  *(a9 + 32) = sub_217942878();
  *(a9 + 40) = v16;
  v17 = _s15LibraryMenuCellVMa();
  v18 = a9 + *(v17 + 96);
  *v18 = xmmword_217971FE0;
  *(v18 + 16) = 0x4022000000000000;
  *(a9 + 72) = a1;
  *(a9 + 80) = a2;
  *(a9 + 88) = a3;
  *(a9 + 96) = a4;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 48) = v13;
  *(a9 + 56) = v21;
  *(a9 + 64) = v14;
  *(a9 + 16) = a7;
  *(a9 + 24) = 0;
  *(a9 + 121) = v22;
  v19 = *(v17 + 92);
  sub_21796820C();
  return a11(a9 + v19);
}

uint64_t sub_217942834(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_217942878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8EBB0, &qword_217972000);
  sub_217967C0C();
  return v1;
}

void sub_2179428E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[6];
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966ADC();
  if (v4 <= 0x3F)
  {
    sub_21788C240();
    if (v5 <= 0x3F)
    {
      sub_217942ADC(319, &qword_27CB8EC38, qword_27CB8EBB0, &qword_217972000, MEMORY[0x277CE10B8]);
      if (v6 <= 0x3F)
      {
        sub_217942ADC(319, qword_27CB8EC40, qword_27CB8BF10, &qword_21796CF30, MEMORY[0x277CE11F8]);
        if (v7 <= 0x3F)
        {
          v8 = a1[2];
          v9 = a1[4];
          sub_21796821C();
          if (v10 <= 0x3F)
          {
            v12 = a1[5];
            _s15LibraryMenuCellV9ConstantsVMa();
            if (v11 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217942ADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_217942B58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217942BB0()
{
  if (*(v0 + 120))
  {
    return 1;
  }

  v2 = v0;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED20, &qword_217972168);
  MEMORY[0x21CEA6C70](&v17);
  v7 = v17;
  if (v17 != 6)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v18 = v9;
    v19 = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED58, &qword_217972178);
    sub_217967C1C();
    v10 = sub_217942834(v7, v17);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v18 = v9;
      v19 = v16;
      sub_217967C1C();
      v13 = sub_217942834(*(v0 + 121), v17);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          return result;
        }

        if (v10 == v13 + 1)
        {
          return 1;
        }
      }
    }
  }

  v18 = v3;
  v19 = v4;
  v20 = v5;
  MEMORY[0x21CEA6C70](&v17, v6);
  return v17 != 6 && *(v2 + 121) == v17;
}

uint64_t sub_217942D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECC8, &qword_217972130);
  OUTLINED_FUNCTION_3(v147);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52(&v132 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECD0, &qword_217972138);
  v9 = OUTLINED_FUNCTION_48(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_88();
  v148 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_52(&v132 - v14);
  v145 = *(a1 - 8);
  v15 = *(v145 + 8);
  MEMORY[0x28223BE20](v16);
  v157 = v17;
  OUTLINED_FUNCTION_52(&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_217966FAC();
  v19 = OUTLINED_FUNCTION_8_5(v18, &v168);
  v150 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_52(&v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_21796722C();
  v25 = OUTLINED_FUNCTION_8_5(v24, &v167 + 1);
  v138 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  v158 = *(a1 + 32);
  v32 = _s35LibrarySectionContentViewPropertiesVMa();
  v33 = sub_21796944C();
  OUTLINED_FUNCTION_48(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v36);
  v38 = &v132 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECD8, &qword_217972140);
  OUTLINED_FUNCTION_8_5(v39, &v163);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v44);
  v46 = &v132 - v45;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECE0, &qword_217972148);
  OUTLINED_FUNCTION_3(v134);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  v51 = &v132 - v50;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECE8, &qword_217972150);
  OUTLINED_FUNCTION_3(v136);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v54);
  v56 = &v132 - v55;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECF0, &qword_217972158);
  OUTLINED_FUNCTION_3(v152);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52(&v132 - v60);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECF8, &qword_217972160);
  v61 = OUTLINED_FUNCTION_3(v142);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_88();
  v143 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_52(&v132 - v66);
  sub_2179438FC(a1, v38);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v32);
  v155 = *(a1 + 24);
  v156 = v31;
  v159 = v31;
  v160 = v155;
  v161 = v158;
  v133 = a1;
  v154 = *(a1 + 48);
  v162 = v154;
  v163 = v2;
  v137 = v2;
  _s8MenuCellVMa();
  sub_217944D18(&qword_27CB8ED00, _s8MenuCellVMa);
  swift_getWitnessTable();
  sub_21796687C();
  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  sub_2178EE0A8(qword_27CB97A28, unk_27CB97A30, qword_27CB97A38);
  sub_217864B2C(&qword_27CB8ED08, &qword_27CB8ECD8, &qword_217972140);
  v67 = v135;
  sub_21796790C();

  (*(v41 + 8))(v46, v67);
  sub_21796720C();
  sub_217944484();
  sub_2179678AC();
  (*(v138 + 8))(v30, v139);
  sub_2178653BC(v51, &qword_27CB8ECE0, &qword_217972148);
  v68 = v133;
  v69 = v137;
  v139 = (v137 + *(v133 + 96));
  v70 = v139[2];
  v71 = &v56[*(v136 + 36)];
  v72 = *(sub_217966A2C() + 20);
  v73 = *MEMORY[0x277CE0118];
  v74 = sub_217966DAC();
  OUTLINED_FUNCTION_3(v74);
  (*(v75 + 104))(&v71[v72], v73);
  *v71 = v70;
  *(v71 + 1) = v70;
  v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADF0, &qword_21796B500) + 36)] = 0;
  v76 = v141;
  sub_217966A8C();
  sub_21794456C();
  sub_217944D18(&qword_27CB8AE00, MEMORY[0x277CDDFB0]);
  v77 = v153;
  v78 = v151;
  sub_21796773C();
  (*(v150 + 8))(v76, v78);
  sub_2178653BC(v56, &qword_27CB8ECE8, &qword_217972150);
  v79 = v145;
  v80 = v69;
  v150 = *(v145 + 2);
  v151 = v145 + 16;
  v81 = v144;
  (v150)(v144, v69, v68);
  v82 = *(v79 + 80);
  v83 = OUTLINED_FUNCTION_6_10();
  *&v84 = v156;
  v85 = v154;
  *(&v84 + 1) = v155;
  v86 = v158;
  *(v83 + 16) = v84;
  *(v83 + 32) = v86;
  *(v83 + 48) = v85;
  v87 = *(v79 + 4);
  v87(v83 + ((v82 + 56) & ~v82), v81, v68);
  v145 = v87;
  v88 = (v77 + *(v152 + 36));
  *v88 = sub_217944660;
  v88[1] = v83;
  v89 = *(v69 + 56);
  v90 = *(v69 + 64);
  v164 = *(v69 + 48);
  v165 = v89;
  v166 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED20, &qword_217972168);
  MEMORY[0x21CEA6C70](&v167, v91);
  LOBYTE(v164) = v167;
  v92 = OUTLINED_FUNCTION_3_25();
  v93(v92);
  v94 = OUTLINED_FUNCTION_6_10();
  v95 = OUTLINED_FUNCTION_2_15(v94);
  (v87)(v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BF10, &qword_21796CF30);
  sub_217944728();
  sub_217944894();
  v96 = v140;
  v97 = v153;
  sub_217967A6C();

  sub_2178653BC(v97, &qword_27CB8ECF0, &qword_217972158);
  v98 = OUTLINED_FUNCTION_3_25();
  v99(v98);
  v100 = OUTLINED_FUNCTION_6_10();
  v101 = OUTLINED_FUNCTION_2_15(v100);
  (v145)(v101);
  v102 = 1;
  v103 = (v96 + *(v142 + 36));
  *v103 = sub_217944AB0;
  v103[1] = v83;
  v103[2] = 0;
  v103[3] = 0;
  v104 = v147;
  v105 = v146;
  if ((*(v80 + 120) & 1) == 0)
  {
    v106 = *(v80 + 24);
    LOBYTE(v164) = *(v80 + 16);
    v165 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
    sub_217967C1C();
    if (v167)
    {
      v102 = 1;
    }

    else
    {
      v107 = v132;
      sub_217967D6C();
      v108 = sub_21796742C();
      v109 = v139;
      v110 = *v139;
      sub_21796660C();
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v119 = v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770) + 36);
      *v119 = v108;
      *(v119 + 8) = v112;
      *(v119 + 16) = v114;
      *(v119 + 24) = v116;
      *(v119 + 32) = v118;
      *(v119 + 40) = 0;
      v120 = sub_21796743C();
      v121 = v109[1];
      sub_21796660C();
      v122 = v107 + *(v104 + 36);
      *v122 = v120;
      *(v122 + 8) = v123;
      *(v122 + 16) = v124;
      *(v122 + 24) = v125;
      *(v122 + 32) = v126;
      *(v122 + 40) = 0;
      sub_217944B70(v107, v105);
      v102 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v105, v102, 1, v104);
  v127 = v143;
  sub_21785588C(v96, v143);
  v128 = v148;
  sub_217944BE0(v105, v148);
  v129 = v149;
  sub_21785588C(v127, v149);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED48, &qword_217972170);
  sub_217944BE0(v128, v129 + *(v130 + 48));
  sub_2178653BC(v105, &qword_27CB8ECD0, &qword_217972138);
  sub_2178653BC(v96, &qword_27CB8ECF8, &qword_217972160);
  sub_2178653BC(v128, &qword_27CB8ECD0, &qword_217972138);
  return sub_2178653BC(v127, &qword_27CB8ECF8, &qword_217972160);
}

uint64_t sub_2179438FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = sub_21796821C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9];
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = *(v2 + 104);
  v14 = *(v2 + 112);
  (*(v15 + 16))(&v18[-v9], v2 + *(a1 + 92));
  v19 = *(v2 + 121);
  v17 = *(a1 + 40);
  sub_21790AD88(v11, v12, v13, v14, v10, &v19, a2);
}

uint64_t sub_217943A3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[9];
  v3 = a1[10];
  v6 = a1[11];
  v5 = a1[12];
  __asm { FMOV            V0.2D, #8.0 }

  *(a2 + 40) = _Q0;
  *(a2 + 56) = xmmword_217971FF0;
  v12 = *(_s8MenuCellVMa() + 32);
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED60, &qword_2179721B0);
  swift_storeEnumTagMultiPayload();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
}

uint64_t sub_217943AF0(char a1, uint64_t a2)
{
  if (a1)
  {
    v5 = *(a2 + 16);
    v8 = *(a2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
    sub_217967C2C();
    v3 = *(a2 + 121);
    v6 = *(a2 + 48);
    v9 = *(a2 + 56);
    v11 = *(a2 + 64);
  }

  else
  {
    v7 = *(a2 + 48);
    v10 = *(a2 + 56);
    v12 = *(a2 + 64);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED20, &qword_217972168);
  sub_217967D1C();
}

uint64_t sub_217943BC8(uint64_t a1)
{
  _s15LibraryMenuCellVMa();
  sub_217942BB0();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  return sub_217967C2C();
}

uint64_t sub_217943C48(void *a1)
{
  v2 = sub_21796858C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v47 - v8;
  v48 = a1;
  v11 = *a1;
  v10 = a1[1];
  v12 = _s9ViewModelCMa();
  WitnessTable = swift_getWitnessTable();
  v47[3] = v10;
  v47[4] = v11;
  v47[1] = WitnessTable;
  v47[2] = v12;
  sub_217966A9C();
  sub_2178D860C();
  v15 = v14;

  v16 = 0;
  v62 = *(v15 + 16);
  v61 = v3 + 88;
  v17 = *MEMORY[0x277D2AF40];
  v60 = *MEMORY[0x277D2AF58];
  v59 = *MEMORY[0x277D2AF20];
  v58 = *MEMORY[0x277D2AF60];
  v57 = *MEMORY[0x277D2AF48];
  v56 = *MEMORY[0x277D2AF18];
  v55 = *MEMORY[0x277D2AF68];
  v54 = *MEMORY[0x277D2AF38];
  v53 = *MEMORY[0x277D2AF30];
  v52 = *MEMORY[0x277D2AF50];
  v51 = *MEMORY[0x277D2AF28];
  v18 = (v3 + 8);
  v50 = MEMORY[0x277D84F90];
  while (v62 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_48:
      v39 = *(v15 + 16);
      sub_2178E82E4();
      v15 = v40;
      goto LABEL_39;
    }

    v19 = *(v3 + 16);
    v19(v9, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v2);
    v19(v7, v9, v2);
    v20 = (*(v3 + 88))(v7, v2);
    if (v20 == v17)
    {
      v26 = 1;
LABEL_31:
      v49 = v26;
LABEL_32:
      (*v18)(v9, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v50 + 16);
        sub_2178E82E4();
        v50 = v31;
      }

      v27 = *(v50 + 16);
      v28 = v27 + 1;
      if (v27 >= *(v50 + 24) >> 1)
      {
        v47[0] = v27 + 1;
        sub_2178E82E4();
        v28 = v47[0];
        v50 = v32;
      }

      ++v16;
      v29 = v50;
      *(v50 + 16) = v28;
      *(v29 + v27 + 32) = v49;
    }

    else
    {
      if (v20 == v60)
      {
        v49 = 0;
        goto LABEL_32;
      }

      if (v20 == v59 || v20 == v58 || v20 == v57 || v20 == v56)
      {
        goto LABEL_26;
      }

      if (v20 == v55)
      {
        v26 = 3;
        goto LABEL_31;
      }

      if (v20 == v54)
      {
        v26 = 2;
        goto LABEL_31;
      }

      if (v20 != v53 && v20 != v52 && v20 != v51)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_21796950C();

        v67 = 0xD000000000000029;
        v68 = 0x8000000217976CF0;
        sub_217944D18(&qword_27CB8ED50, MEMORY[0x277D2AF70]);
        v45 = sub_21796966C();
        MEMORY[0x21CEA7F50](v45);

        MEMORY[0x21CEA7F50](46, 0xE100000000000000);
        result = sub_21796959C();
        __break(1u);
        return result;
      }

LABEL_26:
      (*v18)(v9, v2);
      ++v16;
    }
  }

  v2 = v48[4];
  v9 = v48[5];
  v67 = v2;
  v68 = v9;
  v64 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED58, &qword_217972178);
  sub_217967C2C();
  sub_217966A9C();
  sub_2178D860C();
  v34 = v33;

  v35 = *(v34 + 16);

  if (!v35)
  {
    return result;
  }

  v67 = v2;
  v68 = v9;

  sub_217967C1C();
  v15 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_39:
  v36 = *(v15 + 16);
  if (v36 >= *(v15 + 24) >> 1)
  {
    sub_2178E82E4();
    v15 = v41;
  }

  *(v15 + 16) = v36 + 1;
  *(v15 + v36 + 32) = 4;
  v64 = v2;
  v65 = v9;
  v63 = v15;
  sub_217967C2C();
  v67 = v2;
  v68 = v9;
  sub_217967C1C();
  v37 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = *(v37 + 16);
    sub_2178E82E4();
    v37 = v43;
  }

  v38 = *(v37 + 16);
  if (v38 >= *(v37 + 24) >> 1)
  {
    sub_2178E82E4();
    v37 = v44;
  }

  *(v37 + 16) = v38 + 1;
  *(v37 + v38 + 32) = 5;
  v64 = v2;
  v65 = v9;
  v63 = v37;
  sub_217967C2C();
}

uint64_t sub_2179442D4(double a1, double a2, double a3)
{
  sub_21796973C();
  sub_217910C74(a1, a2, a3);
  return sub_21796977C();
}

BOOL sub_217944374(double *a1, double *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a3[4];
  v11 = a3[5];
  v13 = a3[6];
  return sub_217910C58(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_217944398(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_2179442D4(*v1, v1[1], v1[2]);
}

uint64_t sub_2179443B4(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_217910C74(*v2, v2[1], v2[2]);
}

uint64_t sub_2179443D0(uint64_t a1, void *a2)
{
  sub_21796973C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_217910C74(*v2, v2[1], v2[2]);
  return sub_21796977C();
}

uint64_t sub_217944424(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217944474@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_217943A3C(*(v1 + 56), a1);
}

unint64_t sub_217944484()
{
  result = qword_27CB8ED10;
  if (!qword_27CB8ED10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE0, &qword_217972148);
    sub_217864B2C(&qword_27CB8ED08, &qword_27CB8ECD8, &qword_217972140);
    sub_217944D18(&qword_27CB8A710, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED10);
  }

  return result;
}

unint64_t sub_21794456C()
{
  result = qword_27CB8ED18;
  if (!qword_27CB8ED18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE8, &qword_217972150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE0, &qword_217972148);
    sub_217944484();
    swift_getOpaqueTypeConformance2();
    sub_217864B2C(&qword_27CB8ADF8, &qword_27CB8ADF0, &qword_21796B500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED18);
  }

  return result;
}

uint64_t sub_217944660()
{
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[6];
  v1 = _s15LibraryMenuCellVMa();
  OUTLINED_FUNCTION_48(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_9_15();

  return sub_217943AF0(v4, v5);
}

unint64_t sub_217944728()
{
  result = qword_27CB8ED28;
  if (!qword_27CB8ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECF0, &qword_217972158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE8, &qword_217972150);
    sub_217966FAC();
    sub_21794456C();
    sub_217944D18(&qword_27CB8AE00, MEMORY[0x277CDDFB0]);
    swift_getOpaqueTypeConformance2();
    sub_217944840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED28);
  }

  return result;
}

unint64_t sub_217944840()
{
  result = qword_27CB8ED30;
  if (!qword_27CB8ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED30);
  }

  return result;
}

unint64_t sub_217944894()
{
  result = qword_27CB8ED38;
  if (!qword_27CB8ED38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8BF10, &qword_21796CF30);
    sub_217944918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED38);
  }

  return result;
}

unint64_t sub_217944918()
{
  result = qword_27CB8ED40;
  if (!qword_27CB8ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED40);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  v19 = *(v0 + 48);
  v1 = (_s15LibraryMenuCellVMa() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 56) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 3);

  v6 = *(v3 + 4);

  v7 = *(v3 + 5);

  v8 = *(v3 + 6);

  v9 = *(v3 + 7);

  v10 = *(v3 + 10);

  v11 = *(v3 + 12);

  v12 = *(v3 + 14);

  v13 = v1[25];
  v14 = sub_21796821C();
  OUTLINED_FUNCTION_3(v14);
  (*(v15 + 8))(&v3[v13]);
  return swift_deallocObject();
}

uint64_t sub_217944AC8(uint64_t (*a1)(void))
{
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v2 = _s15LibraryMenuCellVMa();
  OUTLINED_FUNCTION_48(v2);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_9_15();

  return a1();
}

uint64_t sub_217944B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECC8, &qword_217972130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217944BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECD0, &qword_217972138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217944C50(uint64_t a1)
{
  v2 = sub_217966E2C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_217966B5C();
}

uint64_t sub_217944D18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{
  v3 = *(v2 - 248);
  *(a1 + 16) = *(v2 - 240);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v2 - 224);
  *(a1 + 48) = *(v2 - 256);
  return a1 + v1;
}

uint64_t OUTLINED_FUNCTION_3_25()
{
  result = v0;
  v3 = *(v1 - 280);
  v4 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  v3 = v0 + *(v1 - 232);

  return swift_allocObject();
}

uint64_t sub_217944DDC()
{
  sub_217946D3C();

  return sub_217966CCC();
}

uint64_t sub_217944E80(uint64_t a1)
{
  sub_217946CCC(a1, v3);
  sub_217946D3C();
  sub_217966CDC();
  return sub_2178653BC(a1, &qword_27CB8A630, qword_21796A7B0);
}

uint64_t static MusicPicker.PageID.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_21796595C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *a1;
  v16 = *a2;
  switch(v15 >> 61)
  {
    case 1uLL:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
      v28 = swift_projectBox();
      if (v16 >> 61 != 1)
      {
        goto LABEL_20;
      }

      v29 = v28;
      v30 = *(v27 + 48);
      v45 = *(v28 + v30);
      v46 = *(v28 + v30 + 8);
      v44 = *(v28 + v30 + 24);
      v31 = swift_projectBox();
      v43 = *(v31 + v30);
      v32 = *(v31 + v30 + 16);
      v42 = *(v31 + v30 + 8);
      v47 = *(v31 + v30 + 24);
      v48 = v32;
      v33 = *(v7 + 16);
      v33(v14, v29, v4);
      v34 = v31;
      v35 = v47;
      v33(v12, v34, v4);
      v36 = v48;
      v37 = OUTLINED_FUNCTION_8_13();
      sub_217863EC4(v37);

      sub_217863EC4(v35);
      if (sub_21796593C())
      {
        v52[0] = v45;
        v53 = v46;
        v54 = v44;
        v49[0] = v43;
        *&v50 = v42;
        *(&v50 + 1) = v36;
        v51 = v35;
        v26 = static MusicPicker.Click.SourceContext.== infix(_:_:)(v52, v49);
        v38 = *(v7 + 8);
        v38(v12, v4);
        v38(v14, v4);

        sub_2178643E0(v35);
        goto LABEL_16;
      }

      sub_2178643E0(v35);
      v41 = *(v7 + 8);
      v41(v12, v4);
      v41(v14, v4);
      goto LABEL_23;
    case 2uLL:
      if (v16 >> 61 != 2)
      {
        goto LABEL_20;
      }

      v22 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v23 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v52[0] = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = v22;
      v49[0] = v23;
      v50 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v51 = v24;
      goto LABEL_10;
    case 3uLL:
      if (v16 >> 61 != 3)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_4_19();
      v26 = v16 == v15;
      return v26 & 1;
    case 4uLL:
      if (v15 == 0x8000000000000000)
      {
        if (v16 != 0x8000000000000000)
        {
          goto LABEL_21;
        }

        sub_2178643E0(0x8000000000000000);
        v21 = 0x8000000000000000;
      }

      else
      {
        if (v16 != 0x8000000000000001)
        {
          goto LABEL_21;
        }

        sub_2178643E0(0x8000000000000001);
        v21 = 0x8000000000000001;
      }

      sub_2178643E0(v21);
      v26 = 1;
      return v26 & 1;
    default:
      if (v16 >> 61)
      {
LABEL_20:

LABEL_21:
        v39 = v16;
        goto LABEL_22;
      }

      if (*(v15 + 16) != *(v16 + 16))
      {
        v39 = OUTLINED_FUNCTION_8_13();
LABEL_22:
        sub_217863EC4(v39);
LABEL_23:
        OUTLINED_FUNCTION_4_19();
        v26 = 0;
        return v26 & 1;
      }

      v17 = *(v15 + 32);
      v18 = *(v15 + 48);
      v19 = *(v16 + 48);
      v20 = *(v16 + 24);
      v52[0] = *(v15 + 24);
      v53 = v17;
      v54 = v18;
      v49[0] = v20;
      v50 = *(v16 + 32);
      v51 = v19;
LABEL_10:
      v25 = OUTLINED_FUNCTION_8_13();
      sub_217863EC4(v25);
      v26 = static MusicPicker.Click.SourceContext.== infix(_:_:)(v52, v49);
LABEL_16:
      OUTLINED_FUNCTION_4_19();
      return v26 & 1;
  }
}

uint64_t static MusicPicker.Click.SourceContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[2];
  v6 = a2[3];
  if (v3)
  {
    if (v5)
    {
      v7 = a1[1] == a2[1] && v3 == v5;
      if (v7 || (sub_21796969C() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = v6;
  v12 = v4;
  v8 = OUTLINED_FUNCTION_8_13();
  sub_217863EC4(v8);
  v9 = static MusicPicker.PageID.== infix(_:_:)(&v12, &v11);
  OUTLINED_FUNCTION_4_19();
  return v9 & 1;
}

unint64_t MusicPicker.PageID.hash(into:)(uint64_t a1)
{
  v3 = sub_21796595C();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
      v24 = swift_projectBox();
      v25 = (v24 + *(v23 + 48));
      v26 = *v25;
      v28 = v25[1];
      v27 = v25[2];
      v29 = v25[3];
      (*(v6 + 16))(v11, v24, v3);
      MEMORY[0x21CEA86B0](3);

      sub_217863EC4(v29);
      sub_217946204(&qword_27CB8E1B8, MEMORY[0x277D2A460]);
      sub_217968ECC();
      MEMORY[0x21CEA86B0](v26);
      if (v27)
      {
        OUTLINED_FUNCTION_6_11();
        sub_217968FCC();
      }

      else
      {
        OUTLINED_FUNCTION_5_14();
      }

      MusicPicker.PageID.hash(into:)(a1);
      (*(v6 + 8))(v11, v3);

      return sub_2178643E0(v29);
    case 2uLL:
      v19 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v21 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v22 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      MEMORY[0x21CEA86B0](4);
      MEMORY[0x21CEA86B0](v19);
      if (!v21)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    case 3uLL:
      MEMORY[0x21CEA86B0](5);
      v18 = v12;
      goto LABEL_10;
    case 4uLL:
      v18 = v12 != 0x8000000000000000;
LABEL_10:
      result = MEMORY[0x21CEA86B0](v18);
      break;
    default:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = *(v12 + 32);
      v16 = *(v12 + 40);
      v17 = *(v12 + 48);
      MEMORY[0x21CEA86B0](2);
      MEMORY[0x21CEA86B0](v13);
      MEMORY[0x21CEA86B0](v14);
      if (v16)
      {
LABEL_3:
        OUTLINED_FUNCTION_6_11();
        OUTLINED_FUNCTION_3_26();
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_5_14();
      }

      result = MusicPicker.PageID.hash(into:)(a1);
      break;
  }

  return result;
}

uint64_t MusicPicker.PageID.hashValue.getter()
{
  v2[9] = *v0;
  sub_21796973C();
  MusicPicker.PageID.hash(into:)(v2);
  return sub_21796977C();
}

uint64_t sub_21794567C()
{
  v2[9] = *v0;
  sub_21796973C();
  MusicPicker.PageID.hash(into:)(v2);
  return sub_21796977C();
}

uint64_t MusicPicker.Click.SourceContext.sectionTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t MusicPicker.Click.SourceContext.pageID.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_217863EC4(v2);
}

unint64_t MusicPicker.Click.SourceContext.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x21CEA86B0](*v1);
  if (v4)
  {
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
  }

  return MusicPicker.PageID.hash(into:)(a1);
}

uint64_t MusicPicker.Click.SourceContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_9_16();
  MEMORY[0x21CEA86B0](v1);
  sub_21796975C();
  if (v3)
  {
    sub_217968FCC();
  }

  MusicPicker.PageID.hash(into:)(v6);
  return sub_21796977C();
}

uint64_t sub_21794581C()
{
  v1 = *(v0 + 24);
  v3[72] = *v0;
  v4 = *(v0 + 8);
  v5 = v1;
  sub_21796973C();
  MusicPicker.Click.SourceContext.hash(into:)(v3);
  return sub_21796977C();
}

uint64_t static MusicPicker.Click.ControlID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21796843C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = type metadata accessor for MusicPicker.Click.ControlID();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v35 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EDA0, &qword_2179721C8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v35 - v27;
  v29 = *(v26 + 56);
  sub_217945E54(a1, &v35 - v27);
  sub_217945E54(a2, &v28[v29]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_217945E54(v28, v21);
      if (OUTLINED_FUNCTION_7_14() == 1)
      {
        v32 = v36;
        (*(v36 + 32))(v11, &v28[v29], v4);
        v31 = sub_21796841C();
        v33 = *(v32 + 8);
        v33(v11, v4);
        v33(v21, v4);
        goto LABEL_11;
      }

      (*(v36 + 8))(v21, v4);
      goto LABEL_13;
    case 2u:
      sub_217945E54(v28, v18);
      if (OUTLINED_FUNCTION_7_14() != 2)
      {
        goto LABEL_13;
      }

      v30 = *v18;
      goto LABEL_6;
    case 3u:
      if (OUTLINED_FUNCTION_7_14() != 3)
      {
        goto LABEL_13;
      }

      sub_21792C198(v28);
      v31 = 1;
      return v31 & 1;
    default:
      sub_217945E54(v28, v23);
      if (OUTLINED_FUNCTION_7_14())
      {
LABEL_13:
        sub_2178653BC(v28, &qword_27CB8EDA0, &qword_2179721C8);
        v31 = 0;
      }

      else
      {
        v30 = *v23;
LABEL_6:
        v31 = v30 == v28[v29];
LABEL_11:
        sub_21792C198(v28);
      }

      return v31 & 1;
  }
}

uint64_t MusicPicker.Click.ControlID.hash(into:)()
{
  v1 = sub_21796843C();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = type metadata accessor for MusicPicker.Click.ControlID();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v16 = (v15 - v14);
  sub_217945E54(v0, v15 - v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v4 + 32))(v9, v16, v1);
      MEMORY[0x21CEA86B0](2);
      sub_217946204(&qword_27CB8EDA8, MEMORY[0x277CD7DC8]);
      sub_217968ECC();
      return (*(v4 + 8))(v9, v1);
    case 2u:
      v17 = *v16;
      v18 = 3;
      goto LABEL_4;
    case 3u:
      v19 = 0;
      return MEMORY[0x21CEA86B0](v19);
    default:
      v17 = *v16;
      v18 = 1;
LABEL_4:
      MEMORY[0x21CEA86B0](v18);
      v19 = v17;
      return MEMORY[0x21CEA86B0](v19);
  }
}

uint64_t MusicPicker.Click.ControlID.hashValue.getter()
{
  OUTLINED_FUNCTION_9_16();
  MusicPicker.Click.ControlID.hash(into:)();
  return sub_21796977C();
}

uint64_t sub_217945D78()
{
  sub_21796973C();
  MusicPicker.Click.ControlID.hash(into:)();
  return sub_21796977C();
}

uint64_t type metadata accessor for MusicPicker.Click.ControlID()
{
  result = qword_27CB8EE20;
  if (!qword_27CB8EE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217945E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPicker.Click.ControlID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217945F08()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_16();
  MEMORY[0x21CEA86B0](v1);
  return sub_21796977C();
}

double sub_217945FAC()
{
  qword_27CB8ED98 = 0;
  result = 0.0;
  xmmword_27CB8ED78 = 0u;
  unk_27CB8ED88 = 0u;
  return result;
}

uint64_t sub_217945FC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811AD4A0 != -1)
  {
    swift_once();
  }

  return sub_217946CCC(&xmmword_27CB8ED78, a1);
}

uint64_t View.musicPickerUserExperienceObserver<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_21796772C();

  return sub_2178653BC(v10, &qword_27CB8A630, qword_21796A7B0);
}

unint64_t sub_217946110()
{
  result = qword_27CB8EDB0;
  if (!qword_27CB8EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDB0);
  }

  return result;
}

unint64_t sub_217946168()
{
  result = qword_27CB8EDB8;
  if (!qword_27CB8EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDB8);
  }

  return result;
}

uint64_t sub_217946204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2179462DC()
{
  result = qword_27CB8EDE0;
  if (!qword_27CB8EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDE0);
  }

  return result;
}

unint64_t sub_217946378()
{
  result = qword_27CB8EDF8;
  if (!qword_27CB8EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDF8);
  }

  return result;
}

unint64_t sub_217946414()
{
  result = qword_27CB8EE10;
  if (!qword_27CB8EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE10);
  }

  return result;
}

unint64_t sub_21794646C()
{
  result = qword_27CB8EE18;
  if (!qword_27CB8EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE18);
  }

  return result;
}

uint64_t sub_217946508(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 8))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = (((*a1 >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*a1 & 0x1000000000000000) != 0))) ^ 0xF;
      if (v2 >= 0xB)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_217946554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 3) & 1) - 2 * a2) << 60;
    }
  }

  return result;
}

unint64_t *sub_2179465B0(unint64_t *result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    v2 = (a2 - 4) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

_BYTE *_s5ClickVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_217946690(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2179466E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_217946750()
{
  result = sub_21796843C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s5ClickV17LibraryMenuItemIDOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5ClickV17LibraryMenuItemIDOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t _s5ClickV13SearchGroupIDOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5ClickV13SearchGroupIDOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s5ClickV11ControlKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s5ClickV10ActionKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5ClickV10ActionKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_217946CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A630, qword_21796A7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217946D3C()
{
  result = qword_27CB8EE40;
  if (!qword_27CB8EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26()
{

  return sub_217968FCC();
}

unint64_t OUTLINED_FUNCTION_4_19()
{
  sub_2178643E0(v1);

  return sub_2178643E0(v0);
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return sub_21796975C();
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_21796975C();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_21796973C();
}

uint64_t _s6ModuleVMa()
{
  result = qword_27CB8EE48;
  if (!qword_27CB8EE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217946F14()
{
  sub_217946F98();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_217946F98()
{
  if (!qword_27CB8EE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
    v0 = sub_21796944C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8EE58);
    }
  }
}

uint64_t _s8ModuleIDOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ModuleIDOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217947164()
{
  result = qword_27CB8EE60;
  if (!qword_27CB8EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE60);
  }

  return result;
}

BOOL sub_2179471B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_2(v4);
  v37 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EEA8, &qword_217972B10);
  OUTLINED_FUNCTION_3(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = *a2;
  v22 = sub_217947F10(*a1);
  v24 = v23;
  v26 = v22 == sub_217947F10(v21) && v24 == v25;
  if (v26)
  {
  }

  else
  {
    v27 = sub_21796969C();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v28 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v28 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v29 = *(_s6ModuleVMa() + 24);
  v30 = *(v15 + 48);
  sub_217948468(a1 + v29, v20);
  sub_217948468(a2 + v29, &v20[v30]);
  OUTLINED_FUNCTION_4_20(v20);
  if (v26)
  {
    OUTLINED_FUNCTION_4_20(&v20[v30]);
    if (v26)
    {
      sub_2178653BC(v20, &qword_27CB8B0A0, &qword_21796B758);
      return 1;
    }

LABEL_21:
    sub_2178653BC(v20, &qword_27CB8EEA8, &qword_217972B10);
    return 0;
  }

  sub_217948468(v20, v14);
  OUTLINED_FUNCTION_4_20(&v20[v30]);
  if (v31)
  {
    (*(v37 + 8))(v14, v4);
    goto LABEL_21;
  }

  v33 = v37;
  (*(v37 + 32))(v10, &v20[v30], v4);
  sub_2179483CC(&qword_27CB8EEB0, &qword_27CB8C5C8);
  v34 = sub_217968F1C();
  v35 = *(v33 + 8);
  v35(v10, v4);
  v35(v14, v4);
  sub_2178653BC(v20, &qword_27CB8B0A0, &qword_21796B758);
  return (v34 & 1) != 0;
}

uint64_t sub_217947508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21796969C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_21796969C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_21796969C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_217947624(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x656C746974;
  }

  return 0x736D657469;
}

uint64_t sub_217947670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217947508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179476B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217947610();
  *a1 = result;
  return result;
}

uint64_t sub_2179476E0(uint64_t a1)
{
  v2 = sub_217948260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21794771C(uint64_t a1)
{
  v2 = sub_217948260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217947758(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EE90, &qword_217972B08);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217948260();
  sub_21796979C();
  v18[15] = *v3;
  v18[14] = 0;
  sub_217948378();
  sub_21796964C();
  if (!v2)
  {
    v14 = *(v3 + 8);
    v15 = *(v3 + 16);
    v18[13] = 1;
    sub_21796963C();
    v16 = *(_s6ModuleVMa() + 24);
    v18[12] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
    sub_2179483CC(&qword_27CB8EEA0, &qword_27CB8E740);
    sub_21796962C();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_217947954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_2(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_217947F10(*v0);
  sub_217968FCC();

  v13 = *(v0 + 8);
  v14 = *(v0 + 16);
  sub_217968FCC();
  v15 = _s6ModuleVMa();
  sub_217948468(v0 + *(v15 + 24), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    return sub_21796975C();
  }

  (*(v3 + 32))(v8, v12, v1);
  sub_21796975C();
  sub_2179483CC(&qword_27CB8EEB8, qword_27CB8C310);
  sub_217968ECC();
  return (*(v3 + 8))(v8, v1);
}

uint64_t sub_217947B50()
{
  sub_21796973C();
  sub_217947954();
  return sub_21796977C();
}

uint64_t sub_217947B90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EE70, &qword_217972B00);
  v9 = OUTLINED_FUNCTION_2(v8);
  v27[1] = v10;
  v27[2] = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  v16 = _s6ModuleVMa();
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217948260();
  v27[3] = v15;
  sub_21796978C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  sub_2179482B4();
  sub_21796961C();
  *v21 = v31;
  v29 = 1;
  *(v21 + 1) = sub_21796960C();
  *(v21 + 2) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v28 = 2;
  sub_2179483CC(&qword_27CB8EE88, &qword_27CB8CB28);
  sub_2179695FC();
  v24 = OUTLINED_FUNCTION_2_16();
  v25(v24);
  sub_217948308(v7, &v21[*(v16 + 24)]);
  sub_2178EBBC4(v21, v27[0]);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2178EBC28(v21);
}

uint64_t sub_217947EC4()
{
  v0 = sub_2179695EC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_217947F10(char a1)
{
  result = 0x6574736567677573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x796C746E65636572;
      break;
    case 3:
      result = 0x79616C706572;
      break;
    case 4:
      result = 0x6575657571;
      break;
    case 5:
      result = 0x676E6F732D706F74;
      break;
    case 6:
      result = 0x626C612D6C6C7566;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x73656C676E6973;
      break;
    case 9:
      result = 0x74616C69706D6F63;
      break;
    case 10:
      result = 0x2D73726165707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21794809C()
{
  sub_21796973C();
  sub_217947954();
  return sub_21796977C();
}

uint64_t sub_2179480E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_217947EC4();
  *a2 = result;
  return result;
}

unint64_t sub_217948114@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217947F10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_217948260()
{
  result = qword_27CB8EE78;
  if (!qword_27CB8EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE78);
  }

  return result;
}

unint64_t sub_2179482B4()
{
  result = qword_27CB8EE80;
  if (!qword_27CB8EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE80);
  }

  return result;
}

uint64_t sub_217948308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_217948378()
{
  result = qword_27CB8EE98;
  if (!qword_27CB8EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE98);
  }

  return result;
}

uint64_t sub_2179483CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
    sub_2179484D8(a2, MEMORY[0x277CD8238]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217948468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179484D8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s6ModuleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217948600()
{
  result = qword_27CB8EEC0;
  if (!qword_27CB8EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EEC0);
  }

  return result;
}

unint64_t sub_217948658()
{
  result = qword_27CB8EEC8;
  if (!qword_27CB8EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EEC8);
  }

  return result;
}

unint64_t sub_2179486B0()
{
  result = qword_27CB8EED0[0];
  if (!qword_27CB8EED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8EED0);
  }

  return result;
}

uint64_t sub_21794878C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21796653C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21796652C();
}

unint64_t sub_217948804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 8);
  sub_21796810C();
  v12 = sub_21796944C();
  OUTLINED_FUNCTION_48(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v15);
  v16 = *a5;
  v17 = _s25LibrarySectionContentViewVMa();
  v18 = (a7 + v17[19]);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *v18 = sub_217966ACC();
  v18[1] = v19;
  v20 = a7 + v17[20];
  *v20 = swift_getKeyPath();
  *(v20 + 40) = 0;
  v21 = (a7 + v17[21]);
  *v21 = sub_217948AEC();
  v21[1] = v22;
  v21[2] = v23;
  v24 = v17[22];
  OUTLINED_FUNCTION_36_6();
  v25 = v17[23];
  OUTLINED_FUNCTION_36_6();
  v26 = v17[26];
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v27 = (a7 + v26);
  *v27 = sub_21796560C();
  v27[1] = v28;
  v29 = (a7 + v17[27]);
  *v29 = xmmword_217972C30;
  v29[1] = xmmword_217972C40;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v16;
  *(a7 + 40) = 1;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0x8000000000000000;
  v30 = v17[18];
  v31 = sub_21796821C();
  OUTLINED_FUNCTION_3(v31);
  (*(v32 + 32))(a7 + v30, a6);
  v33 = swift_allocObject();
  *(v33 + 16) = v16;
  v35 = *(a7 + 48);
  v34 = *(a7 + 56);
  v36 = *(a7 + 64);
  *(v33 + 24) = *(a7 + 40);
  *(v33 + 32) = v35;
  *(v33 + 40) = v34;
  *(v33 + 48) = v36;
  *(a7 + v17[24]) = v33;
  v37 = a7 + v17[25];
  *v37 = 1;
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *(v37 + 24) = v33;

  sub_217863EC4(v36);
  return sub_217863EC4(v33);
}

uint64_t sub_217948B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  sub_21796810C();
  OUTLINED_FUNCTION_95_0();
  v6 = sub_21796944C();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v11);
  (*(v8 + 16))(&v14 - v12, a1, v6);
  OUTLINED_FUNCTION_153();
  sub_217967C0C();
  return (*(v8 + 8))(a1, v6);
}

void sub_217948C18(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  sub_21796821C();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[6];
    _s9ViewModelCMa();
    swift_getWitnessTable();
    sub_217966ADC();
    if (v7 <= 0x3F)
    {
      sub_21788C1DC();
      if (v8 <= 0x3F)
      {
        sub_217948E00();
        if (v9 <= 0x3F)
        {
          v10 = *(v3 + 8);
          sub_21796810C();
          sub_21796944C();
          sub_217967C4C();
          if (v11 <= 0x3F)
          {
            v13 = a1[5];
            _s25LibrarySectionContentViewV9ConstantsVMa();
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217948E00()
{
  if (!qword_27CB8EF58[0])
  {
    v0 = sub_217967C4C();
    if (!v1)
    {
      atomic_store(v0, qword_27CB8EF58);
    }
  }
}

uint64_t sub_217948E68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217948EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v255 = a2;
  sub_217966CEC();
  OUTLINED_FUNCTION_0_1();
  v253 = v4;
  v254 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v252 = v7;
  OUTLINED_FUNCTION_0_1();
  v264 = v8;
  v261 = *(v9 + 64);
  MEMORY[0x28223BE20](v10);
  v260 = v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21796738C();
  OUTLINED_FUNCTION_0_1();
  v250 = v13;
  v251 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v249 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C148, &unk_217972DC0);
  OUTLINED_FUNCTION_48(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_0();
  v248 = v21;
  sub_217966FEC();
  OUTLINED_FUNCTION_0_1();
  v244 = v23;
  v245 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  v243 = v26;
  sub_217966FFC();
  OUTLINED_FUNCTION_0_1();
  v246 = v28;
  v247 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v242 = v31;
  v32 = *(a1 + 16);
  v265 = *(a1 + 32);
  v33 = a1;
  v34 = *(v265 + 8);
  v35 = sub_21796810C();
  v262 = v33;
  v266 = *(v33 + 24);
  *&v36 = v32;
  *(&v36 + 1) = v266;
  v259 = v36;
  v268 = *(v33 + 40);
  v37 = *(v268 + 40);
  OUTLINED_FUNCTION_36();
  v263 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v290 = v259;
  v291 = v268;
  _s13ItemShelfCellVMa();
  v39 = MEMORY[0x277CDF928];
  sub_21796698C();
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_7_15();
  WitnessTable = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF918];
  v295 = WitnessTable;
  v296 = MEMORY[0x277CDF918];
  *&v259 = MEMORY[0x277CDFAD8];
  v293 = swift_getWitnessTable();
  v294 = v41;
  v42 = swift_getWitnessTable();
  *&v290 = v39;
  *(&v290 + 1) = v42;
  OUTLINED_FUNCTION_11_13();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8();
  v43 = sub_217967E9C();
  OUTLINED_FUNCTION_6_1();
  v44 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v290 = v35;
  *(&v290 + 1) = AssociatedTypeWitness;
  *&v291 = v43;
  *(&v291 + 1) = v44;
  v292 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796944C();
  OUTLINED_FUNCTION_6_12();
  v289 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  v288 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_21796665C();
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_9();
  sub_21796666C();
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_9();
  v46 = sub_21796686C();
  OUTLINED_FUNCTION_19();
  v47 = swift_getWitnessTable();
  v256 = sub_217873C34();
  *&v290 = v46;
  *(&v290 + 1) = MEMORY[0x277D837D0];
  v203 = v46;
  *&v291 = v47;
  *(&v291 + 1) = v256;
  v208 = v47;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v236 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_45_0();
  v226 = v52;
  v221 = *(&v268 + 1);
  v53 = _s18NavigationBarStyleVMa();
  v54 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v237 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_45_0();
  v223 = v59;
  OUTLINED_FUNCTION_36();
  done = _s15DoneToolbarItemVMa();
  OUTLINED_FUNCTION_16();
  v61 = swift_getWitnessTable();
  *&v290 = done;
  *(&v290 + 1) = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  *&v290 = v46;
  *(&v290 + 1) = MEMORY[0x277D837D0];
  *&v291 = v47;
  v63 = v256;
  *(&v291 + 1) = v256;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v204 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_17();
  v65 = swift_getWitnessTable();
  v286 = OpaqueTypeConformance2;
  v287 = v65;
  v66 = swift_getWitnessTable();
  *&v290 = done;
  *(&v290 + 1) = v61;
  v67 = swift_getOpaqueTypeConformance2();
  *&v290 = v54;
  *(&v290 + 1) = v62;
  v197[1] = v62;
  v197[2] = v54;
  *&v291 = v66;
  *(&v291 + 1) = v67;
  v199 = v67;
  v200 = v66;
  v68 = v67;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v235 = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_45_0();
  v198 = v73;
  *&v290 = v54;
  *(&v290 + 1) = v62;
  *&v291 = v66;
  *(&v291 + 1) = v68;
  v74 = OUTLINED_FUNCTION_26_6();
  *&v290 = v53;
  v214 = v53;
  v75 = MEMORY[0x277D837D0];
  *(&v290 + 1) = MEMORY[0x277D837D0];
  *&v291 = v74;
  v76 = v74;
  v207 = v74;
  *(&v291 + 1) = v63;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v234 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_45_0();
  v212 = v81;
  *&v290 = v53;
  *(&v290 + 1) = v75;
  *&v291 = v76;
  *(&v291 + 1) = v63;
  v82 = OUTLINED_FUNCTION_26_6();
  v216 = v53;
  v217 = v82;
  *&v290 = v53;
  *(&v290 + 1) = v82;
  v83 = v82;
  OUTLINED_FUNCTION_16_11();
  v84 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v227 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_45_0();
  v215 = v89;
  *&v290 = v53;
  *(&v290 + 1) = v83;
  v90 = OUTLINED_FUNCTION_26_6();
  v210 = v84;
  v211 = v90;
  *&v290 = v84;
  *(&v290 + 1) = v90;
  v91 = v90;
  OUTLINED_FUNCTION_15_12();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v222 = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_45_0();
  v209 = v96;
  *&v290 = v84;
  *(&v290 + 1) = v91;
  v97 = OUTLINED_FUNCTION_26_6();
  v201 = v53;
  v202 = v97;
  *&v290 = v53;
  *(&v290 + 1) = v97;
  v98 = v97;
  OUTLINED_FUNCTION_14_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_0_1();
  v233 = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_45_0();
  v257 = v103;
  *&v290 = v53;
  *(&v290 + 1) = v98;
  v104 = OUTLINED_FUNCTION_26_6();
  *&v290 = v53;
  *(&v290 + 1) = v75;
  v206 = v53;
  *&v291 = v104;
  *(&v291 + 1) = MEMORY[0x277D837F8];
  v105 = v104;
  v205 = v104;
  v106 = MEMORY[0x277D837F8];
  OUTLINED_FUNCTION_13_12();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_38_4();
  v220 = v107;
  OUTLINED_FUNCTION_0_1();
  v229 = v108;
  v110 = *(v109 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_45_0();
  v213 = v112;
  *&v290 = v53;
  *(&v290 + 1) = v75;
  *&v291 = v105;
  *(&v291 + 1) = v106;
  v218 = OUTLINED_FUNCTION_26_6();
  *&v290 = v53;
  *(&v290 + 1) = v218;
  v230 = MEMORY[0x277CDED18];
  v224 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v232 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_45_0();
  v258 = v117;
  v228 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v240 = v118;
  v120 = *(v119 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_45_0();
  v219 = v122;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8EFE0, &unk_217972DD0);
  v239 = sub_21796698C();
  OUTLINED_FUNCTION_0_1();
  v241 = v123;
  v125 = *(v124 + 64);
  v127 = MEMORY[0x28223BE20](v126);
  v231 = v197 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v127);
  v238 = v197 - v129;
  v130 = v262;
  v131 = v267;
  sub_21794A304(v262, &v290);
  v282 = v290;
  v132 = v131[1];
  v284 = *v131;
  v285 = v132;
  swift_checkMetadataState();
  sub_2179677EC();

  v133 = OpaqueTypeMetadata2;
  v134 = v266;
  v135 = v204;
  v136 = j__OUTLINED_FUNCTION_59();
  sub_21792D7FC(v136 & 1, v134, v133, v134, v135);
  v137 = *(v236 + 8);
  v138 = OUTLINED_FUNCTION_153();
  v139(v138);
  v274 = v263;
  v275 = v134;
  v276 = v265;
  v277 = v268;
  swift_checkMetadataState();
  v140 = v198;
  sub_217967A1C();
  v141 = *(v237 + 8);
  v142 = OUTLINED_FUNCTION_140();
  v143(v142);
  v144 = (v131 + *(v130 + 84));
  v145 = *v144;
  v236 = v144[1];
  v237 = v145;
  v226 = v144[2];
  *&v282 = v145;
  *(&v282 + 1) = v236;
  v283 = v226;
  OpaqueTypeMetadata2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C3C();
  v146 = v243;
  sub_217966FDC();
  v147 = v242;
  sub_217966FBC();
  (*(v244 + 8))(v146, v245);
  v148 = (v131 + *(v130 + 104));
  v149 = v148[1];
  *&v290 = *v148;
  *(&v290 + 1) = v149;

  v150 = v212;
  v151 = v214;
  sub_2179676DC();

  (*(v246 + 8))(v147, v247);
  (*(v235 + 8))(v140, v151);
  v152 = v248;
  sub_21796726C();
  v153 = sub_21796727C();
  __swift_storeEnumTagSinglePayload(v152, 0, 1, v153);
  v155 = v215;
  v154 = v216;
  sub_21796793C();
  sub_2178653BC(v152, &qword_27CB8C148, &unk_217972DC0);
  (*(v234 + 8))(v150, v154);
  v156 = v249;
  sub_21796737C();
  v158 = v209;
  v157 = v210;
  sub_21796795C();
  (*(v250 + 8))(v156, v251);
  (*(v227 + 8))(v155, v157);
  v159 = v201;
  MEMORY[0x21CEA6830](1, v201, v202);
  (*(v222 + 8))(v158, v159);
  *&v290 = v237;
  *(&v290 + 1) = v236;
  *&v291 = v226;
  sub_217967C1C();
  v290 = v282;
  v160 = v264;
  v256 = *(v264 + 16);
  v161 = v260;
  v162 = v262;
  v256(v260, v267, v262);
  v163 = *(v160 + 80);
  v250 = (v163 + 56) & ~v163;
  v164 = swift_allocObject();
  v165 = v266;
  *(v164 + 16) = v263;
  *(v164 + 24) = v165;
  *(v164 + 32) = v265;
  *(v164 + 40) = v268;
  v166 = *(v160 + 32);
  v264 = v160 + 32;
  v251 = v166;
  v166(v164 + ((v163 + 56) & ~v163), v161, v162);
  v167 = v206;
  sub_217862E84();
  v168 = v213;
  v169 = v257;
  sub_217967A6C();

  (*(v233 + 8))(v169, v167);
  v171 = v252;
  v170 = v253;
  v172 = v254;
  (*(v253 + 104))(v252, *MEMORY[0x277CDDDC0], v254);
  v173 = v220;
  v174 = v218;
  sub_21796794C();
  (*(v170 + 8))(v171, v172);
  v175 = v173;
  (*(v229 + 8))(v168, v173);
  v176 = v260;
  v177 = v262;
  v256(v260, v267, v262);
  v178 = v250;
  v179 = swift_allocObject();
  v180 = v263;
  v181 = v266;
  *(v179 + 16) = v263;
  *(v179 + 24) = v181;
  v182 = v265;
  *(v179 + 32) = v265;
  *(v179 + 40) = v268;
  v251(v179 + v178, v176, v177);
  *&v290 = v175;
  *(&v290 + 1) = v174;
  v183 = swift_getOpaqueTypeConformance2();
  v184 = v219;
  v185 = v224;
  v186 = v258;
  sub_2178D0790(sub_21794F9D4, v179, v224, v183);

  (*(v232 + 8))(v186, v185);
  sub_217967E3C();
  v269 = v180;
  v270 = v181;
  v271 = v182;
  v272 = v268;
  v273 = v267;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFF0, &unk_217972DE0);
  v187 = sub_217864644();
  v280 = v183;
  v281 = v187;
  v188 = v228;
  v189 = swift_getWitnessTable();
  sub_2179504C0(&qword_27CB8EFF8, &qword_27CB8EFF0, &unk_217972DE0, sub_21794FAB8);
  v190 = v231;
  sub_2179679DC();
  (*(v240 + 8))(v184, v188);
  OUTLINED_FUNCTION_13_2();
  v192 = sub_217864B2C(v191, &qword_27CB8EFE0, &unk_217972DD0);
  v278 = v189;
  v279 = v192;
  v193 = v239;
  swift_getWitnessTable();
  v194 = v238;
  sub_2179560E4(v190, v193);
  v195 = *(v241 + 8);
  v195(v190, v193);
  sub_2179560E4(v194, v193);
  return (v195)(v194, v193);
}

uint64_t sub_21794A304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v6 + 16) = v24;
  v7 = *(a1 + 32);
  *(v6 + 32) = v7;
  v23 = *(a1 + 40);
  v8 = v23;
  *(v6 + 40) = v23;
  (*(v3 + 32))(v6 + v5, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v9 = *(v7 + 8);
  v10 = sub_21796810C();
  v11 = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = v23;
  v29 = v24;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  v13 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x277CDF918];
  v34 = WitnessTable;
  v35 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = v15;
  v16 = swift_getWitnessTable();
  *&v29 = v13;
  *(&v29 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v17 = sub_217967E9C();
  v18 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v29 = v10;
  *(&v29 + 1) = AssociatedTypeWitness;
  *&v30 = v17;
  *(&v30 + 1) = v18;
  v31 = AssociatedConformanceWitness;
  sub_217967D9C();
  sub_21796944C();
  v28 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  sub_21796666C();
  swift_getWitnessTable();
  *&v26 = sub_21796685C();
  *(&v26 + 1) = v20;
  v21 = sub_21796686C();
  swift_getWitnessTable();
  sub_2179560E4(&v26, v21);

  v26 = v29;
  sub_2179560E4(&v26, v21);
}

uint64_t sub_21794A784()
{
  *&v4 = sub_2178C3764();
  *(&v4 + 1) = v0;
  done = _s15DoneToolbarItemVMa();
  WitnessTable = swift_getWitnessTable();
  sub_2178B9358(&v4, done, &v5);

  v4 = v5;
  MEMORY[0x21CEA6000](&v4, done, WitnessTable);
}

uint64_t sub_21794A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v53 = a2;
  *(&v53 + 1) = a3;
  v46 = a3;
  v54 = a4;
  v55 = a5;
  v48 = a5;
  v49 = a6;
  v56 = a6;
  v9 = _s25LibrarySectionContentViewVMa();
  v10 = *(v9 - 8);
  v42 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v42 - v14;
  v47 = a4;
  v15 = *(a4 + 8);
  v45 = a2;
  v16 = sub_21796810C();
  v17 = sub_21796944C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = *(v9 + 84);
  v50 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 2);
  v53 = v27;
  v54 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v29 = v51;
  v30 = v52;

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v16);
    v32 = *(v9 + 88);
    (*(v18 + 16))(v22, v24, v17);
    sub_217967C4C();
    sub_217967C2C();
    (*(v18 + 8))(v24, v17);
  }

  v33 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v33);
  v34 = v44;
  (*(v10 + 16))(v44, v50, v9);
  sub_21796920C();
  v35 = sub_2179691FC();
  v36 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  *(v37 + 2) = v35;
  *(v37 + 3) = v38;
  v39 = v46;
  *(v37 + 4) = v45;
  *(v37 + 5) = v39;
  v40 = v48;
  *(v37 + 6) = v47;
  *(v37 + 7) = v40;
  *(v37 + 8) = v49;
  (*(v10 + 32))(&v37[v36], v34, v9);
  sub_2178D207C();
}

uint64_t sub_21794ABEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  sub_21796920C();
  v8[18] = sub_2179691FC();
  v10 = sub_2179691BC();
  v8[19] = v10;
  v8[20] = v9;

  return MEMORY[0x2822009F8](sub_21794AC94, v10, v9);
}

uint64_t sub_21794AC94()
{
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v1;
  v3 = _s25LibrarySectionContentViewVMa();
  if (!sub_217948EC0(v3))
  {
    goto LABEL_6;
  }

  v4 = (*(v0 + 96) + *(v3 + 84));
  v5 = *v4;
  v6 = *(v4 + 2);
  *(v0 + 56) = v5;
  *(v0 + 72) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  OUTLINED_FUNCTION_40_2();
  if (v9)
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 96);

    sub_21794AF64(v3);
    OUTLINED_FUNCTION_39();

    return v12();
  }

  else
  {
LABEL_6:
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_21794ADF8;
    v15 = *(v0 + 96);

    return sub_21794B458(v3);
  }
}

uint64_t sub_21794ADF8()
{
  OUTLINED_FUNCTION_62();
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  v5 = *(v1 + 160);
  v6 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_21794AF0C, v6, v5);
}

uint64_t sub_21794AF0C()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_21794AF64(uint64_t a1)
{
  v3 = *(a1 + 16);
  v49 = *(a1 + 32);
  v53 = *(v49 + 8);
  v54 = v3;
  v4 = sub_21796810C();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - v6;
  v56 = v7;
  v55 = sub_21796944C();
  v52 = *(v55 - 8);
  v8 = *(v52 + 64);
  v9 = MEMORY[0x28223BE20](v55);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = sub_2179655BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v58 = v1;
  v20 = (v1 + *(a1 + 84));
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v61 = *v20;
  v62 = v22;
  v63 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v25 = v59;
  v24 = v60;

  v27 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v61 = v21;
    v62 = v22;
    v63 = v23;
    sub_217967C1C();
    v61 = v59;
    v62 = v60;
    sub_21796559C();
    sub_217873C34();
    v28 = sub_21796947C();
    v30 = v29;
    (*(v16 + 8))(v19, v15);

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = v57;
      v33 = *(v57 + 92);
      v34 = v55;
      v35 = sub_217967C4C();
      v36 = v58;
      v46 = v35;
      sub_217967C1C();
      v37 = v56;
      if (__swift_getEnumTagSinglePayload(v14, 1, v56))
      {
        v38 = v52;
        v39 = *(v52 + 8);
        v39(v14, v34);
      }

      else
      {
        (*(v47 + 16))(v48, v14, v37);
        v41 = v52;
        v39 = *(v52 + 8);
        v42 = (v39)(v14, v34);
        MEMORY[0x28223BE20](v42);
        v43 = *(v32 + 24);
        *(&v46 - 6) = v54;
        *(&v46 - 5) = v43;
        *(&v46 - 4) = v49;
        *(&v46 - 3) = *(v32 + 40);
        *(&v46 - 1) = v36;
        swift_getWitnessTable();
        v40 = sub_21796908C();
        v38 = v41;
        if (v40)
        {
          goto LABEL_11;
        }
      }

      v40 = sub_21796911C();
LABEL_11:
      v61 = v40;
      sub_21796919C();
      swift_getWitnessTable();
      v44 = v50;
      sub_21796811C();
      __swift_storeEnumTagSinglePayload(v44, 0, 1, v37);
      v45 = *(v32 + 88);
      (*(v38 + 16))(v51, v44, v34);
      sub_217967C2C();
      return (v39)(v44, v34);
    }
  }

  return result;
}

uint64_t sub_21794B458(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *(a1 + 16);
  v3 = *(*(a1 + 32) + 8);
  v2[23] = sub_21796810C();
  v4 = sub_21796944C();
  v2[24] = v4;
  v5 = *(v4 - 8);
  v2[25] = v5;
  v6 = *(v5 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v7 = sub_21796824C();
  v2[28] = v7;
  v8 = *(v7 - 8);
  v2[29] = v8;
  v9 = *(v8 + 64) + 15;
  v2[30] = swift_task_alloc();
  v10 = sub_2179655BC();
  v2[31] = v10;
  v11 = *(v10 - 8);
  v2[32] = v11;
  v12 = *(v11 + 64) + 15;
  v2[33] = swift_task_alloc();
  v13 = sub_21796821C();
  v2[34] = v13;
  v14 = *(v13 - 8);
  v2[35] = v14;
  v15 = *(v14 + 64) + 15;
  v2[36] = swift_task_alloc();
  sub_21796920C();
  v2[37] = sub_2179691FC();
  v17 = sub_2179691BC();
  v2[38] = v17;
  v2[39] = v16;

  return MEMORY[0x2822009F8](sub_21794B6AC, v17, v16);
}

uint64_t sub_21794B6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[20];
  (*(v12[35] + 16))(v12[36], v12[21] + *(v13 + 72), v12[34]);
  if (!sub_217948EC0(v13))
  {
    v14 = (v12[21] + *(v12[20] + 84));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v12[2] = *v14;
    v12[3] = v16;
    v12[4] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
    sub_217967C1C();
    v19 = v12[11];
    v18 = v12[12];

    OUTLINED_FUNCTION_40_2();
    if (v20)
    {
      v22 = v12[32];
      v21 = v12[33];
      v46 = v12[31];
      v12[5] = v15;
      v12[6] = v16;
      v12[7] = v17;
      sub_217967C1C();
      v23 = v12[14];
      v12[15] = v12[13];
      v12[16] = v23;
      sub_21796559C();
      sub_217873C34();
      v24 = sub_21796947C();
      v26 = v25;
      (*(v22 + 8))(v21, v46);

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = v12[36];
        v29 = v12[34];
        v12[8] = v15;
        v12[9] = v16;
        v12[10] = v17;
        sub_217967C1C();
        v30 = v12[17];
        v31 = v12[18];
        sub_2179681DC();
      }
    }
  }

  v32 = *(MEMORY[0x277CD7CF0] + 4);
  v33 = swift_task_alloc();
  v12[40] = v33;
  *v33 = v12;
  v33[1] = sub_21794B8B4;
  v34 = v12[36];
  v35 = v12[34];
  v36 = v12[30];
  OUTLINED_FUNCTION_102();

  return MEMORY[0x282124698](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_21794B8B4()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_21794BBB8;
  }

  else
  {
    v7 = sub_21794B9F0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21794B9F0()
{
  v1 = v0[37];
  v22 = v0[34];
  v23 = v0[36];
  v20 = v0[29];
  v21 = v0[35];
  v2 = v0[27];
  v18 = v0[30];
  v19 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];

  sub_21796823C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v16 = *(v7 + 88);
  v17 = *(v3 + 16);
  OUTLINED_FUNCTION_41_4();
  v9(v8);
  sub_217967C4C();
  sub_217967C2C();
  v10 = *(v3 + 8);
  v10(v2, v5);
  sub_217967C1C();
  v11 = *(v7 + 92);
  OUTLINED_FUNCTION_41_4();
  v13(v12);
  sub_217967C2C();
  v10(v2, v5);
  (*(v20 + 8))(v18, v19);
  (*(v21 + 8))(v23, v22);
  OUTLINED_FUNCTION_48_2();

  OUTLINED_FUNCTION_39();

  return v14();
}

uint64_t sub_21794BBB8()
{
  v25 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[35];

  (*(v4 + 8))(v2, v3);
  if (qword_27CB8A480 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v6 = sub_21796653C();
  __swift_project_value_buffer(v6, qword_27CB97B00);
  v7 = v5;
  v8 = sub_21796651C();
  v9 = sub_21796937C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[41];
  if (v10)
  {
    v12 = v0[22];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446466;
    v15 = sub_2179697DC();
    v17 = sub_217957F4C(v15, v16, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v0[19] = v11;
    v18 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v19 = sub_217968F8C();
    v21 = sub_217957F4C(v19, v20, &v24);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_217846000, v8, v9, "Failed to request items of type %{public}s from the user's music library. Error = %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA8ED0](v14, -1, -1);
    MEMORY[0x21CEA8ED0](v13, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_48_2();

  OUTLINED_FUNCTION_39();

  return v22();
}

uint64_t sub_21794BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a2;
  v49 = a4;
  v54[0] = a2;
  v54[1] = a3;
  v54[2] = a4;
  v55 = a5;
  v45 = a5;
  v56 = a6;
  v9 = _s25LibrarySectionContentViewVMa();
  v46 = *(v9 - 8);
  v43 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = &v41 - v13;
  v14 = type metadata accessor for MusicPicker.Click.ControlID();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v9;
  v18 = a1 + *(v9 + 80);
  sub_217956100();
  v19 = v55;
  if (v55)
  {
    v20 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    *v17 = *(a1 + 32);
    swift_storeEnumTagMultiPayload();
    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    v23 = *(a1 + 64);
    v50[0] = *(a1 + 40);
    v51 = v22;
    v52 = v21;
    v53 = v23;
    v24 = *(v20 + 16);

    sub_217863EC4(v23);
    v24(v17, v50, v19, v20);
    v25 = v53;

    sub_2178643E0(v25);
    sub_21792C198(v17);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_2178653BC(v54, &qword_27CB8A630, qword_21796A7B0);
  }

  v26 = v47;
  v27 = (a1 + *(v47 + 76));
  v28 = *v27;
  v29 = v27[1];
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966A9C();
  v30 = *(a1 + 32);
  sub_2178D839C();

  v31 = sub_21796923C();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v31);
  v32 = v46;
  v33 = v44;
  (*(v46 + 16))(v44, a1, v26);
  sub_21796920C();
  v34 = sub_2179691FC();
  v35 = (*(v32 + 80) + 72) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 2) = v34;
  *(v36 + 3) = v37;
  v38 = v49;
  *(v36 + 4) = v48;
  *(v36 + 5) = a3;
  v39 = v45;
  *(v36 + 6) = v38;
  *(v36 + 7) = v39;
  *(v36 + 8) = a6;
  (*(v32 + 32))(&v36[v35], v33, v26);
  sub_2178D207C();
}

uint64_t sub_21794C1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = sub_21796920C();
  v8[8] = sub_2179691FC();
  v13 = swift_task_alloc();
  v8[9] = v13;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v8[6] = v17;
  v14 = _s25LibrarySectionContentViewVMa();
  *v13 = v8;
  v13[1] = sub_21794C2B8;

  return sub_21794C440(v14);
}

uint64_t sub_21794C2B8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v7 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21794C3E8, v7, v6);
}

uint64_t sub_21794C3E8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_39();

  return v2();
}

uint64_t sub_21794C440(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = sub_21796920C();
  v2[10] = sub_2179691FC();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_21794C500;

  return sub_21794B458(a1);
}

uint64_t sub_21794C500()
{
  OUTLINED_FUNCTION_62();
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v7 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21794C630, v7, v6);
}

uint64_t sub_21794C630()
{
  v13 = v0;
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v3 + *(v2 + 80);
  sub_217956100();
  v5 = v0[5];
  if (v5)
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v12 = *(v6 + *(v7 + 96));
    v9 = *(v8 + 8);
    sub_217863EC4(v12);
    v9(&v12, v5, v8);
    sub_2178643E0(v12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_2178653BC((v0 + 2), &qword_27CB8A630, qword_21796A7B0);
  }

  OUTLINED_FUNCTION_39();

  return v10();
}

uint64_t sub_21794C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a7;
  v75 = a6;
  v72 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F018, &unk_217973A00);
  v64 = *(v71 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v71);
  v63 = &v58 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F028, &qword_217972DF0);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v69 = &v58 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B880, &qword_21796C6A0);
  v66 = *(v70 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = &v58 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F008, &unk_2179739F0);
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v58 - v18;
  v19 = *(a4 + 8);
  v20 = sub_21796810C();
  v21 = sub_21796944C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v58 - v25;
  v27 = *(v20 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v58 - v29;
  v59 = a2;
  *&v78 = a2;
  *(&v78 + 1) = a3;
  v60 = a3;
  v61 = a4;
  v79 = a4;
  v80 = a5;
  v62 = a5;
  v81 = v75;
  v31 = _s25LibrarySectionContentViewVMa();
  v32 = *(v31 + 88);
  sub_217967C4C();
  v33 = v72;
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v26, 1, v20) == 1)
  {
    (*(v22 + 8))(v26, v21);
LABEL_9:
    v46 = 1;
    v47 = v74;
    return __swift_storeEnumTagSinglePayload(v47, v46, 1, v73);
  }

  (*(v27 + 32))(v30, v26, v20);
  swift_getWitnessTable();
  if ((sub_21796932C() & 1) == 0)
  {
    (*(v27 + 8))(v30, v20);
    goto LABEL_9;
  }

  v34 = v27;
  v35 = (v33 + *(v31 + 84));
  v36 = *v35;
  v37 = *(v35 + 2);
  v78 = v36;
  v79 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v39 = v76;
  v38 = v77;

  v41 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = v65;
    sub_2179670DC();
    v43 = v66;
    v44 = v70;
    (*(v66 + 16))(v69, v42, v70);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00);
    v45 = v68;
    sub_217966F8C();
    (*(v43 + 8))(v42, v44);
  }

  else
  {
    MEMORY[0x28223BE20](v40);
    v48 = v60;
    *(&v58 - 6) = v59;
    *(&v58 - 5) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F030, &unk_217973A10);
    v49 = sub_217864B2C(qword_27CB8F038, &qword_27CB8F030, &unk_217973A10);
    v56 = MEMORY[0x277CE0BC8];
    v57 = MEMORY[0x277CE1410];
    v54 = MEMORY[0x277CE1428];
    v55 = v49;
    v50 = v63;
    sub_2179670CC();
    v51 = v64;
    v52 = v71;
    (*(v64 + 16))(v69, v50, v71);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00);
    v45 = v68;
    sub_217966F8C();
    (*(v51 + 8))(v50, v52);
  }

  (*(v34 + 8))(v30, v20);
  v47 = v74;
  sub_21789A7AC(v45, v74, &qword_27CB8F008, &unk_2179739F0);
  v46 = 0;
  return __swift_storeEnumTagSinglePayload(v47, v46, 1, v73);
}

uint64_t sub_21794CF00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217967BAC();
  *a1 = result;
  return result;
}

uint64_t sub_21794CF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_217873C34();

  result = sub_21796763C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21794CFA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a4;
  v28 = a1;
  v29 = a7;
  v10 = *(a4 + 8);
  v11 = sub_21796810C();
  v12 = *(a5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _s13ItemShelfCellVMa();
  sub_21796698C();
  sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v15 = MEMORY[0x277CDF918];
  v45 = WitnessTable;
  v46 = MEMORY[0x277CDF918];
  v43 = swift_getWitnessTable();
  v44 = v15;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v38 = v11;
  v39 = AssociatedTypeWitness;
  v40 = sub_217967E9C();
  v41 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_217967D9C();
  sub_21796944C();
  v37 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21796665C();
  swift_getWitnessTable();
  v16 = sub_21796666C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - v22;
  sub_2179673DC();
  v30 = a2;
  v31 = a3;
  v32 = v27;
  v33 = a5;
  v34 = v26;
  v35 = v28;
  sub_21796667C();
  swift_getWitnessTable();
  sub_2179560E4(v21, v16);
  v24 = *(v17 + 8);
  v24(v21, v16);
  sub_2179560E4(v23, v16);
  return (v24)(v23, v16);
}

uint64_t sub_21794D3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a6;
  v44 = a5;
  v46 = a4;
  v48 = a1;
  v49 = a7;
  v12 = sub_21796708C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 + 8);
  v16 = sub_21796810C();
  v17 = *(a5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = a2;
  v59 = a3;
  v60 = a5;
  v61 = a6;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  v19 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v21 = MEMORY[0x277CDF918];
  v65 = WitnessTable;
  v66 = MEMORY[0x277CDF918];
  v63 = swift_getWitnessTable();
  v64 = v21;
  v22 = swift_getWitnessTable();
  v58 = v19;
  v59 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v23 = sub_217967E9C();
  v24 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = v16;
  v59 = AssociatedTypeWitness;
  v60 = v23;
  v61 = v24;
  v62 = AssociatedConformanceWitness;
  sub_217967D9C();
  v26 = sub_21796944C();
  v57 = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v43[3] = v26;
  v43[2] = swift_getWitnessTable();
  v27 = sub_21796665C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v43 - v33;
  v43[1] = sub_217966E6C();
  v35 = a2;
  v58 = a2;
  v59 = a3;
  v36 = a3;
  v37 = v46;
  v38 = v44;
  v60 = v46;
  v61 = v44;
  v39 = v45;
  v62 = v45;
  v40 = *(v48 + *(_s25LibrarySectionContentViewVMa() + 108) + 24);
  v50 = v35;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v55 = v48;
  sub_21789A9E0();
  sub_21796664C();
  swift_getWitnessTable();
  sub_2179560E4(v32, v27);
  v41 = *(v28 + 8);
  v41(v32, v27);
  sub_2179560E4(v34, v27);
  return (v41)(v34, v27);
}

uint64_t sub_21794D8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v93 = a1;
  v96 = a7;
  v106 = a2;
  v107 = a3;
  v108 = a4;
  v109 = a5;
  v110 = a6;
  v97 = _s25LibrarySectionContentViewVMa();
  v83 = *(v97 - 8);
  v79 = *(v83 + 64);
  MEMORY[0x28223BE20](v97);
  v80 = &v70 - v12;
  v86 = a4;
  v13 = *(a4 + 8);
  v14 = sub_21796810C();
  v15 = *(a5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v106 = a2;
  v107 = a3;
  v85 = a3;
  v87 = a5;
  v108 = a5;
  v109 = a6;
  v88 = a6;
  _s13ItemShelfCellVMa();
  sub_21796698C();
  v17 = sub_21796698C();
  WitnessTable = swift_getWitnessTable();
  v19 = MEMORY[0x277CDF918];
  v104 = WitnessTable;
  v105 = MEMORY[0x277CDF918];
  v102 = swift_getWitnessTable();
  v103 = v19;
  v20 = swift_getWitnessTable();
  v106 = v17;
  v107 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_21796732C();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  swift_getTupleTypeMetadata2();
  v21 = sub_217967E9C();
  v22 = swift_getWitnessTable();
  v82 = v15;
  v84 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v106 = v14;
  v107 = AssociatedTypeWitness;
  v81 = AssociatedTypeWitness;
  v95 = v21;
  v108 = v21;
  v109 = v22;
  v75 = v22;
  v110 = AssociatedConformanceWitness;
  v24 = sub_217967D9C();
  v78 = *(v24 - 8);
  v25 = *(v78 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v77 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v76 = &v70 - v28;
  v29 = sub_21796944C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v70 - v33;
  v74 = *(v14 - 8);
  v35 = *(v74 + 64);
  v36 = MEMORY[0x28223BE20](v32);
  v89 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v90 = &v70 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v70 - v39;
  v41 = sub_21796944C();
  v94 = *(v41 - 8);
  v42 = *(v94 + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v91 = &v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v92 = &v70 - v45;
  v46 = *(v97 + 88);
  sub_217967C4C();
  v47 = v93;
  sub_217967C1C();
  if (__swift_getEnumTagSinglePayload(v34, 1, v14) == 1)
  {
    (*(v30 + 8))(v34, v29);
    v48 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v24);
    v101 = swift_getWitnessTable();
    swift_getWitnessTable();
  }

  else
  {
    v49 = v74;
    v72 = v24;
    v70 = *(v74 + 32);
    v50 = v40;
    v70(v40, v34, v14);
    v51 = *(v49 + 16);
    v71 = v40;
    v51(v90, v40, v14);
    v73 = v41;
    v52 = v83;
    v53 = v80;
    v54 = v47;
    v55 = v97;
    (*(v83 + 16))(v80, v54, v97);
    v51(v89, v50, v14);
    v56 = (*(v52 + 80) + 56) & ~*(v52 + 80);
    v57 = (v79 + v56 + *(v49 + 80)) & ~*(v49 + 80);
    v58 = swift_allocObject();
    v59 = v85;
    *(v58 + 2) = v84;
    *(v58 + 3) = v59;
    v60 = v87;
    *(v58 + 4) = v86;
    *(v58 + 5) = v60;
    *(v58 + 6) = v88;
    (*(v52 + 32))(&v58[v56], v53, v55);
    v41 = v73;
    v70(&v58[v57], v89, v14);
    v61 = v72;
    v62 = swift_getWitnessTable();
    v63 = v77;
    sub_217967D8C();
    (*(v49 + 8))(v71, v14);
    v98 = v62;
    swift_getWitnessTable();
    v64 = v76;
    sub_2179560E4(v63, v61);
    v65 = v78;
    v66 = *(v78 + 8);
    v66(v63, v61);
    sub_2179560E4(v64, v61);
    v66(v64, v61);
    v48 = v91;
    (*(v65 + 32))(v91, v63, v61);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v61);
  }

  v67 = v92;
  sub_2178AEE20(v48, v92);
  v68 = *(v94 + 8);
  v68(v48, v41);
  v100 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4(v67, v41);
  return (v68)(v67, v41);
}

uint64_t sub_21794E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v163 = a7;
  v170 = a6;
  v157 = a3;
  v168 = a2;
  v177 = a1;
  v162 = a9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v13 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v137 = &v134 - v14;
  v15 = sub_21796944C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v136 = *(TupleTypeMetadata2 - 8);
  v16 = *(v136 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v176 = &v134 - v18;
  v156 = v15;
  v155 = *(v15 - 8);
  v19 = *(v155 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v135 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v166 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  v167 = &v134 - v24;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v25 = *(*(v158 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v158);
  v160 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v159 = &v134 - v28;
  v150 = sub_21796722C();
  v149 = *(v150 - 8);
  v29 = *(v149 + 64);
  v30 = MEMORY[0x28223BE20](v150);
  v148 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = *(a4 - 8);
  v32 = *(v164 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = a4;
  v182 = a5;
  v183 = a7;
  v184 = a8;
  v35 = _s13ItemShelfCellVMa();
  v147 = *(v35 - 8);
  v36 = *(v147 + 64);
  MEMORY[0x28223BE20](v35);
  v144 = &v134 - v37;
  v139 = v35;
  v38 = sub_21796698C();
  v146 = *(v38 - 8);
  v39 = *(v146 + 64);
  MEMORY[0x28223BE20](v38);
  v143 = &v134 - v40;
  v141 = v38;
  v41 = sub_21796698C();
  v145 = *(v41 - 8);
  v42 = *(v145 + 64);
  MEMORY[0x28223BE20](v41);
  v142 = &v134 - v43;
  WitnessTable = swift_getWitnessTable();
  v44 = MEMORY[0x277CDF918];
  v188 = WitnessTable;
  v189 = MEMORY[0x277CDF918];
  v140 = swift_getWitnessTable();
  v186 = v140;
  v187 = v44;
  v169 = swift_getWitnessTable();
  v181 = v41;
  v182 = v169;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v153 = *(OpaqueTypeMetadata2 - 8);
  v46 = *(v153 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v48 = &v134 - v47;
  sub_21796732C();
  v154 = OpaqueTypeMetadata2;
  v175 = sub_21796698C();
  v171 = *(v175 - 8);
  v49 = *(v171 + 64);
  v50 = MEMORY[0x28223BE20](v175);
  v174 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v172 = &v134 - v52;
  v53 = *(v164 + 16);
  v152 = v164 + 16;
  v151 = v53;
  v53(v34, v177, a4);
  v181 = a4;
  v182 = a5;
  v183 = v170;
  v184 = v163;
  v185 = a8;
  v54 = _s25LibrarySectionContentViewVMa();
  v55 = v168;
  v56 = v168 + *(v54 + 100);
  v58 = *(v56 + 8);
  v57 = *(v56 + 16);
  v59 = *(v56 + 24);
  LOBYTE(v181) = *v56;
  v182 = v58;
  v183 = v57;
  v184 = v59;

  sub_217863EC4(v59);
  v60 = sub_2178AA2C4();
  v173 = a4;
  v133 = a5;
  v61 = v144;
  v134 = v34;
  sub_21791B630(v34, &v181, 0, 0, 11, 0, 1, v60, v144, v62, v63, v133, a4);
  sub_21796742C();
  v64 = v143;
  v65 = v139;
  sub_217967A0C();
  (*(v147 + 8))(v61, v65);
  sub_21796743C();
  v147 = v54;
  v66 = *(v55 + *(v54 + 108) + 8);
  v67 = v142;
  v68 = v141;
  sub_217967A0C();
  (*(v146 + 8))(v64, v68);
  v69 = v148;
  sub_21796720C();
  sub_2179678AC();
  (*(v149 + 8))(v69, v150);
  (*(v145 + 8))(v67, v41);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v71 = qword_27CB979C8;
  v70 = unk_27CB979D0;
  v72 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v74 = *(v170 + 8);

  v75 = v173;
  v76 = sub_21796849C();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v76;
  *(inited + 56) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v78 = sub_217968EAC();
  v181 = v71;
  v182 = v70;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](1819043139, 0xE400000000000000);

  sub_2178ED924(v78, v181, v182, v72);
  v80 = v79;
  v82 = v81;
  v84 = v83;

  v181 = v41;
  v182 = v169;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v174;
  v87 = v80;
  v88 = v154;
  sub_2178ED854(v87, v82, v84);

  (*(v153 + 8))(v48, v88);
  v89 = sub_21792C55C(&qword_27CB8A710, MEMORY[0x277CDE470]);
  v180[2] = OpaqueTypeConformance2;
  v180[3] = v89;
  v90 = v175;
  v169 = swift_getWitnessTable();
  sub_2179560E4(v86, v90);
  v170 = *(v171 + 8);
  v154 = v171 + 8;
  (v170)(v86, v90);
  v91 = v167;
  v92 = v177;
  v151(v167, v177, v75);
  __swift_storeEnumTagSinglePayload(v91, 0, 1, v75);
  sub_21796810C();
  swift_getWitnessTable();
  v93 = v166;
  sub_217968EEC();
  v94 = *(TupleTypeMetadata2 + 48);
  v95 = v155;
  v96 = *(v155 + 16);
  v97 = v176;
  v98 = v156;
  v96(v176, v91, v156);
  v96((v97 + v94), v93, v98);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v75);
  v100 = v95;
  if (EnumTagSinglePayload != 1)
  {
    v110 = v135;
    v111 = v176;
    v96(v135, v176, v98);
    v112 = v173;
    v113 = __swift_getEnumTagSinglePayload(&v111[v94], 1, v173);
    v102 = v111;
    v114 = v112;
    if (v113 != 1)
    {
      v128 = v164;
      v129 = v134;
      (*(v164 + 32))(v134, &v102[v94], v114);
      v130 = *(*(v163 + 32) + 8);
      LODWORD(TupleTypeMetadata2) = sub_217968F1C();
      v131 = *(v128 + 8);
      v131(v129, v114);
      v132 = *(v100 + 8);
      v132(v166, v98);
      v132(v167, v98);
      v131(v110, v114);
      v132(v102, v98);
      v104 = v175;
      v109 = v174;
      v105 = v171;
      if (TupleTypeMetadata2)
      {
        v106 = 1;
        v107 = v161;
        v108 = v159;
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v115 = *(v100 + 8);
    v115(v166, v98);
    v115(v167, v98);
    (*(v164 + 8))(v110, v112);
    v104 = v175;
    v105 = v171;
LABEL_8:
    (*(v136 + 8))(v102, TupleTypeMetadata2);
    v109 = v174;
LABEL_9:
    v116 = v137;
    sub_217967D6C();
    v117 = sub_21796742C();
    sub_21794F40C(v92, v147);
    sub_21796660C();
    v107 = v161;
    v118 = &v116[*(v161 + 36)];
    *v118 = v117;
    *(v118 + 1) = v119;
    *(v118 + 2) = v120;
    *(v118 + 3) = v121;
    *(v118 + 4) = v122;
    v118[40] = 0;
    v123 = v116;
    v108 = v159;
    sub_21789A7AC(v123, v159, &qword_27CB8A780, &qword_21796C770);
    v106 = 0;
    goto LABEL_10;
  }

  v101 = *(v95 + 8);
  v101(v93, v98);
  v101(v91, v98);
  v102 = v176;
  v103 = __swift_getEnumTagSinglePayload(&v176[v94], 1, v173);
  v104 = v175;
  v105 = v171;
  if (v103 != 1)
  {
    goto LABEL_8;
  }

  v101(v102, v98);
  v106 = 1;
  v107 = v161;
  v108 = v159;
  v109 = v174;
LABEL_10:
  v124 = v172;
  __swift_storeEnumTagSinglePayload(v108, v106, 1, v107);
  (*(v105 + 16))(v109, v124, v104);
  v181 = v109;
  v125 = v160;
  sub_2178D0634(v108, v160);
  v182 = v125;
  v180[0] = v104;
  v180[1] = v158;
  v178 = v169;
  v179 = sub_2179504C0(&qword_27CB8A7B8, &qword_27CB8A6E0, &qword_21796A8E0, sub_217864C64);
  sub_2178B9390(&v181, 2, v180);
  sub_2178653BC(v108, &qword_27CB8A6E0, &qword_21796A8E0);
  v126 = v170;
  (v170)(v124, v104);
  sub_2178653BC(v125, &qword_27CB8A6E0, &qword_21796A8E0);
  return v126(v109, v104);
}

double sub_21794F40C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  sub_217938234();
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 104))(v6, v7) * 48.0;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8 + *(v2 + *(a2 + 108));
}

uint64_t sub_21794F4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BB68, &qword_21796C930);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v40 - v16;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v18 = (a2 + *(_s25LibrarySectionContentViewVMa() + 84));
  v19 = *v18;
  v20 = *(v18 + 2);
  v42 = v19;
  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EFE8, &unk_2179739E0);
  sub_217967C1C();
  v42 = v41;
  sub_21796580C();
  v21 = sub_21796581C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
  sub_217873C34();
  v46 = sub_21796948C();
  v23 = v22;
  sub_2178653BC(v17, &qword_27CB8BB68, &qword_21796C930);

  v24 = *(a6 + 64);
  v40[1] = a1;
  v25 = v24(a3, a6);
  if (!v26)
  {
    goto LABEL_4;
  }

  *&v42 = v25;
  *(&v42 + 1) = v26;
  sub_21796580C();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
  v40[0] = a3;
  v27 = sub_21796948C();
  v28 = v21;
  v29 = v23;
  v31 = v30;
  sub_2178653BC(v17, &qword_27CB8BB68, &qword_21796C930);

  *&v42 = v27;
  *(&v42 + 1) = v31;
  *&v41 = v46;
  *(&v41 + 1) = v29;
  a3 = v40[0];
  LOBYTE(v27) = sub_21796949C();
  v23 = v29;
  v21 = v28;

  if (v27)
  {

    v32 = 1;
  }

  else
  {
LABEL_4:
    v33 = v46;
    v34 = (*(a6 + 72))(a3, a6);
    if (v35)
    {
      *&v42 = v34;
      *(&v42 + 1) = v35;
      sub_21796580C();
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v21);
      v36 = sub_21796948C();
      v38 = v37;
      sub_2178653BC(v17, &qword_27CB8BB68, &qword_21796C930);

      *&v42 = v36;
      *(&v42 + 1) = v38;
      *&v41 = v33;
      *(&v41 + 1) = v23;
      v32 = sub_21796949C();
    }

    else
    {

      v32 = 0;
    }
  }

  return v32 & 1;
}

uint64_t sub_21794F804(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

BOOL sub_21794F8AC(double *a1, double *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a3[2];
  v12 = a3[3];
  v14 = a3[4];
  v13 = a3[5];
  v15 = a3[6];
  return sub_2178D11F8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21794F8D0(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_21794F804(*v1, v1[1], v1[2], v1[3]);
}

uint64_t sub_21794F8EC(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_2178D12D0(*v2, v2[1], v2[2], v2[3]);
}

uint64_t sub_21794F908(uint64_t a1, void *a2)
{
  sub_21796973C();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_2178D12D0(*v2, v2[1], v2[2], v2[3]);
  return sub_21796977C();
}

uint64_t sub_21794F95C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21794F9AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_21794A784();
}

uint64_t sub_21794F9EC(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_48(v7);
  v9 = v1 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return a1(v9, v2, v3, v4, v5, v6);
}

unint64_t sub_21794FAB8()
{
  result = qword_27CB8F000;
  if (!qword_27CB8F000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F008, &unk_2179739F0);
    sub_217864B2C(&qword_27CB8B878, &qword_27CB8B880, &qword_21796C6A0);
    sub_217864B2C(&qword_27CB8F010, &qword_27CB8F018, &unk_217973A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8F000);
  }

  return result;
}

uint64_t sub_21794FB98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_21794CF38(v1[7], a1);
}

uint64_t sub_21794FBA8()
{
  v2 = v1;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v1[2] = v0[4];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_48(v7);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = swift_task_alloc();
  v2[7] = v12;
  *v12 = v2;
  OUTLINED_FUNCTION_19_8(v12);
  OUTLINED_FUNCTION_102();

  return sub_21794C1C0(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t objectdestroy_22Tm()
{
  v36 = *(v1 + 48);
  v37 = *(v1 + 32);
  v38 = *(v1 + 64);
  v3 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_13(v3);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 16);
  swift_unknownObjectRelease();
  v9 = v1 + v5;
  v10 = *(v1 + v5 + 8);

  v11 = *(v1 + v5 + 24);

  v12 = *(v1 + v5 + 56);

  sub_2178643E0(*(v1 + v5 + 64));
  v13 = OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_3(v13);
  (*(v14 + 8))(v1 + v5 + v2);
  v15 = *(v1 + v5 + v0[19]);

  v16 = v1 + v5 + v0[20];
  if (*(v16 + 40))
  {
    if (*(v16 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
    }
  }

  else
  {
    v17 = *v16;
  }

  v18 = v9 + v0[21];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  v21 = OUTLINED_FUNCTION_39_6();
  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10(v21);
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_140();
    v25(v24);
  }

  OUTLINED_FUNCTION_48_0();
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  v26 = sub_217967C4C();
  v27 = *(v18 + *(v26 + 28));

  v28 = v9 + v0[23];
  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10(v21);
    v30 = *(v29 + 8);
    v31 = OUTLINED_FUNCTION_140();
    v32(v31);
  }

  v33 = *(v28 + *(v26 + 28));

  OUTLINED_FUNCTION_49_5();
  sub_2178643E0(*(v21 + 24));
  v34 = *(v9 + v0[26] + 8);

  return swift_deallocObject();
}

uint64_t sub_21794FEBC()
{
  v2 = v1;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v1[2] = v0[4];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_48(v7);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = v0[2];
  v11 = v0[3];
  v12 = swift_task_alloc();
  v2[7] = v12;
  *v12 = v2;
  OUTLINED_FUNCTION_19_8(v12);
  OUTLINED_FUNCTION_102();

  return sub_21794ABEC(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_21794FFBC()
{
  OUTLINED_FUNCTION_62();
  v1 = *(*v0 + 56);
  v2 = *v0;
  OUTLINED_FUNCTION_6();
  *v3 = v2;

  OUTLINED_FUNCTION_39();

  return v4();
}

uint64_t objectdestroy_16Tm()
{
  v34 = *(v1 + 32);
  v35 = *(v1 + 16);
  v36 = *(v1 + 48);
  v3 = _s25LibrarySectionContentViewVMa();
  OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 64);
  v7 = (v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80)));
  v8 = *(v7 + 1);

  v9 = *(v7 + 3);

  v10 = *(v7 + 7);

  sub_2178643E0(*(v7 + 8));
  v11 = OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_3(v11);
  (*(v12 + 8))(&v7[v2]);
  v13 = *&v7[v0[19]];

  v14 = &v7[v0[20]];
  if (v14[5])
  {
    if (v14[3])
    {
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  else
  {
    v15 = *v14;
  }

  v16 = &v7[v0[21]];
  v17 = *(v16 + 1);

  v18 = *(v16 + 2);

  v19 = OUTLINED_FUNCTION_39_6();
  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10(v19);
    v21 = *(v20 + 8);
    v22 = OUTLINED_FUNCTION_140();
    v23(v22);
  }

  OUTLINED_FUNCTION_48_0();
  sub_21796944C();
  OUTLINED_FUNCTION_95_0();
  v24 = sub_217967C4C();
  v25 = *&v16[*(v24 + 28)];

  v26 = &v7[v0[23]];
  if (!OUTLINED_FUNCTION_33_1())
  {
    OUTLINED_FUNCTION_10(v19);
    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_140();
    v30(v29);
  }

  v31 = *&v26[*(v24 + 28)];

  OUTLINED_FUNCTION_49_5();
  sub_2178643E0(*(v19 + 24));
  v32 = *&v7[v0[26] + 8];

  return swift_deallocObject();
}

uint64_t sub_2179502D4()
{
  v7 = OUTLINED_FUNCTION_27_7();
  OUTLINED_FUNCTION_48(v7);
  v9 = v0 + ((*(v8 + 80) + 56) & ~*(v8 + 80));

  return sub_21794CFA4(v9, v2, v3, v4, v5, v6, v1);
}

uint64_t sub_2179503B8()
{
  v8 = *(OUTLINED_FUNCTION_27_7() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(v5 + 8);
  v12 = sub_21796810C();
  OUTLINED_FUNCTION_48(v12);
  v14 = v1 + ((v10 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_21794E290(v0, v1 + v9, v14, v3, v4, v5, v6, v7, v2);
}

uint64_t sub_2179504C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    OUTLINED_FUNCTION_0_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

uint64_t OUTLINED_FUNCTION_22_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_27_7()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];

  return _s25LibrarySectionContentViewVMa();
}

uint64_t OUTLINED_FUNCTION_28_5()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_32_4()
{
  v2 = *(v0 + 72);

  return sub_21796821C();
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);

  return sub_217948B28(v0, v1, v4, v2);
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  v4 = v2 + *(v0 + 88);
  v5 = *(v1 + 8);

  return sub_21796810C();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return sub_21796698C();
}

uint64_t OUTLINED_FUNCTION_47_5@<X0>(uint64_t a1@<X8>)
{

  return __swift_getEnumTagSinglePayload(v2 + a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_2()
{
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
}

uint64_t OUTLINED_FUNCTION_49_5()
{
  sub_2178643E0(*(v1 + *(v0 + 96)));
  v2 = *(v1 + *(v0 + 100) + 16);
}

void *sub_217950850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = *a6;
  v29 = *(a6 + 8);
  v20 = *(a6 + 3);
  v21 = _s12ItemShelfRowVMa();
  v22 = v21[13];
  v23 = *(a15 + 8);
  v24 = sub_21796810C();
  OUTLINED_FUNCTION_3(v24);
  (*(v25 + 32))(&a9[v22], a1);
  v26 = &a9[v21[14]];
  *v26 = a2;
  *(v26 + 1) = a3;
  *(v26 + 2) = a4;
  a9[v21[15]] = a5;
  v27 = &a9[v21[16]];
  *v27 = v19;
  *(v27 + 8) = v29;
  *(v27 + 3) = v20;
  a9[v21[17]] = a7;
  result = memcpy(&a9[v21[18]], a12, 0x58uLL);
  *a9 = a8;
  *(a9 + 1) = a10;
  *(a9 + 2) = a11;
  return result;
}

void sub_2179509C0(void *a1)
{
  sub_2178BFC6C(319, qword_27CB8DA00, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    v3 = a1[2];
    v4 = *(a1[4] + 8);
    sub_21796810C();
    if (v5 <= 0x3F)
    {
      v6 = a1[3];
      v7 = a1[5];
      _s9ItemShelfV12ColumnLayoutVMa();
      if (v8 <= 0x3F)
      {
        sub_2178BFC6C(319, &qword_27CB8ACD0, &_s8ModuleIDON, MEMORY[0x277D83D88]);
        if (v9 <= 0x3F)
        {
          _s9ItemShelfV9ConstantsVMa();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_217950B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217950B98()
{
  v3 = *v0;
  v4 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA88, &qword_2179709E8);
  sub_217967D3C();
  return v2;
}

uint64_t sub_217950BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_2179669FC();
  OUTLINED_FUNCTION_0_1();
  v50 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v43 = a1;
  v10 = a1[2];
  v46 = a1[3];
  v47 = v10;
  v11 = a1[4];
  v44 = a1[5];
  v45 = v11;
  v58 = v10;
  v59 = v46;
  v60 = v11;
  v61 = v44;
  _s13ItemShelfCellVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  v12 = sub_217967E9C();
  v13 = sub_217926268();
  v58 = v9;
  v59 = MEMORY[0x277D83B88];
  v60 = v12;
  v61 = v13;
  v62 = MEMORY[0x277D83B98];
  sub_217967D9C();
  OUTLINED_FUNCTION_19_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  swift_getWitnessTable();
  v14 = sub_217967CDC();
  OUTLINED_FUNCTION_0_1();
  v42 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  OUTLINED_FUNCTION_7_1();
  v21 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_17();
  v24 = sub_217952480(v22, v23);
  v58 = v14;
  v59 = v3;
  v25 = v3;
  v60 = v21;
  v61 = v24;
  v40 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v41 = v27;
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v40 - v34;
  sub_217966E6C();
  v36 = *(v48 + *(v43 + 18) + 64);
  v52 = v47;
  v53 = v46;
  v54 = v45;
  v55 = v44;
  v56 = v48;
  sub_217967CCC();
  v37 = v49;
  sub_2179669EC();
  sub_2179676FC();
  (*(v50 + 8))(v37, v25);
  (*(v42 + 8))(v20, v14);
  v58 = v14;
  v59 = v25;
  v60 = v21;
  v61 = v24;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4(v33, OpaqueTypeMetadata2);
  v38 = *(v41 + 8);
  v38(v33, OpaqueTypeMetadata2);
  sub_2179560E4(v35, OpaqueTypeMetadata2);
  return (v38)(v35, OpaqueTypeMetadata2);
}

uint64_t sub_217951088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a1;
  v43 = a6;
  v45 = a2;
  v46 = a3;
  v38 = a2;
  v39 = a3;
  v47 = a4;
  v48 = a5;
  v40 = a4;
  v41 = a5;
  v10 = _s12ItemShelfRowVMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &KeyPath - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8DD38, &qword_217970EF0);
  v36 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  _s13ItemShelfCellVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  sub_21796698C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  sub_21796698C();
  swift_getTupleTypeMetadata2();
  v15 = sub_217967E9C();
  v35 = sub_217926268();
  v45 = v14;
  v46 = MEMORY[0x277D83B88];
  v47 = v15;
  v48 = v35;
  v49 = MEMORY[0x277D83B98];
  v16 = sub_217967D9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &KeyPath - v22;
  v24 = v42;
  v25 = *(*(v42 + *(v10 + 56)) + 16);
  v45 = 0;
  v46 = v25;
  KeyPath = swift_getKeyPath();
  v26 = v37;
  (*(v11 + 16))(v37, v24, v10);
  v27 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v30 = v41;
  *(v28 + 4) = v40;
  *(v28 + 5) = v30;
  (*(v11 + 32))(&v28[v27], v26, v10);
  WitnessTable = swift_getWitnessTable();
  sub_217967D7C();
  v44 = WitnessTable;
  swift_getWitnessTable();
  sub_2179560E4(v21, v16);
  v31 = *(v17 + 8);
  v31(v21, v16);
  sub_2179560E4(v23, v16);
  return (v31)(v23, v16);
}

uint64_t sub_217951464@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v132 = a7;
  v133 = a2;
  v130 = sub_217966A2C();
  v12 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_217967E0C();
  v114 = *(v115 - 8);
  v15 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B2A8, &qword_21796B988);
  v17 = *(*(v125 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v125);
  v126 = &v105 - v19;
  v112 = *(a3 - 8);
  v20 = *(v112 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v111 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v135 = &v105 - v23;
  v139 = a3;
  v140 = a4;
  v141 = a5;
  v142 = a6;
  v24 = _s13ItemShelfCellVMa();
  v118 = *(v24 - 8);
  v25 = *(v118 + 64);
  MEMORY[0x28223BE20](v24);
  v116 = &v105 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8F0C0, &unk_217972EA0);
  v119 = v24;
  v27 = sub_21796698C();
  v123 = *(v27 - 8);
  v28 = *(v123 + 64);
  MEMORY[0x28223BE20](v27);
  v121 = &v105 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8BB08, &qword_21796C8C0);
  v124 = v27;
  v131 = sub_21796698C();
  v127 = *(v131 - 8);
  v30 = *(v127 + 64);
  v31 = MEMORY[0x28223BE20](v131);
  v129 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v120 = &v105 - v34;
  MEMORY[0x28223BE20](v33);
  v128 = &v105 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v105 - v38;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A6E0, &qword_21796A8E0);
  v40 = *(*(v117 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v117);
  v122 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v105 - v43;
  v45 = *a1;
  v134 = &v105 - v43;
  if (v45)
  {
    sub_217967D6C();
    v46 = sub_21796742C();
    v139 = a3;
    v140 = a4;
    v141 = a5;
    v142 = a6;
    v47 = _s12ItemShelfRowVMa();
    v48 = a5;
    v49 = v133;
    v50 = *(v133 + *(v47 + 72) + 48);
    sub_21796660C();
    v51 = &v39[*(v36 + 36)];
    *v51 = v46;
    v44 = v134;
    *(v51 + 1) = v52;
    *(v51 + 2) = v53;
    *(v51 + 3) = v54;
    *(v51 + 4) = v55;
    v51[40] = 0;
    sub_2178D05C4(v39, v44);
    v56 = 0;
  }

  else
  {
    v48 = a5;
    v49 = v133;
    v56 = 1;
  }

  __swift_storeEnumTagSinglePayload(v44, v56, 1, v36);
  v139 = a3;
  v140 = a4;
  v141 = v48;
  v142 = a6;
  v133 = a6;
  result = _s12ItemShelfRowVMa();
  if ((v45 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v58 = result;
  v110 = v14;
  v59 = (v49 + *(result + 56));
  v60 = *v59;
  if (v45 >= *(*v59 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v61 = a3;
  v62 = v49;
  v108 = v49 + *(result + 56);
  v109 = a4;
  v63 = *(result + 52);
  v64 = *(v60 + 32 + 8 * v45);
  v65 = *(v48 + 8);
  sub_21796810C();
  v107 = v48;
  sub_21796812C();
  v66 = v62 + v58[16];
  v67 = *(v66 + 8);
  result = *(v66 + 16);
  v68 = *(v66 + 24);
  LOBYTE(v139) = *v66;
  v140 = v67;
  v141 = result;
  v142 = v68;
  if (v45 >= *(v60 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v69 = *(v60 + 32 + 8 * v45);

  sub_217863EC4(v68);
  v70 = v111;
  sub_21796812C();
  v71 = v109;
  v106 = sub_217951FEC(v70, *(v62 + v58[17]), v61);
  v73 = v72;
  (*(v112 + 8))(v70, v61);
  v74 = *(v108 + 16);
  v75 = *(v62 + v58[15]);
  v76 = sub_217950B98();
  v77 = v116;
  sub_21791B630(v135, &v139, v106, v73, v75, v74, 0, v76, v116, v78, v79, v71, v61);
  v80 = v113;
  sub_217967DFC();
  v81 = v62 + v58[18];
  if (*(v81 + 56))
  {
    v82 = 1.0;
  }

  else
  {
    v82 = 0.0;
  }

  v83 = v126;
  (*(v114 + 32))(v126, v80, v115);
  *(v83 + *(v125 + 36)) = v82;
  v84 = *(v81 + 72);
  v85 = *(v130 + 20);
  v86 = *MEMORY[0x277CE0118];
  v87 = sub_217966DAC();
  v88 = v110;
  (*(*(v87 - 8) + 104))(v110 + v85, v86, v87);
  *v88 = v84;
  v88[1] = v84;
  v89 = v119;
  WitnessTable = swift_getWitnessTable();
  sub_217864B2C(&qword_27CB8F0C8, &qword_27CB8B2A8, &qword_21796B988);
  sub_217952480(&qword_27CB8F0D0, MEMORY[0x277CDFC08]);
  v91 = v121;
  sub_21796769C();
  sub_21788D5F4(v88);
  sub_2178653BC(v83, &qword_27CB8B2A8, &qword_21796B988);
  (*(v118 + 8))(v77, v89);
  v92 = sub_217864B2C(&qword_27CB8F0D8, &qword_27CB8F0C0, &unk_217972EA0);
  v138[4] = WitnessTable;
  v138[5] = v92;
  v93 = v124;
  v94 = swift_getWitnessTable();
  sub_2178FD854();
  sub_217862E84();
  v95 = v120;
  sub_21796779C();
  (*(v123 + 8))(v91, v93);
  v96 = sub_217864B2C(&qword_27CB8BB00, &qword_27CB8BB08, &qword_21796C8C0);
  v138[2] = v94;
  v138[3] = v96;
  v97 = v131;
  v98 = swift_getWitnessTable();
  v99 = v128;
  sub_2179560E4(v95, v97);
  v100 = v127;
  v101 = *(v127 + 8);
  v101(v95, v97);
  v102 = v134;
  v103 = v122;
  sub_2178D0634(v134, v122);
  v139 = v103;
  v104 = v129;
  (*(v100 + 16))(v129, v99, v97);
  v140 = v104;
  v138[0] = v117;
  v138[1] = v97;
  v136 = sub_2178D06A4();
  v137 = v98;
  sub_2178B9390(&v139, 2, v138);
  v101(v99, v97);
  sub_2178653BC(v102, &qword_27CB8A6E0, &qword_21796A8E0);
  v101(v104, v97);
  return sub_2178653BC(v103, &qword_27CB8A6E0, &qword_21796A8E0);
}

uint64_t sub_217951FEC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2179688CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  if ((a2 & 1) == 0)
  {
    return v20;
  }

  v21 = v17;
  (*(v11 + 16))(v14, a1, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
    sub_2178653BC(v10, &qword_27CB8CA28, &unk_21796F610);
    return 0;
  }

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  (*(v21 + 32))(v19, v10, v15);
  v22 = sub_21796883C();
  if (!v23)
  {
    (*(v21 + 8))(v19, v15);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  sub_217884BBC();
  v28 = v27;
  if (v27)
  {
    v35 = v26;
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    sub_21796560C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21796B330;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_21788C964();
    *(v29 + 32) = v24;
    *(v29 + 40) = v25;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    v32 = v35;
    *(v29 + 64) = v31;
    *(v29 + 72) = v32;
    *(v29 + 80) = v28;
    v20 = sub_217968F7C();

    (*(v21 + 8))(v19, v15);
  }

  else
  {
    (*(v21 + 8))(v19, v15);

    return 0;
  }

  return v20;
}

uint64_t sub_2179523C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(_s12ItemShelfRowVMa() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_217951464(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_217952480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2179524E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  *a4 = sub_217966ACC();
  a4[1] = v8;
  v9 = _s11ColumnsViewVMa();
  v10 = a4 + *(v9 + 36);
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8) + 28)) = 0;
  result = sub_2178A909C(a1, v10);
  v12 = (a4 + *(v9 + 40));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

void sub_2179525C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  _s9ViewModelCMa();
  swift_getWitnessTable();
  sub_217966ADC();
  if (v3 <= 0x3F)
  {
    sub_2179526BC();
    if (v4 <= 0x3F)
    {
      sub_217875494();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2179526BC()
{
  if (!qword_27CB8F168)
  {
    _s12SearchColumnVMa();
    v0 = sub_217967C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB8F168);
    }
  }
}

uint64_t sub_217952758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v4 = a1 - 8;
  v79 = *(a1 - 8);
  v80 = a1;
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](a1);
  v76 = v6;
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s12SearchColumnVMa();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA8, &qword_21796B6C0);
  OUTLINED_FUNCTION_3(v72);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F170, &qword_217972F40) - 8) + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F178, &qword_217972F48);
  OUTLINED_FUNCTION_2(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F180, &qword_217972F50);
  v28 = OUTLINED_FUNCTION_2(v27);
  v73 = v29;
  v74 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v32);
  v34 = &v66 - v33;
  v35 = *(v4 + 44);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8F0E0, &qword_217972EC8);
  v69 = v35;
  sub_217967C3C();
  v75 = v3;
  v36 = *v3;
  v37 = v3[1];
  v38 = *(v4 + 24);
  v70 = *(v4 + 32);
  v71 = v38;
  _s9ViewModelCMa();
  OUTLINED_FUNCTION_23();
  swift_getWitnessTable();
  sub_217966A9C();
  sub_2178D2C28();

  OUTLINED_FUNCTION_0_21();
  sub_217952E40(v39, v40);
  v78 = v7;
  sub_2179658BC();
  v41 = *MEMORY[0x277CDFA10];
  v42 = sub_21796695C();
  OUTLINED_FUNCTION_3(v42);
  (*(v43 + 104))(v16, v41, v42);
  sub_217952E40(&qword_27CB8B010, MEMORY[0x277CDFA28]);
  result = sub_217968F1C();
  if (result)
  {
    OUTLINED_FUNCTION_2_18();
    v48 = sub_217864B2C(v45, v46, v47);
    OUTLINED_FUNCTION_4_21();
    v52 = sub_217864B2C(v49, v50, v51);
    v67 = v34;
    v53 = v72;
    sub_2179677CC();
    sub_217952D3C(v16);
    (*(v21 + 8))(v26, v19);
    v54 = v75;
    v55 = v81;
    sub_217967C1C();
    v57 = v79;
    v56 = v80;
    v58 = v77;
    (*(v79 + 16))(v77, v54, v80);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    v61 = v70;
    *(v60 + 16) = v71;
    *(v60 + 24) = v61;
    (*(v57 + 32))(v60 + v59, v58, v56);
    v83 = v19;
    v84 = v53;
    v85 = v48;
    v86 = v52;
    OUTLINED_FUNCTION_3_27();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_0_21();
    sub_217952E40(v62, v63);
    v64 = v74;
    v65 = v67;
    sub_217967A5C();

    sub_2178C07DC(v55);
    return (*(v73 + 8))(v65, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217952CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + *(_s11ColumnsViewVMa() + 40);
  v5 = *(v4 + 8);
  return (*v4)(a2);
}

uint64_t sub_217952D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AFA8, &qword_21796B6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217952DA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(_s11ColumnsViewVMa() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_217952CE4(a1, a2, v8);
}

uint64_t sub_217952E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217952EE8()
{
  v2 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  (*(*(v0 - 8) + 16))(&v8 - v6, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_6_13();
}

uint64_t sub_217952FA4()
{
  v2 = OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  (*(*(v0 - 8) + 16))(&v8 - v6, v1, v0);
  swift_storeEnumTagMultiPayload();
  return OUTLINED_FUNCTION_6_13();
}

uint64_t sub_21795305C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  _s9ViewModelCMa();
  swift_getWitnessTable();
  *(a7 + 48) = sub_217966ACC();
  *(a7 + 56) = v8;
  *(a7 + 64) = swift_getKeyPath();
  *(a7 + 104) = 0;
  *(a7 + 112) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v9 = *(_s11ContentViewVMa() + 52);
  *(a7 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8F198, &dword_217972FE0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_217953158()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  return sub_217967D1C();
}

uint64_t sub_2179531B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8C448, &unk_21796DB30);
  MEMORY[0x21CEA6C70](&v5, v3);
  return v5;
}

uint64_t sub_21795320C@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  OUTLINED_FUNCTION_0_1();
  v74 = v2;
  v80 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v4);
  v79 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 16);
  v8 = v5;
  v75 = *(v5 + 24);
  _s17SearchResultsViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  OUTLINED_FUNCTION_9();
  v9 = sub_21796698C();
  v62 = v7;
  _s15LandingPageViewVMa();
  sub_21796732C();
  OUTLINED_FUNCTION_9();
  sub_21796698C();
  v10 = sub_217966F9C();
  OUTLINED_FUNCTION_0_1();
  v76 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v61 = &v60 - v15;
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_21795427C();
  v89 = WitnessTable;
  v90 = v18;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_22();
  v19 = swift_getWitnessTable();
  v20 = sub_2178BD980();
  v87 = v19;
  v88 = v20;
  v21 = swift_getWitnessTable();
  v85 = v9;
  v86 = v21;
  OUTLINED_FUNCTION_20();
  v22 = swift_getWitnessTable();
  v81 = v10;
  v82 = MEMORY[0x277D839B0];
  v64 = v10;
  v23 = MEMORY[0x277D839B0];
  v83 = v22;
  v84 = MEMORY[0x277D839C8];
  v65 = v22;
  v24 = MEMORY[0x277D839C8];
  v70 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = OpaqueTypeMetadata2;
  OUTLINED_FUNCTION_0_1();
  v73 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v29);
  v78 = &v60 - v30;
  v81 = v10;
  v82 = v23;
  v83 = v22;
  v84 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = OpaqueTypeMetadata2;
  v82 = v23;
  v83 = OpaqueTypeConformance2;
  v84 = v24;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_1();
  v71 = v31;
  v72 = v32;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v31);
  v66 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v67 = &v60 - v37;
  v38 = v16;
  v39 = v8;
  sub_217953868(v8, v38);
  v40 = v1;
  LOBYTE(v81) = sub_217956760(*(v1 + 112), *(v1 + 120)) & 1;
  v41 = v74;
  v63 = *(v74 + 16);
  v42 = v79;
  v63(v79, v1, v8);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v7;
  v45 = v75;
  *(v44 + 24) = v75;
  v74 = *(v41 + 32);
  (v74)(v44 + v43, v42, v39);
  v46 = v64;
  v47 = v61;
  sub_217967A5C();

  (*(v76 + 8))(v47, v46);
  LOBYTE(v81) = sub_2179531B4() & 1;
  v48 = v79;
  v63(v79, v40, v39);
  v49 = swift_allocObject();
  *(v49 + 16) = v62;
  *(v49 + 24) = v45;
  (v74)(v49 + v43, v48, v39);
  v50 = v66;
  v51 = v69;
  v52 = MEMORY[0x277D839B0];
  v53 = OpaqueTypeConformance2;
  v54 = MEMORY[0x277D839C8];
  v55 = v78;
  sub_217967A5C();

  (*(v73 + 8))(v55, v51);
  v81 = v51;
  v82 = v52;
  v83 = v53;
  v84 = v54;
  swift_getOpaqueTypeConformance2();
  v56 = v67;
  v57 = v71;
  sub_2179560E4(v50, v71);
  v58 = *(v72 + 8);
  v58(v50, v57);
  sub_2179560E4(v56, v57);
  return (v58)(v56, v57);
}

uint64_t sub_217953868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = _s15LandingPageViewVMa();
  sub_21796732C();
  v51 = v7;
  v8 = sub_21796698C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v45 - v14;
  v16 = _s17SearchResultsViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A6D8, &unk_21796AF80);
  v46 = sub_21796698C();
  v17 = sub_217966F9C();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v47 = v45 - v19;
  v20 = sub_217956760(*(v3 + 112), *(v3 + 120));
  v50 = a2;
  if (v20)
  {
    sub_21789AA78(v58);
    if (qword_27CB8A340 != -1)
    {
      swift_once();
    }

    v56 = qword_27CB977B8;

    WitnessTable = swift_getWitnessTable();
    sub_2179673FC();
    sub_21796768C();

    (*(*(v16 - 8) + 8))(v58, v16);
    v22 = sub_21795427C();
    v54 = WitnessTable;
    v55 = v22;
    v23 = v46;
    swift_getWitnessTable();
    sub_2179560E4(v57, v23);
    v24 = *(*(v23 - 8) + 8);
    v24(v57, v23);
    sub_2179560E4(v58, v23);
    v25 = swift_getWitnessTable();
    v26 = sub_2178BD980();
    v52 = v25;
    v53 = v26;
    swift_getWitnessTable();
    v27 = v47;
    sub_217952EE8();
    v24(v57, v23);
    v24(v58, v23);
  }

  else
  {
    v45[0] = v9;
    v45[1] = v16;
    sub_2178AE628(v58);
    if (qword_27CB8A3B8 != -1)
    {
      swift_once();
    }

    v28 = qword_27CB97938;
    v29 = unk_27CB97940;
    v30 = qword_27CB97948;
    v31 = v51;
    v32 = swift_getWitnessTable();
    sub_2178ED854(v28, v29, v30);
    (*(*(v31 - 8) + 8))(v58, v31);
    v33 = sub_2178BD980();
    v58[49] = v32;
    v58[50] = v33;
    swift_getWitnessTable();
    sub_2179560E4(v13, v8);
    v34 = *(v45[0] + 8);
    v34(v13, v8);
    sub_2179560E4(v15, v8);
    v35 = swift_getWitnessTable();
    v36 = sub_21795427C();
    v58[47] = v35;
    v58[48] = v36;
    swift_getWitnessTable();
    v27 = v47;
    sub_217952FA4();
    v34(v13, v8);
    v34(v15, v8);
  }

  v37 = swift_getWitnessTable();
  v38 = sub_21795427C();
  v58[45] = v37;
  v58[46] = v38;
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v41 = sub_2178BD980();
  v58[43] = v40;
  v58[44] = v41;
  v42 = swift_getWitnessTable();
  v58[41] = v39;
  v58[42] = v42;
  v43 = v49;
  swift_getWitnessTable();
  sub_2179560E4(v27, v43);
  return (*(v48 + 8))(v27, v43);
}