uint64_t sub_26831F9A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 224);
  v6 = *v0;
  *(v2 + 232) = v4;

  return MEMORY[0x2822009F8](sub_26831FA98, 0, 0);
}

uint64_t sub_26831FA98()
{
  v1 = v0[29];
  v17 = v0[24];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[26];
  v15 = v0[21];
  v16 = v0[23];
  v21 = v0[20];
  v22 = v0[27];
  v2 = v0[19];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v14 = v0[7];
  v6 = v0[8] + v0[18];
  v7 = sub_2683CC828();
  sub_26837F580(v7, v4);
  v0[5] = sub_2683CC2D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
  sub_2683209A8();
  v8 = sub_2683CBF28();

  (*(v3 + 8))(v4, v5);

  v0[6] = v8;
  sub_2683CBC28();

  sub_2683CC398();

  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];

  OUTLINED_FUNCTION_40();

  return v12();
}

uint64_t sub_26831FC8C(uint64_t a1)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = v1;
  return MEMORY[0x2822009F8](sub_26831FCAC, 0, 0);
}

uint64_t sub_26831FCAC()
{
  v1 = *(v0 + 224);
  v2 = OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_steeringTask;
  swift_beginAccess();
  sub_268167C34(v1 + v2, v0 + 16);
  if (*(v0 + 72) != 255)
  {
    sub_268167C34(v0 + 16, v0 + 80);
    v3 = (v0 + 80);
    if (*(v0 + 136) == 4)
    {
      sub_268193F18(v3, v0 + 144);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v4 = sub_2683CF7E8();
      *(v0 + 232) = __swift_project_value_buffer(v4, qword_28027C958);
      v5 = sub_2683CF7C8();
      v6 = sub_2683CFE98();
      if (os_log_type_enabled(v5, v6))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v7, v8, "[CorrectingSetTaskAttributeFlow.execute] handling set task attribute steering intent");
        OUTLINED_FUNCTION_38();
      }

      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), v10);
      v11 = swift_task_alloc();
      *(v0 + 240) = v11;
      *v11 = v0;
      v11[1] = sub_26831FF24;

      return sub_26822A1A0(v10, v9);
    }

    sub_26813A1A0(v3);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);
  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();
  if (os_log_type_enabled(v14, v15))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v16, v17, "[CorrectingSetTaskAttributeFlow.execute] unexpected task type.");
    OUTLINED_FUNCTION_38();
  }

  sub_268167CA4(v0 + 16);
  v18 = *(v0 + 216);
  OUTLINED_FUNCTION_40();
  v22 = v19;
  v21 = v20;

  return v22(v21);
}

uint64_t sub_26831FF24(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 240);
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v5 + 248) = v1;

  if (v1)
  {
    v9 = sub_2683200C0;
  }

  else
  {
    *(v5 + 256) = a1;
    v9 = sub_268320040;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_268320040()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[32];
  v2 = v0[27];
  v3 = sub_2681DFEB4(v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  sub_268167CA4((v0 + 2));
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2683200C0()
{
  v21 = v0;
  v1 = v0[31];
  v2 = v0[29];
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  sub_268167CA4((v0 + 2));
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    v0[26] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v10 = sub_2683CFAD8();
    v12 = sub_2681610A0(v10, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2680EB000, v4, v5, "[CorrectingSetTaskAttributeFlow] failed create steering intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v13 = v0[31];
  }

  v14 = v0[27];
  OUTLINED_FUNCTION_40();
  v19 = v15;
  v17 = v16;

  return v19(v17);
}

uint64_t sub_268320260()
{
  v1 = OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_correctionsExitValue;
  v2 = sub_2683CC768();
  OUTLINED_FUNCTION_0_9(v2);
  (*(v3 + 8))(v0 + v1);
  sub_268167CA4(v0 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_steeringTask);
  v4 = *(v0 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_taskParser + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_notebookFlowCreator));
  v5 = OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_previousConversationRecord;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F10, &unk_2683E6A80);
  OUTLINED_FUNCTION_0_9(v6);
  (*(v7 + 8))(v0 + v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_deviceState));
  return v0;
}

uint64_t sub_268320338()
{
  sub_268320260();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CorrectingSetTaskAttributeFlow()
{
  result = qword_280252F68;
  if (!qword_280252F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2683203E4()
{
  v0 = sub_2683CC768();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2683204D8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2683204D8()
{
  if (!qword_280252F78)
  {
    sub_268129504(255, &qword_28024F098, 0x277CD4108);
    sub_268129504(255, &qword_280251F18, 0x277CD4110);
    v0 = sub_2683CC858();
    if (!v1)
    {
      atomic_store(v0, &qword_280252F78);
    }
  }
}

uint64_t sub_268320560()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_taskParser);
  v2 = *(v0 + OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_taskParser + 8);

  return v1;
}

uint64_t sub_26832059C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_steeringTask;
  swift_beginAccess();
  sub_268320938(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2683205FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12SiriNotebook30CorrectingSetTaskAttributeFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_2683CC768();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_268320688(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_26835E158(a1, a2, WitnessTable) & 1;
}

uint64_t sub_2683206E4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26812A5A4() & 1;
}

uint64_t sub_268320740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  WitnessTable = swift_getWitnessTable();
  return sub_26835E570(a1, a2, a3, WitnessTable);
}

uint64_t sub_2683207A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268133EC8;

  return sub_26831F2F8();
}

uint64_t sub_268320840()
{
  type metadata accessor for CorrectingSetTaskAttributeFlow();

  return sub_2683CBF88();
}

uint64_t sub_2683208B0(uint64_t a1)
{
  result = sub_2683208F4(&qword_280251F20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2683208F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CorrectingSetTaskAttributeFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268320938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2683209A8()
{
  result = qword_280252F98;
  if (!qword_280252F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280252F90, &qword_2683F5CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280252F98);
  }

  return result;
}

uint64_t sub_268320A10(unsigned __int8 a1)
{
  if (a1 < 8u && ((0x9Bu >> a1) & 1) != 0)
  {
    return qword_2683F0EE8[a1];
  }

  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C940);
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    v7 = sub_2683CFAD8();
    v9 = sub_2681610A0(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2680EB000, v3, v4, "Got unexpected noun of %s when converting to INNotebookItemType, returning unknown.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

unint64_t INNotebookItemType.description.getter(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x65746F6E2ELL;
      break;
    case 2:
      result = 0x73694C6B7361742ELL;
      break;
    case 3:
      result = 0x6B7361742ELL;
      break;
    default:
      sub_2683D0178();

      v3 = sub_2683D0568();
      MEMORY[0x26D616690](v3);

      MEMORY[0x26D616690](41, 0xE100000000000000);
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_268320CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  switch(a1)
  {
    case 0:
      break;
    case 1:
    case 2:
    case 3:
      sub_2683CFB38();
      v4 = 0;
      break;
    default:
      if (qword_28024C8E0 != -1)
      {
        swift_once();
      }

      v5 = sub_2683CF7E8();
      __swift_project_value_buffer(v5, qword_28027C958);
      v6 = sub_2683CF7C8();
      v7 = sub_2683CFE78();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v15 = v9;
        *v8 = 136446210;
        v10 = INNotebookItemType.description.getter(a1);
        v12 = sub_2681610A0(v10, v11, &v15);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_2680EB000, v6, v7, "[INNotebookItemType asCATEnum] got unknown value: %{public}s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      v4 = 1;
      break;
  }

  v13 = sub_2683CF168();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v13);
}

uint64_t sub_268320E94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = objc_allocWithZone(MEMORY[0x277D47768]);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v18 = [v10 init];
      v11 = [objc_allocWithZone(MEMORY[0x277D47A40]) init];
      sub_2681C3150(v8, v9, v11);
      [v18 setTitle_];

      v12 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2683D2250;
      v19[3] = &type metadata for DIStringValue;
      v14 = sub_268200DC4();
      v19[0] = v7;
      v19[1] = v6;
      v19[4] = v14;
      v19[5] = a2;
      __swift_project_boxed_opaque_existential_1(v19, &type metadata for DIStringValue);
      v15 = DirectInvocationCodable.serializeToStartLocalRequest(context:)(a2, &type metadata for DIStringValue, v14);
      sub_2682E5F50(v19);
      *(v13 + 32) = v15;
      sub_268210FF8(v13, v12);
      [v18 setAction_];

      sub_2683D01F8();
      v16 = *(v20 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v5 += 4;
      --v3;
    }

    while (v3);
    return v20;
  }

  return result;
}

id sub_2683210B4(uint64_t a1, void *a2)
{
  v4 = sub_2683CB598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  v11 = &unk_279C3A000;
  if (v9)
  {
    v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v5;
    v32 = v4;
    v35 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v12 = (a1 + 56);
    v33 = xmmword_2683D2250;
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v16 = *(v12 - 1);
      v15 = *v12;
      v17 = objc_allocWithZone(MEMORY[0x277D47AB8]);

      v18 = [v17 init];
      sub_26820B598(v16, v15, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
      v19 = swift_allocObject();
      *(v19 + 16) = v33;
      v34[3] = &type metadata for DIStringValue;
      v20 = sub_268200DC4();
      v34[0] = v13;
      v34[1] = v14;
      v34[4] = v20;
      v34[5] = a2;
      __swift_project_boxed_opaque_existential_1(v34, &type metadata for DIStringValue);

      v21 = DirectInvocationCodable.serializeToStartLocalRequest(context:)(a2, &type metadata for DIStringValue, v20);
      sub_2682E5F50(v34);
      *(v19 + 32) = v21;
      sub_268210FF8(v19, v18);

      sub_2683D01F8();
      v22 = *(v35 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v12 += 4;
      --v9;
    }

    while (v9);
    v10 = v35;
    v5 = v31;
    v4 = v32;
    v8 = v30;
    v11 = &unk_279C3A000;
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D47A60]) v11[259]];
  sub_268321614(v10, v23);
  v24 = v23;
  sub_2683CB588();
  v25 = sub_2683CB548();
  v27 = v26;
  (*(v5 + 8))(v8, v4);
  sub_268321688(v25, v27, v24);

  return v24;
}

uint64_t sub_268321358@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = (a1 + 56);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v29 = v3;
      v8 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = v4;
      v11 = *(v5 - 1);
      v10 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_2683D1EC0;
      *(v12 + 56) = &type metadata for CasinoCommands.DirectInvocation;
      *(v12 + 64) = &off_2879030A8;
      v13 = swift_allocObject();
      *(v12 + 32) = v13;
      v13[5] = &type metadata for DIStringValue;
      v14 = sub_268200DC4();
      v13[2] = v8;
      v13[3] = v7;
      v13[6] = v14;
      v13[7] = a2;
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v10;
      v4 = v9;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
      *(v15 + 48) = 2;
      *(v15 + 56) = v9;
      *(v15 + 64) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_2683D1EC0;
      *(v16 + 32) = &unk_2683D82A0;
      *(v16 + 40) = v15;
      OUTLINED_FUNCTION_68_0();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;

      v18 = a2;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
        v6 = v22;
      }

      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
        v6 = v23;
      }

      *(v6 + 16) = v20 + 1;
      v21 = v6 + 16 * v20;
      *(v21 + 32) = &unk_2683D8170;
      *(v21 + 40) = v17;
      v5 += 4;
      v3 = v29 - 1;
    }

    while (v29 != 1);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_68_0();
  v24 = swift_allocObject();
  *(v24 + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2683D1EC0;
  *(v25 + 32) = &unk_2683DC920;
  *(v25 + 40) = v24;
  OUTLINED_FUNCTION_68_0();
  result = swift_allocObject();
  *(result + 16) = v25;
  *a3 = &unk_2683F0F40;
  a3[1] = result;
  return result;
}

void sub_268321614(uint64_t a1, void *a2)
{
  sub_2683216EC();
  v3 = sub_2683CFC98();

  [a2 setItems_];
}

void sub_268321688(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setAceId_];
}

unint64_t sub_2683216EC()
{
  result = qword_280252FA0;
  if (!qword_280252FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280252FA0);
  }

  return result;
}

uint64_t sub_26832175C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v14 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = swift_checkMetadataState();
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      v15 = *(v7 - 8) + 64;
      v12 = *(a1 + 96);
      v13 = *(a1 + 112);
      v9 = type metadata accessor for PromptWrapperFlow.State();
      v4 = v9;
      if (v10 <= 0x3F)
      {
        v16 = *(v9 - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return v4;
}

void sub_26832189C(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  v5 = *(*v2 + 96);
  v34 = *(*v2 + 80);
  v35 = v5;
  v36 = v4;
  v6 = type metadata accessor for PromptWrapperFlow.State();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v14 = sub_2683CF7E8();
  __swift_project_value_buffer(v14, qword_28027C958);
  v15 = v7[2];
  v15(v13, a1, v6);
  swift_retain_n();
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v18 = 136446466;
    v15(v11, v13, v6);
    v31 = v17;
    v19 = v7[1];
    v19(v13, v6);
    v30 = v16;
    v20 = sub_268323408(v6);
    v22 = v21;
    v19(v11, v6);
    v23 = sub_2681610A0(v20, v22, &v33);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = *(*v2 + 136);
    swift_beginAccess();
    v15(v11, v2 + v24, v6);

    v25 = sub_268323408(v6);
    v27 = v26;

    v19(v11, v6);
    v28 = sub_2681610A0(v25, v27, &v33);

    *(v18 + 14) = v28;
    v16 = v30;
    _os_log_impl(&dword_2680EB000, v30, v31, "[PromptWrapperFlow] transitioned from %{public}s to %{public}s.", v18, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v29, -1, -1);
    MEMORY[0x26D617A40](v18, -1, -1);
  }

  else
  {

    (v7[1])(v13, v6);
  }
}

uint64_t sub_268321C4C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  v17[2] = *(*v1 + 80);
  v17[3] = v5;
  v18 = v4;
  v6 = type metadata accessor for PromptWrapperFlow.State();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v17 - v12;
  v14 = *(v3 + 136);
  OUTLINED_FUNCTION_10_27();
  (*(v9 + 16))(v13, v1 + v14, v6);
  swift_beginAccess();
  (*(v9 + 24))(v1 + v14, a1, v6);
  swift_endAccess();
  sub_26832189C(v13);
  v15 = *(v9 + 8);
  v15(a1, v6);
  return (v15)(v13, v6);
}

uint64_t sub_268321DEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 96);
  v34 = *(v5 + 80);
  v36 = v34;
  v37 = v6;
  v33 = *(v5 + 104);
  v38 = v33;
  v7 = type metadata accessor for PromptWrapperFlow.State();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v32 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = *(v4 + 136);
  OUTLINED_FUNCTION_10_27();
  v18 = *(v10 + 16);
  v18(v16, &v2[v17], v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2683CC628();
    v19 = sub_2683CC1C8();
    OUTLINED_FUNCTION_1(v19);
    return (*(v20 + 32))(a1, v16);
  }

  else
  {
    v31 = a1;
    (*(v10 + 8))(v16, v7);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v22 = sub_2683CF7E8();
    __swift_project_value_buffer(v22, qword_28027C958);

    v23 = sub_2683CF7C8();
    v24 = sub_2683CFE88();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      v18(v32, &v2[v17], v7);
      swift_getWitnessTable();
      v27 = sub_2683CFAE8();
      v29 = sub_2681610A0(v27, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2680EB000, v23, v24, "exitValue called when flow is in an invalid state %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v30 = &v2[*(*v2 + 120)];
    return sub_2683CBF18();
  }
}

uint64_t sub_268322140(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_9_31();
  v6 = v5;
  v7 = sub_2683CCBA8();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v55 = v9;
  v56 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9_31();
  v15 = *(v14 + 80);
  OUTLINED_FUNCTION_9_31();
  v17 = *(v16 + 104);
  v18 = *(v4 + 112);
  v59[1] = v15;
  v58 = *(v6 + 88);
  v60 = v58;
  v61 = v17;
  v62 = v18;
  v19 = type metadata accessor for PromptWrapperFlow.State();
  v20 = OUTLINED_FUNCTION_0_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_1();
  v57 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v54 - v27;
  OUTLINED_FUNCTION_9_31();
  v30 = *(v29 + 136);
  OUTLINED_FUNCTION_10_27();
  (*(v22 + 16))(v28, &v2[v30], v19);
  LODWORD(v30) = swift_getEnumCaseMultiPayload();
  (*(v22 + 8))(v28, v19);
  if (v30 != 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v46 = sub_2683CF7E8();
    __swift_project_value_buffer(v46, qword_28027C958);
    v47 = sub_2683CF7C8();
    v48 = sub_2683CFE98();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_17;
    }

    v49 = OUTLINED_FUNCTION_21_5();
    *v49 = 0;
    v50 = "[PromptWrapperFlow] Got input when not running wrapped flow. Ignoring...";
    goto LABEL_16;
  }

  v31 = &v2[*(*v2 + 120)];
  if ((sub_2683CBEF8() & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v51 = sub_2683CF7E8();
    __swift_project_value_buffer(v51, qword_28027C958);
    v47 = sub_2683CF7C8();
    v48 = sub_2683CFE98();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_17;
    }

    v49 = OUTLINED_FUNCTION_21_5();
    *v49 = 0;
    v50 = "[PromptWrapperFlow] Wrapped flow does not want to accept input. Ignoring...";
LABEL_16:
    _os_log_impl(&dword_2680EB000, v47, v48, v50, v49, 2u);
    OUTLINED_FUNCTION_38();
LABEL_17:

    return 0;
  }

  v32 = *(*v2 + 128);
  v33 = (*(v18 + 8))(a1, v58, v18);
  if (v33)
  {
    v34 = v33;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v35 = sub_2683CF7E8();
    __swift_project_value_buffer(v35, qword_28027C958);
    v36 = v55;
    v37 = v56;
    (*(v55 + 16))(v13, a1, v56);
    v38 = sub_2683CF7C8();
    v39 = sub_2683CFE98();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *&v58 = swift_slowAlloc();
      v59[0] = v58;
      *v40 = 136315138;
      sub_268323C04();
      v41 = sub_2683D0568();
      v42 = v36;
      v44 = v43;
      (*(v42 + 8))(v13, v37);
      v45 = sub_2681610A0(v41, v44, v59);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2680EB000, v38, v39, "[PromptWrapperFlow] Inserting guard flow before letting wrapped flow process input: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      (*(v36 + 8))(v13, v37);
    }

    v53 = v57;
    *v57 = v34;
    swift_storeEnumTagMultiPayload();

    sub_268321C4C(v53);
  }

  return 1;
}

