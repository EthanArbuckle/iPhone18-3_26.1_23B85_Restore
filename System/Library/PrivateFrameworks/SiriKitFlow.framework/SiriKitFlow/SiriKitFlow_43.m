uint64_t sub_1DCF1E09C()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_29_29(v4, *(v3 + 80));
  (*(v5 + 8))(v0 + v6);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_13_65(*(v7 + 104));
  OUTLINED_FUNCTION_13_65(*(v8 + 112));
  OUTLINED_FUNCTION_13_65(*(v9 + 120));
  OUTLINED_FUNCTION_13_65(*(v10 + 128));
  sub_1DCF21020(*(v0 + *(v11 + 136)), *(v0 + *(v11 + 136) + 8), *(v0 + *(v11 + 136) + 16));
  return v0;
}

uint64_t sub_1DCF1E174(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1E214()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCF1A5CC();
}

void sub_1DCF1E2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v5;
  v17[4] = a2;
  v18 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1DD1020A0;
  v19[5] = v17;
  v19[6] = a3;
  v19[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF1E420(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a3;
  v5 = *(*(type metadata accessor for NLContextUpdate() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF1E4DC, 0, 0);
}

uint64_t sub_1DCF1E4DC()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(**(v0 + 32) + 96);
  OUTLINED_FUNCTION_77_11();
  v6();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 64) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_81_8(v7);

  return sub_1DCEACD2C();
}

uint64_t sub_1DCF1E590()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *(v5 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 72) = v0;

  sub_1DCB41F98(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 56);

    OUTLINED_FUNCTION_29();

    return v14();
  }
}

uint64_t sub_1DCF1E6D4()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);
  v3 = *(v2 + 80);
  return (*(*(v2 + 88) + 24))();
}

uint64_t sub_1DCF1E744()
{
  sub_1DCF1EC04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1E7FC()
{
  OUTLINED_FUNCTION_42();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  v5 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_38();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF1E8A0()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = *(**(v0 + 40) + 96);
  OUTLINED_FUNCTION_77_11();
  v6();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 64) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_81_8(v7);

  return sub_1DCEACD2C();
}

uint64_t sub_1DCF1E954()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *(v5 + 56);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v3 + 72) = v0;

  sub_1DCB41F98(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 56);

    OUTLINED_FUNCTION_29();

    return v14();
  }
}

uint64_t sub_1DCF1EA98()
{
  OUTLINED_FUNCTION_125();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_13();
  v7 = *(v6 + 96);
  v9 = *(v8 + 88);
  v10 = *(v8 + 80);
  v16 = (*(v9 + 24) + **(v9 + 24));
  v11 = *(*(v9 + 24) + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v5, v3, v1, v10, v9);
}

uint64_t sub_1DCF1EC04()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_29_29(v4, *(v3 + 80));
  (*(v5 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_1DCF1EC7C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF1ED28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1E7FC();
}

uint64_t sub_1DCF1EDDC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1EA98();
}

uint64_t sub_1DCF1EE90@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA1370 != -1)
  {
    swift_once();
  }

  return sub_1DCC7DF20(&qword_1ECCA9C98, a1);
}

uint64_t sub_1DCF1EEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 40);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1DCB4AD3C;

  return v16(a1, a3, a4, a5, a6);
}

uint64_t sub_1DCF1F048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  *(v3 + *(*v3 + 104)) = a2;
  *(v3 + *(*v3 + 112)) = a3;
  return v3;
}

uint64_t sub_1DCF1F104(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF1F14C, 0, 0);
}

uint64_t sub_1DCF1F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_36_34(*(v16 + 112)) + 48);
  OUTLINED_FUNCTION_25_1();
  v33 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_39_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_4_100(v22);
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_48();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_1DCF1F278()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1DCF1F320()
{
  v0 = *sub_1DCF1F278();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF1F38C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF1F440(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCF1F104(a1);
}

uint64_t sub_1DCF1F4DC()
{
  OUTLINED_FUNCTION_40_26();
  OUTLINED_FUNCTION_13();
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_4_50(v7, v8, *(v6 + 80));
  (*(v9 + 32))(v1 + v10);
  OUTLINED_FUNCTION_66();
  *(v1 + *(v11 + 104)) = v3;
  OUTLINED_FUNCTION_66();
  *(v1 + *(v12 + 112)) = v2;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v13 + 120));
  return v1;
}

uint64_t sub_1DCF1F598(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 40);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 96);
  return v2(a1, v3);
}

uint64_t sub_1DCF1F60C()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 96);
  v17 = (*(v2 + 88) + 48);
  v3 = *(v2 + 80);
  v18 = *v17 + **v17;
  v4 = (*v17)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_48();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
}

uint64_t sub_1DCF1F760(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1F7A0);
}

uint64_t sub_1DCF1F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_37_31(*(v16 + 112)) + 16);
  OUTLINED_FUNCTION_25_1();
  v33 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_39_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_4_100(v22);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_48();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_1DCF1F8CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v3 + 64) = 1089;
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_67_19(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_103(v13);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF1FA18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1FA58);
}

uint64_t sub_1DCF1FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_37_31(*(v16 + 112)) + 24);
  OUTLINED_FUNCTION_25_1();
  v33 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_39_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_4_100(v22);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_48();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_1DCF1FB84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1FBC4);
}

uint64_t sub_1DCF1FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_37_31(*(v16 + 112)) + 32);
  OUTLINED_FUNCTION_25_1();
  v33 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_39_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_4_100(v22);
  OUTLINED_FUNCTION_62_13();
  OUTLINED_FUNCTION_48();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_1DCF1FCF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v3 + 64) = 2625;
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_67_19(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_103(v13);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF1FE3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF1FE7C);
}

uint64_t sub_1DCF1FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_36_34(*(v16 + 112)) + 56);
  OUTLINED_FUNCTION_25_1();
  v33 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_39_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_4_100(v22);
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_48();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_1DCF1FFA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v3 + 64) = 23917;
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_67_19(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_103(v13);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF200F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF20134);
}

uint64_t sub_1DCF20134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_36_34(*(v16 + 112)) + 64);
  OUTLINED_FUNCTION_25_1();
  v33 = v18 + *v18;
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_39_0(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_4_100(v22);
  OUTLINED_FUNCTION_60_15();
  OUTLINED_FUNCTION_48();

  return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t sub_1DCF20260()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    *(v3 + 64) = 22789;
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_67_19(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_3_103(v13);

    return sub_1DCF209B8();
  }
}

uint64_t sub_1DCF203AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF20490()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1DCF204F4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCF20538);
}

uint64_t sub_1DCF20538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = v9[8];
  v10 = v9[9];
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 96);
  v15 = *(v14 + 104);
  OUTLINED_FUNCTION_12_59();
  v17 = *(OUTLINED_FUNCTION_36_34(*(v16 + 112)) + 72);
  OUTLINED_FUNCTION_25_1();
  v35 = v18 + *v18;
  v20 = *(v19 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v9[10] = v21;
  *v21 = v22;
  v21[1] = sub_1DCF20684;
  v23 = v9[6];
  v24 = v9[7];
  OUTLINED_FUNCTION_48();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35);
}

uint64_t sub_1DCF20684()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF2077C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 56);
  *(v0 + 112) = 13318;
  swift_getErrorValue();
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  sub_1DCEE0FD4(*(v0 + 24));
  *(v0 + 96) = v4;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1DCF20854;
  v6 = *(v0 + 64);
  OUTLINED_FUNCTION_10_66(*(v0 + 48));

  return sub_1DCF209B8();
}

uint64_t sub_1DCF20854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCF20954()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 88);
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1DCF209B8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  *(v1 + 104) = v6;
  *(v1 + 112) = v0;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_38();
  *(v1 + 152) = *v5;
  *(v1 + 153) = *v3;
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCF20A58()
{
  v3 = *(v0 + 88);
  v5 = v3[3];
  v4 = v3[4];
  if (OUTLINED_FUNCTION_46_21(v3))
  {
    v19 = *(v0 + 153);
    v16 = *(v0 + 152);
    v6 = *(v0 + 128);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v17 = *(v0 + 96);
    v18 = *(v0 + 120);
    v9 = (v7 + *(*v7 + 120));
    v10 = [*(v7 + *(*v7 + 112)) typeName];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_84_12();

    v11 = *(v7 + *(*v7 + 104));
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v12 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    type metadata accessor for SiriKitEvent(0);
    *v6 = v16;
    *(v6 + 8) = v1;
    *(v6 + 16) = v2;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = v11;
    sub_1DCB28B08(v0 + 56, v6 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v6 + 80) = 0;
    *(v6 + 88) = 0;
    sub_1DCB28B08(v0 + 16, v6 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    OUTLINED_FUNCTION_56_20();
    *(v6 + 168) = v17;
    *(v6 + 176) = v8;
    *(v6 + 184) = v19;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  v13 = *(v0 + 128);

  OUTLINED_FUNCTION_29();

  return v14();
}

uint64_t sub_1DCF20D34()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = v1[18];
  v5 = v1[17];
  v6 = *v0;
  *v3 = *v0;

  sub_1DCB16D50((v2 + 2), &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50((v2 + 7), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v7 = v1[16];

  v8 = v6[1];

  return v8();
}

uint64_t sub_1DCF20E88()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_29_29(v4, *(v3 + 80));
  (*(v5 + 8))(v0 + v6);
  OUTLINED_FUNCTION_66();
  v8 = *(v0 + *(v7 + 104));

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v10 + 120)));
  return v0;
}

id sub_1DCF20F60(id result, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      sub_1DD0DCF8C();
    case 4:

      result = result;
      break;
    case 5:

      result = sub_1DCBF9BE8(result, a2, a2 >> 8);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF21020(void *a1, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:

      a1 = a2;

      goto LABEL_4;
    case 4:

LABEL_4:

      break;
    case 5:

      sub_1DCC99E78(a1, a2, a2 >> 8);
      break;
    default:
      return;
  }
}

uint64_t sub_1DCF21114(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF21154(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF21198(uint64_t a1)
{
  if (*(a1 + 16) <= 5u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1DCF211B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1DCF211E0(id result, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      sub_1DD0DCF8C();
    case 3:

      result = result;
      break;
    case 4:

      result = sub_1DCBF9BE8(result, a2, a2 >> 8);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF212A0(void *a1, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:

      a1 = a2;

      goto LABEL_4;
    case 3:

LABEL_4:

      break;
    case 4:

      sub_1DCC99E78(a1, a2, a2 >> 8);
      break;
    default:
      return;
  }
}

uint64_t sub_1DCF21394(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF213D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF21418(uint64_t a1)
{
  if (*(a1 + 16) <= 4u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DCF21430(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DCF21460(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DCF21480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCF1F60C();
}

uint64_t sub_1DCF21528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1F760(a1);
}

uint64_t sub_1DCF215C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1FA18(a1);
}

uint64_t sub_1DCF21658(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1FB84(a1);
}

uint64_t sub_1DCF216F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF1FE3C(a1);
}

uint64_t sub_1DCF21788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF200F4(a1);
}

uint64_t sub_1DCF21820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCF204F4(a1, a2);
}

uint64_t sub_1DCF218C8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_65_0(v5);

  return sub_1DCF1E420(v7, v8, v9, v3);
}

uint64_t sub_1DCF21994()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_0_1();
  v5 = (*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v5);
  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v9[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_121();

  return sub_1DCF1EEFC(v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1DCF21AB8()
{
  result = qword_1ECCAA148[0];
  if (!qword_1ECCAA148[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ECCAA148);
  }

  return result;
}

uint64_t sub_1DCF21B08(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

id sub_1DCF21B54(id result, unint64_t a2, char a3)
{
  switch(a3 >> 6)
  {
    case 1:
      sub_1DD0DCF8C();
    case 2:
      result = result;
      break;
    case 3:
      return result;
    default:
      result = sub_1DCF20F60(result, a2, a3);
      break;
  }

  return result;
}

void sub_1DCF21B98(void *a1, unint64_t a2, char a3)
{
  switch(a3 >> 6)
  {
    case 1:

      break;
    case 2:

      break;
    case 3:
      return;
    default:
      sub_1DCF21020(a1, a2, a3);
      break;
  }
}

uint64_t sub_1DCF21BCC(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCF21C48(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCF21CCC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t sub_1DCF21D18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1D && *(a1 + 17))
    {
      v2 = *a1 + 28;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
      if (v2 >= 0x1C)
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

uint64_t sub_1DCF21D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF21DB8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 16) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    v2 = -64;
  }

  *(result + 16) = v2;
  return result;
}

void sub_1DCF21DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 5)
  {
    sub_1DCF212A0(*a1, *(a1 + 8), v1);
  }
}

uint64_t sub_1DCF21DFC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 16);
  if (v3 > 5)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    sub_1DCF211E0(*a2, v5, v3);
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t sub_1DCF21E64(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 > 5)
  {
    if (v5 <= 5)
    {
      v12 = *a2;
      v11 = *(a2 + 1);
      sub_1DCF211E0(*a2, v11, v5);
      *a1 = v12;
      *(a1 + 8) = v11;
      *(a1 + 16) = v5;
      return a1;
    }

LABEL_7:
    v13 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v13;
    return a1;
  }

  if (v5 > 5)
  {
    sub_1DCF212A0(*a1, *(a1 + 8), v4);
    goto LABEL_7;
  }

  v7 = *a2;
  v6 = *(a2 + 1);
  sub_1DCF211E0(*a2, v6, v5);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = v6;
  v10 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCF212A0(v8, v9, v10);
  return a1;
}

uint64_t sub_1DCF21F18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 > 5)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v5 > 5)
  {
    sub_1DCF212A0(v6, v7, v4);
LABEL_5:
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  *a1 = *a2;
  *(a1 + 16) = v5;
  sub_1DCF212A0(v6, v7, v4);
  return a1;
}

uint64_t sub_1DCF21F84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCF21FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1DCF22014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCF22028(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_81_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[7];
  result = v2[2];
  v5 = v2[3];
  return result;
}

uint64_t sub_1DCF220C4(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void RequestTCCAcceptanceFlowStrategy.makeHandoffResponseForAuthenticationResponse(app:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = *(a6 + 48);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF22380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_39_27(v11);
  type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter();
  *v10 = v9;
  OUTLINED_FUNCTION_30_34();
  OUTLINED_FUNCTION_121();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 16);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1DCF22508()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCF2261C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  v3 = OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(v3);
}

void sub_1DCF226C0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

void sub_1DCF227B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 80);
  v8 = type metadata accessor for SiriKitRequestTCCAcceptanceFlowNLOnlyStrategy();
  RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:_:)(v8, v9, a3, a4, v10, v11);
}

uint64_t sub_1DCF228F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a7(0, *(a5 + 80), *(a5 + 88));

  return a8(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_1DCF22980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_39_27(v11);
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter();
  *v10 = v9;
  OUTLINED_FUNCTION_30_34();
  OUTLINED_FUNCTION_121();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(v12, v13, v14, v15, v16, v17, v18, v19, a9);
}

uint64_t sub_1DCF22A18()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)();
}

uint64_t sub_1DCF22AA8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_38_26();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_0_77(v1);
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter();
  OUTLINED_FUNCTION_6_55();
  *v0 = v2;
  v3 = OUTLINED_FUNCTION_2_75();

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(v3);
}

void sub_1DCF22BF8()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF22CF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF22DF0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCB17CA0((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCF22E74(uint64_t a1, void (*a2)(void *))
{
  sub_1DCB28B08(a1, v17, &qword_1ECCA2288, &unk_1DD0E4840);
  if (v19)
  {
    v3 = *&v17[0];
    v15[0] = *&v17[0];
    v16 = 1;
    v4 = *&v17[0];
    a2(v15);

    v5 = qword_1ECCAA3D8;
    v6 = qword_1DD102680;
    v7 = v15;
  }

  else
  {
    v13[0] = v17[0];
    v13[1] = v17[1];
    v13[2] = v17[2];
    v14 = v18;
    sub_1DCB28B08(v13, v12, &qword_1ECCA5500, &qword_1DD0F20A0);

    sub_1DCB28B08(v13, v11, &qword_1ECCA5500, &qword_1DD0F20A0);
    v8 = v11[5];
    v9 = v11[6];
    v15[8] = 0;
    v15[9] = 0;
    sub_1DCB18FF0(v12, v15);
    v15[5] = v8;
    v15[6] = v9;
    v15[7] = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v16 = 0;
    a2(v15);
    sub_1DCB16DB0(v15, qword_1ECCAA3D8, qword_1DD102680);
    v7 = v13;
    v5 = &qword_1ECCA5500;
    v6 = &qword_1DD0F20A0;
  }

  return sub_1DCB16DB0(v7, v5, v6);
}

uint64_t sub_1DCF22FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AD3C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t sub_1DCF230A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)();
}

uint64_t sub_1DCF23138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCF23254(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1);
}

uint64_t sub_1DCF232EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF23304()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF233D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[11] + 16))(a3, v18, sub_1DCF26F20, v15, v6[10]);
}

uint64_t sub_1DCF2358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF235A4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF23674(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[11] + 24))(a3, v18, sub_1DCF26F8C, v15, v6[10]);
}

