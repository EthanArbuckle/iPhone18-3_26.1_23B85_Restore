uint64_t sub_26A5705DC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB40);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10 - 8];
  sub_26A570878();
  v12 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
  v13 = *v12;
  KeyPath = swift_getKeyPath();
  v15 = &v11[*(v6 + 44)];
  *v15 = KeyPath;
  v15[8] = 0;
  *(v15 + 2) = v13;
  v16 = sub_26A84FC08();
  v17 = v12[4];
  v26[0] = v16;
  v26[1] = v17;
  v27 = 0;
  sub_26A570A34(v2, &v28);
  v23[0] = sub_26A84FC18();
  v23[1] = v17;
  v24 = 0;
  sub_26A5717D4(v2, &v25);
  sub_26A4DBD68(v11, v8, &qword_2803ADB40);
  sub_26A4DBD68(v26, v22, &qword_2803ADB90);
  sub_26A4DBD68(v23, v21, &qword_2803AD638);
  sub_26A4DBD68(v8, v4, &qword_2803ADB40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB98);
  sub_26A4DBD68(v22, v4 + *(v18 + 48), &qword_2803ADB90);
  sub_26A4DBD68(v21, v4 + *(v18 + 64), &qword_2803AD638);
  sub_26A4DBD10(v23, &qword_2803AD638);
  sub_26A4DBD10(v26, &qword_2803ADB90);
  sub_26A4DBD10(v11, &qword_2803ADB40);
  sub_26A4DBD10(v21, &qword_2803AD638);
  sub_26A4DBD10(v22, &qword_2803ADB90);
  return sub_26A4DBD10(v8, &qword_2803ADB40);
}

uint64_t sub_26A570878()
{
  OUTLINED_FUNCTION_13_1();
  v2 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = *(v1 + *(type metadata accessor for SummaryItemShortNumberView() + 64));
  if (v9)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
    v11 = type metadata accessor for SummaryItemConstants();
    (*(v4 + 16))(v8, v1 + *(v11 + 40) + v10, v2);
    KeyPath = swift_getKeyPath();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v14 = (v0 + *(v13 + 36));
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    (*(v4 + 32))(v14 + *(v15 + 28), v8, v2);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v2);
    *v14 = KeyPath;
    *v0 = v9;
    OUTLINED_FUNCTION_22_0();
    v22 = v13;
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v19 = v0;
    v20 = 1;
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_26A570A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A570D1C();
  v4 = *(a1 + *(type metadata accessor for SummaryItemShortNumberView() + 40));
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v25, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v24, __src, sizeof(v24));
  v25[11] = 0;
  v25[10] = sub_26A80A810;
  v23 = v4;
  v5 = qword_28157FC78;

  if (v5 != -1)
  {
    swift_once();
  }

  v25[12] = qword_28157FC80;
  v25[13] = sub_26A4D82F0;
  v25[14] = 0;
  sub_26A570DD0();
  sub_26A570E84();
  v6 = sub_26A850258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A84ED48();
  v16[296] = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = 0;
  sub_26A4DBD68(v26, v15, &qword_2803AA888);
  sub_26A4DBD68(&v23, v14, &qword_2803ADBA0);
  sub_26A4DBD68(v22, v13, &qword_2803AA888);
  sub_26A4DBD68(v16, v12, &qword_2803AAF88);
  sub_26A4DBD68(v15, a2, &qword_2803AA888);
  sub_26A4DBD68(v14, a2 + 296, &qword_2803ADBA0);
  sub_26A4DBD68(v13, a2 + 616, &qword_2803AA888);
  sub_26A4DBD68(v12, a2 + 912, &qword_2803AAF88);
  sub_26A4DBD10(v16, &qword_2803AAF88);
  sub_26A4DBD10(v22, &qword_2803AA888);
  sub_26A4DBD10(&v23, &qword_2803ADBA0);
  sub_26A4DBD10(v26, &qword_2803AA888);
  sub_26A4DBD10(v12, &qword_2803AAF88);
  sub_26A4DBD10(v13, &qword_2803AA888);
  sub_26A4DBD10(v14, &qword_2803ADBA0);
  return sub_26A4DBD10(v15, &qword_2803AA888);
}

uint64_t sub_26A570D1C()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemShortNumberView() + 56)))
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A570DD0()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemShortNumberView() + 48)))
  {
    if (qword_2803A8AA8 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803ADA90, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A570E84()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemShortNumberView() + 52)))
  {
    if (qword_28157E6A0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A570F38()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemShortNumberView() + 60)))
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A570FEC()
{
  OUTLINED_FUNCTION_13_1();
  if (*(v1 + *(type metadata accessor for SummaryItemShortNumberView() + 44)))
  {
    if (qword_2803A8AA0 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803ADA40, v0 + 200, &qword_2803AA880);
    v2 = sub_26A6AEE74(v11);
    OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11[0]);
    OUTLINED_FUNCTION_0_4();
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_26A5710A0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB40);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10 - 8];
  sub_26A570878();
  v12 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
  v13 = *v12;
  KeyPath = swift_getKeyPath();
  v15 = &v11[*(v6 + 44)];
  *v15 = KeyPath;
  v15[8] = 0;
  *(v15 + 2) = v13;
  v26[0] = sub_26A84FC08();
  v26[1] = 0;
  LOBYTE(v26[2]) = 0;
  sub_26A5713AC(v2, &v26[3]);
  sub_26A851458();
  sub_26A84F628();
  memcpy(v25, v26, 0x550uLL);
  memcpy(v26, v25, 0x5C0uLL);
  v16 = sub_26A84FC18();
  v17 = v12[4];
  v22[0] = v16;
  v22[1] = v17;
  v23 = 0;
  sub_26A5717D4(v2, &v24);
  sub_26A4DBD68(v11, v8, &qword_2803ADB40);
  sub_26A4DBD68(v26, v25, &qword_2803ADB48);
  sub_26A4DBD68(v22, v21, &qword_2803AD638);
  sub_26A4DBD68(v8, v4, &qword_2803ADB40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB50);
  sub_26A4DBD68(v25, v4 + *(v18 + 48), &qword_2803ADB48);
  sub_26A4DBD68(v21, v4 + *(v18 + 64), &qword_2803AD638);
  sub_26A4DBD10(v22, &qword_2803AD638);
  sub_26A4DBD10(v26, &qword_2803ADB48);
  sub_26A4DBD10(v11, &qword_2803ADB40);
  sub_26A4DBD10(v21, &qword_2803AD638);
  sub_26A4DBD10(v25, &qword_2803ADB48);
  return sub_26A4DBD10(v8, &qword_2803ADB40);
}

uint64_t sub_26A5713AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FC08();
  v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28) + 32);
  v21[0] = v4;
  v21[1] = v5;
  v22 = 0;
  sub_26A571528(a1, &v23);
  sub_26A570E84();
  LOBYTE(a1) = sub_26A850258();
  sub_26A84ED48();
  v13[296] = a1;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = 0;
  KeyPath = swift_getKeyPath();
  v20 = v5;
  sub_26A4DBD68(v21, v12, &qword_2803ADB58);
  sub_26A4DBD68(v13, v11, &qword_2803ADB60);
  sub_26A4DBD68(v12, a2, &qword_2803ADB58);
  sub_26A4DBD68(v11, a2 + 976, &qword_2803ADB60);
  sub_26A4DBD10(v13, &qword_2803ADB60);
  sub_26A4DBD10(v21, &qword_2803ADB58);
  sub_26A4DBD10(v11, &qword_2803ADB60);
  return sub_26A4DBD10(v12, &qword_2803ADB58);
}

uint64_t sub_26A571528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A570D1C();
  v4 = *(a1 + *(type metadata accessor for SummaryItemShortNumberView() + 40));
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v16, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v4;
  v5 = qword_28157FC78;

  if (v5 != -1)
  {
    swift_once();
  }

  v16[12] = qword_28157FC80;
  v16[13] = sub_26A4D82F0;
  v16[14] = 0;
  v16[15] = sub_26A84FBD8();
  v16[16] = sub_26A4D82F0;
  v16[17] = 0;
  sub_26A570DD0();
  v6 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28) + 32);
  KeyPath = swift_getKeyPath();
  v13 = v6;
  sub_26A4DBD68(v17, v10, &qword_2803AA888);
  sub_26A4DBD68(&v14, v9, &qword_2803AAFD0);
  sub_26A4DBD68(v11, v8, &qword_2803ADB68);
  sub_26A4DBD68(v10, a2, &qword_2803AA888);
  sub_26A4DBD68(v9, a2 + 296, &qword_2803AAFD0);
  sub_26A4DBD68(v8, a2 + 640, &qword_2803ADB68);
  sub_26A4DBD10(v11, &qword_2803ADB68);
  sub_26A4DBD10(&v14, &qword_2803AAFD0);
  sub_26A4DBD10(v17, &qword_2803AA888);
  sub_26A4DBD10(v8, &qword_2803ADB68);
  sub_26A4DBD10(v9, &qword_2803AAFD0);
  return sub_26A4DBD10(v10, &qword_2803AA888);
}

uint64_t sub_26A5717D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A570F38();
  v4 = *(a1 + *(type metadata accessor for SummaryItemShortNumberView() + 36));
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28A0, v12, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v11, __src, sizeof(v11));
  v12[11] = 0;
  v12[10] = sub_26A80A810;
  v10 = v4;

  sub_26A570FEC();
  OUTLINED_FUNCTION_5_17(v13, v8);
  sub_26A4DBD68(&v10, v7, &qword_2803A99A0);
  OUTLINED_FUNCTION_5_17(v9, v6);
  OUTLINED_FUNCTION_5_17(v8, a2);
  sub_26A4DBD68(v7, a2 + 296, &qword_2803A99A0);
  OUTLINED_FUNCTION_5_17(v6, a2 + 592);
  OUTLINED_FUNCTION_9_0(v9);
  sub_26A4DBD10(&v10, &qword_2803A99A0);
  OUTLINED_FUNCTION_9_0(v13);
  OUTLINED_FUNCTION_9_0(v6);
  sub_26A4DBD10(v7, &qword_2803A99A0);
  return OUTLINED_FUNCTION_9_0(v8);
}

uint64_t sub_26A571978(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  sub_26A570878();
  v14[0] = sub_26A84FC08();
  v14[1] = 0x4010000000000000;
  v15 = 0;
  sub_26A571B3C(v2);
  sub_26A4DBD68(v10, v7, &qword_2803AAF98);
  sub_26A4DBD68(v14, v13, &qword_2803ADB78);
  sub_26A4DBD68(v7, v4, &qword_2803AAF98);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADB80);
  sub_26A4DBD68(v13, v4 + *(v11 + 48), &qword_2803ADB78);
  sub_26A4DBD10(v14, &qword_2803ADB78);
  sub_26A4DBD10(v10, &qword_2803AAF98);
  sub_26A4DBD10(v13, &qword_2803ADB78);
  return sub_26A4DBD10(v7, &qword_2803AAF98);
}

uint64_t sub_26A571B3C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v15[0] = sub_26A84FC08();
  v15[1] = 0;
  v16 = 0;
  sub_26A5717D4(v2, &v17);
  v12[0] = sub_26A84FC08();
  v12[1] = 0;
  v13 = 0;
  sub_26A571D00(v2, &v14);
  sub_26A570E84();
  KeyPath = swift_getKeyPath();
  v11 = 0;
  sub_26A4DBD68(v15, v8, &qword_2803AD638);
  sub_26A4DBD68(v12, v7, &qword_2803ADB88);
  sub_26A4DBD68(v9, v6, &qword_2803ADB68);
  sub_26A4DBD68(v8, v4, &qword_2803AD638);
  sub_26A4DBD68(v7, v4 + 912, &qword_2803ADB88);
  sub_26A4DBD68(v6, v4 + 1840, &qword_2803ADB68);
  sub_26A4DBD10(v9, &qword_2803ADB68);
  sub_26A4DBD10(v12, &qword_2803ADB88);
  sub_26A4DBD10(v15, &qword_2803AD638);
  sub_26A4DBD10(v6, &qword_2803ADB68);
  sub_26A4DBD10(v7, &qword_2803ADB88);
  return sub_26A4DBD10(v8, &qword_2803AD638);
}

uint64_t sub_26A571D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemShortNumberView();
  v5 = *(a1 + *(v4 + 56));
  if (v5)
  {
    if (qword_28157E6A8 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, &v12[25], &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(&v12[1], __src, 0xBFuLL);
    v12[36] = 0;
    v12[35] = sub_26A80A810;
    v12[0] = v5;
  }

  else
  {
    bzero(v12, 0x128uLL);
  }

  memcpy(__dst, v12, sizeof(__dst));
  v6 = *(a1 + *(v4 + 40));
  v7 = qword_28157E6C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v15, &qword_2803AA880);
  sub_26A6AEE74(v18);
  memcpy(v14, v18, sizeof(v14));
  v15[11] = 0;
  v15[10] = sub_26A80A810;
  v13 = v6;

  sub_26A570DD0();
  v12[37] = swift_getKeyPath();
  v12[38] = 0x4000000000000000;
  sub_26A4DBD68(__dst, v11, &qword_2803AA888);
  sub_26A4DBD68(&v13, v10, &qword_2803A99A0);
  sub_26A4DBD68(v12, v9, &qword_2803ADB68);
  sub_26A4DBD68(v11, a2, &qword_2803AA888);
  sub_26A4DBD68(v10, a2 + 296, &qword_2803A99A0);
  sub_26A4DBD68(v9, a2 + 592, &qword_2803ADB68);
  sub_26A4DBD10(v12, &qword_2803ADB68);
  sub_26A4DBD10(&v13, &qword_2803A99A0);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v9, &qword_2803ADB68);
  sub_26A4DBD10(v10, &qword_2803A99A0);
  return sub_26A4DBD10(v11, &qword_2803AA888);
}

uint64_t sub_26A571FD0()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v12, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_2803A8CE8 != -1)
  {
    swift_once();
  }

  sub_26A5737D4(&qword_2803D1FD0, &v9);
  v6 = v10;
  v5 = v11;
  *(inited + 40) = v9;
  *(inited + 56) = v6;
  *(inited + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v7 = sub_26A8516A8();
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_26A66DDEC(v7, &unk_2803ADA40);

  sub_26A4DBD10(&v9, &qword_2803ABAC0);
  return sub_26A4DBD10(v12, &qword_2803AA880);
}

uint64_t sub_26A572214()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588848, v21, &qword_2803AA880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_281588898, v19, &qword_2803AA880);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v16)
  {
    *(inited + 40) = v16;
    *(inited + 56) = v17;
    *(inited + 72) = v18;
  }

  else
  {
    sub_26A4F20CC(v20, inited + 40);
  }

  sub_26A4DBD10(v19, &qword_2803AA880);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v10 = qword_281588978;
  *(v9 + 32) = qword_281588978;
  v11 = byte_281588980;
  *(v9 + 40) = byte_281588980;
  *(v9 + 48) = 1;
  *(v9 + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(v9);
  *(inited + 88) = v12;
  v13 = sub_26A8502D8();
  *(inited + 128) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 136) = sub_26A573830();
  *(inited + 104) = 1;
  *(inited + 96) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v14 = sub_26A8516A8();
  v20[0] = 0u;
  memset(v19, 0, sizeof(v19));
  sub_26A66DDEC(v14, &unk_2803ADA90);

  sub_26A4DBD10(v19, &qword_2803ABAC0);
  return sub_26A4DBD10(v21, &qword_2803AA880);
}

uint64_t sub_26A5725B0()
{
  v137 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v122 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v121 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v136 = v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  v135 = &v120 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v128 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  v14 = OUTLINED_FUNCTION_79(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v123 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  v18 = &v120 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v125 = v21;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v22);
  v124 = &v120 - v23;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  v27 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v33 = v32 - v31;
  v129 = type metadata accessor for SummaryItemShortNumberView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  v36 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v138 = &v120 - v38;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA80);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v39);
  v131 = &v120 - v40;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA88);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v133 = v42;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v43);
  v132 = &v120 - v44;
  sub_26A84D538();
  v127 = TextProperty.asAnyView()();
  v45 = *(v29 + 8);
  v45(v33, v27);
  sub_26A84D4D8();
  v126 = TextProperty.asAnyView()();
  v45(v33, v27);
  v139 = v0;
  sub_26A84D4C8();
  OUTLINED_FUNCTION_26_0(v26);
  if (v46)
  {
    v47 = v45;
    sub_26A4DBD10(v26, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v147[1] = 0;
    v147[2] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    v47 = v45;
    v45(v26, v27);
    v48 = &protocol witness table for AnyView;
    v49 = MEMORY[0x277CE11C8];
  }

  v147[0] = v0;
  v147[3] = v49;
  v147[4] = v48;
  v50 = v139;
  v51 = v139;
  sub_26A84D4E8();
  v52 = sub_26A84D098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v52);
  v54 = v123;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v18, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v146[1] = 0;
    v146[2] = 0;
  }

  else
  {
    v51 = v18;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_26_3();
    (*(v57 + 8))(v18, v52);
    v55 = &protocol witness table for AnyView;
    v56 = MEMORY[0x277CE11C8];
  }

  v146[0] = v51;
  v146[3] = v56;
  v146[4] = v55;
  v58 = v50;
  sub_26A84D4F8();
  v59 = __swift_getEnumTagSinglePayload(v54, 1, v52);
  v60 = v125;
  if (v59 == 1)
  {
    sub_26A4DBD10(v54, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v145[1] = 0;
    v145[2] = 0;
  }

  else
  {
    v58 = v54;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_26_3();
    (*(v63 + 8))(v54, v52);
    v61 = &protocol witness table for AnyView;
    v62 = MEMORY[0x277CE11C8];
  }

  v145[0] = v58;
  v145[3] = v62;
  v145[4] = v61;
  v64 = v124;
  v65 = v50;
  sub_26A84D508();
  OUTLINED_FUNCTION_26_0(v64);
  v66 = v128;
  if (v46)
  {
    sub_26A4DBD10(v64, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v144[1] = 0;
    v144[2] = 0;
  }

  else
  {
    v65 = TextProperty.asAnyView()();
    v47(v64, v27);
    v67 = &protocol witness table for AnyView;
    v68 = MEMORY[0x277CE11C8];
  }

  v144[0] = v65;
  v144[3] = v68;
  v144[4] = v67;
  v69 = v50;
  sub_26A84D518();
  OUTLINED_FUNCTION_26_0(v60);
  if (v46)
  {
    sub_26A4DBD10(v60, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v143[1] = 0;
    v143[2] = 0;
  }

  else
  {
    v69 = TextProperty.asAnyView()();
    v47(v60, v27);
    v70 = &protocol witness table for AnyView;
    v71 = MEMORY[0x277CE11C8];
  }

  v72 = v129;
  v73 = v131;
  v143[0] = v69;
  v143[3] = v71;
  v143[4] = v70;
  v74 = v50;
  sub_26A84D548();
  v75 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v66, 1, v75) == 1)
  {
    sub_26A4DBD10(v66, &qword_2803AAD50);
    OUTLINED_FUNCTION_2_0();
    v142[1] = 0;
    v142[2] = 0;
  }

  else
  {
    v74 = VisualProperty.asAnyView()();
    (*(*(v75 - 8) + 8))(v66, v75);
    v76 = &protocol witness table for AnyView;
    v77 = MEMORY[0x277CE11C8];
  }

  v142[0] = v74;
  v142[3] = v77;
  v142[4] = v76;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v79 = __swift_project_value_buffer(v78, qword_281588798);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v81 = &v36[*(v80 + 32)];
  OUTLINED_FUNCTION_5_17(v79, v81);
  sub_26A6AEE74(v148);
  memcpy(v36, v148, 0xBFuLL);
  sub_26A4DB4E0(v81 + *(v78 + 36), &v36[*(v80 + 28)]);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v83 = v72[6];
  *&v36[v83] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v84 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v84);
  v85 = v72[8];
  *&v36[v85] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v86 = v126;
  *&v36[v72[9]] = v127;
  *&v36[v72[10]] = v86;
  sub_26A4DBD68(v147, v140, &qword_2803A91B8);
  if (v141)
  {
    v87 = OUTLINED_FUNCTION_2_18();
    v88(v87);
    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_26A4DBD10(v140, &qword_2803A91B8);
    v85 = 0;
  }

  *&v36[v72[11]] = v85;
  sub_26A4DBD68(v146, v140, &qword_2803A91B8);
  if (v141)
  {
    v89 = OUTLINED_FUNCTION_2_18();
    v90(v89);
    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_26A4DBD10(v140, &qword_2803A91B8);
    v85 = 0;
  }

  *&v36[v72[12]] = v85;
  sub_26A4DBD68(v145, v140, &qword_2803A91B8);
  if (v141)
  {
    v91 = OUTLINED_FUNCTION_2_18();
    v92(v91);
    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_26A4DBD10(v140, &qword_2803A91B8);
    v85 = 0;
  }

  *&v36[v72[13]] = v85;
  sub_26A4DBD68(v144, v140, &qword_2803A91B8);
  if (v141)
  {
    v93 = OUTLINED_FUNCTION_2_18();
    v94(v93);
    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_26A4DBD10(v140, &qword_2803A91B8);
    v85 = 0;
  }

  *&v36[v72[14]] = v85;
  sub_26A4DBD68(v143, v140, &qword_2803A91B8);
  if (v141)
  {
    v95 = OUTLINED_FUNCTION_2_18();
    v96(v95);
    OUTLINED_FUNCTION_22_7();
  }

  else
  {
    sub_26A4DBD10(v140, &qword_2803A91B8);
    v85 = 0;
  }

  *&v36[v72[15]] = v85;
  sub_26A4DBD68(v142, v140, &qword_2803A91B8);
  if (v141)
  {
    v97 = OUTLINED_FUNCTION_2_18();
    v99 = v98(v97);
    OUTLINED_FUNCTION_19_0(v142);
    OUTLINED_FUNCTION_19_0(v143);
    OUTLINED_FUNCTION_19_0(v144);
    OUTLINED_FUNCTION_19_0(v145);
    OUTLINED_FUNCTION_19_0(v146);
    OUTLINED_FUNCTION_19_0(v147);
    __swift_destroy_boxed_opaque_existential_1(v140);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(v142);
    OUTLINED_FUNCTION_9_0(v143);
    OUTLINED_FUNCTION_9_0(v144);
    OUTLINED_FUNCTION_9_0(v145);
    OUTLINED_FUNCTION_9_0(v146);
    OUTLINED_FUNCTION_9_0(v147);
    OUTLINED_FUNCTION_9_0(v140);
    v99 = 0;
  }

  *&v36[v72[16]] = v99;
  sub_26A57333C(v36, v138);
  v100 = v135;
  sub_26A84D528();
  v101 = v136;
  sub_26A4DBDB4(v100, v136, &qword_2803B3800);
  v102 = v137;
  if (__swift_getEnumTagSinglePayload(v101, 1, v137) == 1)
  {
    sub_26A4DBD10(v101, &qword_2803B3800);
    v103 = swift_getKeyPath();
    v104 = (v73 + *(v130 + 36));
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v106 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v104 + v105, 1, 1, v106);
    *v104 = v103;
  }

  else
  {
    v107 = v121;
    v108 = *(v122 + 32);
    v108(v121, v101, v102);
    v109 = swift_getKeyPath();
    v110 = (v73 + *(v130 + 36));
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v108(v110 + *(v111 + 28), v107, v102);
    v112 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
    *v110 = v109;
  }

  sub_26A57333C(v138, v73);
  v116 = sub_26A84D498();
  v117 = v132;
  sub_26A4DDF2C(v116);

  sub_26A4DBD10(v73, &qword_2803AAA80);
  sub_26A84D4A8();

  OUTLINED_FUNCTION_5_17(v117, v133);
  sub_26A573884();
  v118 = sub_26A851248();
  OUTLINED_FUNCTION_9_0(v117);
  return v118;
}