uint64_t sub_26832267C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  v3 = *v1;
  v4 = sub_2683CC6F8();
  *(v2 + 136) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v2 + 144) = v5;
  v7 = *(v6 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  v8 = sub_2683CC408();
  *(v2 + 168) = v8;
  OUTLINED_FUNCTION_3_1(v8);
  *(v2 + 176) = v9;
  v11 = *(v10 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = *(v3 + 80);
  *(v2 + 200) = *(v3 + 88);
  OUTLINED_FUNCTION_5_40();
  *(v2 + 208) = *(v12 + 96);
  OUTLINED_FUNCTION_5_40();
  *(v2 + 216) = *(v13 + 104);
  OUTLINED_FUNCTION_5_40();
  v15 = *(v14 + 112);
  *&v17 = v16;
  *(&v17 + 1) = v18;
  *&v20 = v19;
  *(&v20 + 1) = v21;
  *(v2 + 224) = v15;
  *(v2 + 32) = v20;
  *(v2 + 16) = v17;
  *(v2 + 48) = v15;
  v22 = type metadata accessor for PromptWrapperFlow.State();
  *(v2 + 232) = v22;
  OUTLINED_FUNCTION_3_1(v22);
  *(v2 + 240) = v23;
  v25 = *(v24 + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26832288C, 0, 0);
}

uint64_t sub_26832288C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 128);
  v5 = *(*v4 + 136);
  OUTLINED_FUNCTION_10_27();
  (*(v3 + 16))(v1, v4 + v5, v2);
  OUTLINED_FUNCTION_41_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = *(v0 + 256);
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      v33 = *(v0 + 120);
      sub_2683CC3F8();
      v34 = *(v32 + 8);
      v35 = OUTLINED_FUNCTION_41_0();
      v36(v35);
      goto LABEL_12;
    case 2u:
      *(v0 + 264) = *(**(v0 + 128) + 120);
      v11 = *(MEMORY[0x277D5B878] + 4);
      v12 = swift_task_alloc();
      *(v0 + 272) = v12;
      *v12 = v0;
      v12[1] = sub_268322C4C;
      v13 = *(v0 + 216);
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);

      return MEMORY[0x2821BA608](v14, v15, v13);
    case 3u:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v16 = sub_2683CF7E8();
      __swift_project_value_buffer(v16, qword_28027C958);
      v17 = sub_2683CF7C8();
      v18 = sub_2683CFE88();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_21_5();
        *v19 = 0;
        _os_log_impl(&dword_2680EB000, v17, v18, "[PromptWrapperFlow] execute called while still running child flow.", v19, 2u);
        OUTLINED_FUNCTION_38();
      }

      v20 = *(v0 + 248);
      v22 = *(v0 + 224);
      v21 = *(v0 + 232);
      v23 = *(v0 + 120);
      v24 = *(v0 + 128);
      v44 = *(v0 + 192);
      v45 = *(v0 + 208);

      *(v0 + 56) = v44;
      *(v0 + 72) = v45;
      *(v0 + 88) = v22;
      type metadata accessor for PromptWrapperFlow.Errors();
      swift_getWitnessTable();
      v25 = swift_allocError();
      *v26 = 1;
      *v20 = v25;
      *(v20 + 8) = 0;
      v27 = *MEMORY[0x277D5BC30];
      sub_2683CC628();
      v28 = sub_2683CC1C8();
      OUTLINED_FUNCTION_1(v28);
      (*(v29 + 104))(v20, v27);
      swift_storeEnumTagMultiPayload();
      sub_268321C4C(v20);
      sub_2683CC3F8();
      goto LABEL_12;
    default:
      v6 = *(v0 + 248);
      v7 = *(v0 + 232);
      v9 = *(v0 + 120);
      v8 = *(v0 + 128);
      v10 = **(v0 + 256);
      swift_storeEnumTagMultiPayload();
      sub_268321C4C(v6);

      sub_2683CC3A8();

LABEL_12:
      v38 = *(v0 + 248);
      v37 = *(v0 + 256);
      v39 = *(v0 + 184);
      v41 = *(v0 + 152);
      v40 = *(v0 + 160);

      v42 = *(v0 + 8);

      return v42();
  }
}

uint64_t sub_268322C4C()
{
  v1 = *(*v0 + 272);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_268322D40, 0, 0);
}

uint64_t sub_268322D40()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  sub_2683CC368();
  (*(v5 + 104))(v3, *MEMORY[0x277D5BEC8], v4);
  LOBYTE(v1) = sub_2683CC6E8();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  if (v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_21_5();
      *v10 = 0;
      _os_log_impl(&dword_2680EB000, v8, v9, "[PromptWrapperFlow] wrapped flow completed.", v10, 2u);
      OUTLINED_FUNCTION_38();
    }

    v11 = v0[33];
    v12 = v0[31];
    v13 = v0[29];
    v14 = v0[27];
    v15 = v0[24];
    v16 = v0[16];

    sub_2683CBF18();
    swift_storeEnumTagMultiPayload();
    sub_268321C4C(v12);
  }

  (*(v0[22] + 32))(v0[15], v0[23], v0[21]);
  v18 = v0[31];
  v17 = v0[32];
  v19 = v0[23];
  v21 = v0[19];
  v20 = v0[20];

  v22 = v0[1];

  return v22();
}

uint64_t sub_268322F54(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v7 = *(*a2 + 112);
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v8 = type metadata accessor for PromptWrapperFlow.State();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = *a1;
  if (sub_2683CBC88())
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v13 = sub_2683CF7E8();
    __swift_project_value_buffer(v13, qword_28027C958);
    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2680EB000, v14, v15, "[PromptWrapperFlow] Inserted guard flow passed. Resuming wrapped flow.", v16, 2u);
      MEMORY[0x26D617A40](v16, -1, -1);
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C958);
    v18 = sub_2683CF7C8();
    v19 = sub_2683CFE98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v8;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2680EB000, v18, v19, "[PromptWrapperFlow] Inserted guard flow failed. Exiting with a (handled) error.", v20, 2u);
      MEMORY[0x26D617A40](v21, -1, -1);
    }

    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v32 = v7;
    type metadata accessor for PromptWrapperFlow.Errors();
    swift_getWitnessTable();
    v22 = swift_allocError();
    *v23 = 0;
    *v11 = v22;
    v11[8] = 1;
    v24 = *MEMORY[0x277D5BC30];
    sub_2683CC628();
    v25 = sub_2683CC1C8();
    (*(*(v25 - 8) + 104))(v11, v24, v25);
  }

  swift_storeEnumTagMultiPayload();
  return sub_268321C4C(v11);
}

uint64_t sub_2683232AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6961466472617567;
  }
}

uint64_t sub_2683232F0()
{
  sub_2683D0698();
  sub_2680EFC3C(v2, *v0);
  return sub_2683D06D8();
}

uint64_t sub_268323340()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 112);
  type metadata accessor for PromptWrapperFlow();
  swift_getWitnessTable();
  return sub_2683CBF48();
}

unint64_t sub_268323408(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_0_3(a1);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v7);
  OUTLINED_FUNCTION_41_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = *(v3 + 8);
      v11 = OUTLINED_FUNCTION_41_0();
      v12(v11);
      result = 0x6574656C706D6F63;
      break;
    case 2u:
      result = 0xD000000000000012;
      break;
    case 3u:
      result = 0xD000000000000013;
      break;
    default:
      v8 = *v7;

      result = 0x6E69747265736E69;
      break;
  }

  return result;
}

uint64_t sub_268323574()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_40();
  v3 = v2;
  (*(*(v1[10] - 8) + 8))(v0 + v1[15], v1[10]);
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 128), v1[11]);
  v4 = *(*v0 + 136);
  OUTLINED_FUNCTION_5_40();
  v9 = *(v3 + 96);
  v10 = *(v5 + 112);
  v6 = type metadata accessor for PromptWrapperFlow.State();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_2683236EC()
{
  sub_268323574();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268323774(uint64_t a1)
{
  sub_2683237F8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 32);
    sub_2683CC628();
    sub_2683CC1C8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2683237F8()
{
  if (!qword_2802530B8[0])
  {
    v0 = sub_2683CBD88();
    if (!v1)
    {
      atomic_store(v0, qword_2802530B8);
    }
  }
}

uint64_t sub_268323870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268323920;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268323920(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_268323A38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268323AD4;

  return sub_26832267C(a1);
}

uint64_t sub_268323AD4()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_268323C04()
{
  result = qword_28024DEE8;
  if (!qword_28024DEE8)
  {
    sub_2683CCBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEE8);
  }

  return result;
}

_BYTE *sub_268323C64(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_10_27()
{

  return swift_beginAccess();
}

uint64_t type metadata accessor for AddTasksV2CATsSimple()
{
  result = qword_280253140;
  if (!qword_280253140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268323E08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268323E1C()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_14_15(v2, xmmword_2683D1EC0);
  if (v1)
  {
    v3 = type metadata accessor for NotebookSpatialEventTriggerConcept(v3);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v9 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_19_29(37);

  return (v9)(v7);
}

uint64_t sub_268323F28()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268323FB8()
{
  OUTLINED_FUNCTION_25();
  v14 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v5);
  if (v6)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v0[6] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_18(v10);
  OUTLINED_FUNCTION_13_17();
  v11 = OUTLINED_FUNCTION_19_29(32);

  return v13(v11);
}

uint64_t sub_268324114()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2683241A4()
{
  OUTLINED_FUNCTION_25();
  v14 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v5);
  if (v6)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v0[6] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_18(v10);
  OUTLINED_FUNCTION_13_17();
  v11 = OUTLINED_FUNCTION_19_29(51);

  return v13(v11);
}

uint64_t sub_268324300()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268324390()
{
  OUTLINED_FUNCTION_25();
  v14 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_12(v4, xmmword_2683D1EC0);
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v5);
  if (v6)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v0[6] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_18(v10);
  OUTLINED_FUNCTION_13_17();
  v11 = OUTLINED_FUNCTION_19_29(28);

  return v13(v11);
}

uint64_t sub_2683244EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268324500()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_14_15(v2, xmmword_2683D1EC0);
  if (v1)
  {
    v3 = type metadata accessor for NotebookTemporalEventTriggerConcept();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v9 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_19_29(38);

  return (v9)(v7);
}

uint64_t sub_26832460C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268324620()
{
  OUTLINED_FUNCTION_25();
  v10 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_17(42);

  return v8(v7);
}

uint64_t sub_268324724(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268324738()
{
  OUTLINED_FUNCTION_25();
  v10 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_17(37);

  return v8(v7);
}

uint64_t sub_26832483C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268324850()
{
  OUTLINED_FUNCTION_25();
  v10 = v1;
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);
  v7 = OUTLINED_FUNCTION_17(33);

  return v8(v7);
}

uint64_t sub_268324954()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(43);

  return v4(v3);
}

uint64_t sub_2683249F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 73) = a5;
  *(v7 + 72) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268324A1C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2683F11B0;
  *(v2 + 32) = 0x7473694C6B736174;
  *(v2 + 40) = 0xE800000000000000;
  if (v1)
  {
    v3 = type metadata accessor for NotebookReminderListConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x736B736174;
  *(v2 + 88) = 0xE500000000000000;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280253150, &qword_2683F1268);
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 7368801;
  *(v2 + 136) = 0xE300000000000000;
  v8 = 0;
  if (v5)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  v9 = *(v0 + 74);
  v10 = *(v0 + 73);
  v11 = *(v0 + 72);
  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  *(v2 + 176) = 0xD000000000000019;
  *(v2 + 184) = 0x8000000268400980;
  v12 = MEMORY[0x277D839B0];
  *(v2 + 192) = v11;
  *(v2 + 216) = v12;
  *(v2 + 224) = 0xD000000000000013;
  *(v2 + 232) = 0x80000002684009A0;
  *(v2 + 240) = v10;
  *(v2 + 264) = v12;
  *(v2 + 272) = 0xD00000000000001ELL;
  *(v2 + 280) = 0x80000002684009C0;
  *(v2 + 312) = v12;
  v13 = *(MEMORY[0x277D55C70] + 4);
  v17 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  *(v2 + 288) = v9;

  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = sub_268324C64;
  v15 = *(v0 + 40);

  return v17(0xD000000000000020, 0x8000000268400950, v2);
}

uint64_t sub_268324C64()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_268324D8C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_268324DEC()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(39);

  return v4(v3);
}

uint64_t sub_268324E90()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(34);

  return v4(v3);
}

uint64_t sub_268324F34()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812BEB4;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(30);

  return v4(v3);
}

uint64_t sub_268324FD8()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(40);

  return v4(v3);
}

uint64_t sub_26832507C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268325094()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_2683D2890;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_2683CF138();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 56);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x7069746C754D7369;
  *(v2 + 88) = 0xEF736B736154656CLL;
  *(v2 + 120) = MEMORY[0x277D839B0];
  *(v2 + 96) = v4;
  v10 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_18_18(v6);
  v8 = OUTLINED_FUNCTION_19_29(26);

  return (v10)(v8);
}

uint64_t sub_2683251F4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_268325244(v3, v4);
}

uint64_t sub_268325244(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = OUTLINED_FUNCTION_23(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_26812C2A8(a1, &v20 - v17, &qword_28024D258, &unk_2683D1F60);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v18;
}

uint64_t sub_2683253BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_2683254D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268325548(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_268325684(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2683258C0()
{
  v1 = *(v0 + 16);
  sub_2683CC3F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26832598C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268195F80;

  return sub_2683258A0(a1);
}

uint64_t sub_268325A58()
{
  v1 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_title;
  sub_2683CF168();
  OUTLINED_FUNCTION_23_24(v0 + v1);
  OUTLINED_FUNCTION_23_24(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_identifier);
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isCompleted) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isFlagged) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isTagged) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_temporalEventTrigger) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_spatialEventTrigger) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactTrigger) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_createdDate) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_modifiedDate) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isTitleLong) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_calendar) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isAllDay) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_location) = 0;
  OUTLINED_FUNCTION_23_24(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactName);
  return v0;
}

uint64_t sub_268325BA0(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = a1;
}

uint64_t sub_268325BE8()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_title);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_identifier);
  v1 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_temporalEventTrigger);

  v2 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_spatialEventTrigger);

  v3 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactTrigger);

  v4 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_createdDate);

  v5 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_modifiedDate);

  v6 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_calendar);

  v7 = *(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_location);

  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactName);
  return v0;
}

void *sub_268325CD4(uint64_t a1)
{
  v1[2] = 0;
  v3 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_title;
  swift_beginAccess();
  sub_26816349C(a1 + v3, v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_title);
  v4 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_identifier;
  swift_beginAccess();
  sub_26816349C(a1 + v4, v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_identifier);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isCompleted) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isCompleted);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isFlagged) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isFlagged);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTagged) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isTagged);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_temporalEventTrigger) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_temporalEventTrigger);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_spatialEventTrigger) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_spatialEventTrigger);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactTrigger) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactTrigger);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_createdDate) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_createdDate);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_modifiedDate) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_modifiedDate);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTitleLong) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isTitleLong);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_calendar) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_calendar);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isAllDay) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isAllDay);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_location) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_location);
  v5 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactName;
  swift_beginAccess();
  sub_26816349C(a1 + v5, v1 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactName);

  if (!sub_268325FF8())
  {
    v6 = sub_2683CF208();
    sub_2683CFE78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253240, &qword_2683F1440);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2683D1EC0;
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253248, &qword_2683F1448);
    v8 = sub_2683CFAD8();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_268327B74();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_2683CF708();
  }

  return v1;
}

BOOL sub_268325FF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  sub_26816349C(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_title, &v8 - v3);
  v5 = sub_2683CF168();
  v6 = __swift_getEnumTagSinglePayload(v4, 1, v5) != 1;
  sub_26812E924(v4);
  return v6;
}

uint64_t sub_2683260A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v17 || (OUTLINED_FUNCTION_5_41() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_title, v16);
    v18 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v16);
    if (!v17)
    {
      goto LABEL_107;
    }

    v19 = v16;
    goto LABEL_9;
  }

  v21 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v21 || (OUTLINED_FUNCTION_5_41() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_identifier, v14);
    v18 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v14);
    if (!v17)
    {
      goto LABEL_107;
    }

    v19 = v14;
LABEL_9:
    result = sub_26812E924(v19);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = OUTLINED_FUNCTION_24_17();
  v23 = a1 == result && a2 == v22;
  if (v23 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v24 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isCompleted;
LABEL_25:
    v25 = *(v3 + v24);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v25;
    return result;
  }

  result = 0x656767616C467369;
  v26 = a1 == 0x656767616C467369 && a2 == 0xE900000000000064;
  if (v26 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v24 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isFlagged;
    goto LABEL_25;
  }

  result = 0x6465676761547369;
  v27 = a1 == 0x6465676761547369 && a2 == 0xE800000000000000;
  if (v27 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v24 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTagged;
    goto LABEL_25;
  }

  result = 0xD000000000000014;
  v28 = a1 == 0xD000000000000014 && 0x80000002683FA730 == a2;
  if (v28 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v29 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_temporalEventTrigger);
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = type metadata accessor for NotebookTemporalEventTriggerConcept();
    goto LABEL_45;
  }

  v31 = a1 == 0xD000000000000013 && 0x80000002683FA750 == a2;
  if (v31 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v29 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_spatialEventTrigger);
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    goto LABEL_45;
  }

  result = OUTLINED_FUNCTION_22_19();
  v33 = a1 == result && a2 == v32;
  if (v33 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v29 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactTrigger);
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = sub_2683CEF98();
    goto LABEL_45;
  }

  result = 0x4464657461657263;
  v34 = a1 == 0x4464657461657263 && a2 == 0xEB00000000657461;
  if (v34 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v35 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_createdDate;
LABEL_68:
    v29 = *(v3 + v35);
    if (!v29)
    {
      goto LABEL_10;
    }

    v30 = sub_2683CEFE8();
    goto LABEL_45;
  }

  result = OUTLINED_FUNCTION_30_13() & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  v37 = a1 == result && a2 == v36;
  if (v37 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v35 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_modifiedDate;
    goto LABEL_68;
  }

  result = OUTLINED_FUNCTION_25_21();
  v39 = a1 == result && a2 == v38;
  if (v39 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v24 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTitleLong;
    goto LABEL_25;
  }

  result = 0x7261646E656C6163;
  v40 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v40 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v35 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_calendar;
    goto LABEL_68;
  }

  result = 0x7961446C6C417369;
  v41 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
  if (v41 || (result = OUTLINED_FUNCTION_5_41(), (result & 1) != 0))
  {
    v24 = OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isAllDay;
    goto LABEL_25;
  }

  result = 0x6E6F697461636F6CLL;
  if (a1 != 0x6E6F697461636F6CLL || a2 != 0xE800000000000000)
  {
    result = OUTLINED_FUNCTION_5_41();
    if ((result & 1) == 0)
    {
      if (a1 != 0x4E746361746E6F63 || a2 != 0xEB00000000656D61)
      {
        result = OUTLINED_FUNCTION_5_41();
        if ((result & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactName, v11);
      v18 = sub_2683CF168();
      OUTLINED_FUNCTION_4_6(v11);
      if (!v17)
      {
LABEL_107:
        *(a3 + 24) = v18;
        __swift_allocate_boxed_opaque_existential_0(a3);
        OUTLINED_FUNCTION_18_28();
        return (*(v44 + 32))();
      }

      v19 = v11;
      goto LABEL_9;
    }
  }

  v29 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_location);
  if (!v29)
  {
    goto LABEL_10;
  }

  v30 = sub_2683CF088();
LABEL_45:
  *(a3 + 24) = v30;
  *a3 = v29;
}