uint64_t sub_1DCF2382C(uint64_t a1)
{
  sub_1DCB28B08(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCB18FF0(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCF238CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF238E4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF239B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[11] + 32))(a3, v18, sub_1DCF26F8C, v15, v6[10]);
}

uint64_t sub_1DCF23B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF23B84()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF23C54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[11] + 40))(a3, v18, sub_1DCF26F8C, v15, v6[10]);
}

uint64_t sub_1DCF23E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF23E24()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[5];
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1DCC27658;
  v5 = v0[2];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF23F00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[11] + 56))(a3, v18, sub_1DCF26E80, v15, v6[10]);
}

uint64_t sub_1DCF240B8(uint64_t a1)
{
  sub_1DCB28B08(a1, __src, qword_1ECCAA3D8, qword_1DD102680);
  if (v4)
  {
    __dst[0] = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
    return sub_1DD0DE45C();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCF24160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF232EC(a1, a2, a3);
}

uint64_t sub_1DCF24214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF2358C(a1, a2, a3);
}

uint64_t sub_1DCF242C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF238CC(a1, a2, a3);
}

uint64_t sub_1DCF2437C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF23B6C(a1, a2, a3);
}

uint64_t sub_1DCF24430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF23E0C(a1, a2, a3);
}

void sub_1DCF245B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v20 - v16;
  v18 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a8;
  v19[5] = 0;
  v19[6] = a3;
  v19[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF246A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEADCCC();
}

uint64_t sub_1DCF24738()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAE0E0();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.handoffTCCFlow(deviceState:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    return 1;
  }

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 16))(v5, v6) & 1;
}

uint64_t sub_1DCF24880()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEADCCC();
}

uint64_t sub_1DCF2499C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAE0E0();
}

uint64_t sub_1DCF24AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t ClientHandledRequestTCCAcceptanceFlowStrategyAsync.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF24BF0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 40))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF24C60(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  (*(*(*(v4 + 152) - 8) + 16))(v1 + *(v3 + 168), a1);

  return sub_1DCC24BD8();
}

uint64_t sub_1DCF24CE8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 168);
  v5 = *(*(v4 + 160) + 40);
  OUTLINED_FUNCTION_74_1();
  v7 = *(v6 + 152);
  return v8();
}

uint64_t sub_1DCF24D54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCF24DAC()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  v3[1] = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v5);
  v7 = *(v2 + 152);
  v6 = *(v2 + 160);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_17();
  *v0 = v8;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v9);
}

uint64_t sub_1DCF24E9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = a3;
  v4 = *a2;
  v5 = *(*a2 + 160);
  v6 = *(*a2 + 152);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DE47C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = *(v4 + 168);
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v5;
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v5 + 48))(v18, sub_1DCF26DAC, v15, v6, v5);
}

uint64_t sub_1DCF25094(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v2);
}

uint64_t sub_1DCF2511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF25134()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF25204(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[21];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[20] + 56))(a3, v18, sub_1DCF26F8C, v15, v6[19]);
}

uint64_t sub_1DCF253BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF253D4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF254A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[21];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[20] + 64))(a3, v18, sub_1DCF26F8C, v15, v6[19]);
}

uint64_t *sub_1DCF256BC()
{
  v1 = *v0;
  sub_1DCC0C0A0();
  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 168));
  return v0;
}

uint64_t sub_1DCF25738()
{
  sub_1DCF256BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF257B4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCF24D54(a1, a2);
}

uint64_t sub_1DCF25860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF2511C(a1, a2, a3);
}

uint64_t sub_1DCF25914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF253BC(a1, a2, a3);
}

uint64_t sub_1DCF259E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCF25AFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return RequestTCCAcceptanceFlowNLOnlyStrategyAsync.makePromptForDeviceUnlock(app:intent:)();
}

uint64_t RequestTCCAcceptanceFlowNLOnlyStrategyAsync.makePromptForDeviceUnlock(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 16);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 24);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.parseTCCConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 48);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return v14(v7, v5, v3, v1);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 56);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 64);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 72);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCF2660C(uint64_t a1)
{
  v1 = *(a1 + 152);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowNLOnlyStrategy.makePromptForDeviceUnlock(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 32);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of RequestTCCAcceptanceFlowNLOnlyStrategyAsync.makePromptForDeviceUnlock(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v14 = *(OUTLINED_FUNCTION_38_0(v9, v10, v11, v12, v13) + 24);
  OUTLINED_FUNCTION_25_1();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_11_0(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_2_9(v19);
  OUTLINED_FUNCTION_48();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_1DCF268D4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 96);
  v5 = *(*(v4 + 88) + 16);
  OUTLINED_FUNCTION_74_1();
  v7 = *(v6 + 80);
  return v8();
}

uint64_t sub_1DCF26940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF26958()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF26A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(v6[11] + 24))(a3, v18, sub_1DCF26F8C, v15, v6[10]);
}

uint64_t sub_1DCF26BE0()
{
  sub_1DCC0C0A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF26C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCF26940(a1, a2, a3);
}

uint64_t sub_1DCF26D28(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 152;
  v3 = *(a2 + 152);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DCF26D44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF26DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_78();

  return sub_1DCF25094(v6);
}

uint64_t sub_1DCF26E80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAA3D0, &qword_1DD102678);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_78();

  return sub_1DCF240B8(v3);
}

uint64_t sub_1DCF26F24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_78();
  return sub_1DCF2382C(v3);
}

uint64_t sub_1DCF26FF4(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  sub_1DCF27060(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1DCF27060(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 25) = a3;
  *(v5 + 32) = *a4;
  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = a5;
  return v5;
}

uint64_t sub_1DCF27090()
{
  v1 = *(v0 + 40);

  return v0;
}

uint64_t sub_1DCF270C0()
{
  sub_1DCF27090();
  OUTLINED_FUNCTION_4_0();

  return swift_deallocClassInstance();
}

__n128 sub_1DCF27188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000013;
  *(v16 + 24) = 0x80000001DD122E50;
  *(v16 + 32) = a1;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = 0;
  *(v16 + 64) = a2;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;
  v17 = *(a5 + 16);
  *(v16 + 112) = *a5;
  *(v16 + 128) = v17;
  *(v16 + 144) = *(a5 + 32);
  v18 = *a6;
  v19 = a6[1];
  *(v16 + 184) = *(a6 + 4);
  *(v16 + 168) = v19;
  *(v16 + 152) = v18;
  v20 = *(a7 + 16);
  *(v16 + 192) = *a7;
  *(v16 + 208) = v20;
  *(v16 + 224) = *(a7 + 32);
  *(v16 + 232) = a8;
  OUTLINED_FUNCTION_49();
  return result;
}

uint64_t sub_1DCF27258(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = *MEMORY[0x1E699F738];
  v12 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 104))(v10, v11);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

void sub_1DCF27358(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *v2;
  if (*(v2 + 104))
  {
    v5 = OUTLINED_FUNCTION_44_24();
    a2(v5);
LABEL_3:
    OUTLINED_FUNCTION_48_21();
    return;
  }

  v6 = v2;
  v7 = v2[8];
  v8 = v2 + 9;
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  v12 = v2[12];
  v13 = v2[5];
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  if (*(v13 + 48) == 1)
  {
    v17 = *(v4 + 80);
    v16 = *(v4 + 88);
    swift_getAssociatedTypeWitness();
    type metadata accessor for ResolutionResultProcessingResult();
    v104 = v14;
    v105 = v15;
    v106 = 0;
    v107 = 1;
    OUTLINED_FUNCTION_29_30();
    v6[8] = sub_1DCF26FF4(v18, v19, v20, v21, v22);
    *v8 = 0u;
    v8[1] = 0u;
    *(v6 + 104) = 4;
    OUTLINED_FUNCTION_40_27();
    sub_1DCF2AB28(v23, v24, v25, v26, v27, v28);

    v29 = OUTLINED_FUNCTION_44_24();
    a2(v29);
  }

  else
  {
    v91 = v4;
    v30 = *(v13 + 24);
    OUTLINED_FUNCTION_40_27();
    sub_1DCF2AB28(v31, v32, v33, v34, v35, v36);

    v37 = sub_1DCB90DA0(v14, v15, v30);

    v38 = v15;
    if (v37)
    {
      v92 = v7;
      v39 = 0;
      v97 = v37 & 0xC000000000000001;
      v100 = sub_1DCB08B14(v37);
      v95 = v37 & 0xFFFFFFFFFFFFFF8;
      v94 = v37;
      while (v100 != v39)
      {
        if (v97)
        {
          v40 = MEMORY[0x1E12A72C0](v39, v37);
        }

        else
        {
          if (v39 >= *(v95 + 16))
          {
            goto LABEL_29;
          }

          v40 = *(v37 + 8 * v39 + 32);
        }

        v41 = v40;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v42 = [v40 resolutionResultCode];
        if (v42 <= 6 && ((1 << v42) & 0x5E) != 0)
        {

          v101 = v6[9];
          v103 = v6[8];
          v45 = v6[10];
          v96 = v6[12];
          v98 = v6[11];
          v6[8] = v92;
          v6[9] = v14;
          v6[10] = v38;
          v6[11] = v39;
          v6[12] = v41;
          v46 = *(v6 + 104);
          *(v6 + 104) = 1;
          OUTLINED_FUNCTION_40_27();
          sub_1DCF2AB28(v47, v48, v49, v50, v51, v52);
          v53 = v41;
          sub_1DCF2AC40(v103, v101, v45, v98, v96, v46);
          v54 = OUTLINED_FUNCTION_44_24();
          a2(v54);
          OUTLINED_FUNCTION_40_27();
          sub_1DCF2AC40(v55, v56, v57, v58, v59, v60);

          goto LABEL_3;
        }

        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_2_8();
          swift_once();
        }

        sub_1DD0DE6DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        OUTLINED_FUNCTION_4_0();
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1DD0E07C0;
        v104 = 0;
        v105 = 0xE000000000000000;
        v108 = [v41 resolutionResultCode];
        type metadata accessor for INResolutionResultCode(0);
        sub_1DD0DEDBC();
        *(v44 + 56) = MEMORY[0x1E69E6158];
        *(v44 + 64) = sub_1DCB34060();
        *(v44 + 32) = 0;
        *(v44 + 40) = 0xE000000000000000;
        sub_1DD0DD7EC();

        ++v39;
        v37 = v94;
      }

      if (qword_1EDE4F908 == -1)
      {
        goto LABEL_27;
      }

LABEL_30:
      OUTLINED_FUNCTION_2_8();
      swift_once();
LABEL_27:
      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      v72 = *(v91 + 80);
      v71 = *(v91 + 88);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66();
      v104 = 0;
      v105 = 0;
      v107 = 0;
      v106 = 0;
      v73 = sub_1DCF26FF4(v92, 0, 1, &v104, 0);
      v74 = v6[9];
      v75 = v6[11];
      v99 = v6[10];
      v102 = v6[8];
      v76 = v6[12];
      v6[8] = v73;
      *v8 = 0u;
      v8[1] = 0u;
      v77 = *(v6 + 104);
      *(v6 + 104) = 4;
      OUTLINED_FUNCTION_46_22();
      sub_1DCF2AB28(v78, v79, v80, v81, v82, v83);
      sub_1DCF2AC40(v102, v74, v99, v75, v76, v77);
      v84 = OUTLINED_FUNCTION_44_24();
      a2(v84);
      OUTLINED_FUNCTION_46_22();
      sub_1DCF2AC40(v85, v86, v87, v88, v89, v90);
      goto LABEL_3;
    }

    sub_1DD0DEC1C();

    v104 = 0xD00000000000002FLL;
    v105 = 0x80000001DD123F10;
    MEMORY[0x1E12A6780](v14, v15);

    MEMORY[0x1E12A6780](39, 0xE100000000000000);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v61 = OUTLINED_FUNCTION_198();
    sub_1DCC7AE30();
    v62 = OUTLINED_FUNCTION_34();
    *v63 = v61;
    (a2)(v62, 1);
  }

  OUTLINED_FUNCTION_48_21();

  sub_1DCF2AC40(v64, v65, v66, v67, v68, v69);
}

void sub_1DCF279B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = *v3;
  v35 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v7 = OUTLINED_FUNCTION_2(v33);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v32 - v16;
  if (v3[29])
  {
    v18 = v3[29];
  }

  else
  {
    v19 = v32 - v16;
    v18 = sub_1DCF295EC(a1);
    v17 = v19;
  }

  v20 = v3[9];
  v21 = *(v3 + 104) - 1;
  v36 = v18;
  v22 = v3[10];
  v23 = v3[11];
  v24 = v3[12];
  switch(v21)
  {
    case 0:
      v32[4] = v17;
      v32[7] = a2;
      sub_1DD0DCF8C();
    case 2:
      v26 = v4[8];
      sub_1DD0DCF8C();
    case 3:
      v25 = v4[8];
      sub_1DD0DCF8C();
    case 5:
      *v12 = v4[8];
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_101();
      sub_1DCF2AB28(v27, v28, v29, v30, v31, 6);
      sub_1DD0DCF8C();
    default:
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCF2838C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[45] = a5;
  v6[46] = a6;
  v6[43] = a3;
  v6[44] = a4;
  v6[41] = a1;
  v6[42] = a2;
  v6[47] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DCF283DC, 0, 0);
}

uint64_t sub_1DCF283DC()
{
  switch([*(v0 + 336) resolutionResultCode])
  {
    case 1uLL:
      v1 = OUTLINED_FUNCTION_8_66();
      *(v0 + 64) = v2;
      *(v0 + 32) = v3;
      *(v0 + 48) = v1;
      *(v0 + 16) = v4;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 432) = v5;
      *v5 = v6;
      OUTLINED_FUNCTION_45_20(v5);
      OUTLINED_FUNCTION_73();

      result = sub_1DCEB5D34(v7);
      break;
    case 2uLL:
      v31 = OUTLINED_FUNCTION_8_66();
      *(v0 + 176) = v32;
      *(v0 + 144) = v33;
      *(v0 + 160) = v31;
      *(v0 + 128) = v34;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 400) = v35;
      *v35 = v36;
      OUTLINED_FUNCTION_45_20(v35);
      OUTLINED_FUNCTION_73();

      result = sub_1DCEB564C(v37);
      break;
    case 3uLL:
      v23 = OUTLINED_FUNCTION_8_66();
      *(v0 + 184) = v24;
      *(v0 + 232) = v25;
      *(v0 + 216) = v23;
      *(v0 + 200) = v26;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 384) = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_45_20(v27);
      OUTLINED_FUNCTION_73();

      result = sub_1DCEB52D8(v29);
      break;
    case 4uLL:
      v39 = OUTLINED_FUNCTION_8_66();
      *(v0 + 72) = v40;
      *(v0 + 120) = v41;
      *(v0 + 104) = v39;
      *(v0 + 88) = v42;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 416) = v43;
      *v43 = v44;
      OUTLINED_FUNCTION_45_20(v43);
      OUTLINED_FUNCTION_73();

      result = sub_1DCB9199C(v45);
      break;
    case 6uLL:
      v47 = *(v0 + 360);
      v49 = *(v0 + 328);
      v48 = *(v0 + 336);
      v50 = *(v0 + 368);
      v51 = [v48 intentToExecute];
      v53 = *(v47 + 64);
      v52 = *(v47 + 72);
      v54 = *(v47 + 80);
      v55 = *(v47 + 88);
      v56 = *(v47 + 96);
      *(v47 + 64) = v50;
      *(v47 + 72) = v51;
      *(v47 + 88) = 0;
      *(v47 + 96) = 0;
      *(v47 + 80) = 0;
      v57 = *(v47 + 104);
      *(v47 + 104) = 5;
      sub_1DCF2AC40(v53, v52, v54, v55, v56, v57);
      type metadata accessor for SiriKitFlowFrameInput();
      sub_1DD0DB32C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v10 = *(v0 + 360);
      v11 = *(v0 + 336);
      v60 = *(v0 + 328);
      sub_1DD0DEC1C();
      *(v0 + 240) = 0;
      *(v0 + 248) = 0xE000000000000000;
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD00000000000002BLL);
      *(v0 + 256) = [v11 resolutionResultCode];
      type metadata accessor for INResolutionResultCode(0);
      sub_1DD0DEDBC();
      v13 = *(v0 + 240);
      v12 = *(v0 + 248);
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_41_4();
      swift_allocObject();
      v14 = CommandFailure.init(errorCode:reason:)(-1, v13, v12);
      sub_1DCC7AE30();
      v15 = OUTLINED_FUNCTION_34();
      *v16 = v14;
      v17 = *(v10 + 64);
      v18 = *(v10 + 72);
      v19 = *(v10 + 80);
      v20 = *(v10 + 88);
      v21 = *(v10 + 96);
      *(v10 + 64) = v15;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      v22 = *(v10 + 104);
      *(v10 + 104) = 6;
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCF28854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 392) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF2893C()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v1 = v0[49];
  OUTLINED_FUNCTION_14_55();
  v0[39] = v1;
  OUTLINED_FUNCTION_47_21(v2);
  type metadata accessor for NeedsConfirmationAnswer();
  OUTLINED_FUNCTION_53_18();
  OUTLINED_FUNCTION_12_60();
  type metadata accessor for AnyValueFlow();
  OUTLINED_FUNCTION_2_96();
  sub_1DCD1AC74();
  v0[40] = v3;
  sub_1DCF29004();
}