uint64_t sub_26A57333C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemShortNumberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5733C4(uint64_t a1)
{
  result = sub_26A573AB0(&qword_2803ADAF0, MEMORY[0x277D63530]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A573444()
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A573614(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A573614(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A573614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A573664()
{
  result = qword_2803ADB08;
  if (!qword_2803ADB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADAE8);
    sub_26A5736F0();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADB08);
  }

  return result;
}

unint64_t sub_26A5736F0()
{
  result = qword_2803ADB10;
  if (!qword_2803ADB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADAE0);
    sub_26A4DBCC8(&qword_2803ADB18, &qword_2803AA148);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADB10);
  }

  return result;
}

unint64_t sub_26A573830()
{
  result = qword_2803ADB70;
  if (!qword_2803ADB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADB70);
  }

  return result;
}

unint64_t sub_26A573884()
{
  result = qword_2803ADBA8;
  if (!qword_2803ADBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA88);
    sub_26A57393C();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADBA8);
  }

  return result;
}

unint64_t sub_26A57393C()
{
  result = qword_2803ADBB0;
  if (!qword_2803ADBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA78);
    sub_26A5739C8();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADBB0);
  }

  return result;
}

unint64_t sub_26A5739C8()
{
  result = qword_2803ADBB8;
  if (!qword_2803ADBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA80);
    sub_26A573AB0(&qword_2803ADBC0, type metadata accessor for SummaryItemShortNumberView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADBB8);
  }

  return result;
}

uint64_t sub_26A573AB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_22_7()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 160);
}

void sub_26A573B9C()
{
  OUTLINED_FUNCTION_28_0();
  v53 = v0;
  v54 = v3;
  v55 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v48 = &v47 - v7;
  sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v49 = v9;
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_15();
  v51 = v16;
  v52 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_11_11();
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_74_0();
  v22 = type metadata accessor for ActionType();
  OUTLINED_FUNCTION_4_11();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = (v24 - v25);
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v47 - v31;
  LODWORD(v54) = *v54;
  sub_26A576FA8(v55, v1, &qword_2803A91C8);
  OUTLINED_FUNCTION_6_20(v1, 1, v22);
  if (!v33)
  {
    sub_26A576E18(v1, v32);
    v34 = *(v53 + 8);
    sub_26A576E7C(v32, v29);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v51;
      v37 = v52;
      (*(v51 + 32))(v19, v29, v52);
      VRXIdiom.idiom.getter(v34, v12);
      sub_26A84BAA8();
      (*(v49 + 8))(v12, v50);
      (*(v36 + 8))(v19, v37);
      v38 = sub_26A84E278();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v38);
      sub_26A576F4C(v2, &qword_2803B38C0);
      if (EnumTagSinglePayload == 1)
      {
LABEL_13:
        sub_26A576EE0(v32);
        goto LABEL_14;
      }
    }

    else
    {
      sub_26A576EE0(v29);
    }

    sub_26A576E7C(v32, v26);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40)
    {
      if (v40 == 1)
      {
        v42 = v51;
        v41 = v52;
        v43 = v47;
        (*(v51 + 32))(v47, v26, v52);
        v44 = v48;
        (*(v42 + 16))(v48, v43, v41);
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v41);
        v56 = v54;
        StandardActionHandler.perform(_:interactionType:)();
        sub_26A576F4C(v44, &qword_2803B3800);
        (*(v42 + 8))(v43, v41);
      }

      else
      {
        v45 = *v26;
        swift_getObjectType();
        v46 = v45;
        sub_26A49FAFC();
      }
    }

    else
    {
      (*v26)();
    }

    goto LABEL_13;
  }

  sub_26A576F4C(v1, &qword_2803A91C8);
LABEL_14:
  OUTLINED_FUNCTION_27_0();
}

void StandardActionHandler.perform(_:interactionType:)()
{
  OUTLINED_FUNCTION_28_0();
  v38 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_12_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v35[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v35[-v20];
  v36 = *v3;
  v37 = v5;
  sub_26A576FA8(v5, v13, &qword_2803B3800);
  v22 = sub_26A84BAB8();
  OUTLINED_FUNCTION_6_20(v13, 1, v22);
  if (v30)
  {
    sub_26A576F4C(v13, &qword_2803B3800);
    sub_26A84E278();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
LABEL_6:
    v31 = v21;
    goto LABEL_7;
  }

  v27 = v38;
  VRXIdiom.idiom.getter(*(v38 + 8), v1);
  sub_26A84BAA8();
  (*(v8 + 8))(v1, v6);
  OUTLINED_FUNCTION_4_11();
  (*(v28 + 8))(v13, v22);
  v29 = sub_26A84E278();
  OUTLINED_FUNCTION_6_20(v21, 1, v29);
  if (v30)
  {
    goto LABEL_6;
  }

  sub_26A576F4C(v21, &qword_2803B38C0);
  v32 = v37;
  if (v36 != 6)
  {
    v39 = v36;
    StandardActionHandler.emitInteractionPerformed(for:interactionType:)();
  }

  sub_26A5756A4(v32, v18);
  OUTLINED_FUNCTION_6_20(v18, 1, v29);
  if (!v30)
  {
    v33 = type metadata accessor for StandardActionHandler(0);
    sub_26A5DDD40(v27, v27 + *(v33 + 24));
    OUTLINED_FUNCTION_4_11();
    (*(v34 + 8))(v18, v29);
    goto LABEL_8;
  }

  v31 = v18;
LABEL_7:
  sub_26A576F4C(v31, &qword_2803B38C0);
LABEL_8:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A574360()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (v3)
  {
    v4 = v0[3];
LABEL_6:
    v5 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
    v6 = *(*(v1 + 48) + v5);
    v7 = *(*(v1 + 56) + v5);
    v0[3] = v4;
    v0[4] = (v3 - 1) & v3;
    v8 = v0[5];
    v11[0] = v6;
    v11[1] = v7;
    v8(&v10, v11);
    return v10;
  }

  else
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 >= ((v0[2] + 64) >> 6))
      {
        result = 0;
        v0[3] = v2;
        v0[4] = 0;
        return result;
      }

      v3 = *(v0[1] + 8 * v4);
      ++v2;
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_26A574420@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_26A549760(*(v3 + 48) + 40 * v10, &v14);
    sub_26A5136A0(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_26A576F3C(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_26A576F4C(&v14, &qword_2803ADC10);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A574598()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A556DF4(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_26A5746FC()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = *(v0 + 24);
  if ((*(v0 + 32) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v4 + 8))(v1, v2);
    return v9;
  }

  return v6;
}

uint64_t sub_26A574828@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ActionHandler(0);
  sub_26A576FA8(v1 + *(v10 + 24), v9, &unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A5765D0(v9, a1);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A574A00()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ActionHandler(0) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
  }

  else
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A556DF4(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_26A574B74()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ActionHandler(0) + 36);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t ActionHandler.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 32) = 0;
  v2 = type metadata accessor for ActionHandler(0);
  v3 = v2[6];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[7];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = a1 + v2[8];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v2[9];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v2[10];
  *v7 = swift_getKeyPath();
  *(v7 + 9) = 0;
  swift_unknownObjectWeakInit();
  v8 = v2[11];
  v9 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  sub_26A576F4C(a1 + v8, &qword_2803B3910);
  OUTLINED_FUNCTION_81();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
}

uint64_t ActionHandler.wrappedValue.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActionHandler(0) + 44);

  return sub_26A57648C(a1, v3);
}

Swift::Void __swiftcall ActionHandler.update()()
{
  OUTLINED_FUNCTION_28_0();
  v3 = v0;
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_12_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for ActionHandler(0);
  sub_26A4F5FCC(v0 + v14[10] + 16, &v34);
  v30 = sub_26A5746FC();
  sub_26A574828(v1);
  v15 = sub_26A574A00();
  v31 = v16;
  v32 = v15;
  v17 = v0 + v14[8];
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v33 = *v17;
  }

  else
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v6 + 8))(v2, v4);
    LOBYTE(v18) = v33;
  }

  type metadata accessor for Form();
  swift_allocObject();
  v20 = Form.init()();
  v21 = sub_26A574B74();
  v22 = sub_26A574598();
  v24 = v23;
  sub_26A576574(&v34, v13);
  *(v13 + 1) = v30;
  v25 = type metadata accessor for StandardActionHandler(0);
  sub_26A5765D0(v1, &v13[v25[6]]);
  v26 = &v13[v25[7]];
  v27 = v31;
  *v26 = v32;
  *(v26 + 1) = v27;
  v13[v25[8]] = v18;
  *&v13[v25[9]] = v20;
  *&v13[v25[10]] = v21;
  v28 = &v13[v25[11]];
  *v28 = v22;
  v28[1] = v24;
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  sub_26A57648C(v13, v3 + v14[11]);
  OUTLINED_FUNCTION_27_0();
}

void StandardActionHandler.isNavigation(_:)()
{
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v23 = v7;
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_12_8();
  sub_26A576FA8(v5, v3, &qword_2803B3800);
  OUTLINED_FUNCTION_6_20(v3, 1, v14);
  if (v21)
  {
    v18 = &qword_2803B3800;
    v19 = v3;
LABEL_7:
    sub_26A576F4C(v19, v18);
    goto LABEL_8;
  }

  (*(v16 + 32))(v2, v3, v14);
  VRXIdiom.idiom.getter(*(v0 + 8), v1);
  sub_26A84BAA8();
  (*(v23 + 8))(v1, v24);
  v20 = sub_26A84E278();
  OUTLINED_FUNCTION_6_20(v11, 1, v20);
  if (v21)
  {
    (*(v16 + 8))(v2, v14);
    v18 = &qword_2803B38C0;
    v19 = v11;
    goto LABEL_7;
  }

  sub_26A84E258();
  (*(v16 + 8))(v2, v14);
  OUTLINED_FUNCTION_4_11();
  (*(v22 + 8))(v11, v20);
LABEL_8:
  OUTLINED_FUNCTION_27_0();
}

void StandardActionHandler.canPerform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  OUTLINED_FUNCTION_79(v30);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_79(v34);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_26A576FA8(v25, v33, &qword_2803B3800);
  v38 = sub_26A84BAB8();
  OUTLINED_FUNCTION_6_20(v33, 1, v38);
  if (v39)
  {
    sub_26A576F4C(v33, &qword_2803B3800);
    sub_26A84E278();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  }

  else
  {
    VRXIdiom.idiom.getter(*(v20 + 8), v21);
    sub_26A84BAA8();
    (*(v28 + 8))(v21, v26);
    OUTLINED_FUNCTION_4_11();
    (*(v44 + 8))(v33, v38);
    v45 = sub_26A84E278();
    OUTLINED_FUNCTION_6_20(v37, 1, v45);
  }

  sub_26A576F4C(v37, &qword_2803B38C0);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5756A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84B058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  sub_26A576FA8(a1, &v15 - v10, &qword_2803B3800);
  v12 = sub_26A84BAB8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_26A576F4C(v11, &qword_2803B3800);
    v13 = sub_26A84E278();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v13);
  }

  else
  {
    VRXIdiom.idiom.getter(*(v2 + 8), v8);
    sub_26A84BAA8();
    (*(v6 + 8))(v8, v5);
    return (*(*(v12 - 8) + 8))(v11, v12);
  }
}