uint64_t sub_268326628()
{
  v0 = sub_2683D0408();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268326678(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = OUTLINED_FUNCTION_24_17();
      break;
    case 3:
      result = 0x656767616C467369;
      break;
    case 4:
      v3 = 0x676761547369;
      goto LABEL_8;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = OUTLINED_FUNCTION_22_19();
      break;
    case 8:
      result = 0x4464657461657263;
      break;
    case 9:
      v3 = OUTLINED_FUNCTION_30_13();
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 10:
      result = OUTLINED_FUNCTION_25_21();
      break;
    case 11:
      result = 0x7261646E656C6163;
      break;
    case 12:
      result = 0x7961446C6C417369;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
      result = 0x4E746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268326850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268326628();
  *a2 = result;
  return result;
}

uint64_t sub_268326880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268326678(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2683268B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268326674();
  *a1 = result;
  return result;
}

uint64_t sub_2683268E8(uint64_t a1)
{
  v2 = sub_268327B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268326924(uint64_t a1)
{
  v2 = sub_268327B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268326960()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_title);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_identifier);
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_temporalEventTrigger);

  v2 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_spatialEventTrigger);

  v3 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactTrigger);

  v4 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_createdDate);

  v5 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_modifiedDate);

  v6 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_calendar);

  v7 = *(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_location);

  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactName);
  return v0;
}

uint64_t sub_268326A38(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_268326ABC()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268326B78(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253228, &qword_2683F1438);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v34 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268327B20();
  OUTLINED_FUNCTION_26_20();
  sub_2683D0718();
  v36 = 0;
  sub_2683CF168();
  OUTLINED_FUNCTION_9_32();
  sub_268327AD8(v14, v15);
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_6_26();
  sub_2683D0508();
  if (!v2)
  {
    v36 = 1;
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    v16 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isCompleted);
    OUTLINED_FUNCTION_1_38(2);
    v17 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isFlagged);
    OUTLINED_FUNCTION_1_38(3);
    v18 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTagged);
    OUTLINED_FUNCTION_1_38(4);
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_temporalEventTrigger);
    OUTLINED_FUNCTION_21_21(5);
    type metadata accessor for NotebookTemporalEventTriggerConcept();
    OUTLINED_FUNCTION_14_27();
    sub_268327AD8(v19, v20);
    OUTLINED_FUNCTION_0_59();
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_spatialEventTrigger);
    v21 = OUTLINED_FUNCTION_21_21(6);
    type metadata accessor for NotebookSpatialEventTriggerConcept(v21);
    OUTLINED_FUNCTION_13_31();
    sub_268327AD8(v22, v23);
    OUTLINED_FUNCTION_0_59();
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactTrigger);
    OUTLINED_FUNCTION_21_21(7);
    sub_2683CEF98();
    OUTLINED_FUNCTION_12_25();
    sub_268327AD8(v24, v25);
    OUTLINED_FUNCTION_0_59();
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_createdDate);
    OUTLINED_FUNCTION_21_21(8);
    v26 = sub_2683CEFE8();
    OUTLINED_FUNCTION_11_35();
    sub_268327AD8(v27, v28);
    OUTLINED_FUNCTION_2_45();
    v34 = v26;
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_modifiedDate);
    v35 = 9;
    OUTLINED_FUNCTION_2_45();
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    v29 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTitleLong);
    OUTLINED_FUNCTION_1_38(10);
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_calendar);
    v35 = 11;
    OUTLINED_FUNCTION_2_45();
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
    v30 = *(v3 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isAllDay);
    OUTLINED_FUNCTION_1_38(12);
    OUTLINED_FUNCTION_16_28(OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_location);
    OUTLINED_FUNCTION_21_21(13);
    sub_2683CF088();
    OUTLINED_FUNCTION_10_28();
    sub_268327AD8(v31, v32);
    OUTLINED_FUNCTION_0_59();
    v36 = 14;
    OUTLINED_FUNCTION_26_20();
    OUTLINED_FUNCTION_6_26();
    sub_2683D0508();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_268326FC8(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2683270FC(a1);
  return v5;
}

void sub_268327040()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2683270FC(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v43 = &v41 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253208, &qword_2683F1430);
  v13 = OUTLINED_FUNCTION_0_3(v45);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v46 = a1;
  v47 = v1;
  *(v1 + 16) = 0;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268327B20();
  v44 = v17;
  sub_2683D06F8();
  if (v2)
  {
    v40 = v47;

    type metadata accessor for NotebookReminderConcept(0);
    v23 = *(*v40 + 48);
    v24 = *(*v40 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v8;
    sub_2683CF168();
    LOBYTE(v49) = 0;
    OUTLINED_FUNCTION_9_32();
    v21 = sub_268327AD8(v19, v20);
    v22 = v43;
    OUTLINED_FUNCTION_28_17();
    v26 = v47;
    sub_2681E1A1C(v22, v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_title);
    LOBYTE(v49) = 1;
    OUTLINED_FUNCTION_28_17();
    sub_2681E1A1C(v11, v26 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_identifier);
    OUTLINED_FUNCTION_19_30(2);
    v43 = 0;
    *(v26 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isCompleted) = sub_2683D0488() & 1;
    OUTLINED_FUNCTION_19_30(3);
    *(v26 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isFlagged) = sub_2683D0488() & 1;
    OUTLINED_FUNCTION_19_30(4);
    *(v26 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTagged) = sub_2683D0488() & 1;
    type metadata accessor for NotebookTemporalEventTriggerConcept();
    v48 = 5;
    OUTLINED_FUNCTION_14_27();
    sub_268327AD8(v27, v28);
    OUTLINED_FUNCTION_6_32();
    *(v26 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_temporalEventTrigger) = v49;
    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    v48 = 6;
    OUTLINED_FUNCTION_13_31();
    sub_268327AD8(v29, v30);
    OUTLINED_FUNCTION_6_32();
    *(v26 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_spatialEventTrigger) = v49;
    sub_2683CEF98();
    v48 = 7;
    OUTLINED_FUNCTION_12_25();
    sub_268327AD8(v31, v32);
    OUTLINED_FUNCTION_6_32();
    v41 = v21;
    v33 = v47;
    *(v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactTrigger) = v49;
    sub_2683CEFE8();
    v48 = 8;
    OUTLINED_FUNCTION_11_35();
    sub_268327AD8(v34, v35);
    OUTLINED_FUNCTION_15_28();
    sub_2683D0468();
    *(v33 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_createdDate) = v49;
    v48 = 9;
    OUTLINED_FUNCTION_15_28();
    sub_2683D0468();
    *(v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_modifiedDate) = v49;
    *(v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isTitleLong) = OUTLINED_FUNCTION_29_16(10) & 1;
    v48 = 11;
    OUTLINED_FUNCTION_15_28();
    sub_2683D0468();
    *(v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_calendar) = v49;
    *(v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_isAllDay) = OUTLINED_FUNCTION_29_16(12) & 1;
    sub_2683CF088();
    v48 = 13;
    OUTLINED_FUNCTION_10_28();
    sub_268327AD8(v36, v37);
    OUTLINED_FUNCTION_15_28();
    sub_2683D0468();
    *(v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_location) = v49;
    LOBYTE(v49) = 14;
    sub_2683D0468();
    v38 = OUTLINED_FUNCTION_20_27();
    v39(v38);
    v40 = v47;
    sub_2681E1A1C(v42, v47 + OBJC_IVAR____TtC12SiriNotebook23NotebookReminderConcept_contactName);
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  return v40;
}

uint64_t sub_2683279F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268326FC8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_268327AD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_268327B20()
{
  result = qword_280253210;
  if (!qword_280253210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253210);
  }

  return result;
}

unint64_t sub_268327B74()
{
  result = qword_280253250;
  if (!qword_280253250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253250);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookReminderConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268327CA8()
{
  result = qword_280253258;
  if (!qword_280253258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253258);
  }

  return result;
}

unint64_t sub_268327D00()
{
  result = qword_280253260;
  if (!qword_280253260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253260);
  }

  return result;
}

unint64_t sub_268327D58()
{
  result = qword_280253268;
  if (!qword_280253268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253268);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_59()
{

  return sub_2683D0508();
}

uint64_t OUTLINED_FUNCTION_5_41()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_6_32()
{

  return sub_2683D0468();
}

uint64_t OUTLINED_FUNCTION_20_27()
{
  v2 = *(v0 + 8);
  result = *(v1 - 120);
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_24(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_28_17()
{

  return sub_2683D0468();
}

uint64_t OUTLINED_FUNCTION_29_16@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  v4 = *(v1 - 120);
  v3 = *(v1 - 112);

  return sub_2683D0488();
}

void sub_268328040()
{
  qword_28027CC38 = 0xD000000000000028;
  unk_28027CC40 = 0x8000000268400C30;
  strcpy(&qword_28027CC48, "changeReminder");
  unk_28027CC57 = -18;
}

uint64_t sub_26832808C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2683D0598() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2683D0598() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_2683D0598();
}

uint64_t sub_268328134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7469546B736174 && a2 == 0xE900000000000065;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6564496B736174 && a2 == 0xEE00726569666974;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E656449707061 && a2 == 0xED00007265696669)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

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

uint64_t sub_26832825C(char a1)
{
  if (!a1)
  {
    return 0x6C7469546B736174;
  }

  if (a1 == 1)
  {
    return 0x6E6564496B736174;
  }

  return 0x746E656449707061;
}

uint64_t sub_2683282D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253298, &qword_2683F1688);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268328920();
  sub_2683D0718();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_1_52();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_1_52();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_1_52();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_26832842C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253288, &qword_2683F1680);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268328920();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = 0;
  v14 = sub_2683D0478();
  v27 = v15;
  v29 = 1;
  v25 = sub_2683D0478();
  v26 = v16;
  v28 = 2;
  v17 = sub_2683D0478();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_26832865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268328134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268328684(uint64_t a1)
{
  v2 = sub_268328920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683286C0(uint64_t a1)
{
  v2 = sub_268328920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2683286FC@<X0>(void *a1@<X8>)
{
  if (qword_28024CB40 != -1)
  {
    swift_once();
  }

  v2 = unk_28027CC40;
  v3 = qword_28027CC48;
  v4 = unk_28027CC50;
  *a1 = qword_28027CC38;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

double sub_26832878C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_26832842C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_2683287EC(void *a1)
{
  a1[1] = sub_268328824();
  a1[2] = sub_268328878();
  result = sub_2683288CC();
  a1[3] = result;
  return result;
}

unint64_t sub_268328824()
{
  result = qword_280253270;
  if (!qword_280253270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253270);
  }

  return result;
}

unint64_t sub_268328878()
{
  result = qword_280253278;
  if (!qword_280253278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253278);
  }

  return result;
}

unint64_t sub_2683288CC()
{
  result = qword_280253280;
  if (!qword_280253280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253280);
  }

  return result;
}

unint64_t sub_268328920()
{
  result = qword_280253290;
  if (!qword_280253290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChangeReminderInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268328A54()
{
  result = qword_2802532A0;
  if (!qword_2802532A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802532A0);
  }

  return result;
}

unint64_t sub_268328AAC()
{
  result = qword_2802532A8;
  if (!qword_2802532A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802532A8);
  }

  return result;
}