uint64_t sub_1DCF28A40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 400);
  *v2 = *v0;
  *(v1 + 408) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF28B28()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v1 = v0[51];
  OUTLINED_FUNCTION_14_55();
  v0[37] = v1;
  OUTLINED_FUNCTION_47_21(v2);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_53_18();
  OUTLINED_FUNCTION_12_60();
  type metadata accessor for AnyValueFlow();
  OUTLINED_FUNCTION_2_96();
  sub_1DCD1AC74();
  v0[38] = v3;
  sub_1DCF29084();
}

uint64_t sub_1DCF28C2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 416);
  *v2 = *v0;
  *(v1 + 424) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF28D14()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v1 = v0[53];
  OUTLINED_FUNCTION_14_55();
  v0[35] = v1;
  OUTLINED_FUNCTION_47_21(v2);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_53_18();
  OUTLINED_FUNCTION_12_60();
  type metadata accessor for AnyValueFlow();
  OUTLINED_FUNCTION_2_96();
  sub_1DCD1AC74();
  v0[36] = v3;
  sub_1DCF290C4();
}

uint64_t sub_1DCF28E18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 432);
  *v2 = *v0;
  *(v1 + 440) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF28F00()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v1 = v0[55];
  OUTLINED_FUNCTION_14_55();
  v0[33] = v1;
  OUTLINED_FUNCTION_47_21(v2);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_53_18();
  OUTLINED_FUNCTION_12_60();
  type metadata accessor for AnyValueFlow();
  OUTLINED_FUNCTION_2_96();
  sub_1DCD1AC74();
  v0[34] = v3;
  sub_1DCF29104();
}

void sub_1DCF29044(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 16);
  v3 = *a2;
  v4 = v2;
  sub_1DCF2A26C(a1, &v3);
}

uint64_t sub_1DCF29144(void *a1, char a2, uint64_t *a3, void (*a4)(void *), uint64_t a5, void *a6)
{
  v36 = a5;
  v37 = a4;
  v10 = *a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v36 - v14);
  sub_1DCCFA914();
  v16 = sub_1DD0DE93C();
  sub_1DD0DE70C();
  sub_1DD0DD7EC();

  if (a2)
  {
    v17 = a3[8];
    v18 = a3[9];
    v19 = a3[10];
    v20 = a3[11];
    v21 = a3[12];
    a3[8] = a1;
    *(a3 + 9) = 0u;
    *(a3 + 11) = 0u;
    v22 = *(a3 + 104);
    *(a3 + 104) = 6;
    v23 = a1;
    sub_1DCF2AC40(v17, v18, v19, v20, v21, v22);
    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v24 = a1;
  }

  else
  {
    v26 = *(v10 + 80);
    v25 = *(v10 + 88);
    swift_getAssociatedTypeWitness();
    type metadata accessor for ResolutionResultProcessingResult();
    memset(v38, 0, sizeof(v38));
    v39 = 0;
    v27 = sub_1DCF26FF4(a6, 1, 0, v38, 0);
    v28 = a3[8];
    v29 = a3[9];
    v30 = a3[10];
    v31 = a3[11];
    v32 = a3[12];
    a3[8] = v27;
    *(a3 + 9) = 0u;
    *(a3 + 11) = 0u;
    v33 = *(a3 + 104);
    *(a3 + 104) = 4;
    v34 = a6;
    sub_1DCF2AC40(v28, v29, v30, v31, v32, v33);
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB30C();
    swift_storeEnumTagMultiPayload();
  }

  v37(v15);
  return sub_1DCB0E9D8(v15, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

void *sub_1DCF293E4()
{
  v1 = *v0;
  v2 = v0[8];
  v3 = *(v0 + 104);
  if (v3 == 6)
  {
    v14 = v2;
  }

  else
  {
    v4 = v0;
    v5 = *v0;
    if (v3 != 5)
    {
      if (v3 == 4)
      {
        v6 = v0[8];
        sub_1DD0DCF8C();
      }

      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD00000000000001CLL);
      OUTLINED_FUNCTION_20_30();
      v15 = *(v5 + 80);
      v16 = *(v5 + 88);
      OUTLINED_FUNCTION_36_35();
      sub_1DD0DF07C();
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_41_4();
      swift_allocObject();
      v17 = OUTLINED_FUNCTION_24_30();
      v19 = CommandFailure.init(errorCode:reason:)(v17, v18, 0xE000000000000000);
      sub_1DCC7AE30();
      v20 = OUTLINED_FUNCTION_34();
      *v21 = v19;
      v22 = v4[8];
      v23 = v4[9];
      v24 = v4[10];
      v25 = v4[11];
      v26 = v4[12];
      v4[8] = v20;
      *(v4 + 9) = 0u;
      *(v4 + 11) = 0u;
      v27 = *(v4 + 104);
      *(v4 + 104) = 6;
      sub_1DD0DCF8C();
    }

    v7 = v0[9];
    v9 = *(v1 + 80);
    v8 = *(v1 + 88);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_9_66();
    OUTLINED_FUNCTION_43_24();
    v11 = sub_1DCF26FF4(v2, 0, 0, v10, v7);
    v12 = v2;
    v13 = v7;
    return v11;
  }

  return v2;
}