void StandardActionHandler.emitInteractionPerformed(for:interactionType:)()
{
  OUTLINED_FUNCTION_28_0();
  v57 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v52[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  OUTLINED_FUNCTION_79(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = &v52[-v22];
  v24 = sub_26A84E278();
  OUTLINED_FUNCTION_15();
  v56 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v55 = v27 - v28;
  MEMORY[0x28223BE20](v29);
  v58 = &v52[-v30];
  v53 = *v2;
  v54 = v4;
  sub_26A576FA8(v4, v19, &qword_2803B3800);
  v31 = sub_26A84BAB8();
  OUTLINED_FUNCTION_6_20(v19, 1, v31);
  if (v38)
  {
    sub_26A576F4C(v19, &qword_2803B3800);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v24);
LABEL_6:
    sub_26A576F4C(v23, &qword_2803B38C0);
    goto LABEL_11;
  }

  v35 = v57;
  VRXIdiom.idiom.getter(*(v57 + 8), v11);
  sub_26A84BAA8();
  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_4_11();
  v37 = *(v36 + 8);
  v37(v19, v31);
  OUTLINED_FUNCTION_6_20(v23, 1, v24);
  if (v38)
  {
    goto LABEL_6;
  }

  v39 = v35;
  v40 = v56;
  (*(v56 + 32))(v58, v23, v24);
  sub_26A576FA8(v54, v16, &qword_2803B3800);
  OUTLINED_FUNCTION_6_20(v16, 1, v31);
  if (v41)
  {
    sub_26A576F4C(v16, &qword_2803B3800);
    v54 = 0;
    v43 = 0;
  }

  else
  {
    v54 = sub_26A84BA98();
    v43 = v42;
    v37(v16, v31);
  }

  v44 = v55;
  (*(v40 + 16))(v55, v58, v24);
  v60 = v53;
  v45 = type metadata accessor for StandardActionHandler(0);
  v46 = v45[7];
  v47 = v39;
  v59 = *(v39 + v45[8]);
  v48 = *(v39 + v46);
  v49 = *(v39 + v46 + 8);
  v50 = *(v39 + v45[10]);
  objc_allocWithZone(type metadata accessor for RFInteractionPerformed());

  v51 = RFInteractionPerformed.init(actionName:command:interactionType:componentType:componentName:componentIndex:)(v54, v43, v44, &v60, &v59, v48, v49, v50, 0);
  sub_26A5E6164(v51, *(v47 + v45[11]), *(v47 + v45[11] + 8));

  (*(v40 + 8))(v58, v24);
LABEL_11:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5763E8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_26A576640(a1, sub_26A71CDA0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_26A57648C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5764FC@<X0>(void *a1@<X8>)
{
  result = Form.state.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_26A5765D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A576640(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_26A71D074(v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_26A574420(&v31);
    if (!*(&v32 + 1))
    {
      sub_26A55E6A0();
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_26A576F3C(v34, v27);
    v7 = *a5;
    v9 = sub_26A548744();
    v10 = v7[2];
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (v7[3] >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC08);
        sub_26A8523F8();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_26A71CA10(v12, a4 & 1);
      v14 = sub_26A548744();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_26A5136A0(v27, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_26A5497BC(&v28);
        v17 = (v16[7] + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_26A576F3C(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_26A576F3C(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_26A852618();
  __break(1u);
  return result;
}

uint64_t sub_26A576884(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A84ABF8();

  return v3;
}

uint64_t sub_26A5768F4(void *a1)
{
  v2 = [a1 invocationIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

void sub_26A57698C()
{
  sub_26A576DC8(319, &qword_2803ADBD8, MEMORY[0x277D837D0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A576BD4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A576B80(319, &qword_2803ADBE0, &qword_2803ADBC8);
      if (v2 <= 0x3F)
      {
        sub_26A576B80(319, &unk_2803B3870, &qword_2803ABFB8);
        if (v3 <= 0x3F)
        {
          sub_26A576B80(319, &qword_2803ADBE8, &qword_2803ADBF0);
          if (v4 <= 0x3F)
          {
            sub_26A576DC8(319, &qword_2803ADBF8, MEMORY[0x277D83B88], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_26A576BD4(319, qword_28157E338, type metadata accessor for StandardActionHandler, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A576B80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_26A84EEA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A576BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26A576C60()
{
  type metadata accessor for VRXIdiom();
  if (v0 <= 0x3F)
  {
    sub_26A576BD4(319, &qword_28157FF90, MEMORY[0x277D637F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26A576DC8(319, &qword_2803AC920, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A576DC8(319, &qword_2803ADC00, &type metadata for ComponentType, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Form();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A576DC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26A576E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A576E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A576EE0(uint64_t a1)
{
  v2 = type metadata accessor for ActionType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_26A576F3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26A576F4C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_4_11();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A576FA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4_11();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return sub_26A84BAB8();
}

uint64_t sub_26A577078()
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_2();
  v4 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_26A851EA8();
    v5 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    OUTLINED_FUNCTION_112();
    swift_getAtKeyPath();
    sub_26A49035C(v4, 0);
    (*(v3 + 8))(v1, v2);
    LOBYTE(v4) = v7;
  }

  return v4 & 1;
}

uint64_t sub_26A5771AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for StatusIndicatorView(0);
  sub_26A57EA04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84EE68();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A5773B4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for StatusIndicatorView(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A577508@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for StatusIndicatorView(0);
  sub_26A57EA04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A577710()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for StatusIndicatorView(0);
  sub_26A57EA04();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A57E9B4();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A5778F8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for StatusIndicatorView(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A577A50()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for StatusIndicatorView(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_26A577BA8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for StatusIndicatorView(0) + 56));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

double sub_26A577D04()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for StatusIndicatorView(0) + 60));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_26A577E60()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for StatusIndicatorView(0) + 64);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t StatusIndicatorView.init(message:type:showIndicator:)@<X0>(void *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = type metadata accessor for StatusIndicatorView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_75_1();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v11 = v8[7];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_75_1();
  v12 = v8[8];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_75_1();
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v14);
  v15 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v15);
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v16);
  v17 = a4 + v8[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v18);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v20);
  v21 = v8[17];
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, qword_2803D1B00, sizeof(__dst));
  memcpy(&__src[368], qword_2803D1B00, 0xD0uLL);
  sub_26A57EA04();
  sub_26A6AEE74(__src);
  memcpy(v34, &__src[400], 0xB0uLL);
  memcpy(&__src[192], &__src[400], 0xB0uLL);
  memcpy((a4 + v21), __src, 0x240uLL);
  v22 = v8[18];
  sub_26A54DFFC(v34, v31);
  if (qword_2803A8D08 != -1)
  {
    swift_once();
  }

  v23 = a4 + v22;
  v24 = xmmword_2803D2028;
  v25 = qword_2803D2038;
  v26 = unk_2803D2040;
  v27 = qword_2803D2048;

  sub_26A6AEE74(v31);
  memcpy(v23, v31, 0xC0uLL);
  *(v23 + 192) = v27;
  *(v23 + 200) = v24;
  *(v23 + 216) = v25;
  *(v23 + 224) = v26;
  *(v23 + 232) = v27;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  *(a4 + v8[19]) = (*(v29 + 8))(v28, v29);
  *(a4 + v8[21]) = v7;
  *(a4 + v8[20]) = a3 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A578350()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for StatusIndicatorView(0) + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[1];
  }

  return sub_26A59FB78(v6);
}

uint64_t sub_26A5784B8()
{
  v1 = sub_26A84EE68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-v6];
  v8 = type metadata accessor for StatusIndicatorConstants(0);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  sub_26A578350();
  v22 = *(v0 + *(type metadata accessor for StatusIndicatorView(0) + 84));
  v13 = sub_26A5773B4();
  sub_26A578830(&v22, v13);
  sub_26A57E5D0();
  sub_26A57EA04();
  v14 = type metadata accessor for StatusIndicatorConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    sub_26A4D6FD8();
LABEL_9:
    v19 = [objc_opt_self() systemBackgroundColor];
    v18 = sub_26A850D38();
    goto LABEL_10;
  }

  sub_26A5771AC(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
  v15 = sub_26A84EE58();
  v16 = *(v2 + 8);
  v16(v4, v1);
  v17 = *(v11 + 9);
  if (v15)
  {
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_8:
    v16(v7, v1);
    sub_26A57E5D0();
    goto LABEL_9;
  }

  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_7:
  v18 = sub_26A850E68();
  v16(v7, v1);
  sub_26A57E5D0();
LABEL_10:
  sub_26A4D6FD8();
  return v18;
}

uint64_t sub_26A578830(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StatusIndicatorConstants(0);
  MEMORY[0x28223BE20](v3);
  sub_26A59FB78(a2);
  sub_26A57EA04();
  return sub_26A57E5D0();
}

uint64_t sub_26A57893C()
{
  v1 = type metadata accessor for StatusIndicatorConstants(0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_26A578350();
  v10 = *(v0 + *(type metadata accessor for StatusIndicatorView(0) + 84));
  v5 = sub_26A5773B4();
  sub_26A578830(&v10, v5);
  sub_26A57E5D0();
  v6 = type metadata accessor for StatusIndicatorConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_26A4D6FD8();
    return sub_26A850E78();
  }

  else
  {
    v7 = *(v4 + 10);

    sub_26A57E5D0();
  }

  return v7;
}

uint64_t StatusIndicatorView.defaultContent.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StatusIndicatorConstants(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_89();
  v13[0] = sub_26A84FA78();
  LOBYTE(v13[1]) = 0;
  sub_26A578E58(&v13[1] + 1);
  sub_26A577D04();
  type metadata accessor for StatusIndicatorView(0);
  sub_26A577A50();
  sub_26A577BA8();
  sub_26A578350();
  OUTLINED_FUNCTION_8_16();
  sub_26A57E5D0();
  sub_26A84F628();
  memcpy(v17, v13, 0x158uLL);
  v4 = sub_26A5784B8();
  v5 = sub_26A850248();
  memcpy(v18, v17, sizeof(v18));
  v19 = 256;
  v20 = v4;
  v21 = v5;
  sub_26A578350();
  sub_26A57EA04();
  OUTLINED_FUNCTION_8_16();
  sub_26A57E5D0();
  if (*(&v13[1] + 1))
  {
    sub_26A4C2314(v13, v16);
    v6 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_41();
    (*(v9 + 16))(v8 - v7);
    v10 = sub_26A851358();
    OUTLINED_FUNCTION_90_0();
    v14 = v10;
    v15 = 256;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC70);
    sub_26A57D624();
    sub_26A851248();
    OUTLINED_FUNCTION_89_0();
    result = __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_90_0();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC20);
    sub_26A57D428();
    sub_26A851248();
    result = OUTLINED_FUNCTION_89_0();
  }

  *a1 = v11;
  return result;
}

uint64_t sub_26A578E58@<X0>(void *a1@<X8>)
{
  sub_26A578FD0();
  type metadata accessor for StatusIndicatorView(0);

  sub_26A57893C();
  swift_getKeyPath();
  if (qword_2803A90A8 != -1)
  {
    swift_once();
  }

  sub_26A57EA04();
  sub_26A6AEE74(__src);
  memcpy(v4, __src, sizeof(v4));
  v6 = 0;
  v5 = sub_26A80A810;
  sub_26A57EA04();
  *a1 = v3;
  sub_26A57EA04();

  sub_26A4D6FD8();
  sub_26A4D6FD8();
}

void sub_26A578FD0()
{
  OUTLINED_FUNCTION_28_0();
  v34 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDB8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v4);
  v6 = (&v33 - v5);
  v7 = type metadata accessor for StatusIndicatorConstants(0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  OUTLINED_FUNCTION_79(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for StatusIndicatorConfiguration(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  sub_26A578350();
  v18 = type metadata accessor for StatusIndicatorView(0);
  v36 = *(v0 + *(v18 + 84));
  v19 = sub_26A5773B4();
  sub_26A578830(&v36, v19);
  OUTLINED_FUNCTION_8_16();
  sub_26A57E5D0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_26A4D6FD8();
LABEL_6:
    v32 = sub_26A851248();
    goto LABEL_7;
  }

  sub_26A57E624();
  if (*(v0 + *(v18 + 80)) != 1)
  {
    sub_26A57E5D0();
    goto LABEL_6;
  }

  sub_26A57A4D0(v17, &v35);
  sub_26A6078C0();
  v21 = v20;

  v22 = *(v13 + 36);
  KeyPath = swift_getKeyPath();
  v24 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC0) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDC8) + 28);
  sub_26A850F88();
  OUTLINED_FUNCTION_5_0();
  (*(v26 + 16))(v24 + v25, v17 + v22);
  *v24 = KeyPath;
  *v6 = v21;
  LOBYTE(KeyPath) = sub_26A850298();
  sub_26A84ED48();
  v27 = v6 + *(v2 + 36);
  *v27 = KeyPath;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_26A57EA04();
  sub_26A57E674();
  v32 = sub_26A851248();
  OUTLINED_FUNCTION_80_1();
  sub_26A4D6FD8();
  sub_26A57E5D0();
LABEL_7:
  *v34 = v32;
  OUTLINED_FUNCTION_27_0();
}

uint64_t StatusIndicatorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for StatusIndicatorView(0);
  v57 = *(v3 - 8);
  v56 = *(v57 + 64);
  v4 = v3 - 8;
  v52 = v3 - 8;
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA130);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC98);
  OUTLINED_FUNCTION_79(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v50 = &v49 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADCA0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v22);
  v51 = &v49 - v23;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADCA8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v53 = &v49 - v25;
  sub_26A577710();
  v26 = sub_26A5778F8();
  v27 = 280;
  if (v26)
  {
    v27 = 296;
  }

  v28 = *(v1 + *(v4 + 76) + v27);
  v29 = sub_26A577E60();
  v28(v29);
  v60 = 0;
  v61 = v30;
  v62 = 0;
  v63 = v30;
  v64 = 0;
  sub_26A5773B4();
  sub_26A577508(v9);
  v31 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v31);
  v59 = v1;
  sub_26A4C7008();
  v32 = sub_26A850268();
  sub_26A579988();
  sub_26A84ED48();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_26A57E9B4();
  v41 = &v17[*(v14 + 44)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_26A57E52C();
  v42 = swift_allocObject();
  sub_26A57E624();
  sub_26A579D7C(sub_26A57D6E4, v42, v50);

  sub_26A4D6FD8();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_26A68CB2C;
  *(v43 + 24) = 0;
  v44 = &v51[*(v21 + 44)];
  *(v44 + 2) = swift_getKeyPath();
  v44[24] = 0;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8) + 40);
  *&v44[v45] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  *v44 = sub_26A4D1F7C;
  *(v44 + 1) = v43;
  sub_26A57E9B4();
  v47 = v53;
  LOBYTE(v43) = *(v2 + *(v52 + 92)) + 25;
  sub_26A57E9B4();
  v47[*(v54 + 44)] = v43;
  return sub_26A57E9B4();
}

uint64_t sub_26A57994C@<X0>(void *a1@<X8>)
{
  result = StatusIndicatorView.defaultContent.getter(&v3);
  *a1 = v3;
  return result;
}

double sub_26A579988()
{
  v1 = v0;
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StatusIndicatorView(0);
  v7 = v1 + v6[11];
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    result = 0.0;
    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v5, v2);
    result = 0.0;
    if (v27 != 1)
    {
      return result;
    }
  }

  v11 = v1 + v6[10];
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    if (v12)
    {
      return result;
    }
  }

  else
  {

    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v12, 0);
    (*(v3 + 8))(v5, v2);
    result = 0.0;
    if (v26)
    {
      return result;
    }
  }

  v14 = v1 + v6[13];
  v15 = *v14;
  v16 = *(v14 + 8);
  if (*(v14 + 9) == 1)
  {
    v24 = *v14;
    v25 = v16 & 1;
    if ((v16 & 1) == 0)
    {
      return 0.0;
    }
  }

  else
  {

    sub_26A851EA8();
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4F5724(v15, v16, 0);
    (*(v3 + 8))(v5, v2);
    v15 = v24;
    if ((v25 & 1) == 0)
    {
      return 0.0;
    }
  }

  if (!v15)
  {
    return 0.0;
  }

  v18 = sub_26A577078();
  result = 0.0;
  if ((v18 & 1) == 0)
  {
    v19 = sub_26A5778F8();
    v20 = 280;
    if (v19)
    {
      v20 = 296;
    }

    v21 = *(v1 + v6[17] + v20);
    v22 = sub_26A577E60();
    v21(v22);
    result = v23 - *(v1 + v6[18] + 192);
    if (result <= 0.0)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_26A579D04(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for StatusIndicatorView(0) + 68);
  v4 = 296;
  if (v2 == 74)
  {
    v4 = 280;
  }

  v5 = *(v3 + v4);
  v6 = sub_26A577E60();
  v5(v6);
  return 1;
}

uint64_t sub_26A579D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_26A57EA04();
  v4 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC98) + 36);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = KeyPath;
  *(v4 + 24) = 0;
  *(v4 + 32) = v13;
  *(v4 + 40) = 0;
  *(v4 + 48) = v12;
  *(v4 + 56) = 0;
  *(v4 + 64) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = v9;
  *(v4 + 88) = 0;
  *(v4 + 96) = v8;
  *(v4 + 104) = 0;
  *(v4 + 112) = v7;
  *(v4 + 120) = 0;
  *(v4 + 128) = v6;
  *(v4 + 136) = 0;
  *(v4 + 144) = v3;
  *(v4 + 152) = 0;
}

uint64_t sub_26A579F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = KeyPath;
  *(a4 + 32) = 0;
  *(a4 + 40) = v7;
  *(a4 + 48) = 0;
  *(a4 + 56) = v8;
  *(a4 + 64) = 0;
  *(a4 + 72) = v9;
  *(a4 + 80) = 0;
  *(a4 + 88) = v10;
  *(a4 + 96) = 0;
  *(a4 + 104) = v11;
  *(a4 + 112) = 0;
  *(a4 + 120) = v12;
  *(a4 + 128) = 0;
  *(a4 + 136) = v13;
  *(a4 + 144) = 0;
  *(a4 + 152) = v14;
  *(a4 + 160) = 0;
}

uint64_t sub_26A57A128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 16))(a5);
  v8 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a4) + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = KeyPath;
  *(v8 + 24) = 0;
  *(v8 + 32) = v17;
  *(v8 + 40) = 0;
  *(v8 + 48) = v16;
  *(v8 + 56) = 0;
  *(v8 + 64) = v15;
  *(v8 + 72) = 0;
  *(v8 + 80) = v13;
  *(v8 + 88) = 0;
  *(v8 + 96) = v12;
  *(v8 + 104) = 0;
  *(v8 + 112) = v11;
  *(v8 + 120) = 0;
  *(v8 + 128) = v10;
  *(v8 + 136) = 0;
  *(v8 + 144) = v6;
  *(v8 + 152) = 0;
}

uint64_t sub_26A57A310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_26A498D58();
  v4 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD98) + 36);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = KeyPath;
  *(v4 + 24) = 0;
  *(v4 + 32) = v13;
  *(v4 + 40) = 0;
  *(v4 + 48) = v11;
  *(v4 + 56) = 0;
  *(v4 + 64) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = v9;
  *(v4 + 88) = 0;
  *(v4 + 96) = v8;
  *(v4 + 104) = 0;
  *(v4 + 112) = v7;
  *(v4 + 120) = 0;
  *(v4 + 128) = v6;
  *(v4 + 136) = 0;
  *(v4 + 144) = v3;
  *(v4 + 152) = 0;
}

uint64_t sub_26A57A4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDD8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  if (*(a1 + 8))
  {

    v8 = sub_26A850F08();
    v9 = *(a1 + 64);
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    v12 = swift_getKeyPath();
    v23 = 0;
    v22 = 0;
    v18[1] = v8;
    v18[2] = KeyPath;
    v18[3] = v9;
    v18[4] = v11;
    v19 = 0;
    v20 = v12;
    v21 = 256;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADDF8);
    sub_26A57E870();
    result = sub_26A851248();
    v14 = result;
  }

  else
  {
    sub_26A84EF98();
    v15 = swift_getKeyPath();
    v16 = swift_getKeyPath();
    v17 = &v7[*(v4 + 36)];
    *v17 = v15;
    v17[8] = 0;
    *(v17 + 2) = v16;
    *(v17 + 12) = 0;
    sub_26A57EA04();
    sub_26A57E7B8();
    v14 = sub_26A851248();
    result = sub_26A4D6FD8();
  }

  *a2 = v14;
  return result;
}

uint64_t StatusIndicatorView.IndicatorType.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