unint64_t sub_268328B04()
{
  result = qword_2802532B0;
  if (!qword_2802532B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802532B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_52()
{

  return sub_2683D0518();
}

uint64_t sub_268328B74@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  result = sub_2683CC238();
  *a1 = v3;
  return result;
}

uint64_t sub_268328BC4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *))
{
  v4 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v5 = 0;
  v27 = a1 & 0xC000000000000001;
  v28 = sub_2683ABE58(a1);
  while (1)
  {
    if (v28 == v5)
    {

      return v4;
    }

    if (v27)
    {
      v6 = MEMORY[0x26D616C90](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v31 = v6;
    a2(&v29, &v31);
    if (v2)
    {

      return v4;
    }

    v9 = v29;
    v8 = v30;
    v11 = sub_2682E1A10(v29, v30);
    v12 = v4[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_25;
    }

    v15 = v10;
    if (v4[3] < v14)
    {
      sub_2682C1BA0(v14, 1);
      v4 = v32;
      v16 = sub_2682E1A10(v9, v8);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_27;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v4[7] + 8 * v11);
      MEMORY[0x26D616770](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2683D2250;
      *(v20 + 32) = v7;
      v4[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v4[6] + 16 * v11);
      *v21 = v9;
      v21[1] = v8;
      *(v4[7] + 8 * v11) = v20;
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      v4[2] = v24;
    }

    ++v5;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_268328E40(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v45 = a2;
  v46 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v5 = *(*(v52 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - v8;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  v47 = v12;
  v48 = v11;
  v44 = v12 + 16;
  v49 = (v12 + 32);
  v40 = xmmword_2683D1EC0;
  v42 = a1;
  while (1)
  {
    if (v48 == v9)
    {
      goto LABEL_19;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v13 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v14 = *(v47 + 72);
    v15 = v51;
    (*(v47 + 16))(v51, a1 + v13 + v14 * v9, v52);
    v45(&v53, v15);
    if (v3)
    {
      (*(v47 + 8))(v51, v52);

LABEL_19:

      return v10;
    }

    v50 = v9;
    v17 = v53;
    v16 = v54;
    v19 = sub_2682E1A10(v53, v54);
    v20 = v10[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_21;
    }

    v23 = v18;
    if (v10[3] < v22)
    {
      sub_2682C1F44(v22, 1);
      v10 = v55;
      v24 = sub_2682E1A10(v17, v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_23;
      }

      v19 = v24;
    }

    if (v23)
    {

      v26 = v10[7];
      v27 = *v49;
      (*v49)(v43, v51, v52);
      v28 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v28;
      v41 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = *(v28 + 16);
        sub_2682E58B8();
        v28 = v37;
        *(v26 + 8 * v19) = v37;
      }

      v30 = *(v28 + 16);
      if (v30 >= *(v28 + 24) >> 1)
      {
        sub_2682E58B8();
        v28 = v38;
        *(v26 + 8 * v19) = v38;
      }

      *(v28 + 16) = v30 + 1;
      v41((v28 + v13 + v30 * v14), v43, v52);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E40, &qword_2683E65A8);
      v31 = swift_allocObject();
      *(v31 + 16) = v40;
      (*v49)((v31 + v13), v51, v52);
      v10[(v19 >> 6) + 8] |= 1 << v19;
      v32 = (v10[6] + 16 * v19);
      *v32 = v17;
      v32[1] = v16;
      *(v10[7] + 8 * v19) = v31;
      v33 = v10[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_22;
      }

      v10[2] = v35;
    }

    a1 = v42;
    v9 = v50 + 1;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_268329210(void *a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, uint64_t a5)
{

  v50 = sub_268328BC4(a5, a2);
  sub_268329880(a1, &v50, sub_2682C010C, &qword_2802532D0, &qword_2683F1850, &qword_28024E018, &unk_2683E3D10);
  v10 = v9;
  if (a4)
  {
LABEL_43:

    return v10;
  }

  v41 = v9;
  v11 = v50;
  v12 = v50 + 64;
  v13 = 1 << *(v50 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v50 + 64);
  v45 = (v13 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v42 = v12;
  v43 = v11;
  while (v15)
  {
LABEL_10:
    v20 = *(*(v11 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v20 >> 62)
    {
      v21 = sub_2683D00A8();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v18 >> 62;
    if (v18 >> 62)
    {
      result = sub_2683D00A8();
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v21;
    v23 = __OFADD__(result, v21);
    v24 = result + v21;
    if (v23)
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v22)
      {
LABEL_22:
        sub_2683D00A8();
      }

      else
      {
        v25 = v18 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v26 = *(v25 + 16);
      }

      result = sub_2683D01B8();
      v18 = result;
      v25 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v22)
    {
      goto LABEL_22;
    }

    v25 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v24 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_24:
    v46 = v25;
    v47 = v18;
    v15 &= v15 - 1;
    v27 = *(v25 + 16);
    v28 = (*(v25 + 24) >> 1) - v27;
    v29 = v25 + 8 * v27;
    if (v20 >> 62)
    {
      v32 = sub_2683D00A8();
      if (v32)
      {
        v33 = v32;
        result = sub_2683D00A8();
        if (v28 < result)
        {
          goto LABEL_49;
        }

        if (v33 < 1)
        {
          goto LABEL_50;
        }

        v44 = result;
        v34 = v29 + 32;
        sub_26818614C();
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E018, &unk_2683E3D10);
          v36 = sub_2683ABCD0(v49, i, v20);
          v38 = *v37;
          (v36)(v49, 0);
          *(v34 + 8 * i) = v38;
        }

        v12 = v42;
        v11 = v43;
        v31 = v44;
        goto LABEL_34;
      }

LABEL_38:

      if (v48 > 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_38;
      }

      if (v28 < v30)
      {
        goto LABEL_48;
      }

      v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      swift_arrayInitWithCopy();
LABEL_34:

      v18 = v47;
      if (v31 < v48)
      {
        goto LABEL_46;
      }

      if (v31 > 0)
      {
        v39 = *(v46 + 16);
        v23 = __OFADD__(v39, v31);
        v40 = v39 + v31;
        if (v23)
        {
          goto LABEL_47;
        }

        *(v46 + 16) = v40;
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v45)
    {

      v49[0] = v41;
      sub_2682C010C(v18);
      v10 = v49[0];
      goto LABEL_43;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2683295F4(void *a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, char a4, uint64_t a5)
{

  v36 = sub_268328E40(a5, a2, a3);
  sub_268329880(a1, &v36, sub_2682C083C, &qword_2802532E0, &qword_2683F18C8, &qword_2802532E8, &qword_2683F18D0);
  v11 = v10;
  if ((a4 & 1) == 0)
  {
    v35 = v10;
    v12 = v36;
    v13 = v36 + 64;
    v14 = 1 << *(v36 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v36 + 64);
    v17 = (v14 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        if (!v16)
        {
          while (1)
          {
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v21 >= v17)
            {
              goto LABEL_21;
            }

            v16 = *(v13 + 8 * v21);
            ++v19;
            if (v16)
            {
              v19 = v21;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

LABEL_10:
        v22 = (v19 << 9) | (8 * __clz(__rbit64(v16)));
        v23 = *(*(v12 + 56) + v22);
        v24 = *(v23 + 16);
        v25 = *(v20 + 16);
        if (__OFADD__(v25, v24))
        {
          goto LABEL_24;
        }

        v26 = *(*(v12 + 56) + v22);

        if (!swift_isUniquelyReferenced_nonNull_native() || v25 + v24 > *(v20 + 24) >> 1)
        {
          sub_2682E58B8();
          v20 = v27;
        }

        v16 &= v16 - 1;
        if (!*(v23 + 16))
        {
          break;
        }

        v28 = (*(v20 + 24) >> 1) - *(v20 + 16);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
        v29 = *(result - 8);
        if (v28 < v24)
        {
          goto LABEL_25;
        }

        v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v31 = *(v29 + 72);
        swift_arrayInitWithCopy();

        if (v24)
        {
          v32 = *(v20 + 16);
          v33 = __OFADD__(v32, v24);
          v34 = v32 + v24;
          if (v33)
          {
            goto LABEL_26;
          }

          *(v20 + 16) = v34;
        }
      }
    }

    while (!v24);
    __break(1u);
LABEL_21:

    sub_2682C083C(v20);
    v11 = v35;
  }

  return v11;
}

void sub_268329880(void *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v111 = a7;
  v110 = a6;
  v109 = a5;
  v108 = a4;
  v112 = a3;
  v117 = a2;
  v135 = type metadata accessor for Snippet.Reminder(0);
  v8 = OUTLINED_FUNCTION_0_3(v135);
  v124 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v132 = v13 - v12;
  v14 = type metadata accessor for Snippet.ReminderSearchResult.Section(0);
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251420, &qword_2683E3448);
  v24 = OUTLINED_FUNCTION_23(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19_3();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v107[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v34 = OUTLINED_FUNCTION_23(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v41);
  v123 = &v107[-v42];
  v150 = MEMORY[0x277D84F90];
  v43 = *a1;
  v137 = a1[1];
  v44 = a1[2];
  v127 = a1[3];
  v45 = a1[4];
  v122 = a1[5];
  v46 = a1[6];
  v120 = a1[7];
  v47 = a1[8];
  v114 = a1[9];
  v48 = a1[10];
  v138 = v43;

  v136 = v44;

  v126 = v45;

  v121 = v46;

  v119 = v47;

  v113 = v48;

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v131 = v17;
  v130 = v14;
LABEL_2:
  OUTLINED_FUNCTION_176_1();
  while (1)
  {
    v134 = v49;
    v133 = v53;
    if (v49)
    {
      v54 = v49[2];
      if (v53 != v54)
      {
        if (v53 >= v54)
        {
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_135_1();
        v88 = *(v87 + 72);
        OUTLINED_FUNCTION_85_3();
        v89 = v125;
        v91 = v90;
        v93 = v92;
        sub_268339F58();
        v133 = v93 + 1;
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v91);
        v82 = v123;
        sub_26812DA84(v89, v123, &qword_28024DBC8, &qword_2683E3D30);
LABEL_24:
        OUTLINED_FUNCTION_160_1(v147);
        sub_26812DA84(v97, v98, &qword_28024DBC8, &qword_2683E3D30);
        if (__swift_getEnumTagSinglePayload(v82, 1, v135) == 1)
        {
          goto LABEL_34;
        }

        OUTLINED_FUNCTION_160_1(&v151);
        sub_268339378();
        v122(&v139, v82);
        v99 = OUTLINED_FUNCTION_83_4();
        sub_2683393CC(v99, v100);
        v102 = v139;
        v101 = v140;
        v148 = v139;
        v149 = v140;
        v49 = v119;
        if (v120(&v148))
        {
          v139 = v102;
          v140 = v101;
          v114(&v148, &v139);

          v103 = v149;
          v104 = *v117;
          v17 = v131;
          v14 = v130;
          if (*(*v117 + 16))
          {
            v115 = v148;

            v116 = v103;
            v105 = sub_2682E1A10(v115, v103);
            if (v106)
            {
              v118 = *(*(v104 + 56) + 8 * v105);

              OUTLINED_FUNCTION_138_1(v146);

              sub_268339230(v115, v104, v108, v109, v110, v111);
              swift_bridgeObjectRelease_n();
            }

            else
            {
              OUTLINED_FUNCTION_138_1(v146);

              v118 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v118 = MEMORY[0x277D84F90];
          }

          v49 = &v150;
          v112(v118);
          OUTLINED_FUNCTION_168_1();
        }

        else
        {

          v17 = v131;
          OUTLINED_FUNCTION_168_1();
          v14 = v130;
        }

        goto LABEL_2;
      }

      OUTLINED_FUNCTION_138_1(&v149);
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      sub_2681433DC(v49, &qword_28024DBC8, &qword_2683E3D30);
    }

    if (!v51)
    {
      goto LABEL_9;
    }

LABEL_7:
    v59 = v51[2];
    if (v50 == v59)
    {
      break;
    }

    if (v50 >= v59)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_135_1();
    v73 = *(v72 + 72);
    OUTLINED_FUNCTION_85_3();
    OUTLINED_FUNCTION_160_1(&v152);
    v75 = v74;
    sub_268339F58();
    ++v50;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
    v49 = v128;
    sub_26812DA84(v17, v128, &qword_28024DBC8, &qword_2683E3D30);
LABEL_19:
    v79 = v129;
    sub_26812DA84(v49, v129, &qword_28024DBC8, &qword_2683E3D30);
    if (__swift_getEnumTagSinglePayload(v79, 1, v135) == 1)
    {
      v82 = v123;
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_176_1();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_160_1(&v151);
    sub_268339378();
    v127(&v139, v79);
    v80 = OUTLINED_FUNCTION_83_4();
    v17 = v131;
    sub_2683393CC(v80, v81);
    v49 = v139;

    OUTLINED_FUNCTION_176_1();
    v14 = v130;
  }

  OUTLINED_FUNCTION_138_1(&v152);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  sub_2681433DC(v49, &qword_28024DBC8, &qword_2683E3D30);
  while (1)
  {
LABEL_9:
    v64 = v138[2];
    if (v52 == v64)
    {
      v65 = 1;
      goto LABEL_13;
    }

    if (v52 >= v64)
    {
      break;
    }

    v66 = v138 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v67 = *(v17 + 72);
    sub_268339F58();
    v65 = 0;
    ++v52;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v32, v65, 1, v14);
    sub_26812DA84(v32, v29, &qword_280251420, &qword_2683E3448);
    if (__swift_getEnumTagSinglePayload(v29, 1, v14) == 1)
    {
      OUTLINED_FUNCTION_138_1(&v150);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_176_1();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
      goto LABEL_19;
    }

    sub_268339378();
    v137(&v139, v22);
    sub_2683393CC(v22, type metadata accessor for Snippet.ReminderSearchResult.Section);
    v49 = v139;

    v50 = 0;
    v51 = v49;
    if (v49)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_34:
  v139 = v138;
  v140 = v52;
  v141 = v137;
  v142 = v136;
  v143 = v51;
  v144 = v50;
  v145 = v127;
  v146[0] = v126;
  v146[1] = v134;
  v146[2] = v133;
  v147[0] = v122;
  v147[1] = v121;
  v147[2] = v120;
  v147[3] = v119;
  v147[4] = v114;
  v147[5] = v113;
  sub_2681433DC(&v139, &qword_2802532C8, &qword_2683F1848);
}

void sub_26832A218()
{
  OUTLINED_FUNCTION_30_0();
  v111 = v0;
  v112 = v1;
  v2 = sub_2683CED08();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v114 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v109 = v8 - v7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802532B8, &qword_2683F17B0);
  v9 = OUTLINED_FUNCTION_1(v115);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v105[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v19 = OUTLINED_FUNCTION_23(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_3();
  v110 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_56_3();
  v113 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_56_3();
  v108 = v27;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v105[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v105[-v33];
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v105[-v36];
  MEMORY[0x28223BE20](v35);
  v39 = &v105[-v38];
  sub_2683CEC88();
  if (sub_2683CEC58())
  {
    sub_2683CEC38();
    OUTLINED_FUNCTION_97_0();

    sub_2683CF6A8();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  __swift_storeEnumTagSinglePayload(v39, v40, 1, v2);
  sub_2683CECD8();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v2);
  v44 = v39;
  v45 = *(v115 + 48);
  v116 = v44;
  OUTLINED_FUNCTION_141_0();
  sub_26812DA38(v46, v47, v48, v49);
  OUTLINED_FUNCTION_141_0();
  sub_26812DA38(v50, v51, v52, v53);
  OUTLINED_FUNCTION_46_8(v17);
  if (v58)
  {
    sub_2681433DC(v37, &qword_28024D588, &unk_2683D8DB0);
    OUTLINED_FUNCTION_46_8(&v17[v45]);
    if (v58)
    {
      sub_2681433DC(v17, &qword_28024D588, &unk_2683D8DB0);
      v54 = 1;
      v55 = v116;
      v57 = v111;
      v56 = v112;
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  sub_26812DA38(v17, v34, &qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_46_8(&v17[v45]);
  if (v58)
  {
    sub_2681433DC(v37, &qword_28024D588, &unk_2683D8DB0);
    (*(v114 + 8))(v34, v2);
LABEL_12:
    sub_2681433DC(v17, &qword_2802532B8, &qword_2683F17B0);
    v57 = v111;
    goto LABEL_13;
  }

  v73 = v114;
  v74 = *(v114 + 32);
  v75 = OUTLINED_FUNCTION_173_1();
  v76(v75);
  OUTLINED_FUNCTION_86_4();
  sub_268339A9C(v77, v78);
  OUTLINED_FUNCTION_171_1();
  v106 = sub_2683CFA58();
  v79 = *(v73 + 8);
  v80 = v14;
  v14 = v107;
  v79(v80, v2);
  sub_2681433DC(v37, &qword_28024D588, &unk_2683D8DB0);
  v79(v34, v2);
  sub_2681433DC(v17, &qword_28024D588, &unk_2683D8DB0);
  v57 = v111;
  if (v106)
  {
    goto LABEL_23;
  }

LABEL_13:
  sub_2683CECF8();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v2);
  v62 = *(v115 + 48);
  OUTLINED_FUNCTION_141_0();
  sub_26812DA38(v63, v64, v65, v66);
  OUTLINED_FUNCTION_141_0();
  sub_26812DA38(v67, v68, v69, v70);
  OUTLINED_FUNCTION_46_8(v14);
  if (v58)
  {
    sub_2681433DC(v31, &qword_28024D588, &unk_2683D8DB0);
    OUTLINED_FUNCTION_46_8(v14 + v62);
    if (v58)
    {
      sub_2681433DC(v14, &qword_28024D588, &unk_2683D8DB0);
LABEL_23:
      v54 = 1;
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v71 = v108;
  sub_26812DA38(v14, v108, &qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_46_8(v14 + v62);
  if (v72)
  {
    sub_2681433DC(v31, &qword_28024D588, &unk_2683D8DB0);
    (*(v114 + 8))(v71, v2);
LABEL_21:
    sub_2681433DC(v14, &qword_2802532B8, &qword_2683F17B0);
    v54 = 0;
    goto LABEL_24;
  }

  v81 = v114;
  v82 = *(v114 + 32);
  v83 = OUTLINED_FUNCTION_173_1();
  v84(v83);
  OUTLINED_FUNCTION_86_4();
  sub_268339A9C(v85, v86);
  v54 = sub_2683CFA58();
  v87 = *(v81 + 8);
  v87(v14, v2);
  sub_2681433DC(v31, &qword_28024D588, &unk_2683D8DB0);
  v87(v71, v2);
  sub_2681433DC(v107, &qword_28024D588, &unk_2683D8DB0);
LABEL_24:
  v55 = v116;
  v56 = v112;
LABEL_25:
  if ([v56 _isSuccess])
  {
    v88 = *(v57 + 80) | v54;
  }

  else
  {
    v88 = 0;
  }

  LODWORD(v115) = v54;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v89 = sub_2683CF7E8();
  __swift_project_value_buffer(v89, qword_28027C958);
  sub_26818DDAC(v57, v122);
  sub_26818DDAC(v57, v120);
  sub_26818DDAC(v57, v118);
  v90 = v113;
  sub_26812DA38(v55, v113, &qword_28024D588, &unk_2683D8DB0);
  v91 = v56;
  v92 = sub_2683CF7C8();
  v93 = sub_2683CFE98();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = v88;
    v95 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v117 = v111;
    *v95 = 67110658;
    LODWORD(v112) = v94;
    *(v95 + 4) = v94 & 1;
    *(v95 + 8) = 1024;
    *(v95 + 10) = [v91 _isSuccess];

    *(v95 + 14) = 1024;
    v96 = v122[80];
    sub_26818DFA8(v122);
    *(v95 + 16) = v96;
    *(v95 + 20) = 1024;
    __swift_project_boxed_opaque_existential_1(v121, v121[3]);
    v97 = sub_2683CC0F8() & 1;
    sub_26818DFA8(v120);
    *(v95 + 22) = v97;
    *(v95 + 26) = 1024;
    __swift_project_boxed_opaque_existential_1(v119, v119[3]);
    v98 = sub_2683CC0C8() & 1;
    sub_26818DFA8(v118);
    *(v95 + 28) = v98;
    *(v95 + 32) = 1024;
    *(v95 + 34) = v115 & 1;
    *(v95 + 38) = 2080;
    v99 = v110;
    sub_26812DA38(v90, v110, &qword_28024D588, &unk_2683D8DB0);
    OUTLINED_FUNCTION_46_8(v99);
    if (v58)
    {
      sub_2681433DC(v99, &qword_28024D588, &unk_2683D8DB0);
      v102 = 0xE300000000000000;
      v100 = 7104878;
    }

    else
    {
      v100 = sub_2683CECE8();
      v102 = v101;
      (*(v114 + 8))(v99, v2);
    }

    sub_2681433DC(v90, &qword_28024D588, &unk_2683D8DB0);
    v103 = sub_2681610A0(v100, v102, &v117);

    *(v95 + 40) = v103;
    _os_log_impl(&dword_2680EB000, v92, v93, "[SFNI.ReadingStrategy] (shouldRead: %{BOOL}d); intentResponse.isSuccess: %{BOOL}d; invokedWithReadVerb: %{BOOL}d; isVox: %{BOOL}d; isCarPlay: %{BOOL}d; isVoiceMode: %{BOOL}d; mode: %s", v95, 0x30u);
    v104 = v111;
    __swift_destroy_boxed_opaque_existential_0(v111);
    MEMORY[0x26D617A40](v104, -1, -1);
    MEMORY[0x26D617A40](v95, -1, -1);

    sub_2681433DC(v116, &qword_28024D588, &unk_2683D8DB0);
  }

  else
  {
    sub_26818DFA8(v118);
    sub_26818DFA8(v120);
    sub_26818DFA8(v122);

    sub_2681433DC(v90, &qword_28024D588, &unk_2683D8DB0);
    sub_2681433DC(v55, &qword_28024D588, &unk_2683D8DB0);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26832AB9C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v23 = MEMORY[0x277D84F90];
    sub_268390AB0(0, v5, 0);
    v6 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_3_1(v11);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v14 + 72);
    do
    {
      v16 = a2(v13);
      v18 = v17;
      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_268390AB0((v19 > 1), v20 + 1, 1);
      }

      *(v23 + 16) = v20 + 1;
      v21 = v23 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += v15;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void sub_26832ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v29 = OUTLINED_FUNCTION_0_3(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v35 = &a9 - v34;
  sub_2683CC5B8();
  v36 = *(v31 + 16);
  OUTLINED_FUNCTION_73_4();
  v37();
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v25;
  *(v39 + 24) = v23;
  (*(v31 + 32))(v39 + v38, v35, v28);

  OUTLINED_FUNCTION_55_0();
  sub_2683CC5A8();
  sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26832AE58(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2681342AC;

  return v10(a1, a4);
}

uint64_t sub_26832AF60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2681342AC;

  return v10(a1, a2);
}

uint64_t sub_26832B068(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2681342AC;

  return v10(a1, a2);
}

uint64_t sub_26832B16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for Snippet();
  v5[27] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v8 = sub_2683CC9A8();
  v5[32] = v8;
  v9 = *(v8 - 8);
  v5[33] = v9;
  v10 = *(v9 + 64) + 15;
  v5[34] = swift_task_alloc();
  v11 = sub_2683CC138();
  v5[35] = v11;
  v12 = *(v11 - 8);
  v5[36] = v12;
  v13 = *(v12 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v5[42] = v17;
  v5[43] = *(v17 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26832B458, 0, 0);
}

uint64_t sub_26832BA18()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_112_3();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v22 = v20[52];
  v55 = v20[50];
  v56 = v20[51];
  v23 = v20[38];
  v25 = v20[35];
  v24 = v20[36];
  v26 = v20[33];
  v27 = v20[34];
  v29 = v20[31];
  v28 = v20[32];
  v30 = v20[30];

  OUTLINED_FUNCTION_13_32();
  sub_2683393CC(v30, v31);
  v32 = OUTLINED_FUNCTION_109_3();
  sub_2683393CC(v32, v33);
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_32_3();
  v36(v35);
  v37 = *(v24 + 8);
  v38 = OUTLINED_FUNCTION_74_0();
  v39(v38);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v43, v44, v45);
  OUTLINED_FUNCTION_10_29();
  sub_2681433DC(v30, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, v55, v56, a18, a19, a20);
}

uint64_t sub_26832BCB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_122_3();
  v24 = *(v21 + 232);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = OUTLINED_FUNCTION_40_14();
  v27(v26);
  v28 = OUTLINED_FUNCTION_39_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_10_29();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26832BF2C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832C010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_122_3();
  v24 = *(v21 + 224);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = OUTLINED_FUNCTION_40_14();
  v27(v26);
  v28 = OUTLINED_FUNCTION_39_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_10_29();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26832C1A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26832C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v23 = v20[51];
  v22 = v20[52];
  v24 = v20[50];
  v25 = v20[38];
  v26 = v20[35];
  v27 = v20[36];
  v29 = v20[33];
  v28 = v20[34];
  v30 = v20[32];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  v37 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v37, v38, v39);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_10_29();
  sub_2681433DC(v29 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v23, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26832C420(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v52 = a8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
  v14 = *(v51 - 8);
  v50 = *(v14 + 64);
  MEMORY[0x28223BE20](v51);
  v49 = &v42 - v15;
  v16 = swift_allocEmptyBox();
  a2(a1);
  v17 = a4(a1);
  v18 = sub_2683CC5B8();
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = v17;
  v19[5] = v16;

  v48 = v18;
  v20 = sub_2683CC5A8();
  v21 = swift_allocObject();
  v21[2] = v52;
  v21[3] = a9;
  v52 = v21;
  v21[4] = v16;
  v22 = *(v17 + 16);
  if (v22)
  {
    v43 = v20;
    v53 = MEMORY[0x277D84F90];
    v44 = v16;

    sub_268390AB0(0, v22, 0);
    v23 = v53;
    v25 = *(v14 + 16);
    v24 = v14 + 16;
    v46 = *(v24 + 64);
    v47 = v25;
    v26 = (v46 + 32) & ~v46;
    v42 = v17;
    v27 = v17 + v26;
    v45 = *(v24 + 56);
    v28 = (v24 + 16);
    do
    {
      v29 = v49;
      v30 = v51;
      v31 = v24;
      v47(v49, v27, v51);
      v32 = swift_allocObject();
      v33 = v52;
      *(v32 + 16) = &unk_2683F1A60;
      *(v32 + 24) = v33;
      (*v28)(v32 + v26, v29, v30);

      v34 = sub_2683CC5A8();
      v53 = v23;
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_268390AB0((v35 > 1), v36 + 1, 1);
        v23 = v53;
      }

      v37 = sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
      *(v23 + 16) = v36 + 1;
      v38 = v23 + 16 * v36;
      *(v38 + 32) = v34;
      *(v38 + 40) = v37;
      v27 += v45;
      --v22;
      v24 = v31;
    }

    while (v22);

    v20 = v43;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2683D1EC0;
  v40 = sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
  *(v39 + 32) = v20;
  *(v39 + 40) = v40;
  v53 = v39;

  sub_2682C0458(v23);

  return v53;
}

uint64_t sub_26832C840(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v53 = a8;
  v49 = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v13 = *(v52 - 8);
  v51 = *(v13 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v43 - v14;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  v15 = swift_allocBox();
  v17 = v16;
  a2(a1);
  v18 = a4(a1, v17);
  v19 = sub_2683CC5B8();
  v20 = swift_allocObject();
  v20[2] = v49;
  v20[3] = a7;
  v20[4] = v18;
  v20[5] = v15;

  v49 = v19;
  v21 = sub_2683CC5A8();
  v22 = swift_allocObject();
  v22[2] = v53;
  v22[3] = a9;
  v53 = v22;
  v22[4] = v15;
  v23 = *(v18 + 16);
  if (v23)
  {
    v44 = v21;
    v54 = MEMORY[0x277D84F90];
    v45 = v15;

    sub_268390AB0(0, v23, 0);
    v24 = v54;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v47 = *(v25 + 64);
    v48 = v26;
    v27 = (v47 + 32) & ~v47;
    v43 = v18;
    v28 = v18 + v27;
    v46 = *(v25 + 56);
    v29 = (v25 + 16);
    do
    {
      v30 = v50;
      v31 = v52;
      v32 = v25;
      v48(v50, v28, v52);
      v33 = swift_allocObject();
      v34 = v53;
      *(v33 + 16) = &unk_2683F18B0;
      *(v33 + 24) = v34;
      (*v29)(v33 + v27, v30, v31);

      v35 = sub_2683CC5A8();
      v54 = v24;
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_268390AB0((v36 > 1), v37 + 1, 1);
        v24 = v54;
      }

      v38 = sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
      *(v24 + 16) = v37 + 1;
      v39 = v24 + 16 * v37;
      *(v39 + 32) = v35;
      *(v39 + 40) = v38;
      v28 += v46;
      --v23;
      v25 = v32;
    }

    while (v23);

    v21 = v44;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2683D1EC0;
  v41 = sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
  *(v40 + 32) = v21;
  *(v40 + 40) = v41;
  v54 = v40;

  sub_2682C0458(v24);

  return v54;
}

uint64_t sub_26832CC7C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v53 = a8;
  v49 = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v13 = *(v52 - 8);
  v51 = *(v13 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v43 - v14;
  type metadata accessor for Snippet.SearchResult3p();
  v15 = swift_allocBox();
  v17 = v16;
  a2(a1);
  v18 = a4(a1, v17);
  v19 = sub_2683CC5B8();
  v20 = swift_allocObject();
  v20[2] = v49;
  v20[3] = a7;
  v20[4] = v18;
  v20[5] = v15;

  v49 = v19;
  v21 = sub_2683CC5A8();
  v22 = swift_allocObject();
  v22[2] = v53;
  v22[3] = a9;
  v53 = v22;
  v22[4] = v15;
  v23 = *(v18 + 16);
  if (v23)
  {
    v44 = v21;
    v54 = MEMORY[0x277D84F90];
    v45 = v15;

    sub_268390AB0(0, v23, 0);
    v24 = v54;
    v26 = *(v13 + 16);
    v25 = v13 + 16;
    v47 = *(v25 + 64);
    v48 = v26;
    v27 = (v47 + 32) & ~v47;
    v43 = v18;
    v28 = v18 + v27;
    v46 = *(v25 + 56);
    v29 = (v25 + 16);
    do
    {
      v30 = v50;
      v31 = v52;
      v32 = v25;
      v48(v50, v28, v52);
      v33 = swift_allocObject();
      v34 = v53;
      *(v33 + 16) = &unk_2683F1978;
      *(v33 + 24) = v34;
      (*v29)(v33 + v27, v30, v31);

      v35 = sub_2683CC5A8();
      v54 = v24;
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_268390AB0((v36 > 1), v37 + 1, 1);
        v24 = v54;
      }

      v38 = sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
      *(v24 + 16) = v37 + 1;
      v39 = v24 + 16 * v37;
      *(v39 + 32) = v35;
      *(v39 + 40) = v38;
      v28 += v46;
      --v23;
      v25 = v32;
    }

    while (v23);

    v21 = v44;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2683D1EC0;
  v41 = sub_268339A9C(&qword_28024FD10, MEMORY[0x277D5BD80]);
  *(v40 + 32) = v21;
  *(v40 + 40) = v41;
  v54 = v40;

  sub_2682C0458(v24);

  return v54;
}

uint64_t sub_26832D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26832D0DC, 0, 0);
}

uint64_t sub_26832D0DC()
{
  OUTLINED_FUNCTION_14();
  v8 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_26832D1C8;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return v8(v6, v4);
}

uint64_t sub_26832D1C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_26832D2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  v4[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26832D364, 0, 0);
}

uint64_t sub_26832D364()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[9];
  v2 = v0[6];
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_62_2();
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[10] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_116_3(v4);

  return v7(v6);
}

uint64_t sub_26832D41C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_40();

    return v12();
  }
}

uint64_t sub_26832D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for Snippet.SearchResult3p();
  v4[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26832D364, 0, 0);
}

uint64_t sub_26832D5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26832D5DC, 0, 0);
}

uint64_t sub_26832D5DC()
{
  OUTLINED_FUNCTION_14();
  v8 = (v0[4] + *v0[4]);
  v1 = *(v0[4] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v2;
  *v2 = v3;
  v2[1] = sub_26832D6C8;
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return v8(v5, v6);
}

uint64_t sub_26832D6C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v10();
  }
}

uint64_t sub_26832D7E4()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_26832D808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for Snippet.ReminderSearchResult(0);
  v4[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26832D888, 0, 0);
}

uint64_t sub_26832D888()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[9];
  v2 = v0[7];
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_61_4();
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[10] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_133_2(v4);

  return v7(v6);
}

uint64_t sub_26832D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for Snippet.SearchResult3p();
  v4[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26832D9C0, 0, 0);
}

uint64_t sub_26832D9C0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[9];
  v2 = v0[7];
  OUTLINED_FUNCTION_127_2();
  OUTLINED_FUNCTION_61_4();
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[10] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_133_2(v4);

  return v7(v6);
}

uint64_t sub_26832DA78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_40();

    return v12();
  }
}

uint64_t sub_26832DB94()
{
  OUTLINED_FUNCTION_14();
  swift_endAccess();
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_26832DBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = type metadata accessor for Snippet();
  v6[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v9 = sub_2683CC9A8();
  v6[33] = v9;
  v10 = *(v9 - 8);
  v6[34] = v10;
  v11 = *(v10 + 64) + 15;
  v6[35] = swift_task_alloc();
  v12 = sub_2683CC138();
  v6[36] = v12;
  v13 = *(v12 - 8);
  v6[37] = v13;
  v14 = *(v13 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v6[43] = v18;
  v6[44] = *(v18 + 64);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26832DEDC, 0, 0);
}

uint64_t sub_26832E424()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_112_3();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832E504()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832E5E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832E6CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 456);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26832E7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v7 = type metadata accessor for Snippet();
  v6[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v9 = sub_2683CC9A8();
  v6[33] = v9;
  v10 = *(v9 - 8);
  v6[34] = v10;
  v11 = *(v10 + 64) + 15;
  v6[35] = swift_task_alloc();
  v12 = sub_2683CC138();
  v6[36] = v12;
  v13 = *(v12 - 8);
  v6[37] = v13;
  v14 = *(v13 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v6[43] = v18;
  v6[44] = *(v18 + 64);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26832EA9C, 0, 0);
}

uint64_t sub_26832EFE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_112_3();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v22 = v20[53];
  v55 = v20[51];
  v56 = v20[52];
  v23 = v20[39];
  v25 = v20[36];
  v24 = v20[37];
  v26 = v20[34];
  v27 = v20[35];
  v29 = v20[32];
  v28 = v20[33];
  v30 = v20[31];

  OUTLINED_FUNCTION_13_32();
  sub_2683393CC(v30, v31);
  v32 = OUTLINED_FUNCTION_109_3();
  sub_2683393CC(v32, v33);
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_32_3();
  v36(v35);
  v37 = *(v24 + 8);
  v38 = OUTLINED_FUNCTION_74_0();
  v39(v38);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v43, v44, v45);
  OUTLINED_FUNCTION_7_29();
  sub_2681433DC(v30, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, v55, v56, a18, a19, a20);
}

uint64_t sub_26832F284()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832F368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_115_3();
  v24 = *(v21 + 240);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = OUTLINED_FUNCTION_40_14();
  v27(v26);
  v28 = OUTLINED_FUNCTION_39_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_7_29();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26832F4F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26832F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_115_3();
  v24 = *(v21 + 232);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = OUTLINED_FUNCTION_40_14();
  v27(v26);
  v28 = OUTLINED_FUNCTION_39_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_7_29();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26832F76C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 456);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26832F850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v23 = v20[52];
  v22 = v20[53];
  v24 = v20[51];
  v25 = v20[39];
  v26 = v20[36];
  v27 = v20[37];
  v29 = v20[34];
  v28 = v20[35];
  v30 = v20[33];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  v37 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v37, v38, v39);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_7_29();
  sub_2681433DC(v29 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v23, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26832F9EC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26832FA74()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v0[4] + 32);
  v4 = [v2 title];
  sub_2683CFEA8();

  sub_2683CF168();
  OUTLINED_FUNCTION_120_3();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = [v2 tasks];
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v10 = sub_2683CFCA8();

  sub_268229348(v10);

  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_26832FBC4;
  v12 = v0[5];

  return sub_2683955B8();
}