uint64_t sub_1DCF295EC(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = OUTLINED_FUNCTION_51_27();
  v6 = OUTLINED_FUNCTION_51_27();
  RCHChildFlowProducers.init()(v5, v6);
  sub_1DCD01E78((v1 + 19), &v9);
  if (!v10)
  {
    if (qword_1EDE46628 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDE46630;
    sub_1DCB4E718(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v11[3] = type metadata accessor for RefreshableDeviceState();
    v11[4] = &protocol witness table for RefreshableDeviceState;
    v11[0] = v7;
    sub_1DD0DCF8C();
  }

  sub_1DCB18FF0(&v9, v11);
  sub_1DCB36E74(v1[4], a1, v11, v12, v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  type metadata accessor for RCHChildFlowFactory();
  return RCHChildFlowFactory.__allocating_init(producers:)();
}

void sub_1DCF29788(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();
  v6 = v2 + 9;
  v7 = v2[9];
  if (*(v2 + 104) != 2)
  {
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_1DD0DEC1C();
    v48[0] = *v50;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000011);
    *v50 = OUTLINED_FUNCTION_20_30();
    v51 = v15;
    v52 = v16;
    v53 = v17;
    v18 = *(v5 + 80);
    v19 = *(v5 + 88);
    OUTLINED_FUNCTION_36_35();
    sub_1DD0DF07C();
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_24_30();
    v22 = CommandFailure.init(errorCode:reason:)(v20, v21, *(&v48[0] + 1));
    sub_1DCC7AE30();
    v23 = OUTLINED_FUNCTION_4_29();
    *v24 = v22;
    *&v26 = OUTLINED_FUNCTION_3_104(v23);
    *v6 = v26;
    *(v3 + 11) = v26;
    v27 = *(v3 + 104);
LABEL_16:
    v34 = OUTLINED_FUNCTION_39_28(v25);
    goto LABEL_17;
  }

  v8 = v2[10];
  v9 = v2[8];

  v11 = *(v5 + 80);
  v10 = *(v5 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_12_60();
  v12 = type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 16))(v50, a2);
  if (!v53)
  {
    v48[0] = *v50;
    v48[1] = v51;
    v49 = v52;
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DD0E07C0;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1DCB34060();
    *(v28 + 32) = v7;
    *(v28 + 40) = v8;
    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_10_67();
    v29 = *(*(v5 - 8) + 8);
    v49;
    v29(v48, v5);
    OUTLINED_FUNCTION_43_24();
    goto LABEL_15;
  }

  if (v53 != 1)
  {
    if (!(*(&v51 + 1) | v52 | v50[0] | v51 | v50[1]))
    {

      sub_1DD0DE6DC();
      goto LABEL_14;
    }

    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC();
    OUTLINED_FUNCTION_10_67();
    OUTLINED_FUNCTION_41_24();
LABEL_15:
    OUTLINED_FUNCTION_29_30();
    v45 = sub_1DCF26FF4(v40, v41, v42, v43, v44);
    *&v46 = OUTLINED_FUNCTION_3_104(v45);
    *v6 = v46;
    *(v2 + 11) = v46;
    v47 = *(v2 + 104);
    goto LABEL_16;
  }

  v14 = v50[0];
  if (LOBYTE(v50[1]) == 1)
  {

    sub_1DD0DE6DC();
LABEL_14:
    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC();
    OUTLINED_FUNCTION_10_67();
    OUTLINED_FUNCTION_41_24();
    goto LABEL_15;
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v31 = sub_1DD0DF18C();
  v33 = v32;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1DCB34060();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();

  OUTLINED_FUNCTION_11_61();
  v3[8] = v14;
  *v6 = 0u;
  *(v3 + 11) = 0u;
  OUTLINED_FUNCTION_33_24();
LABEL_17:
  sub_1DCF2AC40(v34, v35, v36, v37, v38, v39);
  OUTLINED_FUNCTION_48_21();
}

void sub_1DCF29C28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = type metadata accessor for SiriKitEventPayload(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();
  v13 = v2 + 9;
  if (*(v2 + 104) != 2)
  {
    v85.n128_u64[0] = 0;
    v85.n128_u64[1] = 0xE000000000000000;
    sub_1DD0DEC1C();
    v81 = v85;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000011);
    v85 = OUTLINED_FUNCTION_20_30();
    v86 = v22;
    v87 = v23;
    v88 = v24;
    v25 = *(v5 + 80);
    v26 = *(v5 + 88);
    OUTLINED_FUNCTION_36_35();
    sub_1DD0DF07C();
    v27 = v81.n128_i64[1];
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v28 = OUTLINED_FUNCTION_24_30();
    v30 = CommandFailure.init(errorCode:reason:)(v28, v29, v27);
    sub_1DCC7AE30();
    v31 = OUTLINED_FUNCTION_4_29();
    *v32 = v30;
    *&v34 = OUTLINED_FUNCTION_3_104(v31);
    *v13 = v34;
    *(v3 + 11) = v34;
    v35 = *(v3 + 104);
LABEL_18:
    v57 = OUTLINED_FUNCTION_39_28(v33);
    goto LABEL_19;
  }

  v75 = v2[9];
  v14 = v2[11];
  v15 = v2[10];
  v76 = v2[8];

  v17 = *(v5 + 80);
  v16 = *(v5 + 88);
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for IntentPromptAnswer();
  v19 = type metadata accessor for PromptResult();
  OUTLINED_FUNCTION_2(v19);
  (*(v20 + 16))(&v85, a2);
  if (!v88)
  {
    v73 = v14;
    v74 = v18;
    v81 = v85;
    v82 = v86;
    v83 = v87;
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DD0E07C0;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1DCB34060();
    *(v36 + 32) = v75;
    *(v36 + 40) = v15;

    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC();

    OUTLINED_FUNCTION_10_67();
    v37 = v83;
    v77 = 0;
    v78 = 0;
    v80 = 0;
    v79 = 0;
    OUTLINED_FUNCTION_29_30();
    v43 = sub_1DCF26FF4(v38, v39, v40, v41, v42);
    v44 = v2[8];
    v45 = v3[9];
    v72 = v15;
    v47 = v3[10];
    v46 = v3[11];
    v48 = v3[12];
    v3[8] = v43;
    *v13 = 0u;
    *(v3 + 11) = 0u;
    v49 = *(v3 + 104);
    *(v3 + 104) = 4;
    v50 = v37;
    sub_1DCF2AC40(v44, v45, v47, v46, v48, v49);
    if (qword_1EDE4F6A8 != -1)
    {
      swift_once();
    }

    type metadata accessor for SiriKitEvent(0);
    v84 = 0;
    *v12 = 0;
    *(v12 + 1) = v77;
    *(v12 + 1) = *(&v77 + 3);
    *(v12 + 1) = v50;
    *(v12 + 2) = 0;
    v51 = v75;
    *(v12 + 3) = 0;
    *(v12 + 4) = v51;
    v52 = v73;
    *(v12 + 5) = v72;
    *(v12 + 6) = v52;
    v12[56] = 0;
    swift_storeEnumTagMultiPayload();
    SiriKitEvent.__allocating_init(_:builder:)(v12, 0);
    sub_1DCB4C064();
  }

  if (v88 != 1)
  {
    if (*(&v86 + 1) | v87 | v85.n128_u64[0] | v86 | v85.n128_u64[1])
    {

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_13_66();
      sub_1DD0DD7EC();
      OUTLINED_FUNCTION_10_67();
      OUTLINED_FUNCTION_28_29();
LABEL_17:
      OUTLINED_FUNCTION_29_30();
      v68 = sub_1DCF26FF4(v63, v64, v65, v66, v67);
      *&v69 = OUTLINED_FUNCTION_3_104(v68);
      *v13 = v69;
      *(v2 + 11) = v69;
      v70 = *(v2 + 104);
      goto LABEL_18;
    }

    sub_1DD0DE6DC();
LABEL_16:
    OUTLINED_FUNCTION_13_66();
    sub_1DD0DD7EC();
    OUTLINED_FUNCTION_10_67();
    OUTLINED_FUNCTION_28_29();
    goto LABEL_17;
  }

  v21 = v85.n128_u64[0];
  if (v85.n128_u8[8] == 1)
  {

    sub_1DD0DE6DC();
    goto LABEL_16;
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v54 = sub_1DD0DF18C();
  v56 = v55;
  *(v53 + 56) = MEMORY[0x1E69E6158];
  *(v53 + 64) = sub_1DCB34060();
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();

  OUTLINED_FUNCTION_11_61();
  v3[8] = v21;
  *v13 = 0u;
  *(v3 + 11) = 0u;
  OUTLINED_FUNCTION_33_24();
LABEL_19:
  sub_1DCF2AC40(v57, v58, v59, v60, v61, v62);
  OUTLINED_FUNCTION_49();
}

void sub_1DCF2A26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v6 = v2 + 9;
  v5 = v2[9];
  if (*(v2 + 104) != 2)
  {
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000011);
    OUTLINED_FUNCTION_20_30();
    v13 = *(v4 + 80);
    v14 = *(v4 + 88);
    OUTLINED_FUNCTION_36_35();
    sub_1DD0DF07C();
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_24_30();
    v17 = CommandFailure.init(errorCode:reason:)(v15, v16, 0xE000000000000000);
    sub_1DCC7AE30();
    v18 = OUTLINED_FUNCTION_4_29();
    *v19 = v17;
    *&v20 = OUTLINED_FUNCTION_3_104(v18);
    *v6 = v20;
    v6[1] = v20;
    v21 = *(v3 + 104);
    v23 = OUTLINED_FUNCTION_39_28(v22);
    goto LABEL_8;
  }

  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = v2[10];
  v10 = v2 + 11;
  v11 = v2[11];
  v12 = *(a2 + 16);
  v63 = v3[8];

  if (!v12)
  {
    v62 = v11;
    if (v8 == 2)
    {
      v29 = v7;

      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();

      v31 = *(v4 + 80);
      v30 = *(v4 + 88);
      swift_getAssociatedTypeWitness();
      type metadata accessor for ResolutionResultProcessingResult();
      OUTLINED_FUNCTION_15_57();
      OUTLINED_FUNCTION_29_30();
      goto LABEL_32;
    }

    v44 = qword_1EDE4F908;
    v45 = v7;
    if (v8)
    {
      if (v44 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      sub_1DD0DE6DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      OUTLINED_FUNCTION_4_0();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1DD0E07C0;
      v47 = v63;
      v64 = INIntent.debugDescriptionLite.getter();
      v49 = v48;
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = sub_1DCB34060();
      *(v46 + 32) = v64;
      *(v46 + 40) = v49;
      sub_1DD0DD7EC();

      v50 = [v47 _type];
      v65 = v47;

      if (v50 != 2)
      {
        v59 = v3[4];
        LOBYTE(v59) = (*(*(v4 + 88) + 144))(v5, v9, *(v4 + 80));
        sub_1DD0DE6DC();
        sub_1DD0DD7EC();
        if (v59)
        {

          v23 = OUTLINED_FUNCTION_11_61();
          v3[8] = v7;
          v3[9] = v5;
          v3[10] = v9;
          v60 = 3;
          *v10 = 0;
          v3[12] = 0;
        }

        else
        {
          v61 = [objc_opt_self() needsValue];

          v23 = OUTLINED_FUNCTION_11_61();
          v3[8] = v7;
          v3[9] = v5;
          v60 = 1;
          v3[10] = v9;
          v3[11] = v62;
          v3[12] = v61;
        }

        v28 = *(v3 + 104);
        *(v3 + 104) = v60;
        goto LABEL_33;
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();

      v52 = *(v4 + 80);
      v51 = *(v4 + 88);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66();
    }

    else
    {
      if (v44 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      sub_1DD0DE70C();
      OUTLINED_FUNCTION_6_65();

      v54 = *(v4 + 80);
      v53 = *(v4 + 88);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66();
    }

LABEL_31:
    OUTLINED_FUNCTION_29_30();
LABEL_32:
    v55 = sub_1DCF26FF4(v32, v33, v34, v35, v36);
    *&v56 = OUTLINED_FUNCTION_3_104(v55);
    *v6 = v56;
    v6[1] = v56;
    v57 = *(v3 + 104);
    v23 = OUTLINED_FUNCTION_39_28(v58);
LABEL_33:

    goto LABEL_8;
  }

  if (v12 != 1)
  {

    if (v8 | v7)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_2_8();
        swift_once();
      }

      goto LABEL_16;
    }

    if (qword_1EDE4F908 == -1)
    {
LABEL_16:
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_65();
      v38 = *(v4 + 80);
      v37 = *(v4 + 88);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_9_66();
      OUTLINED_FUNCTION_15_57();
      goto LABEL_31;
    }

LABEL_26:
    OUTLINED_FUNCTION_2_8();
    swift_once();
    goto LABEL_16;
  }

  if (v7)
  {
    if (qword_1EDE4F908 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  v39 = v8;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  OUTLINED_FUNCTION_4_0();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v41 = sub_1DD0DF18C();
  v43 = v42;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1DCB34060();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();

  OUTLINED_FUNCTION_11_61();
  v3[8] = v8;
  *v6 = 0u;
  v6[1] = 0u;
  OUTLINED_FUNCTION_33_24();
LABEL_8:
  sub_1DCF2AC40(v23, v24, v25, v26, v27, v28);
}

uint64_t sub_1DCF2AA38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_1DCF2AC40(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_1DCB0E9D8(v0 + 112, &qword_1ECCA1BF0, &qword_1DD100F20);
  sub_1DCB0E9D8(v0 + 152, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(v0 + 192, &qword_1ECCA35F8, &qword_1DD0E97A0);
  v5 = *(v0 + 232);

  return v0;
}

uint64_t sub_1DCF2AADC()
{
  sub_1DCF2AA38();

  return swift_deallocClassInstance();
}

id sub_1DCF2AB28(id result, void *a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  switch(a6)
  {
    case 0:
      goto LABEL_11;
    case 1:
    case 2:
      v6 = result;

      goto LABEL_10;
    case 3:
      v7 = result;

    case 4:

      sub_1DD0DCF8C();
    case 5:
      a5 = a2;
      v8 = result;
LABEL_10:
      result = a5;
LABEL_11:

      goto LABEL_13;
    case 6:

LABEL_13:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF2AC40(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  switch(a6)
  {
    case 0:
      goto LABEL_11;
    case 1:
    case 2:

      goto LABEL_10;
    case 3:

      return;
    case 4:

      return;
    case 5:
      a5 = a2;

LABEL_10:
      a1 = a5;
LABEL_11:

      goto LABEL_13;
    case 6:

LABEL_13:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCF2AD40(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCF2AB28(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t sub_1DCF2ADB8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_1DCF2AB28(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  sub_1DCF2AC40(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t sub_1DCF2AE44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_1DCF2AC40(v5, v7, v6, v8, v9, v11);
  return a1;
}

uint64_t sub_1DCF2AE98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 41))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF2AED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for ConfirmedParameterDetails(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_1DCF2AFB8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCF2B00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *v3;
  sub_1DD0DCF8C();
}

void *sub_1DCF2B0BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCF293E4();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1DCF2B100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[11];
  v5 = v0[12];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCF05FD4;
  v8 = OUTLINED_FUNCTION_8_1();

  return sub_1DCF2838C(v8, v9, v10, v11, v4, v5);
}

uint64_t sub_1DCF2B1B4()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1DCF0A34C;
  OUTLINED_FUNCTION_8_1();

  return sub_1DCCC0004();
}

uint64_t Resolvable.init(defaultValue:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_64();
  OUTLINED_FUNCTION_80_8();
  type metadata accessor for ResolvableStorage();
  v12 = *(a2 - 8);
  (*(v12 + 16))(v3, a1, a2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, a2);
  v13 = sub_1DCF2B534(v3);
  result = (*(v12 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

void Resolvable.resolveAs(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Resolvable.CurrentValue();
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_179();
  v12 = *v2;
  OUTLINED_FUNCTION_112(v5);
  (*(v11 + 16))(v3, a1, v5);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  sub_1DD0DCF8C();
}

uint64_t Resolvable.init(type:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_64();
  OUTLINED_FUNCTION_4_11();
  type metadata accessor for ResolvableStorage();
  OUTLINED_FUNCTION_8_67();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  result = sub_1DCF2B534(v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DCF2B534(uint64_t a1)
{
  OUTLINED_FUNCTION_11_62();
  v2 = swift_allocObject();
  sub_1DCF2C36C(a1);
  return v2;
}

uint64_t Resolvable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_4_11();
  v6 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_179();
  v13 = *v2;
  sub_1DCF2CEDC();
  OUTLINED_FUNCTION_38_2(v3);
  if (v14)
  {
    v15 = *(v8 + 8);
    v16 = OUTLINED_FUNCTION_90_0();
    v17(v16);
  }

  else
  {
    OUTLINED_FUNCTION_112(v5);
    (*(v18 + 32))(a2, v3, v5);
  }

  OUTLINED_FUNCTION_8_67();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_1DCF2B674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v8 = *a1;
  v6 = type metadata accessor for Resolvable();
  return Resolvable.wrappedValue.getter(v6, a4);
}

void sub_1DCF2B6C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Resolvable.CurrentValue();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  (*(v11 + 16))(v12 - v10, a1);
  v12[1] = *a2;
  type metadata accessor for Resolvable();
  sub_1DD0DCF8C();
}

void sub_1DCF2B7C4()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = *(v3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - v18;
  OUTLINED_FUNCTION_4_11();
  v20 = type metadata accessor for Resolvable.CurrentValue();
  OUTLINED_FUNCTION_9(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v44 - v27;
  v29 = *v0;
  (*(v22 + 16))(&v44 - v27, v2, v20);
  OUTLINED_FUNCTION_38_2(v28);
  if (!v30)
  {
    (*(v5 + 32))(v8, v28, v4);
    sub_1DCF2D078();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v31 = sub_1DD0DD8FC();
  v32 = __swift_project_value_buffer(v31, qword_1EDE57E00);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v19, v32, v31);
  OUTLINED_FUNCTION_8_67();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1DCBCF6C8(v19, v16);
  OUTLINED_FUNCTION_38_2(v16);
  if (v30)
  {
    sub_1DCB185D0(v16, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v38 = sub_1DD0DD8EC();
    v39 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v40 = 136315650;
      v41 = sub_1DD0DEC3C();
      v43 = sub_1DCB10E9C(v41, v42, &v45);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2048;
      *(v40 + 14) = 64;
      *(v40 + 22) = 2080;
      *(v40 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD124050, &v45);
      _os_log_impl(&dword_1DCAFC000, v38, v39, "FatalError at %s:%lu - %s", v40, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v33 + 8))(v16, v31);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD124050);
}

uint64_t Resolvable.resolvedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  OUTLINED_FUNCTION_4_11();
  v6 = type metadata accessor for Resolvable.CurrentValue();
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v20 - v11;
  v20[1] = *v2;
  Resolvable.wrappedValue.getter(a1, v20 - v11);
  OUTLINED_FUNCTION_38_2(v12);
  if (!v13)
  {
    OUTLINED_FUNCTION_112(v5);
    (*(v14 + 32))(a2, v12, v5);
  }

  OUTLINED_FUNCTION_8_67();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

BOOL Resolvable.isSet.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_80_8();
  v5 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_179();
  v17 = *v1;
  Resolvable.resolvedValue.getter(a1, v2);
  v12 = __swift_getEnumTagSinglePayload(v2, 1, v4) != 1;
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_90_0();
  v15(v14);
  return v12;
}

void static Resolvable.CurrentValue<A>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v43 = *(v1 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v5);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v39 = &v39 - v10;
  v11 = type metadata accessor for Resolvable.CurrentValue();
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  OUTLINED_FUNCTION_4_11();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9(TupleTypeMetadata2);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v39 - v28;
  v30 = *(v27 + 48);
  v42 = v13;
  v31 = *(v13 + 16);
  v31(&v39 - v28, v4, v11);
  v31(&v29[v30], v44, v11);
  OUTLINED_FUNCTION_41_1(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_41_1(&v29[v30]);
    if (v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v31(v19, v29, v11);
    OUTLINED_FUNCTION_41_1(&v29[v30]);
    if (!v32)
    {
      v33 = v43;
      v34 = *(v43 + 32);
      v35 = v39;
      v34(v39, v19, v2);
      v36 = &v29[v30];
      v37 = v40;
      v34(v40, v36, v2);
      sub_1DD0DDF7C();
      v38 = *(v33 + 8);
      v38(v37, v2);
      v38(v35, v2);
LABEL_10:
      v22 = v42;
      goto LABEL_11;
    }

    (*(v43 + 8))(v19, v2);
  }

  v11 = TupleTypeMetadata2;
LABEL_11:
  (*(v22 + 8))(v29, v11);
  OUTLINED_FUNCTION_49();
}

void sub_1DCF2C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  static Resolvable.CurrentValue<A>.== infix(_:_:)();
}

uint64_t Resolvable.CurrentValue<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  OUTLINED_FUNCTION_38_2(v11);
  if (v14)
  {
    return MEMORY[0x1E12A7840](1);
  }

  (*(v3 + 32))(v7, v11, v2);
  sub_1DD0DDF1C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t Resolvable.CurrentValue<A>.hashValue.getter(uint64_t a1)
{
  sub_1DD0DF1DC();
  Resolvable.CurrentValue<A>.hash(into:)(v3, a1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCF2C318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DD0DF1DC();
  Resolvable.CurrentValue<A>.hash(into:)(v6, a2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCF2C36C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_66_0();
  v5 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_64();
  *(v1 + 56) = 0;
  sub_1DD0DECCC();
  swift_getTupleTypeMetadata2();
  sub_1DD0DE37C();
  *(v1 + 64) = sub_1DD0DDE9C();
  *(v1 + 72) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v1 + 24) = sub_1DCF2DB20;
  *(v1 + 32) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v1 + 40) = OUTLINED_FUNCTION_68_0;
  *(v1 + 48) = v13;
  v14 = *(v1 + 56);
  *(v1 + 56) = 0;

  sub_1DD0DDB6C();
  (*(v7 + 16))(v1, a1, v5);
  v15 = sub_1DD0DDB7C();
  (*(v7 + 8))(a1, v5);
  *(v2 + 16) = v15;
  return v2;
}

void sub_1DCF2C560()
{
  OUTLINED_FUNCTION_11_62();
  swift_allocObject();
  sub_1DCF2C5A8();
}

void sub_1DCF2C5A8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = *(*v0 + 80);
  v8 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_112(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - v13;
  *(v1 + 56) = 0;
  sub_1DD0DECCC();
  swift_getTupleTypeMetadata2();
  sub_1DD0DE37C();
  *(v1 + 64) = sub_1DD0DDE9C();
  *(v1 + 72) = 0;
  OUTLINED_FUNCTION_88_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v3;
  *(v1 + 24) = sub_1DCF2DB08;
  *(v1 + 32) = v15;
  OUTLINED_FUNCTION_88_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  *(v1 + 40) = sub_1DCF2DB10;
  *(v1 + 48) = v16;
  sub_1DD0DDB6C();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
  swift_retain_n();
  swift_retain_n();
  *(v1 + 16) = sub_1DD0DDB7C();
  v17 = v5[2];
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2C828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(*a1 + 80);
  v6 = sub_1DD0DE97C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1DCF2CEDC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, *(v4 + *MEMORY[0x1E69E6CE8] + 8));
  }

  else
  {
    swift_getAtKeyPath();
    __swift_storeEnumTagSinglePayload(a3, 0, 1, *(v4 + *MEMORY[0x1E69E6CE8] + 8));
    return (*(*(v5 - 8) + 8))(v11, v5);
  }
}

uint64_t sub_1DCF2C9E8(uint64_t a1, uint64_t *a2, void *a3)
{
  v25 = a1;
  v3 = *a2;
  v24 = *(*a3 + *MEMORY[0x1E69E6CE8] + 8);
  v23 = *(v24 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v22 - v5;
  v8 = *(v7 + 80);
  v9 = sub_1DD0DE97C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v22 - v14;
  v16 = *(v8 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  v20 = &v22 - v19;
  sub_1DCF2CEDC();
  if (__swift_getEnumTagSinglePayload(v15, 1, v8) != 1)
  {
    (*(v16 + 32))(v20, v15, v8);
    (*(v23 + 16))(v6, v25, v24);
    swift_setAtWritableKeyPath();
    sub_1DCF2D078();
  }

  (*(v10 + 8))(v15, v9);
  return 0;
}

void sub_1DCF2CC84(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = *(*a3 + *MEMORY[0x1E69E6CE8]);
  v7 = sub_1DD0DE97C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v19 - v11;
  v13 = *(v5 + 80);
  v14 = sub_1DD0DE97C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v17 = a2[2];
  (*(v8 + 16))(v12, a1, v7);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
  {
    v18 = *(v8 + 8);
    sub_1DD0DCF8C();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2CEDC()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  OUTLINED_FUNCTION_4_11();
  v3 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_179();
  if ((*(v0 + 72) & 1) == 0)
  {
    v14 = *(v0 + 24);
    v13 = *(v0 + 32);
    v15 = *(v1 + 32);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_8_67();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1DCF2D078()
{
  v1 = *(*v0 + 80);
  OUTLINED_FUNCTION_80_8();
  v2 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_179();
  *(v0 + 72) = 0;
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_1DD0DCF8C();
}

void sub_1DCF2D1E0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = *(*v0 + 80);
  OUTLINED_FUNCTION_66_0();
  v6 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v17 - v13;
  sub_1DCF2CEDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v5);
  (*(v8 + 8))(v14, v6);
  if (EnumTagSinglePayload == 1)
  {
    swift_beginAccess();
    v16 = *(v1 + 64);
    v17[2] = v3;
    OUTLINED_FUNCTION_66_0();
    sub_1DD0DECCC();
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_21_42(*MEMORY[0x1E69E6CE8]);
}

uint64_t sub_1DCF2D68C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCF2D804(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

void *sub_1DCF2DA9C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return v0;
}

uint64_t sub_1DCF2DADC()
{
  sub_1DCF2DA9C();
  OUTLINED_FUNCTION_11_62();

  return swift_deallocClassInstance();
}

void sub_1DCF2DB28()
{
  v3 = type metadata accessor for CommandFailure();
  v4 = sub_1DCF34FC8(&qword_1ECCAA6E0, type metadata accessor for CommandFailure);
  v2[0] = v0;
  v1 = *__swift_project_boxed_opaque_existential_1(v2, v3);
  sub_1DD0DCF8C();
}

void sub_1DCF2DBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 80);
  v8 = *(a5 + 88);
  v9 = type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(v9, v10, a3, a4, v11, v12);
}

void ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v14 - v10;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DD102AE0;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCF2DDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v18 - v14;
  v16 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a8;
  v17[5] = 0;
  v17[6] = a3;
  v17[7] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2DF00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEA99C0();
}

uint64_t sub_1DCF2DFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEA88E4();
}

uint64_t sub_1DCF2E040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAE4F4();
}

uint64_t sub_1DCF2E0D8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF2DF00();
}

uint64_t sub_1DCF2E15C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_65_0(v1);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCF2E1EC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_65_0(v1);
  OUTLINED_FUNCTION_27_32();
  OUTLINED_FUNCTION_121();

  return sub_1DCC100AC();
}

uint64_t sub_1DCF2E27C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCEA99C0();
}

uint64_t sub_1DCF2E3A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEA88E4();
}

uint64_t sub_1DCF2E4C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAE4F4();
}

uint64_t sub_1DCF2E5E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)();
}

uint64_t ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25_1();
  v9 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_3_105();

  return v9();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_25_1();
  v9 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_3_105();

  return v9();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_25_1();
  v9 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_3_105();

  return v9();
}

uint64_t dispatch thunk of ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)()
{
  OUTLINED_FUNCTION_125();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v0 + 48);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return v18(v11, v9, v7, v5, v3, v1);
}

uint64_t sub_1DCF2EBB8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DCF2EC74(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 152);
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = v4[40];
  if (v7 == 7)
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    OUTLINED_FUNCTION_49();

    sub_1DCB8E3C0(v14, v15);
  }

  else if (v7 == 8)
  {
    *a1 = v5;
    *(a1 + 8) = v6 & 1 | 0x40;
    OUTLINED_FUNCTION_49();

    v13 = v11;
  }

  else
  {
    if (v7 == 9)
    {
      v9 = *(v4 + 3);
      v8 = *(v4 + 4);
      v10 = *(v4 + 2);
      if (!(v8 | v9 | v10 | v5 | v6))
      {
        *a1 = 0;
        *(a1 + 8) = 0x80;
        OUTLINED_FUNCTION_49();
        return;
      }
    }

    else
    {
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      v8 = *(v4 + 4);
    }

    OUTLINED_FUNCTION_79_16(v3);
    OUTLINED_FUNCTION_0_106();
    swift_getWitnessTable();
    v17 = OUTLINED_FUNCTION_34();
    *v18 = v5;
    *(v18 + 8) = v6;
    *(v18 + 40) = v7 | 0x60;
    *(v18 + 16) = v10;
    *(v18 + 24) = v9;
    *(v18 + 32) = v8;
    *a1 = v17;
    *(a1 + 8) = 64;
    OUTLINED_FUNCTION_49();

    sub_1DCB3C2E8(v19, v20, v21, v22, v23, v24);
  }
}