void sub_26A57A758()
{
  OUTLINED_FUNCTION_28_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_7();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_35_4();
  __swift_allocate_value_buffer(v12, qword_2803D1A88);
  __swift_project_value_buffer(v12, qword_2803D1A88);
  if (qword_2803A9040 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  sub_26A57EA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_88_0(inited, xmmword_26A8570D0);
  if (qword_28157E748 != -1)
  {
    OUTLINED_FUNCTION_4_18();
  }

  v14 = OUTLINED_FUNCTION_11_1(&qword_281588948);
  sub_26A4E324C(v14, v15);

  sub_26A58787C(v16);
  sub_26A5075B0();

  v65 = v8;
  v64 = v0;
  if (v66)
  {
    *(v2 + 16) = OUTLINED_FUNCTION_48_1();
    *(v2 + 32) = v17;
    *(v2 + 48) = OUTLINED_FUNCTION_84_1();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v18, v2 + 16);
  }

  OUTLINED_FUNCTION_82_1();
  sub_26A4D6FD8();
  v19 = sub_26A850E08();
  v20 = sub_26A850E08();
  v21 = sub_26A850E08();
  v22 = *(OUTLINED_FUNCTION_74_1() + 36);
  v23 = *MEMORY[0x277CE1050];
  sub_26A850F88();
  OUTLINED_FUNCTION_5_0();
  (*(v24 + 104))(v2 + v22, v23);
  OUTLINED_FUNCTION_27_5();
  *v2 = v25;
  *(v2 + 8) = v8;
  *(v2 + 64) = v19;
  *(v2 + 72) = v20;
  *(v2 + 80) = v21;
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_21_5(v26, xmmword_26A85FA80);
  sub_26A57EA04();
  v27 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v27);
  v28 = OUTLINED_FUNCTION_11_1(&qword_281588948);
  sub_26A4E324C(v28, v29);

  sub_26A58787C(v30);
  sub_26A5075B0();

  if (v66)
  {
    *(v1 + 16) = OUTLINED_FUNCTION_48_1();
    *(v1 + 32) = v31;
    *(v1 + 48) = OUTLINED_FUNCTION_84_1();
  }

  else
  {
    sub_26A4F20CC(v68, v1 + 16);
  }

  sub_26A4D6FD8();
  v32 = sub_26A850D68();
  v33 = sub_26A850D68();
  v34 = sub_26A850D68();
  OUTLINED_FUNCTION_64_1();
  v35();
  OUTLINED_FUNCTION_54_2();
  *v1 = v36;
  *(v1 + 8) = 0x800000026A88BF70;
  *(v1 + 64) = v32;
  *(v1 + 72) = v33;
  *(v1 + 80) = v34;
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_20_6(v37, xmmword_26A85FA80);
  OUTLINED_FUNCTION_79_0();
  sub_26A57EA04();
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v38);
  v39 = OUTLINED_FUNCTION_11_1(&qword_281588948);
  sub_26A4E324C(v39, v40);

  sub_26A58787C(v41);
  sub_26A5075B0();

  if (v66)
  {
    *(v64 + 16) = OUTLINED_FUNCTION_48_1();
    *(v64 + 32) = v42;
    *(v64 + 48) = OUTLINED_FUNCTION_84_1();
  }

  else
  {
    sub_26A4F20CC(v32 + 32, v64 + 16);
  }

  sub_26A4D6FD8();
  v43 = sub_26A850E78();
  v44 = sub_26A850E78();
  v45 = sub_26A850E78();
  OUTLINED_FUNCTION_64_1();
  v46();
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 64) = v43;
  *(v64 + 72) = v44;
  *(v64 + 80) = v45;
  *(v64 + *(v3 + 40)) = 0x4014000000000000;
  v47 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_19_7(v48, v47);
  sub_26A57EA04();
  v49 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v49);
  v50 = OUTLINED_FUNCTION_11_1(&qword_281588948);
  sub_26A4E324C(v50, v51);

  v53 = sub_26A58787C(v52);
  sub_26A5075B0();

  if (v66)
  {
    *(v65 + 16) = OUTLINED_FUNCTION_48_1();
    *(v65 + 32) = v54;
    *(v65 + 48) = OUTLINED_FUNCTION_84_1();
  }

  else
  {
    sub_26A4F20CC(v68, v65 + 16);
  }

  sub_26A4D6FD8();
  v55 = sub_26A850E78();
  v56 = sub_26A850E78();
  sub_26A850E78();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_64_1();
  v57();
  OUTLINED_FUNCTION_54_2();
  *v65 = v58 + 1;
  *(v65 + 8) = 0x800000026A88BF90;
  *(v65 + 64) = v55;
  *(v65 + 72) = v56;
  *(v65 + 80) = v53;
  *(v65 + *(v3 + 40)) = 0x4008000000000000;
  v59 = OUTLINED_FUNCTION_57_0();
  *(v65 + v60) = v59;
  OUTLINED_FUNCTION_58_2(v65, 0);
  v67[3] = sub_26A8512A8();
  OUTLINED_FUNCTION_10_12();
  v68[0] = sub_26A57D874();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v62 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_5_0();
  (*(v63 + 104))(boxed_opaque_existential_1, v62);
  sub_26A851448();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_22_8();
  OUTLINED_FUNCTION_9_15();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57ADE0()
{
  OUTLINED_FUNCTION_28_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v54 = v6 - v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_7();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_35_4();
  __swift_allocate_value_buffer(v11, qword_2803D1AA0);
  v12 = OUTLINED_FUNCTION_80_1();
  __swift_project_value_buffer(v12, v13);
  if (qword_2803A9018 != -1)
  {
    OUTLINED_FUNCTION_14_9();
  }

  sub_26A57EA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_88_0(inited, xmmword_26A8570D0);
  if (qword_28157E748 != -1)
  {
    OUTLINED_FUNCTION_4_18();
  }

  v15 = OUTLINED_FUNCTION_12_9(&qword_281588948);
  v17 = OUTLINED_FUNCTION_94_0(v15, v16);
  sub_26A58787C(v17);
  sub_26A5075B0();

  if (v56)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v18, v57);
  }

  sub_26A4D6FD8();
  sub_26A850388();
  v19 = sub_26A850428();
  sub_26A57EA04();
  *(v2 + 2) = v19;
  sub_26A57E57C(v57);
  v20 = sub_26A850E08();
  v21 = sub_26A850E08();
  v22 = sub_26A850E08();
  v23 = *(OUTLINED_FUNCTION_74_1() + 36);
  v24 = *MEMORY[0x277CE1048];
  sub_26A850F88();
  OUTLINED_FUNCTION_5_0();
  v53 = v26;
  v55 = *(v25 + 104);
  v55(&v2[v23], v24);
  OUTLINED_FUNCTION_54_2();
  *v2 = v27;
  *(v2 + 1) = 0x800000026A88BFB0;
  *(v2 + 8) = v20;
  *(v2 + 9) = v21;
  *(v2 + 10) = v22;
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_21_5(v28, xmmword_26A85FA80);
  OUTLINED_FUNCTION_79_0();
  sub_26A57EA04();
  v29 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v29);
  v30 = OUTLINED_FUNCTION_11_12(&qword_281588948);
  v32 = OUTLINED_FUNCTION_93_0(v30, v31);
  sub_26A58787C(v32);
  sub_26A5075B0();

  if (v56)
  {
    OUTLINED_FUNCTION_81_1();
  }

  else
  {
    sub_26A4F20CC(v24 + 32, v57);
  }

  OUTLINED_FUNCTION_82_1();
  sub_26A4D6FD8();
  sub_26A850388();
  v33 = sub_26A850428();
  sub_26A57EA04();
  v1[2] = v33;
  sub_26A57E57C(v57);
  v34 = sub_26A850D68();
  v35 = sub_26A850D68();
  v36 = sub_26A850D68();
  (v55)(v1 + *(v3 + 36), v24, v53);
  OUTLINED_FUNCTION_54_2();
  *v1 = v37;
  v1[1] = v23;
  v1[8] = v34;
  v1[9] = v35;
  v1[10] = v36;
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_20_6(v38, xmmword_26A85FA80);
  if (qword_2803A9040 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  sub_26A57EA04();
  v39 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v39);
  v40 = OUTLINED_FUNCTION_12_9(&qword_281588948);
  v42 = OUTLINED_FUNCTION_94_0(v40, v41);
  v43 = sub_26A58787C(v42);
  sub_26A5075B0();

  if (*&v57[0])
  {
    v44 = v57[1];
    *(v0 + 16) = v57[0];
    *(v0 + 32) = v44;
    *(v0 + 48) = v57[2];
  }

  else
  {
    sub_26A4F20CC(v59, v0 + 16);
  }

  sub_26A4D6FD8();
  v45 = sub_26A850E78();
  v46 = sub_26A850E78();
  sub_26A850E78();
  OUTLINED_FUNCTION_71_1();
  (v55)(v0 + v47, *MEMORY[0x277CE1058], v53);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 64) = v45;
  *(v0 + 72) = v46;
  *(v0 + 80) = v43;
  *(v0 + *(v3 + 40)) = 0x4014000000000000;
  v48 = OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_19_7(v49, v48);
  OUTLINED_FUNCTION_58_2(v54, 1);
  v58[3] = sub_26A8512A8();
  OUTLINED_FUNCTION_10_12();
  v59[0] = sub_26A57D874();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  v51 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_5_0();
  (*(v52 + 104))(boxed_opaque_existential_1, v51);
  sub_26A851458();
  OUTLINED_FUNCTION_72_1();
  sub_26A57E9B4();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_22_8();
  OUTLINED_FUNCTION_9_15();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57B3D8()
{
  OUTLINED_FUNCTION_28_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v61 = v6 - v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_7();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_35_4();
  __swift_allocate_value_buffer(v11, qword_2803D1AB8);
  v60 = v11;
  v12 = OUTLINED_FUNCTION_80_1();
  __swift_project_value_buffer(v12, v13);
  if (qword_2803A9018 != -1)
  {
    OUTLINED_FUNCTION_14_9();
  }

  sub_26A57EA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_88_0(inited, xmmword_26A8570D0);
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v15 = OUTLINED_FUNCTION_12_9(&qword_281588998);
  v17 = OUTLINED_FUNCTION_94_0(v15, v16);
  sub_26A58787C(v17);
  sub_26A5075B0();

  if (v64)
  {
    OUTLINED_FUNCTION_78_1();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v18, v65);
  }

  sub_26A4D6FD8();
  sub_26A850388();
  v19 = sub_26A850428();
  sub_26A57EA04();
  *(v2 + 2) = v19;
  sub_26A57E57C(v65);
  v20 = sub_26A850E78();
  v21 = sub_26A850E78();
  v22 = *(OUTLINED_FUNCTION_74_1() + 36);
  v23 = *MEMORY[0x277CE1048];
  sub_26A850F88();
  OUTLINED_FUNCTION_5_0();
  v62 = *(v24 + 104);
  v63 = v25;
  v62(&v2[v22], v23);
  OUTLINED_FUNCTION_27_5();
  *v2 = v26;
  *(v2 + 1) = 0x800000026A88BF50;
  *(v2 + 8) = v20;
  *(v2 + 9) = 0;
  *(v2 + 10) = v21;
  OUTLINED_FUNCTION_61_1();
  *&v2[v27] = v28;
  __asm { FMOV            V0.2D, #1.0 }

  OUTLINED_FUNCTION_21_5(v3[11], _Q0);
  sub_26A57EA04();
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v34);
  v35 = OUTLINED_FUNCTION_11_12(&qword_281588998);
  v37 = OUTLINED_FUNCTION_93_0(v35, v36);
  sub_26A58787C(v37);
  sub_26A5075B0();

  if (v64)
  {
    OUTLINED_FUNCTION_78_1();
  }

  else
  {
    v38 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v38, v65);
  }

  sub_26A4D6FD8();
  sub_26A850388();
  v39 = sub_26A850428();
  sub_26A57EA04();
  v1[2] = v39;
  sub_26A57E57C(v65);
  v40 = sub_26A850E78();
  sub_26A850E78();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_67_1();
  v43(v41, v42);
  OUTLINED_FUNCTION_54_2();
  *v1 = v44;
  v1[1] = 0x800000026A88BF70;
  v1[8] = v40;
  v1[9] = 0;
  v1[10] = v34;
  OUTLINED_FUNCTION_61_1();
  *(v1 + v45) = v46;
  v47 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_20_6(v48, v47);
  if (qword_2803A9040 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  sub_26A57EA04();
  v49 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v49);
  if (qword_28157E748 != -1)
  {
    OUTLINED_FUNCTION_4_18();
  }

  v50 = OUTLINED_FUNCTION_12_9(&qword_281588948);
  v52 = OUTLINED_FUNCTION_94_0(v50, v51);
  sub_26A58787C(v52);
  sub_26A5075B0();

  if (*&v65[0])
  {
    v53 = v65[1];
    *(v0 + 16) = v65[0];
    *(v0 + 32) = v53;
    *(v0 + 48) = v65[2];
  }

  else
  {
    v54 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v54, v0 + 16);
  }

  sub_26A4D6FD8();
  v55 = sub_26A850E78();
  v56 = sub_26A850E78();
  (v62)(v0 + v3[9], *MEMORY[0x277CE1058], v63);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 64) = v55;
  *(v0 + 72) = 0;
  *(v0 + 80) = v56;
  *(v0 + v3[10]) = 0x4028000000000000;
  v57 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_19_7(v58, v57);
  OUTLINED_FUNCTION_58_2(v61, 1);
  sub_26A851458();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_22_8();
  v59 = v3 + *(v60 + 32);
  *(v59 + 4) = 0;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57B960()
{
  OUTLINED_FUNCTION_28_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v69 = (v5 - v6);
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_7();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_35_4();
  __swift_allocate_value_buffer(v10, qword_2803D1AD0);
  __swift_project_value_buffer(v10, qword_2803D1AD0);
  if (qword_2803A9018 != -1)
  {
    OUTLINED_FUNCTION_14_9();
  }

  sub_26A57EA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v13 = OUTLINED_FUNCTION_93_0(v11, v12);
  sub_26A58787C(v13);
  sub_26A5075B0();

  v68 = v0;
  if (v72)
  {
    OUTLINED_FUNCTION_49_1();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v14, v73);
  }

  OUTLINED_FUNCTION_82_1();
  sub_26A4D6FD8();
  sub_26A850388();
  v15 = sub_26A850428();
  sub_26A57EA04();
  *(v2 + 2) = v15;
  sub_26A57E57C(v73);
  v16 = sub_26A850E08();
  v17 = sub_26A850E08();
  v18 = sub_26A850E08();
  v19 = *(OUTLINED_FUNCTION_74_1() + 36);
  v20 = *MEMORY[0x277CE1048];
  sub_26A850F88();
  OUTLINED_FUNCTION_5_0();
  v70 = *(v21 + 104);
  v71 = v22;
  v70(&v2[v19], v20);
  OUTLINED_FUNCTION_27_5();
  *v2 = v23;
  *(v2 + 1) = v10;
  *(v2 + 8) = v16;
  *(v2 + 9) = v17;
  *(v2 + 10) = v18;
  OUTLINED_FUNCTION_61_1();
  *&v2[v24] = v25;
  OUTLINED_FUNCTION_21_5(*(v15 + 44), xmmword_26A85FA80);
  sub_26A57EA04();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_66_1(inited);
  v27 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v29 = OUTLINED_FUNCTION_93_0(v27, v28);
  sub_26A58787C(v29);
  sub_26A5075B0();

  if (v72)
  {
    OUTLINED_FUNCTION_49_1();
  }

  else
  {
    sub_26A4F20CC(v75, v73);
  }

  OUTLINED_FUNCTION_82_1();
  sub_26A4D6FD8();
  sub_26A850388();
  v30 = sub_26A850428();
  sub_26A57EA04();
  v1[2] = v30;
  sub_26A57E57C(v73);
  v31 = sub_26A850D68();
  v32 = sub_26A850D68();
  v33 = sub_26A850D68();
  (v70)(v1 + *(v15 + 36), v20, v71);
  OUTLINED_FUNCTION_54_2();
  *v1 = v34;
  v1[1] = v74;
  v1[8] = v31;
  v1[9] = v32;
  v1[10] = v33;
  OUTLINED_FUNCTION_61_1();
  *(v1 + v35) = v36;
  v37 = OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_20_6(v38, v37);
  if (qword_2803A9040 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  sub_26A57EA04();
  v39 = swift_initStackObject();
  OUTLINED_FUNCTION_66_1(v39);
  if (qword_28157E748 != -1)
  {
    OUTLINED_FUNCTION_4_18();
  }

  v40 = OUTLINED_FUNCTION_11_12(&qword_281588948);
  v42 = OUTLINED_FUNCTION_93_0(v40, v41);
  sub_26A58787C(v42);
  sub_26A5075B0();

  if (*&v73[0])
  {
    v43 = v73[1];
    *(v68 + 16) = v73[0];
    *(v68 + 32) = v43;
    *(v68 + 48) = v73[2];
  }

  else
  {
    v44 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v44, v68 + 16);
  }

  sub_26A4D6FD8();
  v45 = sub_26A850E78();
  v46 = sub_26A850E78();
  v47 = sub_26A850E78();
  (v70)(v68 + *(v15 + 36), *MEMORY[0x277CE1058], v71);
  *v68 = 0;
  *(v68 + 8) = 0;
  *(v68 + 64) = v45;
  *(v68 + 72) = v46;
  *(v68 + 80) = v47;
  OUTLINED_FUNCTION_61_1();
  *(v68 + v48) = v49;
  v50 = OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_19_7(v51, v50);
  sub_26A57EA04();
  v52 = swift_initStackObject();
  OUTLINED_FUNCTION_66_1(v52);
  v53 = OUTLINED_FUNCTION_11_12(&qword_281588938);
  v55 = OUTLINED_FUNCTION_93_0(v53, v54);
  sub_26A58787C(v55);
  sub_26A5075B0();

  if (v72)
  {
    OUTLINED_FUNCTION_49_1();
  }

  else
  {
    sub_26A4F20CC(v75, v73);
  }

  sub_26A4D6FD8();
  sub_26A850388();
  v56 = sub_26A850428();
  sub_26A57EA04();
  v69[2] = v56;
  sub_26A57E57C(v73);
  v57 = sub_26A850E78();
  v58 = sub_26A850E78();
  sub_26A850E78();
  OUTLINED_FUNCTION_71_1();
  (v70)(v69 + v59, v20, v71);
  OUTLINED_FUNCTION_54_2();
  *v69 = v60 + 1;
  v69[1] = 0x800000026A88BF90;
  v69[8] = v57;
  v69[9] = v58;
  v69[10] = &unk_26A8567F0;
  OUTLINED_FUNCTION_61_1();
  *(v69 + v61) = v62;
  v63 = OUTLINED_FUNCTION_69_1();
  *(v69 + v64) = v63;
  OUTLINED_FUNCTION_58_2(v69, 0);
  v74[3] = sub_26A8512A8();
  OUTLINED_FUNCTION_10_12();
  v75[0] = sub_26A57D874();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  v66 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_5_0();
  (*(v67 + 104))(boxed_opaque_existential_1, v66);
  sub_26A851448();
  OUTLINED_FUNCTION_72_1();
  sub_26A57E9B4();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_22_8();
  OUTLINED_FUNCTION_9_15();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57C0CC()
{
  OUTLINED_FUNCTION_28_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADD30);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v51 = v5 - v6;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_7();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_35_4();
  __swift_allocate_value_buffer(v10, qword_2803D1AE8);
  v50 = v10;
  v11 = OUTLINED_FUNCTION_80_1();
  __swift_project_value_buffer(v11, v12);
  if (qword_2803A9040 != -1)
  {
    OUTLINED_FUNCTION_1_21();
  }

  sub_26A57EA04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_88_0(inited, xmmword_26A8570D0);
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v14 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  v16 = OUTLINED_FUNCTION_94_0(v14, v15);
  v17 = sub_26A58787C(v16);
  sub_26A5075B0();

  if (v53)
  {
    *(v2 + 16) = v53;
    *(v2 + 32) = v54;
    *(v2 + 48) = v55;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_56_1();
    sub_26A4F20CC(v18, v2 + 16);
  }

  sub_26A4D6FD8();
  v19 = sub_26A850E08();
  v20 = sub_26A850E78();
  v21 = *(OUTLINED_FUNCTION_74_1() + 36);
  v22 = *MEMORY[0x277CE1048];
  sub_26A850F88();
  OUTLINED_FUNCTION_5_0();
  (*(v23 + 104))(v2 + v21, v22);
  OUTLINED_FUNCTION_27_5();
  *v2 = v24;
  *(v2 + 8) = 0x800000026A88BF50;
  *(v2 + 64) = v19;
  *(v2 + 72) = 0;
  *(v2 + 80) = v20;
  OUTLINED_FUNCTION_46_2();
  __asm { FMOV            V0.2D, #1.0 }

  v52 = _Q0;
  OUTLINED_FUNCTION_21_5(v30, _Q0);
  OUTLINED_FUNCTION_79_0();
  sub_26A57EA04();
  v31 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v31);
  v32 = OUTLINED_FUNCTION_12_9(&qword_281588968);
  v34 = OUTLINED_FUNCTION_94_0(v32, v33);
  sub_26A58787C(v34);
  sub_26A5075B0();

  if (v53)
  {
    *(v1 + 16) = v53;
    *(v1 + 32) = v54;
    *(v1 + 48) = v55;
  }

  else
  {
    sub_26A4F20CC(0x800000026A88BF70, v1 + 16);
  }

  sub_26A4D6FD8();
  v35 = sub_26A850D98();
  v36 = sub_26A850E78();
  OUTLINED_FUNCTION_67_1();
  v37();
  OUTLINED_FUNCTION_54_2();
  *v1 = v38;
  *(v1 + 8) = 0x800000026A88BF70;
  *(v1 + 64) = v35;
  *(v1 + 72) = 0;
  *(v1 + 80) = v36;
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_20_6(v39, v52);
  OUTLINED_FUNCTION_79_0();
  sub_26A57EA04();
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_44_2(v40);
  v41 = qword_281588968;
  v40[2].n128_u64[0] = qword_281588968;
  v42 = byte_281588970;
  v40[2].n128_u8[8] = byte_281588970;
  sub_26A4E324C(v41, v42);

  v44 = sub_26A58787C(v43);
  sub_26A5075B0();

  if (v53)
  {
    *(v0 + 16) = v53;
    *(v0 + 32) = v54;
    *(v0 + 48) = v55;
  }

  else
  {
    sub_26A4F20CC(v36 + 32, v0 + 16);
  }

  sub_26A4D6FD8();
  v45 = sub_26A850E78();
  sub_26A850E78();
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_67_1();
  v46();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 64) = v45;
  *(v0 + 72) = 0;
  *(v0 + 80) = v44;
  *(v0 + *(v17 + 40)) = 0x4008000000000000;
  v47 = OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_19_7(v48, v47);
  OUTLINED_FUNCTION_58_2(v51, 1);
  sub_26A851458();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_23_6();
  OUTLINED_FUNCTION_22_8();
  v49 = v17 + *(v50 + 32);
  *(v49 + 32) = 0;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A57C5BC(uint64_t a1)
{
  if (qword_2803A8AB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, qword_2803D1A88);
  return sub_26A57E52C();
}

uint64_t sub_26A57C71C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(a1, a4);
  return sub_26A57E52C();
}

void sub_26A57C798()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A84BAB8();
  OUTLINED_FUNCTION_13_11();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_47_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x28223BE20](v4);
  v6 = (v20 - v5);
  v7 = type metadata accessor for StatusIndicatorView(0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC78);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50_2();
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC80);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_89();
  v12 = sub_26A84B888();
  OUTLINED_FUNCTION_92_0(v12, &protocol witness table for TextProperty);
  sub_26A84D458();
  v21 = 0;
  v13 = sub_26A84D438();
  OUTLINED_FUNCTION_30_4(v13);
  OUTLINED_FUNCTION_76_0();
  sub_26A84D478();
  OUTLINED_FUNCTION_87_0();
  sub_26A57E9B4();
  OUTLINED_FUNCTION_39_3();
  if (v14)
  {
    sub_26A4D6FD8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_52_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v15 = OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_31_5(v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_7();
    v6(v16);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_53_2(KeyPath);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v19 = OUTLINED_FUNCTION_26_4(v18);
    v6(v19);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_25_8();
  }

  OUTLINED_FUNCTION_112();
  sub_26A57E624();
  sub_26A84D448();
  OUTLINED_FUNCTION_63_1();

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_41_5();
  sub_26A57EA54();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57CA9C()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A84BAB8();
  OUTLINED_FUNCTION_13_11();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_47_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x28223BE20](v4);
  v6 = (v20 - v5);
  v7 = type metadata accessor for StatusIndicatorView(0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC78);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50_2();
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC80);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_89();
  v12 = sub_26A84B888();
  OUTLINED_FUNCTION_92_0(v12, &protocol witness table for TextProperty);
  sub_26A84CF28();
  v21 = 1;
  v13 = sub_26A84CF08();
  OUTLINED_FUNCTION_30_4(v13);
  OUTLINED_FUNCTION_76_0();
  sub_26A84CF48();
  OUTLINED_FUNCTION_87_0();
  sub_26A57E9B4();
  OUTLINED_FUNCTION_39_3();
  if (v14)
  {
    sub_26A4D6FD8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_52_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v15 = OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_31_5(v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_7();
    v6(v16);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_53_2(KeyPath);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v19 = OUTLINED_FUNCTION_26_4(v18);
    v6(v19);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_25_8();
  }

  OUTLINED_FUNCTION_112();
  sub_26A57E624();
  sub_26A84CF18();
  OUTLINED_FUNCTION_63_1();

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_41_5();
  sub_26A57EA54();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57CDA4()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A84BAB8();
  OUTLINED_FUNCTION_13_11();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_47_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x28223BE20](v4);
  v6 = (v20 - v5);
  v7 = type metadata accessor for StatusIndicatorView(0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC78);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50_2();
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC80);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_89();
  v12 = sub_26A84B888();
  OUTLINED_FUNCTION_92_0(v12, &protocol witness table for TextProperty);
  sub_26A84DAB8();
  v21 = 2;
  v13 = sub_26A84DA98();
  OUTLINED_FUNCTION_30_4(v13);
  OUTLINED_FUNCTION_76_0();
  sub_26A84DAD8();
  OUTLINED_FUNCTION_87_0();
  sub_26A57E9B4();
  OUTLINED_FUNCTION_39_3();
  if (v14)
  {
    sub_26A4D6FD8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_52_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v15 = OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_31_5(v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_7();
    v6(v16);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_53_2(KeyPath);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v19 = OUTLINED_FUNCTION_26_4(v18);
    v6(v19);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_25_8();
  }

  OUTLINED_FUNCTION_112();
  sub_26A57E624();
  sub_26A84DAA8();
  OUTLINED_FUNCTION_63_1();

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_41_5();
  sub_26A57EA54();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A57D0AC()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A84BAB8();
  OUTLINED_FUNCTION_13_11();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_47_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_42_3();
  MEMORY[0x28223BE20](v4);
  v6 = (v20 - v5);
  v7 = type metadata accessor for StatusIndicatorView(0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC78);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_50_2();
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC80);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_89();
  v12 = sub_26A84B888();
  OUTLINED_FUNCTION_92_0(v12, &protocol witness table for TextProperty);
  sub_26A84D8F8();
  v21 = 3;
  v13 = sub_26A84D8D8();
  OUTLINED_FUNCTION_30_4(v13);
  OUTLINED_FUNCTION_76_0();
  sub_26A84D918();
  OUTLINED_FUNCTION_87_0();
  sub_26A57E9B4();
  OUTLINED_FUNCTION_39_3();
  if (v14)
  {
    sub_26A4D6FD8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_52_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v15 = OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_31_5(v15);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_18_7();
    v6(v16);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_53_2(KeyPath);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v19 = OUTLINED_FUNCTION_26_4(v18);
    v6(v19);
    type metadata accessor for ActionType();
    OUTLINED_FUNCTION_38_3();
    OUTLINED_FUNCTION_25_8();
  }

  OUTLINED_FUNCTION_112();
  sub_26A57E624();
  sub_26A84D8E8();
  OUTLINED_FUNCTION_63_1();

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_41_5();
  sub_26A57EA54();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A57D428()
{
  result = qword_2803ADC28;
  if (!qword_2803ADC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC20);
    sub_26A57D4E0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADC28);
  }

  return result;
}