uint64_t sub_26832FBC4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *(v7 + 40);
  v10 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;
  v5[7] = v0;

  sub_2681433DC(v9, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v5[8] = v3;
    v16 = swift_task_alloc();
    v5[9] = v16;
    *v16 = v10;
    v16[1] = sub_26832FD64;
    v17 = v5[4];
    v18 = v5[2];
    OUTLINED_FUNCTION_20_9();

    return sub_26832FED4(v19, v20);
  }
}

uint64_t sub_26832FD64()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_7_4();

  return v7();
}

uint64_t sub_26832FE78()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_26832FED4(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for Snippet();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v3[30] = v6;
  v7 = *(v6 - 8);
  v3[31] = v7;
  v8 = *(v7 + 64) + 15;
  v3[32] = swift_task_alloc();
  v9 = sub_2683CC138();
  v3[33] = v9;
  v10 = *(v9 - 8);
  v3[34] = v10;
  v11 = *(v10 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v3[40] = v15;
  v3[41] = *(v15 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683301BC, 0, 0);
}

uint64_t sub_26833074C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  OUTLINED_FUNCTION_112_3();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268330848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v22 = v20[51];
  v55 = v20[48];
  v56 = v20[49];
  v23 = v20[36];
  v25 = v20[33];
  v24 = v20[34];
  v26 = v20[31];
  v27 = v20[32];
  v29 = v20[29];
  v28 = v20[30];
  v30 = v20[28];

  OUTLINED_FUNCTION_13_32();
  sub_2683393CC(v30, v31);
  v32 = OUTLINED_FUNCTION_109_3();
  sub_2683393CC(v32, v33);
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_32_3();
  v36(v35);
  v37 = *(v24 + 8);
  v38 = OUTLINED_FUNCTION_74_0();
  v39(v38);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v43, v44, v45);
  OUTLINED_FUNCTION_8_33();
  sub_2681433DC(v30, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, v55, v56, a18, a19, a20);
}

uint64_t sub_268330A08()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268330B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_118_2();
  v24 = *(v21 + 216);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = OUTLINED_FUNCTION_40_14();
  v27(v26);
  v28 = OUTLINED_FUNCTION_39_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_8_33();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_268330C98()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268330D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_118_2();
  v24 = *(v21 + 208);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = OUTLINED_FUNCTION_40_14();
  v27(v26);
  v28 = OUTLINED_FUNCTION_39_13();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v30, v31, v32);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_8_33();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_268330F28()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 440);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268331028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v22 = v20[51];
  v23 = v20[48];
  v24 = v20[49];
  v25 = v20[36];
  v26 = v20[33];
  v27 = v20[34];
  v29 = v20[31];
  v28 = v20[32];
  v30 = v20[30];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_32_3();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_74_0();
  v36(v35);
  v37 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v37, v38, v39);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_8_33();
  sub_2681433DC(v29 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683311C4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2683311F0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 40) + 32);
  type metadata accessor for NotebookNoteConcept(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
  sub_2683CC238();
  v3 = sub_268397584(*(v0 + 16));
  *(v0 + 48) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_26_4(v4);

  return sub_268395994(v3);
}

uint64_t sub_2683312C8()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[6];

    v5[9] = v3;
    v15 = swift_task_alloc();
    v5[10] = v15;
    *v15 = v9;
    v16 = OUTLINED_FUNCTION_159_1(v15);

    return sub_26832FED4(v16, v17);
  }
}

uint64_t sub_268331438()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_7_4();

  return v6();
}

uint64_t sub_268331530()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_26833158C()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_2683CB668();
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268331608()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v2[4];
  type metadata accessor for NotebookReminderConcept(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  sub_2683CC238();
  v5 = v0[2];
  v6 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  sub_2683CC088();
  v7 = sub_268346118(v5, v1);
  v0[7] = v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_26_4(v8);

  return sub_268395BF8(v7);
}

uint64_t sub_268331724()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v5[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v5[7];

    v5[10] = v3;
    v15 = swift_task_alloc();
    v5[11] = v15;
    *v15 = v9;
    v16 = OUTLINED_FUNCTION_159_1(v15);

    return sub_26832FED4(v16, v17);
  }
}

uint64_t sub_268331894()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1[11];
  v3 = v1[10];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_7_4();

  return v7();
}

uint64_t sub_2683319A8()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[6];
  v1 = v0[7];

  OUTLINED_FUNCTION_40();
  v4 = v0[9];

  return v3();
}

uint64_t sub_268331A0C()
{
  OUTLINED_FUNCTION_14();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippet();
  v1[24] = v3;
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_55();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v1[29] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[30] = v7;
  v9 = *(v8 + 64);
  v1[31] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CC138();
  v1[32] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[33] = v11;
  v13 = *(v12 + 64);
  v1[34] = OUTLINED_FUNCTION_55();
  v1[35] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v14);
  v16 = *(v15 + 64);
  v1[36] = OUTLINED_FUNCTION_15_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v17);
  v19 = *(v18 + 64);
  v1[37] = OUTLINED_FUNCTION_15_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v20);
  v22 = *(v21 + 64);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v23);
  v1[39] = v24;
  v1[40] = *(v25 + 64);
  v1[41] = OUTLINED_FUNCTION_55();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v26, v27, v28);
}

uint64_t sub_268331C84()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[23];
  v3 = v0[24];
  v0[49] = *(v4 + 128);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v3);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v11 = *(v4 + 32);
  v12 = swift_task_alloc();
  v0[50] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_26_4(v12);

  return sub_2683953C8();
}