void sub_1DCF2EE28()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCF2EEB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = v3[21];
  v5 = v3[20];
  v6 = v3[19];
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 176) = v9;

  v11 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCF2EFD4()
{
  if (v0[22])
  {
    sub_1DCF34488(*(v0[9] + *(*v0[9] + 144)), v0[22]);
  }

  v1 = v0[11];
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v11 = v0[12];
  v10 = v0[13];

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[23] = v12;
  *v12 = v13;
  v12[1] = sub_1DCF2F254;
  v14 = v0[8];
  v15 = v0[9];
  OUTLINED_FUNCTION_33_5();

  return sub_1DCB8E6F8(v16, v17, v18);
}

uint64_t sub_1DCF2F254()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 184);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF2F354()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  v7 = OUTLINED_FUNCTION_52_27();
  sub_1DCB150B8(v7, v8, v9, v10, v11, 1);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_152();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

void sub_1DCF2F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCBCF434;

  return sub_1DCEB79C8(a1, a2, a3, a4, a5);
}

void sub_1DCF2F588(void *a1)
{
  v2 = a1[1];
  v3 = (v1 + *(*v1 + 152));
  if (*(v3 + 40) == 3)
  {
    v4 = *v3;
    v5 = v3[1];
    switch(*a1 >> 62)
    {
      case 1:
        v10 = *v3;
        sub_1DD0DCF8C();
      case 2:
        v8 = *v3;
        sub_1DD0DCF8C();
      case 3:
        v9 = *v3;
        sub_1DD0DCF8C();
      default:
        v6 = *v3;
        sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF2FDE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[40];
  v3 = v1[39];
  v4 = v1[38];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF2FEFC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  *(v0 + 63) = 6;
  v3 = [v1 typeName];
  sub_1DD0DDFBC();
  v5 = v4;

  *(v0 + 328) = v5;
  *(v0 + 105) = 45;
  sub_1DCF2DB28();
}

uint64_t sub_1DCF30000()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[43];
  v3 = v1[42];
  v4 = v1[41];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF3011C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[26];
  sub_1DCF349A0(v0[37]);

  sub_1DCB0E9D8((v0 + 20), &qword_1ECCA1F70, &qword_1DD0E2BD0);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_65_15();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCF301BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 352);
  *v2 = *v0;
  *(v1 + 360) = v5;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF302A8()
{
  OUTLINED_FUNCTION_90();
  v13 = v0;
  v1 = v0[45];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[28];
  v8 = v5;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  v12 = 2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF30398()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[48];
  v3 = v1[47];
  v4 = v1[46];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF304B4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_47_22();
  *(v1 + 61) = v3;
  v4 = [v2 typeName];
  sub_1DD0DDFBC();
  v6 = v5;

  *(v0 + 392) = v6;
  *(v0 + 62) = 23;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 400) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_30(v7);
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_152();

  return sub_1DCF31534(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DCF30588()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 400);
  v3 = *(v1 + 392);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF30688()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_59_21();

  sub_1DCB0E9D8(v1 + 112, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_65_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF30710()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[53];
  v3 = v1[52];
  v4 = v1[51];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF3082C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_47_22();
  *(v1 + 59) = v3;
  v4 = [v2 typeName];
  sub_1DD0DDFBC();
  v6 = v5;

  *(v0 + 432) = v6;
  *(v0 + 60) = 28;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 440) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_30(v7);
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_152();

  return sub_1DCF31534(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DCF30900()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 440);
  v3 = *(v1 + 432);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF30A00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_59_21();

  sub_1DCB0E9D8(v1 + 64, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_65_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF30A88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[58];
  v3 = v1[57];
  v4 = v1[56];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF30BA4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_47_22();
  *(v1 + 57) = v3;
  v4 = [v2 typeName];
  sub_1DD0DDFBC();
  v6 = v5;

  *(v0 + 472) = v6;
  *(v0 + 58) = 27;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 480) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_28_30(v7);
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_152();

  return sub_1DCF31534(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DCF30C78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 480);
  v3 = *(v1 + 472);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF30D78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_59_21();

  sub_1DCB0E9D8(v1 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_65_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF30E00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF30E50, 0, 0);
}

void sub_1DCF30E50()
{
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(**(v0 + 24) + 96);
  type metadata accessor for CommandFailure();
  OUTLINED_FUNCTION_19_43();
  sub_1DCF34FC8(v4, v5);
  *(v0 + 64) = OUTLINED_FUNCTION_34();
  *v6 = v2;
  v8 = v1 + 80;
  v7 = *(v1 + 80);
  v9 = *(*(v8 + 8) + 48);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF30FF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCF31114, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v9();
  }
}

uint64_t sub_1DCF31114()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1DCF31170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF31198, 0, 0);
}

uint64_t sub_1DCF31198()
{
  OUTLINED_FUNCTION_39();
  v1 = (v0[16] + *(*v0[16] + 136));
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[17] = v4;
  *v4 = v5;
  v4[1] = sub_1DCF31268;
  v6 = v0[14];
  v7 = v0[15];

  return sub_1DCB63BBC((v0 + 7), v6, v7, v3, v2);
}

uint64_t sub_1DCF31268()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_1DCF314A4;
  }

  else
  {
    v9 = sub_1DCF31368;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1DCF31368()
{
  OUTLINED_FUNCTION_125();
  v12 = v1;
  sub_1DCAFF9E8((v1 + 56), v1 + 16);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_57_17(v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Error dialog successfully published.", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  v6 = *(v1 + 128);
  v8 = *(v1 + 96);
  v7 = *(v1 + 104);

  v10[0] = v7;
  v10[1] = 1;
  memset(&v10[2], 0, 24);
  v11 = 8;
  v9 = v7;
  sub_1DCB3B54C(v10);
}

void sub_1DCF314A4()
{
  OUTLINED_FUNCTION_125();
  v5 = v0;
  v1 = v0[16];
  v2 = v0[12];
  v4[0] = v0[18];
  v3 = OUTLINED_FUNCTION_56_21();
  sub_1DCB3B54C(v4);
}

uint64_t sub_1DCF31534(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 176) = a1;
  v11 = type metadata accessor for SiriKitEventPayload(0);
  *(v8 + 200) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 57) = *a2;
  *(v8 + 58) = *a6;

  return MEMORY[0x1EEE6DFA0](sub_1DCF315E4, 0, 0);
}

uint64_t sub_1DCF315E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  sub_1DCB099BC(*(v14 + 176), v14 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (*(v14 + 56) == 1)
  {
    sub_1DCB0E9D8(v14 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
LABEL_10:
    v27 = *(v14 + 208);

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_76();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  sub_1DCAFF9E8((v14 + 16), v14 + 64);
  v15 = *(v14 + 88);
  __swift_project_boxed_opaque_existential_1((v14 + 64), v15);
  if ((sub_1DCB651D0(v15) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 64));
    goto LABEL_10;
  }

  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v36 = *(v14 + 58);
  v16 = *(v14 + 57);
  v18 = *(v14 + 200);
  v17 = *(v14 + 208);
  v19 = *(v14 + 184);
  v20 = *(v14 + 192);
  *(v14 + 160) = 0u;
  *(v14 + 144) = 0u;
  v21 = *(v14 + 88);
  v22 = *(v14 + 96);
  __swift_project_boxed_opaque_existential_1((v14 + 64), v21);
  (*(v22 + 8))(v21, v22);
  type metadata accessor for SiriKitEvent(0);
  *v17 = v16;
  *(v17 + 8) = 0x54746E6572727543;
  *(v17 + 16) = 0xEB000000006B7361;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 24) = 0;
  sub_1DCB099BC(v14 + 144, v17 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  sub_1DCB099BC(v14 + 104, v17 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v17 + 136) = 0u;
  *(v17 + 152) = 0u;
  *(v17 + 168) = v19;
  *(v17 + 176) = v20;
  *(v17 + 184) = v36;
  swift_storeEnumTagMultiPayload();

  *(v14 + 216) = SiriKitEvent.__allocating_init(_:builder:)(v17, 0);
  v23 = swift_task_alloc();
  *(v14 + 224) = v23;
  *v23 = v14;
  OUTLINED_FUNCTION_31_0(v23);
  OUTLINED_FUNCTION_76();

  return sub_1DCB649AC(v24);
}

uint64_t sub_1DCF3187C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *(v4 + 216);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v2 + 104, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 144, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF319A8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  v1 = *(v0 + 208);

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCF31A48(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_1DCF31A88(&v2);
}

void sub_1DCF31A88(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  v5 = v2 + *(v3 + 152);
  if (v5[40] == 2)
  {
    if (*(a1 + 9))
    {
      if (*(a1 + 9) == 1)
      {
        v6 = *v5;
        sub_1DD0DCF8C();
      }

      if (v4 | *(a1 + 8))
      {
        sub_1DCB3C2E8(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), 2);
        sub_1DD0DCF8C();
      }

      v10 = *v5;
      sub_1DD0DCF8C();
    }

    if (v4)
    {
      v8 = *v5;
      sub_1DD0DCF8C();
    }

    v9 = *v5;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF32030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 88);
  v10 = *(v9 + 24);
  v11 = *(*a2 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCB4AD3C;

  return v15(a1, a3, a4, v11, v9);
}

uint64_t sub_1DCF321B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 88);
  v10 = *(v9 + 32);
  v11 = *(*a2 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a3, a4, v11, v9);
}

uint64_t sub_1DCF32338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 88);
  v10 = *(v9 + 40);
  v11 = *(*a2 + 80);
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a3, a4, v11, v9);
}

void sub_1DCF324BC(void *a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4 + *(*v4 + 152);
  if (*(v5 + 40) == 4)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    v9 = *(v5 + 24);
    switch(a4)
    {
      case 1:
        v19 = *v5;
        sub_1DD0DCF8C();
      case 2:
        v17 = *v5;
        sub_1DD0DCF8C();
      case 3:
        v18 = *v5;
        sub_1DD0DCF8C();
      default:
        sub_1DCB3C2E8(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), 4);
        sub_1DCF349BC(a1, a2, a3, 0);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v12 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v12, qword_1EDE57E00);
        v13 = sub_1DD0DD8EC();
        v14 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_1DCAFC000, v13, v14, "ResolveConfirmFlow notified that the requested resolution was applied. Transitioning to the next round of processIntent calls", v15, 2u);
          MEMORY[0x1E12A8390](v15, -1, -1);
        }

        sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCF32960(__int128 *a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = v1;
  sub_1DCF329A0(&v2);
}

void sub_1DCF329A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = (v1 + *(*v1 + 152));
  if (*(v4 + 40) == 6)
  {
    v9 = a1[1];
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCF330EC(uint64_t a1)
{
  v2 = *v1;
  v3 = (v1 + *(*v1 + 152));
  if (*(v3 + 40) == 5)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = *(v2 + 80);
    v8 = *(*(v2 + 88) + 8);
    swift_getAssociatedTypeWitness();
    v9 = type metadata accessor for ComposedRequestFlowResult();
    (*(*(v9 - 8) + 16))(&v11, a1, v9);
    if (v12)
    {
      if (v12 == 1)
      {
        sub_1DD0DCF8C();
      }

      sub_1DD0DCF8C();
    }

    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF3393C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  v8 = sub_1DCB08B14(a1);
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v11 = MEMORY[0x1E69E7CC0];
  while (v8 != v9)
  {
    if (!v10)
    {
      if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v7 + 8 * v9 + 32);
        sub_1DD0DCF8C();
      }

      goto LABEL_60;
    }

    v14 = MEMORY[0x1E12A72C0](v9, v7);
    if (__OFADD__(v9, 1))
    {
      goto LABEL_59;
    }

    v13 = v14[4] == a2 && v14[5] == a3;
    if (v13 || (sub_1DD0DF0AC() & 1) != 0)
    {
      v9 = v14[2];

      goto LABEL_16;
    }

    ++v9;
  }

  v9 = v11;
LABEL_16:
  v15 = *(v9 + 16);
  if (v15 <= a4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCE19B64(0, v15 + 1, 1, v9);
      v9 = v40;
    }

    v20 = *(v9 + 16);
    do
    {
      v21 = *(v9 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        sub_1DCE19B64(v21 > 1, v20 + 1, 1, v9);
        v9 = v23;
      }

      *(v9 + 16) = v22;
      *(v9 + v20++ + 32) = 0;
    }

    while (v22 - 1 < a4);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_61;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
LABEL_19:
    v41 = v10;
    v16 = *(v9 + 16);
    if (v16 <= a4)
    {
      goto LABEL_63;
    }

    *(v9 + a4 + 32) = 2;

    v17 = 0;
    v10 = 0x5445534E55;
    while (1)
    {
      if (v17 >= *(v9 + 16))
      {
        goto LABEL_58;
      }

      a4 = v17 + 1;
      switch(*(v9 + v17 + 32))
      {
        case 2:

          goto LABEL_25;
        default:
          v18 = sub_1DD0DF0AC();

          if ((v18 & 1) == 0)
          {
            v19 = 1;
LABEL_35:
            v24 = v41;
            a4 = v7 & 0xFFFFFFFFFFFFFF8;
            v25 = 0;
            v43 = MEMORY[0x1E69E7CC0];
            while (2)
            {
              if (v8 == v25)
              {

                v7 = type metadata accessor for SiriKitParameterMetadata();
                swift_allocObject();
                SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(a2, a3, v19, v9);
                MEMORY[0x1E12A6920]();
                if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_51;
                }

                goto LABEL_64;
              }

              if (v24)
              {
                v10 = MEMORY[0x1E12A72C0](v25, v7);
                if (__OFADD__(v25, 1))
                {
                  __break(1u);
                  goto LABEL_57;
                }

                v27 = *(v10 + 32) == a2 && *(v10 + 40) == a3;
                if (v27 || (sub_1DD0DF0AC() & 1) != 0)
                {
                }

                else
                {
                  sub_1DD0DECDC();
                  v28 = *(v43 + 16);
                  sub_1DD0DED1C();
                  v24 = v41;
                  sub_1DD0DED2C();
                  sub_1DD0DECEC();
                  a4 = v7 & 0xFFFFFFFFFFFFFF8;
                }

                ++v25;
                continue;
              }

              break;
            }

            if (v25 < *(a4 + 16))
            {
              v26 = *(v7 + 8 * v25 + 32);
              sub_1DD0DCF8C();
            }

LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            sub_1DCF34460(v9);
            v9 = v39;
            if ((a4 & 0x8000000000000000) != 0)
            {
              goto LABEL_62;
            }

            goto LABEL_19;
          }

LABEL_25:
          v17 = a4;
          if (v16 == a4)
          {
            v19 = 0;
            goto LABEL_35;
          }

          break;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1DD0DE33C();
LABEL_51:
  sub_1DD0DE3AC();
  v29 = v43;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v30 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v30, qword_1EDE57E00);

  v31 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x1E12A6960](v29, v7);
    v37 = sub_1DCB10E9C(v35, v36, &v42);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1DCAFC000, v31, v32, "Updated ParameterMetadata to %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E12A8390](v34, -1, -1);
    MEMORY[0x1E12A8390](v33, -1, -1);
  }

  return v29;
}

unint64_t sub_1DCF33E94(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  switch(*(v1 + 40) >> 5)
  {
    case 1:
      sub_1DD0DEC1C();
      v5 = ".deviceVersionIncompatible: ";
      v6 = 0xD00000000000001ALL;
      goto LABEL_7;
    case 2:
      sub_1DD0DEC1C();
      v5 = ".unexpectedIntentType";
      v6 = 0xD00000000000001CLL;
      goto LABEL_7;
    case 3:
      v8 = v1[4];
      v14 = *(v1 + 1);
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD000000000000012, 0x80000001DD11BF90);
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      type metadata accessor for ResolveConfirmFlow.State();
      swift_getWitnessTable();
      sub_1DD0DF08C();
      return 0;
    case 4:
      return 0xD000000000000015;
    default:
      sub_1DD0DEC1C();
      v5 = ".appDoesNotSupportIntent: ";
      v6 = 0xD000000000000016;
LABEL_7:
      MEMORY[0x1E12A6780](v6, v5 | 0x8000000000000000);
      sub_1DD0DD1FC();
      sub_1DCF34FC8(&qword_1EDE46330, MEMORY[0x1E69CE208]);
      v11 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v11);

      MEMORY[0x1E12A6780](0x6570797420666F20, 0xE900000000000020);
      v12 = *(a1 + 16);
      v13 = *(*(a1 + 24) + 8);
      swift_getAssociatedTypeWitness();
      swift_getWitnessTable();
      sub_1DD0DF08C();
      return 0;
  }
}

uint64_t sub_1DCF341D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 41))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DCF34210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCF34260(uint64_t a1)
{
  if (*(a1 + 40) <= 8u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1DCF34278(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 9;
  }

  *(result + 40) = a2;
  return result;
}

void sub_1DCF3429C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF3435C(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF343D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DD0DEB3C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1DD0DEC7C();
}

void sub_1DCF34488(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for RCHProtectedAppCheckClient();
  v7 = &off_1F586F018;
  v5 = a1;
  v4 = *(a2 + 32);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF3473C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_95();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_65_0(v3);

  return sub_1DCF32338(v5, v6, v7, v1);
}

uint64_t sub_1DCF347D0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_95();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_65_0(v3);

  return sub_1DCF321B4(v5, v6, v7, v1);
}