unint64_t sub_26A57D4E0()
{
  result = qword_2803ADC30;
  if (!qword_2803ADC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC38);
    sub_26A57D56C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADC30);
  }

  return result;
}

unint64_t sub_26A57D56C()
{
  result = qword_2803ADC40;
  if (!qword_2803ADC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC48);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADC40);
  }

  return result;
}

unint64_t sub_26A57D624()
{
  result = qword_2803ADC78;
  if (!qword_2803ADC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC70);
    sub_26A57D428();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADC78);
  }

  return result;
}

uint64_t sub_26A57D6E4(unsigned __int8 *a1)
{
  v3 = type metadata accessor for StatusIndicatorView(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26A579D04(a1, v5);
}

unint64_t sub_26A57D754()
{
  result = qword_2803ADCB0;
  if (!qword_2803ADCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADCB0);
  }

  return result;
}

unint64_t sub_26A57D7C4(uint64_t a1)
{
  result = sub_26A57D874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A57D81C(uint64_t a1)
{
  result = sub_26A57D874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A57D874()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A57D8B8(uint64_t a1)
{
  result = sub_26A57D874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A57D910(uint64_t a1)
{
  result = sub_26A57D874();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A57D990()
{
  sub_26A57E400(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A57DD0C(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_26A57DD0C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_26A57DD0C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_26A57E290(319, &qword_2803A9220, &qword_2803A91C8, &unk_26A856820, MEMORY[0x277CDF468]);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_26A57E400(319, &qword_2803ADCE8, &type metadata for ComponentStackBottomSpacing, MEMORY[0x277CDF468]);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        sub_26A57E400(319, &qword_2803ADCF0, MEMORY[0x277D839F8], MEMORY[0x277CDF468]);
        v1 = v10;
        if (v11 <= 0x3F)
        {
          sub_26A57E400(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          v1 = v12;
          if (v13 <= 0x3F)
          {
            sub_26A57DD0C(319, &qword_2803ADCF8, type metadata accessor for VRXVisualResponseLocation, MEMORY[0x277CDF468]);
            v1 = v14;
            if (v15 <= 0x3F)
            {
              sub_26A57E400(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
              v1 = v16;
              if (v17 <= 0x3F)
              {
                sub_26A57E400(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
                v1 = v18;
                if (v19 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A57DD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s7ProcessOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StatusIndicatorView.IndicatorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A57DED4()
{
  result = qword_2803ADD08;
  if (!qword_2803ADD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADCA8);
    sub_26A57DF60();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADD08);
  }

  return result;
}

unint64_t sub_26A57DF60()
{
  result = qword_2803ADD10;
  if (!qword_2803ADD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADCA0);
    sub_26A57E018();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADD10);
  }

  return result;
}

unint64_t sub_26A57E018()
{
  result = qword_2803ADD18;
  if (!qword_2803ADD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC98);
    sub_26A57E0A4();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADD18);
  }

  return result;
}

unint64_t sub_26A57E0A4()
{
  result = qword_2803ADD20;
  if (!qword_2803ADD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADC90);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADD20);
  }

  return result;
}

void sub_26A57E184()
{
  sub_26A57DD0C(319, &qword_2803ADD48, type metadata accessor for StatusIndicatorConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A57E290(319, &qword_2803ADD50, &qword_2803ADD58, &unk_26A85FED0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A57E290(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_26A57E31C()
{
  sub_26A57E400(319, &qword_2803AD120, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A850F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A57E400(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26A57E460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A57E4B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26A57E504(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26A57E52C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A57E5D0()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A57E624()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A57E674()
{
  result = qword_2803ADDD0;
  if (!qword_2803ADDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADDB8);
    sub_26A57E700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADDD0);
  }

  return result;
}

unint64_t sub_26A57E700()
{
  result = qword_28157FDD0;
  if (!qword_28157FDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADDC0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDD0);
  }

  return result;
}

unint64_t sub_26A57E7B8()
{
  result = qword_2803ADDE0;
  if (!qword_2803ADDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADDD8);
    sub_26A4D7DCC();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADDE0);
  }

  return result;
}

unint64_t sub_26A57E870()
{
  result = qword_2803ADE00;
  if (!qword_2803ADE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADDF8);
    sub_26A57E8FC();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE00);
  }

  return result;
}

unint64_t sub_26A57E8FC()
{
  result = qword_2803ADE08;
  if (!qword_2803ADE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADE10);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE08);
  }

  return result;
}

uint64_t sub_26A57E9B4()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A57EA04()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A57EA54()
{
  result = qword_2803ADE18;
  if (!qword_2803ADE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC80);
    sub_26A57EB0C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE18);
  }

  return result;
}

unint64_t sub_26A57EB0C()
{
  result = qword_2803ADE20;
  if (!qword_2803ADE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC70);
    sub_26A57EB98();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE20);
  }

  return result;
}

unint64_t sub_26A57EB98()
{
  result = qword_2803ADE28;
  if (!qword_2803ADE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC78);
    sub_26A57D874();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_9_15()
{
  v5 = v3 + *(v2 + 32);
  result = *(v4 - 168);
  v7 = *(v4 - 152);
  *(v5 + 32) = *(v4 - 136);
  *v5 = result;
  *(v5 + 16) = v7;
  v8 = (v3 + *(v2 + 36));
  *v8 = v0;
  v8[1] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_12@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_9@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return swift_once();
}

void OUTLINED_FUNCTION_15_9()
{
  v4 = (v3 + *(v2 + 36));
  *v4 = v0;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_19_7@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + a1) = a2;

  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + a1) = a2;

  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_21_5@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + a1) = a2;

  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
}

uint64_t OUTLINED_FUNCTION_22_8()
{

  return sub_26A57E9B4();
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return sub_26A57E9B4();
}

uint64_t OUTLINED_FUNCTION_24_6()
{

  return sub_26A57E9B4();
}

uint64_t OUTLINED_FUNCTION_25_8()
{
  result = __swift_storeEnumTagSinglePayload(v1 + v2, 0, 1, v0);
  *v1 = *(v3 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_4(char a1)
{

  return StatusIndicatorView.init(message:type:showIndicator:)((v2 - 120), (v2 - 121), a1 & 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, a1);
  *v2 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  sub_26A49035C(*(v1 + a1), *(v1 + a1 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);

  return sub_26A49035C(v3, v4);
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return type metadata accessor for StatusIndicatorConstants(0);
}

uint64_t OUTLINED_FUNCTION_37_6@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_26A49035C(v4, v5);
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return sub_26A57EA04();
}

__n128 OUTLINED_FUNCTION_44_2(__n128 *a1)
{
  result = v1[5];
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_49_1()
{
  v1 = *(v0 + 288);
  *(v0 + 320) = *(v0 + 272);
  *(v0 + 336) = v1;
  result = *(v0 + 304);
  *(v0 + 352) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return sub_26A57E9B4();
}

uint64_t OUTLINED_FUNCTION_58_2(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_62_1()
{

  return sub_26A851248();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_26A4DDB8C();
}

__n128 OUTLINED_FUNCTION_66_1(__n128 *a1)
{
  result = v1[6];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return swift_storeEnumTagMultiPayload();
}

__n128 OUTLINED_FUNCTION_78_1()
{
  v1 = *(v0 + 208);
  *(v0 + 240) = *(v0 + 192);
  *(v0 + 256) = v1;
  result = *(v0 + 224);
  *(v0 + 272) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_81_1()
{
  v1 = *(v0 + 224);
  *(v0 + 256) = *(v0 + 208);
  *(v0 + 272) = v1;
  result = *(v0 + 240);
  *(v0 + 288) = result;
  return result;
}

__n128 *OUTLINED_FUNCTION_88_0(__n128 *result, __n128 a2)
{
  v2[5] = a2;
  result[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_90_0()
{

  return sub_26A57EA04();
}

uint64_t OUTLINED_FUNCTION_91_0()
{

  return type metadata accessor for ActionType();
}

uint64_t *OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 120));
}

uint64_t OUTLINED_FUNCTION_93_0(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, char a2)
{
  sub_26A4E324C(a1, a2);
}

void sub_26A57F448(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    v8[3] = &type metadata for PartialText;
    v8[4] = &protocol witness table for PartialText;
    v8[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v8[0] + 16);
    ReferenceStandardView.init(text1:addTint:)(v8, [v2 addTint], a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v6 = v1;
    *(v6 + 8) = &unk_287B13468;
    *(v6 + 16) = 0;
    swift_willThrow();
    v7 = v1;
  }
}

unint64_t sub_26A57F5A4()
{
  result = qword_2803ADE38;
  if (!qword_2803ADE38)
  {
    type metadata accessor for ReferenceStandardView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE38);
  }

  return result;
}

uint64_t ReferenceLogoView.init(thumbnail:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for ReferenceLogoView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + v4[7]);
  if (qword_2803A8C60 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
  v9 = __swift_project_value_buffer(v8, qword_2803D1E30);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  v11 = v7 + *(v10 + 32);
  sub_26A4DBD68(v9, v11, &qword_2803ADE40);
  sub_26A6AEE74(__src);
  memcpy(v7, __src, 0xBFuLL);
  sub_26A580C48(v11 + *(v8 + 36), v7 + *(v10 + 28));
  v12 = v4[8];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v13 = (a2 + v12);
  v22[0] = xmmword_281588758[0];
  v22[1] = unk_281588768;
  v22[2] = xmmword_281588778;
  v22[3] = unk_281588788;
  v23 = xmmword_281588758[0];
  v24 = unk_281588768;
  v25 = xmmword_281588778;
  v26 = unk_281588788;
  v19 = unk_281588788;
  v20 = xmmword_281588778;
  sub_26A4DBD68(v22, v27, &qword_2803A91B0);
  sub_26A6AEE74(v27);
  memcpy(v13, v27, 0xC0uLL);
  v13[12] = v20;
  v13[13] = v19;
  v14 = v24;
  v13[14] = v23;
  v13[15] = v14;
  v15 = v26;
  v13[16] = v25;
  v13[17] = v15;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *(a2 + v4[9]) = (*(v17 + 8))(v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ReferenceLogoView()
{
  result = qword_2803ADE68;
  if (!qword_2803ADE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A57F8D8()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A57FA08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReferenceLogoView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A57FC10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ReferenceLogoView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReferenceLogoView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A57FC10(&v21[-v9]);
  sub_26A580048();
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = 0;
  sub_26A57F8D8();
  sub_26A57FA08(v6);
  v14 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
  v22 = v1;
  sub_26A4C7818();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26A68CCEC;
  *(v15 + 24) = 0;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE50) + 36);
  *(v16 + 16) = swift_getKeyPath();
  *(v16 + 24) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v18 = *(v17 + 40);
  *(v16 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v19 = v16 + *(v17 + 44);
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *v16 = sub_26A4D1F7C;
  *(v16 + 8) = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE58);
  *(a1 + *(result + 36)) = 34;
  return result;
}

uint64_t sub_26A580048()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for ReferenceLogoView();
  v6 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_26A5801C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26A84FA78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE98);
  return sub_26A58021C(a1 + *(v2 + 44));
}

uint64_t sub_26A58021C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADEA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_26A580390();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  *a1 = 0;
  *(a1 + 8) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADEA8);
  v9((a1 + *(v10 + 48)), v5, v2);
  v11 = *(v3 + 8);
  v11(v8, v2);
  return (v11)(v5, v2);
}

uint64_t sub_26A580390()
{
  v0 = sub_26A84B1D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADEB0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  type metadata accessor for ReferenceLogoView();
  sub_26A50205C();
  sub_26A5805E8(v3);
  KeyPath = swift_getKeyPath();
  v8 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADEB8) + 36)];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
  (*(v1 + 32))(v8 + v9, v3, v0);
  __swift_storeEnumTagSinglePayload(v8 + v9, 0, 1, v0);
  *v8 = KeyPath;
  v10 = swift_getKeyPath();
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADEC0) + 36)];
  *v11 = v10;
  v11[8] = 0;
  v12 = swift_getKeyPath();
  v13 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADEC8) + 36)];
  *v13 = v12;
  v13[8] = 1;
  v14 = &v6[*(v4 + 36)];
  *v14 = 0;
  *(v14 + 4) = 1;
  sub_26A5810D8();
  sub_26A850AF8();
  return sub_26A4DBD10(v6, &qword_2803ADEB0);
}

uint64_t sub_26A5805E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v7, 0);
    (*(v4 + 8))(v6, v3);
    v7 = v12[1];
  }

  v9 = sub_26A84B1D8();
  v10 = MEMORY[0x277D62B18];
  if (v7 != 5)
  {
    v10 = MEMORY[0x277D62B20];
  }

  return (*(*(v9 - 8) + 104))(a1, *v10, v9);
}

uint64_t sub_26A58078C()
{
  v50 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v48 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v47 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for ReferenceLogoView();
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC30);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC38);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v52 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v51 = &v46 - v29;
  sub_26A84B9F8();
  v30 = VisualProperty.asAnyView()();
  (*(v13 + 8))(v17, v11);
  v31 = v50;
  v55[3] = MEMORY[0x277CE11C8];
  v55[4] = &protocol witness table for AnyView;
  v55[0] = v30;
  v53 = v22;
  ReferenceLogoView.init(thumbnail:)(v55, v22);
  sub_26A84B9E8();
  sub_26A4DBDB4(v10, v7, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
  {
    sub_26A4DBD10(v7, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v33 = &v25[*(v49 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v35 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v36 = v47;
    v37 = *(v48 + 32);
    v37(v47, v7, v31);
    v38 = swift_getKeyPath();
    v39 = &v25[*(v49 + 36)];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37(v39 + v40, v36, v31);
    v41 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v41);
    *v39 = v38;
  }

  sub_26A581448(v53, v25);
  v42 = sub_26A84B9C8();
  v43 = v51;
  sub_26A4DC94C(v42);

  sub_26A4DBD10(v25, &qword_2803AAC30);
  sub_26A4DBD68(v43, v52, &qword_2803AAC38);
  sub_26A5814AC();
  v44 = sub_26A851248();
  sub_26A4DBD10(v43, &qword_2803AAC38);
  return v44;
}

uint64_t sub_26A580C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceConstants();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A580CD0(uint64_t a1)
{
  result = sub_26A5816D8(&qword_2803ADE60, MEMORY[0x277D62E70]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A580D50()
{
  sub_26A580EB4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A580EB4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A580EB4(319, &qword_2803ADE78, type metadata accessor for ReferenceConstants, type metadata accessor for EnvironmentConstant);
        if (v3 <= 0x3F)
        {
          sub_26A580F18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A580EB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26A580F18()
{
  if (!qword_2803A9238)
  {
    v0 = type metadata accessor for EnvironmentConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_2803A9238);
    }
  }
}

unint64_t sub_26A580F68()
{
  result = qword_2803ADE80;
  if (!qword_2803ADE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADE58);
    sub_26A580FF4();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE80);
  }

  return result;
}

unint64_t sub_26A580FF4()
{
  result = qword_2803ADE88;
  if (!qword_2803ADE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADE50);
    sub_26A4DBCC8(&qword_2803ADE90, &qword_2803AA118);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADE88);
  }

  return result;
}

unint64_t sub_26A5810D8()
{
  result = qword_2803ADED0;
  if (!qword_2803ADED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADEB0);
    sub_26A581164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADED0);
  }

  return result;
}

unint64_t sub_26A581164()
{
  result = qword_2803ADED8;
  if (!qword_2803ADED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADEC8);
    sub_26A58121C();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADED8);
  }

  return result;
}

unint64_t sub_26A58121C()
{
  result = qword_2803ADEE0;
  if (!qword_2803ADEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADEC0);
    sub_26A5812D4();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADEE0);
  }

  return result;
}

unint64_t sub_26A5812D4()
{
  result = qword_2803ADEE8;
  if (!qword_2803ADEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADEB8);
    sub_26A58138C();
    sub_26A4DBCC8(&qword_2803AB9A0, &qword_2803AA440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADEE8);
  }

  return result;
}

unint64_t sub_26A58138C()
{
  result = qword_2803ADEF0;
  if (!qword_2803ADEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABAD0);
    sub_26A5816D8(qword_28157E478, type metadata accessor for ImageSizeableModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADEF0);
  }

  return result;
}

uint64_t sub_26A581448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceLogoView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5814AC()
{
  result = qword_2803ADEF8;
  if (!qword_2803ADEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC38);
    sub_26A581564();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADEF8);
  }

  return result;
}

unint64_t sub_26A581564()
{
  result = qword_2803ADF00;
  if (!qword_2803ADF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC28);
    sub_26A5815F0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADF00);
  }

  return result;
}

unint64_t sub_26A5815F0()
{
  result = qword_2803ADF08;
  if (!qword_2803ADF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC30);
    sub_26A5816D8(&qword_2803AD650, type metadata accessor for ReferenceLogoView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADF08);
  }

  return result;
}

uint64_t sub_26A5816D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A581720(uint64_t *a1)
{
  v1 = *a1;
  sub_26A581BC0(0, *(*a1 + 16), a1);
  v3 = v2;
  v4 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v2 + 40);
    v57 = v2;
    v59 = v1;
    v56 = *(v2 + 16);
    while (v6 < *(v3 + 16))
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = sub_26A5484D4(v9);
      v12 = *(v4 + 16);
      v13 = (v10 & 1) == 0;
      if (__OFADD__(v12, v13))
      {
        goto LABEL_61;
      }

      v14 = v10;
      if (*(v4 + 24) < v12 + v13)
      {
        sub_26A71C0F4();
        v4 = v61;
        v15 = sub_26A5484D4(v9);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_65;
        }

        v11 = v15;
      }

      if (v14)
      {
        v17 = *(v4 + 56);
        v18 = *(v17 + 8 * v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 8 * v11) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26A7A0E9C();
          v18 = v26;
          *(v17 + 8 * v11) = v26;
        }

        v20 = *(v18 + 16);
        if (v20 >= *(v18 + 24) >> 1)
        {
          sub_26A7A0E9C();
          v18 = v27;
          *(v17 + 8 * v11) = v27;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v9;
        *(v21 + 40) = v8;
        v1 = v59;
        v5 = v56;
        v3 = v57;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF10);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_26A8570D0;
        *(v22 + 32) = v9;
        *(v22 + 40) = v8;
        *(v4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
        *(*(v4 + 48) + 8 * v11) = v9;
        *(*(v4 + 56) + 8 * v11) = v22;
        v23 = *(v4 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_62;
        }

        *(v4 + 16) = v25;
      }

      ++v6;
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:

    v28 = 0;
    v29 = v4 + 64;
    v30 = 1 << *(v4 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v4 + 64);
    v33 = (v30 + 63) >> 6;
    v34 = MEMORY[0x277D84F90];
    v60 = v33;