uint64_t sub_268331D40()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 400);
  *v4 = *v1;
  v3[51] = v7;
  v3[52] = v0;

  if (v0)
  {
    v8 = v3[48];
    sub_2681433DC(v3[47], &qword_28024E770, &qword_2683D80D0);
    v9 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v9, v10, &qword_2683D80D0);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2683324D4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  OUTLINED_FUNCTION_112_3();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683325D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[54];
  v22 = v20[51];
  v55 = v20[47];
  v56 = v20[48];
  v23 = v20[35];
  v25 = v20[32];
  v24 = v20[33];
  v26 = v20[30];
  v27 = v20[31];
  v29 = v20[28];
  v28 = v20[29];
  v30 = v20[27];

  OUTLINED_FUNCTION_13_32();
  sub_2683393CC(v30, v31);
  v32 = OUTLINED_FUNCTION_109_3();
  sub_2683393CC(v32, v33);
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_32_3();
  v36(v35);
  v37 = *(v24 + 8);
  v38 = OUTLINED_FUNCTION_74_0();
  v39(v38);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v40, v41, v42);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v43, v44, v45);
  OUTLINED_FUNCTION_9_33();
  sub_2681433DC(v30, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v22, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, v55, v56, a18, a19, a20);
}

uint64_t sub_268332798()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268332898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_104_3();
  v24 = *(v21 + 208);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = *(v20 + 8);
  v27 = OUTLINED_FUNCTION_32_3();
  v28(v27);
  v29 = *(v23 + 8);
  v30 = OUTLINED_FUNCTION_74_0();
  v31(v30);
  v32 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v32, v33, v34);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v35, v36, v37);
  OUTLINED_FUNCTION_9_33();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_268332A34()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *(v4 + 424);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268332B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_104_3();
  v24 = *(v21 + 200);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v24, v25);
  v26 = *(v20 + 8);
  v27 = OUTLINED_FUNCTION_32_3();
  v28(v27);
  v29 = *(v23 + 8);
  v30 = OUTLINED_FUNCTION_74_0();
  v31(v30);
  v32 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v32, v33, v34);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v35, v36, v37);
  OUTLINED_FUNCTION_9_33();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_268332CD0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 464);
  v3 = *(v1 + 424);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268332DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[54];
  v22 = v20[51];
  v23 = v20[47];
  v24 = v20[48];
  v25 = v20[35];
  v26 = v20[32];
  v27 = v20[33];
  v29 = v20[30];
  v28 = v20[31];
  v30 = v20[29];

  v31 = OUTLINED_FUNCTION_40_14();
  v32(v31);
  v33 = OUTLINED_FUNCTION_39_13();
  v34(v33);
  v35 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v35, v36, v37);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v38, v39, v40);
  OUTLINED_FUNCTION_9_33();
  sub_2681433DC(v27, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v29, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_268332F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v22 = v20[47];
  v21 = v20[48];
  v24 = v20[45];
  v23 = v20[46];
  v26 = v20[43];
  v25 = v20[44];
  v27 = v20[41];
  v28 = v20[42];
  v30 = v20[37];
  v29 = v20[38];
  v41 = v20[36];
  v42 = v20[35];
  v43 = v20[34];
  v44 = v20[31];
  v45 = v20[28];
  v46 = v20[27];
  v47 = v20[26];
  v48 = v20[25];

  OUTLINED_FUNCTION_40();
  v31 = v20[52];
  OUTLINED_FUNCTION_26_18();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v45, v46, v47, v48, a18, a19, a20);
}

uint64_t sub_26833308C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2683330B4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 24) + 32);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_4(v2);

  return sub_268395478();
}

uint64_t sub_268333140()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v5[5] = v3;
    v13 = swift_task_alloc();
    v5[6] = v13;
    *v13 = v9;
    v13[1] = sub_2683332A4;
    v14 = v5[2];
    v15 = v5[3];

    return sub_26833339C(v14, v3);
  }
}

uint64_t sub_2683332A4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_7_4();

  return v6();
}

uint64_t sub_26833339C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for Snippet();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v3[30] = v6;
  v7 = *(v6 - 8);
  v3[31] = v7;
  v8 = *(v7 + 64) + 15;
  v3[32] = swift_task_alloc();
  v9 = sub_2683CC138();
  v3[33] = v9;
  v10 = *(v9 - 8);
  v3[34] = v10;
  v11 = *(v10 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v3[40] = v15;
  v3[41] = *(v15 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268333684, 0, 0);
}

uint64_t sub_268333C24()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  OUTLINED_FUNCTION_112_3();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268333D20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268333E20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *(v4 + 400);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268333F20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 440);
  v3 = *(v1 + 400);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_268334020(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268334048()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 24) + 32);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_4(v2);

  return sub_268395518();
}

uint64_t sub_2683340D4()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v5[5] = v3;
    v13 = swift_task_alloc();
    v5[6] = v13;
    *v13 = v9;
    v13[1] = sub_26833BC20;
    v14 = v5[2];
    v15 = v5[3];

    return sub_26833339C(v14, v3);
  }
}