uint64_t sub_1DCF34864()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_95();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_65_0(v3);

  return sub_1DCF32030(v5, v6, v7, v1);
}

uint64_t sub_1DCF348F8()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_95();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_65_0(v4);
  OUTLINED_FUNCTION_152();

  return sub_1DCF30E00(v6, v7, v8, v9, v10);
}

unint64_t sub_1DCF34990(unint64_t result)
{
  if (result >= 4)
  {
    sub_1DD0DCF8C();
  }

  return result;
}

unint64_t sub_1DCF349A0(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

id sub_1DCF349BC(id result, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
    return result;
  }

  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1DCF349F0()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_31_0(v5);
  OUTLINED_FUNCTION_3_105();

  return sub_1DCF2F448(v6, v7, v8, v9, v10);
}

id sub_1DCF34AAC(id result, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  switch(a6 >> 5)
  {
    case 0:
    case 1:
    case 2:
      sub_1DD0DCF8C();
    case 3:
      v6 = a6 & 0x1F;

      result = sub_1DCB3C2E8(result, a2, a3, a4, a5, v6);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCF34B74(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  switch(a6 >> 5)
  {
    case 0:
    case 1:
    case 2:

      break;
    case 3:
      v6 = a6 & 0x1F;

      sub_1DCB150B8(a1, a2, a3, a4, a5, v6);
      break;
    default:
      return;
  }
}

uint64_t sub_1DCF34C1C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = *(a2 + 40);
  a4(*a2, v6, v7, v8, v9, v10);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return a1;
}

uint64_t *sub_1DCF34CC8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = *(a2 + 40);
  a4(*a2, v8, v9, v10, v11, v12);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v11;
  v18 = *(a1 + 40);
  *(a1 + 40) = v12;
  a5(v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t *sub_1DCF34D7C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v13;
  a1[4] = v6;
  v14 = *(a1 + 40);
  *(a1 + 40) = v7;
  a4(v8, v10, v9, v11, v12, v14);
  return a1;
}

uint64_t sub_1DCF34DD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 41))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 1) & 8 | (*(a1 + 40) >> 5)) ^ 0xF;
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

uint64_t sub_1DCF34E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 16 * (((-a2 & 8) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF34E8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DCF34EBC(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 40) & 0xF | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    v2 = 0x80;
  }

  *(result + 40) = v2;
  return result;
}

uint64_t sub_1DCF34F00(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCB8E3C0(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_1DCB151A8(v5, v6);
  return a1;
}

uint64_t sub_1DCF34F54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCB151A8(v4, v5);
  return a1;
}

uint64_t sub_1DCF34FC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ResolveConfirmFlowFrame.__allocating_init(delegate:app:intent:parameterMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_90_0();
  ResolveConfirmFlowFrame.init(delegate:app:intent:parameterMetadata:)(v7, v8, a3, a4);
  return v6;
}

uint64_t ResolveConfirmFlowFrameResult.parameterResolutionResult.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void *ResolveConfirmFlowFrameResult.intentResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ResolveConfirmFlowFrameResult.childIntent.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ResolveConfirmFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

id sub_1DCF352A0@<X0>(void *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1DCF3A878(v2, v3, v4, v5, v6);
}

void sub_1DCF352BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v8;
  v1[10] = v2;
  sub_1DCF3A6B8(v4, v3, v5, v6, v7);
}

void *ResolveConfirmFlowFrame.init(delegate:app:intent:parameterMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 6841202;
  v5[3] = 0xE300000000000000;
  bzero(v5 + 11, 0xA0uLL);
  v5[4] = a1;
  v5[5] = a2;
  if (!sub_1DCB08B14(a4))
  {
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  v5[6] = a3;
  v5[7] = a4;
  v5[9] = 0;
  v5[10] = 0;
  v5[8] = 0;
  OUTLINED_FUNCTION_18_45();
  OUTLINED_FUNCTION_10_9();
  sub_1DCF3A668(v11, (v5 + 11), &qword_1ECCA8AB0, &qword_1DD0E23E0);
  swift_endAccess();
  OUTLINED_FUNCTION_18_45();
  OUTLINED_FUNCTION_10_9();
  sub_1DCF3A668(v11, (v5 + 16), &qword_1ECCA35F8, &qword_1DD0E97A0);
  swift_endAccess();
  OUTLINED_FUNCTION_18_45();
  OUTLINED_FUNCTION_10_9();
  sub_1DCF3A668(v11, (v5 + 21), &qword_1ECCA1BF0, &qword_1DD100F20);
  swift_endAccess();
  OUTLINED_FUNCTION_18_45();
  OUTLINED_FUNCTION_10_9();
  sub_1DCF3A668(v11, (v5 + 26), &qword_1ECCA98A0, &qword_1DD100F28);
  swift_endAccess();
  return v5;
}

uint64_t sub_1DCF35594(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = *MEMORY[0x1E699F738];
  v12 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v12);
  (*(v13 + 104))(v10, v11);
  swift_storeEnumTagMultiPayload();
  a3(v10);
  return sub_1DCB0E9D8(v10, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCF35694(void *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v68 = a1;
  OUTLINED_FUNCTION_66();
  v8 = v7;
  v9 = sub_1DD0DD85C();
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  v18 = qword_1EDE57E18;
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC();
  sub_1DCF352A0(&v70);
  v19 = v70;
  if (!(v73 >> 61))
  {
    v69 = v71;
    v65 = v9;
    v66 = v17;
    v63 = a3;
    v20 = *(v8 + 80);
    v21 = *(v8 + 88);
    v22 = *(v21 + 296);
    v60 = *(v3 + 32);
    v61 = a2;
    v67 = v20;
    v59 = v21;
    v23 = v22(v70);
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v24 = OUTLINED_FUNCTION_32_6();
    *(v24 + 16) = xmmword_1DD0E07C0;
    v25 = sub_1DCB34060();
    v62 = v23;
    v26 = 1163219540;
    if ((v23 & 1) == 0)
    {
      v26 = 0x45534C4146;
    }

    v27 = 0xE500000000000000;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = v25;
    if (v23)
    {
      v27 = 0xE400000000000000;
    }

    *(v24 + 32) = v26;
    *(v24 + 40) = v27;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC();

    v28 = *(v3 + 40);
    sub_1DCF376D4(v19);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v64 = v12;
    v29 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v29, qword_1EDE57E00);
    v30 = v69;

    v31 = v19;
    v32 = sub_1DD0DD8EC();
    v33 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = type metadata accessor for SiriKitParameterMetadata();
      v36 = MEMORY[0x1E12A69A0](v30, v35);
      sub_1DCB10E9C(v36, v37, &v70);
      OUTLINED_FUNCTION_33_4();

      *(v34 + 4) = v31;
      *(v34 + 12) = 2080;
      v38 = INIntent.debugDescriptionLite.getter();
      sub_1DCB10E9C(v38, v39, &v70);
      OUTLINED_FUNCTION_33_4();

      *(v34 + 14) = v31;
      _os_log_impl(&dword_1DCAFC000, v32, v33, "Executing Resolve and Confirm with the following:  parameterMetadata=%s, intent=%s", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v53 = v31;
    v40 = v18;
    sub_1DD0DD82C();
    sub_1DD0DE7FC();
    sub_1DD0DD81C();
    (*(v59 + 104))(&v70, v28, v31, v67, v59);
    v42 = v70;
    v41 = v71;
    v60 = v70;
    v44 = v72;
    v43 = v73;
    v57 = v72;
    v58 = v71;
    v46 = v74;
    v45 = v75;
    v55 = v74;
    v56 = v73;
    sub_1DD0DE7EC();
    sub_1DD0DD81C();
    v47 = v68[4];
    v54 = v68[3];
    v68 = __swift_project_boxed_opaque_existential_1(v68, v54);
    v70 = v42;
    v71 = v41;
    v72 = v44;
    v73 = v43;
    v74 = v46;
    v75 = v45;
    OUTLINED_FUNCTION_1_1();
    v48 = swift_allocObject();
    v49 = v53;
    v48[2] = v4;
    v48[3] = v49;
    v50 = v61;
    v48[4] = v69;
    v48[5] = v50;
    v48[6] = v63;
    v61 = *(v47 + 24);
    swift_getAssociatedTypeWitness();

    v51 = v49;
    sub_1DD0DCF8C();
  }

  sub_1DCF3A6B8(v70, v71, v72, v73, v74);
  return a2(0, 0);
}

uint64_t sub_1DCF35C64(uint64_t a1, uint64_t *a2, void *a3, void *a4, void (*a5)(void *, uint64_t), void *a6)
{
  v72[1] = a6;
  v73 = a5;
  v72[0] = a4;
  v8 = *a2;
  v9 = type metadata accessor for ResolveConfirmProcessingResult();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = (v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (v72 - v21);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  sub_1DCF3B180(a1, v22, &qword_1ECCAABD0, &qword_1DD0EA240);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCF3B1D0(v22, v17);
    sub_1DCF3B234(v17, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = *v14;
    if (!EnumCaseMultiPayload)
    {
      v43 = v14[1];
      v45 = *(v8 + 80);
      v44 = *(v8 + 88);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v47 = sub_1DCB3BACC(AssociatedTypeWitness, AssociatedTypeWitness);
      if (v47)
      {
        v48 = v47;
        sub_1DD0DE6DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1DD0E07C0;
        v50 = INIntent.debugDescriptionLite.getter();
        v52 = v51;
        *(v49 + 56) = MEMORY[0x1E69E6158];
        *(v49 + 64) = sub_1DCB34060();
        *(v49 + 32) = v50;
        *(v49 + 40) = v52;
        sub_1DD0DD7EC();

        v74 = v48;
        *v75 = v43;
        *&v75[8] = v72[0];
        *&v75[16] = xmmword_1DD102E70;

        v53 = v48;
        sub_1DD0DCF8C();
      }

      type metadata accessor for CommandFailure();
      swift_allocObject();
      v66 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000033, 0x80000001DD124930);
      sub_1DCC7AE30();
      v67 = swift_allocError();
      *v68 = v66;
      v73(v67, 1);

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload != 1)
    {

      v54 = v14[2];

      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAA6E8, &unk_1DD102D48) + 64);
      type metadata accessor for CommandFailure();
      swift_allocObject();
      v56 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000039, 0x80000001DD1248F0);
      sub_1DCC7AE30();
      v57 = swift_allocError();
      *v58 = v56;
      v73(v57, 1);

      sub_1DCF3B298(v17, type metadata accessor for ResolveConfirmProcessingResult);
      v59 = type metadata accessor for ParameterClause;
      v60 = v14 + v55;
      return sub_1DCF3B298(v60, v59);
    }

    v27 = v14[1];
    v28 = v14[2];

    v30 = *(v8 + 80);
    v29 = *(v8 + 88);
    v31 = swift_getAssociatedTypeWitness();
    v32 = sub_1DCB3BACC(v31, v31);
    if (v32)
    {
      v33 = v32;
      v34 = swift_getAssociatedTypeWitness();
      v35 = sub_1DCB3BB68(v34, v34);
      if (v35)
      {
        v36 = v35;
        sub_1DD0DE6DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1DD0E07C0;
        v38 = INIntent.debugDescriptionLite.getter();
        v72[0] = v28;
        v40 = v39;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1DCB34060();
        *(v37 + 32) = v38;
        *(v37 + 40) = v40;
        sub_1DD0DD7EC();

        v74 = v33;
        *v75 = v36;
        *&v75[8] = xmmword_1DD102E60;
        *&v75[24] = 0;
        v41 = v33;
        v42 = v36;
        sub_1DCF352BC(&v74);
        v73(0, 0);

LABEL_23:
        v59 = type metadata accessor for ResolveConfirmProcessingResult;
        v60 = v17;
        return sub_1DCF3B298(v60, v59);
      }
    }

    type metadata accessor for CommandFailure();
    swift_allocObject();
    v69 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000033, 0x80000001DD124930);
    sub_1DCC7AE30();
    v70 = swift_allocError();
    *v71 = v69;
    v73(v70, 1);

    goto LABEL_23;
  }

  v23 = *v22;
  switch(*v22)
  {
    case 0:
      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      v74 = a3;
      *v75 = v72[0];
      *&v75[8] = xmmword_1DD102E80;
      *&v75[24] = 0;
      v24 = a3;

      goto LABEL_18;
    case 1:
      sub_1DD0DE6EC();
      sub_1DD0DD7EC();
      v74 = a3;
      v61 = xmmword_1DD0E1E40;
      goto LABEL_17;
    case 2:
      sub_1DD0DE6EC();
      sub_1DD0DD7EC();
      v74 = a3;
      v61 = xmmword_1DD0E3FF0;
      goto LABEL_17;
    case 3:
      sub_1DD0DE6EC();
      sub_1DD0DD7EC();
      v74 = a3;
      v61 = xmmword_1DD0E5A80;
LABEL_17:
      *v75 = v61;
      *&v75[16] = xmmword_1DD0F6EA0;
      v62 = a3;
LABEL_18:
      sub_1DCF352BC(&v74);
      result = (v73)(0, 0);
      break;
    default:
      sub_1DD0DE6EC();
      sub_1DD0DD7EC();
      type metadata accessor for CommandFailure();
      sub_1DCC7AE30();
      v64 = swift_allocError();
      *v65 = v23;
      *v75 = 0uLL;
      v74 = v64;
      *&v75[16] = xmmword_1DD102E90;
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCF36534(void *a1, void (*a2)(void *), uint64_t a3)
{
  v4 = v3;
  v72 = a3;
  v71 = a2;
  v67 = a1;
  OUTLINED_FUNCTION_66();
  v69 = v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v6 = OUTLINED_FUNCTION_2(v70);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v60[-v10];
  v74 = sub_1DD0DD85C();
  v12 = OUTLINED_FUNCTION_9(v74);
  v73 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  v19 = qword_1EDE57E18;
  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v20 = OUTLINED_FUNCTION_32_6();
  v68 = xmmword_1DD0E07C0;
  *(v20 + 16) = xmmword_1DD0E07C0;
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1DD0DEDBC();
  v21 = v81;
  v22 = v82;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1DCB34060();
  *(v20 + 64) = v23;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  sub_1DD0DD7EC();

  v24 = v19;
  sub_1DD0DD82C();
  sub_1DD0DE7FC();
  sub_1DD0DD81C();
  sub_1DCF352A0(&v81);
  v25 = v81;
  v26 = v82;
  v27 = v83;
  v28 = v84;
  v29 = v85;
  v30 = v18;
  switch(v84 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_42_1();
      *&v68 = v29;
      v44 = *(v42 + 80);
      v43 = *(v42 + 88);
      v46 = v45;
      v48 = v47;
      type metadata accessor for ResolutionResultProcessingFlowFrame();
      v65 = v27;
      v66 = v30;
      v49 = *(v4 + 32);
      v61 = *(v4 + 40);
      memset(v80, 0, sizeof(v80));
      v79 = 0;
      v77 = 0u;
      v78 = 0u;
      v76 = 0;
      memset(v75, 0, sizeof(v75));
      sub_1DCF27188(v49, v46, v48, v61, v80, &v77, v75, 0);
      v69 = v50;
      *v80 = v50;
      sub_1DCF37134();
    case 2uLL:
      v62 = v81;
      v64 = v82;
      v65 = v83;
      sub_1DCF385AC();
    case 3uLL:
    case 5uLL:
      v31 = v81;
      v32 = v82;
      type metadata accessor for SiriKitFlowFrameInput();
      sub_1DD0DB32C();
      OUTLINED_FUNCTION_10_68();
      swift_storeEnumTagMultiPayload();
      break;
    case 4uLL:
      v51 = v81;
      v64 = v82;
      *&v68 = v85;
      v63 = v84;
      switch(v83)
      {
        case 1:
          OUTLINED_FUNCTION_6_68();
          OUTLINED_FUNCTION_92_2();
          v59 = swift_allocObject();
          OUTLINED_FUNCTION_3_106(v59);
          OUTLINED_FUNCTION_5_93(v18[4]);
          OUTLINED_FUNCTION_8_69();
        case 2:
          OUTLINED_FUNCTION_6_68();
          OUTLINED_FUNCTION_92_2();
          v57 = swift_allocObject();
          OUTLINED_FUNCTION_3_106(v57);
          OUTLINED_FUNCTION_5_93(v18[5]);
          OUTLINED_FUNCTION_8_69();
        case 3:
          OUTLINED_FUNCTION_6_68();
          OUTLINED_FUNCTION_92_2();
          v58 = swift_allocObject();
          OUTLINED_FUNCTION_3_106(v58);
          OUTLINED_FUNCTION_5_93(v18[6]);
          OUTLINED_FUNCTION_8_69();
        default:
          sub_1DD0DE6DC();
          OUTLINED_FUNCTION_6_1();
          sub_1DD0DD7EC();
          v52 = *(v4 + 40);
          v62 = v51;
          v65 = v27;
          sub_1DCF391C4();
      }

    case 6uLL:
      *v11 = v81;
      v31 = v25;
      v32 = v26;
      swift_storeEnumTagMultiPayload();
      v53 = v31;
      break;
    default:
      sub_1DCF3A6B8(v81, v82, v83, v84, v85);
      *v80 = 0;
      *&v80[8] = 0xE000000000000000;
      sub_1DD0DEC1C();
      v75[0] = *v80;
      OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_37_33();
      sub_1DCF352A0(v80);
      OUTLINED_FUNCTION_46_24();
      OUTLINED_FUNCTION_42_1();
      v34 = *(v33 + 80);
      v35 = *(v33 + 88);
      type metadata accessor for ResolveConfirmFlowFrame.State();
      v67 = v24;
      sub_1DD0DF07C();
      sub_1DCF3A6B8(v77, *(&v77 + 1), v78, *(&v78 + 1), v79);
      v36 = v75[0];
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_64_17();
      v37 = CommandFailure.init(errorCode:reason:)(-1, v36, *(&v36 + 1));
      sub_1DD0DE6EC();
      v66 = v18;
      v38 = OUTLINED_FUNCTION_32_6();
      *(v38 + 16) = v68;
      *&v75[0] = 0;
      *(&v75[0] + 1) = 0xE000000000000000;
      sub_1DCF352A0(v80);
      OUTLINED_FUNCTION_46_24();
      sub_1DD0DF07C();
      sub_1DCF3A6B8(v77, *(&v77 + 1), v78, *(&v78 + 1), v79);
      v39 = v75[0];
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = v23;
      *(v38 + 32) = v39;
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC();

      sub_1DCC7AE30();
      v40 = OUTLINED_FUNCTION_34();
      *v41 = v37;
      *&v80[16] = 0;
      *v80 = v40;
      *&v80[24] = xmmword_1DD102E90;
      sub_1DD0DCF8C();
  }

  v71(v11);
  sub_1DCF3A6B8(v31, v32, v27, v28, v29);
  sub_1DCB0E9D8(v11, &qword_1ECCA9BF0, &qword_1DD0EA250);
  v54 = v74;
  v55 = v73;
  sub_1DD0DE7EC();
  sub_1DD0DD81C();
  return (*(v55 + 8))(v18, v54);
}

void sub_1DCF371DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  sub_1DCF38C00();
}