LABEL_20:
    v35 = v28;
    if (!v32)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v28 = v35;
LABEL_25:
      v36 = *(*(v4 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v32)))));
      v37 = *(v36 + 16);
      if (v37)
      {
        break;
      }

      v46 = v34;
      v45 = *(v34 + 16);

      if (v45)
      {
        v38 = v46;
LABEL_35:
        v47 = *(v38 + 32);
        v48 = v45 - 1;
        if (v45 == 1)
        {
          v34 = MEMORY[0x277D84F90];
        }

        else
        {
          v49 = 40;
          v34 = MEMORY[0x277D84F90];
          do
          {
            if (v47 < *(v38 + v49))
            {
              v47 = *(v38 + v49);
            }

            v49 += 8;
            --v48;
          }

          while (v48);
        }
      }

      else
      {
        v47 = 0.0;
        v34 = v46;
      }

      v32 &= v32 - 1;

      v50 = *(v36 + 16);
      if (v50)
      {
        v51 = 40;
        do
        {
          v52 = *(v36 + v51);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            sub_26A848EC8();
            v1 = v53;
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }
          }

          if (v52 >= *(v1 + 16))
          {
            goto LABEL_64;
          }

          *(v1 + 72 * v52 + 32) = v47;
          v51 += 16;
          --v50;
        }

        while (v50);

        *a1 = v1;
        v29 = v4 + 64;
        v33 = v60;
        goto LABEL_20;
      }

      v35 = v28;
      v33 = v60;
      if (!v32)
      {
LABEL_22:
        while (1)
        {
          v28 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_59;
          }

          if (v28 >= v33)
          {
          }

          v32 = *(v29 + 8 * v28);
          ++v35;
          if (v32)
          {
            goto LABEL_25;
          }
        }
      }
    }

    sub_26A7DCC7C(0, v37, 0);
    v38 = v34;
    v58 = v36;
    v39 = (v36 + 40);
    while (1)
    {
      v41 = *v39;
      v39 += 2;
      v40 = v41;
      if ((v41 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v40 >= *(v1 + 16))
      {
        goto LABEL_58;
      }

      v42 = *(v1 + 32 + 72 * v40);
      v62 = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        sub_26A7DCC7C(v43 > 1, v44 + 1, 1);
        v38 = v62;
      }

      *(v38 + 16) = v45;
      *(v38 + 8 * v44 + 32) = v42;
      if (!--v37)
      {
        v29 = v4 + 64;
        v36 = v58;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_26A852618();
  __break(1u);
  return result;
}

void sub_26A581BC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = MEMORY[0x277D84F90];
  v7 = a1;
  v8 = a1;
LABEL_2:
  v9 = 72 * v7;
  while (a2 != v8)
  {
    if (a2 < a1)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    if (v7 < a1)
    {
      goto LABEL_17;
    }

    if (v8 >= a2)
    {
      goto LABEL_18;
    }

    if (v7 < 0)
    {
      goto LABEL_19;
    }

    v10 = *a3;
    if (v8 >= *(*a3 + 16))
    {
      goto LABEL_20;
    }

    v11 = *(v10 + v9 + 96);
    v9 += 72;
    ++v8;
    if ((v11 & 1) == 0)
    {
      v12 = *(v10 + v9 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A0E9C();
        v6 = v15;
      }

      v13 = *(v6 + 16);
      if (v13 >= *(v6 + 24) >> 1)
      {
        sub_26A7A0E9C();
        v6 = v16;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v8 - 1;
      v7 = v8;
      goto LABEL_2;
    }
  }
}

BOOL sub_26A581D2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

uint64_t sub_26A581E04()
{
  v1 = v0;
  LOBYTE(v31[0]) = [v0 is_on];
  sub_26A851048();
  v2 = [v0 text_1];
  if (v2)
  {
    v3 = v2;
    LOBYTE(v28) = v35;
    *(&v28 + 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
    sub_26A851078();
    v37 = v31[0];
    v17 = v31[1];
    v4 = v32;
    v33 = &type metadata for PartialText;
    v34 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v31[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v31[0] + 16);
    v5 = [v0 text_2];
    if (v5)
    {
      v6 = v5;
      *(&v29 + 1) = &type metadata for PartialText;
      v30 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v28 = swift_allocObject();
      RFTextProperty.asPartialText()(v28 + 16);
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }

    v9 = [v1 text_3];
    if (v9)
    {
      v10 = v9;
      *(&v26 + 1) = &type metadata for PartialText;
      v27 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v25 = swift_allocObject();
      RFTextProperty.asPartialText()(v25 + 16);
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    v11 = [v1 text_4];
    if (v11)
    {
      v12 = v11;
      *(&v23 + 1) = &type metadata for PartialText;
      v24 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v22 = swift_allocObject();
      RFTextProperty.asPartialText()(v22 + 16);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    v13 = [v1 thumbnail];
    if (v13)
    {
      v14 = v13;
      *(&v19 + 1) = sub_26A84BD28();
      v20 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v18);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }

    SummaryItemSwitchV2View.init(isOn:text1:text2:text3:text4:thumbnail:)(v37, v17, v4, v31, &v28, &v25, &v22, &v18, v16, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1));
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v7 = v0;
    *(v7 + 8) = &unk_287B13498;
    *(v7 + 16) = 0;
    swift_willThrow();
    v8 = v0;
  }
}

unint64_t sub_26A582148()
{
  result = qword_2803ADF18;
  if (!qword_2803ADF18)
  {
    type metadata accessor for SummaryItemSwitchV2View();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADF18);
  }

  return result;
}

uint64_t sub_26A5821A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26A5821E0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26A58224C(uint64_t a1, char a2)
{
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_26A582390@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_26A5823CC(a1, a2 & 1, a3, &v6);
  *a4 = v6;
  return result;
}

uint64_t sub_26A5823CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v137 = a3;
  v138 = a4;
  v120 = sub_26A84CEF8();
  v113 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v112 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF20);
  MEMORY[0x28223BE20](v119);
  v118 = &v110 - v7;
  v114 = type metadata accessor for CustomCanvasView();
  MEMORY[0x28223BE20](v114);
  v116 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_26A84B158();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v127 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF28);
  MEMORY[0x28223BE20](v132);
  v131 = &v110 - v10;
  v11 = sub_26A84BAB8();
  MEMORY[0x28223BE20](v11 - 8);
  v129 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v128 = &v110 - v14;
  v15 = sub_26A84E158();
  v123 = *(v15 - 8);
  v124 = v15;
  MEMORY[0x28223BE20](v15);
  v122 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v121 = &v110 - v18;
  v19 = type metadata accessor for StandardPlayerButtonView();
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_26A84B798();
  v126 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v125 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26A84E178();
  v133 = *(v22 - 8);
  v134 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26A84B058();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF30);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v110 - v30;
  v32 = sub_26A84E198();
  v136 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a2 & 1;
  v37 = a1;
  v38 = sub_26A58224C(a1, v36);
  VRXIdiom.idiom.getter(v38, v28);
  v39 = v137;
  sub_26A851AC8();
  (*(v26 + 8))(v28, v25);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_26A583178(v31);
    result = sub_26A583090(v37, v35 & 1, v39);
    *v138 = result;
    return result;
  }

  v41 = v37;
  v42 = v39;
  v43 = v136;
  (*(v136 + 32))(v34, v31, v32);
  v44 = v24;
  sub_26A84E188();
  v45 = v133;
  v46 = v134;
  v47 = (*(v133 + 88))(v44, v134);
  v48 = v34;
  if (v47 == *MEMORY[0x277D636D0])
  {
    (*(v45 + 96))(v44, v46);
    v49 = v126;
    v50 = v44;
    v51 = v125;
    (*(v126 + 32))(v125, v50, v135);
    v52 = v121;
    sub_26A84B778();
    v53 = v128;
    sub_26A84E138();
    v111 = v48;
    v54 = *(v123 + 8);
    v55 = v52;
    v56 = v124;
    v54(v55, v124);
    v57 = v122;
    sub_26A84B788();
    v58 = v129;
    sub_26A84E138();
    v54(v57, v56);
    v59 = v130;
    sub_26A6B4CF0(v53, v58, v130);
    KeyPath = swift_getKeyPath();
    v61 = v111;
    v62 = sub_26A84E168();
    v137 = v32;
    v64 = v63;
    v65 = v131;
    sub_26A58338C(v59, v131, type metadata accessor for StandardPlayerButtonView);
    v66 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF38) + 36));
    *v66 = KeyPath;
    v66[1] = v62;
    v66[2] = v64;
    v67 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    v69 = v65 + *(v132 + 36);
    *v69 = v67;
    *(v69 + 8) = 0;
    *(v69 + 16) = v68;
    *(v69 + 24) = 256;
    sub_26A5831E0();
    v70 = sub_26A851248();
    sub_26A5834F8(v59, type metadata accessor for StandardPlayerButtonView);
    (*(v49 + 8))(v51, v135);
    result = (*(v136 + 8))(v61, v137);
    *v138 = v70;
    return result;
  }

  v71 = v46;
  v72 = v138;
  if (v47 == *MEMORY[0x277D636C8])
  {
    (*(v45 + 96))(v44, v71);
    v73 = v115;
    v74 = v127;
    v75 = v117;
    (*(v115 + 32))(v127, v44, v117);
    v76 = v116;
    (*(v73 + 16))(v116, v74, v75);
    v77 = v114;
    v78 = (v76 + *(v114 + 20));
    *v78 = 0xD000000000000023;
    v78[1] = 0x800000026A88B1A0;
    v79 = *(v77 + 24);
    v111 = v48;
    v80 = v43;
    v81 = v76 + v79;
    *v81 = swift_getKeyPath();
    *(v81 + 8) = 0;
    v82 = v76 + *(v77 + 28);
    *v82 = swift_getKeyPath();
    *(v82 + 8) = 0;
    v83 = swift_getKeyPath();
    v84 = sub_26A84E168();
    v86 = v85;
    v137 = v32;
    v87 = v118;
    sub_26A58338C(v76, v118, type metadata accessor for CustomCanvasView);
    v88 = (v87 + *(v119 + 36));
    *v88 = v83;
    v88[1] = v84;
    v88[2] = v86;
    sub_26A5833F4();
    v89 = sub_26A851248();
    sub_26A5834F8(v76, type metadata accessor for CustomCanvasView);
    (*(v73 + 8))(v127, v75);
    result = (*(v80 + 8))(v111, v137);
LABEL_9:
    *v138 = v89;
    return result;
  }

  if (v47 == *MEMORY[0x277D636C0])
  {
    (*(v45 + 96))(v44, v71);
    v90 = v113;
    v91 = v112;
    (*(v113 + 32))(v112, v44, v120);
    v92 = v128;
    sub_26A84CED8();
    v93 = v129;
    sub_26A84CEE8();
    v94 = v130;
    sub_26A6B4CF0(v92, v93, v130);
    v95 = v48;
    v96 = v43;
    v97 = swift_getKeyPath();
    v98 = sub_26A84E168();
    v100 = v99;
    v137 = v32;
    v101 = v131;
    sub_26A58338C(v94, v131, type metadata accessor for StandardPlayerButtonView);
    v102 = (v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF38) + 36));
    *v102 = v97;
    v102[1] = v98;
    v102[2] = v100;
    v103 = swift_getKeyPath();
    v104 = swift_getKeyPath();
    v105 = v101 + *(v132 + 36);
    *v105 = v103;
    *(v105 + 8) = 0;
    *(v105 + 16) = v104;
    *(v105 + 24) = 256;
    sub_26A5831E0();
    v89 = sub_26A851248();
    sub_26A5834F8(v94, type metadata accessor for StandardPlayerButtonView);
    (*(v90 + 8))(v91, v120);
    result = (*(v96 + 8))(v95, v137);
    goto LABEL_9;
  }

  v106 = (v43 + 8);
  v107 = v35 & 1;
  if (v47 == *MEMORY[0x277D636D8])
  {
    v108 = sub_26A583090(v41, v107, v42);
    result = (*v106)(v48, v32);
    *v72 = v108;
  }

  else
  {
    v109 = sub_26A583090(v41, v107, v42);
    (*v106)(v48, v32);
    *v72 = v109;
    return (*(v45 + 8))(v44, v71);
  }

  return result;
}

uint64_t sub_26A583090(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a2 & 1;
  sub_26A4C24D0(a1, a2 & 1);

  sub_26A4C24D0(a1, v5);

  v6 = sub_26A851E98();
  sub_26A7B65EC(v6, 0, "SnippetUI/PlayerView.swift", 26, 2, 24, "makePlayerButton()", 18, 2, a1, v5, a3);
  sub_26A4D82E8(a1, v5);

  return sub_26A851248();
}

uint64_t sub_26A583178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A5831E0()
{
  result = qword_2803ADF40;
  if (!qword_2803ADF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADF28);
    sub_26A58326C();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADF40);
  }

  return result;
}

unint64_t sub_26A58326C()
{
  result = qword_2803ADF48;
  if (!qword_2803ADF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADF38);
    sub_26A5834B0(&qword_2803ADF50, type metadata accessor for StandardPlayerButtonView);
    sub_26A583328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADF48);
  }

  return result;
}

unint64_t sub_26A583328()
{
  result = qword_28157FB60;
  if (!qword_28157FB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FB60);
  }

  return result;
}

uint64_t sub_26A58338C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26A5833F4()
{
  result = qword_2803ADF58;
  if (!qword_2803ADF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADF20);
    sub_26A5834B0(&qword_2803ABC08, type metadata accessor for CustomCanvasView);
    sub_26A583328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADF58);
  }

  return result;
}