uint64_t sub_268334238()
{
  OUTLINED_FUNCTION_14();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for Snippet();
  v1[26] = v5;
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  v1[27] = OUTLINED_FUNCTION_55();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v8 = sub_2683CC9A8();
  v1[31] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[32] = v9;
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_15_1();
  v12 = sub_2683CC138();
  v1[34] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[35] = v13;
  v15 = *(v14 + 64);
  v1[36] = OUTLINED_FUNCTION_55();
  v1[37] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v16);
  v18 = *(v17 + 64);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v19);
  v21 = *(v20 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v22);
  v24 = *(v23 + 64);
  v1[40] = OUTLINED_FUNCTION_15_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v25);
  v1[41] = v26;
  v1[42] = *(v27 + 64);
  v1[43] = OUTLINED_FUNCTION_55();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_268334B00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_112_3();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268334BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[51];
  v45 = v20[49];
  v22 = v20[37];
  v23 = v20[34];
  v24 = v20[35];
  v25 = v20[32];
  v26 = v20[33];
  v28 = v20[30];
  v27 = v20[31];
  v29 = v20[29];

  sub_2683393CC(v29, type metadata accessor for Snippet);
  sub_2683393CC(v28, type metadata accessor for Snippet);
  v30 = *(v25 + 8);
  v31 = OUTLINED_FUNCTION_19_2();
  v32(v31);
  v33 = *(v24 + 8);
  v34 = OUTLINED_FUNCTION_55_0();
  v35(v34);
  sub_2681433DC(v45, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_6_33();
  sub_2681433DC(type metadata accessor for Snippet, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25 + 8, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC(v28, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, v45, a18, a19, a20);
}

uint64_t sub_268334DBC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 424);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268334EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_119_2();
  v25 = *(v21 + 224);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v25, v26);
  v27 = *(v23 + 8);
  v28 = OUTLINED_FUNCTION_19_2();
  v29(v28);
  v30 = *(v22 + 8);
  v31 = OUTLINED_FUNCTION_55_0();
  v32(v31);
  sub_2681433DC(v20, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_6_33();
  sub_2681433DC(v23 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC(v25, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_268335044()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 432);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_268335128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_119_2();
  v25 = *(v21 + 216);

  OUTLINED_FUNCTION_3_45();
  sub_2683393CC(v25, v26);
  v27 = *(v23 + 8);
  v28 = OUTLINED_FUNCTION_19_2();
  v29(v28);
  v30 = *(v22 + 8);
  v31 = OUTLINED_FUNCTION_55_0();
  v32(v31);
  sub_2681433DC(v20, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_6_33();
  sub_2681433DC(v23 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v20, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC(v25, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683352CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 440);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2683353B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v23 = v20[51];
  v24 = v20[49];
  v25 = v20[37];
  v26 = v20[34];
  v27 = v20[35];
  v29 = v20[32];
  v28 = v20[33];
  v30 = v20[31];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_55_0();
  v36(v35);
  sub_2681433DC(v24, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_6_33();
  sub_2681433DC(v21, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v22, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);
  sub_2681433DC(v27 + 8, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_26_18();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_268335558()
{
  OUTLINED_FUNCTION_30_0();
  v59 = v1;
  v60 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v7 = OUTLINED_FUNCTION_3_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v14 = v13 - v12;
  v15 = sub_2683CB528();
  v16 = OUTLINED_FUNCTION_0_3(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v24 = sub_2683CC818();
  v25 = sub_26818598C();

  if (v25 < 1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v36 = sub_2683CF7E8();
    __swift_project_value_buffer(v36, qword_28027C958);
    v37 = sub_2683CF7C8();
    v38 = sub_2683CFE98();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2680EB000, v37, v38, "[SFNI ModernSnippet] No notes or tasks in response, skipping snippet.", v39, 2u);
      MEMORY[0x26D617A40](v39, -1, -1);
    }

    type metadata accessor for Snippet();
LABEL_20:
    OUTLINED_FUNCTION_29_0();

    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    return;
  }

  sub_2683CC828();
  LOBYTE(v62[0]) = 0;
  v26 = sub_26812A998(v62);

  if ((v26 & 1) == 0)
  {
    sub_2683CC828();
    LOBYTE(v62[0]) = 1;
    v40 = sub_26812A998(v62);

    if ((v40 & 1) == 0)
    {
      sub_2683CB508();
      LOBYTE(v62[0]) = 2;
      sub_2681D7AC0(v3, v23, v62, v5);
      (*(v18 + 8))(v23, v15);
      v46 = type metadata accessor for Snippet();
      swift_storeEnumTagMultiPayload();
      v47 = OUTLINED_FUNCTION_48_9();
      v50 = v46;
LABEL_25:
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
      OUTLINED_FUNCTION_29_0();
      return;
    }

    LOBYTE(v62[0]) = 2;
    sub_2682DE7A0(v62, v5);
    type metadata accessor for Snippet();
    goto LABEL_20;
  }

  v27 = sub_2683CC818();
  sub_268185828();
  v29 = v28;

  sub_26813CA00(v60 + 136, v62);
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v57 = v15;
  v58 = sub_268229348(v29);
  v56 = v18;
  if (!v58)
  {
LABEL_24:

    sub_268156498();

    __swift_destroy_boxed_opaque_existential_0(v62);
    v51 = sub_2683CC848();
    v52 = sub_268175DF4(v59);
    v54 = v53;

    sub_2683CB508();
    v55 = __swift_project_boxed_opaque_existential_1((v60 + 136), *(v60 + 160));
    v63 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
    v64 = &off_2878FF910;
    v62[0] = swift_allocObject();
    sub_26818EE34(v55, v62[0] + 16);
    OUTLINED_FUNCTION_141_0();
    sub_2682BA568();
    sub_2681D8CD8(v52, v54);

    (*(v56 + 8))(v23, v57);
    sub_2681433DC(v62, &qword_28024ED48, &qword_2683E3D20);
    type metadata accessor for Snippet();
    v47 = OUTLINED_FUNCTION_48_9();
    goto LABEL_25;
  }

  v61 = MEMORY[0x277D84F90];
  sub_268390728();
  v30 = v58;
  if ((v58 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = OUTLINED_FUNCTION_0_0();
        v33 = MEMORY[0x26D616C90](v32);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      sub_26834A288(v33, v14);
      v34 = *(v61 + 16);
      if (v34 >= *(v61 + 24) >> 1)
      {
        sub_268390728();
        v30 = v58;
      }

      ++v31;
      *(v61 + 16) = v34 + 1;
      v35 = v61 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34;
      OUTLINED_FUNCTION_89_3();
      sub_268339378();
    }

    while (v30 != v31);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_268335AD4()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_26818DDAC(v0, v45);
  sub_26818DDAC(v0, v44);
  v9 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  v10 = OUTLINED_FUNCTION_142_1();
  if (v11(v10))
  {
    v12 = sub_2683CC828();
    v13 = sub_2681E73A0();

    if (v13)
    {
      sub_26818DDAC(v45, v43);
      v14 = OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_76_3(v14);
      v15 = *(v6 + 16);
      v16 = OUTLINED_FUNCTION_19_2();
      v17(v16);
      sub_26818DDAC(v45, v43);
      OUTLINED_FUNCTION_137_1();
      v18 = swift_allocObject();
      v19 = OUTLINED_FUNCTION_136_1(v18);
      v20(v19);
      OUTLINED_FUNCTION_153_1();
      OUTLINED_FUNCTION_140_1();
      v21 = v45[16];
      OUTLINED_FUNCTION_107_2();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = sub_26833A5AC;
      v22[4] = v2;
      OUTLINED_FUNCTION_69_0();
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_2683F1A18;
      *(v23 + 24) = v12;
      OUTLINED_FUNCTION_69_0();
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_2683F1A20;
      *(v24 + 24) = v22;
      OUTLINED_FUNCTION_166_1();
      swift_allocObject();
      OUTLINED_FUNCTION_90_3();
      v25[2] = v26;
      v25[3] = 0;
      v25[4] = j__swift_bridgeObjectRetain;
      v25[5] = 0;
      v25[6] = &unk_2683F1A30;
      v25[7] = v24;
      v25[8] = &unk_2683F1A28;
      v25[9] = v23;
    }

    else
    {
      OUTLINED_FUNCTION_156_1();
      v30 = OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_76_3(v30);
      v31 = *(v6 + 16);
      v32 = OUTLINED_FUNCTION_19_2();
      v33(v32);
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_137_1();
      v34 = swift_allocObject();
      v35 = OUTLINED_FUNCTION_136_1(v34);
      v36(v35);
      OUTLINED_FUNCTION_153_1();
      OUTLINED_FUNCTION_140_1();
      v37 = v44[16];
      OUTLINED_FUNCTION_107_2();
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = sub_26833A344;
      v38[4] = v2;
      OUTLINED_FUNCTION_69_0();
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_2683F19D8;
      *(v39 + 24) = v12;
      OUTLINED_FUNCTION_69_0();
      v40 = swift_allocObject();
      *(v40 + 16) = &unk_2683F19E8;
      *(v40 + 24) = v38;
      OUTLINED_FUNCTION_166_1();
      swift_allocObject();
      OUTLINED_FUNCTION_90_3();
      v41[2] = v42;
      v41[3] = 0;
      v41[4] = j__swift_bridgeObjectRetain;
      v41[5] = 0;
      v41[6] = &unk_2683F1A08;
      v41[7] = v40;
      v41[8] = &unk_2683F19F8;
      v41[9] = v39;
    }
  }

  else
  {
    sub_26818DDAC(v0, v43);
    v27 = OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_76_3(v27);
    OUTLINED_FUNCTION_69_0();
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_2683F19C8;
    *(v28 + 24) = v0;
    OUTLINED_FUNCTION_69_0();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_26833A184;
    *(v29 + 24) = v28;
  }

  sub_26818DFA8(v44);
  sub_26818DFA8(v45);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268335F50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268133EC8;

  return sub_2683311C4(a1, a2);
}

void sub_268335FFC()
{
  OUTLINED_FUNCTION_30_0();
  HIDWORD(v30) = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v31[-v10 - 8];
  sub_26818DDAC(v0, v33);
  sub_26818DDAC(v0, v32);
  v12 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  v13 = OUTLINED_FUNCTION_142_1();
  if (v14(v13))
  {
    v15 = sub_2683CC828();
    v16 = sub_2681E73A0();

    if (v16)
    {
      sub_26833641C(v3, WORD2(v30) & 0x101);
    }

    else
    {
      OUTLINED_FUNCTION_156_1();
      v20 = OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_76_3(v20);
      (*(v7 + 16))(v11, v3, v4);
      OUTLINED_FUNCTION_156_1();
      v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v22 = swift_allocObject();
      (*(v7 + 32))(v22 + v21, v11, v4);
      v23 = v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      OUTLINED_FUNCTION_153_1();
      v24 = BYTE5(v30);
      *(v23 + 176) = BYTE4(v30) & 1;
      *(v23 + 177) = v24 & 1;
      OUTLINED_FUNCTION_156_1();
      v25 = OUTLINED_FUNCTION_148_1();
      memcpy((v25 + 16), v31, 0xB0uLL);
      v26 = v32[16];
      OUTLINED_FUNCTION_69_0();
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_2683F19A8;
      *(v27 + 24) = v15;
      OUTLINED_FUNCTION_107_2();
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = sub_26833BC50;
      v28[4] = 0;
      OUTLINED_FUNCTION_166_1();
      v29 = swift_allocObject();
      v29[2] = sub_26833A0C4;
      v29[3] = v22;
      v29[4] = sub_26833A0DC;
      v29[5] = v25;
      v29[6] = &unk_2683F19B8;
      v29[7] = v28;
      v29[8] = &unk_2683F19B0;
      v29[9] = v27;
    }
  }

  else
  {
    sub_26818DDAC(v0, v31);
    v17 = OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_76_3(v17);
    OUTLINED_FUNCTION_69_0();
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_2683F1998;
    *(v18 + 24) = v0;
    OUTLINED_FUNCTION_69_0();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26833BC5C;
    *(v19 + 24) = v18;
  }

  sub_26818DFA8(v32);
  sub_26818DFA8(v33);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268336370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26833158C();
}

uint64_t (*sub_26833641C(uint64_t a1, int a2))(uint64_t a1)
{
  v36 = a2;
  v3 = sub_2683CB528();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v31 = a1;
  v13(&v30 - v11, a1, v8);
  sub_268153360();
  v34 = v14;
  v15 = sub_2683CC848();
  sub_2683CB508();
  v33 = sub_268175DF4(v7);
  v32 = v16;

  (*(v4 + 8))(v7, v3);
  v17 = v35;
  sub_26818DDAC(v35, __src);
  v18 = swift_allocObject();
  memcpy((v18 + 16), __src, 0xB0uLL);
  sub_26818DDAC(v17, __src);
  v13(v12, v31, v8);
  v19 = (*(v9 + 80) + 200) & ~*(v9 + 80);
  v20 = swift_allocObject();
  memcpy((v20 + 16), __src, 0xB0uLL);
  *(v20 + 192) = v34;
  (*(v9 + 32))(v20 + v19, v12, v8);
  v21 = v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v32;
  *v21 = v33;
  *(v21 + 8) = v22;
  v23 = BYTE1(v36);
  *(v21 + 16) = v36 & 1;
  *(v21 + 17) = v23 & 1;
  *(v21 + 18) = 0;
  sub_26818DDAC(v17, __src);
  v24 = swift_allocObject();
  memcpy((v24 + 16), __src, 0xB0uLL);
  *(v24 + 192) = 0;
  v25 = *(v17 + 128);
  v26 = swift_allocObject();
  *(v26 + 16) = &unk_2683F1870;
  *(v26 + 24) = v18;
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = sub_268337B84;
  v27[4] = 0;
  v28 = swift_allocObject();
  v28[2] = sub_268339688;
  v28[3] = v20;
  v28[4] = sub_268339758;
  v28[5] = v24;
  v28[6] = &unk_2683F1890;
  v28[7] = v27;
  v28[8] = &unk_2683F1880;
  v28[9] = v26;

  return sub_268339898;
}

uint64_t sub_268336810(void *a1, uint64_t a2, __int16 a3)
{
  sub_26818DDAC(v3, v17);
  v7 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v3[14]);
  v8 = *(v7 + 56);
  v9 = OUTLINED_FUNCTION_32_3();
  if (v10(v9))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
    sub_2683CC828();
    v11 = sub_2681E73A0();

    if (v11)
    {
      sub_26833641C(a2, a3 & 0x101);
    }

    else
    {
      sub_2683369A0(a1, a2, a3 & 0x101);
    }
  }

  else
  {
    sub_26818DDAC(v3, v16);
    v12 = OUTLINED_FUNCTION_148_1();
    memcpy((v12 + 16), v16, 0xB0uLL);
    OUTLINED_FUNCTION_69_0();
    v13 = swift_allocObject();
    *(v13 + 16) = &unk_2683F1860;
    *(v13 + 24) = v12;
    OUTLINED_FUNCTION_69_0();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_268339528;
    *(v14 + 24) = v13;
  }

  sub_26818DFA8(v17);
  return OUTLINED_FUNCTION_41_0();
}

uint64_t (*sub_2683369A0(void *a1, uint64_t a2, __int16 a3))(uint64_t a1)
{
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &__src[-v9 - 8];
  sub_26818DDAC(v3, __src);
  v11 = swift_allocObject();
  memcpy((v11 + 16), __src, 0xB0uLL);
  (*(v7 + 16))(v10, a2, v6);
  sub_26818DDAC(v3, __src);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v10, v6);
  v15 = v24;
  *(v14 + v13) = v24;
  v16 = (v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  memcpy(v16, __src, 0xB0uLL);
  v16[176] = a3 & 1;
  v16[177] = HIBYTE(a3) & 1;
  sub_26818DDAC(v3, __src);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0xB0uLL);
  v18 = *(v3 + 128);
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_2683F1938;
  *(v19 + 24) = v11;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = sub_26833BC50;
  v20[4] = 0;
  v21 = swift_allocObject();
  v21[2] = sub_268339BE0;
  v21[3] = v14;
  v21[4] = sub_26833BC40;
  v21[5] = v17;
  v21[6] = &unk_2683F1958;
  v21[7] = v20;
  v21[8] = &unk_2683F1948;
  v21[9] = v19;
  v22 = v15;

  return sub_268339DE0;
}

uint64_t sub_268336C7C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683311C4(a1, a2);
}

uint64_t sub_268336D28@<X0>(uint64_t a1@<X0>, __int16 a2@<W3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-v9];
  sub_26812DB78(a1, 0, 0, &v12[-v9]);
  sub_268336E4C(a1, a2 & 0x101, &v13);
  sub_2682DE7A0(&v13, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_268336E4C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802532F8, &qword_2683F1A38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_2683CCB78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    sub_2683CC248();
    v18 = sub_2683CCB48();
    result = (*(v11 + 8))(v15, v10);
    if (v18 <= 1 && (a2 & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (a2)
    {
      sub_2682B2C60(a1);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
      {
        result = sub_2681433DC(v9, &qword_2802532F8, &qword_2683F1A38);
      }

      else
      {
        sub_2683CC248();
        (*(*(v20 - 8) + 8))(v9, v20);
        v22 = sub_2683CCB38();
        result = (*(v11 + 8))(v15, v10);
        if (v22)
        {
          v21 = 1;
          goto LABEL_15;
        }
      }
    }

    v21 = 0;
    goto LABEL_15;
  }

  if ((a2 & 0x100) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v21 = 2;
LABEL_15:
  *a3 = v21;
  return result;
}

uint64_t sub_2683370CC@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802532F0, &qword_2683F1918);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_2683CCB78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    sub_2683CC248();
    v18 = sub_2683CCB48();
    result = (*(v11 + 8))(v15, v10);
    if (v18 <= 1 && (a2 & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (a2)
    {
      sub_2682B2C74(a1);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v20) == 1)
      {
        result = sub_2681433DC(v9, &qword_2802532F0, &qword_2683F1918);
      }

      else
      {
        sub_2683CC248();
        (*(*(v20 - 8) + 8))(v9, v20);
        v22 = sub_2683CCB38();
        result = (*(v11 + 8))(v15, v10);
        if (v22)
        {
          v21 = 1;
          goto LABEL_15;
        }
      }
    }

    v21 = 0;
    goto LABEL_15;
  }

  if ((a2 & 0x100) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v21 = 2;
LABEL_15:
  *a3 = v21;
  return result;
}

uint64_t sub_26833734C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v84 = a8;
  HIDWORD(v80) = a7;
  v82 = a6;
  v70 = a5;
  v78 = a4;
  v77 = a3;
  v85 = a9;
  v11 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Snippet.SectionHeading();
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  v17 = *(v89 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v89);
  v20 = &v69 - v19;
  v21 = type metadata accessor for Snippet.Reminder(0);
  v90 = *(v21 - 8);
  v22 = *(v90 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v76 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2683CB528();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a2;
  sub_26813CA00(a2 + 136, v93);
  v29 = __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v30 = *(a1 + 16);
  v86 = v24;
  v79 = a1;
  if (v30)
  {
    v71 = v29;
    v73 = v28;
    v74 = v25;
    v75 = v16;
    v91[0] = MEMORY[0x277D84F90];
    sub_268390728();
    v31 = v91[0];
    v33 = *(v17 + 16);
    v32 = v17 + 16;
    v34 = a1 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v87 = *(v32 + 56);
    v88 = v33;
    v35 = (v32 - 8);
    v36 = v76;
    do
    {
      v37 = v89;
      v38 = v32;
      v88(v20, v34, v89);
      sub_2683CC238();
      sub_26834A288(v92, v36);
      (*v35)(v20, v37);
      v91[0] = v31;
      v39 = *(v31 + 16);
      if (v39 >= *(v31 + 24) >> 1)
      {
        sub_268390728();
        v36 = v76;
        v31 = v91[0];
      }

      *(v31 + 16) = v39 + 1;
      v40 = v31 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v41 = *(v90 + 72);
      sub_268339378();
      v34 += v87;
      --v30;
      v32 = v38;
    }

    while (v30);
    v16 = v75;
    v42 = v74;
    v28 = v73;
  }

  else
  {
    v42 = v25;
  }

  sub_268156498();
  v44 = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v45 = sub_2683CC818();
  sub_268185828();
  v47 = v46;

  v48 = sub_268229348(v47);

  sub_2683CB508();
  v49 = v81;
  sub_2683370CC(v79, WORD2(v80) & 0x101, &v92);
  v50 = v92;
  v51 = __swift_project_boxed_opaque_existential_1((v49 + 136), *(v49 + 160));
  v91[3] = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v91[4] = &off_2878FF910;
  v91[0] = swift_allocObject();
  sub_26818EE34(v51, v91[0] + 16);
  v52 = v82;
  switch(v82)
  {
    case 0:
      sub_2682B80C8();
      v61 = v63;

      goto LABEL_16;
    case 1:
      sub_2682B96A4();
      v61 = v64;

      goto LABEL_16;
    case 2:
      v61 = sub_2682B9E98(v44);

      goto LABEL_16;
    case 3:
    case 6:
      sub_2682BA0C0();
      v54 = v53;

      swift_storeEnumTagMultiPayload();
      v55 = v72;
      sub_2682B8600(v54, v16, v84 & 1, v48, v50, v56, v57, v58, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);

      sub_2683393CC(v16, type metadata accessor for Snippet.SectionHeading);
      Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()();
      v59 = type metadata accessor for Snippet.ReminderSearchResult;
      v60 = v55;
      goto LABEL_17;
    case 4:
      v61 = sub_2682B9EA0(v44);

      goto LABEL_16;
    case 5:
      v61 = sub_2682BA560(v44);

      goto LABEL_16;
    default:

      sub_2682BA0C0();
      v61 = v62;

      *v16 = v70;
      v16[1] = v52;
LABEL_16:
      swift_storeEnumTagMultiPayload();
      sub_2682B8600(v61, v16, v84 & 1, v48, v50, v65, v66, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);

      v59 = type metadata accessor for Snippet.SectionHeading;
      v60 = v16;
LABEL_17:
      sub_2683393CC(v60, v59);
      (*(v42 + 8))(v28, v86);
      sub_2681433DC(v91, &qword_28024ED48, &qword_2683E3D20);
      return __swift_destroy_boxed_opaque_existential_0(v93);
  }
}

uint64_t sub_268337AA4(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8[0] = *a2;
  v8[1] = sub_268338438;
  v8[2] = 0;
  v8[3] = sub_268338464;
  v8[4] = 0;
  v8[5] = sub_268338570;
  v8[6] = 0;
  v8[7] = sub_26833933C;
  v8[8] = 0;
  v8[9] = sub_268339348;
  v8[10] = 0;

  v6 = sub_2683295F4(v8, sub_268339AE4, 0, a4, a1);

  return v6;
}

uint64_t sub_268337BA0@<X0>(uint64_t a1@<X0>, __int16 a2@<W3>, uint64_t a3@<X8>)
{
  v16 = a3;
  v5 = sub_2683CB528();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  sub_26812DB78(0, a1, 0, &v16 - v13);
  sub_2683CB508();
  sub_2683370CC(a1, a2 & 0x101, &v17);
  sub_2681D7AC0(v14, v9, &v17, v16);
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_268337D68()
{
  sub_268339F58();
  type metadata accessor for Snippet();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268337DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a2;
  v25 = a4;
  v22 = a1;
  v26 = sub_2683CB528();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2683D2250;
  *(v14 + 32) = sub_268177934(a1);
  v15 = sub_2683CC818();
  v16 = [v15 code];

  v17 = sub_2683CC818();
  v18 = [v17 userActivity];

  v19 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:v16 userActivity:v18];
  [v19 setNotes_];
  [v19 setTasks_];
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  v20 = sub_2683CFC98();
  [v19 setTaskLists_];

  sub_2683CC828();
  sub_2683CC848();
  sub_268129504(0, &qword_28024D340, 0x277CD4058);
  sub_268129504(0, &qword_28024D348, 0x277CD4060);
  sub_2683CC838();

  sub_2683CB508();
  sub_2683370CC(v22, v23 & 0x101, &v27);
  sub_2681D7AC0(v13, v8, &v27, v25);
  (*(v5 + 8))(v8, v26);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_26833810C()
{
  OUTLINED_FUNCTION_6_15();
  v4[0] = *(v0 + *(type metadata accessor for Snippet.SearchResult3p() + 24));
  v4[1] = sub_268338438;
  v4[2] = 0;
  v4[3] = sub_268338464;
  v4[4] = 0;
  v4[5] = sub_268338570;
  v4[6] = 0;
  v4[7] = sub_26833933C;
  v4[8] = 0;
  v4[9] = sub_268339348;
  v4[10] = 0;

  v2 = sub_2683295F4(v4, sub_268339AE4, 0, 0, v1);

  return v2;
}

uint64_t sub_2683381E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  v18 = a2;
  v7 = sub_2683CB528();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  sub_26812DB78(a1, 0, 0, &v18 - v15);
  sub_2683CB508();
  sub_268336E4C(a1, a3 & 0x101, &v20);
  v19 = 2;
  sub_2681D7AC0(v16, v11, &v19, a4);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  type metadata accessor for Snippet();
  return swift_storeEnumTagMultiPayload();
}

void sub_2683383D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2683CFA78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_268338464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
  v4 = (type metadata accessor for Snippet.Reminder(0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2683D1EC0;
  sub_268339F58();
  v8 = *(a1 + v4[19]);

  result = sub_2682C061C(v9);
  *a2 = v7;
  return result;
}

void sub_2683385BC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v65 = type metadata accessor for Snippet.SectionHeading();
  v7 = OUTLINED_FUNCTION_1(v65);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v10);
  v68 = (v59 - v11);
  v12 = type metadata accessor for Snippet.Reminder(0);
  v13 = OUTLINED_FUNCTION_3_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  v66 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v21 = OUTLINED_FUNCTION_1(v66);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v24);
  v26 = (v59 - v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v27 = sub_2683CC848();
  v59[1] = v4;
  v63 = sub_268175DF4(v4);
  v29 = v28;

  v69 = v2;
  sub_26813CA00(v2 + 136, v71);
  v30 = __swift_project_boxed_opaque_existential_1(v71, v71[3]);
  v31 = sub_268229348(v6);
  if (v31)
  {
    v32 = v31;
    v62 = v30;
    v72 = MEMORY[0x277D84F90];
    sub_268390728();
    if (v32 < 0)
    {
      __break(1u);
      return;
    }

    v64 = v29;
    v60 = v26;
    v33 = 0;
    v34 = v72;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x26D616C90](v33, v6);
      }

      else
      {
        v35 = *(v6 + 8 * v33 + 32);
      }

      sub_26834A288(v35, v20);
      v72 = v34;
      v36 = *(v34 + 16);
      v1 = v36 + 1;
      if (v36 >= *(v34 + 24) >> 1)
      {
        sub_268390728();
        v34 = v72;
      }

      ++v33;
      *(v34 + 16) = v1;
      v37 = v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v38 = *(v15 + 72);
      OUTLINED_FUNCTION_89_3();
      sub_268339378();
    }

    while (v32 != v33);
    v26 = v60;
    v29 = v64;
  }

  sub_268156498();

  v39 = __swift_project_boxed_opaque_existential_1((v69 + 136), *(v69 + 160));
  v70[3] = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v70[4] = &off_2878FF910;
  v70[0] = swift_allocObject();
  sub_26818EE34(v39, v70[0] + 16);
  switch(v29)
  {
    case 0uLL:
      OUTLINED_FUNCTION_111_4();
      sub_2682B80C8();
      OUTLINED_FUNCTION_97_0();

      OUTLINED_FUNCTION_21_22();
      goto LABEL_19;
    case 1uLL:
      OUTLINED_FUNCTION_111_4();
      sub_2682B96A4();
      OUTLINED_FUNCTION_97_0();

      OUTLINED_FUNCTION_21_22();
      goto LABEL_19;
    case 2uLL:
      v48 = OUTLINED_FUNCTION_111_4();
      sub_2682B9E98(v48);
      OUTLINED_FUNCTION_97_0();

      OUTLINED_FUNCTION_21_22();
      goto LABEL_19;
    case 3uLL:
    case 6uLL:
      OUTLINED_FUNCTION_111_4();
      sub_2682BA0C0();
      v69 = v40;

      OUTLINED_FUNCTION_21_22();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29_17();
      v41 = v67;
      sub_268339F58();
      OUTLINED_FUNCTION_50_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      v42 = v61;
      sub_2683CB838();
      v43 = *(v1 + 28);
      v64 = v29;
      LOBYTE(v72) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v42 = v69;
      v44 = *(v1 + 20);
      sub_268339F58();
      v72 = 0;
      LOBYTE(v73) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_124_3();
      sub_2683CB868();
      LOBYTE(v72) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_124_3();
      sub_2683CB868();
      OUTLINED_FUNCTION_88_4();
      sub_2683393CC(v41, v45);
      sub_2683393CC(v20, (v42 + v43));
      Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()();
      sub_2681D8CD8(v63, v64);
      OUTLINED_FUNCTION_87_4();
      v47 = v42;
      goto LABEL_21;
    case 4uLL:
      v54 = OUTLINED_FUNCTION_111_4();
      sub_2682B9EA0(v54);
      OUTLINED_FUNCTION_97_0();

      OUTLINED_FUNCTION_21_22();
      goto LABEL_19;
    case 5uLL:
      v55 = OUTLINED_FUNCTION_111_4();
      sub_2682BA560(v55);
      OUTLINED_FUNCTION_97_0();

      OUTLINED_FUNCTION_21_22();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29_17();
      v51 = v67;
      sub_268339F58();
      OUTLINED_FUNCTION_50_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      sub_2683CB838();
      v56 = *(v1 + 28);
      LOBYTE(v72) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v26 = v39;
      OUTLINED_FUNCTION_181_1();
      v72 = 0;
      LOBYTE(v73) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_124_3();
      sub_2683CB868();
      LOBYTE(v72) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_124_3();
      v53 = v26 + v56;
      sub_2683CB868();
      break;
    default:

      OUTLINED_FUNCTION_111_4();
      sub_2682BA0C0();
      v69 = v49;

      v20 = v68;
      v50 = v63;
      *v68 = v63;
      *(v20 + 8) = v29;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_29_17();
      v51 = v67;
      sub_268339F58();
      OUTLINED_FUNCTION_50_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
      sub_2683CB838();
      v52 = *(v1 + 28);
      LOBYTE(v72) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
      sub_2683CB838();
      *v26 = v69;
      OUTLINED_FUNCTION_181_1();
      v72 = 0;
      LOBYTE(v73) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
      OUTLINED_FUNCTION_124_3();
      sub_2683CB868();
      LOBYTE(v72) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
      OUTLINED_FUNCTION_124_3();
      v53 = v26 + v52;
      sub_2683CB868();
      sub_2681D8CD8(v50, v29);
      break;
  }

  OUTLINED_FUNCTION_88_4();
  sub_2683393CC(v51, v57);
  v47 = v20;
  v46 = v53;
LABEL_21:
  sub_2683393CC(v47, v46);
  sub_2681433DC(v70, &qword_28024ED48, &qword_2683E3D20);
  __swift_destroy_boxed_opaque_existential_0(v71);
  v72 = *v26;
  v73 = sub_268338438;
  v74 = 0;
  v75 = sub_268338464;
  v76 = 0;
  v77 = sub_268338570;
  v78 = 0;
  v79 = sub_26833933C;
  v80 = 0;
  v81 = sub_268339348;
  v82 = 0;

  sub_268329210(&v72, sub_2683383D0, 0, 0, v6);

  OUTLINED_FUNCTION_87_4();
  sub_2683393CC(v26, v58);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268338E24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26832F9EC();
}

uint64_t sub_268338ECC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681342AC;

  return sub_26833308C(a1);
}

uint64_t sub_268338F64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681342AC;

  return sub_268334020(a1);
}

uint64_t sub_268338FFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_268331A0C();
}

uint64_t sub_2683390BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_268334238();
}