uint64_t sub_1DCF37280(void *a1, char a2, uint64_t a3, void (*a4)(void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v18[-1] - v12);
  if (a2)
  {
    v18[1] = 0;
    v18[2] = 0;
    v18[0] = a1;
    v19 = xmmword_1DD102E90;
    v14 = a1;
    sub_1DCF352BC(v18);
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v15 = a1;
  }

  else
  {
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
  }

  a4(v13);
  return sub_1DCB0E9D8(v13, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

double sub_1DCF373AC@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_41_25();
  v3 = v2;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();
  sub_1DCF352A0(v83);
  v5 = v83[0];
  v6 = v83[1];
  v7 = v83[2];
  v8 = v84;
  v9 = v85;
  switch(v84 >> 61)
  {
    case 3uLL:
      *a1 = v83[0];
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = v8 & 0x1FF;
      *(a1 + 32) = v9;
      goto LABEL_8;
    case 4uLL:
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_13_66();
      sub_1DD0DD7EC();
      v12 = v5;
      OUTLINED_FUNCTION_19_44();
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = v5;
      *&result = 256;
      *(a1 + 24) = xmmword_1DD102EA0;
      goto LABEL_8;
    case 5uLL:
      v10 = v83[0];
      v11 = v6;
      OUTLINED_FUNCTION_19_44();
      *a1 = v5;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = v6;
LABEL_8:
      *(a1 + 40) = 0;
      break;
    case 6uLL:
      *a1 = v83[0];
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 1;
      break;
    default:
      OUTLINED_FUNCTION_19_44();
      *&v78 = 0;
      *(&v78 + 1) = 0xE000000000000000;
      sub_1DD0DEC1C();
      v81 = 0;
      v82 = 0xE000000000000000;
      OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_37_33();
      v13 = sub_1DCF352A0(&v78);
      OUTLINED_FUNCTION_42_27(v13, v14, v15, v16, v17, v18, v19, v20, v56, v60, v64, v68, v72, v76, v78);
      v21 = *(v3 + 80);
      v22 = *(v3 + 88);
      type metadata accessor for ResolveConfirmFlowFrame.State();
      v23 = sub_1DD0DF07C();
      OUTLINED_FUNCTION_13_67(v23, v24, v25, v26, v27, v28, v29, v30, v57, v61, v65, v69, v73);
      v31 = v82;
      type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_64_17();
      v32 = OUTLINED_FUNCTION_24_30();
      v34 = CommandFailure.init(errorCode:reason:)(v32, v33, v31);
      sub_1DD0DE6EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v35 = OUTLINED_FUNCTION_32_6();
      *(v35 + 16) = xmmword_1DD0E07C0;
      v81 = 0;
      v82 = 0xE000000000000000;
      v36 = sub_1DCF352A0(&v78);
      OUTLINED_FUNCTION_42_27(v36, v37, v38, v39, v40, v41, v42, v43, v58, v62, v66, v70, v74, v77, v78);
      v44 = sub_1DD0DF07C();
      OUTLINED_FUNCTION_13_67(v44, v45, v46, v47, v48, v49, v50, v51, v59, v63, v67, v71, v75);
      v52 = v81;
      v53 = v82;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1DCB34060();
      *(v35 + 32) = v52;
      *(v35 + 40) = v53;
      OUTLINED_FUNCTION_13_66();
      sub_1DD0DD7EC();

      sub_1DCC7AE30();
      OUTLINED_FUNCTION_90_0();
      v54 = OUTLINED_FUNCTION_34();
      *v55 = v34;
      v79 = 0;
      v78 = v54;
      v80 = xmmword_1DD102E90;
      sub_1DD0DCF8C();
  }

  return result;
}

void sub_1DCF376D4(void *a1)
{
  v2 = [a1 _metadata];
  if (v2 && (v3 = v2, v4 = [v2 launchId], v3, v4) || (v5 = objc_msgSend(a1, sel__metadata)) != 0 && (v6 = v5, v4 = objc_msgSend(v5, sel_systemExtensionBundleId), v6, v4))
  {

    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    sub_1DD0DE6DC();

    sub_1DD0DD7EC();
    return;
  }

  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();
  v7 = [objc_allocWithZone(MEMORY[0x1E696EAE8]) init];
  if (!v7)
  {
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v11 = CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000024, 0x80000001DD124140);
    sub_1DCC7AE30();
    OUTLINED_FUNCTION_34();
    *v12 = v11;
    sub_1DD0DCF8C();
  }

  v17 = v7;
  sub_1DD0DD1DC();
  if (v8)
  {
    v9 = sub_1DD0DDF8C();

    v10 = &selRef_setSystemExtensionBundleId_;
LABEL_18:
    [v17 *v10];

    goto LABEL_19;
  }

  v13 = sub_1DD0DD1BC();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_1DD0DEC1C();

    MEMORY[0x1E12A6780](v15, v16);

    v9 = sub_1DD0DDF8C();

    v10 = &selRef_setLaunchId_;
    goto LABEL_18;
  }

LABEL_19:
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_13_66();
  sub_1DD0DD7EC();
  [a1 _setMetadata_];
}

void sub_1DCF37A38(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  LODWORD(v6) = *(a2 + 24);
  v7 = sub_1DCB08B14(a1);
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v8)
    {
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v8 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v2 + 8 * v8 + 32);
        sub_1DD0DCF8C();
      }

LABEL_64:
      __break(1u);
LABEL_65:
      sub_1DD0DE33C();
      goto LABEL_57;
    }

    v12 = MEMORY[0x1E12A72C0](v8, v2);
    if (__OFADD__(v8, 1))
    {
      goto LABEL_63;
    }

    v11 = v12[4] == v3 && v12[5] == v4;
    if (v11 || (sub_1DD0DF0AC() & 1) != 0)
    {
      break;
    }

    ++v8;
  }

  v9 = v12[2];

LABEL_15:
  v13 = *(v9 + 16);
  if (v5 >= v13)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

  while (1)
  {
    v14 = &unk_1EDE57000;
    if (v6 != 3)
    {
      break;
    }

    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      v38 = v37;
      swift_once();
      v14 = v38;
    }

    v13 = v14[451];
    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DD0E32B0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1DCB34060();
    *(v6 + 32) = v3;
    *(v6 + 40) = v4;
    v16 = MEMORY[0x1E69E65A8];
    *(v6 + 96) = MEMORY[0x1E69E6530];
    *(v6 + 104) = v16;
    *(v6 + 64) = v15;
    *(v6 + 72) = v5;

    sub_1DD0DD7EC();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1DCF34460(v9);
      v9 = v39;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_21:
        if (v5 < *(v9 + 16))
        {
          LOBYTE(v6) = 0;
          goto LABEL_32;
        }

LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_68:
    sub_1DCE19B64(0, v13 + 1, 1, v9);
    v9 = v40;
LABEL_24:
    v17 = *(v9 + 16);
    do
    {
      v18 = *(v9 + 24);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        sub_1DCE19B64(v18 > 1, v17 + 1, 1, v9);
        v9 = v20;
      }

      *(v9 + 16) = v19;
      *(v9 + v17++ + 32) = 0;
    }

    while (v5 > v19 - 1);
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  sub_1DCF34460(v9);
  v9 = v41;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

LABEL_31:
  if (v5 >= *(v9 + 16))
  {
    goto LABEL_72;
  }

LABEL_32:
  *(v9 + 32 + v5) = v6;
  v21 = *(v9 + 16);

  if (v21)
  {
    v22 = 0;
    while (v22 < *(v9 + 16))
    {
      v23 = v22 + 1;
      switch(*(v9 + 32 + v22))
      {
        case 2:

          goto LABEL_38;
        default:
          v24 = sub_1DD0DF0AC();

          if ((v24 & 1) == 0)
          {
            v25 = 1;
            goto LABEL_41;
          }

LABEL_38:
          v22 = v23;
          if (v21 == v23)
          {
            goto LABEL_39;
          }

          break;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_39:
  v25 = 0;
LABEL_41:
  v26 = 0;
  v42 = MEMORY[0x1E69E7CC0];
  v27 = v2 & 0xC000000000000001;
  while (v7 != v26)
  {
    if (!v27)
    {
      if (v26 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v2 + 8 * v26 + 32);
        sub_1DD0DCF8C();
      }

      goto LABEL_61;
    }

    v31 = MEMORY[0x1E12A72C0](v26, v2);
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v29 = *(v31 + 32) == v3 && *(v31 + 40) == v4;
    if (v29 || (sub_1DD0DF0AC() & 1) != 0)
    {
    }

    else
    {
      sub_1DD0DECDC();
      v30 = *(v42 + 16);
      sub_1DD0DED1C();
      v27 = v2 & 0xC000000000000001;
      sub_1DD0DED2C();
      sub_1DD0DECEC();
    }

    ++v26;
  }

  v2 = type metadata accessor for SiriKitParameterMetadata();
  swift_allocObject();
  v32 = OUTLINED_FUNCTION_33_4();
  SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v32, v4, v25, v9);
  MEMORY[0x1E12A6920]();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_65;
  }

LABEL_57:
  sub_1DD0DE3AC();
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v33 = OUTLINED_FUNCTION_32_6();
  *(v33 + 16) = xmmword_1DD0E07C0;
  v34 = MEMORY[0x1E12A6960](v42, v2);
  v36 = v35;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  *(v33 + 64) = sub_1DCB34060();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  sub_1DD0DD7EC();
}

void sub_1DCF3802C(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_41_25();
  v7 = v6;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_20_32();
  v8 = sub_1DD0DD7EC();
  OUTLINED_FUNCTION_34_35(v8, v9, v10, v11, v12, v13, v14, v15);
  v16 = *&v133[1];
  if (*(&v133[1] + 1) >> 61 != 1)
  {
    sub_1DCF3A6B8(*&v133[0], *(&v133[0] + 1), *&v133[1], *(&v133[1] + 1), *&v133[2]);
    OUTLINED_FUNCTION_53_19();
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_37_33();
    v34 = OUTLINED_FUNCTION_34_35(v26, v27, v28, v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_9_68(v34, v35, v36, v37, v38, v39, v40, v41, v108, v112, v116, v120, v124, v128, *&v133[0], *(&v133[0] + 1), v133[0]);
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    type metadata accessor for ResolveConfirmFlowFrame.State();
    v44 = OUTLINED_FUNCTION_24_31();
    OUTLINED_FUNCTION_13_67(v44, v45, v46, v47, v48, v49, v50, v51, v109, v113, v117, v121, v125);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v52 = OUTLINED_FUNCTION_24_30();
    v54 = CommandFailure.init(errorCode:reason:)(v52, v53, v131);
    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v55 = OUTLINED_FUNCTION_32_6();
    *(v55 + 16) = xmmword_1DD0E07C0;
    v63 = OUTLINED_FUNCTION_34_35(v55, v56, v57, v58, v59, v60, v61, v62);
    OUTLINED_FUNCTION_9_68(v63, v64, v65, v66, v67, v68, v69, v70, v110, v114, v118, v122, v126, v129, 0, v3, v133[0]);
    v71 = OUTLINED_FUNCTION_24_31();
    OUTLINED_FUNCTION_13_67(v71, v72, v73, v74, v75, v76, v77, v78, v111, v115, v119, v123, v127);
    *(v55 + 56) = MEMORY[0x1E69E6158];
    *(v55 + 64) = sub_1DCB34060();
    *(v55 + 32) = v130;
    *(v55 + 40) = v132;
    OUTLINED_FUNCTION_20_32();
    sub_1DD0DD7EC();

    sub_1DCC7AE30();
    v79 = OUTLINED_FUNCTION_34();
    *v80 = v54;
    *&v133[1] = 0;
    v133[0] = v79;
    *(&v133[1] + 8) = xmmword_1DD102E90;
    goto LABEL_7;
  }

  if (a3)
  {

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v17 = OUTLINED_FUNCTION_32_6();
    *(v17 + 16) = xmmword_1DD0E07C0;
    v108 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1DCB34060();
    *(v17 + 32) = 0;
    *(v17 + 40) = 0xE000000000000000;
    OUTLINED_FUNCTION_20_32();
    sub_1DD0DD7EC();

    *&v133[1] = 0;
    v133[0] = a2;
    *(&v133[1] + 8) = xmmword_1DD102E90;
    v18 = a2;
LABEL_8:
    OUTLINED_FUNCTION_54_17(v18, v19, v20, v21, v22, v23, v24, v25, v108);

    return;
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_20_32();
  sub_1DD0DD7EC();
  v81 = *(a2 + 64);
  if (!v81)
  {
    if (*(a2 + 24) != 1)
    {
      v93 = *(a2 + 40);
      if (v93)
      {
        v94 = *(a2 + 56);
        v95 = *(a2 + 48);
        *&v133[0] = *(a2 + 32);
        *(&v133[0] + 1) = v93;
        *&v133[1] = v95;
        BYTE8(v133[1]) = v94;
        sub_1DCF37A38(v16, v133);
        v97 = v96;

        sub_1DD0DE6DC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v98 = OUTLINED_FUNCTION_32_6();
        *(v98 + 16) = xmmword_1DD0E07C0;
        v99 = type metadata accessor for SiriKitParameterMetadata();
        v100 = MEMORY[0x1E12A69A0](v97, v99);
        v102 = v101;
        *(v98 + 56) = MEMORY[0x1E69E6158];
        *(v98 + 64) = sub_1DCB34060();
        *(v98 + 32) = v100;
        *(v98 + 40) = v102;
        OUTLINED_FUNCTION_20_32();
        sub_1DD0DD7EC();

        v16 = v97;
      }

      v103 = *(a2 + 16);
      sub_1DD0DE6DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v104 = OUTLINED_FUNCTION_32_6();
      *(v104 + 16) = xmmword_1DD0E07C0;
      v105 = INIntent.debugDescriptionLite.getter();
      v107 = v106;
      *(v104 + 56) = MEMORY[0x1E69E6158];
      *(v104 + 64) = sub_1DCB34060();
      *(v104 + 32) = v105;
      *(v104 + 40) = v107;
      sub_1DD0DD7EC();

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      *&v133[0] = v103;
      *(&v133[0] + 1) = v16;
      memset(&v133[1], 0, 24);
      v18 = v103;
      goto LABEL_8;
    }

    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_20_32();
    sub_1DD0DD7EC();
    *&v133[0] = *(a2 + 16);
    v133[1] = xmmword_1DD102EC0;
    *&v133[2] = 0;
    v92 = *&v133[0];
LABEL_7:
    sub_1DD0DCF8C();
  }

  v82 = v81;

  *&v133[0] = *(a2 + 16);
  *(&v133[0] + 1) = v81;
  v133[1] = xmmword_1DD102EB0;
  *&v133[2] = 0;
  v83 = v82;
  v84 = *&v133[0];
  OUTLINED_FUNCTION_54_17(v84, v85, v86, v87, v88, v89, v90, v91);
}

void sub_1DCF385AC()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  sub_1DCF352E0(&__src);
  if (v11)
  {
    sub_1DCAFF9E8(&__src, v19);
    sub_1DCF3532C(&__src);
    if (v11)
    {
      sub_1DCAFF9E8(&__src, v16);
      sub_1DCF35378(&__src);
      if (v11)
      {
        sub_1DCAFF9E8(&__src, v15);
        sub_1DCF353C4(&v12);
        if (v13)
        {
          sub_1DCAFF9E8(&v12, v14);
          v5 = *(v0 + 32);
          sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
          sub_1DCB10E5C(0, &qword_1EDE461E0, 0x1E696E8A0);
          v6 = *(v2 + 80);
          v8 = *(v2 + 88);
          sub_1DCB83BC0(v5, v15, v16, v19, v14);
        }

        sub_1DCB82888();
      }

      if (qword_1EDE4A110 != -1)
      {
        OUTLINED_FUNCTION_20_1();
      }

      sub_1DCB4BA5C();
    }

    if (qword_1EDE4F6A8 == -1)
    {
      v4 = qword_1EDE57DF8;
      v17 = type metadata accessor for RefreshableSiriKitEventSending();
      v18 = &off_1F5873940;
      v16[0] = v4;
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_0();
    v7 = qword_1EDE57DF8;
    v17 = type metadata accessor for RefreshableSiriKitEventSending();
    v18 = &off_1F5873940;
    v16[0] = v7;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v3 = qword_1EDE46630;
  sub_1DCB4E718(__dst);
  __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  v19[3] = type metadata accessor for RefreshableDeviceState();
  v19[4] = &protocol witness table for RefreshableDeviceState;
  v19[0] = v3;
  sub_1DD0DCF8C();
}

void sub_1DCF38C00()
{
  OUTLINED_FUNCTION_41_25();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = v4;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  sub_1DCF352A0(&v86);
  v6 = *(&v86 + 1);
  v7 = v86;
  if (*&v87[8] >> 61 != 2)
  {
    sub_1DCF3A6B8(v86, *(&v86 + 1), *v87, *&v87[8], *&v87[16]);
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    sub_1DD0DEC1C();
    v82 = v86;
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_37_33();
    v17 = sub_1DCF352A0(&v86);
    OUTLINED_FUNCTION_39_29(v17, v18, v19, v20, v21, v22, v23, v24, v52, v54, v57, v59, v61, v63, v65, v68, v71, v74, v77, v80, v82, *(&v82 + 1), v86);
    v25 = *(v5 + 80);
    v26 = *(v5 + 88);
    type metadata accessor for ResolveConfirmFlowFrame.State();
    sub_1DD0DF07C();
    sub_1DCF3A6B8(v66, v69, v72, v75, v78);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v27 = OUTLINED_FUNCTION_24_30();
    v29 = CommandFailure.init(errorCode:reason:)(v27, v28, v84);
    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v30 = OUTLINED_FUNCTION_32_6();
    *(v30 + 16) = xmmword_1DD0E07C0;
    v31 = sub_1DCF352A0(&v86);
    OUTLINED_FUNCTION_39_29(v31, v32, v33, v34, v35, v36, v37, v38, v53, v56, v58, v60, v62, v64, v66, v69, v72, v75, v78, v81, 0, 0xE000000000000000, v86);
    sub_1DD0DF07C();
    sub_1DCF3A6B8(v67, v70, v73, v76, v79);
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1DCB34060();
    *(v30 + 32) = v83;
    *(v30 + 40) = v85;
    sub_1DD0DD7EC();

    sub_1DCC7AE30();
    v39 = OUTLINED_FUNCTION_34();
    *v40 = v29;
    *v87 = 0;
    v86 = v39;
    *&v87[8] = xmmword_1DD102E90;
    sub_1DD0DCF8C();
  }

  if (!v3)
  {
    if (v1 != 2)
    {
      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      v46 = 0x6000000000000103;
      v86 = v2;
      if ((v1 & 1) == 0)
      {
        v46 = 0x6000000000000002;
      }

      *v87 = v6;
      *&v87[8] = v46;
      *&v87[16] = 0;
      sub_1DCBB12F4(v1, v2, 0);
      goto LABEL_31;
    }

    if (qword_1EDE4F900 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v3 != 1)
  {
    if (!(v1 | v2))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v47 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v47, qword_1EDE57E00);
      v48 = sub_1DD0DD8EC();
      v49 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v48, v49))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v50, v51, "ResolveConfirmFlow confirm was cancelled");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_29;
    }

    if (qword_1EDE4F900 == -1)
    {
LABEL_18:
      v41 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v41, qword_1EDE57E00);
      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v42, v43))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v44, v45, "ResolveConfirmFlow received no answer for confirm. Trying again...");
        OUTLINED_FUNCTION_80();
      }

      *&v86 = v7;
      *(&v86 + 1) = v6;
      *v87 = xmmword_1DD102E60;
      *&v87[16] = 0;
      goto LABEL_30;
    }