uint64_t sub_26A5834B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A5834F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26A583560(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t sub_26A5835A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A583644(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_26A850D38();
  *a3 = result;
  return result;
}

uint64_t sub_26A58368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      if (qword_2803A8AE8 != -1)
      {
        a1 = OUTLINED_FUNCTION_0_20();
      }

      OUTLINED_FUNCTION_8_17(a1, &qword_2803D1B10, a2, a3, a4, a5, a6, a7, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), *&v81[2], *(&v81[2] + 1), *&v81[3], *(&v81[3] + 1), *&v81[4], *(&v81[4] + 1), *&v81[5], *(&v81[5] + 1), *&v81[6], *(&v81[6] + 1), *&v81[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
      *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_26A8570D0;
      if (qword_28157E760 != -1)
      {
        OUTLINED_FUNCTION_7_17();
      }

      v10 = &qword_281588978;
      goto LABEL_30;
    case 4:
      if (qword_2803A8AE8 != -1)
      {
        a1 = OUTLINED_FUNCTION_0_20();
      }

      OUTLINED_FUNCTION_8_17(a1, &qword_2803D1B10, a2, a3, a4, a5, a6, a7, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), *&v81[2], *(&v81[2] + 1), *&v81[3], *(&v81[3] + 1), *&v81[4], *(&v81[4] + 1), *&v81[5], *(&v81[5] + 1), *&v81[6], *(&v81[6] + 1), *&v81[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
      *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_26A8570D0;
      if (qword_28157E770 != -1)
      {
        OUTLINED_FUNCTION_6_21();
      }

      v10 = &qword_281588988;
      goto LABEL_30;
    case 5:
      if (qword_2803A8AE8 != -1)
      {
        a1 = OUTLINED_FUNCTION_0_20();
      }

      OUTLINED_FUNCTION_8_17(a1, &qword_2803D1B10, a2, a3, a4, a5, a6, a7, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), *&v81[2], *(&v81[2] + 1), *&v81[3], *(&v81[3] + 1), *&v81[4], *(&v81[4] + 1), *&v81[5], *(&v81[5] + 1), *&v81[6], *(&v81[6] + 1), *&v81[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
      *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_26A8570D0;
      if (qword_28157E780 != -1)
      {
        OUTLINED_FUNCTION_3_20();
      }

      v10 = &qword_281588998;
      goto LABEL_30;
    case 6:
      if (qword_2803A8AE8 != -1)
      {
        a1 = OUTLINED_FUNCTION_0_20();
      }

      OUTLINED_FUNCTION_8_17(a1, &qword_2803D1B10, a2, a3, a4, a5, a6, a7, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), *&v81[2], *(&v81[2] + 1), *&v81[3], *(&v81[3] + 1), *&v81[4], *(&v81[4] + 1), *&v81[5], *(&v81[5] + 1), *&v81[6], *(&v81[6] + 1), *&v81[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
      *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_26A8570D0;
      if (qword_28157E738 != -1)
      {
        OUTLINED_FUNCTION_2_19();
      }

      v10 = &qword_281588938;
      goto LABEL_30;
    case 7:
      if (qword_2803A8AE8 != -1)
      {
        a1 = OUTLINED_FUNCTION_0_20();
      }

      OUTLINED_FUNCTION_8_17(a1, &qword_2803D1B10, a2, a3, a4, a5, a6, a7, v32, v34, v35, v37, v38, v40, v41, v43, v44, v46, v47, v49, v50, v52, v53, v55, v56, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, *&v81[0], *(&v81[0] + 1), *&v81[1], *(&v81[1] + 1), *&v81[2], *(&v81[2] + 1), *&v81[3], *(&v81[3] + 1), *&v81[4], *(&v81[4] + 1), *&v81[5], *(&v81[5] + 1), *&v81[6], *(&v81[6] + 1), *&v81[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
      *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_26A8570D0;
      if (qword_28157E758 != -1)
      {
        OUTLINED_FUNCTION_4_19();
      }

      v10 = &qword_281588968;
LABEL_30:
      v25 = OUTLINED_FUNCTION_2_17(v10);
      sub_26A4E324C(v25, v26);

      v28 = sub_26A58787C(v27);
      if (*(v8 + 16))
      {
        v29 = sub_26A548580(v28);
        v31 = v30;

        if (v31)
        {
          memcpy(v81, (*(v8 + 56) + 176 * v29), sizeof(v81));
          sub_26A54DFFC(v81, &v59);

          v24 = v81[10];
          v11 = *(&v81[9] + 1);
          v22 = *(&v81[8] + 8);
          v23 = *(&v81[7] + 8);
          v20 = *(&v81[6] + 8);
          v21 = *(&v81[5] + 8);
          v19 = v81[3];
          v18 = v81[4];
          v12 = v81[5];
          v14 = *(&v81[2] + 1);
          v13 = *&v81[2];
          v17 = v81[0];
          v16 = v81[1];
          goto LABEL_35;
        }
      }

      else
      {
      }

      sub_26A54DFFC(__dst, v81);

      v24 = __dst[10];
      v11 = *(&__dst[9] + 1);
      v22 = *(&__dst[8] + 8);
      v23 = *(&__dst[7] + 8);
      v20 = *(&__dst[6] + 8);
      v21 = *(&__dst[5] + 8);
      v19 = __dst[3];
      v18 = __dst[4];
      v12 = __dst[5];
      v14 = *(&__dst[2] + 1);
      v13 = *&__dst[2];
      v17 = __dst[0];
      v16 = __dst[1];
LABEL_35:
      *a8 = v17;
      *(a8 + 16) = v16;
      *(a8 + 32) = v13;
      *(a8 + 40) = v14;
      *(a8 + 48) = v19;
      *(a8 + 64) = v18;
      *(a8 + 80) = v12;
      *(a8 + 88) = v21;
      *(a8 + 104) = v20;
      *(a8 + 120) = v23;
      *(a8 + 136) = v22;
      *(a8 + 152) = v11;
      *(a8 + 160) = v24;
      return result;
    default:
      if (qword_2803A8AE8 != -1)
      {
        OUTLINED_FUNCTION_0_20();
      }

      memcpy(__dst, &unk_2803D1B20, sizeof(__dst));
      v11 = *(&__dst[9] + 1);
      v54 = *(&__dst[8] + 8);
      v57 = __dst[10];
      v48 = *(&__dst[6] + 8);
      v51 = *(&__dst[7] + 8);
      v42 = __dst[4];
      v45 = *(&__dst[5] + 8);
      v12 = __dst[5];
      v14 = *(&__dst[2] + 1);
      v13 = *&__dst[2];
      v36 = __dst[1];
      v39 = __dst[3];
      v33 = __dst[0];
      result = sub_26A54DFFC(__dst, v81);
      v17 = v33;
      v16 = v36;
      v19 = v39;
      v18 = v42;
      v21 = v45;
      v20 = v48;
      v23 = v51;
      v22 = v54;
      v24 = v57;
      goto LABEL_35;
  }
}

void *sub_26A583B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26A8570C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21();
  }

  v2 = OUTLINED_FUNCTION_2_17(&qword_281588988);
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(v0 + 32) = v4;
  if (qword_2803A8AD8 != -1)
  {
    swift_once();
  }

  v5 = qword_2803ADF60;
  v6 = qword_2803A8AE0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2803ADF68;
  v140 = 0;
  *(v0 + 40) = xmmword_26A8605E0;
  *(v0 + 56) = xmmword_26A8605F0;
  *(v0 + 72) = xmmword_26A8605F0;
  *(v0 + 88) = xmmword_26A860600;
  *(v0 + 104) = xmmword_26A860600;
  *(v0 + 120) = 0;
  *(v0 + 128) = sub_26A584644;
  *(v0 + 136) = 0;
  *(v0 + 144) = sub_26A584658;
  *(v0 + 152) = 0;
  __asm { FMOV            V1.2D, #30.0 }

  *(v0 + 160) = vdupq_n_s64(0x4047000000000000uLL);
  *(v0 + 176) = _Q1;
  v114 = _Q1;
  *(v0 + 192) = 3;
  *(v0 + 200) = v5;
  *(v0 + 208) = v7;
  v13 = OUTLINED_FUNCTION_10_13();
  *(v13 + 16) = xmmword_26A8570D0;
  v14 = qword_28157E758;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v15 = OUTLINED_FUNCTION_2_17(&qword_281588968);
  sub_26A4E324C(v15, v16);
  sub_26A621A9C(v13);
  *(v0 + 216) = v17;
  v18 = qword_2803ADF60;
  v19 = qword_2803ADF68;
  v142 = 1;
  *(v0 + 224) = xmmword_26A85AB60;
  *(v0 + 240) = xmmword_26A860600;
  *(v0 + 256) = xmmword_26A860600;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 1;
  *(v0 + 305) = *v141;
  *(v0 + 308) = *&v141[3];
  *(v0 + 312) = sub_26A58466C;
  *(v0 + 320) = 0;
  *(v0 + 328) = sub_26A584680;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0x403C000000000000;
  __asm { FMOV            V0.2D, #28.0 }

  v108 = _Q0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = 0x403C000000000000;
  *(v0 + 376) = 3;
  *(v0 + 384) = v18;
  *(v0 + 392) = v19;
  v21 = OUTLINED_FUNCTION_10_13();
  *(v21 + 16) = xmmword_26A8570D0;
  v22 = qword_28157E738;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_2_19();
  }

  v23 = OUTLINED_FUNCTION_11_1(&qword_281588938);
  sub_26A4E324C(v23, v24);
  sub_26A621A9C(v21);
  v25 = qword_2803ADF60;
  v26 = qword_2803ADF68;
  v144 = 0;
  *(v0 + 400) = v27;
  *(v0 + 408) = 0x4014000000000000;
  *(v0 + 416) = xmmword_26A860610;
  *(v0 + 432) = xmmword_26A860610;
  *(v0 + 448) = 0x4018000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = xmmword_26A860620;
  *(v0 + 480) = 0x3FF0000000000000;
  *(v0 + 488) = 0;
  *(v0 + 489) = *v143;
  *(v0 + 492) = *&v143[3];
  *(v0 + 496) = sub_26A584694;
  *(v0 + 504) = 0;
  *(v0 + 512) = sub_26A584694;
  *(v0 + 520) = 0;
  *(v0 + 528) = vdupq_n_s64(0x4045000000000000uLL);
  *(v0 + 544) = v114;
  *(v0 + 560) = 1;
  *(v0 + 568) = v25;
  *(v0 + 576) = v26;
  v28 = OUTLINED_FUNCTION_10_13();
  *(v28 + 16) = xmmword_26A8570D0;
  v29 = qword_28157E780;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_3_20();
  }

  v30 = qword_281588998;
  *(v28 + 32) = qword_281588998;
  v31 = byte_2815889A0;
  *(v28 + 40) = byte_2815889A0;
  sub_26A4E324C(v30, v31);
  sub_26A621A9C(v28);
  *(v0 + 584) = v32;
  if (qword_2803A8CF8 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  v33 = qword_2803D2008;
  v34 = qword_2803ADF60;
  v35 = qword_2803ADF68;
  v146 = 0;
  *(v0 + 592) = xmmword_26A860630;
  *(v0 + 608) = xmmword_26A8605F0;
  *(v0 + 624) = xmmword_26A8605F0;
  *(v0 + 640) = v33;
  *(v0 + 648) = v33;
  *(v0 + 656) = v33;
  *(v0 + 664) = v33;
  *(v0 + 672) = 0;
  *(v0 + 676) = *&v145[3];
  *(v0 + 673) = *v145;
  *(v0 + 680) = sub_26A5846A8;
  *(v0 + 688) = 0;
  *(v0 + 696) = sub_26A5847B4;
  *(v0 + 704) = 0;
  *(v0 + 712) = 0x4047000000000000;
  *(v0 + 720) = xmmword_26A860640;
  *(v0 + 736) = 0x4053800000000000;
  *(v0 + 744) = 3;
  *(v0 + 752) = v34;
  *(v0 + 760) = v35;
  v36 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_12_10(v36, v37, v38, v39, v40, v41, v42, v43, v108, *(&v108 + 1), v114, *(&v114 + 1), 1, 2, v44);
  v45 = qword_281588998;
  *(v46 + 32) = qword_281588998;
  v47 = byte_2815889A0;
  *(v46 + 40) = byte_2815889A0;
  *(v46 + 48) = 1;
  *(v46 + 56) = 5;

  sub_26A4E324C(v45, v47);
  sub_26A621A9C(v36);
  *(v0 + 768) = v48;
  v49 = qword_2803ADF60;
  v50 = qword_2803ADF68;
  v148 = 0;
  *(v0 + 776) = 0x402E000000000000;
  __asm { FMOV            V1.2D, #18.0 }

  *(v0 + 784) = xmmword_26A860650;
  *(v0 + 800) = _Q1;
  *(v0 + 816) = 0x4032000000000000;
  *(v0 + 824) = 0u;
  *(v0 + 840) = 0x4014000000000000;
  *(v0 + 848) = 0;
  *(v0 + 856) = 0;
  *(v0 + 857) = *v147;
  *(v0 + 860) = *&v147[3];
  *(v0 + 864) = sub_26A584704;
  *(v0 + 872) = 0;
  *(v0 + 880) = sub_26A5847B4;
  *(v0 + 888) = 0;
  *(v0 + 896) = xmmword_26A860660;
  *(v0 + 912) = xmmword_26A860670;
  *(v0 + 928) = 3;
  *(v0 + 936) = v49;
  *(v0 + 944) = v50;
  v52 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_12_10(v52, v53, v54, v55, v56, v57, v58, v59, v109, v112, v115, v119, v122, v126, v60);
  v61 = qword_28157E760;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  v62 = OUTLINED_FUNCTION_11_1(&qword_281588978);
  v52[3].n128_u64[0] = 1;
  v52[3].n128_u8[8] = 3;
  sub_26A4E324C(v62, v63);
  sub_26A621A9C(v52);
  *(v0 + 952) = v64;
  v65 = qword_2803ADF60;
  v66 = qword_2803ADF68;
  v150 = 1;
  __asm { FMOV            V1.2D, #8.0 }

  *(v0 + 960) = _Q1;
  *(v0 + 976) = xmmword_26A8605F0;
  *(v0 + 992) = xmmword_26A8605F0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 1;
  *(v0 + 1041) = *v149;
  *(v0 + 1044) = *&v149[3];
  *(v0 + 1048) = sub_26A584764;
  *(v0 + 1056) = 0;
  *(v0 + 1064) = sub_26A584778;
  *(v0 + 1072) = 0;
  *(v0 + 1080) = 0x4047000000000000;
  *(v0 + 1088) = xmmword_26A860680;
  *(v0 + 1104) = 0x4044000000000000;
  *(v0 + 1112) = 3;
  *(v0 + 1120) = v65;
  *(v0 + 1128) = v66;
  v68 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_12_10(v68, v69, v70, v71, v72, v73, v74, v75, v110, v113, v116, v120, v123, v127, v76);
  v77 = qword_281588968;
  *(v78 + 32) = qword_281588968;
  v79 = byte_281588970;
  *(v78 + 40) = byte_281588970;
  *(v78 + 48) = 1;
  *(v78 + 56) = 3;

  sub_26A4E324C(v77, v79);
  sub_26A621A9C(v68);
  *(v0 + 1136) = v80;
  v81 = qword_2803ADF60;
  v82 = qword_2803ADF68;
  v152 = 1;
  *(v0 + 1144) = 0x4020000000000000;
  *(v0 + 1152) = xmmword_26A85E060;
  *(v0 + 1168) = xmmword_26A860690;
  *(v0 + 1184) = 0x4024000000000000;
  *(v0 + 1192) = 0u;
  *(v0 + 1208) = 0u;
  *(v0 + 1224) = 1;
  *(v0 + 1225) = *v151;
  *(v0 + 1228) = *&v151[3];
  *(v0 + 1232) = sub_26A58466C;
  *(v0 + 1240) = 0;
  *(v0 + 1248) = sub_26A584680;
  *(v0 + 1256) = 0;
  *(v0 + 1264) = v111;
  *(v0 + 1280) = v111;
  *(v0 + 1296) = 3;
  *(v0 + 1304) = v81;
  *(v0 + 1312) = v82;
  v83 = OUTLINED_FUNCTION_10_13();
  *(v83 + 16) = v124;
  v84 = qword_28157E788;

  if (v84 != -1)
  {
    swift_once();
  }

  v85 = OUTLINED_FUNCTION_2_17(&qword_2815889A8);
  sub_26A4E324C(v85, v86);
  sub_26A621A9C(v83);
  *(v0 + 1320) = v87;
  v88 = qword_2803ADF60;
  v89 = qword_2803ADF68;
  v154 = 1;
  *(v0 + 1328) = xmmword_26A85C620;
  *(v0 + 1344) = xmmword_26A8605F0;
  *(v0 + 1360) = xmmword_26A8605F0;
  *(v0 + 1376) = 0u;
  *(v0 + 1392) = 0u;
  *(v0 + 1408) = 1;
  *(v0 + 1409) = *v153;
  *(v0 + 1412) = *&v153[3];
  *(v0 + 1416) = sub_26A58478C;
  *(v0 + 1424) = 0;
  *(v0 + 1432) = sub_26A5847A0;
  *(v0 + 1440) = 0;
  *(v0 + 1448) = 0x4047000000000000;
  *(v0 + 1456) = xmmword_26A8606A0;
  *(v0 + 1472) = 0x403E000000000000;
  *(v0 + 1480) = 3;
  *(v0 + 1488) = v88;
  *(v0 + 1496) = v89;
  v90 = OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_12_10(v90, v91, v92, v93, v94, v95, v96, v97, v111, *(&v111 + 1), v117, v121, 0x4024000000000000, 0x4020000000000000, v98);
  v99 = qword_281588978;
  *(v100 + 32) = qword_281588978;
  v101 = byte_281588980;
  *(v100 + 40) = byte_281588980;
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;

  sub_26A4E324C(v99, v101);
  sub_26A621A9C(v90);
  *(v0 + 1504) = v102;
  v103 = qword_2803ADF60;
  v104 = qword_2803ADF68;
  v156 = 1;
  *(v0 + 1512) = 0x4020000000000000;
  *(v0 + 1520) = xmmword_26A8606B0;
  *(v0 + 1536) = 0x4034000000000000;
  *(v0 + 1544) = 0;
  *(v0 + 1552) = 0x4034000000000000;
  *(v0 + 1560) = 0u;
  *(v0 + 1576) = 0u;
  *(v0 + 1592) = 1;
  *(v0 + 1593) = *v155;
  *(v0 + 1596) = *&v155[3];
  *(v0 + 1600) = sub_26A584764;
  *(v0 + 1608) = 0;
  *(v0 + 1616) = sub_26A584778;
  v105 = vdupq_n_s64(0x4044000000000000uLL);
  *(v0 + 1624) = 0;
  *(v0 + 1632) = v105;
  *(v0 + 1648) = v105;
  *(v0 + 1664) = 3;
  *(v0 + 1672) = v103;
  *(v0 + 1680) = v104;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v106 = sub_26A8516A8();
  v158 = 1;
  v128[0] = v125;
  v128[1] = xmmword_26A8605F0;
  v128[2] = xmmword_26A8605F0;
  memset(&v128[3], 0, 32);
  v129 = 1;
  *v130 = *v157;
  *&v130[3] = *&v157[3];
  v131 = sub_26A58466C;
  v132 = 0;
  v133 = sub_26A584680;
  v134 = 0;
  v135 = vdupq_n_s64(0x4047000000000000uLL);
  v136 = v118;
  v137 = 3;
  v138 = qword_2803ADF60;
  v139 = qword_2803ADF68;

  return sub_26A80D8C8(qword_2803D1B00, v106, v128);
}

double sub_26A5846A8()
{
  if (qword_2803A8CF8 != -1)
  {
    swift_once();
  }

  return *&qword_2803D2008;
}

double sub_26A584718()
{
  if (qword_2803A8CF8 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  return 6.0;
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_17()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_8_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (a2 + 16);

  return memcpy(&__dst, v72, 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_13()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_13()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_12_10(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t sub_26A584910()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE008);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + 16);

  v6 = sub_26A58787C(v5);
  sub_26A5079A4(v6, v4);

  v7 = type metadata accessor for NavigationHeaderConstants(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
  {
    return sub_26A586B84();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF90);
  sub_26A586D1C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v7);
  if (result != 1)
  {
    return sub_26A4D6FD8();
  }

  return result;
}

uint64_t sub_26A584A6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + 16);

  v6 = sub_26A58787C(v5);
  sub_26A507B9C(v6, v4);

  v7 = type metadata accessor for ImageStyleAppearance();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
  {
    return sub_26A586B84();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  sub_26A586D1C();
  result = __swift_getEnumTagSinglePayload(v3, 1, v7);
  if (result != 1)
  {
    return sub_26A4D6FD8();
  }

  return result;
}

uint64_t sub_26A584BC8()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NavigationHeader(0) + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t NavigationHeader.init(text1:thumbnail:thumbnailTapAction:thumbnailColor:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a4;
  v24 = a3;
  v23 = a2;
  v26 = a5;
  v6 = type metadata accessor for NavigationHeader(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A8AF0 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF90);
  __swift_project_value_buffer(v10, qword_2803ADF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(v9, __src, 0xBFuLL);
  sub_26A586D1C();
  v11 = &v9[v6[5]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = &v9[v6[6]];
  v30 = 0;
  sub_26A851048();
  v13 = v27[1];
  *v12 = v27[0];
  *(v12 + 1) = v13;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *&v9[v6[7]] = (*(v15 + 8))(v14, v15);
  sub_26A4D7E54();
  v16 = v28;
  if (v28)
  {
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v18 = (*(v17 + 8))(v16, v17);
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    v18 = 0;
  }

  *&v9[v6[8]] = v18;
  v19 = &v9[v6[9]];
  v20 = v24;
  *v19 = v23;
  *(v19 + 1) = v20;
  *&v9[v6[10]] = v25;
  sub_26A586B84();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A585068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84FA78();
  sub_26A5851AC(a1, &v15);
  v5 = v15;
  v6 = v16;
  v7 = v17;
  v8 = sub_26A84FA78();
  sub_26A585FE4(a1, &v15);
  v9 = v15;
  v10 = v17;
  v14 = v16;
  v13 = v18[0];
  v15 = v8;
  v16 = 0;
  LOBYTE(v17) = 1;
  *(&v17 + 1) = v9;
  v18[0] = v14;
  *&v18[8] = v10;
  v18[24] = v13;
  *&v12[48] = *&v18[9];
  *&v12[39] = *v18;
  *&v12[23] = v17;
  *&v12[7] = v8;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 89) = *&v12[48];
  *(a2 + 73) = *&v12[32];
  *(a2 + 57) = *&v12[16];
  *(a2 + 41) = *v12;

  sub_26A4D7E54();
}

void sub_26A5851AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NavigationHeader(0);
  v95 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v103 = v5;
  v104 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_26A84FE18();
  MEMORY[0x28223BE20](v92);
  v87 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84EE98();
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x28223BE20](v7);
  v96 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE010);
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x28223BE20](v9);
  v99 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE018);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v102 = &v72 - v13;
  v85 = sub_26A84F3A8();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26A84B1D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v72 - v20);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE020);
  MEMORY[0x28223BE20](v81);
  v82 = &v72 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE028);
  MEMORY[0x28223BE20](v105);
  v80 = &v72 - v23;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE030);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v106 = &v72 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE038);
  v93 = *(v25 - 8);
  v94 = v25;
  MEMORY[0x28223BE20](v25);
  v90 = &v72 - v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE040);
  MEMORY[0x28223BE20](v88);
  v86 = &v72 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE048);
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v79 = v4;
  v33 = *(a1 + *(v4 + 32));
  if (v33)
  {
    v73 = &v72 - v31;
    v74 = v32;
    v75 = v30;
    v76 = v12;
    v77 = v11;
    v78 = a2;
    v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98) + 28);
    v35 = type metadata accessor for NavigationHeaderConstants(0);
    (*(v16 + 16))(v18, v34 + *(v35 + 28), v15);
    v36 = a1;
    KeyPath = swift_getKeyPath();
    v38 = (v21 + *(v19 + 36));
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v16 + 32))(v38 + v39, v18, v15);
    __swift_storeEnumTagSinglePayload(v38 + v39, 0, 1, v15);
    *v38 = KeyPath;
    v40 = v36;
    *v21 = v33;
    v79 = *(v36 + *(v79 + 40));
    v41 = v79;

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v41 = sub_26A850E78();
      v42 = 0;
    }

    v43 = v82;
    sub_26A4D7EA8();
    *&v43[*(v81 + 36)] = v41;
    v81 = v42;

    v44 = sub_26A850248();
    sub_26A84ED48();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = v80;
    sub_26A4D7EA8();
    v54 = &v53[*(v105 + 36)];
    *v54 = v44;
    *(v54 + 1) = v46;
    *(v54 + 2) = v48;
    *(v54 + 3) = v50;
    *(v54 + 4) = v52;
    v54[40] = 0;
    v55 = v84;
    v56 = v83;
    v57 = v85;
    (*(v84 + 104))(v83, *MEMORY[0x277CDF9E8], v85);
    v82 = sub_26A586BD8();
    sub_26A850A98();
    (*(v55 + 8))(v56, v57);
    sub_26A4D6FD8();
    sub_26A84FF48();
    v58 = v96;
    sub_26A84EE88();
    v92 = type metadata accessor for NavigationHeader;
    sub_26A586D1C();
    swift_allocObject();
    v95 = v40;
    sub_26A586B84();
    sub_26A586D88();
    sub_26A586D88();
    v60 = v98;
    v59 = v99;
    sub_26A851348();

    (*(v97 + 8))(v58, v60);
    sub_26A586D1C();
    swift_allocObject();
    sub_26A586B84();
    sub_26A4D7DCC();
    v62 = v101;
    v61 = v102;
    sub_26A851338();

    (*(v100 + 8))(v59, v62);
    sub_26A84EEB8();
    v107 = v105;
    v108 = v82;
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    v63 = v90;
    v64 = v91;
    v65 = v77;
    v66 = v106;
    sub_26A850C28();
    (*(v76 + 8))(v61, v65);
    (*(v89 + 8))(v66, v64);
    if (v79)
    {

      v67 = sub_26A850E68();
    }

    else
    {
      v67 = sub_26A850DF8();
    }

    a2 = v78;
    v68 = sub_26A850248();
    v69 = v86;
    (*(v93 + 32))(v86, v63, v94);
    v70 = &v69[*(v88 + 36)];
    *v70 = v67;
    v70[8] = v68;
    v71 = v73;
    sub_26A499558();
    *&v71[*(v75 + 36)] = 256;
    sub_26A4995B4();
    sub_26A5870F4();
    v33 = sub_26A851248();
    sub_26A499610();
  }

  *a2 = v33;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t sub_26A585EC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationHeader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  result = sub_26A851068();
  v5 = *(a2 + *(v3 + 36));
  if (v5)
  {

    v5(v6);
    return sub_26A4C24DC(v5);
  }

  return result;
}

