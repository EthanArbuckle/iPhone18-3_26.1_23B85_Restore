uint64_t sub_1DCDB71F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DCE05994();
}

uint64_t sub_1DCDB7218@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCDB71A8();
  *a2 = result;
  return result;
}

void sub_1DCDB7248(void *a1@<X8>)
{
  sub_1DCDB7130(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t static WindowingDisambiguationInputType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DCE05994();
}

void WindowingDisambiguationPromptStrategy.actionForInput(input:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v8, qword_1EDE57E00);
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v10))
  {
    v11 = OUTLINED_FUNCTION_50_0();
    *v11 = 0;
    _os_log_impl(&dword_1DCAFC000, v9, v10, "WindowingDisambiguationPromptStrategy default actionForInput implementation", v11, 2u);
    OUTLINED_FUNCTION_80();
  }

  (*(a3 + 24))(&v25, a1, a2, a3);
  if (v25 - 1 < 2)
  {
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v13))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v14, v15, "WindowingDisambiguationPromptStrategy choosing to handle input");
      OUTLINED_FUNCTION_80();
    }

    v16 = 1;
LABEL_16:
    *a4 = v16;
    return;
  }

  if (v25)
  {
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v22))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v23, v24, "WindowingDisambiguationPromptStrategy choosing to ignore");
      OUTLINED_FUNCTION_80();
    }

    v16 = 2;
    goto LABEL_16;
  }

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v18))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v19, v20, "WindowingDisambiguationPromptStrategy choosing to cancel");
    OUTLINED_FUNCTION_80();
  }

  *a4 = 0;
}

uint64_t WindowingDisambiguationPromptStrategy.makePromptForDisambiguation(items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDB74B0()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "WindowingDisambiguationPromptStrategy default makePromptForDisambiguation implementation");
    OUTLINED_FUNCTION_62();
  }

  v8 = *(v0 + 80);
  v7 = *(v0 + 88);

  *(v0 + 48) = v7;
  *(v0 + 16) = 0;
  *(v0 + 24) = 257;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 41) = 0;
  v9 = *(v8 + 8);
  v10 = *(v9 + 40);
  OUTLINED_FUNCTION_24_0();
  v20 = (v11 + *v11);
  v13 = *(v12 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v14;
  *v14 = v15;
  v14[1] = sub_1DCBE45D8;
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 56);

  return v20(v18, v16, v0 + 16, v17, v9);
}

uint64_t WindowingDisambiguationPromptStrategy.parseWindowActionFromInput(input:items:)()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = *(v2 + 8);
  v1[8] = swift_getAssociatedTypeWitness();
  v8 = sub_1DD0DE97C();
  v1[9] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCDB773C()
{
  v38 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "WindowingDisambiguationPromptStrategy default parseWindowActionFromInput implementation", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];

  (*(v6 + 24))(&v37, v8, v7, v6);
  LODWORD(v6) = v37;
  v9 = sub_1DD0DD8EC();
  v10 = sub_1DD0DE6DC();
  v11 = OUTLINED_FUNCTION_23(v10);
  if (v6 == 1)
  {
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v12);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v13, v14, "WindowingDisambiguationPromptStrategy parsed a request for the next window");
      OUTLINED_FUNCTION_62();
    }

    v15 = v0[8];
    v16 = v0[2];

    static WindowingAction.proceedWithNextWindow()(v16);
    v17 = v0[11];

    OUTLINED_FUNCTION_43();

    return v18();
  }

  else
  {
    if (v11)
    {
      v20 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v20);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v21, v22, "WindowingDisambiguationPromptStrategy parsing possible user choice");
      OUTLINED_FUNCTION_62();
    }

    v23 = v0[6];

    v24 = *(v23 + 16);
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_24_0();
    v36 = (v26 + *v26);
    v28 = *(v27 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[12] = v29;
    *v29 = v30;
    v29[1] = sub_1DCDB79F8;
    v31 = v0[11];
    v32 = v0[7];
    v33 = v0[4];
    v34 = v0[5];
    v35 = v0[3];

    return v36(v31, v35, v33, v34, v24);
  }
}

uint64_t sub_1DCDB79F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDB7AF0()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  static WindowingAction.complete(_:)(v1, v0[2]);
  (*(v2 + 8))(v1, v4);
  v5 = v0[11];

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1DCDB7B90()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Executing default implementation for makeFlowCancelledResponse");
    OUTLINED_FUNCTION_62();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 24) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_31_1(v7);

  return sub_1DCCDCA70();
}

void sub_1DCDB7C9C(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_13();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = type metadata accessor for ListPromptFlow.State();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v24 - v13;
  sub_1DCDB816C(&v24 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v21 = *v14;
    v22 = v14[8];
    swift_getAssociatedTypeWitness();
    static WindowingAction.error(_:handled:)(v21, v22, a1);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    swift_getAssociatedTypeWitness();
    v16 = type metadata accessor for WindowingAction();
    OUTLINED_FUNCTION_2(v16);
    v18 = *(v17 + 32);
    v19 = OUTLINED_FUNCTION_20();
    v20(v19);
  }

  else
  {
    type metadata accessor for ListPromptFlow.ListPromptError();
    OUTLINED_FUNCTION_28_20();
    swift_getWitnessTable();
    v23 = swift_allocError();
    swift_getAssociatedTypeWitness();
    static WindowingAction.error(_:handled:)(v23, 0, a1);

    (*(v9 + 8))(v14, v6);
  }
}

void sub_1DCDB7EB8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for ListPromptFlow.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDB816C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for ListPromptFlow.State();
  OUTLINED_FUNCTION_2(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

void sub_1DCDB8218(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for ListPromptFlow.State();
  (*(*(v10 - 8) + 24))(&v1[v5], a1, v10);
  swift_endAccess();
  sub_1DCDB7EB8();
}

uint64_t sub_1DCDB830C(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1DCDB8374(a1, a2, a3, a4);
  return v11;
}

uint64_t *sub_1DCDB8374(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v6 = *v4;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 9);
  v10 = a3[2];
  v11 = *(a3 + 24);
  v12 = *(a3 + 25);
  v21 = *(a3 + 26);
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 104), a1, *(*v4 + 80));
  OUTLINED_FUNCTION_66();
  *(v4 + *(v13 + 112)) = a2;
  OUTLINED_FUNCTION_66();
  v15 = v4 + *(v14 + 120);
  *v15 = v7;
  *(v15 + 8) = v8;
  *(v15 + 9) = v9;
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  *(v15 + 25) = v12;
  *(v15 + 26) = v21;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v4 + *(v16 + 128));
  OUTLINED_FUNCTION_66();
  v18 = *(v17 + 96);
  v19 = *(v6 + 88);
  type metadata accessor for ListPromptFlow.State();
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t sub_1DCDB84E8(uint8_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Parse(0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  v14 = type metadata accessor for ListPromptFlow.State();
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15, v20);
  v42 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v42 - v24;
  sub_1DCDB816C(&v42 - v24);
  LODWORD(v4) = swift_getEnumCaseMultiPayload();
  (*(v17 + 8))(v25, v14);
  if (v4 == 5)
  {
    v26 = type metadata accessor for Input(0);
    sub_1DCB2479C(&a1[*(v26 + 20)], v11, type metadata accessor for Parse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCDC578C(v11, type metadata accessor for Parse);
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v30))
      {
        v31 = OUTLINED_FUNCTION_50_0();
        *v31 = 0;
        _os_log_impl(&dword_1DCAFC000, v29, v30, "ListPromptFlow received empty parse. Will handle and re-prompt.", v31, 2u);
        OUTLINED_FUNCTION_80();
      }

      v32 = v42;
      OUTLINED_FUNCTION_54_1();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1DCDB8218(v32);
    }

    if ((sub_1DCE967E0(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v38 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
      v39 = sub_1DD0DD8EC();
      v40 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v40))
      {
        v41 = OUTLINED_FUNCTION_50_0();
        *v41 = 0;
        _os_log_impl(&dword_1DCAFC000, v39, v40, "ListPromptFlow received low confidence input. Treating as misunderstood and will re-prompt.", v41, 2u);
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_25_16();
      OUTLINED_FUNCTION_54_1();
      swift_storeEnumTagMultiPayload();
      sub_1DCDB8218(v39);
    }

    v32 = v2 + *(*v2 + 104);
    (*(v13 + 24))(&v43, a1, v12, v13);
    if (!v43)
    {
      v32 = v42;
      OUTLINED_FUNCTION_54_1();
      goto LABEL_8;
    }

    if (v43 == 1)
    {
      OUTLINED_FUNCTION_25_16();
      OUTLINED_FUNCTION_54_1();
      goto LABEL_8;
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v33 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v36);
      _os_log_impl(&dword_1DCAFC000, v34, v35, "ListPromptFlow received input but is not in the promptSent state. Ignoring.", a1, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  return 0;
}

void sub_1DCDB8938()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  type metadata accessor for ListPromptFlow();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCDB89D4()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for ListPromptFlow.State();
  v1[8] = v7;
  v8 = *(*(v7 - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_38();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[10] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_13_17(v9);

  return sub_1DCDB8D80();
}

uint64_t sub_1DCDB8AA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

void sub_1DCDB8BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = v18[11];
  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = v18[11];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    a10 = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v30 = v18[2];
    v29 = v18[3];
    v31 = v18[4];
    v32 = sub_1DD0DF18C();
    v34 = sub_1DCB10E9C(v32, v33, &a10);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "ListPromptFlow received an unexpected error %s. Will attempt to handle.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v35 = v18[11];
  v36 = v18[8];
  v37 = v18[9];
  v39 = v18[6];
  v38 = v18[7];
  *v37 = v35;
  *(v37 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v40 = v35;
  sub_1DCDB8218(v37);
}

uint64_t sub_1DCDB8D80()
{
  OUTLINED_FUNCTION_39();
  v1[27] = v2;
  v1[28] = v0;
  OUTLINED_FUNCTION_13();
  v1[29] = *(v3 + 88);
  OUTLINED_FUNCTION_8_2();
  v1[30] = *(v4 + 80);
  v1[31] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for WindowingAction();
  v1[32] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = OUTLINED_FUNCTION_38();
  v10 = *(*(type metadata accessor for Input(0) - 8) + 64);
  v1[35] = OUTLINED_FUNCTION_38();
  v11 = type metadata accessor for ListPromptFlow.State();
  v1[36] = v11;
  v12 = *(v11 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[37] = v13;
  v15 = *(v14 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DCDB8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  v15 = v14[36];
  v16 = v14[28];
  sub_1DCDB816C(v14[39]);
  OUTLINED_FUNCTION_20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_16();
      v61 = *(v60 + 128);
      OUTLINED_FUNCTION_30_24(v62);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[44] = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_52_15(v63);
      goto LABEL_25;
    case 2u:
      (*(v14[37] + 8))(v14[39], v14[36]);
      goto LABEL_9;
    case 3u:
      v46 = v14[39];
      v47 = *v46;
      v14[50] = *v46;
      if (*(v46 + 8))
      {

LABEL_9:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v48 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);
        v49 = sub_1DD0DD8EC();
        v50 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_23(v50))
        {
          v51 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v51);
          OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v52, v53, "ListPromptFlow is complete");
          OUTLINED_FUNCTION_62();
        }

        v54 = v14[27];

        static ExecuteResponse.complete()();
        OUTLINED_FUNCTION_47_14();

        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_76();

        return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v98 = sub_1DD0DD8FC();
        v14[51] = __swift_project_value_buffer(v98, qword_1EDE57E00);
        v99 = sub_1DD0DD8EC();
        v100 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_75(v100))
        {
          v101 = OUTLINED_FUNCTION_50_0();
          *v101 = 0;
          _os_log_impl(&dword_1DCAFC000, v99, v100, "ListPromptFlow is in an unhandled error state. Attempting to send an error response.", v101, 2u);
          OUTLINED_FUNCTION_80();
        }

        v102 = v14[28];

        v103 = (v102 + *(*v102 + 128));
        v104 = v103[4];
        __swift_project_boxed_opaque_existential_1(v103, v103[3]);
        v105 = swift_task_alloc();
        v14[52] = v105;
        *(v105 + 16) = v102;
        *(v105 + 24) = v47;
        swift_task_alloc();
        OUTLINED_FUNCTION_45();
        v14[53] = v106;
        *v106 = v107;
        v106[1] = sub_1DCDB9DD4;
LABEL_25:
        OUTLINED_FUNCTION_76();

        return sub_1DCB63BBC(v92, v93, v94, v95, v96);
      }

    case 4u:
      OUTLINED_FUNCTION_33_16();
      v42 = *(v41 + 128);
      OUTLINED_FUNCTION_30_24(v43);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[40] = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_52_15(v44);
      goto LABEL_25;
    case 5u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v65 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
      v66 = sub_1DD0DD8EC();
      v67 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v68);
        OUTLINED_FUNCTION_58_9(&dword_1DCAFC000, v69, v70, "ListPromptFlow called in an unexpected state. Will attempt to send an error response.");
        OUTLINED_FUNCTION_62();
      }

      v72 = v14[38];
      v71 = v14[39];
      v73 = v14[36];
      v74 = v14[37];
      v76 = v14[29];
      v75 = v14[30];
      v78 = v14[27];
      v77 = v14[28];

      type metadata accessor for ListPromptFlow.ListPromptError();
      OUTLINED_FUNCTION_28_20();
      swift_getWitnessTable();
      *v72 = swift_allocError();
      *(v72 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1DCDB8218(v72);
    case 6u:
      OUTLINED_FUNCTION_33_16();
      v88 = *(v87 + 128);
      OUTLINED_FUNCTION_30_24(v89);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[46] = v90;
      *v90 = v91;
      OUTLINED_FUNCTION_52_15(v90);
      goto LABEL_25;
    case 7u:
      OUTLINED_FUNCTION_33_16();
      v56 = *(v55 + 128);
      OUTLINED_FUNCTION_30_24(v57);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[48] = v58;
      *v58 = v59;
      OUTLINED_FUNCTION_52_15(v58);
      goto LABEL_25;
    default:
      v17 = v14[28];
      v109 = v14[29];
      sub_1DCC333DC(v14[39], v14[35]);
      OUTLINED_FUNCTION_13();
      v19 = *(v18 + 104);
      v21 = *(v17 + *(v20 + 112));
      v22 = *(v109 + 32);
      v110 = v109 + 32;
      OUTLINED_FUNCTION_24_0();
      v108 = v23 + *v23;
      v25 = *(v24 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v14[42] = v26;
      *v26 = v27;
      v26[1] = sub_1DCDB9764;
      v28 = v14[34];
      v29 = v14[35];
      v31 = v14[29];
      v30 = v14[30];
      OUTLINED_FUNCTION_76();

      return v37(v32, v33, v34, v35, v36, v37, v38, v39, a9, v108, v110, a12, a13, a14);
  }
}

uint64_t sub_1DCDB95D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 176));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDB96D8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_48_15();
  sub_1DCDB8218(v0);
}

uint64_t sub_1DCDB9764()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDB985C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v5 = v0[27];
  v4 = v0[28];
  (*(v0[33] + 16))(v1, v0[34], v0[32]);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9958()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDB9A5C()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v6 = v0[27];
  v5 = v0[28];
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v2);
}

uint64_t sub_1DCDB9B20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 368);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 376) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDB9C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 392) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDB9D28()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[31];
  v5 = v0[27];
  v4 = v0[28];
  static WindowingAction.cancelled()(v1);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9DD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[54] = v0;

  if (!v0)
  {
    v9 = v3[52];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCDB9EE4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  static WindowingAction.error(_:handled:)(*(v0 + 400), 1, v1);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v1);
}

uint64_t sub_1DCDB9FA4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCDBA01C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_26_21();
  sub_1DCDC578C(v2, v3);
  v4 = *(v0 + 344);
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCDBA0A0()
{
  OUTLINED_FUNCTION_39();
  (*(v0[37] + 8))(v0[39], v0[36]);
  v1 = v0[45];
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCDBA130()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 376);
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCDBA1A8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 392);
  OUTLINED_FUNCTION_51_15();

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCDBA220()
{
  OUTLINED_FUNCTION_41();
  v2 = v0[51];
  v1 = v0[52];

  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_58_9(&dword_1DCAFC000, v6, v7, "ListPromptFlow was unable to handle the error. Giving up.");
    OUTLINED_FUNCTION_62();
  }

  v8 = v0[54];
  v9 = v0[50];
  v10 = v0[38];
  v11 = v0[36];
  v12 = v0[31];
  v13 = v0[28];

  static WindowingAction.error(_:handled:)(v8, 0, v10);
  swift_storeEnumTagMultiPayload();
  sub_1DCDB8218(v10);
}

uint64_t sub_1DCDBA34C(uint64_t a1, void *a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDBA394, 0, 0);
}

uint64_t sub_1DCDBA394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = v9[7];
  v10 = v9[8];
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 104);
  v15 = *(v11 + *(v14 + 112));
  OUTLINED_FUNCTION_8_2();
  v17 = *(OUTLINED_FUNCTION_3_70(*(v16 + 120)) + 40);
  OUTLINED_FUNCTION_25_1();
  v32 = v18 + *v18;
  v20 = *(v19 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v9[9] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_8_49(v21);
  OUTLINED_FUNCTION_48();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

uint64_t sub_1DCDBA4C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCDBA5D8(uint64_t a1, void *a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDBA620, 0, 0);
}

uint64_t sub_1DCDBA620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = v9[7];
  v10 = v9[8];
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 104);
  v15 = *(v11 + *(v14 + 112));
  OUTLINED_FUNCTION_8_2();
  v17 = *(OUTLINED_FUNCTION_3_70(*(v16 + 120)) + 56);
  OUTLINED_FUNCTION_25_1();
  v32 = v18 + *v18;
  v20 = *(v19 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v9[9] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_8_49(v21);
  OUTLINED_FUNCTION_48();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

uint64_t sub_1DCDBA750()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCDBA864(uint64_t a1, void *a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDBA8AC, 0, 0);
}

uint64_t sub_1DCDBA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = v9[7];
  v10 = v9[8];
  OUTLINED_FUNCTION_13();
  v13 = *(v12 + 104);
  v15 = *(v11 + *(v14 + 112));
  OUTLINED_FUNCTION_8_2();
  v17 = *(OUTLINED_FUNCTION_3_70(*(v16 + 120)) + 48);
  OUTLINED_FUNCTION_25_1();
  v32 = v18 + *v18;
  v20 = *(v19 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v9[9] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_8_49(v21);
  OUTLINED_FUNCTION_48();

  return v28(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

uint64_t sub_1DCDBA9DC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 104);
  v5 = *(*a2 + 88);
  v6 = *(v5 + 64);
  v7 = *(*a2 + 80);
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DCB4AD3C;

  return v11(a1, v7, v5);
}

uint64_t sub_1DCDBAB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 88);
  v8 = *(v7 + 72);
  v9 = *(*a2 + 80);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a3, v9, v7);
}

unint64_t sub_1DCDBACC4(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v3 + 8))(v6, a1);
      result = 0x65646E7573696D2ELL;
      break;
    case 2:
      (*(v3 + 8))(v6, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 3:
      (*(v3 + 8))(v6, a1);
      result = 0x726F7272652ELL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5374706D6F72702ELL;
      break;
    case 6:
      result = 0x61507974706D652ELL;
      break;
    case 7:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      (*(v3 + 8))(v6, a1);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DCDBAEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return OUTLINED_FUNCTION_2_15();
}

uint64_t sub_1DCDBAEFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return sub_1DCC8572C();
}

uint64_t sub_1DCDBAF08(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return sub_1DCBB1204();
}

uint64_t sub_1DCDBAF14(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_1DCBB1204();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCDBAF58()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for ListPromptFlow.State();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  (*(*(v4 - 8) + 8))(v0 + *(v9 + 104), v4);
  OUTLINED_FUNCTION_66();
  v11 = *(v0 + *(v10 + 112));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v12 + 128)));
  return v0;
}

uint64_t sub_1DCDBB058()
{
  sub_1DCDBAF58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDBB0FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCDB89D4();
}

uint64_t dispatch thunk of ListPromptFlowStrategy.parseWindowActionFromInput(input:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t dispatch thunk of ListPromptFlowStrategy.makePromptForItems(items:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t dispatch thunk of ListPromptFlowStrategy.makeRepromptOnEmptyParse(items:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t dispatch thunk of ListPromptFlowStrategy.makeRepromptOnLowConfidence(items:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t dispatch thunk of ListPromptFlowStrategy.makeFlowCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 64);
  OUTLINED_FUNCTION_25_1();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return v14(a1, a2, a3);
}

uint64_t dispatch thunk of ListPromptFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 72);
  OUTLINED_FUNCTION_24_0();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_11_0(v12);
  *v13 = v14;
  v13[1] = sub_1DCB4AE1C;

  return v16(v7, v5, v3, v1);
}