LABEL_15:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_18;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = v1;
  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6EC();
  sub_1DCBB1310(v1, v2, 1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v86 = v55;
    *v12 = 136315138;
    swift_getErrorValue();
    v13 = sub_1DD0DF18C();
    v15 = sub_1DCB10E9C(v13, v14, &v86);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1DCAFC000, v10, v11, "ResolveConfirmFlow confirm resulted in an error:%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  if (v2)
  {
LABEL_29:
    v86 = v7;
    *v87 = v6;
    *&v87[8] = xmmword_1DD102ED0;
LABEL_30:
    v7 = v7;
LABEL_31:
    v6 = v6;
    goto LABEL_32;
  }

  *v87 = 0;
  v86 = v1;
  *&v87[8] = xmmword_1DD102E90;
  v16 = v1;
LABEL_32:
  sub_1DCF352BC(&v86);
}

void sub_1DCF391C4()
{
  v1 = v0;
  OUTLINED_FUNCTION_66();
  v3 = v2;
  sub_1DCF352E0(&v29);
  if (v30)
  {
    sub_1DCAFF9E8(&v29, v32);
    sub_1DCF3532C(&v27);
    if (v28)
    {
      sub_1DCAFF9E8(&v27, &v29);
      sub_1DCF35378(&v25);
      if (v26)
      {
        sub_1DCAFF9E8(&v25, &v27);
        sub_1DCF353C4(&v22);
        if (v23)
        {
          sub_1DCAFF9E8(&v22, &v25);
          v6 = v33;
          v7 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v8 = (v7[12])(v6, v7);
          type metadata accessor for ViewFactory();
          v9 = swift_allocObject();
          *(v9 + 16) = v8 & 1;
          sub_1DCB17CA0(&v27, &v22);
          sub_1DCB17CA0(v32, v21);
          sub_1DCB17CA0(&v29, &v18);
          v10 = type metadata accessor for TCCResponseGenerator();
          swift_allocObject();
          v11 = sub_1DCB84380(v9, &v22, v21, &v18);
          v12 = *(v3 + 80);
          v13 = *(v3 + 88);
          type metadata accessor for RCHDelegateToRequestTCCAcceptanceFlowStrategyAdapter();
          OUTLINED_FUNCTION_11_63();
          swift_getWitnessTable();
          OUTLINED_FUNCTION_22_3();
          type metadata accessor for ServerHandledTCCFlow();
          v14 = *(v1 + 32);
          v23 = v10;
          v24 = &off_1F5876728;
          *&v22 = v11;
          sub_1DCB87714(v14, &v22);
          sub_1DCB17CA0(&v29, &v22);
          sub_1DCB17CA0(v32, v21);
          sub_1DCB17CA0(&v25, &v18);
          v15 = type metadata accessor for OutputPublisherAsyncAdapter();
          OUTLINED_FUNCTION_1_1();
          v16 = swift_allocObject();
          sub_1DCAFF9E8(&v18, v16 + 16);
          v19 = v15;
          v20 = &protocol witness table for OutputPublisherAsyncAdapter;
          *&v18 = v16;
          swift_unknownObjectRetain();
          sub_1DD0DCF8C();
        }

        sub_1DCB82888();
      }

      if (qword_1EDE4A110 != -1)
      {
        OUTLINED_FUNCTION_20_1();
      }

      sub_1DCB4BA5C();
    }

    if (qword_1EDE4F6A8 == -1)
    {
      v5 = qword_1EDE57DF8;
      v30 = type metadata accessor for RefreshableSiriKitEventSending();
      v31 = &off_1F5873940;
      *&v29 = v5;
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_0();
    v17 = qword_1EDE57DF8;
    v30 = type metadata accessor for RefreshableSiriKitEventSending();
    v31 = &off_1F5873940;
    *&v29 = v17;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v4 = qword_1EDE46630;
  sub_1DCB4E718(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v33 = type metadata accessor for RefreshableDeviceState();
  v34 = &protocol witness table for RefreshableDeviceState;
  v32[0] = v4;
  sub_1DD0DCF8C();
}

void sub_1DCF39660()
{
  OUTLINED_FUNCTION_41_25();
  v2 = v1;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_2_8();
    swift_once();
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_20_32();
  v3 = sub_1DD0DD7EC();
  OUTLINED_FUNCTION_34_35(v3, v4, v5, v6, v7, v8, v9, v10);
  if (v102 >> 61 != 4 || v101 != 0)
  {
    sub_1DCF3A6B8(v99, *(&v99 + 1), v101, v102, v103);
    OUTLINED_FUNCTION_53_19();
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_37_33();
    v20 = OUTLINED_FUNCTION_34_35(v12, v13, v14, v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_9_68(v20, v21, v22, v23, v24, v25, v26, v27, v74, v78, v82, v86, v90, v94, v99, *(&v99 + 1), v99);
    v28 = *(v2 + 80);
    v29 = *(v2 + 88);
    type metadata accessor for ResolveConfirmFlowFrame.State();
    v30 = OUTLINED_FUNCTION_24_31();
    OUTLINED_FUNCTION_13_67(v30, v31, v32, v33, v34, v35, v36, v37, v75, v79, v83, v87, v91);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17();
    v38 = OUTLINED_FUNCTION_24_30();
    v40 = CommandFailure.init(errorCode:reason:)(v38, v39, v97);
    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v41 = OUTLINED_FUNCTION_32_6();
    *(v41 + 16) = xmmword_1DD0E07C0;
    v49 = OUTLINED_FUNCTION_34_35(v41, v42, v43, v44, v45, v46, v47, v48);
    OUTLINED_FUNCTION_9_68(v49, v50, v51, v52, v53, v54, v55, v56, v76, v80, v84, v88, v92, v95, 0, v0, v100);
    v57 = OUTLINED_FUNCTION_24_31();
    OUTLINED_FUNCTION_13_67(v57, v58, v59, v60, v61, v62, v63, v64, v77, v81, v85, v89, v93);
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1DCB34060();
    *(v41 + 32) = v96;
    *(v41 + 40) = v98;
    OUTLINED_FUNCTION_20_32();
    sub_1DD0DD7EC();

    sub_1DCC7AE30();
    OUTLINED_FUNCTION_34();
    *v65 = v40;
    sub_1DD0DCF8C();
  }

  v66 = v99;
  OUTLINED_FUNCTION_54_17(v66, v67, v68, v69, v70, v71, v72, v73);
}

uint64_t ResolveConfirmFlowFrame.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  sub_1DCF3A6B8(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_1DCB0E9D8(v0 + 88, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB0E9D8(v0 + 128, &qword_1ECCA35F8, &qword_1DD0E97A0);
  sub_1DCB0E9D8(v0 + 168, &qword_1ECCA1BF0, &qword_1DD100F20);
  sub_1DCB0E9D8(v0 + 208, &qword_1ECCA98A0, &qword_1DD100F28);
  return v0;
}

uint64_t ResolveConfirmFlowFrame.__deallocating_deinit()
{
  ResolveConfirmFlowFrame.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCF399AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *v3;
  sub_1DD0DCF8C();
}

void sub_1DCF39AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v10 = *(*v5 + 80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v19 - v13;
  v16 = *(v15 + 88);
  type metadata accessor for AsyncAdapter();
  swift_getWitnessTable();
  type metadata accessor for RouteConfirmIntentResponseFlow();
  (*(v11 + 16))(v14, a1, v10);
  v24 = sub_1DCEE1C30(v14);
  sub_1DCB17CA0(a3, &v21);
  v17 = type metadata accessor for OutputPublisherAsyncAdapter();
  v18 = swift_allocObject();
  sub_1DCAFF9E8(&v21, v18 + 16);
  v22 = v17;
  v23 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v21 = v18;
  sub_1DCB3C564(&v24, a2, &v21, a4, v20);
}

uint64_t sub_1DCF39CA0(void (*a1)(char *, double))
{
  v3 = *v1;
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = v1[2];
  v9 = *(v3 + 80);
  v10 = *(v3 + 88);
  type metadata accessor for AsyncAdapter();
  swift_getWitnessTable();
  type metadata accessor for RouteConfirmIntentResponseFlow();
  swift_getWitnessTable();
  v11 = static ExecuteResponse.complete<A>(next:)();
  a1(v8, v11);
  return sub_1DCF3B298(v8, type metadata accessor for ExecuteResponse);
}

uint64_t sub_1DCF39DEC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF39E34, 0, 0);
}

uint64_t sub_1DCF39E34()
{
  v1 = v0[5];
  v2 = v0[3];
  v0[2] = *(v0[4] + 16);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for AsyncAdapter();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_3();
  type metadata accessor for RouteConfirmIntentResponseFlow();
  swift_getWitnessTable();
  static ExecuteResponse.complete<A>(next:)();
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF39F10()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1DCF39F30()
{
  sub_1DCF39F10();

  return swift_deallocClassInstance();
}

void sub_1DCF39F60(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF3A024(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB22EC8;

  return sub_1DCF39DEC(a1);
}

uint64_t sub_1DCF3A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF3A10C, 0, 0);
}

uint64_t sub_1DCF3A10C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v6 = v0;
  v6[1] = sub_1DCF3A220;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCF3A220()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCCA7CE0, 0, 0);
  }

  else
  {
    v5 = *(v2 + 56);

    OUTLINED_FUNCTION_29();

    return v6();
  }
}

uint64_t sub_1DCF3A34C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = v7[12];
  (*(v9 + 16))(&v18 - v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);
  (*(v7[11] + 24))(a3, v18, v19, sub_1DCF3B0E8, v16, v7[10]);
}

uint64_t sub_1DCF3A504(uint64_t a1)
{
  sub_1DCF3B180(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCF3A5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB22EC8;

  return sub_1DCF3A0E4(a1, a2, a3, a4);
}

uint64_t sub_1DCF3A668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

void sub_1DCF3A6B8(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  switch(a4 >> 61)
  {
    case 1uLL:

      goto LABEL_9;
    case 2uLL:
    case 5uLL:

      a1 = a2;
      goto LABEL_4;
    case 3uLL:

      a1 = a5;
LABEL_4:

      goto LABEL_6;
    case 4uLL:

      sub_1DCF3A7D4(a1, a2, a3);
      return;
    case 6uLL:

LABEL_6:

      break;
    case 7uLL:
      return;
    default:

LABEL_9:

      break;
  }
}

void sub_1DCF3A7D4(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    v3 = a3;
    if (a3 > 3uLL)
    {
      v3 = 0;
    }

    ((&loc_1DCF3A7F8 + funcs_1DCF3A800[v3]))(a1);
  }
}

void sub_1DCF3A804(id a1)
{
}

uint64_t sub_1DCF3A814(void *a1)
{
}

id sub_1DCF3A878(id result, uint64_t a2, unsigned __int8 a3, unint64_t a4, void *a5)
{
  v5 = result;
  switch(a4 >> 61)
  {
    case 1uLL:
      v10 = result;
      sub_1DD0DCF8C();
    case 2uLL:
    case 5uLL:
      v6 = result;
      result = a2;

      goto LABEL_6;
    case 3uLL:
      v7 = a5;
      v8 = v5;
      sub_1DD0DCF8C();
    case 4uLL:

      return sub_1DCF3A998(result, a2, a3);
    case 6uLL:

LABEL_6:
      result = result;
      break;
    case 7uLL:
      return result;
    default:
      v9 = result;

      break;
  }

  return result;
}

id sub_1DCF3A998(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    v3 = a3;
    if (a3 > 3uLL)
    {
      v3 = 0;
    }

    return ((&loc_1DCF3A9BC + funcs_1DCF3A9C4[v3]))(result);
  }

  return result;
}

id sub_1DCF3A9C8(id a1)
{

  return a1;
}

uint64_t sub_1DCF3A9D8(void *a1)
{
  v1 = a1;
}

unint64_t sub_1DCF3AA38()
{
  result = qword_1ECCAA778[0];
  if (!qword_1ECCAA778[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCAA770, &unk_1DD102EE8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAA778);
  }

  return result;
}

uint64_t sub_1DCF3AAB4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a1, *a2, *(a2 + 8));
}

uint64_t sub_1DCF3AAE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCF3AB24(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 32);
}

void sub_1DCF3AB70(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = v2;
  sub_1DD0DCF8C();
}

void sub_1DCF3ABD0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF3AC64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

void *sub_1DCF3AE80(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_1DCF3A878(*a2, v4, v5, v6, v7);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}