uint64_t sub_26A585F74()
{
  type metadata accessor for NavigationHeader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190);
  return sub_26A851068();
}

void sub_26A585FE4(uint64_t a1@<X0>, double *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v29 = sub_26A84B1D8();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NavigationHeaderConstants(0);
  MEMORY[0x28223BE20](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98) + 28);
  v14 = *(v28 + 80);
  if (qword_2803A8AF0 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF90);
  __swift_project_value_buffer(v15, qword_2803ADF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v26 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE000);
  v17 = swift_initStackObject();
  *(v17 + 16) = v26;
  *(v17 + 32) = sub_26A584BC8();
  sub_26A621958(v17);
  *(inited + 32) = v18;
  *(inited + 40) = 0;
  sub_26A584910();
  swift_setDeallocating();
  sub_26A7A0C68();
  v19 = v29;
  (*(v6 + 16))(v8, &v10[*(v27 + 28)], v29);
  sub_26A586B30();
  v20 = sub_26A584BC8();
  v21 = objc_allocWithZone(type metadata accessor for Context());
  v22 = Context.init(idiom:)(v20, 0);
  sub_26A77F8A4(v8, v5);
  sub_26A58E870(v22, v13);

  sub_26A4D6FD8();
  (*(v6 + 8))(v8, v19);
  v23 = v13[1];
  sub_26A586B30();
  type metadata accessor for NavigationHeader(0);
  sub_26A6078C0();
  v24 = v30;
  *v30 = v14 + v14 + v23;
  *(v24 + 8) = 0;
  *(v24 + 2) = v25;
  v24[3] = 0.0;
  *(v24 + 32) = 0;
}

__n128 NavigationHeader.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A851448();
  v6 = v5;
  sub_26A585068(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_26A4D7E54();
  sub_26A4D6FD8();
  memcpy(__src, __dst, 0x69uLL);
  v7 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98) + 28);
  v9 = *(v7 + 64);
  v10 = *(v7 + 48);
  LOBYTE(v2) = sub_26A850248();
  *a1 = v4;
  *(a1 + 8) = v6;
  memcpy((a1 + 16), __src, 0x69uLL);
  *(a1 + 128) = v2;
  result = v10;
  *(a1 + 152) = v9;
  *(a1 + 136) = v10;
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_26A5864D0()
{
  v0 = type metadata accessor for NavigationHeaderConstants(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF90);
  __swift_allocate_value_buffer(v3, qword_2803ADF78);
  __swift_project_value_buffer(v3, qword_2803ADF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4D7DCC();
  v4 = sub_26A8516A8();
  sub_26A8502F8();
  sub_26A8503A8();
  v5 = sub_26A850428();

  *(v2 + 5) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 8) = 0u;
  *v2 = v5;
  v6 = *(v0 + 28);
  v7 = *MEMORY[0x277D62B20];
  v8 = sub_26A84B1D8();
  (*(*(v8 - 8) + 104))(&v2[v6], v7, v8);
  __asm { FMOV            V1.2D, #14.0 }

  *(v2 + 3) = xmmword_26A85D580;
  *(v2 + 4) = _Q1;
  *(v2 + 10) = 0x4020000000000000;
  return sub_26A80E244(v4, v2);
}

void sub_26A5866F4()
{
  sub_26A5868A4(319, &qword_2803ADFB8, type metadata accessor for NavigationHeaderConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A5868A4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A58696C(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_26A58696C(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26A586908();
          if (v4 <= 0x3F)
          {
            sub_26A58696C(319, &qword_2803AD120, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A5868A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26A586908()
{
  if (!qword_2803B3830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADFC0);
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B3830);
    }
  }
}

void sub_26A58696C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A5869BC()
{
  result = qword_2803ADFC8;
  if (!qword_2803ADFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ADFD0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADFC8);
  }

  return result;
}

uint64_t sub_26A586A9C()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A586B30()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A586B84()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A586BD8()
{
  result = qword_2803AE050;
  if (!qword_2803AE050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE028);
    sub_26A586C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE050);
  }

  return result;
}

unint64_t sub_26A586C64()
{
  result = qword_2803AE058;
  if (!qword_2803AE058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE020);
    sub_26A52E814();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE058);
  }

  return result;
}

uint64_t sub_26A586D1C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A586D88()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for NavigationHeader(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_26A49035C(*v2, *(v2 + 8));
  sub_26A49035C(*(v2 + 16), *(v2 + 24));
  sub_26A49035C(*(v2 + 32), *(v2 + 40));
  sub_26A49035C(*(v2 + 48), *(v2 + 56));
  sub_26A49035C(*(v2 + 64), *(v2 + 72));
  sub_26A49035C(*(v2 + 80), *(v2 + 88));
  sub_26A49035C(*(v2 + 96), *(v2 + 104));
  sub_26A49035C(*(v2 + 112), *(v2 + 120));
  sub_26A49035C(*(v2 + 128), *(v2 + 136));
  sub_26A49035C(*(v2 + 144), *(v2 + 152));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF98);
  v4 = v2 + *(v3 + 28);

  if (*(v4 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 8);
  }

  v5 = type metadata accessor for NavigationHeaderConstants(0);
  v6 = *(v5 + 28);
  v7 = sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  v9 = *(v8 + 8);
  v9(v4 + v6, v7);
  v10 = v2 + *(v3 + 32);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADF90) + 36);

  if (*(v11 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 8);
  }

  v9(v11 + *(v5 + 28), v7);
  sub_26A49035C(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));

  if (*(v2 + *(v1 + 36)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26A587070(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for NavigationHeader(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_26A5870F4()
{
  result = qword_2803AE080;
  if (!qword_2803AE080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE048);
    sub_26A5871AC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE080);
  }

  return result;
}

unint64_t sub_26A5871AC()
{
  result = qword_2803AE088;
  if (!qword_2803AE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE028);
    sub_26A586BD8();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE088);
  }

  return result;
}

void sub_26A58733C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedAnalytics];
  v3 = [v2 defaultMessageStream];

  [v3 emitMessage_];
}

uint64_t sub_26A587400()
{
  OUTLINED_FUNCTION_2_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0B8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  if (v3 & 0x100) != 0 && (v7 = sub_26A587564(v2, v3 & 1), (sub_26A6B4FA4(v7, v1)))
  {
    OUTLINED_FUNCTION_183();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0C0);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0C0);
    OUTLINED_FUNCTION_46();
    (*(v9 + 16))(v6, v0, v8);
    OUTLINED_FUNCTION_183();
    swift_storeEnumTagMultiPayload();
  }

  sub_26A587E3C(&qword_2803AE0C8, &qword_2803AE0C0);
  return sub_26A84FDF8();
}

uint64_t sub_26A587564(uint64_t a1, char a2)
{
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_26A5876C0()
{
  OUTLINED_FUNCTION_2_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0D0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  if (v3 & 0x100) != 0 && (v7 = sub_26A587564(v2, v3 & 1), (sub_26A6B4FA4(v7, v1)))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0D8);
    OUTLINED_FUNCTION_46();
    (*(v9 + 16))(v6, v0, v8);
    OUTLINED_FUNCTION_183();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    OUTLINED_FUNCTION_183();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE0D8);
  }

  sub_26A587E3C(&qword_2803AE0E0, &qword_2803AE0D8);
  return sub_26A84FDF8();
}

uint64_t sub_26A58783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void))
{
  if (*(v4 + 9))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return a4(a1, *v4, v5 | *(v4 + 8), *(v4 + 16));
}

uint64_t View.hidden(_:on:)()
{
  return sub_26A587BDC();
}

{
  return sub_26A587C60();
}

uint64_t sub_26A58787C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26A587E90();
  result = MEMORY[0x26D663F90](v2, &unk_287B1ECE8, v3);
  v5 = 0;
  v12 = result;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (1)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v8 = *(v7 - 1);
    v9 = *v7;
    v7 += 16;
    sub_26A4E324C(v8, v9);
    sub_26A6B8FE8(&v10, v8, v9);
    result = sub_26A587EE4(v10, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A587948(uint64_t a1)
{
  v2 = MEMORY[0x26D663F90](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_26A6B93B4(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

uint64_t sub_26A5879DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for VRXIdiom();
  v4 = v3;
  v5 = sub_26A587F38(&qword_2803AE0F0, type metadata accessor for VRXIdiom);
  v6 = MEMORY[0x26D663F90](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_26A6B9454(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_26A587AAC(uint64_t a1)
{
  sub_26A73670C(a1);
  sub_26A587EF4();
  sub_26A587F38(&qword_2803AE0E8, sub_26A587EF4);
  v2 = OUTLINED_FUNCTION_183();
  v6[1] = MEMORY[0x26D663F90](v2);
  v3 = sub_26A73670C(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6644E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_26A6B9660(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t View.shown(_:on:)()
{
  return sub_26A587BDC();
}

{
  return sub_26A587C60();
}

uint64_t sub_26A587BDC()
{
  OUTLINED_FUNCTION_1_22();

  sub_26A5879DC(v0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_20();
  OUTLINED_FUNCTION_5_20();
}

uint64_t sub_26A587C60()
{
  OUTLINED_FUNCTION_1_22();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_20();

  OUTLINED_FUNCTION_5_20();
}

unint64_t sub_26A587CCC()
{
  result = qword_2803AE0A8;
  if (!qword_2803AE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE0A8);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx07SnippetB0013HiddenOnIdiomC8ModifierVGAaBHPxAaBHD1__AgA0cJ0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_26A84F4F8();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_26A587D90()
{
  result = qword_2803AE0B0;
  if (!qword_2803AE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE0B0);
  }

  return result;
}

uint64_t sub_26A587E3C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A587E90()
{
  result = qword_28157E730;
  if (!qword_28157E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E730);
  }

  return result;
}

uint64_t sub_26A587EE4(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

unint64_t sub_26A587EF4()
{
  result = qword_2803B10F0;
  if (!qword_2803B10F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B10F0);
  }

  return result;
}

uint64_t sub_26A587F38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A587F80()
{
  result = qword_2803AE0F8;
  if (!qword_2803AE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE100);
    sub_26A587E3C(&qword_2803AE0C8, &qword_2803AE0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE0F8);
  }

  return result;
}

unint64_t sub_26A588024()
{
  result = qword_2803AE108;
  if (!qword_2803AE108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE110);
    sub_26A587E3C(&qword_2803AE0E0, &qword_2803AE0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE108);
  }

  return result;
}

void OUTLINED_FUNCTION_5_20()
{

  JUMPOUT(0x26D662ED0);
}

uint64_t sub_26A588140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[2] = a1;
  v5 = sub_26A84AD18();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_26A851778();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = [objc_opt_self() sharedPreferences];
  v14 = sub_26A588548(v13);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v30[0] = a3;
    v30[1] = a2;
    v18 = [v12 localizations];
    if (!v18)
    {
      sub_26A851A98();
      v18 = sub_26A851A88();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACB38);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_26A8570D0;
    *(v19 + 32) = v16;
    *(v19 + 40) = v17;
    v20 = sub_26A851A88();

    v21 = [v11 preferredLocalizationsFromArray:v18 forPreferences:v20];

    v22 = sub_26A851A98();
    if (*(v22 + 16))
    {

      v23 = sub_26A851788();
      v24 = sub_26A851788();

      v25 = [v12 localizedStringForKey:v23 value:0 table:0 localization:v24];

      v26 = sub_26A8517B8();
      return v26;
    }

    a3 = v30[0];
  }

  (*(v7 + 16))(v9, a3, v6);
  v28 = v12;
  sub_26A84AD08();
  v29 = sub_26A8517D8();

  return v29;
}

id sub_26A5884F0()
{
  type metadata accessor for Resources();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t sub_26A588548(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A8517B8();

  return v3;
}

void RFTextProperty.asTextProperty()(uint64_t a1@<X8>)
{
  v22 = sub_26A84AFA8();
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A7364C8(v1);
  if (!v6)
  {
    v16 = sub_26A851E98();
    LOBYTE(v17) = 2;
    sub_26A7B6C38(v16, 1, "SnippetUI/RFTextProperty+TextPropertyConvertible.swift", 54, 2, 16, "asTextProperty()", 16, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
    v30 = MEMORY[0x277D84F90];
LABEL_15:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE118);
    sub_26A5894C0();
    sub_26A84B898();
    return;
  }

  v7 = v6;
  v8 = sub_26A73670C(v6);
  if (!v8)
  {

    v11 = MEMORY[0x277D84F90];
LABEL_14:
    v30 = v11;
    goto LABEL_15;
  }

  v9 = v8;
  *&v27 = MEMORY[0x277D84F90];
  sub_26A7DD0CC();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v27;
    v20 = a1;
    v21 = v7 & 0xC000000000000001;
    v12 = v7;
    do
    {
      if (v21)
      {
        v13 = MEMORY[0x26D6644E0](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = v13;
      RFTextElement.asTextElement()();

      *&v27 = v11;
      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_26A7DD0CC();
        v11 = v27;
      }

      ++v10;
      *(v11 + 16) = v15 + 1;
      (*(v3 + 32))(v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, v22);
      v7 = v12;
    }

    while (v9 != v10);

    goto LABEL_14;
  }

  __break(1u);
}

void RFTextElement.asTextElement()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD048);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = sub_26A589524(v1);
  if (v17)
  {
    v18 = v17;
    if (sub_26A73670C(v17))
    {
      sub_26A736710(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D6644E0](0, v18);
      }

      else
      {
        v19 = *(v18 + 32);
      }

      v20 = v19;

      v21 = sub_26A58945C(v20);
      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      v36 = v23;
      sub_26A588CBC(v16, v10, v20);
      sub_26A4E2544(v10, &qword_2803AD040);
      sub_26A588CBC(v13, v7, v20);
      sub_26A4E2544(v13, &qword_2803AD048);
      sub_26A5893B8(v20, v4);
      v24 = sub_26A84DFA8();
      if (__swift_getEnumTagSinglePayload(v4, 1, v24) == 1)
      {
        sub_26A4E2544(v4, &qword_2803AD038);
        v37 = 0u;
        v38 = 0u;
        v39 = 0;
      }

      else
      {
        *(&v38 + 1) = v24;
        v39 = MEMORY[0x277D63640];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
        (*(*(v24 - 8) + 32))(boxed_opaque_existential_1, v4, v24);
      }

      v27 = [v20 is_italic];
      if (v27)
      {
        v28 = v27;
        [v27 value];
      }

      v29 = [v20 is_bold];
      if (v29)
      {
        v30 = v29;
        [v29 value];
      }

      v31 = [v1 line_limit];
      v32 = v31;
      if (v31)
      {
        [v31 integerValue];
      }

      sub_26A84AEC8();

      return;
    }
  }

  v25 = sub_26A851E98();
  LOBYTE(v33) = 2;
  sub_26A7B6A14(v25, 1, "SnippetUI/RFTextProperty+TextPropertyConvertible.swift", 54, 2, 26, "asTextElement()", 15, v33, v34, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

  MEMORY[0x2821C9608](0, 0xE000000000000000);
}

id sub_26A588CBC(char *a1, uint64_t a2, void *a3)
{
  v66 = a1;
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE128);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v58 - v5;
  v6 = sub_26A84C878();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AE130);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_26A84C818();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - v18;
  v20 = sub_26A84C858();
  v60 = *(v20 - 8);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v59 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a3 font];
  if (!v23 || (v24 = v23, v25 = [v23 system], v24, !v25))
  {
    v33 = [a3 font];
    if (v33)
    {
      v34 = v33;
      [v33 name];
    }

    v35 = v20;
    sub_26A84C808();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_26A4E2544(v10, &unk_2803AE130);
      v36 = sub_26A84AEF8();
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v36);
    }

    else
    {
      v37 = v61;
      (*(v61 + 32))(v16, v10, v11);
      v38 = v62;
      sub_26A84C868();
      (*(v37 + 16))(v13, v16, v11);
      sub_26A84C828();
      v40 = v63;
      v39 = v64;
      v41 = v65;
      (*(v63 + 16))(v65, v38, v64);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v39);
      sub_26A84AF08();
      (*(v40 + 8))(v38, v39);
      (*(v37 + 8))(v16, v11);
    }

    v42 = v67;
    v43 = 1;
    v44 = v35;
    return __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
  }

  v26 = [v25 size];
  if (v26)
  {
    v27 = v26;
    result = [v25 weight];
    if (!__OFSUB__(result, 1))
    {
      v29 = v20;
      sub_26A84C848();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
      v32 = v59;
      v31 = v60;
      if (EnumTagSinglePayload == 1)
      {
        (*(v60 + 104))(v59, *MEMORY[0x277D633A8], v20);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
        {
          sub_26A4E2544(v19, &qword_2803AD040);
        }
      }

      else
      {
        (*(v60 + 32))(v59, v19, v20);
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD060);
      v48 = *(v47 + 48);
      v49 = *(v47 + 64);
      sub_26A851CD8();
      v51 = v50;

      v52 = v66;
      *v66 = v51;
      (*(v31 + 16))(&v52[v48], v32, v29);
      v53 = *MEMORY[0x277D63358];
      v54 = sub_26A84C838();
      (*(*(v54 - 8) + 104))(&v52[v49], v53, v54);
      v55 = *MEMORY[0x277D628C8];
      v56 = sub_26A84AEF8();
      (*(*(v56 - 8) + 104))(v52, v55, v56);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v56);
      v57 = v67;
      (*(v31 + 32))(v67, v32, v29);
      v42 = v57;
      v43 = 0;
      v44 = v29;
      return __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
    }

    __break(1u);
  }

  else
  {

    v45 = sub_26A84AEF8();
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v45);
    v46 = v67;

    return __swift_storeEnumTagSinglePayload(v46, 1, 1, v20);
  }

  return result;
}

uint64_t sub_26A5893B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 color];
  if (v3)
  {
    v4 = v3;
    sub_26A68D85C();
    Color.init(color:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_26A84DFA8();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t sub_26A58945C(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

unint64_t sub_26A5894C0()
{
  result = qword_2803AE120;
  if (!qword_2803AE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE120);
  }

  return result;
}

uint64_t sub_26A589524(void *a1)
{
  v1 = [a1 formatted_text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A589584();
  v3 = sub_26A851A98();

  return v3;
}

unint64_t sub_26A589584()
{
  result = qword_28157D850;
  if (!qword_28157D850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D850);
  }

  return result;
}

uint64_t sub_26A589644(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v14 = a3(v12, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void *sub_26A589740(double a1, double a2)
{
  OUTLINED_FUNCTION_6_22();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26A5897D4()
{
  v0 = sub_26A851EA8();
  LOBYTE(v1) = 2;
  j__OUTLINED_FUNCTION_59_5(v0, 0, "SnippetUI/VisualResponseView.swift", 34, 2, 97, "init(coder:)", 12, v1);
  sub_26A852418();
  __break(1u);
}

void sub_26A58987C(double a1, double a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController) view];
  if (v5)
  {
    v6 = v5;
    [v5 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }
}

void sub_26A589950()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VisualResponseView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController] view];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_26A589A50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26A8571A0;
  result = [*(v0 + OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController) view];
  if (result)
  {
    *(v1 + 32) = result;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VisualResponseView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VisualResponseView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualResponseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void VisualResponseView.updateSharedStateData(_:)()
{
  v13[4] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_5_21();
  v2 = sub_26A84ABC8();
  v13[0] = 0;
  v3 = [v1 propertyListWithData:v2 options:0 format:0 error:v13];

  if (v3)
  {
    v4 = v13[0];
    sub_26A852108();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1080);
    if (swift_dynamicCast())
    {
      v5 = sub_26A851688();

      [v0 updateSharedState_];
    }

    else
    {
      v10 = sub_26A851E98();
      LOBYTE(v11) = 2;
      j__OUTLINED_FUNCTION_200_0(v10, 1, "SnippetUI/VisualResponseView.swift", 34, 2, 137, "updateSharedStateData(_:)", 25, v11);
    }
  }

  else
  {
    v6 = v13[0];
    v7 = sub_26A84AAE8();

    swift_willThrow();
    v8 = v7;
    v9 = sub_26A851E98();
    v12 = 2;
    j__OUTLINED_FUNCTION_171_0(v9, 0, "SnippetUI/VisualResponseView.swift", 34, 2, 142, "updateSharedStateData(_:)", 25, v12, v7);
  }
}