uint64_t sub_1DCDBB7F4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  result = type metadata accessor for ListPromptFlow.State();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DCDBB91C(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for WindowingAction.WindowingActionType();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCDBBA08(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v211 = *(sub_1DD0DB04C() - 8);
  v214 = *(v211 + 64);
  v198 = sub_1DD0DC76C();
  v207 = *(v198 - 8);
  v197 = v207;
  v3 = *(v207 + 80);
  v194 = sub_1DD0DB1EC();
  v209 = *(v194 - 8);
  v210 = *(v209 + 80) | v3;
  v200 = sub_1DD0DB4BC();
  v206 = *(v200 - 8);
  v202 = *(v206 + 80);
  v199 = sub_1DD0DB3EC();
  v203 = *(v199 - 8);
  v4 = v203;
  v5 = *(v203 + 80);
  v6 = v202 & 0xF8 | v5 | 7u;
  v193 = sub_1DD0DD12C();
  v205 = *(v193 - 8);
  v7 = *(v205 + 80);
  v192 = sub_1DD0DD08C();
  v190 = *(v192 - 8);
  v8 = v7 | *(v190 + 80);
  v9 = *(v207 + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v191 = v9;
  if (v10 <= v9)
  {
    v10 = *(v207 + 64);
  }

  if (v10 <= *(v209 + 64))
  {
    v10 = *(v209 + 64);
  }

  v201 = *(v206 + 64) + v5;
  v11 = *(v203 + 84);
  v12 = *(v203 + 64);
  v183 = v12;
  if (!v11)
  {
    ++v12;
  }

  v204 = v12;
  v195 = v201 & ~v5;
  v184 = v12 + 7;
  v13 = (v12 + 7 + v195) & 0xFFFFFFFFFFFFFFF8;
  __n = (v13 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v10 <= __n)
  {
    v10 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v14 = v13 + 31;
  if (v10 <= (((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v10 = (((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v187 = *(v205 + 64);
  v185 = *(v4 + 84);
  v15 = v11 != 0;
  v16 = v11 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v182 = v16;
  v186 = *(v206 + 84);
  if (v16 <= v186)
  {
    v16 = *(v206 + 84);
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  v189 = v16;
  v188 = v6 + 16;
  v17 = (v210 | v8) & 0xF8 | v6;
  v18 = ((v14 + ((v6 + 16 + ((v187 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v18)
  {
    v10 = v18;
  }

  v19 = *(*(v192 - 8) + 64);
  if (v10 > v19)
  {
    v19 = v10;
  }

  if (v19 <= 0x18)
  {
    v19 = 24;
  }

  v208 = v19;
  v20 = ((((v19 + ((v214 + v17) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v22 = *(a3 + 16);
  v21 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  if (*(v24 + 84))
  {
    v25 = *(v24 + 64);
  }

  else
  {
    v25 = *(v24 + 64) + 1;
  }

  if (v25 <= 9)
  {
    v26 = 9;
  }

  else
  {
    v26 = v25;
  }

  if (v26 + 1 > v20)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v20;
  }

  if (v27 <= 9)
  {
    v28 = 9;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v211 + 80);
  v30 = *(v24 + 80);
  if (((v30 | v29) & 0xF8 | v17) != 7 || ((v210 | v202 | v5 | v8 | v29 | v30) & 0x100000) != 0 || (v28 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v31 = AssociatedTypeWitness;
  v32 = a2[v28];
  v33 = v32 - 4;
  if (v32 < 4)
  {
    v35 = a1;
  }

  else
  {
    if (v28 <= 3)
    {
      v34 = v28;
    }

    else
    {
      v34 = 4;
    }

    v35 = a1;
    switch(v34)
    {
      case 1:
        v36 = *a2;
        goto LABEL_49;
      case 2:
        v36 = *a2;
        goto LABEL_49;
      case 3:
        v36 = *a2 | (a2[2] << 16);
        goto LABEL_49;
      case 4:
        v36 = *a2;
LABEL_49:
        if (v28 < 4)
        {
          v36 |= v33 << (8 * v28);
        }

        v32 = v36 + 4;
        break;
      default:
        break;
    }
  }

  v37 = v208 + 1;
  v38 = ~(v202 & 0xF8 | v5 | 7u);
  switch(v32)
  {
    case 0u:
      v39 = ~v5;
      v40 = v28;
      (*(v211 + 16))(v35);
      v41 = &v35[v214 + 7];
      v42 = (v41 & 0xFFFFFFFFFFFFFFF8);
      v43 = &a2[v214 + 7];
      v44 = (v43 & 0xFFFFFFFFFFFFFFF8);
      v45 = *((v43 & 0xFFFFFFFFFFFFFFF8) + v208);
      v46 = v45 - 10;
      if (v45 >= 0xA)
      {
        if (v208 <= 3)
        {
          v47 = v208;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v44;
            goto LABEL_95;
          case 2:
            v48 = *v44;
            goto LABEL_95;
          case 3:
            v48 = *v44 | (v44[2] << 16);
            goto LABEL_95;
          case 4:
            v48 = *v44;
LABEL_95:
            if (v208 < 4)
            {
              v45 = (v48 | (v46 << (8 * v208))) + 10;
            }

            else
            {
              v45 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v45)
      {
        case 0u:
          (*(v197 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v198);
          *((v41 & 0xFFFFFFFFFFFFFFF8) + v208) = 0;
          goto LABEL_129;
        case 1u:
          (*(v197 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v198);
          *(((v41 | 7) + v191) & 0xFFFFFFFFFFFFFFF8) = *(((v43 | 7) + v191) & 0xFFFFFFFFFFFFFFF8);
          *((v41 & 0xFFFFFFFFFFFFFFF8) + v208) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v42 = *v44;
          v42[1] = *(v44 + 1);
          v42[2] = *(v44 + 2);
          *(v42 + v208) = 2;

          goto LABEL_129;
        case 3u:
          *v42 = *v44;
          *(v42 + v208) = 3;
          swift_unknownObjectRetain();
          goto LABEL_129;
        case 4u:
          v71 = v208;
          v72 = v41 & 0xFFFFFFFFFFFFFFF8;
          (*(v209 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v194);
          v73 = 4;
          goto LABEL_109;
        case 5u:
          v84 = *v44;
          *v42 = *v44;
          *(v42 + v208) = 5;
          v85 = v84;
          goto LABEL_129;
        case 6u:
          (*(v206 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v200);
          v88 = ((v201 + (v41 & 0xFFFFFFFFFFFFFFF8)) & v39);
          v89 = (&v44[v201] & v39);
          if (__swift_getEnumTagSinglePayload(v89, 1, v199))
          {
            v90 = v204;
            memcpy(v88, v89, v204);
            v80 = v40;
          }

          else
          {
            (*(v4 + 16))(v88, v89, v199);
            __swift_storeEnumTagSinglePayload(v88, 0, 1, v199);
            v80 = v40;
            v90 = v204;
          }

          v148 = ((v88 + v90 + 7) & 0xFFFFFFFFFFFFFFF8);
          v149 = ((v89 + v90 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v148 = *v149;
          v148[1] = v149[1];
          v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
          v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
          v152 = *v151;
          *(v150 + 4) = *(v151 + 4);
          *v150 = v152;
          *((v41 & 0xFFFFFFFFFFFFFFF8) + v208) = 6;

          v37 = v208 + 1;
          goto LABEL_130;
        case 7u:
          v215 = v208 + 1;
          (*(v206 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v200);
          v77 = ((v201 + (v41 & 0xFFFFFFFFFFFFFFF8)) & v39);
          v78 = (&v44[v201] & v39);
          if (__swift_getEnumTagSinglePayload(v78, 1, v199))
          {
            v79 = v204;
            memcpy(v77, v78, v204);
            v80 = v40;
          }

          else
          {
            (*(v4 + 16))(v77, v78, v199);
            __swift_storeEnumTagSinglePayload(v77, 0, 1, v199);
            v80 = v40;
            v79 = v204;
          }

          v126 = ((v77 + v79 + 7) & 0xFFFFFFFFFFFFFFF8);
          v127 = ((v78 + v79 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v126 = *v127;
          v126[1] = v127[1];
          v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
          v129 = (v127 + 19) & 0xFFFFFFFFFFFFFFF8;
          v130 = *v129;
          *(v128 + 4) = *(v129 + 4);
          *v128 = v130;
          v131 = (((v41 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
          v132 = (((v43 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
          *v131 = *v132;
          v131[1] = v132[1];
          v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
          v134 = ((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v133 = *v134;
          v133[1] = v134[1];
          v135 = ((v133 + 23) & 0xFFFFFFFFFFFFFFF8);
          v136 = ((v134 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v135 = *v136;
          v135[1] = v136[1];
          *((v41 & 0xFFFFFFFFFFFFFFF8) + v208) = 7;

          goto LABEL_180;
        case 8u:
          v215 = v208 + 1;
          (*(v205 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v193);
          v108 = (((v41 | 7) + v187) & 0xFFFFFFFFFFFFFFF8);
          v109 = (((v43 | 7) + v187) & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v108[1] = v109[1];
          v110 = ((v108 + v188) & v38);
          v111 = ((v109 + v188) & v38);

          if (v186 != v189)
          {
            v114 = ((v111 + v201) & v39);
            v80 = v40;
            if (v182 == v189)
            {
              v112 = v200;
              if (v185 >= 2 && __swift_getEnumTagSinglePayload((v111 + v201) & v39, v185, v199) >= 2)
              {
                goto LABEL_151;
              }
            }

            else
            {
              v158 = *(((v114 + v184) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v158 >= 0xFFFFFFFF)
              {
                LODWORD(v158) = -1;
              }

              v112 = v200;
              if ((v158 + 1) >= 2)
              {
                goto LABEL_151;
              }
            }

            v115 = v206;
            v113 = v201;
            goto LABEL_168;
          }

          v112 = v200;
          v80 = v40;
          if (__swift_getEnumTagSinglePayload(v111, v186, v200))
          {
LABEL_151:
            memcpy(v110, v111, __n);
            v124 = v204;
LABEL_178:
            v167 = v124;
            goto LABEL_179;
          }

          v113 = v201;
          v114 = ((v111 + v201) & v39);
          v115 = v206;
LABEL_168:
          (*(v115 + 16))(v110, v111, v112);
          v159 = ((v110 + v113) & v39);
          v124 = v204;
          if (__swift_getEnumTagSinglePayload(v114, 1, v199))
          {
            memcpy(v159, v114, v204);
          }

          else
          {
            (*(v4 + 16))(v159, v114, v199);
            __swift_storeEnumTagSinglePayload(v159, 0, 1, v199);
          }

          v162 = ((v159 + v184) & 0xFFFFFFFFFFFFFFF8);
          v163 = ((v114 + v184) & 0xFFFFFFFFFFFFFFF8);
          *v162 = *v163;
          v162[1] = v163[1];
          v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
          v166 = *v165;
          *(v164 + 4) = *(v165 + 4);
          *v164 = v166;

          v80 = v40;
          v167 = v183;
          if (!v185)
          {
            goto LABEL_178;
          }

LABEL_179:
          v168 = (((v195 + v167 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v169 = ((v110 + v168 + 7) & 0xFFFFFFFFFFFFFFF8);
          v170 = *((v111 + v168 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v169 = v170;
          *((v41 & 0xFFFFFFFFFFFFFFF8) + v208) = 8;
          v171 = v170;
LABEL_180:
          v37 = v215;
LABEL_130:
          v94 = (((v43 | 7) + v37) & 0xFFFFFFFFFFFFFFF8);
          v95 = (((v41 | 7) + v37) & 0xFFFFFFFFFFFFFFF8);
          *v95 = *v94;
          v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
          v97 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
          v98 = *(v97 + 24);

          if (v98 < 0xFFFFFFFF)
          {
            v99 = *v97;
            v100 = *(v97 + 16);
            *(v96 + 32) = *(v97 + 32);
            *v96 = v99;
            *(v96 + 16) = v100;
          }

          else
          {
            *(v96 + 24) = v98;
            *(v96 + 32) = *(v97 + 32);
            (**(v98 - 8))(v96, v97, v98);
          }

          *(v96 + 40) = *(v97 + 40);
          v35 = a1;
          *(a1 + v80) = 0;
          return v35;
        case 9u:
          v71 = v208;
          v72 = v41 & 0xFFFFFFFFFFFFFFF8;
          (*(v190 + 16))(v41 & 0xFFFFFFFFFFFFFFF8, v43 & 0xFFFFFFFFFFFFFFF8, v192);
          v73 = 9;
LABEL_109:
          *(v72 + v71) = v73;
          goto LABEL_129;
        default:
          memcpy((v41 & 0xFFFFFFFFFFFFFFF8), (v43 & 0xFFFFFFFFFFFFFFF8), v37);
LABEL_129:
          v80 = v40;
          goto LABEL_130;
      }

    case 1u:
      v56 = ~v5;
      v57 = v28;
      (*(v211 + 16))(v35);
      v58 = &v35[v214 + 7];
      v59 = (v58 & 0xFFFFFFFFFFFFFFF8);
      v60 = &a2[v214 + 7];
      v61 = (v60 & 0xFFFFFFFFFFFFFFF8);
      v62 = *((v60 & 0xFFFFFFFFFFFFFFF8) + v208);
      v63 = v62 - 10;
      if (v62 >= 0xA)
      {
        if (v208 <= 3)
        {
          v64 = v208;
        }

        else
        {
          v64 = 4;
        }

        switch(v64)
        {
          case 1:
            v65 = *v61;
            goto LABEL_101;
          case 2:
            v65 = *v61;
            goto LABEL_101;
          case 3:
            v65 = *v61 | (v61[2] << 16);
            goto LABEL_101;
          case 4:
            v65 = *v61;
LABEL_101:
            if (v208 < 4)
            {
              v62 = (v65 | (v63 << (8 * v208))) + 10;
            }

            else
            {
              v62 = v65 + 10;
            }

            break;
          default:
            goto LABEL_104;
        }
      }

      break;
    case 2u:
      v49 = a2[v26];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v26 <= 3)
        {
          v51 = v26;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a2;
            goto LABEL_80;
          case 2:
            v52 = *a2;
            goto LABEL_80;
          case 3:
            v52 = *a2 | (a2[2] << 16);
            goto LABEL_80;
          case 4:
            v52 = *a2;
LABEL_80:
            if (v26 < 4)
            {
              v49 = (v52 | (v50 << (8 * v26))) + 2;
            }

            else
            {
              v49 = v52 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v49 == 1)
      {
        v67 = v35;
        v68 = *a2;
        v69 = *a2;
        *v67 = v68;
        v35 = v67;
        v67[8] = a2[8];
        v67[v26] = 1;
      }

      else if (v49)
      {
        memcpy(v35, a2, v26 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(a2, 1, AssociatedTypeWitness))
        {
          memcpy(v35, a2, v25);
        }

        else
        {
          (*(v24 + 16))(v35, a2, v31);
          __swift_storeEnumTagSinglePayload(v35, 0, 1, v31);
        }

        v35[v26] = 0;
      }

      v70 = 2;
      goto LABEL_140;
    case 3u:
      v53 = v35;
      v54 = *a2;
      v55 = *a2;
      *v53 = v54;
      v35 = v53;
      v53[8] = a2[8];
      v53[v28] = 3;
      return v35;
    default:

      return memcpy(v35, a2, ~v5);
  }

LABEL_104:
  switch(v62)
  {
    case 0u:
      (*(v197 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v198);
      *((v58 & 0xFFFFFFFFFFFFFFF8) + v208) = 0;
      goto LABEL_135;
    case 1u:
      (*(v197 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v198);
      *(((v58 | 7) + v191) & 0xFFFFFFFFFFFFFFF8) = *(((v60 | 7) + v191) & 0xFFFFFFFFFFFFFFF8);
      *((v58 & 0xFFFFFFFFFFFFFFF8) + v208) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v59 = *v61;
      v59[1] = *(v61 + 1);
      v59[2] = *(v61 + 2);
      *(v59 + v208) = 2;

      goto LABEL_135;
    case 3u:
      *v59 = *v61;
      *(v59 + v208) = 3;
      swift_unknownObjectRetain();
      goto LABEL_135;
    case 4u:
      v74 = v208;
      v75 = v58 & 0xFFFFFFFFFFFFFFF8;
      (*(v209 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v194);
      v76 = 4;
      goto LABEL_111;
    case 5u:
      v86 = *v61;
      *v59 = *v61;
      *(v59 + v208) = 5;
      v87 = v86;
      goto LABEL_135;
    case 6u:
      (*(v206 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v200);
      v91 = ((v201 + (v58 & 0xFFFFFFFFFFFFFFF8)) & v56);
      v92 = (&v61[v201] & v56);
      if (__swift_getEnumTagSinglePayload(v92, 1, v199))
      {
        v93 = v204;
        memcpy(v91, v92, v204);
        v28 = v57;
      }

      else
      {
        (*(v4 + 16))(v91, v92, v199);
        __swift_storeEnumTagSinglePayload(v91, 0, 1, v199);
        v28 = v57;
        v93 = v204;
      }

      v153 = ((v91 + v93 + 7) & 0xFFFFFFFFFFFFFFF8);
      v154 = ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      v153[1] = v154[1];
      v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v154 + 19) & 0xFFFFFFFFFFFFFFF8;
      v157 = *v156;
      *(v155 + 4) = *(v156 + 4);
      *v155 = v157;
      *((v58 & 0xFFFFFFFFFFFFFFF8) + v208) = 6;

      v37 = v208 + 1;
      goto LABEL_136;
    case 7u:
      v216 = v208 + 1;
      (*(v206 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v200);
      v81 = ((v201 + (v58 & 0xFFFFFFFFFFFFFFF8)) & v56);
      v82 = (&v61[v201] & v56);
      if (__swift_getEnumTagSinglePayload(v82, 1, v199))
      {
        v83 = v204;
        memcpy(v81, v82, v204);
        v28 = v57;
      }

      else
      {
        (*(v4 + 16))(v81, v82, v199);
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v199);
        v28 = v57;
        v83 = v204;
      }

      v137 = ((v81 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
      v138 = ((v82 + v83 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v137 = *v138;
      v137[1] = v138[1];
      v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
      v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
      v141 = *v140;
      *(v139 + 4) = *(v140 + 4);
      *v139 = v141;
      v142 = (((v58 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
      v143 = (((v60 | 7) + __n) & 0xFFFFFFFFFFFFFFF8);
      *v142 = *v143;
      v142[1] = v143[1];
      v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
      v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v144 = *v145;
      v144[1] = v145[1];
      v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
      v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v146 = *v147;
      v146[1] = v147[1];
      *((v58 & 0xFFFFFFFFFFFFFFF8) + v208) = 7;

      goto LABEL_185;
    case 8u:
      v216 = v208 + 1;
      (*(v205 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v193);
      v116 = (((v58 | 7) + v187) & 0xFFFFFFFFFFFFFFF8);
      v117 = (((v60 | 7) + v187) & 0xFFFFFFFFFFFFFFF8);
      *v116 = *v117;
      v116[1] = v117[1];
      v118 = ((v116 + v188) & v38);
      v119 = ((v117 + v188) & v38);

      if (v186 == v189)
      {
        v120 = v200;
        v28 = v57;
        if (!__swift_getEnumTagSinglePayload(v119, v186, v200))
        {
          v121 = v201;
          v122 = ((v119 + v201) & v56);
          v123 = v206;
          goto LABEL_174;
        }

LABEL_155:
        memcpy(v118, v119, __n);
        v125 = v204;
        goto LABEL_183;
      }

      v122 = ((v119 + v201) & v56);
      v28 = v57;
      if (v182 == v189)
      {
        v120 = v200;
        if (v185 >= 2 && __swift_getEnumTagSinglePayload((v119 + v201) & v56, v185, v199) >= 2)
        {
          goto LABEL_155;
        }
      }

      else
      {
        v160 = *(((v122 + v184) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v160 >= 0xFFFFFFFF)
        {
          LODWORD(v160) = -1;
        }

        v120 = v200;
        if ((v160 + 1) >= 2)
        {
          goto LABEL_155;
        }
      }

      v123 = v206;
      v121 = v201;
LABEL_174:
      (*(v123 + 16))(v118, v119, v120);
      v161 = ((v118 + v121) & v56);
      v125 = v204;
      if (__swift_getEnumTagSinglePayload(v122, 1, v199))
      {
        memcpy(v161, v122, v204);
      }

      else
      {
        (*(v4 + 16))(v161, v122, v199);
        __swift_storeEnumTagSinglePayload(v161, 0, 1, v199);
      }

      v172 = ((v161 + v184) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v122 + v184) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      v172[1] = v173[1];
      v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
      v175 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
      v176 = *v175;
      *(v174 + 4) = *(v175 + 4);
      *v174 = v176;

      v28 = v57;
      v177 = v183;
      if (v185)
      {
LABEL_184:
        v178 = (((v195 + v177 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v179 = ((v118 + v178 + 7) & 0xFFFFFFFFFFFFFFF8);
        v180 = *((v119 + v178 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v179 = v180;
        *((v58 & 0xFFFFFFFFFFFFFFF8) + v208) = 8;
        v181 = v180;
LABEL_185:
        v37 = v216;
LABEL_136:
        v101 = (((v60 | 7) + v37) & 0xFFFFFFFFFFFFFFF8);
        v102 = (((v58 | 7) + v37) & 0xFFFFFFFFFFFFFFF8);
        *v102 = *v101;
        v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
        v104 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
        v105 = *(v104 + 24);

        if (v105 < 0xFFFFFFFF)
        {
          v106 = *v104;
          v107 = *(v104 + 16);
          *(v103 + 32) = *(v104 + 32);
          *v103 = v106;
          *(v103 + 16) = v107;
        }

        else
        {
          *(v103 + 24) = v105;
          *(v103 + 32) = *(v104 + 32);
          (**(v105 - 8))(v103, v104, v105);
        }

        *(v103 + 40) = *(v104 + 40);
        v70 = 1;
        v35 = a1;
LABEL_140:
        v35[v28] = v70;
        return v35;
      }

LABEL_183:
      v177 = v125;
      goto LABEL_184;
    case 9u:
      v74 = v208;
      v75 = v58 & 0xFFFFFFFFFFFFFFF8;
      (*(v190 + 16))(v58 & 0xFFFFFFFFFFFFFFF8, v60 & 0xFFFFFFFFFFFFFFF8, v192);
      v76 = 9;
LABEL_111:
      *(v75 + v74) = v76;
      goto LABEL_135;
    default:
      memcpy((v58 & 0xFFFFFFFFFFFFFFF8), (v60 & 0xFFFFFFFFFFFFFFF8), v37);
LABEL_135:
      v28 = v57;
      goto LABEL_136;
  }
}

void sub_1DCDBD168(unsigned __int8 *a1, uint64_t a2)
{
  v2 = sub_1DD0DB04C();
  v103 = *(v2 - 8);
  v104 = v2;
  v115 = *(v103 + 64);
  v100 = sub_1DD0DC76C();
  v111 = *(v100 - 8);
  v99 = v111;
  v3 = *(v111 + 80);
  v98 = sub_1DD0DB1EC();
  v113 = *(v98 - 8);
  v97 = v113;
  v105 = *(v113 + 80) | v3;
  v102 = sub_1DD0DB4BC();
  v109 = *(v102 - 8);
  v120 = v109;
  v4 = *(v109 + 80) & 0xF8;
  v101 = sub_1DD0DB3EC();
  v5 = *(v101 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v8 = sub_1DD0DD12C();
  v107 = *(v8 - 8);
  v93 = v107;
  v94 = v8;
  v9 = *(v107 + 80);
  v92 = sub_1DD0DD08C();
  v10 = v111;
  v91 = *(v92 - 8);
  v11 = (v105 | (v9 | *(v91 + 80))) & 0xF8 | v7;
  v112 = v115 + v11;
  v12 = (v115 + v11) & ~v11;
  v13 = *(v10 + 64);
  v90 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v113 + 64))
  {
    v13 = *(v113 + 64);
  }

  v114 = *(v109 + 64) + v6;
  v116 = v6;
  v89 = v5;
  v14 = *(v5 + 84);
  v15 = *(v5 + 64);
  v95 = v15;
  if (!v14)
  {
    ++v15;
  }

  v96 = v15;
  v110 = v15 + 7;
  v106 = v114 & ~v6;
  v16 = (v15 + 7 + v106) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v17)
  {
    v13 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v16 + 31;
  if (v13 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v19 = *(v107 + 64);
  v20 = v7 + 16;
  v21 = v7;
  v22 = (v7 + 16 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v23 = *(v120 + 84);
  v108 = *(v5 + 84);
  v24 = v14 != 0;
  v25 = v14 - 1;
  if (!v24)
  {
    v25 = 0;
  }

  v88 = v25;
  if (v25 <= v23)
  {
    v25 = *(v120 + 84);
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v18 + v22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v27)
  {
    v13 = v27;
  }

  v28 = *(*(v92 - 8) + 64);
  if (v13 > v28)
  {
    v28 = v13;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((((v29 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v32 = *(a2 + 16);
  v31 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  if (*(v35 + 84))
  {
    v36 = *(v35 + 64);
  }

  else
  {
    v36 = *(v35 + 64) + 1;
  }

  if (v36 <= 9)
  {
    v36 = 9;
  }

  if (v36 + 1 > v30)
  {
    v37 = v36 + 1;
  }

  else
  {
    v37 = v30;
  }

  if (v37 <= 9)
  {
    v38 = 9;
  }

  else
  {
    v38 = v37;
  }

  v39 = a1[v38];
  v40 = v39 - 4;
  if (v39 >= 4)
  {
    if (v38 <= 3)
    {
      v41 = v38;
    }

    else
    {
      v41 = 4;
    }

    switch(v41)
    {
      case 1:
        v42 = *a1;
        goto LABEL_45;
      case 2:
        v42 = *a1;
        goto LABEL_45;
      case 3:
        v42 = *a1 | (a1[2] << 16);
        goto LABEL_45;
      case 4:
        v42 = *a1;
LABEL_45:
        if (v38 < 4)
        {
          v42 |= v40 << (8 * v38);
        }

        v39 = v42 + 4;
        break;
      default:
        break;
    }
  }

  v43 = ~v11;
  v44 = v29 + 1;
  switch(v39)
  {
    case 0u:
      v117 = ~v116;
      (*(v103 + 8))(a1, v104);
      v45 = (&a1[v112] & v43);
      v46 = v45[v29];
      v47 = v46 - 10;
      if (v46 >= 0xA)
      {
        if (v29 <= 3)
        {
          v48 = v29;
        }

        else
        {
          v48 = 4;
        }

        switch(v48)
        {
          case 1:
            v49 = *v45;
            goto LABEL_87;
          case 2:
            v49 = *v45;
            goto LABEL_87;
          case 3:
            v49 = *v45 | (v45[2] << 16);
            goto LABEL_87;
          case 4:
            v49 = *v45;
LABEL_87:
            if (v29 < 4)
            {
              v46 = (v49 | (v47 << (8 * v29))) + 10;
            }

            else
            {
              v46 = v49 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v46)
      {
        case 0u:
          goto LABEL_96;
        case 1u:
          goto LABEL_107;
        case 2u:
          goto LABEL_100;
        case 3u:
          goto LABEL_101;
        case 4u:
          goto LABEL_97;
        case 5u:
          goto LABEL_108;
        case 6u:
          goto LABEL_109;
        case 7u:
          goto LABEL_102;
        case 8u:
          goto LABEL_114;
        case 9u:
          goto LABEL_98;
        default:
          goto LABEL_131;
      }

      goto LABEL_131;
    case 1u:
      v117 = ~v116;
      (*(v103 + 8))(a1, v104);
      v45 = (&a1[v112] & v43);
      v54 = v45[v29];
      v55 = v54 - 10;
      if (v54 >= 0xA)
      {
        if (v29 <= 3)
        {
          v56 = v29;
        }

        else
        {
          v56 = 4;
        }

        switch(v56)
        {
          case 1:
            v57 = *v45;
            goto LABEL_92;
          case 2:
            v57 = *v45;
            goto LABEL_92;
          case 3:
            v57 = *v45 | (v45[2] << 16);
            goto LABEL_92;
          case 4:
            v57 = *v45;
LABEL_92:
            if (v29 < 4)
            {
              v54 = (v57 | (v55 << (8 * v29))) + 10;
            }

            else
            {
              v54 = v57 + 10;
            }

            break;
          default:
            goto LABEL_95;
        }
      }

      break;
    case 2u:
      v50 = a1[v36];
      v51 = v50 - 2;
      if (v50 >= 2)
      {
        if (v36 <= 3)
        {
          v52 = v36;
        }

        else
        {
          v52 = 4;
        }

        switch(v52)
        {
          case 1:
            v53 = *a1;
            goto LABEL_74;
          case 2:
            v53 = *a1;
            goto LABEL_74;
          case 3:
            v53 = *a1 | (a1[2] << 16);
            goto LABEL_74;
          case 4:
            v53 = *a1;
LABEL_74:
            if (v36 < 4)
            {
              v50 = (v53 | (v51 << (8 * v36))) + 2;
            }

            else
            {
              v50 = v53 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v50 == 1)
      {
        goto LABEL_83;
      }

      if (!v50)
      {
        v121 = *(AssociatedTypeWitness - 8);
        if (!__swift_getEnumTagSinglePayload(a1, 1, AssociatedTypeWitness))
        {
          v58 = *(v121 + 8);

          v58(a1, v34);
        }
      }

      return;
    case 3u:
LABEL_83:
      v59 = *a1;

      return;
    default:
      return;
  }

LABEL_95:
  switch(v54)
  {
    case 0u:
LABEL_96:
      v61 = v99;
      v60 = v100;
      goto LABEL_99;
    case 1u:
LABEL_107:
      (*(v99 + 8))(v45, v100);
      v73 = *(&v45[v90] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_131;
    case 2u:
LABEL_100:
      v62 = *(v45 + 1);

      v63 = *(v45 + 2);
      goto LABEL_113;
    case 3u:
LABEL_101:
      v64 = *v45;
      swift_unknownObjectRelease();
      goto LABEL_131;
    case 4u:
LABEL_97:
      v61 = v97;
      v60 = v98;
      goto LABEL_99;
    case 5u:
LABEL_108:
      v74 = *v45;
      goto LABEL_130;
    case 6u:
LABEL_109:
      (*(v120 + 8))(v45, v102);
      v75 = &v45[v114] & v117;
      if (!__swift_getEnumTagSinglePayload(v75, 1, v101))
      {
        (*(v89 + 8))(v75, v101);
      }

      v72 = v110 + v75;
      goto LABEL_112;
    case 7u:
LABEL_102:
      (*(v120 + 8))(v45, v102);
      v65 = &v45[v114] & v117;
      if (!__swift_getEnumTagSinglePayload(v65, 1, v101))
      {
        (*(v89 + 8))(v65, v101);
      }

      v66 = 7;
      if (!v108)
      {
        v66 = 8;
      }

      v67 = *(((v95 + v66 + v65) & 0xFFFFFFFFFFFFFFF8) + 8);

      v68 = &v45[((((v106 + v96 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v69 = *(v68 + 8);

      v70 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
      v71 = *(v70 + 8);

      v72 = v70 + 23;
LABEL_112:
      v76 = *((v72 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_113:

      goto LABEL_131;
    case 8u:
LABEL_114:
      (*(v93 + 8))(v45, v94);
      v77 = &v45[v19 + 7] & 0xFFFFFFFFFFFFFFF8;
      v78 = *(v77 + 8);

      v79 = (v20 + v77) & ~v21;
      if (v23 == v26)
      {
        if (__swift_getEnumTagSinglePayload(v79, v23, v102))
        {
          goto LABEL_129;
        }

        v80 = v29 + 1;
        v81 = (v114 + v79) & v117;
        goto LABEL_125;
      }

      v81 = (v114 + v79) & v117;
      if (v88 == v26)
      {
        v80 = v29 + 1;
        v82 = v101;
        if (v108 < 2)
        {
LABEL_126:
          (*(v120 + 8))(v79, v102);
          if (!__swift_getEnumTagSinglePayload(v81, 1, v82))
          {
            (*(v89 + 8))(v81, v82);
          }

          v84 = *(((v110 + v81) & 0xFFFFFFFFFFFFFFF8) + 8);

          v44 = v80;
          goto LABEL_129;
        }

        v44 = v29 + 1;
        if (__swift_getEnumTagSinglePayload((v114 + v79) & v117, v108, v101) >= 2)
        {
          goto LABEL_129;
        }

LABEL_125:
        v82 = v101;
        goto LABEL_126;
      }

      v83 = *(((v110 + v81) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v83 >= 0xFFFFFFFF)
      {
        LODWORD(v83) = -1;
      }

      if ((v83 + 1) < 2)
      {
        v80 = v29 + 1;
        goto LABEL_125;
      }

LABEL_129:
      v74 = *((v17 + v79 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_130:

LABEL_131:
      v85 = &v45[v44 + 7];
      v87 = (v85 & 0xFFFFFFFFFFFFFFF8) + 15;
      v86 = *(v85 & 0xFFFFFFFFFFFFFFF8);

      if (*((v87 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v87 & 0xFFFFFFFFFFFFFFF8));
      }

      return;
    case 9u:
LABEL_98:
      v61 = v91;
      v60 = v92;
LABEL_99:
      (*(v61 + 8))(v45, v60);
      goto LABEL_131;
    default:
      goto LABEL_131;
  }
}

_BYTE *sub_1DCDBDCA0(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1DD0DB04C();
  v194 = *(v3 - 8);
  v195 = v3;
  v206 = *(v194 + 64);
  v191 = sub_1DD0DC76C();
  v202 = *(v191 - 8);
  v190 = v202;
  v4 = *(v202 + 80);
  v187 = sub_1DD0DB1EC();
  v204 = *(v187 - 8);
  v186 = v204;
  __na = *(v204 + 80) | v4;
  v193 = sub_1DD0DB4BC();
  v200 = *(v193 - 8);
  v212 = v200;
  v5 = *(v200 + 80) & 0xF8;
  v192 = sub_1DD0DB3EC();
  v6 = *(v192 - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v185 = sub_1DD0DD12C();
  v198 = *(v185 - 8);
  v184 = v198;
  v9 = *(v198 + 80);
  v183 = sub_1DD0DD08C();
  v10 = v202;
  v182 = *(v183 - 8);
  v11 = (__na | (v9 | *(v182 + 80))) & 0xF8 | v8;
  v203 = v206 + v11;
  v12 = (v206 + v11) & ~v11;
  v13 = *(v10 + 64);
  v181 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v204 + 64))
  {
    v13 = *(v204 + 64);
  }

  v205 = *(v200 + 64) + v7;
  v207 = v7;
  v177 = v6;
  v14 = *(v6 + 84);
  v15 = *(v6 + 64);
  if (v14)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v15 + 1;
  }

  __n = v16;
  v201 = v16 + 7;
  v188 = v205 & ~v7;
  v17 = (v16 + 7 + v188) & 0xFFFFFFFFFFFFFFF8;
  v189 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v189)
  {
    v13 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v17 + 31;
  if (v13 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v178 = *(v198 + 64);
  v179 = v8 + 16;
  v19 = v5 | v7 | 7;
  v176 = v14;
  v20 = v14 != 0;
  v21 = v14 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  v199 = *(v212 + 84);
  v175 = v21;
  if (v21 <= v199)
  {
    v21 = *(v212 + 84);
  }

  if (v21 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  v180 = v21;
  v22 = ((v18 + ((v8 + 16 + ((v178 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v22)
  {
    v13 = v22;
  }

  v23 = *(*(v183 - 8) + 64);
  if (v13 > v23)
  {
    v23 = v13;
  }

  if (v23 <= 0x18)
  {
    v23 = 24;
  }

  v24 = v23;
  v25 = ((((v23 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  if (*(v29 + 84))
  {
    v30 = *(v29 + 64);
  }

  else
  {
    v30 = *(v29 + 64) + 1;
  }

  if (v30 <= 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = v30;
  }

  if (v31 + 1 > v25)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = v25;
  }

  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  v34 = a2[v33];
  v35 = v34 - 4;
  if (v34 >= 4)
  {
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    switch(v36)
    {
      case 1:
        v37 = *a2;
        goto LABEL_45;
      case 2:
        v37 = *a2;
        goto LABEL_45;
      case 3:
        v37 = *a2 | (a2[2] << 16);
        goto LABEL_45;
      case 4:
        v37 = *a2;
LABEL_45:
        if (v33 < 4)
        {
          v37 |= v35 << (8 * v33);
        }

        v34 = v37 + 4;
        break;
      default:
        break;
    }
  }

  v210 = v15;
  v38 = ~v11;
  v39 = ~v207;
  v40 = ~v19;
  switch(v34)
  {
    case 0u:
      v41 = v24 + 1;
      v42 = v33;
      v43 = a1;
      (*(v194 + 16))(a1, a2, v195);
      v44 = (&a1[v203] & v38);
      v45 = (&a2[v203] & v38);
      v46 = v45[v24];
      v47 = v46 - 10;
      v48 = v24;
      if (v46 >= 0xA)
      {
        if (v24 <= 3)
        {
          v49 = v24;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v45;
            goto LABEL_92;
          case 2:
            v50 = *v45;
            goto LABEL_92;
          case 3:
            v50 = *v45 | (v45[2] << 16);
            goto LABEL_92;
          case 4:
            v50 = *v45;
LABEL_92:
            if (v24 < 4)
            {
              v46 = (v50 | (v47 << (8 * v24))) + 10;
            }

            else
            {
              v46 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v46)
      {
        case 0u:
          (*(v190 + 16))(v44, v45, v191);
          *(v44 + v24) = 0;
          goto LABEL_167;
        case 1u:
          (*(v190 + 16))(v44, v45, v191);
          *((v44 + v181) & 0xFFFFFFFFFFFFFFF8) = *(&v45[v181] & 0xFFFFFFFFFFFFFFF8);
          *(v44 + v24) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v44 = *v45;
          v44[1] = *(v45 + 1);
          v44[2] = *(v45 + 2);
          *(v44 + v24) = 2;

          goto LABEL_147;
        case 3u:
          *v44 = *v45;
          *(v44 + v24) = 3;
          swift_unknownObjectRetain();
          goto LABEL_167;
        case 4u:
          (*(v186 + 16))(v44, v45, v187);
          v71 = 4;
          goto LABEL_106;
        case 5u:
          v77 = *v45;
          *v44 = *v45;
          *(v44 + v24) = 5;
          v78 = v77;
          goto LABEL_167;
        case 6u:
          (*(v212 + 16))(v44, v45, v193);
          v81 = ((v44 + v205) & v39);
          v82 = (&v45[v205] & v39);
          if (__swift_getEnumTagSinglePayload(v82, 1, v192))
          {
            memcpy(v81, v82, __n);
          }

          else
          {
            (*(v177 + 16))(v81, v82, v192);
            __swift_storeEnumTagSinglePayload(v81, 0, 1, v192);
          }

          v127 = ((v81 + v201) & 0xFFFFFFFFFFFFFFF8);
          v128 = ((v82 + v201) & 0xFFFFFFFFFFFFFFF8);
          *v127 = *v128;
          v127[1] = v128[1];
          v129 = (v127 + 19) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v128 + 19) & 0xFFFFFFFFFFFFFFF8;
          v131 = *v130;
          *(v129 + 4) = *(v130 + 4);
          *v129 = v131;
          *(v44 + v24) = 6;
          goto LABEL_147;
        case 7u:
          (*(v212 + 16))(v44, v45, v193);
          v73 = ((v44 + v205) & v39);
          v74 = (&v45[v205] & v39);
          if (__swift_getEnumTagSinglePayload(v74, 1, v192))
          {
            memcpy(v73, v74, __n);
          }

          else
          {
            (*(v177 + 16))(v73, v74, v192);
            __swift_storeEnumTagSinglePayload(v73, 0, 1, v192);
          }

          v105 = ((v73 + v201) & 0xFFFFFFFFFFFFFFF8);
          v106 = ((v74 + v201) & 0xFFFFFFFFFFFFFFF8);
          *v105 = *v106;
          v105[1] = v106[1];
          v107 = (v105 + 19) & 0xFFFFFFFFFFFFFFF8;
          v108 = (v106 + 19) & 0xFFFFFFFFFFFFFFF8;
          v109 = *v108;
          *(v107 + 4) = *(v108 + 4);
          *v107 = v109;
          v110 = ((v44 + v189 + 7) & 0xFFFFFFFFFFFFFFF8);
          v111 = (&v45[v189 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v110 = *v111;
          v110[1] = v111[1];
          v112 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8);
          v113 = ((v111 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          v114 = ((v112 + 23) & 0xFFFFFFFFFFFFFFF8);
          v115 = ((v113 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v114 = *v115;
          v114[1] = v115[1];
          *(v44 + v24) = 7;

LABEL_147:

          goto LABEL_167;
        case 8u:
          (*(v184 + 16))(v44, v45, v185);
          v85 = ((v44 + v178 + 7) & 0xFFFFFFFFFFFFFFF8);
          v86 = (&v45[v178 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v85 = *v86;
          v85[1] = v86[1];
          v87 = ((v85 + v179) & v40);
          v88 = ((v86 + v179) & v40);

          if (v199 != v180)
          {
            v89 = v205;
            v92 = ((v88 + v205) & v39);
            if (v175 == v180)
            {
              if (v176 >= 2 && __swift_getEnumTagSinglePayload(v92, v176, v192) >= 2)
              {
                goto LABEL_136;
              }
            }

            else
            {
              v137 = *(((v92 + v201) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v137 >= 0xFFFFFFFF)
              {
                LODWORD(v137) = -1;
              }

              if ((v137 + 1) >= 2)
              {
                goto LABEL_136;
              }
            }

            v90 = v44;
            v93 = v212;
            v91 = ~v207;
            goto LABEL_155;
          }

          v89 = v205;
          if (__swift_getEnumTagSinglePayload(v88, v199, v193))
          {
LABEL_136:
            v90 = v44;
            memcpy(v87, v88, v189);
            v103 = v188;
LABEL_165:
            v146 = __n;
            goto LABEL_166;
          }

          v90 = v44;
          v91 = ~v207;
          v92 = ((v88 + v205) & v39);
          v93 = v212;
LABEL_155:
          (*(v93 + 16))(v87, v88, v193);
          v138 = ((v87 + v89) & v91);
          if (__swift_getEnumTagSinglePayload(v92, 1, v192))
          {
            memcpy(v138, v92, __n);
          }

          else
          {
            (*(v177 + 16))(v138, v92, v192);
            __swift_storeEnumTagSinglePayload(v138, 0, 1, v192);
          }

          v103 = v188;
          v141 = ((v138 + v201) & 0xFFFFFFFFFFFFFFF8);
          v142 = ((v92 + v201) & 0xFFFFFFFFFFFFFFF8);
          *v141 = *v142;
          v141[1] = v142[1];
          v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
          v144 = (v142 + 19) & 0xFFFFFFFFFFFFFFF8;
          v145 = *v144;
          *(v143 + 4) = *(v144 + 4);
          *v143 = v145;

          v146 = v210;
          if (!v176)
          {
            goto LABEL_165;
          }

LABEL_166:
          v147 = (((v103 + v146 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v148 = ((v87 + v147 + 7) & 0xFFFFFFFFFFFFFFF8);
          v149 = *((v88 + v147 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v148 = v149;
          v44 = v90;
          *(v90 + v48) = 8;
          v150 = v149;
          v43 = a1;
LABEL_167:
          v151 = (&v45[v41 + 7] & 0xFFFFFFFFFFFFFFF8);
          v152 = ((v44 + v41 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v151;
          v153 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
          v154 = (v151 + 15) & 0xFFFFFFFFFFFFFFF8;
          v155 = *(v154 + 24);

          if (v155 < 0xFFFFFFFF)
          {
            v156 = *v154;
            v157 = *(v154 + 16);
            *(v153 + 32) = *(v154 + 32);
            *v153 = v156;
            *(v153 + 16) = v157;
          }

          else
          {
            *(v153 + 24) = v155;
            *(v153 + 32) = *(v154 + 32);
            (**(v155 - 8))(v153, v154, v155);
          }

          *(v153 + 40) = *(v154 + 40);
          v43[v42] = 0;
          return v43;
        case 9u:
          (*(v182 + 16))(v44, v45, v183);
          v71 = 9;
LABEL_106:
          *(v44 + v24) = v71;
          goto LABEL_167;
        default:
          memcpy(v44, v45, v41);
          goto LABEL_167;
      }

    case 1u:
      v58 = v24 + 1;
      v59 = v33;
      v43 = a1;
      (*(v194 + 16))(a1, a2, v195);
      v60 = (&a1[v203] & v38);
      v61 = (&a2[v203] & v38);
      v62 = v61[v24];
      v63 = v62 - 10;
      v64 = v24;
      if (v62 >= 0xA)
      {
        if (v24 <= 3)
        {
          v65 = v24;
        }

        else
        {
          v65 = 4;
        }

        switch(v65)
        {
          case 1:
            v66 = *v61;
            goto LABEL_98;
          case 2:
            v66 = *v61;
            goto LABEL_98;
          case 3:
            v66 = *v61 | (v61[2] << 16);
            goto LABEL_98;
          case 4:
            v66 = *v61;
LABEL_98:
            if (v24 < 4)
            {
              v62 = (v66 | (v63 << (8 * v24))) + 10;
            }

            else
            {
              v62 = v66 + 10;
            }

            break;
          default:
            goto LABEL_101;
        }
      }

      break;
    case 2u:
      v51 = a2[v31];
      v52 = v51 - 2;
      if (v51 >= 2)
      {
        if (v31 <= 3)
        {
          v53 = v31;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *a2;
            goto LABEL_76;
          case 2:
            v54 = *a2;
            goto LABEL_76;
          case 3:
            v54 = *a2 | (a2[2] << 16);
            goto LABEL_76;
          case 4:
            v54 = *a2;
LABEL_76:
            if (v31 < 4)
            {
              v51 = (v54 | (v52 << (8 * v31))) + 2;
            }

            else
            {
              v51 = v54 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v51 == 1)
      {
        v69 = *a2;
        v70 = *a2;
        v43 = a1;
        *a1 = v69;
        a1[8] = a2[8];
        a1[v31] = 1;
      }

      else if (v51)
      {
        v43 = a1;
        memcpy(a1, a2, v31 + 1);
      }

      else
      {
        v68 = AssociatedTypeWitness;
        if (__swift_getEnumTagSinglePayload(a2, 1, AssociatedTypeWitness))
        {
          v43 = a1;
          memcpy(a1, a2, v30);
        }

        else
        {
          (*(v29 + 16))(a1, a2, v68);
          v43 = a1;
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v68);
        }

        v43[v31] = 0;
      }

      v57 = 2;
      goto LABEL_88;
    case 3u:
      v55 = *a2;
      v56 = *a2;
      v43 = a1;
      *a1 = v55;
      a1[8] = a2[8];
      v57 = 3;
LABEL_88:
      v43[v33] = v57;
      return v43;
    default:

      return memcpy(a1, a2, v33 + 1);
  }

LABEL_101:
  switch(v62)
  {
    case 0u:
      (*(v190 + 16))(v60, v61, v191);
      *(v60 + v24) = 0;
      goto LABEL_175;
    case 1u:
      (*(v190 + 16))(v60, v61, v191);
      *((v60 + v181) & 0xFFFFFFFFFFFFFFF8) = *(&v61[v181] & 0xFFFFFFFFFFFFFFF8);
      *(v60 + v24) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v60 = *v61;
      v60[1] = *(v61 + 1);
      v60[2] = *(v61 + 2);
      *(v60 + v24) = 2;

      goto LABEL_150;
    case 3u:
      *v60 = *v61;
      *(v60 + v24) = 3;
      swift_unknownObjectRetain();
      goto LABEL_175;
    case 4u:
      (*(v186 + 16))(v60, v61, v187);
      v72 = 4;
      goto LABEL_108;
    case 5u:
      v79 = *v61;
      *v60 = *v61;
      *(v60 + v24) = 5;
      v80 = v79;
      goto LABEL_175;
    case 6u:
      (*(v212 + 16))(v60, v61, v193);
      v83 = ((v60 + v205) & v39);
      v84 = (&v61[v205] & v39);
      if (__swift_getEnumTagSinglePayload(v84, 1, v192))
      {
        memcpy(v83, v84, __n);
      }

      else
      {
        (*(v177 + 16))(v83, v84, v192);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v192);
      }

      v132 = ((v83 + v201) & 0xFFFFFFFFFFFFFFF8);
      v133 = ((v84 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v132[1] = v133[1];
      v134 = (v132 + 19) & 0xFFFFFFFFFFFFFFF8;
      v135 = (v133 + 19) & 0xFFFFFFFFFFFFFFF8;
      v136 = *v135;
      *(v134 + 4) = *(v135 + 4);
      *v134 = v136;
      *(v60 + v24) = 6;
      goto LABEL_150;
    case 7u:
      (*(v212 + 16))(v60, v61, v193);
      v75 = ((v60 + v205) & v39);
      v76 = (&v61[v205] & v39);
      if (__swift_getEnumTagSinglePayload(v76, 1, v192))
      {
        memcpy(v75, v76, __n);
      }

      else
      {
        (*(v177 + 16))(v75, v76, v192);
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v192);
      }

      v116 = ((v75 + v201) & 0xFFFFFFFFFFFFFFF8);
      v117 = ((v76 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v116 = *v117;
      v116[1] = v117[1];
      v118 = (v116 + 19) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v117 + 19) & 0xFFFFFFFFFFFFFFF8;
      v120 = *v119;
      *(v118 + 4) = *(v119 + 4);
      *v118 = v120;
      v121 = ((v60 + v189 + 7) & 0xFFFFFFFFFFFFFFF8);
      v122 = (&v61[v189 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      v124 = ((v122 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v123 = *v124;
      v123[1] = v124[1];
      v125 = ((v123 + 23) & 0xFFFFFFFFFFFFFFF8);
      v126 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v125 = *v126;
      v125[1] = v126[1];
      *(v60 + v24) = 7;

LABEL_150:

      goto LABEL_175;
    case 8u:
      (*(v184 + 16))(v60, v61, v185);
      v94 = ((v60 + v178 + 7) & 0xFFFFFFFFFFFFFFF8);
      v95 = (&v61[v178 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v94 = *v95;
      v94[1] = v95[1];
      v96 = ((v94 + v179) & v40);
      v97 = ((v95 + v179) & v40);

      if (v199 == v180)
      {
        v98 = v205;
        if (!__swift_getEnumTagSinglePayload(v97, v199, v193))
        {
          v99 = v60;
          v100 = ~v207;
          v101 = ((v97 + v205) & v39);
          v102 = v212;
          goto LABEL_161;
        }

LABEL_140:
        v99 = v60;
        memcpy(v96, v97, v189);
        v104 = v188;
        goto LABEL_173;
      }

      v98 = v205;
      v101 = ((v97 + v205) & v39);
      if (v175 == v180)
      {
        if (v176 >= 2 && __swift_getEnumTagSinglePayload(v101, v176, v192) >= 2)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v139 = *(((v101 + v201) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v139 >= 0xFFFFFFFF)
        {
          LODWORD(v139) = -1;
        }

        if ((v139 + 1) >= 2)
        {
          goto LABEL_140;
        }
      }

      v99 = v60;
      v102 = v212;
      v100 = ~v207;
LABEL_161:
      (*(v102 + 16))(v96, v97, v193);
      v140 = ((v96 + v98) & v100);
      if (__swift_getEnumTagSinglePayload(v101, 1, v192))
      {
        memcpy(v140, v101, __n);
      }

      else
      {
        (*(v177 + 16))(v140, v101, v192);
        __swift_storeEnumTagSinglePayload(v140, 0, 1, v192);
      }

      v104 = v188;
      v158 = ((v140 + v201) & 0xFFFFFFFFFFFFFFF8);
      v159 = ((v101 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v158 = *v159;
      v158[1] = v159[1];
      v160 = (v158 + 19) & 0xFFFFFFFFFFFFFFF8;
      v161 = (v159 + 19) & 0xFFFFFFFFFFFFFFF8;
      v162 = *v161;
      *(v160 + 4) = *(v161 + 4);
      *v160 = v162;

      v163 = v210;
      if (v176)
      {
LABEL_174:
        v164 = (((v104 + v163 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v165 = ((v96 + v164 + 7) & 0xFFFFFFFFFFFFFFF8);
        v166 = *((v97 + v164 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v165 = v166;
        v60 = v99;
        *(v99 + v64) = 8;
        v167 = v166;
        v43 = a1;
LABEL_175:
        v168 = (&v61[v58 + 7] & 0xFFFFFFFFFFFFFFF8);
        v169 = ((v60 + v58 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v169 = *v168;
        v170 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
        v171 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
        v172 = *(v171 + 24);

        if (v172 < 0xFFFFFFFF)
        {
          v173 = *v171;
          v174 = *(v171 + 16);
          *(v170 + 32) = *(v171 + 32);
          *v170 = v173;
          *(v170 + 16) = v174;
        }

        else
        {
          *(v170 + 24) = v172;
          *(v170 + 32) = *(v171 + 32);
          (**(v172 - 8))(v170, v171, v172);
        }

        *(v170 + 40) = *(v171 + 40);
        v43[v59] = 1;
        return v43;
      }

LABEL_173:
      v163 = __n;
      goto LABEL_174;
    case 9u:
      (*(v182 + 16))(v60, v61, v183);
      v72 = 9;
LABEL_108:
      *(v60 + v24) = v72;
      goto LABEL_175;
    default:
      memcpy(v60, v61, v58);
      goto LABEL_175;
  }
}

unsigned __int8 *sub_1DCDBF238(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = sub_1DD0DB04C();
  v232 = *(v4 - 8);
  v233 = v4;
  v243 = *(v232 + 64);
  v229 = sub_1DD0DC76C();
  v239 = *(v229 - 8);
  v228 = v239;
  v5 = *(v239 + 80);
  v223 = sub_1DD0DB1EC();
  v241 = *(v223 - 8);
  v222 = v241;
  v234 = *(v241 + 80) | v5;
  v230 = sub_1DD0DB4BC();
  v238 = *(v230 - 8);
  v6 = *(v238 + 80) & 0xF8;
  v231 = sub_1DD0DB3EC();
  v7 = *(v231 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v6 | v9 | 7;
  v221 = sub_1DD0DD12C();
  v236 = *(v221 - 8);
  v220 = v236;
  v11 = *(v236 + 80);
  v219 = sub_1DD0DD08C();
  v217 = *(v219 - 8);
  v12 = (v234 | (v11 | *(v217 + 80))) & 0xF8 | v10;
  v244 = v243 + v12;
  v13 = *(v239 + 64);
  v216 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v241 + 64))
  {
    v13 = *(v241 + 64);
  }

  v240 = *(v238 + 64) + v9;
  v14 = v9;
  v211 = v7;
  v15 = *(v7 + 84);
  v16 = *(v7 + 64);
  v210 = v16;
  if (!v15)
  {
    ++v16;
  }

  v227 = v16;
  v235 = v16 + 7;
  v224 = v240 & ~v9;
  v17 = (v16 + 7 + v224) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v18)
  {
    v13 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  if (v13 <= (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v213 = *(v236 + 64);
  v214 = v10 + 16;
  v20 = v6 | v9 | 7;
  v225 = *(v8 + 84);
  v21 = v15 != 0;
  v22 = v15 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  v218 = *(v238 + 84);
  v208 = v22;
  if (v22 <= v218)
  {
    v22 = *(v238 + 84);
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  v215 = v22;
  v23 = ((v19 + ((v10 + 16 + ((v213 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v23)
  {
    v13 = v23;
  }

  v24 = *(*(v219 - 8) + 64);
  if (v13 > v24)
  {
    v24 = v13;
  }

  if (v24 <= 0x18)
  {
    v25 = 24;
  }

  else
  {
    v25 = v24;
  }

  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v209 = v29;
  if (*(v29 + 84))
  {
    v30 = *(v29 + 64);
  }

  else
  {
    v30 = *(v29 + 64) + 1;
  }

  if (v30 <= 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = v30;
  }

  if (v31 + 1 > ((((v25 + (v244 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = ((((v25 + (v244 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  v34 = a1[v33];
  v35 = v34 - 4;
  if (v34 >= 4)
  {
    if (v33 <= 3)
    {
      v36 = v33;
    }

    else
    {
      v36 = 4;
    }

    switch(v36)
    {
      case 1:
        v37 = *a1;
        goto LABEL_46;
      case 2:
        v37 = *a1;
        goto LABEL_46;
      case 3:
        v37 = *a1 | (a1[2] << 16);
        goto LABEL_46;
      case 4:
        v37 = *a1;
LABEL_46:
        if (v33 < 4)
        {
          v37 |= v35 << (8 * v33);
        }

        v34 = v37 + 4;
        break;
      default:
        break;
    }
  }

  v237 = AssociatedTypeWitness;
  v246 = v25 + 1;
  v242 = ~v12;
  v38 = ~v14;
  v212 = ~v20;
  v226 = 8 * v31;
  v39 = a2;
  switch(v34)
  {
    case 0u:
      (*(v232 + 8))(a1, v233);
      v40 = v25;
      v41 = (&a1[v244] & v242);
      v42 = v41[v40];
      v43 = v42 - 10;
      if (v42 < 0xA)
      {
        v45 = v40;
      }

      else
      {
        if (v40 <= 3)
        {
          v44 = v40;
        }

        else
        {
          v44 = 4;
        }

        v45 = v40;
        switch(v44)
        {
          case 1:
            v46 = *v41;
            goto LABEL_86;
          case 2:
            v46 = *v41;
            goto LABEL_86;
          case 3:
            v46 = *v41 | (*((&a1[v244] & v242) + 2) << 16);
            goto LABEL_86;
          case 4:
            v46 = *v41;
LABEL_86:
            if (v40 < 4)
            {
              v42 = (v46 | (v43 << (8 * v40))) + 10;
            }

            else
            {
              v42 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v42)
      {
        case 0u:
          goto LABEL_95;
        case 1u:
          goto LABEL_106;
        case 2u:
          goto LABEL_99;
        case 3u:
          goto LABEL_100;
        case 4u:
          goto LABEL_96;
        case 5u:
          goto LABEL_107;
        case 6u:
          goto LABEL_108;
        case 7u:
          goto LABEL_101;
        case 8u:
          goto LABEL_112;
        case 9u:
          goto LABEL_98;
        default:
          goto LABEL_127;
      }

      goto LABEL_127;
    case 1u:
      (*(v232 + 8))(a1, v233);
      v51 = v25;
      v41 = (&a1[v244] & v242);
      v52 = v41[v51];
      v53 = v52 - 10;
      if (v52 < 0xA)
      {
        v45 = v51;
      }

      else
      {
        if (v51 <= 3)
        {
          v54 = v51;
        }

        else
        {
          v54 = 4;
        }

        v45 = v51;
        switch(v54)
        {
          case 1:
            v55 = *v41;
            goto LABEL_91;
          case 2:
            v55 = *v41;
            goto LABEL_91;
          case 3:
            v55 = *v41 | (*((&a1[v244] & v242) + 2) << 16);
            goto LABEL_91;
          case 4:
            v55 = *v41;
LABEL_91:
            if (v51 < 4)
            {
              v52 = (v55 | (v53 << (8 * v51))) + 10;
            }

            else
            {
              v52 = v55 + 10;
            }

            break;
          default:
            goto LABEL_94;
        }
      }

      break;
    case 2u:
      v47 = a1[v31];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v31 <= 3)
        {
          v49 = v31;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *a1;
            goto LABEL_77;
          case 2:
            v50 = *a1;
            goto LABEL_77;
          case 3:
            v50 = *a1 | (a1[2] << 16);
            goto LABEL_77;
          case 4:
            v50 = *a1;
LABEL_77:
            if (v31 < 4)
            {
              v47 = (v50 | (v48 << v226)) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_84;
      }

      if (!v47 && !__swift_getEnumTagSinglePayload(a1, 1, AssociatedTypeWitness))
      {
        (*(v209 + 8))(a1, v237);
      }

      goto LABEL_129;
    case 3u:
LABEL_84:

      goto LABEL_129;
    default:
      goto LABEL_129;
  }

LABEL_94:
  switch(v52)
  {
    case 0u:
LABEL_95:
      v57 = v228;
      v56 = v229;
      goto LABEL_97;
    case 1u:
LABEL_106:
      (*(v228 + 8))(v41, v229);
      v69 = *(&v41[v216] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_127;
    case 2u:
LABEL_99:
      v58 = *(v41 + 1);

      v59 = *(v41 + 2);
      goto LABEL_111;
    case 3u:
LABEL_100:
      v60 = *v41;
      swift_unknownObjectRelease();
      goto LABEL_127;
    case 4u:
LABEL_96:
      v57 = v222;
      v56 = v223;
LABEL_97:
      (*(v57 + 8))(v41, v56);
      goto LABEL_127;
    case 5u:
LABEL_107:
      v70 = *v41;
      goto LABEL_126;
    case 6u:
LABEL_108:
      (*(v238 + 8))(v41, v230);
      v71 = &v41[v240] & v38;
      if (!__swift_getEnumTagSinglePayload(v71, 1, v231))
      {
        (*(v211 + 8))(v71, v231);
      }

      v72 = *(((v235 + v71) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_111:

      goto LABEL_127;
    case 7u:
LABEL_101:
      (*(v238 + 8))(v41, v230);
      v61 = &v41[v240] & v38;
      if (!__swift_getEnumTagSinglePayload(v61, 1, v231))
      {
        (*(v211 + 8))(v61, v231);
      }

      v62 = 7;
      if (!v225)
      {
        v62 = 8;
      }

      v63 = *(((v210 + v62 + v61) & 0xFFFFFFFFFFFFFFF8) + 8);

      v64 = &v41[((((v224 + v227 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v65 = *(v64 + 8);

      v66 = (v64 + 23) & 0xFFFFFFFFFFFFFFF8;
      v67 = *(v66 + 8);

      v68 = *(((v66 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

      v38 = ~v14;
      goto LABEL_127;
    case 8u:
LABEL_112:
      v207 = ~v14;
      (*(v220 + 8))(v41, v221);
      v73 = &v41[v213 + 7] & 0xFFFFFFFFFFFFFFF8;
      v74 = *(v73 + 8);

      v75 = (v214 + v73) & v212;
      if (v218 == v215)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v214 + v73) & v212, v218, v230);
        v38 = v207;
        if (EnumTagSinglePayload)
        {
          goto LABEL_125;
        }

        v77 = (v240 + v75) & v207;
        goto LABEL_122;
      }

      v38 = v207;
      v77 = (v240 + v75) & v207;
      if (v208 == v215)
      {
        if (v225 >= 2 && __swift_getEnumTagSinglePayload((v240 + v75) & v207, v225, v231) >= 2)
        {
          goto LABEL_125;
        }

        goto LABEL_122;
      }

      v78 = *(((v235 + v77) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v78 >= 0xFFFFFFFF)
      {
        LODWORD(v78) = -1;
      }

      if ((v78 + 1) < 2)
      {
LABEL_122:
        (*(v238 + 8))(v75, v230);
        if (!__swift_getEnumTagSinglePayload(v77, 1, v231))
        {
          (*(v211 + 8))(v77, v231);
        }

        v79 = *(((v235 + v77) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_125:
      v70 = *((v18 + v75 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_126:

LABEL_127:
      v80 = &v41[v246 + 7];
      v81 = v38;
      v83 = (v80 & 0xFFFFFFFFFFFFFFF8) + 15;
      v82 = *(v80 & 0xFFFFFFFFFFFFFFF8);

      v84 = (v83 & 0xFFFFFFFFFFFFFFF8);
      v38 = v81;
      v25 = v45;
      v39 = a2;
      if (v84[3] >= 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
      }

LABEL_129:
      v85 = v39[v33];
      v86 = v85 - 4;
      if (v85 >= 4)
      {
        if (v33 <= 3)
        {
          v87 = v33;
        }

        else
        {
          v87 = 4;
        }

        switch(v87)
        {
          case 1:
            v88 = *v39;
            goto LABEL_138;
          case 2:
            v88 = *v39;
            goto LABEL_138;
          case 3:
            v88 = *v39 | (v39[2] << 16);
            goto LABEL_138;
          case 4:
            v88 = *v39;
LABEL_138:
            if (v33 < 4)
            {
              v85 = (v88 | (v86 << (8 * v33))) + 4;
            }

            else
            {
              v85 = v88 + 4;
            }

            break;
          default:
            goto LABEL_141;
        }
      }

      break;
    case 9u:
LABEL_98:
      (*(v217 + 8))(v41, v219);
      goto LABEL_127;
    default:
      goto LABEL_127;
  }

LABEL_141:
  switch(v85)
  {
    case 0u:
      (*(v232 + 16))(a1, v39, v233);
      v89 = (&a1[v244] & v242);
      v90 = (&v39[v244] & v242);
      v91 = v90[v25];
      v92 = v91 - 10;
      if (v91 >= 0xA)
      {
        if (v25 <= 3)
        {
          v93 = v25;
        }

        else
        {
          v93 = 4;
        }

        switch(v93)
        {
          case 1:
            v94 = *v90;
            goto LABEL_184;
          case 2:
            v94 = *v90;
            goto LABEL_184;
          case 3:
            v94 = *v90 | (*((&v39[v244] & v242) + 2) << 16);
            goto LABEL_184;
          case 4:
            v94 = *v90;
LABEL_184:
            if (v25 < 4)
            {
              v91 = (v94 | (v92 << (8 * v25))) + 10;
            }

            else
            {
              v91 = v94 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v91)
      {
        case 0u:
          (*(v228 + 16))(&a1[v244] & v242, &v39[v244] & v242, v229);
          *(v89 + v25) = 0;
          goto LABEL_260;
        case 1u:
          (*(v228 + 16))(&a1[v244] & v242, &v39[v244] & v242, v229);
          *((v89 + v216) & 0xFFFFFFFFFFFFFFF8) = *(&v90[v216] & 0xFFFFFFFFFFFFFFF8);
          *(v89 + v25) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v89 = *v90;
          *((&a1[v244] & v242) + 8) = *((&v39[v244] & v242) + 8);
          *((&a1[v244] & v242) + 0x10) = *((&v39[v244] & v242) + 0x10);
          *(v89 + v25) = 2;

          goto LABEL_239;
        case 3u:
          *v89 = *v90;
          *(v89 + v25) = 3;
          swift_unknownObjectRetain();
          goto LABEL_260;
        case 4u:
          (*(v222 + 16))(&a1[v244] & v242, &v39[v244] & v242, v223);
          v111 = 4;
          goto LABEL_198;
        case 5u:
          v117 = *v90;
          *v89 = *v90;
          v118 = 5;
          goto LABEL_259;
        case 6u:
          (*(v238 + 16))(&a1[v244] & v242, &v39[v244] & v242, v230);
          v121 = ((v89 + v240) & v38);
          v122 = (&v90[v240] & v38);
          if (__swift_getEnumTagSinglePayload(v122, 1, v231))
          {
            memcpy(v121, v122, v227);
          }

          else
          {
            (*(v211 + 16))(v121, v122, v231);
            __swift_storeEnumTagSinglePayload(v121, 0, 1, v231);
          }

          v161 = ((v121 + v235) & 0xFFFFFFFFFFFFFFF8);
          v162 = ((v122 + v235) & 0xFFFFFFFFFFFFFFF8);
          *v161 = *v162;
          v161[1] = v162[1];
          v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
          v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
          v165 = *v164;
          *(v163 + 4) = *(v164 + 4);
          *v163 = v165;
          *(v89 + v25) = 6;
          goto LABEL_239;
        case 7u:
          (*(v238 + 16))(&a1[v244] & v242, &v39[v244] & v242, v230);
          v113 = ((v89 + v240) & v38);
          v114 = (&v90[v240] & v38);
          if (__swift_getEnumTagSinglePayload(v114, 1, v231))
          {
            memcpy(v113, v114, v227);
          }

          else
          {
            (*(v211 + 16))(v113, v114, v231);
            __swift_storeEnumTagSinglePayload(v113, 0, 1, v231);
          }

          v139 = ((v113 + v235) & 0xFFFFFFFFFFFFFFF8);
          v140 = ((v114 + v235) & 0xFFFFFFFFFFFFFFF8);
          *v139 = *v140;
          v139[1] = v140[1];
          v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
          v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
          v143 = *v142;
          *(v141 + 4) = *(v142 + 4);
          *v141 = v143;
          v144 = ((v89 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
          v145 = (&v90[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          v144[1] = v145[1];
          v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
          v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v148 = *v149;
          v148[1] = v149[1];
          *(v89 + v25) = 7;

LABEL_239:

          goto LABEL_260;
        case 8u:
          (*(v220 + 16))(&a1[v244] & v242, &v39[v244] & v242, v221);
          v125 = ((v89 + v213 + 7) & 0xFFFFFFFFFFFFFFF8);
          v126 = (&v90[v213 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v125[1] = v126[1];
          v127 = ((v125 + v214) & v212);
          v128 = ((v126 + v214) & v212);

          if (v218 != v215)
          {
            v131 = ((v128 + v240) & v38);
            if (v208 == v215)
            {
              if (v225 >= 2 && __swift_getEnumTagSinglePayload((v128 + v240) & v38, v225, v231) >= 2)
              {
                goto LABEL_228;
              }
            }

            else
            {
              v171 = *(((v131 + v235) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v171 >= 0xFFFFFFFF)
              {
                LODWORD(v171) = -1;
              }

              if ((v171 + 1) >= 2)
              {
                goto LABEL_228;
              }
            }

            v129 = v38;
            v130 = v240;
            goto LABEL_247;
          }

          if (__swift_getEnumTagSinglePayload(v128, v218, v230))
          {
LABEL_228:
            memcpy(v127, v128, v18);
LABEL_257:
            v175 = v227;
            goto LABEL_258;
          }

          v129 = v38;
          v130 = v240;
          v131 = ((v128 + v240) & v129);
LABEL_247:
          (*(v238 + 16))(v127, v128, v230);
          v172 = ((v127 + v130) & v129);
          if (__swift_getEnumTagSinglePayload(v131, 1, v231))
          {
            memcpy(v172, v131, v227);
          }

          else
          {
            (*(v211 + 16))(v172, v131, v231);
            __swift_storeEnumTagSinglePayload(v172, 0, 1, v231);
          }

          v175 = v210;
          v176 = ((v172 + v235) & 0xFFFFFFFFFFFFFFF8);
          v177 = ((v131 + v235) & 0xFFFFFFFFFFFFFFF8);
          *v176 = *v177;
          v176[1] = v177[1];
          v178 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
          v179 = (v177 + 19) & 0xFFFFFFFFFFFFFFF8;
          v180 = *v179;
          *(v178 + 4) = *(v179 + 4);
          *v178 = v180;

          if (!v225)
          {
            goto LABEL_257;
          }

LABEL_258:
          v181 = (((v224 + v175 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v182 = ((v127 + v181 + 7) & 0xFFFFFFFFFFFFFFF8);
          v117 = *((v128 + v181 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v182 = v117;
          v118 = 8;
LABEL_259:
          *(v89 + v25) = v118;
          v183 = v117;
LABEL_260:
          v184 = (&v90[v246 + 7] & 0xFFFFFFFFFFFFFFF8);
          v185 = ((v89 + v246 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v185 = *v184;
          v186 = (v185 + 15) & 0xFFFFFFFFFFFFFFF8;
          v187 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
          v188 = *(v187 + 24);

          if (v188 < 0xFFFFFFFF)
          {
            v189 = *v187;
            v190 = *(v187 + 16);
            *(v186 + 32) = *(v187 + 32);
            *v186 = v189;
            *(v186 + 16) = v190;
          }

          else
          {
            *(v186 + 24) = v188;
            *(v186 + 32) = *(v187 + 32);
            (**(v188 - 8))(v186, v187, v188);
          }

          *(v186 + 40) = *(v187 + 40);
          a1[v33] = 0;
          return a1;
        case 9u:
          (*(v217 + 16))(&a1[v244] & v242, &v39[v244] & v242, v219);
          v111 = 9;
LABEL_198:
          *(v89 + v25) = v111;
          goto LABEL_260;
        default:
          memcpy((&a1[v244] & v242), (&v39[v244] & v242), v246);
          goto LABEL_260;
      }

    case 1u:
      (*(v232 + 16))(a1, v39, v233);
      v102 = (&a1[v244] & v242);
      v103 = (&v39[v244] & v242);
      v104 = v103[v25];
      v105 = v104 - 10;
      if (v104 >= 0xA)
      {
        if (v25 <= 3)
        {
          v106 = v25;
        }

        else
        {
          v106 = 4;
        }

        switch(v106)
        {
          case 1:
            v107 = *v103;
            goto LABEL_190;
          case 2:
            v107 = *v103;
            goto LABEL_190;
          case 3:
            v107 = *v103 | (*((&v39[v244] & v242) + 2) << 16);
            goto LABEL_190;
          case 4:
            v107 = *v103;
LABEL_190:
            if (v25 < 4)
            {
              v104 = (v107 | (v105 << (8 * v25))) + 10;
            }

            else
            {
              v104 = v107 + 10;
            }

            break;
          default:
            goto LABEL_193;
        }
      }

      break;
    case 2u:
      v95 = v39[v31];
      v96 = v95 - 2;
      if (v95 >= 2)
      {
        if (v31 <= 3)
        {
          v97 = v31;
        }

        else
        {
          v97 = 4;
        }

        switch(v97)
        {
          case 1:
            v98 = *v39;
            goto LABEL_169;
          case 2:
            v98 = *v39;
            goto LABEL_169;
          case 3:
            v98 = *v39 | (v39[2] << 16);
            goto LABEL_169;
          case 4:
            v98 = *v39;
LABEL_169:
            if (v31 < 4)
            {
              v95 = (v98 | (v96 << v226)) + 2;
            }

            else
            {
              v95 = v98 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v95 == 1)
      {
        v109 = *v39;
        v110 = *v39;
        *a1 = v109;
        a1[8] = v39[8];
        a1[v31] = 1;
      }

      else if (v95)
      {
        memcpy(a1, v39, v31 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(v39, 1, v237))
        {
          memcpy(a1, v39, v30);
        }

        else
        {
          (*(v209 + 16))(a1, v39, v237);
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v237);
        }

        a1[v31] = 0;
      }

      v101 = 2;
      goto LABEL_273;
    case 3u:
      v99 = *v39;
      v100 = *v39;
      *a1 = v99;
      a1[8] = v39[8];
      v101 = 3;
      goto LABEL_273;
    default:

      return memcpy(a1, v39, v33 + 1);
  }

LABEL_193:
  switch(v104)
  {
    case 0u:
      (*(v228 + 16))(&a1[v244] & v242, &v39[v244] & v242, v229);
      *(v102 + v25) = 0;
      goto LABEL_269;
    case 1u:
      (*(v228 + 16))(&a1[v244] & v242, &v39[v244] & v242, v229);
      *((v102 + v216) & 0xFFFFFFFFFFFFFFF8) = *(&v103[v216] & 0xFFFFFFFFFFFFFFF8);
      *(v102 + v25) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v102 = *v103;
      *((&a1[v244] & v242) + 8) = *((&v39[v244] & v242) + 8);
      *((&a1[v244] & v242) + 0x10) = *((&v39[v244] & v242) + 0x10);
      *(v102 + v25) = 2;

      goto LABEL_242;
    case 3u:
      *v102 = *v103;
      *(v102 + v25) = 3;
      swift_unknownObjectRetain();
      goto LABEL_269;
    case 4u:
      (*(v222 + 16))(&a1[v244] & v242, &v39[v244] & v242, v223);
      v112 = 4;
      goto LABEL_200;
    case 5u:
      v119 = *v103;
      *v102 = *v103;
      v120 = 5;
      goto LABEL_268;
    case 6u:
      (*(v238 + 16))(&a1[v244] & v242, &v39[v244] & v242, v230);
      v123 = ((v102 + v240) & v38);
      v124 = (&v103[v240] & v38);
      if (__swift_getEnumTagSinglePayload(v124, 1, v231))
      {
        memcpy(v123, v124, v227);
      }

      else
      {
        (*(v211 + 16))(v123, v124, v231);
        __swift_storeEnumTagSinglePayload(v123, 0, 1, v231);
      }

      v166 = ((v123 + v235) & 0xFFFFFFFFFFFFFFF8);
      v167 = ((v124 + v235) & 0xFFFFFFFFFFFFFFF8);
      *v166 = *v167;
      v166[1] = v167[1];
      v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
      v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
      v170 = *v169;
      *(v168 + 4) = *(v169 + 4);
      *v168 = v170;
      *(v102 + v25) = 6;
      goto LABEL_242;
    case 7u:
      (*(v238 + 16))(&a1[v244] & v242, &v39[v244] & v242, v230);
      v115 = ((v102 + v240) & v38);
      v116 = (&v103[v240] & v38);
      if (__swift_getEnumTagSinglePayload(v116, 1, v231))
      {
        memcpy(v115, v116, v227);
      }

      else
      {
        (*(v211 + 16))(v115, v116, v231);
        __swift_storeEnumTagSinglePayload(v115, 0, 1, v231);
      }

      v150 = ((v115 + v235) & 0xFFFFFFFFFFFFFFF8);
      v151 = ((v116 + v235) & 0xFFFFFFFFFFFFFFF8);
      *v150 = *v151;
      v150[1] = v151[1];
      v152 = (v150 + 19) & 0xFFFFFFFFFFFFFFF8;
      v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
      v154 = *v153;
      *(v152 + 4) = *(v153 + 4);
      *v152 = v154;
      v155 = ((v102 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v156 = (&v103[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v155 = *v156;
      v155[1] = v156[1];
      v157 = ((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      v159[1] = v160[1];
      *(v102 + v25) = 7;

LABEL_242:

      goto LABEL_269;
    case 8u:
      (*(v220 + 16))(&a1[v244] & v242, &v39[v244] & v242, v221);
      v132 = ((v102 + v213 + 7) & 0xFFFFFFFFFFFFFFF8);
      v133 = (&v103[v213 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v132[1] = v133[1];
      v134 = ((v132 + v214) & v212);
      v135 = ((v133 + v214) & v212);

      if (v218 == v215)
      {
        if (!__swift_getEnumTagSinglePayload(v135, v218, v230))
        {
          v136 = v38;
          v137 = v240;
          v138 = ((v135 + v240) & v136);
          goto LABEL_253;
        }

LABEL_232:
        memcpy(v134, v135, v18);
        goto LABEL_266;
      }

      v138 = ((v135 + v240) & v38);
      if (v208 == v215)
      {
        if (v225 >= 2 && __swift_getEnumTagSinglePayload((v135 + v240) & v38, v225, v231) >= 2)
        {
          goto LABEL_232;
        }
      }

      else
      {
        v173 = *(((v138 + v235) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v173 >= 0xFFFFFFFF)
        {
          LODWORD(v173) = -1;
        }

        if ((v173 + 1) >= 2)
        {
          goto LABEL_232;
        }
      }

      v136 = v38;
      v137 = v240;
LABEL_253:
      (*(v238 + 16))(v134, v135, v230);
      v174 = ((v134 + v137) & v136);
      if (__swift_getEnumTagSinglePayload(v138, 1, v231))
      {
        memcpy(v174, v138, v227);
      }

      else
      {
        (*(v211 + 16))(v174, v138, v231);
        __swift_storeEnumTagSinglePayload(v174, 0, 1, v231);
      }

      v191 = v210;
      v192 = ((v174 + v235) & 0xFFFFFFFFFFFFFFF8);
      v193 = ((v138 + v235) & 0xFFFFFFFFFFFFFFF8);
      *v192 = *v193;
      v192[1] = v193[1];
      v194 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
      v195 = (v193 + 19) & 0xFFFFFFFFFFFFFFF8;
      v196 = *v195;
      *(v194 + 4) = *(v195 + 4);
      *v194 = v196;

      if (v225)
      {
LABEL_267:
        v197 = (((v224 + v191 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v198 = ((v134 + v197 + 7) & 0xFFFFFFFFFFFFFFF8);
        v119 = *((v135 + v197 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v198 = v119;
        v120 = 8;
LABEL_268:
        *(v102 + v25) = v120;
        v199 = v119;
LABEL_269:
        v200 = (&v103[v246 + 7] & 0xFFFFFFFFFFFFFFF8);
        v201 = ((v102 + v246 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v201 = *v200;
        v202 = (v201 + 15) & 0xFFFFFFFFFFFFFFF8;
        v203 = (v200 + 15) & 0xFFFFFFFFFFFFFFF8;
        v204 = *(v203 + 24);

        if (v204 < 0xFFFFFFFF)
        {
          v205 = *v203;
          v206 = *(v203 + 16);
          *(v202 + 32) = *(v203 + 32);
          *v202 = v205;
          *(v202 + 16) = v206;
        }

        else
        {
          *(v202 + 24) = v204;
          *(v202 + 32) = *(v203 + 32);
          (**(v204 - 8))(v202, v203, v204);
        }

        *(v202 + 40) = *(v203 + 40);
        v101 = 1;
LABEL_273:
        a1[v33] = v101;
        return a1;
      }

LABEL_266:
      v191 = v227;
      goto LABEL_267;
    case 9u:
      (*(v217 + 16))(&a1[v244] & v242, &v39[v244] & v242, v219);
      v112 = 9;
LABEL_200:
      *(v102 + v25) = v112;
      goto LABEL_269;
    default:
      memcpy((&a1[v244] & v242), (&v39[v244] & v242), v246);
      goto LABEL_269;
  }
}

_BYTE *sub_1DCDC0E1C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v185 = *(sub_1DD0DB04C() - 8);
  v196 = *(v185 + 64);
  v182 = sub_1DD0DC76C();
  v192 = *(v182 - 8);
  v181 = v192;
  v3 = *(v192 + 80);
  v176 = sub_1DD0DB1EC();
  v194 = *(v176 - 8);
  v175 = v194;
  v186 = *(v194 + 80) | v3;
  v184 = sub_1DD0DB4BC();
  v190 = *(v184 - 8);
  v205 = v190;
  v4 = *(v190 + 80) & 0xF8;
  v183 = sub_1DD0DB3EC();
  v5 = *(v183 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v174 = sub_1DD0DD12C();
  v188 = *(v174 - 8);
  v173 = v188;
  v8 = *(v188 + 80);
  v172 = sub_1DD0DD08C();
  v9 = v192;
  v171 = *(v172 - 8);
  v10 = (v186 | (v8 | *(v171 + 80))) & 0xF8 | v7;
  v193 = v196 + v10;
  v11 = (v196 + v10) & ~v10;
  v12 = *(v9 + 64);
  v170 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v194 + 64))
  {
    v12 = *(v194 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v195 = *(v190 + 64) + v6;
  v197 = v6;
  v165 = v5;
  v14 = *(v5 + 84);
  v15 = *(v5 + 64);
  v163 = v15;
  if (!v14)
  {
    ++v15;
  }

  v191 = v15;
  v16 = v15 + 7;
  v177 = v195 & ~v6;
  v17 = (v15 + 7 + v177) & 0xFFFFFFFFFFFFFFF8;
  v180 = v13;
  v187 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v187 <= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  v179 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v179 > v18)
  {
    v18 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v166 = *(v188 + 64);
  v167 = v7 + 16;
  v20 = v4 | v6 | 7;
  v164 = *(v5 + 84);
  v21 = v14 != 0;
  v22 = v14 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  v169 = *(v205 + 84);
  v162 = v22;
  if (v22 <= v169)
  {
    v22 = *(v205 + 84);
  }

  if (v22 <= 0x7FFFFFFE)
  {
    v22 = 2147483646;
  }

  v168 = v22;
  v23 = ((v19 + ((v7 + 16 + ((v166 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v189 = v23;
  if (v23 <= v18)
  {
    v23 = v18;
  }

  v178 = *(*(v172 - 8) + 64);
  if (v178 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(*(v172 - 8) + 64);
  }

  v25 = ((((v24 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v27 = *(a3 + 16);
  v26 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v30 = *(AssociatedTypeWitness - 8);
  if (*(v30 + 84))
  {
    v31 = *(v30 + 64);
  }

  else
  {
    v31 = *(v30 + 64) + 1;
  }

  if (v31 <= 9)
  {
    v32 = 9;
  }

  else
  {
    v32 = v31;
  }

  if (v32 + 1 > v25)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v25;
  }

  if (v33 <= 9)
  {
    v34 = 9;
  }

  else
  {
    v34 = v33;
  }

  v35 = a2[v34];
  v36 = v35 - 4;
  if (v35 >= 4)
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    switch(v37)
    {
      case 1:
        v38 = *a2;
        goto LABEL_47;
      case 2:
        v38 = *a2;
        goto LABEL_47;
      case 3:
        v38 = *a2 | (a2[2] << 16);
        goto LABEL_47;
      case 4:
        v38 = *a2;
LABEL_47:
        if (v34 < 4)
        {
          v38 |= v36 << (8 * v34);
        }

        v35 = v38 + 4;
        break;
      default:
        break;
    }
  }

  v39 = ~v10;
  v40 = ~v20;
  switch(v35)
  {
    case 0u:
      v41 = v34;
      v42 = ~v197;
      v199 = v16;
      v43 = v24 + 1;
      v44 = a1;
      (*(v185 + 32))(a1);
      v45 = (&a1[v193] & v39);
      v46 = (&a2[v193] & v39);
      v47 = v46[v24];
      v48 = v47 - 10;
      if (v47 < 0xA)
      {
        v50 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v49 = v24;
        }

        else
        {
          v49 = 4;
        }

        v50 = v24;
        switch(v49)
        {
          case 1:
            v51 = *v46;
            goto LABEL_96;
          case 2:
            v51 = *v46;
            goto LABEL_96;
          case 3:
            v51 = *(&a2[v193] & v39) | (*((&a2[v193] & v39) + 2) << 16);
            goto LABEL_96;
          case 4:
            v51 = *v46;
LABEL_96:
            if (v24 < 4)
            {
              v47 = (v51 | (v48 << (8 * v24))) + 10;
            }

            else
            {
              v47 = v51 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
          (*(v181 + 32))(v45, v46, v182);
          v45 = (&a1[v193] & v39);
          *(v45 + v50) = 0;
          goto LABEL_148;
        case 1u:
          v68 = (&a1[v193] & v39);
          (*(v181 + 32))(v45, v46, v182);
          v45 = v68;
          *((v68 + v170) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v170] & 0xFFFFFFFFFFFFFFF8);
          v69 = 1;
          goto LABEL_120;
        case 2u:
          v72 = *v46;
          *((&a1[v193] & v39) + 0x10) = *((&a2[v193] & v39) + 0x10);
          *v45 = v72;
          v73 = 2;
          goto LABEL_147;
        case 3u:
          *v45 = *v46;
          v73 = 3;
          goto LABEL_147;
        case 4u:
          v68 = (&a1[v193] & v39);
          (*(v175 + 32))(v45, v46, v176);
          v45 = v68;
          v69 = 4;
          goto LABEL_120;
        case 5u:
          *v45 = *v46;
          v73 = 5;
          goto LABEL_147;
        case 6u:
          (*(v205 + 32))(v45, v46, v184);
          v80 = (&a1[v193] & v39);
          v81 = ((v80 + v195) & v42);
          v82 = (&v46[v195] & v42);
          if (__swift_getEnumTagSinglePayload(v82, 1, v183))
          {
            memcpy(v81, v82, v191);
          }

          else
          {
            (*(v165 + 32))(v81, v82, v183);
            __swift_storeEnumTagSinglePayload(v81, 0, 1, v183);
          }

          v130 = ((v81 + v199) & 0xFFFFFFFFFFFFFFF8);
          v131 = ((v82 + v199) & 0xFFFFFFFFFFFFFFF8);
          *v130 = *v131;
          v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
          v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
          v134 = *v133;
          *(v132 + 4) = *(v133 + 4);
          *v132 = v134;
          v45 = v80;
          *(v80 + v50) = 6;
          goto LABEL_148;
        case 7u:
          (*(v205 + 32))(v45, v46, v184);
          v206 = (&a1[v193] & v39);
          v76 = ((v206 + v195) & v42);
          v77 = (&v46[v195] & v42);
          if (__swift_getEnumTagSinglePayload(v77, 1, v183))
          {
            memcpy(v76, v77, v191);
          }

          else
          {
            (*(v165 + 32))(v76, v77, v183);
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v183);
          }

          v100 = ((v76 + v199) & 0xFFFFFFFFFFFFFFF8);
          v101 = ((v77 + v199) & 0xFFFFFFFFFFFFFFF8);
          *v100 = *v101;
          v102 = (v100 + 19) & 0xFFFFFFFFFFFFFFF8;
          v103 = (v101 + 19) & 0xFFFFFFFFFFFFFFF8;
          v104 = *v103;
          *(v102 + 4) = *(v103 + 4);
          *v102 = v104;
          v45 = v206;
          v105 = ((v206 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
          v106 = (&v46[v187 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v105 = *v106;
          v107 = ((v105 + 23) & 0xFFFFFFFFFFFFFFF8);
          v108 = ((v106 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v107 = *v108;
          *((v107 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
          v73 = 7;
LABEL_147:
          *(v45 + v50) = v73;
          goto LABEL_148;
        case 8u:
          v86 = (&a1[v193] & v39);
          (*(v173 + 32))(v86, v46, v174);
          v87 = ((v86 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
          v88 = (&v46[v166 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v87 = *v88;
          v202 = ((v87 + v167) & v40);
          v89 = ((v88 + v167) & v40);
          v160 = v41;
          if (v169 == v168)
          {
            v90 = v195;
            if (!__swift_getEnumTagSinglePayload(v89, v169, v184))
            {
              v91 = ((v89 + v195) & v42);
              goto LABEL_161;
            }

LABEL_140:
            memcpy(v202, v89, v187);
            v98 = v191;
            v45 = v86;
LABEL_170:
            v144 = v98;
            goto LABEL_171;
          }

          v90 = v195;
          if (v162 != v168)
          {
            v91 = ((v89 + v195) & v42);
            v140 = *(((v91 + v199) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v140 >= 0xFFFFFFFF)
            {
              LODWORD(v140) = -1;
            }

            if ((v140 + 1) < 2)
            {
              goto LABEL_161;
            }

            goto LABEL_140;
          }

          v91 = ((v89 + v195) & v42);
          if (v164 >= 2 && __swift_getEnumTagSinglePayload((v89 + v195) & v42, v164, v183) >= 2)
          {
            goto LABEL_140;
          }

LABEL_161:
          (*(v205 + 32))(v202, v89, v184);
          v141 = ((v202 + v90) & v42);
          v98 = v191;
          if (__swift_getEnumTagSinglePayload(v91, 1, v183))
          {
            memcpy(v141, v91, v191);
          }

          else
          {
            (*(v165 + 32))(v141, v91, v183);
            __swift_storeEnumTagSinglePayload(v141, 0, 1, v183);
          }

          v144 = v163;
          v145 = ((v141 + v199) & 0xFFFFFFFFFFFFFFF8);
          v146 = ((v91 + v199) & 0xFFFFFFFFFFFFFFF8);
          *v145 = *v146;
          v147 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v148 = *v147;
          v149 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v149 + 4) = *(v147 + 4);
          *v149 = v148;
          v45 = v86;
          if (!v164)
          {
            goto LABEL_170;
          }

LABEL_171:
          v150 = (((v177 + 7 + v144) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v202 + v150 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v89 + v150 + 7) & 0xFFFFFFFFFFFFFFF8);
          v151 = (((v177 + 7 + v98) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v151 <= v180)
          {
            v151 = v180;
          }

          if (v179 > v151)
          {
            v151 = v179;
          }

          if (v189 > v151)
          {
            v151 = v189;
          }

          if (v178 > v151)
          {
            v151 = v178;
          }

          *(v45 + v151) = 8;
          v41 = v160;
LABEL_148:
          v109 = ((v45 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);
          v110 = (&v46[v43 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v109 = *v110;
          v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
          v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
          v113 = *v112;
          v114 = *(v112 + 16);
          *(v111 + 32) = *(v112 + 32);
          *v111 = v113;
          *(v111 + 16) = v114;
          *(v111 + 40) = *(v112 + 40);
          a1[v41] = 0;
          return v44;
        case 9u:
          v68 = (&a1[v193] & v39);
          (*(v171 + 32))(v45, v46, v172);
          v45 = v68;
          v69 = 9;
LABEL_120:
          *(v68 + v50) = v69;
          goto LABEL_148;
        default:
          memcpy((&a1[v193] & v39), v46, v43);
          v45 = (&a1[v193] & v39);
          goto LABEL_148;
      }

    case 1u:
      v57 = v34;
      v58 = ~v197;
      v200 = v16;
      v59 = v24 + 1;
      v44 = a1;
      (*(v185 + 32))(a1);
      v60 = (&a1[v193] & v39);
      v61 = (&a2[v193] & v39);
      v62 = v61[v24];
      v63 = v62 - 10;
      if (v62 < 0xA)
      {
        v65 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v64 = v24;
        }

        else
        {
          v64 = 4;
        }

        v65 = v24;
        switch(v64)
        {
          case 1:
            v66 = *v61;
            goto LABEL_102;
          case 2:
            v66 = *v61;
            goto LABEL_102;
          case 3:
            v66 = *(&a2[v193] & v39) | (*((&a2[v193] & v39) + 2) << 16);
            goto LABEL_102;
          case 4:
            v66 = *v61;
LABEL_102:
            if (v24 < 4)
            {
              v62 = (v66 | (v63 << (8 * v24))) + 10;
            }

            else
            {
              v62 = v66 + 10;
            }

            break;
          default:
            goto LABEL_105;
        }
      }

      break;
    case 2u:
      v52 = a2[v32];
      v53 = v52 - 2;
      v44 = a1;
      if (v52 >= 2)
      {
        if (v32 <= 3)
        {
          v54 = v32;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *a2;
            goto LABEL_80;
          case 2:
            v55 = *a2;
            goto LABEL_80;
          case 3:
            v55 = *a2 | (a2[2] << 16);
            goto LABEL_80;
          case 4:
            v55 = *a2;
LABEL_80:
            if (v32 < 4)
            {
              v52 = (v55 | (v53 << (8 * v32))) + 2;
            }

            else
            {
              v52 = v55 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v52 == 1)
      {
        *a1 = *a2;
        a1[8] = a2[8];
        a1[v32] = 1;
      }

      else if (v52)
      {
        memcpy(a1, a2, v32 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(a2, 1, AssociatedTypeWitness))
        {
          memcpy(a1, a2, v31);
        }

        else
        {
          (*(v30 + 32))(a1, a2, v29);
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v29);
        }

        a1[v32] = 0;
      }

      v56 = 2;
      goto LABEL_92;
    case 3u:
      v44 = a1;
      *a1 = *a2;
      a1[8] = a2[8];
      v56 = 3;
LABEL_92:
      v44[v34] = v56;
      return v44;
    default:

      return memcpy(a1, a2, v34 + 1);
  }

LABEL_105:
  switch(v62)
  {
    case 0u:
      (*(v181 + 32))(v60, v61, v182);
      v60 = (&a1[v193] & v39);
      *(v60 + v65) = 0;
      goto LABEL_152;
    case 1u:
      v70 = (&a1[v193] & v39);
      (*(v181 + 32))(v60, v61, v182);
      v60 = v70;
      *((v70 + v170) & 0xFFFFFFFFFFFFFFF8) = *(&v61[v170] & 0xFFFFFFFFFFFFFFF8);
      v71 = 1;
      goto LABEL_122;
    case 2u:
      v74 = *v61;
      *((&a1[v193] & v39) + 0x10) = *((&a2[v193] & v39) + 0x10);
      *v60 = v74;
      v75 = 2;
      goto LABEL_151;
    case 3u:
      *v60 = *v61;
      v75 = 3;
      goto LABEL_151;
    case 4u:
      v70 = (&a1[v193] & v39);
      (*(v175 + 32))(v60, v61, v176);
      v60 = v70;
      v71 = 4;
      goto LABEL_122;
    case 5u:
      *v60 = *v61;
      v75 = 5;
      goto LABEL_151;
    case 6u:
      (*(v205 + 32))(v60, v61, v184);
      v83 = (&a1[v193] & v39);
      v84 = ((v83 + v195) & v58);
      v85 = (&v61[v195] & v58);
      if (__swift_getEnumTagSinglePayload(v85, 1, v183))
      {
        memcpy(v84, v85, v191);
      }

      else
      {
        (*(v165 + 32))(v84, v85, v183);
        __swift_storeEnumTagSinglePayload(v84, 0, 1, v183);
      }

      v135 = ((v84 + v200) & 0xFFFFFFFFFFFFFFF8);
      v136 = ((v85 + v200) & 0xFFFFFFFFFFFFFFF8);
      *v135 = *v136;
      v137 = (v135 + 19) & 0xFFFFFFFFFFFFFFF8;
      v138 = (v136 + 19) & 0xFFFFFFFFFFFFFFF8;
      v139 = *v138;
      *(v137 + 4) = *(v138 + 4);
      *v137 = v139;
      v60 = v83;
      *(v83 + v65) = 6;
      goto LABEL_152;
    case 7u:
      (*(v205 + 32))(v60, v61, v184);
      v207 = (&a1[v193] & v39);
      v78 = ((v207 + v195) & v58);
      v79 = (&v61[v195] & v58);
      if (__swift_getEnumTagSinglePayload(v79, 1, v183))
      {
        memcpy(v78, v79, v191);
      }

      else
      {
        (*(v165 + 32))(v78, v79, v183);
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v183);
      }

      v115 = ((v78 + v200) & 0xFFFFFFFFFFFFFFF8);
      v116 = ((v79 + v200) & 0xFFFFFFFFFFFFFFF8);
      *v115 = *v116;
      v117 = (v115 + 19) & 0xFFFFFFFFFFFFFFF8;
      v118 = (v116 + 19) & 0xFFFFFFFFFFFFFFF8;
      v119 = *v118;
      *(v117 + 4) = *(v118 + 4);
      *v117 = v119;
      v60 = v207;
      v120 = ((v207 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
      v121 = (&v61[v187 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v120 = *v121;
      v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
      v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v122 = *v123;
      *((v122 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v123 + 23) & 0xFFFFFFFFFFFFFFF8);
      v75 = 7;
LABEL_151:
      *(v60 + v65) = v75;
      goto LABEL_152;
    case 8u:
      v92 = (&a1[v193] & v39);
      (*(v173 + 32))(v92, v61, v174);
      v93 = ((v92 + v166 + 7) & 0xFFFFFFFFFFFFFFF8);
      v94 = (&v61[v166 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v93 = *v94;
      v203 = ((v93 + v167) & v40);
      v95 = ((v94 + v167) & v40);
      v161 = v57;
      if (v169 == v168)
      {
        v96 = v195;
        if (!__swift_getEnumTagSinglePayload(v95, v169, v184))
        {
          v97 = ((v95 + v195) & v58);
          goto LABEL_166;
        }
      }

      else
      {
        v96 = v195;
        if (v162 == v168)
        {
          v97 = ((v95 + v195) & v58);
          if (v164 < 2 || __swift_getEnumTagSinglePayload((v95 + v195) & v58, v164, v183) < 2)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v97 = ((v95 + v195) & v58);
          v142 = *(((v97 + v200) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v142 >= 0xFFFFFFFF)
          {
            LODWORD(v142) = -1;
          }

          if ((v142 + 1) < 2)
          {
LABEL_166:
            (*(v205 + 32))(v203, v95, v184);
            v143 = ((v203 + v96) & v58);
            v99 = v191;
            if (__swift_getEnumTagSinglePayload(v97, 1, v183))
            {
              memcpy(v143, v97, v191);
            }

            else
            {
              (*(v165 + 32))(v143, v97, v183);
              __swift_storeEnumTagSinglePayload(v143, 0, 1, v183);
            }

            v152 = v163;
            v153 = ((v143 + v200) & 0xFFFFFFFFFFFFFFF8);
            v154 = ((v97 + v200) & 0xFFFFFFFFFFFFFFF8);
            *v153 = *v154;
            v155 = (v154 + 19) & 0xFFFFFFFFFFFFFFF8;
            v156 = *v155;
            v157 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v157 + 4) = *(v155 + 4);
            *v157 = v156;
            v60 = v92;
            if (v164)
            {
LABEL_183:
              v158 = (((v177 + 7 + v152) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v203 + v158 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v95 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
              v159 = (((v177 + 7 + v99) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v159 <= v180)
              {
                v159 = v180;
              }

              if (v179 > v159)
              {
                v159 = v179;
              }

              if (v189 > v159)
              {
                v159 = v189;
              }

              if (v178 > v159)
              {
                v159 = v178;
              }

              *(v60 + v159) = 8;
              v57 = v161;
LABEL_152:
              v124 = ((v60 + v59 + 7) & 0xFFFFFFFFFFFFFFF8);
              v125 = (&v61[v59 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v124 = *v125;
              v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
              v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
              v128 = *v127;
              v129 = *(v127 + 16);
              *(v126 + 32) = *(v127 + 32);
              *v126 = v128;
              *(v126 + 16) = v129;
              *(v126 + 40) = *(v127 + 40);
              a1[v57] = 1;
              return v44;
            }

LABEL_182:
            v152 = v99;
            goto LABEL_183;
          }
        }
      }

      memcpy(v203, v95, v187);
      v99 = v191;
      v60 = v92;
      goto LABEL_182;
    case 9u:
      v70 = (&a1[v193] & v39);
      (*(v171 + 32))(v60, v61, v172);
      v60 = v70;
      v71 = 9;
LABEL_122:
      *(v70 + v65) = v71;
      goto LABEL_152;
    default:
      memcpy((&a1[v193] & v39), v61, v59);
      v60 = (&a1[v193] & v39);
      goto LABEL_152;
  }
}

unsigned __int8 *sub_1DCDC22A8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = sub_1DD0DB04C();
  v236 = *(v4 - 8);
  v237 = v4;
  v247 = *(v236 + 64);
  v233 = sub_1DD0DC76C();
  v243 = *(v233 - 8);
  v232 = v243;
  v5 = *(v243 + 80);
  v227 = sub_1DD0DB1EC();
  v245 = *(v227 - 8);
  v226 = v245;
  v238 = *(v245 + 80) | v5;
  v234 = sub_1DD0DB4BC();
  v242 = *(v234 - 8);
  v6 = *(v242 + 80) & 0xF8;
  v235 = sub_1DD0DB3EC();
  v7 = *(v235 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v6 | v9 | 7;
  v225 = sub_1DD0DD12C();
  v240 = *(v225 - 8);
  v224 = v240;
  v11 = *(v240 + 80);
  v223 = sub_1DD0DD08C();
  v222 = *(v223 - 8);
  v12 = (v238 | (v11 | *(v222 + 80))) & 0xF8 | v10;
  v248 = v247 + v12;
  v13 = *(v243 + 64);
  v221 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v245 + 64))
  {
    v13 = *(v245 + 64);
  }

  if (v13 <= 0x18)
  {
    v14 = 24;
  }

  else
  {
    v14 = v13;
  }

  v244 = *(v242 + 64) + v9;
  v15 = v9;
  v215 = v7;
  v16 = *(v7 + 84);
  v17 = *(v7 + 64);
  v214 = v17;
  if (!v16)
  {
    ++v17;
  }

  v231 = v17;
  v239 = v17 + 7;
  v228 = v244 & ~v9;
  v18 = (v17 + 7 + v228) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v211 = v14;
  if (v19 <= v14)
  {
    v20 = v14;
  }

  else
  {
    v20 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v18 + 31;
  v210 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v210 > v20)
  {
    v20 = (((((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v217 = *(v240 + 64);
  v218 = v10 + 16;
  v22 = v6 | v9 | 7;
  v229 = *(v8 + 84);
  v23 = v16 != 0;
  v24 = v16 - 1;
  if (!v23)
  {
    v24 = 0;
  }

  v220 = *(v242 + 84);
  v208 = v24;
  if (v24 <= v220)
  {
    v24 = *(v242 + 84);
  }

  if (v24 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  v219 = v24;
  v25 = (v21 + ((v10 + 16 + ((v217 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFF8;
  v26 = v25 + 8;
  if (v25 + 8 <= v20)
  {
    v27 = v20;
  }

  else
  {
    v27 = v25 + 8;
  }

  v209 = *(*(v223 - 8) + 64);
  if (v209 <= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = *(*(v223 - 8) + 64);
  }

  v30 = *(a3 + 16);
  v29 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v213 = *(AssociatedTypeWitness - 8);
  v32 = *(v213 + 64);
  if (!*(v213 + 84))
  {
    ++v32;
  }

  __n = v32;
  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  if (v33 + 1 > ((((v28 + (v248 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = ((((v28 + (v248 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v34 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v34;
  }

  v36 = a1[v35];
  v37 = v36 - 4;
  if (v36 < 4)
  {
    v39 = a2;
  }

  else
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    v39 = a2;
    switch(v38)
    {
      case 1:
        v40 = *a1;
        goto LABEL_49;
      case 2:
        v40 = *a1;
        goto LABEL_49;
      case 3:
        v40 = *a1 | (a1[2] << 16);
        goto LABEL_49;
      case 4:
        v40 = *a1;
LABEL_49:
        if (v35 < 4)
        {
          v40 |= v37 << (8 * v35);
        }

        v36 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v241 = AssociatedTypeWitness;
  v246 = v28 + 1;
  v250 = ~v12;
  v41 = ~v15;
  v216 = ~v22;
  v230 = 8 * v33;
  switch(v36)
  {
    case 0u:
      v205 = v26;
      (*(v236 + 8))(a1, v237);
      v42 = (&a1[v248] & v250);
      v43 = v42[v28];
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v28 <= 3)
        {
          v45 = v28;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_87;
          case 2:
            v46 = *v42;
            goto LABEL_87;
          case 3:
            v46 = *v42 | (*((&a1[v248] & v250) + 2) << 16);
            goto LABEL_87;
          case 4:
            v46 = *v42;
LABEL_87:
            if (v28 < 4)
            {
              v43 = (v46 | (v44 << (8 * v28))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v43)
      {
        case 0u:
          goto LABEL_96;
        case 1u:
          goto LABEL_107;
        case 2u:
          goto LABEL_100;
        case 3u:
          goto LABEL_101;
        case 4u:
          goto LABEL_97;
        case 5u:
          goto LABEL_108;
        case 6u:
          goto LABEL_109;
        case 7u:
          goto LABEL_102;
        case 8u:
          goto LABEL_114;
        case 9u:
          goto LABEL_98;
        default:
          goto LABEL_129;
      }

      goto LABEL_129;
    case 1u:
      v205 = v26;
      (*(v236 + 8))(a1, v237);
      v42 = (&a1[v248] & v250);
      v51 = v42[v28];
      v52 = v51 - 10;
      if (v51 >= 0xA)
      {
        if (v28 <= 3)
        {
          v53 = v28;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *v42;
            goto LABEL_92;
          case 2:
            v54 = *v42;
            goto LABEL_92;
          case 3:
            v54 = *v42 | (*((&a1[v248] & v250) + 2) << 16);
            goto LABEL_92;
          case 4:
            v54 = *v42;
LABEL_92:
            if (v28 < 4)
            {
              v51 = (v54 | (v52 << (8 * v28))) + 10;
            }

            else
            {
              v51 = v54 + 10;
            }

            break;
          default:
            goto LABEL_95;
        }
      }

      break;
    case 2u:
      v47 = a1[v33];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v33 <= 3)
        {
          v49 = v33;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *a1;
            goto LABEL_78;
          case 2:
            v50 = *a1;
            goto LABEL_78;
          case 3:
            v50 = *a1 | (a1[2] << 16);
            goto LABEL_78;
          case 4:
            v50 = *a1;
LABEL_78:
            if (v33 < 4)
            {
              v47 = (v50 | (v48 << v230)) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_85;
      }

      if (!v47 && !__swift_getEnumTagSinglePayload(a1, 1, AssociatedTypeWitness))
      {
        (*(v213 + 8))(a1, v241);
      }

      goto LABEL_131;
    case 3u:
LABEL_85:

      goto LABEL_131;
    default:
      goto LABEL_131;
  }

LABEL_95:
  switch(v51)
  {
    case 0u:
LABEL_96:
      v56 = v232;
      v55 = v233;
      goto LABEL_99;
    case 1u:
LABEL_107:
      (*(v232 + 8))(v42, v233);
      v68 = *(&v42[v221] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_129;
    case 2u:
LABEL_100:
      v57 = *(v42 + 1);

      v58 = *(v42 + 2);
      goto LABEL_113;
    case 3u:
LABEL_101:
      v59 = *v42;
      swift_unknownObjectRelease();
      goto LABEL_129;
    case 4u:
LABEL_97:
      v56 = v226;
      v55 = v227;
      goto LABEL_99;
    case 5u:
LABEL_108:
      v69 = *v42;
      goto LABEL_128;
    case 6u:
LABEL_109:
      (*(v242 + 8))(v42, v234);
      v70 = &v42[v244] & v41;
      if (!__swift_getEnumTagSinglePayload(v70, 1, v235))
      {
        (*(v215 + 8))(v70, v235);
      }

      v67 = v239 + v70;
      goto LABEL_112;
    case 7u:
LABEL_102:
      (*(v242 + 8))(v42, v234);
      v60 = &v42[v244] & v41;
      if (!__swift_getEnumTagSinglePayload(v60, 1, v235))
      {
        (*(v215 + 8))(v60, v235);
      }

      v61 = 7;
      if (!v229)
      {
        v61 = 8;
      }

      v62 = *(((v214 + v61 + v60) & 0xFFFFFFFFFFFFFFF8) + 8);

      v63 = &v42[((((v228 + v231 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v64 = *(v63 + 8);

      v65 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = *(v65 + 8);

      v67 = v65 + 23;
LABEL_112:
      v71 = *((v67 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_113:

      goto LABEL_129;
    case 8u:
LABEL_114:
      (*(v224 + 8))(v42, v225);
      v72 = &v42[v217 + 7] & 0xFFFFFFFFFFFFFFF8;
      v73 = *(v72 + 8);

      v74 = (v218 + v72) & v216;
      if (v220 == v219)
      {
        if (__swift_getEnumTagSinglePayload(v74, v220, v234))
        {
          goto LABEL_127;
        }

        v75 = (v244 + v74) & v41;
        goto LABEL_124;
      }

      v75 = (v244 + v74) & v41;
      if (v208 == v219)
      {
        if (v229 >= 2 && __swift_getEnumTagSinglePayload((v244 + v74) & v41, v229, v235) >= 2)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }

      v76 = *(((v239 + v75) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v76 >= 0xFFFFFFFF)
      {
        LODWORD(v76) = -1;
      }

      if ((v76 + 1) < 2)
      {
LABEL_124:
        (*(v242 + 8))(v74, v234);
        if (!__swift_getEnumTagSinglePayload(v75, 1, v235))
        {
          (*(v215 + 8))(v75, v235);
        }

        v77 = *(((v239 + v75) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_127:
      v69 = *((v19 + v74 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_128:

LABEL_129:
      v78 = &v42[v246 + 7];
      v80 = (v78 & 0xFFFFFFFFFFFFFFF8) + 15;
      v79 = *(v78 & 0xFFFFFFFFFFFFFFF8);

      v81 = (v80 & 0xFFFFFFFFFFFFFFF8);
      v82 = *((v80 & 0xFFFFFFFFFFFFFFF8) + 24);
      v26 = v205;
      v39 = a2;
      if (v82 >= 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
      }

LABEL_131:
      v83 = v39[v35];
      v84 = v83 - 4;
      if (v83 >= 4)
      {
        if (v35 <= 3)
        {
          v85 = v35;
        }

        else
        {
          v85 = 4;
        }

        switch(v85)
        {
          case 1:
            v86 = *v39;
            goto LABEL_140;
          case 2:
            v86 = *v39;
            goto LABEL_140;
          case 3:
            v86 = *v39 | (v39[2] << 16);
            goto LABEL_140;
          case 4:
            v86 = *v39;
LABEL_140:
            if (v35 < 4)
            {
              v83 = (v86 | (v84 << (8 * v35))) + 4;
            }

            else
            {
              v83 = v86 + 4;
            }

            break;
          default:
            goto LABEL_143;
        }
      }

      break;
    case 9u:
LABEL_98:
      v56 = v222;
      v55 = v223;
LABEL_99:
      (*(v56 + 8))(v42, v55);
      goto LABEL_129;
    default:
      goto LABEL_129;
  }

LABEL_143:
  switch(v83)
  {
    case 0u:
      (*(v236 + 32))(a1, v39, v237);
      v87 = (&a1[v248] & v250);
      v88 = (&v39[v248] & v250);
      v89 = v88[v28];
      v90 = v89 - 10;
      if (v89 >= 0xA)
      {
        if (v28 <= 3)
        {
          v91 = v28;
        }

        else
        {
          v91 = 4;
        }

        switch(v91)
        {
          case 1:
            v92 = *v88;
            goto LABEL_186;
          case 2:
            v92 = *v88;
            goto LABEL_186;
          case 3:
            v92 = *v88 | (*((&v39[v248] & v250) + 2) << 16);
            goto LABEL_186;
          case 4:
            v92 = *v88;
LABEL_186:
            if (v28 < 4)
            {
              v89 = (v92 | (v90 << (8 * v28))) + 10;
            }

            else
            {
              v89 = v92 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v89)
      {
        case 0u:
          (*(v232 + 32))(&a1[v248] & v250, &v39[v248] & v250, v233);
          *(v87 + v28) = 0;
          goto LABEL_213;
        case 1u:
          (*(v232 + 32))(&a1[v248] & v250, &v39[v248] & v250, v233);
          *((v87 + v221) & 0xFFFFFFFFFFFFFFF8) = *(&v88[v221] & 0xFFFFFFFFFFFFFFF8);
          v105 = 1;
          goto LABEL_212;
        case 2u:
          v107 = *v88;
          *((&a1[v248] & v250) + 0x10) = *((&v39[v248] & v250) + 0x10);
          *v87 = v107;
          v105 = 2;
          goto LABEL_212;
        case 3u:
          *v87 = *v88;
          v105 = 3;
          goto LABEL_212;
        case 4u:
          (*(v226 + 32))(&a1[v248] & v250, &v39[v248] & v250, v227);
          v105 = 4;
          goto LABEL_212;
        case 5u:
          *v87 = *v88;
          v105 = 5;
          goto LABEL_212;
        case 6u:
          v129 = v41;
          v110 = v28 + 1;
          (*(v242 + 32))(&a1[v248] & v250, v88, v234);
          v130 = ((v87 + v244) & v129);
          v131 = (&v88[v244] & v129);
          if (__swift_getEnumTagSinglePayload(v131, 1, v235))
          {
            memcpy(v130, v131, v231);
          }

          else
          {
            (*(v215 + 32))(v130, v131, v235);
            __swift_storeEnumTagSinglePayload(v130, 0, 1, v235);
          }

          v175 = ((v130 + v239) & 0xFFFFFFFFFFFFFFF8);
          v176 = ((v131 + v239) & 0xFFFFFFFFFFFFFFF8);
          *v175 = *v176;
          v177 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
          v178 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
          v179 = *v178;
          *(v177 + 4) = *(v178 + 4);
          *v177 = v179;
          v164 = 6;
          goto LABEL_247;
        case 7u:
          v109 = v41;
          v110 = v28 + 1;
          (*(v242 + 32))(&a1[v248] & v250, v88, v234);
          v111 = ((v87 + v244) & v109);
          v112 = (&v88[v244] & v109);
          if (__swift_getEnumTagSinglePayload(v112, 1, v235))
          {
            memcpy(v111, v112, v231);
          }

          else
          {
            (*(v215 + 32))(v111, v112, v235);
            __swift_storeEnumTagSinglePayload(v111, 0, 1, v235);
          }

          v155 = ((v111 + v239) & 0xFFFFFFFFFFFFFFF8);
          v156 = ((v112 + v239) & 0xFFFFFFFFFFFFFFF8);
          *v155 = *v156;
          v157 = (v155 + 19) & 0xFFFFFFFFFFFFFFF8;
          v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
          v159 = *v158;
          *(v157 + 4) = *(v158 + 4);
          *v157 = v159;
          v160 = ((v87 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
          v161 = (&v88[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v160 = *v161;
          v162 = ((v160 + 23) & 0xFFFFFFFFFFFFFFF8);
          v163 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v162 = *v163;
          *((v162 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v163 + 23) & 0xFFFFFFFFFFFFFFF8);
          v164 = 7;
LABEL_247:
          *(v87 + v28) = v164;
          goto LABEL_214;
        case 8u:
          v206 = v26;
          (*(v224 + 32))(&a1[v248] & v250, &v39[v248] & v250, v225);
          v135 = ((v87 + v217 + 7) & 0xFFFFFFFFFFFFFFF8);
          v136 = (&v88[v217 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v135 = *v136;
          v137 = ((v135 + v218) & v216);
          v138 = ((v136 + v218) & v216);
          if (v220 != v219)
          {
            v140 = ((v138 + v244) & v41);
            if (v208 == v219)
            {
              if (v229 >= 2 && __swift_getEnumTagSinglePayload((v138 + v244) & v41, v229, v235) >= 2)
              {
                goto LABEL_236;
              }
            }

            else
            {
              v185 = *(((v140 + v239) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v185 >= 0xFFFFFFFF)
              {
                LODWORD(v185) = -1;
              }

              if ((v185 + 1) >= 2)
              {
                goto LABEL_236;
              }
            }

            v139 = v244;
            goto LABEL_255;
          }

          if (__swift_getEnumTagSinglePayload(v138, v220, v234))
          {
LABEL_236:
            memcpy(v137, v138, v19);
            v147 = v231;
            v149 = v210;
            v148 = v211;
            v150 = v209;
LABEL_265:
            v189 = v147;
            goto LABEL_266;
          }

          v139 = v244;
          v140 = ((v138 + v244) & v41);
LABEL_255:
          (*(v242 + 32))(v137, v138, v234);
          v186 = ((v137 + v139) & v41);
          if (__swift_getEnumTagSinglePayload(v140, 1, v235))
          {
            memcpy(v186, v140, v231);
          }

          else
          {
            (*(v215 + 32))(v186, v140, v235);
            __swift_storeEnumTagSinglePayload(v186, 0, 1, v235);
          }

          v189 = v214;
          v190 = ((v186 + v239) & 0xFFFFFFFFFFFFFFF8);
          v191 = ((v140 + v239) & 0xFFFFFFFFFFFFFFF8);
          *v190 = *v191;
          v192 = (v191 + 19) & 0xFFFFFFFFFFFFFFF8;
          v193 = *v192;
          v194 = (v190 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v194 + 4) = *(v192 + 4);
          *v194 = v193;
          v147 = v231;
          v149 = v210;
          v148 = v211;
          v150 = v209;
          if (!v229)
          {
            goto LABEL_265;
          }

LABEL_266:
          v195 = (((v228 + 7 + v189) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v137 + v195 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v138 + v195 + 7) & 0xFFFFFFFFFFFFFFF8);
          v196 = (((v228 + 7 + v147) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v196 <= v148)
          {
            v196 = v148;
          }

          if (v149 > v196)
          {
            v196 = v149;
          }

          if (v206 > v196)
          {
            v196 = v206;
          }

          if (v150 > v196)
          {
            v196 = v150;
          }

          *(v87 + v196) = 8;
LABEL_213:
          v110 = v246;
LABEL_214:
          v117 = ((v87 + v110 + 7) & 0xFFFFFFFFFFFFFFF8);
          v118 = (&v88[v110 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v117 = *v118;
          v119 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
          v120 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
          v121 = *v120;
          v122 = *(v120 + 16);
          *(v119 + 32) = *(v120 + 32);
          *v119 = v121;
          *(v119 + 16) = v122;
          *(v119 + 40) = *(v120 + 40);
          a1[v35] = 0;
          return a1;
        case 9u:
          (*(v222 + 32))(&a1[v248] & v250, &v39[v248] & v250, v223);
          v105 = 9;
LABEL_212:
          *(v87 + v28) = v105;
          goto LABEL_213;
        default:
          v110 = v28 + 1;
          memcpy((&a1[v248] & v250), (&v39[v248] & v250), v246);
          goto LABEL_214;
      }

    case 1u:
      (*(v236 + 32))(a1, v39, v237);
      v98 = (&a1[v248] & v250);
      v99 = (&v39[v248] & v250);
      v100 = v99[v28];
      v101 = v100 - 10;
      if (v100 >= 0xA)
      {
        if (v28 <= 3)
        {
          v102 = v28;
        }

        else
        {
          v102 = 4;
        }

        switch(v102)
        {
          case 1:
            v103 = *v99;
            goto LABEL_192;
          case 2:
            v103 = *v99;
            goto LABEL_192;
          case 3:
            v103 = *v99 | (*((&v39[v248] & v250) + 2) << 16);
            goto LABEL_192;
          case 4:
            v103 = *v99;
LABEL_192:
            if (v28 < 4)
            {
              v100 = (v103 | (v101 << (8 * v28))) + 10;
            }

            else
            {
              v100 = v103 + 10;
            }

            break;
          default:
            goto LABEL_195;
        }
      }

      break;
    case 2u:
      v93 = v39[v33];
      v94 = v93 - 2;
      if (v93 >= 2)
      {
        if (v33 <= 3)
        {
          v95 = v33;
        }

        else
        {
          v95 = 4;
        }

        switch(v95)
        {
          case 1:
            v96 = *v39;
            goto LABEL_171;
          case 2:
            v96 = *v39;
            goto LABEL_171;
          case 3:
            v96 = *v39 | (v39[2] << 16);
            goto LABEL_171;
          case 4:
            v96 = *v39;
LABEL_171:
            if (v33 < 4)
            {
              v93 = (v96 | (v94 << v230)) + 2;
            }

            else
            {
              v93 = v96 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v93 == 1)
      {
        *a1 = *v39;
        a1[8] = v39[8];
        a1[v33] = 1;
      }

      else if (v93)
      {
        memcpy(a1, v39, v33 + 1);
      }

      else
      {
        if (__swift_getEnumTagSinglePayload(v39, 1, v241))
        {
          memcpy(a1, v39, __n);
        }

        else
        {
          (*(v213 + 32))(a1, v39, v241);
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v241);
        }

        a1[v33] = 0;
      }

      v97 = 2;
      goto LABEL_219;
    case 3u:
      *a1 = *v39;
      a1[8] = v39[8];
      v97 = 3;
      goto LABEL_219;
    default:

      return memcpy(a1, v39, v35 + 1);
  }

LABEL_195:
  switch(v100)
  {
    case 0u:
      (*(v232 + 32))(&a1[v248] & v250, &v39[v248] & v250, v233);
      *(v98 + v28) = 0;
      goto LABEL_217;
    case 1u:
      (*(v232 + 32))(&a1[v248] & v250, &v39[v248] & v250, v233);
      *((v98 + v221) & 0xFFFFFFFFFFFFFFF8) = *(&v99[v221] & 0xFFFFFFFFFFFFFFF8);
      v106 = 1;
      goto LABEL_216;
    case 2u:
      v108 = *v99;
      *((&a1[v248] & v250) + 0x10) = *((&v39[v248] & v250) + 0x10);
      *v98 = v108;
      v106 = 2;
      goto LABEL_216;
    case 3u:
      *v98 = *v99;
      v106 = 3;
      goto LABEL_216;
    case 4u:
      (*(v226 + 32))(&a1[v248] & v250, &v39[v248] & v250, v227);
      v106 = 4;
      goto LABEL_216;
    case 5u:
      *v98 = *v99;
      v106 = 5;
      goto LABEL_216;
    case 6u:
      v132 = v41;
      v114 = v28 + 1;
      (*(v242 + 32))(&a1[v248] & v250, v99, v234);
      v133 = ((v98 + v244) & v132);
      v134 = (&v99[v244] & v132);
      if (__swift_getEnumTagSinglePayload(v134, 1, v235))
      {
        memcpy(v133, v134, v231);
      }

      else
      {
        (*(v215 + 32))(v133, v134, v235);
        __swift_storeEnumTagSinglePayload(v133, 0, 1, v235);
      }

      v180 = ((v133 + v239) & 0xFFFFFFFFFFFFFFF8);
      v181 = ((v134 + v239) & 0xFFFFFFFFFFFFFFF8);
      *v180 = *v181;
      v182 = (v180 + 19) & 0xFFFFFFFFFFFFFFF8;
      v183 = (v181 + 19) & 0xFFFFFFFFFFFFFFF8;
      v184 = *v183;
      *(v182 + 4) = *(v183 + 4);
      *v182 = v184;
      v174 = 6;
      goto LABEL_250;
    case 7u:
      v113 = v41;
      v114 = v28 + 1;
      (*(v242 + 32))(&a1[v248] & v250, v99, v234);
      v115 = ((v98 + v244) & v113);
      v116 = (&v99[v244] & v113);
      if (__swift_getEnumTagSinglePayload(v116, 1, v235))
      {
        memcpy(v115, v116, v231);
      }

      else
      {
        (*(v215 + 32))(v115, v116, v235);
        __swift_storeEnumTagSinglePayload(v115, 0, 1, v235);
      }

      v165 = ((v115 + v239) & 0xFFFFFFFFFFFFFFF8);
      v166 = ((v116 + v239) & 0xFFFFFFFFFFFFFFF8);
      *v165 = *v166;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
      v169 = *v168;
      *(v167 + 4) = *(v168 + 4);
      *v167 = v169;
      v170 = ((v98 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
      v171 = (&v99[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v170 = *v171;
      v172 = ((v170 + 23) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v171 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      *((v172 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v173 + 23) & 0xFFFFFFFFFFFFFFF8);
      v174 = 7;
LABEL_250:
      *(v98 + v28) = v174;
      goto LABEL_218;
    case 8u:
      v207 = v26;
      (*(v224 + 32))(&a1[v248] & v250, &v39[v248] & v250, v225);
      v141 = ((v98 + v217 + 7) & 0xFFFFFFFFFFFFFFF8);
      v142 = (&v99[v217 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v143 = ((v141 + v218) & v216);
      v144 = ((v142 + v218) & v216);
      if (v220 == v219)
      {
        if (!__swift_getEnumTagSinglePayload(v144, v220, v234))
        {
          v145 = v244;
          v146 = ((v144 + v244) & v41);
          goto LABEL_261;
        }

LABEL_240:
        memcpy(v143, v144, v19);
        v151 = v231;
        v153 = v210;
        v152 = v211;
        v154 = v209;
        goto LABEL_277;
      }

      v146 = ((v144 + v244) & v41);
      if (v208 == v219)
      {
        if (v229 >= 2 && __swift_getEnumTagSinglePayload((v144 + v244) & v41, v229, v235) >= 2)
        {
          goto LABEL_240;
        }
      }

      else
      {
        v187 = *(((v146 + v239) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v187 >= 0xFFFFFFFF)
        {
          LODWORD(v187) = -1;
        }

        if ((v187 + 1) >= 2)
        {
          goto LABEL_240;
        }
      }

      v145 = v244;
LABEL_261:
      (*(v242 + 32))(v143, v144, v234);
      v188 = ((v143 + v145) & v41);
      if (__swift_getEnumTagSinglePayload(v146, 1, v235))
      {
        memcpy(v188, v146, v231);
      }

      else
      {
        (*(v215 + 32))(v188, v146, v235);
        __swift_storeEnumTagSinglePayload(v188, 0, 1, v235);
      }

      v197 = v214;
      v198 = ((v188 + v239) & 0xFFFFFFFFFFFFFFF8);
      v199 = ((v146 + v239) & 0xFFFFFFFFFFFFFFF8);
      *v198 = *v199;
      v200 = (v199 + 19) & 0xFFFFFFFFFFFFFFF8;
      v201 = *v200;
      v202 = (v198 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v202 + 4) = *(v200 + 4);
      *v202 = v201;
      v151 = v231;
      v153 = v210;
      v152 = v211;
      v154 = v209;
      if (v229)
      {
LABEL_278:
        v203 = (((v228 + 7 + v197) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        *((v143 + v203 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v144 + v203 + 7) & 0xFFFFFFFFFFFFFFF8);
        v204 = (((v228 + 7 + v151) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
        if (v204 <= v152)
        {
          v204 = v152;
        }

        if (v153 > v204)
        {
          v204 = v153;
        }

        if (v207 > v204)
        {
          v204 = v207;
        }

        if (v154 > v204)
        {
          v204 = v154;
        }

        *(v98 + v204) = 8;
LABEL_217:
        v114 = v246;
LABEL_218:
        v123 = ((v98 + v114 + 7) & 0xFFFFFFFFFFFFFFF8);
        v124 = (&v99[v114 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v123 = *v124;
        v125 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
        v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
        v127 = *v126;
        v128 = *(v126 + 16);
        *(v125 + 32) = *(v126 + 32);
        *v125 = v127;
        *(v125 + 16) = v128;
        *(v125 + 40) = *(v126 + 40);
        v97 = 1;
LABEL_219:
        a1[v35] = v97;
        return a1;
      }

LABEL_277:
      v197 = v151;
      goto LABEL_278;
    case 9u:
      (*(v222 + 32))(&a1[v248] & v250, &v39[v248] & v250, v223);
      v106 = 9;
LABEL_216:
      *(v98 + v28) = v106;
      goto LABEL_217;
    default:
      v114 = v28 + 1;
      memcpy((&a1[v248] & v250), (&v39[v248] & v250), v246);
      goto LABEL_218;
  }
}

uint64_t sub_1DCDC3CDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v39 = *(*(sub_1DD0DB04C() - 8) + 64);
  v37 = *(sub_1DD0DC76C() - 8);
  v3 = *(v37 + 80);
  v38 = *(sub_1DD0DB1EC() - 8);
  v34 = *(v38 + 80) | v3;
  v36 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v36 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v35 = *(sub_1DD0DD12C() - 8);
  v8 = *(v35 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v34 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v39 + v10) & ~v10;
  v12 = *(v37 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v38 + 64))
  {
    v12 = *(v38 + 64);
  }

  v13 = *(v5 + 64) + ((*(v36 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v35 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v35 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v21 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v21 + 84))
  {
    v22 = *(v21 + 64);
  }

  else
  {
    v22 = *(v21 + 64) + 1;
  }

  v23 = 9;
  if (v22 <= 9)
  {
    v22 = 9;
  }

  if (v22 + 1 > v18)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v18;
  }

  if (v24 > 9)
  {
    v23 = v24;
  }

  v25 = (3u >> (8 * v23)) ^ 0xFB;
  if (v23 > 3)
  {
    v25 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v25 >= a2)
  {
    goto LABEL_48;
  }

  v26 = v23 + 1;
  v27 = 8 * (v23 + 1);
  if ((v23 + 1) <= 3)
  {
    v30 = ((~(-1 << v27) + a2 - v25) >> v27) + 1;
    if (HIWORD(v30))
    {
      v28 = *(a1 + v26);
      if (!v28)
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }

    if (v30 > 0xFF)
    {
      v28 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }

    if (v30 < 2)
    {
LABEL_48:
      v32 = *(a1 + v23);
      if (v25 <= (v32 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v32);
      }
    }
  }

  v28 = *(a1 + v26);
  if (!*(a1 + v26))
  {
    goto LABEL_48;
  }

LABEL_40:
  v31 = (v28 - 1) << v27;
  if (v26 > 3)
  {
    v31 = 0;
  }

  if (v26)
  {
    if (v26 > 3)
    {
      LODWORD(v26) = 4;
    }

    switch(v26)
    {
      case 2:
        LODWORD(v26) = *a1;
        break;
      case 3:
        LODWORD(v26) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v26) = *a1;
        break;
      default:
        LODWORD(v26) = *a1;
        break;
    }
  }

  return v25 + (v26 | v31) + 1;
}

void sub_1DCDC41D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v41 = *(*(sub_1DD0DB04C() - 8) + 64);
  v39 = *(sub_1DD0DC76C() - 8);
  v4 = *(v39 + 80);
  v40 = *(sub_1DD0DB1EC() - 8);
  v36 = *(v40 + 80) | v4;
  v38 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v38 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v37 = *(sub_1DD0DD12C() - 8);
  v9 = *(v37 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v36 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v41 + v11) & ~v11;
  v13 = *(v39 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v40 + 64))
  {
    v13 = *(v40 + 64);
  }

  v14 = *(v6 + 64) + ((*(v38 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v37 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v37 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v21 = *(a4 + 16);
  v20 = *(a4 + 24);
  v22 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v22 + 84))
  {
    v23 = *(v22 + 64);
  }

  else
  {
    v23 = *(v22 + 64) + 1;
  }

  if (v23 <= 9)
  {
    v23 = 9;
  }

  if (v23 + 1 > v19)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v19;
  }

  if (v24 <= 9)
  {
    v24 = 9;
  }

  if (v24 <= 3)
  {
    v25 = (3u >> (8 * v24)) ^ 0xFB;
  }

  else
  {
    v25 = 251;
  }

  v26 = v24 + 1;
  v27 = 8 * (v24 + 1);
  if (v25 >= a3)
  {
    v30 = 0;
    v28 = a1;
    v29 = a2;
  }

  else
  {
    v28 = a1;
    v29 = a2;
    if (v26 <= 3)
    {
      v33 = ((~(-1 << v27) + a3 - v25) >> v27) + 1;
      if (HIWORD(v33))
      {
        v30 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v30 = v34;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  if (v25 >= v29)
  {
    switch(v30)
    {
      case 1:
        v28[v26] = 0;
        if (v29)
        {
          goto LABEL_53;
        }

        break;
      case 2:
        *&v28[v26] = 0;
        if (v29)
        {
          goto LABEL_53;
        }

        break;
      case 3:
LABEL_64:
        __break(1u);
        break;
      case 4:
        *&v28[v26] = 0;
        goto LABEL_52;
      default:
LABEL_52:
        if (v29)
        {
LABEL_53:
          v28[v24] = -v29;
        }

        break;
    }
  }

  else
  {
    v31 = ~v25 + v29;
    if (v26 < 4)
    {
      v32 = (v31 >> v27) + 1;
      if (v24 != -1)
      {
        v35 = v31 & ~(-1 << v27);
        bzero(v28, v26);
        if (v26 == 3)
        {
          *v28 = v35;
          v28[2] = BYTE2(v35);
        }

        else if (v26 == 2)
        {
          *v28 = v35;
        }

        else
        {
          *v28 = v31;
        }
      }
    }

    else
    {
      bzero(v28, v26);
      *v28 = v31;
      v32 = 1;
    }

    switch(v30)
    {
      case 1:
        v28[v26] = v32;
        break;
      case 2:
        *&v28[v26] = v32;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&v28[v26] = v32;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCDC473C(unsigned __int8 *a1, uint64_t a2)
{
  v32 = *(*(sub_1DD0DB04C() - 8) + 64);
  v30 = *(sub_1DD0DC76C() - 8);
  v2 = *(v30 + 80);
  v31 = *(sub_1DD0DB1EC() - 8);
  v27 = *(v31 + 80) | v2;
  v29 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v29 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v28 = *(sub_1DD0DD12C() - 8);
  v7 = *(v28 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v27 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v32 + v9) & ~v9;
  v11 = *(v30 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v31 + 64))
  {
    v11 = *(v31 + 64);
  }

  v12 = *(v4 + 64) + ((*(v29 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v28 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v28 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(a2 + 16);
  v18 = *(a2 + 24);
  v20 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v20 + 84))
  {
    v21 = *(v20 + 64);
  }

  else
  {
    v21 = *(v20 + 64) + 1;
  }

  v22 = 9;
  if (v21 <= 9)
  {
    v21 = 9;
  }

  if (v21 + 1 > v17)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v17;
  }

  if (v23 > 9)
  {
    v22 = v23;
  }

  result = a1[v22];
  if (result >= 4)
  {
    if (v22 <= 3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 4;
    }

    switch(v25)
    {
      case 1:
        v26 = *a1;
        goto LABEL_36;
      case 2:
        v26 = *a1;
        goto LABEL_36;
      case 3:
        v26 = *a1 | (a1[2] << 16);
        goto LABEL_36;
      case 4:
        v26 = *a1;
LABEL_36:
        if (v22 < 4)
        {
          result = (v26 | ((result - 4) << (8 * v22))) + 4;
        }

        else
        {
          result = (v26 + 4);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCDC4B7C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1DD0DB04C() - 8);
  v6 = v5;
  v62 = a2;
  if (a2 > 3)
  {
    v60 = *(v5 + 64);
    v56 = *(sub_1DD0DC76C() - 8);
    v24 = *(v56 + 80);
    v58 = *(sub_1DD0DB1EC() - 8);
    v50 = *(v58 + 80) | v24;
    v54 = *(sub_1DD0DB4BC() - 8);
    v25 = *(v54 + 80) & 0xF8;
    v26 = *(sub_1DD0DB3EC() - 8);
    v27 = *(v26 + 80);
    v28 = v25 | v27 | 7;
    v52 = *(sub_1DD0DD12C() - 8);
    v29 = *(v52 + 80);
    v30 = *(sub_1DD0DD08C() - 8);
    v31 = (v50 | (v29 | *(v30 + 80))) & 0xF8 | v28;
    v32 = (v60 + v31) & ~v31;
    v33 = *(v56 + 64);
    if (((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v33)
    {
      v33 = ((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v33 <= *(v58 + 64))
    {
      v33 = *(v58 + 64);
    }

    v34 = *(v26 + 64) + ((*(v54 + 64) + v27) & ~v27);
    if (!*(v26 + 84))
    {
      ++v34;
    }

    v35 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 19) | 5;
    if (v33 <= v36)
    {
      v33 = (v35 + 19) | 5;
    }

    v37 = ((((((v35 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v33 <= v37)
    {
      v33 = v37;
    }

    if (v33 <= ((v36 + ((v28 + ((*(v52 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v33 = ((v36 + ((v28 + ((*(v52 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v38 = *(v30 + 64);
    if (v33 > v38)
    {
      v38 = v33;
    }

    if (v38 <= 0x18)
    {
      v38 = 24;
    }

    v39 = ((((v32 + v38 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    v41 = *(a3 + 16);
    v40 = *(a3 + 24);
    v42 = *(swift_getAssociatedTypeWitness() - 8);
    if (*(v42 + 84))
    {
      v43 = *(v42 + 64);
    }

    else
    {
      v43 = *(v42 + 64) + 1;
    }

    if (v43 <= 9)
    {
      v43 = 9;
    }

    if (v43 + 1 > v39)
    {
      v44 = v43 + 1;
    }

    else
    {
      v44 = v39;
    }

    if (v44 <= 9)
    {
      v45 = 9;
    }

    else
    {
      v45 = v44;
    }

    v46 = v62 - 4;
    if (v45 < 4)
    {
      v47 = a1;
      a1[v45] = (v46 >> (8 * v45)) + 4;
      if (!v45)
      {
        return;
      }

      v46 &= ~(-1 << (8 * v45));
    }

    else
    {
      v47 = a1;
      a1[v45] = 4;
    }

    if (v45 >= 4)
    {
      v48 = 4;
    }

    else
    {
      v48 = v45;
    }

    bzero(v47, v45);
    switch(v48)
    {
      case 2:
        *v47 = v46;
        break;
      case 3:
        *v47 = v46;
        v47[2] = BYTE2(v46);
        break;
      case 4:
        *v47 = v46;
        break;
      default:
        *v47 = v46;
        break;
    }
  }

  else
  {
    v59 = *(sub_1DD0DC76C() - 8);
    v57 = *(sub_1DD0DB1EC() - 8);
    v51 = *(sub_1DD0DB4BC() - 8);
    v49 = *(sub_1DD0DB3EC() - 8);
    v53 = *(sub_1DD0DD12C() - 8);
    v55 = *(sub_1DD0DD08C() - 8);
    v8 = *(a3 + 16);
    v7 = *(a3 + 24);
    v9 = *(swift_getAssociatedTypeWitness() - 8);
    v10 = *(v9 + 64);
    if (*(v9 + 84))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }

    v12 = 9;
    if (v11 <= 9)
    {
      v11 = 9;
    }

    v13 = *(v49 + 80);
    v14 = v13 | *(v51 + 80) & 0xF8 | 7;
    v15 = v14 | ((*(v57 + 80) | *(v59 + 80)) | (*(v53 + 80) | *(v55 + 80))) & 0xF8;
    v16 = (*(v6 + 64) + v15) & ~v15;
    v17 = *(v59 + 64);
    if (((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v17)
    {
      v17 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v17 <= *(v57 + 64))
    {
      v17 = *(v57 + 64);
    }

    v18 = *(v49 + 64) + ((*(v51 + 64) + v13) & ~v13);
    if (!*(v49 + 84))
    {
      ++v18;
    }

    v19 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 19) | 5;
    if (v17 <= v20)
    {
      v17 = (v19 + 19) | 5;
    }

    v21 = ((((((v19 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v17 <= v21)
    {
      v17 = v21;
    }

    if (v17 <= ((v20 + ((v14 + ((*(v53 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v17 = ((v20 + ((v14 + ((*(v53 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v17 <= *(v55 + 64))
    {
      v17 = *(v55 + 64);
    }

    if (v17 <= 0x18)
    {
      v17 = 24;
    }

    v22 = ((((v16 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v11 + 1 > v22)
    {
      v23 = v11 + 1;
    }

    else
    {
      v23 = v22;
    }

    if (v23 > 9)
    {
      v12 = v23;
    }

    a1[v12] = a2;
  }
}

_BYTE *sub_1DCDC5388(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCDC5468()
{
  result = qword_1ECCA6200[0];
  if (!qword_1ECCA6200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA6200);
  }

  return result;
}

uint64_t sub_1DCDC54D4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCDBAB48(v6, v2, v1);
}

uint64_t sub_1DCDC556C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA9DC(v4, v0);
}

uint64_t sub_1DCDC55F4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA864(v4, v0);
}

uint64_t sub_1DCDC567C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA5D8(v4, v0);
}

uint64_t sub_1DCDC5704()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA34C(v4, v0);
}

uint64_t sub_1DCDC578C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

_BYTE *sub_1DCDC57E4(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCDC58C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6328, &unk_1DD0F56C0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v14 = v2;
  v15 = a1;
  v16 = a2;
  (*(v11 + 104))(&v13[-v10], *MEMORY[0x1E69E8790]);
  return sub_1DD0DE54C();
}

uint64_t sub_1DCDC59C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  v13 = *(v8 + 16);
  v13(&v20 - v11, a1, v7);
  v14 = type metadata accessor for AnonymousLNConnectionDelegate();
  v15 = objc_allocWithZone(v14);
  v13(&v15[OBJC_IVAR____TtC11SiriKitFlow29AnonymousLNConnectionDelegate_continuation], v12, v7);
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, sel_init);
  (*(v8 + 8))(v12, v7);
  v17 = [a2 executorForAction:a3 options:v21 delegate:v16];
  [v17 perform];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  return sub_1DD0DE4EC();
}

void sub_1DCDC5B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  v11 = a3;
  v21 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v21, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    v15 = [v11 identifier];
    sub_1DD0DB02C();

    sub_1DCB28A60();
    v16 = sub_1DD0DF03C();
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_1DCB10E9C(v16, v18, &v22);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1DCAFC000, v21, v12, "App intent AsyncStream terminated. Stopping executor %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E12A8390](v14, -1, -1);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  else
  {
    v20 = v21;
  }
}

void sub_1DCDC5DEC()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);
  v12 = v3;
  v13 = OUTLINED_FUNCTION_10_43();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_151();
    v25 = v4;
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315138;
    v17 = [v1 parameterName];
    v18 = sub_1DD0DDFBC();
    v20 = v19;

    v21 = sub_1DCB10E9C(v18, v20, &v26);

    *(v15 + 4) = v21;
    OUTLINED_FUNCTION_8_50(&dword_1DCAFC000, v22, v23, "App intent executore got LNNeedsValueRequest: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v4 = v25;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v26 = v1;
  v27 = 0;
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC6068()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = v2;
  v14 = OUTLINED_FUNCTION_10_43();
  v15 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v16 = 136315394;
    v17 = [v0 parameterName];
    v18 = sub_1DD0DDFBC();
    v27 = v15;
    v19 = v18;
    v21 = v20;

    v22 = sub_1DCB10E9C(v19, v21, &v30);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2112;
    v23 = [v0 value];
    *(v16 + 14) = v23;
    v24 = v28;
    *v28 = v23;
    _os_log_impl(&dword_1DCAFC000, v14, v27, "App intent executor got LNConfirmationRequest: %s, value: %@", v16, 0x16u);
    sub_1DCC3C9EC(v24);
    OUTLINED_FUNCTION_80();
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v30 = v0;
  v31 = 1;
  v25 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v5 + 8))(v11, v3);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC6364()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);
  v12 = v3;
  v13 = OUTLINED_FUNCTION_10_43();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136315394;
    v29 = v4;
    v16 = [v1 parameterName];
    v17 = sub_1DD0DDFBC();
    v19 = v18;

    v20 = sub_1DCB10E9C(v17, v19, &v30);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v1 items];
    v22 = sub_1DCDC6F98();
    v23 = sub_1DD0DE2EC();

    v24 = MEMORY[0x1E12A6960](v23, v22);
    v26 = v25;

    v27 = sub_1DCB10E9C(v24, v26, &v30);
    v4 = v29;

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "App intent executor got LNDisambiguationRequest: %s, items: %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v30 = v1;
  v31 = 2;
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC6688()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);
  v12 = v3;
  v13 = OUTLINED_FUNCTION_10_43();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_151();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v1;
    *v16 = v1;
    v17 = v1;
    OUTLINED_FUNCTION_8_50(&dword_1DCAFC000, v18, v19, "App intent executor got LNActionConfirmationRequest: %@");
    sub_1DCC3C9EC(v16);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC68B4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v35 - v11;
  if (v1)
  {
    v13 = v1;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = v1;
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_151();
      v19 = swift_slowAlloc();
      v35[1] = v1;
      v36 = v19;
      *v18 = 136315138;
      v20 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v21 = sub_1DD0DE02C();
      v23 = sub_1DCB10E9C(v21, v22, &v36);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "App intent executor finished with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v36 = v1;
    v24 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
    OUTLINED_FUNCTION_5_62();
    sub_1DD0DE50C();

LABEL_13:
    OUTLINED_FUNCTION_49();
    return;
  }

  if (v3)
  {
    v25 = qword_1EDE4F900;
    v26 = v3;
    if (v25 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v27 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = v26;
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_151();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v3;
      v33 = v28;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "App intent executor finished with result: %@", v31, 0xCu);
      sub_1DCC3C9EC(v32);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v36 = v3;
    v37 = 4;
    v34 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
    sub_1DD0DE4FC();
    (*(v6 + 8))(v12, v4);
    v36 = 0;
    sub_1DD0DE50C();

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1DCDC6CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnonymousLNConnectionDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AnonymousLNConnectionDelegate()
{
  result = qword_1ECCA62E8;
  if (!qword_1ECCA62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCDC6DF8()
{
  sub_1DCDC6E88();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DCDC6E88()
{
  if (!qword_1ECCA62F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v0 = sub_1DD0DE51C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCA62F8);
    }
  }
}

uint64_t assignWithCopy for LinkConnectionEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for LinkConnectionEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

unint64_t sub_1DCDC6F98()
{
  result = qword_1ECCA6320;
  if (!qword_1ECCA6320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA6320);
  }

  return result;
}

uint64_t sub_1DCDC6FF4(unint64_t a1)
{
  if ((~a1 & 0xF000000000000006) == 0)
  {
    return 0x65746544746F6E2ELL;
  }

  sub_1DCBF4488(a1);
  v2 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v2);

  return 0x757365527361682ELL;
}

uint64_t sub_1DCDC70A8(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 62)
  {
    case 1uLL:
      if (a2 >> 62 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    case 2uLL:
      if (a2 >> 62 != 2)
      {
        goto LABEL_20;
      }

      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v4 = sub_1DD0DE02C();
      v6 = v5;
      v7 = v2;
      if (v4 != sub_1DD0DE02C() || v6 != v8)
      {
        v10 = sub_1DD0DF0AC();

        return v10 & 1;
      }

      goto LABEL_22;
    case 3uLL:
      if (a1 == 0xC000000000000000)
      {
        if (a2 != 0xC000000000000000)
        {
LABEL_20:
          v10 = 0;
          return v10 & 1;
        }
      }

      else if (a1 == 0xC000000000000001 || a2 != 0xC000000000000008)
      {
        goto LABEL_20;
      }

LABEL_22:
      v10 = 1;
      return v10 & 1;
    default:
      if (a2 >> 62)
      {
        goto LABEL_20;
      }

LABEL_18:
      v10 = a2 ^ a1 ^ 1;
      return v10 & 1;
  }
}

uint64_t sub_1DCDC720C(unint64_t a1)
{
  v1 = a1;
  switch(a1 >> 62)
  {
    case 1uLL:
      sub_1DD0DEC1C();

      v2 = 0xD000000000000019;
      goto LABEL_11;
    case 2uLL:
      v9 = 0x2F726F7272652ELL;
      v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v4 = sub_1DD0DE02C();
      goto LABEL_18;
    case 3uLL:
      if (a1 == 0xC000000000000001)
      {
        v6 = 0xD000000000000010;
      }

      else
      {
        v6 = 0x6C6C65636E61632ELL;
      }

      if (a1 == 0xC000000000000000)
      {
        return 0x68747541746F6E2ELL;
      }

      else
      {
        return v6;
      }

    default:
      sub_1DD0DEC1C();

      v2 = 0xD000000000000010;
LABEL_11:
      v9 = v2;
      if (v1)
      {
        v4 = 0x6365725068746977;
      }

      else
      {
        v4 = 0x7369636572506F6ELL;
      }

      if (v1)
      {
        v8 = 0xED00006E6F697369;
      }

      else
      {
        v8 = 0xEB000000006E6F69;
      }

      v5 = v8;
LABEL_18:
      MEMORY[0x1E12A6780](v4, v5);

      return v9;
  }
}

unint64_t sub_1DCDC7408(uint64_t a1, uint64_t a2)
{
  result = 0xF000000000000006;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0xC000000000000000;
      break;
    case 3:
    case 4:
      result = a2 == 0;
      break;
    case 5:
      result = 0xC000000000000001;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v6 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v6, qword_1EDE57E00);
      v7 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v8 = OUTLINED_FUNCTION_44_14();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_14_4();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315394;
        type metadata accessor for AFLocationAuthorizationStyle(0);
        v12 = sub_1DD0DE02C();
        sub_1DCB10E9C(v12, v13, &v20);
        OUTLINED_FUNCTION_31_18();

        *(v10 + 4) = v2;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a1;
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v14, v15, v16, v17, v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        v18 = OUTLINED_FUNCTION_3_71();
        MEMORY[0x1E12A8390](v18);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      sub_1DCDCB0A4();
      swift_allocError();
      *v19 = 0;
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1DCDC75DC()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[10] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v10 = v0[9];

  v11 = *(OUTLINED_FUNCTION_40_17() + 8);
  OUTLINED_FUNCTION_25_1();
  v25 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v0[11] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_18_30(v15);
  OUTLINED_FUNCTION_150();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1DCDC7764()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  v2[12] = v6;
  v2[13] = v7;
  v2[14] = v0;

  if (v0)
  {
    v8 = sub_1DCDC7C70;
  }

  else
  {
    v8 = sub_1DCDC786C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DCDC786C()
{
  v48 = v0;
  v2 = *(v0 + 112);
  v3 = sub_1DCDC7408(*(v0 + 96), *(v0 + 104));
  if (v2)
  {
    *(v0 + 16) = v2;
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_51_16();
    v5 = swift_dynamicCast();
    v6 = *(v0 + 80);
    if (v5)
    {

      v7 = *(v0 + 24);
      v8 = sub_1DD0DD8EC();
      v9 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_62_0())
      {
        v10 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_14_4();
        v11 = swift_slowAlloc();
        v47[0] = v11;
        *v10 = 136315138;
        *(v0 + 40) = v7;
        v12 = v7;
        v13 = sub_1DD0DE02C();
        v15 = sub_1DCB10E9C(v13, v14, v47);

        *(v10 + 4) = v15;
        OUTLINED_FUNCTION_65_8(&dword_1DCAFC000, v8, v9, "#AFLocationServiceAdapter checkSiriLocationAccess - TCC access check failed; AFLocationServiceError=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        v16 = OUTLINED_FUNCTION_3_71();
        MEMORY[0x1E12A8390](v16);
      }

      swift_willThrow();
    }

    else
    {

      v32 = v2;
      v33 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_57_9())
      {
        v34 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_14_4();
        v35 = swift_slowAlloc();
        v47[0] = v35;
        *v34 = 136315138;
        *(v0 + 32) = v2;
        v36 = v2;
        v37 = sub_1DD0DE02C();
        v39 = sub_1DCB10E9C(v37, v38, v47);

        *(v34 + 4) = v39;
        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_65_8(v40, v41, v42, v43);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        v44 = OUTLINED_FUNCTION_3_71();
        MEMORY[0x1E12A8390](v44);
      }

      swift_willThrow();
    }

    OUTLINED_FUNCTION_29();

    return v45();
  }

  else
  {
    v17 = v3;
    v18 = *(v0 + 80);
    sub_1DCDCB08C(v3);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    sub_1DCBB1234(v17);
    if (OUTLINED_FUNCTION_62_0())
    {
      v21 = *(v0 + 104);
      v46 = *(v0 + 96);
      OUTLINED_FUNCTION_14_4();
      v22 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v22 = 136315650;
      *(v0 + 48) = v17;
      sub_1DCDCB08C(v17);
      v23 = sub_1DD0DE02C();
      sub_1DCB10E9C(v23, v24, v47);
      OUTLINED_FUNCTION_31_18();

      *(v22 + 4) = v1;
      *(v22 + 12) = 2080;
      *(v0 + 56) = v21;
      type metadata accessor for CLAccuracyAuthorization(0);
      v25 = sub_1DD0DE02C();
      sub_1DCB10E9C(v25, v26, v47);
      OUTLINED_FUNCTION_31_18();

      *(v22 + 14) = v1;
      *(v22 + 22) = 2080;
      *(v0 + 64) = v46;
      type metadata accessor for AFLocationAuthorizationStyle(0);
      v27 = sub_1DD0DE02C();
      sub_1DCB10E9C(v27, v28, v47);
      OUTLINED_FUNCTION_31_18();

      *(v22 + 24) = v1;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "#AFLocationServiceAdapter checkSiriLocationAccess - TCC access check result: status=%s; accuracy=%s; style=%s", v22, 0x20u);
      OUTLINED_FUNCTION_53_13();
      v29 = OUTLINED_FUNCTION_3_71();
      MEMORY[0x1E12A8390](v29);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v30 = *(v0 + 8);

    return v30(v17);
  }
}

uint64_t sub_1DCDC7E64(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 192) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDC7E7C()
{
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = *(v0 + 192);
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v4;
    *(v5 + 8) = 2048;
    *(v5 + 10) = 0x403E000000000000;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0x12u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 192);

  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  if (v12 == 1)
  {
    v14 = *(v13 + 24);
    OUTLINED_FUNCTION_8();
    v27 = v15 + *v15;
    v17 = *(v16 + 4);
    v18 = swift_task_alloc();
    *(v0 + 160) = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_37_21(v18);
  }

  else
  {
    v22 = *(v13 + 16);
    OUTLINED_FUNCTION_8();
    v28 = v23 + *v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v19 = OUTLINED_FUNCTION_37_21(v26);
  }

  return v20(v19);
}

uint64_t sub_1DCDC811C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v7 = *(v6 + 160);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 168) = v0;

  if (v0)
  {
    v11 = sub_1DCDC882C;
  }

  else
  {
    v11 = sub_1DCDC8220;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DCDC84A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[6] = v1;
  v2[7] = v4;
  v2[8] = v5;
  v2[9] = v0;
  v7 = *(v6 + 176);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 184) = v0;

  if (v0)
  {
    v11 = sub_1DCDC8A20;
  }

  else
  {
    v11 = sub_1DCDC85A8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DCDC8C14(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDC8C28()
{
  OUTLINED_FUNCTION_125();
  v27 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = v0[7];
    v5 = OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_14_4();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315138;
    v0[6] = v4;
    type metadata accessor for AFUserSelectedLocationAuthorizationStyle(0);
    v7 = sub_1DD0DE02C();
    v9 = sub_1DCB10E9C(v7, v8, &v26);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v15 = v0[8];
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 32);
  OUTLINED_FUNCTION_8();
  v25 = (v19 + *v19);
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_1DCDC8E48;
  v23 = v0[7];

  return v25(v23, v16, v17);
}

uint64_t sub_1DCDC8E48()
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

  if (v0)
  {
    v9 = sub_1DCDC8FEC;
  }

  else
  {
    v9 = sub_1DCDC8F44;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCDC8F44()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 72);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCDC91E0(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 80) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDC91F8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v4;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 48);

  v12 = *(OUTLINED_FUNCTION_40_17() + 40);
  OUTLINED_FUNCTION_25_1();
  v27 = v13 + *v13;
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_1DCDC93AC;
  v17 = *(v0 + 80);
  OUTLINED_FUNCTION_150();

  return v21(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1DCDC93AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    v9 = sub_1DCDC9550;
  }

  else
  {
    v9 = sub_1DCDC94A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCDC94A8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 56);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

void sub_1DCDC9744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1DCDCB0F8(v0, v10);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = v10[1];
  *(v7 + 32) = v10[0];
  *(v7 + 48) = v8;
  *(v7 + 64) = v11;
  sub_1DCBC61E8();
}

uint64_t sub_1DCDC9854()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[4] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v10 = v0[3];

  v11 = *(OUTLINED_FUNCTION_40_17() + 48);
  OUTLINED_FUNCTION_25_1();
  v25 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v0[5] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_18_30(v15);
  OUTLINED_FUNCTION_150();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1DCDC99DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    v9 = sub_1DCDC9B7C;
  }

  else
  {
    v9 = sub_1DCDC9AD8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCDC9AD8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCDC9B7C()
{
  OUTLINED_FUNCTION_41();
  v3 = v0[6];
  v4 = v0[4];
  v5 = v3;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_62_0())
  {
    v8 = v0[6];
    v9 = OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_14_4();
    swift_slowAlloc();
    OUTLINED_FUNCTION_192();
    *v9 = 136315138;
    v0[2] = v8;
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    OUTLINED_FUNCTION_67_1(v11, v12, v13, v14, v15, v16, v17, v18, v23);
    OUTLINED_FUNCTION_31_18();

    *(v9 + 4) = v2;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "#AFLocationServiceAdapter dismissTCCDialog - dismissing TCC Dialog failed; error=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    v19 = OUTLINED_FUNCTION_3_71();
    MEMORY[0x1E12A8390](v19);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {
    v20 = v0[6];
  }

  OUTLINED_FUNCTION_29();

  return v21();
}

uint64_t sub_1DCDC9CFC()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2(&unk_1DD0F58A8);
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCDC9D8C;
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_10_44();

  return v5(v3);
}

uint64_t sub_1DCDC9D8C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 24);
  v6 = *v3;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}