uint64_t sub_268339174(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_2683391B4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_268339230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = *v6;
  v13 = sub_2682E1A10(a1, a2);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  v16 = *v11;
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *v11;
  v17 = *(*v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_2683D0298();
  v18 = *(*(v21 + 48) + 16 * v15 + 8);

  v19 = *(*(v21 + 56) + 8 * v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_268339420();
  OUTLINED_FUNCTION_19_2();
  sub_2683D02B8();
  *v11 = v21;
  return v19;
}

uint64_t sub_268339348@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268394E24(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_268339378()
{
  v1 = OUTLINED_FUNCTION_6_15();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_9_0();
  v7(v6);
  return v0;
}

uint64_t sub_2683393CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_268339420()
{
  result = qword_2802532D8;
  if (!qword_2802532D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DB98, &unk_2683D5280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802532D8);
  }

  return result;
}

uint64_t sub_26833949C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_36(v1);

  return sub_268336370();
}

uint64_t objectdestroy_13Tm()
{
  v1 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  v3 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2821FE8E8](v3, v4, 7);
}

uint64_t sub_2683395FC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_36(v1);

  return sub_268336370();
}

uint64_t sub_268339688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 200) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  OUTLINED_FUNCTION_131_2();
  v13 = *(v2 + 192);
  v15 = v2 + v14;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  if (*(v15 + 17))
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v15 + 18);

  return sub_26833734C(a1, v2 + 16, v13, v2 + v12, v16, v17, v19 | v18, v20, a2);
}

uint64_t sub_268339764()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_25_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_44(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832AF60(v3, v4, v5, v6);
}

uint64_t sub_2683397F4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_16();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_44(v5);

  return sub_26832DBF0(v7, v8, v9, v10, v2, v3);
}

uint64_t sub_2683398B0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_132_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_20_9();

  return sub_26832D2E4(v3, v4, v5, v6);
}

uint64_t sub_268339948()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_29(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832D808(v3, v4, v5, v6);
}

uint64_t sub_2683399D4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_74_4();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_20_28(v4);
  OUTLINED_FUNCTION_20_9();

  return sub_26832AE58(v6, v7, v8, v9);
}

uint64_t sub_268339A9C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_268339AE4@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_268339B54()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_36(v1);

  return sub_268336370();
}

uint64_t sub_268339BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = *(v9 + 64);
  OUTLINED_FUNCTION_131_2();
  v13 = *(v2 + v12);
  v14 = v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = *(v14 + 176);
  if (*(v14 + 177))
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  return sub_268337DBC(a1, v14, v16 | v15, a2);
}

uint64_t sub_268339CAC()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_25_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_44(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832AF60(v3, v4, v5, v6);
}

uint64_t sub_268339D3C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_16();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_4_44(v5);

  return sub_26832E7B0(v7, v8, v9, v10, v2, v3);
}

uint64_t sub_268339E34()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_132_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_20_9();

  return sub_26832D538(v3, v4, v5, v6);
}

uint64_t sub_268339ECC()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_29(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832D940(v3, v4, v5, v6);
}

uint64_t sub_268339F58()
{
  v1 = OUTLINED_FUNCTION_6_15();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_9_0();
  v7(v6);
  return v0;
}

uint64_t sub_268339FAC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_36(v1);

  return sub_268336370();
}

uint64_t sub_26833A038()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_11_36(v1);

  return sub_268336370();
}

uint64_t sub_26833A0F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_268335F50(v3, v4);
}

uint64_t sub_26833A1F8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_268336C7C(v3, v4);
}

uint64_t objectdestroy_162Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_0_9(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 32);

  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 88));
  v7 = *(v0 + v5 + 128);

  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 136));

  return MEMORY[0x2821FE8E8](v0, v5 + 178, v3 | 7);
}

uint64_t sub_26833A35C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_29(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832B16C(v3, v4, v5, v6, v7);
}

uint64_t sub_26833A3E8()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_25_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_44(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832AF60(v3, v4, v5, v6);
}

uint64_t sub_26833A478()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_25_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_44(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832B068(v3, v4, v5, v6);
}

uint64_t sub_26833A520()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_268336C7C(v3, v4);
}

uint64_t sub_26833A5C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_3_1(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v6 + 80);
  v10 = *(v8 + 64);
  OUTLINED_FUNCTION_131_2();
  v13 = v2 + v12;
  LODWORD(v12) = *(v2 + v12 + 176);
  *(v13 + 177);

  return a2(a1, v2 + v11);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_107_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_41Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  OUTLINED_FUNCTION_166_1();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t objectdestroy_44Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26833A768()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_132_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_23_25();
  OUTLINED_FUNCTION_20_9();

  return sub_26832D0B8(v3, v4, v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_107_2();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_26833A83C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_29(v1);
  OUTLINED_FUNCTION_20_9();

  return sub_26832D5B8(v3, v4, v5, v6);
}

uint64_t sub_26833A8C8()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_74_4();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_3(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_20_28(v4);
  OUTLINED_FUNCTION_20_9();

  return sub_26832AE58(v6, v7, v8, v9);
}

uint64_t objectdestroy_52Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_0_3(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v2 + 24);

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + v9, v6 | 7);
}

uint64_t objectdestroyTm_4()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;
  v10 = *(v0 + 16);

  v11 = v0 + v8;
  v12 = type metadata accessor for Snippet();
  v13 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v21);
        (*(v22 + 8))(v11);
        v23 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v23);
        goto LABEL_41;
      case 1u:
        v107 = *v11;

        v108 = *(v11 + 24);
        goto LABEL_41;
      case 2u:
        v91 = *v11;

        v92 = *(v11 + 16);

        v93 = *(v11 + 32);

        v94 = *(v11 + 48);

        OUTLINED_FUNCTION_38_0();
        if (!v90)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v99 = *v11;

        v100 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v101 = v100[5];
        OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v216 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v216);
            (*(v217 + 8))(v1);
            break;
          case 1u:
            v218 = *(v1 + 8);

            v219 = *(v1 + 24);

            v220 = *(v1 + 40);

            if (*(v1 + 96) != 255)
            {
              v221 = *(v1 + 80);
              v222 = *(v1 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v102 = *(v1 + 8);

            break;
          default:
            break;
        }

        v223 = v100[6];
        v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v224);
        (*(v225 + 8))(v11 + v223);
        v199 = v100[7];
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_89;
      case 4u:
        v268 = v9;
        v54 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v54);
        (*(v55 + 8))(v11);
        v56 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v56);

        OUTLINED_FUNCTION_11_5(v56[6]);

        OUTLINED_FUNCTION_11_5(v56[7]);

        v57 = v11 + v56[8];
        if (*(v57 + 24))
        {
          v58 = *(v57 + 8);

          v59 = *(v57 + 24);

          v60 = *(v57 + 40);

          if (*(v57 + 96) != 255)
          {
            v61 = *(v57 + 80);
            v62 = *(v57 + 88);
            sub_26814304C();
          }
        }

        v63 = v56[9];
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v64);
        v66 = *(v65 + 8);
        v7 = v65 + 8;
        v66(v11 + v63, v64);
        v67 = OUTLINED_FUNCTION_43_0(v56[10]);
        (v66)(v67);
        v68 = OUTLINED_FUNCTION_43_0(v56[11]);
        (v66)(v68);
        v69 = v11 + v56[12];
        v70 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v70))
        {
          v71 = *(v69 + 8);

          v264 = *(v2 + 20);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v72);
          (*(v73 + 8))(v69 + v264);
          v66(v69 + *(v2 + 24), v64);
        }

        v74 = v56[13];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v75);
        (*(v76 + 8))(&v74[v11]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v77 = *(v74 + 3);
        }

        v78 = *(v11 + v56[15]);

        v79 = v56[16];
        v80 = OUTLINED_FUNCTION_31_1();
        v81 = type metadata accessor for Snippet.Reminder.AppLink(v80);
        if (!OUTLINED_FUNCTION_16_4(v81))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v74, *(v74 + 1));
          }

          else
          {
            v230 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v230);
            (*(v231 + 8))(v74);
          }
        }

        v232 = *(v11 + v56[17]);

        goto LABEL_104;
      case 5u:
        v114 = *v11;

        if (*(v11 + 32))
        {
          v115 = *(v11 + 16);

          v116 = *(v11 + 32);

          v117 = *(v11 + 48);

          OUTLINED_FUNCTION_38_0();
          if (!v90)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v118 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_76;
      case 6u:
        v268 = v9;
        v149 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v149);
        (*(v150 + 8))(v11);
        v151 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v151);

        OUTLINED_FUNCTION_11_5(v151[6]);

        OUTLINED_FUNCTION_11_5(v151[7]);

        v152 = v11 + v151[8];
        if (*(v152 + 24))
        {
          v153 = *(v152 + 8);

          v154 = *(v152 + 24);

          v155 = *(v152 + 40);

          if (*(v152 + 96) != 255)
          {
            v156 = *(v152 + 80);
            v157 = *(v152 + 88);
            sub_26814304C();
          }
        }

        v158 = v151[9];
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v159);
        v161 = *(v160 + 8);
        v7 = v160 + 8;
        v161(v11 + v158, v159);
        v162 = OUTLINED_FUNCTION_43_0(v151[10]);
        (v161)(v162);
        v163 = OUTLINED_FUNCTION_43_0(v151[11]);
        (v161)(v163);
        v164 = v11 + v151[12];
        v165 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v165))
        {
          v166 = *(v164 + 8);

          v265 = *(v2 + 20);
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v167);
          (*(v168 + 8))(v164 + v265);
          v161(v164 + *(v2 + 24), v159);
        }

        v169 = v151[13];
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v170);
        (*(v171 + 8))(&v169[v11]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v172 = *(v169 + 3);
        }

        v173 = *(v11 + v151[15]);

        v174 = v151[16];
        v175 = OUTLINED_FUNCTION_31_1();
        v176 = type metadata accessor for Snippet.Reminder.AppLink(v175);
        if (!OUTLINED_FUNCTION_16_4(v176))
        {
          OUTLINED_FUNCTION_19_2();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v169, *(v169 + 1));
          }

          else
          {
            v241 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v241);
            (*(v242 + 8))(v169);
          }
        }

        v243 = *(v11 + v151[17]);

        v244 = v11 + *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
        v245 = *(v244 + 8);

        v246 = *(type metadata accessor for Snippet.Interaction() + 20);
        v247 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v247);
        (*(v248 + 8))(v244 + v246);
LABEL_104:
        v9 = v268;
        break;
      case 7u:
        v104 = *(v11 + 8);
        goto LABEL_41;
      case 8u:
        v194 = *(v11 + 8);

        v195 = *(v11 + 24);

        v196 = *(v11 + 40);

        v197 = *(v11 + 56);

        v118 = *(type metadata accessor for Snippet.CreateNote3p() + 20);
        goto LABEL_76;
      case 9u:
        v84 = *v11;

        v85 = *(v11 + 32);
LABEL_41:

        break;
      case 0xAu:
        v183 = type metadata accessor for Snippet.SectionHeading();
        v184 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v184, v185, v183))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v256 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v256);
              (*(v257 + 8))(v11);
              break;
            case 1u:
              v258 = *(v11 + 8);

              v259 = *(v11 + 24);

              v260 = *(v11 + 40);

              if (*(v11 + 96) != 255)
              {
                v261 = *(v11 + 80);
                v262 = *(v11 + 88);
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v202 = *(v11 + 8);

              break;
            default:
              break;
          }
        }

        v186 = type metadata accessor for Snippet.SearchResult3p();
        v187 = *(v11 + v186[5]);

        v188 = *(v11 + v186[6]);

        v118 = v186[8];
LABEL_76:
        v11 += v118;
        v198 = *(v11 + 8);

        v199 = *(type metadata accessor for Snippet.Interaction() + 20);
        v200 = sub_2683CB828();
LABEL_89:
        OUTLINED_FUNCTION_0_9(v200);
        (*(v226 + 8))(v11 + v199);
        break;
      default:
        break;
    }
  }

  v15 = (v0 + v9);
  v16 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v16, v17, v12))
  {
    OUTLINED_FUNCTION_0_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v18);
        (*(v19 + 8))(v0 + v9);
        v20 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_92;
      case 1u:
        v105 = *v15;

        v106 = v15[3];
        goto LABEL_92;
      case 2u:
        v86 = *v15;

        v87 = v15[2];

        v88 = v15[4];

        v89 = v15[6];

        OUTLINED_FUNCTION_38_0();
        if (!v90)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v95 = *v15;

        v96 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v97 = v15 + v96[5];
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v203 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v203);
            (*(v204 + 8))(v97);
            break;
          case 1u:
            v205 = *(v97 + 8);

            v206 = *(v97 + 24);

            v207 = *(v97 + 40);

            if (*(v97 + 96) != 255)
            {
              v208 = *(v97 + 80);
              v209 = *(v97 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v98 = *(v97 + 8);

            break;
          default:
            break;
        }

        v210 = v96[6];
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v211);
        (*(v212 + 8))(v15 + v210);
        v213 = v96[7];
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9(v214);
        (*(v215 + 8))(v15 + v213);
        break;
      case 4u:
        v24 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v24);
        (*(v25 + 8))(v0 + v9);
        v26 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v26);

        OUTLINED_FUNCTION_11_5(v26[6]);

        OUTLINED_FUNCTION_11_5(v26[7]);

        v27 = v15 + v26[8];
        if (*(v27 + 24))
        {
          v28 = *(v27 + 8);

          v29 = *(v27 + 24);

          v30 = *(v27 + 40);

          if (*(v27 + 96) != 255)
          {
            v31 = *(v27 + 80);
            v32 = *(v27 + 88);
            sub_26814304C();
          }
        }

        v33 = v26[9];
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v34);
        v36 = *(v35 + 8);
        v36(v15 + v33, v34);
        v37 = OUTLINED_FUNCTION_44_0(v26[10]);
        (v36)(v37);
        v38 = OUTLINED_FUNCTION_44_0(v26[11]);
        (v36)(v38);
        v39 = v26[12];
        v40 = OUTLINED_FUNCTION_31_1();
        v41 = type metadata accessor for Snippet.Reminder.LocationTrigger(v40);
        if (!OUTLINED_FUNCTION_16_4(v41))
        {
          v42 = *(v33 + 8);

          v266 = v7;
          v43 = *(v9 + 20);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v44);
          v46 = v33 + v43;
          v7 = v266;
          (*(v45 + 8))(v46);
          v36((v33 + *(v9 + 24)), v34);
        }

        v47 = v26[13];
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v48);
        (*(v49 + 8))(v15 + v47);
        if (OUTLINED_FUNCTION_42_0())
        {

          v50 = *(v47 + 24);
        }

        v51 = *(v15 + v26[15]);

        v52 = v15 + v26[16];
        v53 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v53))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v52, *(v52 + 8));
          }

          else
          {
            v227 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v227);
            (*(v228 + 8))(v52);
          }
        }

        v229 = *(v15 + v26[17]);
        goto LABEL_92;
      case 5u:
        v109 = *v15;

        if (v15[4])
        {
          v110 = v15[2];

          v111 = v15[4];

          v112 = v15[6];

          OUTLINED_FUNCTION_38_0();
          if (!v90)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v113 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_98;
      case 6u:
        v119 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v119);
        (*(v120 + 8))(v0 + v9);
        v121 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v121);

        OUTLINED_FUNCTION_11_5(v121[6]);

        OUTLINED_FUNCTION_11_5(v121[7]);

        v122 = v15 + v121[8];
        if (*(v122 + 24))
        {
          v123 = *(v122 + 8);

          v124 = *(v122 + 24);

          v125 = *(v122 + 40);

          if (*(v122 + 96) != 255)
          {
            v126 = *(v122 + 80);
            v127 = *(v122 + 88);
            sub_26814304C();
          }
        }

        v128 = v121[9];
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v129);
        v131 = *(v130 + 8);
        v131(v15 + v128, v129);
        v132 = OUTLINED_FUNCTION_44_0(v121[10]);
        (v131)(v132);
        v133 = OUTLINED_FUNCTION_44_0(v121[11]);
        (v131)(v133);
        v134 = v121[12];
        v135 = OUTLINED_FUNCTION_31_1();
        v136 = type metadata accessor for Snippet.Reminder.LocationTrigger(v135);
        if (!OUTLINED_FUNCTION_16_4(v136))
        {
          v137 = *(v128 + 8);

          v267 = v7;
          v138 = *(v9 + 20);
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v139);
          v141 = v128 + v138;
          v7 = v267;
          (*(v140 + 8))(v141);
          v131((v128 + *(v9 + 24)), v129);
        }

        v142 = v121[13];
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v143);
        (*(v144 + 8))(v15 + v142);
        if (OUTLINED_FUNCTION_42_0())
        {

          v145 = *(v142 + 24);
        }

        v146 = *(v15 + v121[15]);

        v147 = v15 + v121[16];
        v148 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v148))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v147, *(v147 + 8));
          }

          else
          {
            v233 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v233);
            (*(v234 + 8))(v147);
          }
        }

        v235 = *(v15 + v121[17]);

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p();
        goto LABEL_97;
      case 7u:
        v103 = v15[1];
        goto LABEL_92;
      case 8u:
        v189 = v15[1];

        v190 = v15[3];

        v191 = v15[5];

        v192 = v15[7];

        Note3p = type metadata accessor for Snippet.CreateNote3p();
LABEL_97:
        v113 = *(Note3p + 20);
        goto LABEL_98;
      case 9u:
        v82 = *v15;

        v83 = v15[4];
LABEL_92:

        break;
      case 0xAu:
        v177 = type metadata accessor for Snippet.SectionHeading();
        v178 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
        {
          OUTLINED_FUNCTION_0_0();
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v249 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v249);
              (*(v250 + 8))(v0 + v9);
              break;
            case 1u:
              v251 = v15[1];

              v252 = v15[3];

              v253 = v15[5];

              if (*(v15 + 96) != 255)
              {
                v254 = v15[10];
                v255 = v15[11];
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v201 = v15[1];

              break;
            default:
              break;
          }
        }

        v180 = type metadata accessor for Snippet.SearchResult3p();
        v181 = *(v15 + v180[5]);

        v182 = *(v15 + v180[6]);

        v113 = v180[8];
LABEL_98:
        v236 = v15 + v113;
        v237 = *(v15 + v113 + 8);

        v238 = *(type metadata accessor for Snippet.Interaction() + 20);
        v239 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v239);
        (*(v240 + 8))(v236 + v238);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}