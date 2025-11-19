uint64_t sub_1DCD850C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DCAFF9E8((v0 + 16), v0 + 72);
  sub_1DCAFF9E8((v0 + 72), v1);
  v1[8] = 0;
  v1[9] = 0;
  v1[5] = v2;
  v1[6] = v3;
  v1[7] = 0;
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD8514C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 144);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1DCD8541C(uint64_t a1)
{
  sub_1DCD86534(a1, &v2);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCD854B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD854D0);
}

uint64_t sub_1DCD854D0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v8 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v4;
  *v4 = v5;
  v4[1] = sub_1DCB3F98C;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1DCD855BC()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD855F4()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCD854B8(v5);
}

uint64_t sub_1DCD8567C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for OutputPublisherAsyncAdapter();
  v11[4] = &protocol witness table for OutputPublisherAsyncAdapter;
  v11[0] = a3;
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  swift_allocObject();
  *(a4 + 32) = sub_1DCC4B008(a1);
  sub_1DCB17D04(a2, a4 + 40);
  sub_1DCB17D04(v11, a4 + 80);
  sub_1DCC4B974();
  v8 = swift_allocError();
  *v9 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  *(a4 + 16) = v8;
  *(a4 + 24) = 1;
  return a4;
}

uint64_t sub_1DCD8574C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  swift_allocObject();
  *(a4 + 32) = sub_1DCC4B008(a1);
  sub_1DCB17D04(a2, a4 + 40);
  sub_1DCB17D04(v15, a4 + 80);
  sub_1DCC4B974();
  v12 = swift_allocError();
  *v13 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  *(a4 + 16) = v12;
  *(a4 + 24) = 1;
  return a4;
}

uint64_t destroy for HandoffResponse(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v2 = *(a1 + 48);

  v3 = *(a1 + 72);
}

uint64_t initializeWithCopy for HandoffResponse(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);

  v8 = v7;

  return a1;
}

uint64_t *assignWithCopy for HandoffResponse(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  v4 = a1[6];
  a1[6] = a2[6];

  v5 = a1[7];
  v6 = a2[7];
  a1[7] = v6;
  v7 = v6;

  a1[8] = a2[8];
  v8 = a2[9];
  v9 = a1[9];
  a1[9] = v8;

  return a1;
}

uint64_t assignWithTake for HandoffResponse(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v7 = *(a2 + 72);
  v8 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;

  return a1;
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlowStrategy.makeHandoffResponse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 16);
  OUTLINED_FUNCTION_25_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t sub_1DCD85B90()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_86();

  return v7(v6);
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()()
{
  OUTLINED_FUNCTION_33();
  v3 = *(OUTLINED_FUNCTION_73_0(v0, v1, v2) + 8);
  OUTLINED_FUNCTION_25_1();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_29_2(v8);

  return v11(v10);
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 144);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

uint64_t dispatch thunk of HandoffSessionToCompanionFlowAsync.execute()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 160);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

_BYTE *storeEnumTagSinglePayload for SimpleHandoffSessionToCompanionFlowHelper(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for HandoffSessionToCompanionFlowAsync.HandoffErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD8638C()
{
  result = qword_1ECCA57A8;
  if (!qword_1ECCA57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57A8);
  }

  return result;
}

uint64_t sub_1DCD863E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCD84BF4(a1, v4);
}

uint64_t sub_1DCD86534(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2288, &unk_1DD0E4840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD865A4()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  *(v1 + 16) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 24) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB81954;

  return sub_1DCD863E0(v3, (v1 + 16));
}

uint64_t sub_1DCD8665C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 80);
  return sub_1DCD8541C(a1);
}

uint64_t sub_1DCD866C8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_61_13();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_28_17(v3);

  return sub_1DCD849EC(v5, v6, v7, v8);
}

uint64_t objectdestroy_93Tm()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCD86800()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_61_13();
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_28_17(v3);

  return sub_1DCD84EC8(v5, v6, v7, v8);
}

uint64_t objectdestroy_68Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  OUTLINED_FUNCTION_112(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t HandoffSessionToCompanionFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HandoffSessionToCompanionFlowFrame.__allocating_init(handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:aceServiceInvoker:)(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  HandoffSessionToCompanionFlowFrame.init(handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:aceServiceInvoker:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *HandoffSessionToCompanionFlowFrame.init(handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:aceServiceInvoker:)(void *__src, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6)
{
  v7 = v6;
  v7[2] = 0xD00000000000001DLL;
  v7[3] = 0x80000001DD116170;
  v7[35] = MEMORY[0x1E69E7CC0];
  memcpy(v7 + 6, __src, 0x48uLL);
  memcpy(v7 + 15, a2, 0x48uLL);
  v7[4] = a3;
  v7[5] = a4;
  v13 = a5[3];
  v14 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v13);
  LOBYTE(a4) = (*(v14 + 96))(v13, v14);
  type metadata accessor for ViewFactory();
  v15 = swift_allocObject();
  *(v15 + 16) = a4 & 1;
  v7[24] = v15;
  sub_1DCB17CA0(a5, (v7 + 25));
  sub_1DCB18FF0(a6, (v7 + 30));
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  return v7;
}

uint64_t sub_1DCD86B54(uint64_t a1, uint64_t a2, void (*a3)(char *))
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

void sub_1DCD86C54(uint64_t a1, void *a2)
{
  v3 = a2[24];
  memcpy(__dst, a2 + 6, sizeof(__dst));
  memcpy(v13, a2 + 15, 0x48uLL);
  v4 = a2[4];
  v5 = a2[5];
  v6 = v13[5];
  v7 = *(*v3 + 120);
  sub_1DCBBF670(v13, v11);
  v7(__dst, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0);
  if (v6[2])
  {
    v9 = v6[4];
    v8 = v6[5];
  }

  sub_1DCD8787C();
  v10 = a2[29];
  __swift_project_boxed_opaque_existential_1(a2 + 25, a2[28]);
  sub_1DCCDEA6C();
}

void sub_1DCD86E34()
{
  v1 = v0;
  v2 = v0[24];
  memcpy(__dst, v1 + 6, sizeof(__dst));
  memcpy(v12, v1 + 15, 0x48uLL);
  v3 = v1[4];
  v4 = v1[5];
  v5 = v12[5];
  v6 = *(*v2 + 120);
  sub_1DCBBF670(v12, v10);
  OUTLINED_FUNCTION_1_62();
  v6();
  if (v5[2])
  {
    v8 = v5[4];
    v7 = v5[5];
  }

  sub_1DCD8787C();
  v9 = v1[29];
  __swift_project_boxed_opaque_existential_1(v1 + 25, v1[28]);
  sub_1DCCDEA6C();
}

void static HandoffToCompanionAceCommands.buildAceCommands(viewFactory:handoffDialog:notificationText:sessionHandOffContinuityID:deviceState:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  memcpy(__dst, a2, sizeof(__dst));
  v9 = *(a3 + 40);
  v10 = *(*a1 + 120);
  OUTLINED_FUNCTION_1_62();
  v11();
  if (v9[2])
  {
    v13 = v9[4];
    v12 = v9[5];
  }

  sub_1DCD8787C();
  v14 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_1DCCDEA6C();
}

void sub_1DCD87174(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD0E07C0;
  v7 = v2[4];
  v6 = v2[5];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1DCB34060();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  sub_1DD0DD7EC();

  v8 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v2[33]);
  v9 = v2[35];
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v2;
  v11 = *(v8 + 72);

  sub_1DD0DCF8C();
}

uint64_t sub_1DCD87324(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v25 - v11);
  v13 = *(a1 + 8);
  if (v13 == 255)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DD0E07C0;
    v23 = *(a4 + 32);
    v22 = *(a4 + 40);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1DCB34060();
    *(v21 + 32) = v23;
    *(v21 + 40) = v22;

    sub_1DD0DD7EC();

    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
    a2(v12);
  }

  else
  {
    v25[1] = v8;
    v25[2] = a3;
    v26 = a2;
    v14 = *a1;
    sub_1DCB6DECC(v14, v13);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DD0E07C0;
    v27 = v14;
    v28 = v13;
    sub_1DCB66C54();
    v16 = sub_1DD0DF18C();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1DCB34060();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_1DD0DD7EC();

    v19 = swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v13;
    *v12 = v19;
    swift_storeEnumTagMultiPayload();
    sub_1DCB6DECC(v14, v13);
    v26(v12);
    sub_1DCBCC7B0(v14, v13);
  }

  return sub_1DCB0E9D8(v12, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

void *HandoffSessionToCompanionFlowFrame.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[14];

  sub_1DCB409A8(v8, v9);

  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[18];
  v14 = v0[19];
  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[23];

  sub_1DCB409A8(v16, v17);

  v19 = v0[24];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  v20 = v0[35];

  return v0;
}

uint64_t HandoffSessionToCompanionFlowFrame.__deallocating_deinit()
{
  HandoffSessionToCompanionFlowFrame.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD87830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for HandoffSessionToCompanionFlowFrame();

  return MEMORY[0x1EEE089D8](a1, v5, a3);
}

unint64_t sub_1DCD8787C()
{
  result = qword_1ECCA9330;
  if (!qword_1ECCA9330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA9330);
  }

  return result;
}

unint64_t sub_1DCD878CC(uint64_t a1)
{
  result = sub_1DCD878F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCD878F4()
{
  result = qword_1ECCA57B0;
  if (!qword_1ECCA57B0)
  {
    type metadata accessor for HandoffSessionToCompanionFlowFrame();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HandoffToCompanionAceCommands(_BYTE *result, int a2, int a3)
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

void sub_1DCD87AB0()
{
  *(v0 + 16) = 0;
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DD0DCACC();
}

void sub_1DCD87CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD87D8C()
{
  OUTLINED_FUNCTION_42();
  v1[40] = v2;
  v1[41] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[44] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for AceOutput();
  v1[45] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[46] = OUTLINED_FUNCTION_38();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  OUTLINED_FUNCTION_20_0(v12);
  v14 = *(v13 + 64);
  v1[47] = OUTLINED_FUNCTION_38();
  v15 = type metadata accessor for IdentifiedUser();
  v1[48] = v15;
  OUTLINED_FUNCTION_20_0(v15);
  v17 = *(v16 + 64);
  v1[49] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCD87ECC, 0, 0);
}

void sub_1DCD87ECC()
{
  v4 = v0;
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[38] = v3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD88618()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 432);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  *(v2 + 440) = v0;

  if (v0)
  {
    v5 = sub_1DCD88AA0;
  }

  else
  {
    v6 = *(v2 + 424);

    v5 = sub_1DCD88728;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DCD88728()
{
  v9 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 328);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v5 = v4[11];
  v6 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v5);
  (*(v6 + 96))(v5, v6);
  v7 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCD8897C()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1DCD88E54;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 200));
    v6 = sub_1DCD88D98;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DCD88AA0()
{
  v21 = v0;
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[42];
  v5 = v0[43];
  sub_1DD0DEC1C();

  v19 = 0xD00000000000001CLL;
  v20 = 0x80000001DD11CA50;
  v0[39] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v7);

  v8 = v19;
  v9 = v20;
  v10 = *(v2 - 8);
  (*(v10 + 16))(v5, v3, v2);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v2);
  sub_1DCB09910(v5, v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v2);
  v12 = v0[42];
  if (EnumTagSinglePayload == 1)
  {
    sub_1DCB0E9D8(v0[42], &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {

    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v15 = 136315650;
      v16 = sub_1DD0DEC3C();
      v18 = sub_1DCB10E9C(v16, v17, &v19);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 95;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_1DCB10E9C(v8, v9, &v19);
      _os_log_impl(&dword_1DCAFC000, v13, v14, "FatalError at %s:%lu - %s", v15, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v0[42], v0[51]);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(v8, v9);
}

uint64_t sub_1DCD88D98()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);

  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_1_63();
  sub_1DCD89260(v1, v3);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  static ExecuteResponse.complete()();
  *(v5 + 16) = 1;
  OUTLINED_FUNCTION_4_61();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCD88E54()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);

  OUTLINED_FUNCTION_3_63();
  OUTLINED_FUNCTION_1_63();
  sub_1DCD89260(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  static ExecuteResponse.complete()();
  *(v5 + 16) = 1;
  OUTLINED_FUNCTION_4_61();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t *sub_1DCD88F18()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v1 = v0[13];

  return v0;
}

uint64_t sub_1DCD88F48()
{
  sub_1DCD88F18();

  return swift_deallocClassInstance();
}

void sub_1DCD88FA0(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCD8903C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB22EC8;

  return sub_1DCD87D8C();
}

unint64_t sub_1DCD890D4(uint64_t a1)
{
  result = sub_1DCD890FC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD890FC()
{
  result = qword_1ECCA57B8;
  if (!qword_1ECCA57B8)
  {
    type metadata accessor for HomePodSpeechProfileCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57B8);
  }

  return result;
}

void sub_1DCD89150(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C0, &qword_1DD0F2C90);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD891FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiedUser();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD89260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCD892B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  *(v2 + 56) = ResponseFactory.init()();
  sub_1DCD8B01C(a2, &v6);
  if (!v7)
  {
    sub_1DCB82888();
  }

  sub_1DCB0E9D8(a2, &qword_1ECCA57C8, &unk_1DD0F2D20);
  sub_1DCAFF9E8(&v6, &v8);
  sub_1DCAFF9E8(&v8, v2 + 16);
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  return v2;
}

uint64_t sub_1DCD893BC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCD893D4);
}

uint64_t sub_1DCD893D4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 64) + 72);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1DCD89464;

  return sub_1DCD8A9D4();
}

uint64_t sub_1DCD89464()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 96) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1DCD89558, 0, 0);
}

uint64_t sub_1DCD89558()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 56);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v2();
  }

  else
  {
    *(*(v0 + 64) + 64) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 80) = v4;
    *v4 = v5;
    v4[1] = sub_1DCD89634;
    v6 = *(v0 + 64);

    return sub_1DCD89944();
  }
}

uint64_t sub_1DCD89634()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    v9 = sub_1DCD897B8;
  }

  else
  {
    v9 = sub_1DCD89734;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCD89734()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[6];
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  static ExecuteResponse.complete<A>(next:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD897B8()
{
  OUTLINED_FUNCTION_33();
  *(v0[8] + 64) = 1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[11];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1DCB0E9D8(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v9, -1, -1);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v17 = v0[7];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t sub_1DCD89944()
{
  OUTLINED_FUNCTION_42();
  v1[45] = v2;
  v1[46] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v4 = *(type metadata accessor for AceOutput() - 8);
  v1[48] = v4;
  v1[49] = *(v4 + 64);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD89A48, 0, 0);
}

uint64_t sub_1DCD89A48()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DD0DDE9C();
  *(v0 + 416) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 424) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD89B60;

  return (sub_1DCF66E08)(v0 + 16, 134, v1, 0);
}

uint64_t sub_1DCD89B60()
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
  *(v3 + 432) = v0;

  v9 = *(v3 + 416);

  if (v0)
  {
    v10 = sub_1DCD89F00;
  }

  else
  {
    v10 = sub_1DCD89C70;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1DCD89C70()
{
  v10 = v0;
  memcpy(v0 + 11, v0 + 2, 0x48uLL);
  memcpy(__dst, v0 + 2, sizeof(__dst));
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  v8 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  v0[23] = type metadata accessor for RefreshableDeviceState();
  v0[24] = &protocol witness table for RefreshableDeviceState;
  v0[20] = v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD89F00()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[47];

  OUTLINED_FUNCTION_29();
  v5 = v0[54];

  return v4();
}

uint64_t sub_1DCD89F70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCD89F90, 0, 0);
}

uint64_t sub_1DCD89F90()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1[3] = type metadata accessor for AceOutput();
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  sub_1DCB6FF74(v2, boxed_opaque_existential_1Tm);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t *sub_1DCD8A010()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return v0;
}

uint64_t sub_1DCD8A040()
{
  sub_1DCD8A010();

  return swift_deallocClassInstance();
}

void sub_1DCD8A098(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCD8A134()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCD893BC(v3);
}

uint64_t sub_1DCD8A1EC()
{
  OUTLINED_FUNCTION_39();
  v1 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCD8A320;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57D8, &qword_1DD0F2E88);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCD8A7DC;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCD8A320()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 160) = v4;
  if (v4)
  {
    v5 = sub_1DCD8A774;
  }

  else
  {
    v5 = sub_1DCD8A424;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCD8A424()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 144);
  if (v1)
  {
    if ([*(v0 + 144) isEnabledForDataclass_])
    {
      v2 = sub_1DCD8AEE4(v1);
      if (v3)
      {
        v4 = v2;
        v5 = v3;
        v6 = *(v0 + 152);

        v7 = *(v0 + 8);

        return v7(v4, v5);
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v25 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v25, qword_1EDE57E00);
      v26 = sub_1DD0DD8EC();
      v27 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v26, v27))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v28, v29, v30, v31, v32, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v13 = *(v0 + 152);

      sub_1DCD8AE90();
      swift_allocError();
      v24 = 2;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v18, v19, v20, v21, v22, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v13 = *(v0 + 152);

      sub_1DCD8AE90();
      swift_allocError();
      v24 = 1;
    }

    *v23 = v24;
    swift_willThrow();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    v11 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DCAFC000, v10, v11, "No iCloud account activated on this device", v12, 2u);
      MEMORY[0x1E12A8390](v12, -1, -1);
    }

    v13 = *(v0 + 152);

    sub_1DCD8AE90();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_29();

  return v33();
}

uint64_t sub_1DCD8A774()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_willThrow();

  v3 = *(v0 + 160);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD8A7DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1DCEA2438(v5, v6);
  }

  else
  {
    v8 = a2;

    return sub_1DCBA2CF0(v5, a2);
  }
}

uint64_t sub_1DCD8A888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiedUser();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  if (!a2)
  {
    sub_1DD0DCA6C();
  }

  return a1;
}

uint64_t sub_1DCD8A9EC()
{
  OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 32), *(*(v0 + 16) + 56));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCD8AA84;

  return sub_1DCD8A1D8();
}

uint64_t sub_1DCD8AA84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  v2[4] = v6;
  v2[5] = v7;
  v2[6] = v0;

  if (v0)
  {
    v8 = sub_1DCD8AC54;
  }

  else
  {
    v8 = sub_1DCD8AB90;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DCD8AB90()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = *(v1 + 24);
  v3 = (*(v1 + 16))();
  if (v4)
  {
    if (v0[4] == v3 && v4 == v0[5])
    {
      v7 = 1;
    }

    else
    {
      v6 = v0[5];
      v7 = sub_1DD0DF0AC();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[1];

  return v8(v7 & 1);
}

uint64_t sub_1DCD8AC54()
{
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 48);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1DCB0E9D8(v9, qword_1ECCA8AD0, &qword_1DD0E4F90);
    MEMORY[0x1E12A8390](v9, -1, -1);
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_1DCD8ADD4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8AE38(uint64_t a1, uint64_t a2)
{
  result = sub_1DCD8B08C(&qword_1ECCA57D0, a2, type metadata accessor for ICloudIdValidatorFlow);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD8AE90()
{
  result = qword_1ECCA57E0;
  if (!qword_1ECCA57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57E0);
  }

  return result;
}

uint64_t sub_1DCD8AEE4(void *a1)
{
  v1 = [a1 aa_altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCD8AF48()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(type metadata accessor for AceOutput() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return sub_1DCD89F70(v3, v0 + v5);
}

uint64_t sub_1DCD8B01C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57C8, &unk_1DD0F2D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD8B08C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ACAccountICloudIdProvider.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD8B1B4()
{
  result = qword_1ECCA57E8;
  if (!qword_1ECCA57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA57E8);
  }

  return result;
}

void ActingFlow.BOOL(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = a4;
  v8[4] = v6;
  v8[5] = v5;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD8B2B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result & 1;
  return result;
}

double sub_1DCD8B328@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 80))
  {
    v2 = *(v1 + 88);
    sub_1DD0DCF8C();
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t If.__allocating_init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  If.init<A>(_:_:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1DCD8B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  v7 = sub_1DCBF7DC0(&qword_1ECCA5940, &qword_1ECCA57F0, &qword_1DD0F2F60);
  *(v3 + 16) = a1;
  *(v3 + 48) = v7;
  *(v3 + 56) = a2;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 64) = a3;
  *(v3 + 72) = v8;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 104) = 2;
  return v3;
}

uint64_t If.init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v4 + 16));
  v12 = *(a4 - 8);
  (*(v12 + 16))(boxed_opaque_existential_1Tm, v7, a4);
  *(v4 + 56) = v6;
  *(v4 + 64) = v5;
  (*(v12 + 8))(v7, a4);
  v13 = MEMORY[0x1E69E7CC0];
  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 72) = v13;
  sub_1DCB370A4(v14);
  *(v4 + 96) = 0;
  *(v4 + 104) = 2;
  return v4;
}

uint64_t If.__allocating_init(_:_:)(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  type metadata accessor for If();
  swift_allocObject();
  return sub_1DCD8B470(v6, a2, a3);
}

void sub_1DCD8B68C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  sub_1DCBF7DC0(&qword_1ECCA5940, &qword_1ECCA57F0, &qword_1DD0F2F60);
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCD8B798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v11 = v7;
  v12 = v8;
  __swift_allocate_boxed_opaque_existential_1Tm(v10);
  OUTLINED_FUNCTION_112(a4);
  (*(v9 + 16))();
  v13 = v5;
  v14 = v4;
  swift_beginAccess();
  sub_1DD0DCF8C();
}

void sub_1DCD8B890(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F0, &qword_1DD0F2F60);
  *(swift_allocObject() + 16) = a1;
  sub_1DCD8B68C();
}

void sub_1DCD8B90C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD8B978@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!*(v1 + 104))
  {
    result = OUTLINED_FUNCTION_18_28();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = *(v1 + 72);
      if (v4 < *(v7 + 16))
      {
        sub_1DCB17D04(v7 + 56 * v4 + 32, &v30);
        __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
        v8 = swift_allocObject();
        *(v8 + 16) = v4;
        *(v8 + 24) = v1;
        *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F8, &qword_1DD0F2F68);
        OUTLINED_FUNCTION_5_51();
        v29 = sub_1DCBF7DC0(v9, &qword_1ECCA57F8, &qword_1DD0F2F68);
        sub_1DD0DCF8C();
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (*(v1 + 104) == 1)
  {
    result = OUTLINED_FUNCTION_18_28();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = *(v1 + 72);
      if (v4 < *(v6 + 16))
      {
        sub_1DCD8DBC8(v6 + 56 * v4 + 32, &v27);
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = *(v1 + 96);
  switch(v4)
  {
    case 1uLL:
      v17 = *(v1 + 56);
      v18 = *(v1 + 64);
      v19 = v17();
      v20 = v19;
      if (*(v19 + 16) == 1)
      {
        sub_1DCB17D04(v19 + 32, &v30);

        v21 = *(&v31 + 1);
      }

      else
      {
        v21 = type metadata accessor for Linearly();
        v22 = swift_allocObject();
        v23 = sub_1DCDB3694(v22, v20);
        *(v23 + 33) = 0;
        *(&v31 + 1) = v21;
        v32 = &protocol witness table for Linearly;
        *&v30 = v23;
      }

      __swift_project_boxed_opaque_existential_1(&v30, v21);
      sub_1DD0DCF8C();
    case 2uLL:
      sub_1DCD8B328(&v27);
      if (*(&v28 + 1))
      {
        sub_1DCAFF9E8(&v27, &v30);
        __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
        sub_1DD0DCF8C();
      }

      sub_1DCBD0C9C(&v27);
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
      *(&v28 + 1) = v24;
      v29 = &protocol witness table for Conclude<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v27);
      v26 = *(v24 + 32);
      sub_1DCBD0C2C(&v30, boxed_opaque_existential_1Tm + v26);
      *(boxed_opaque_existential_1Tm + *(v24 + 36)) = 0;
      boxed_opaque_existential_1Tm[3] = MEMORY[0x1E69E7CA8] + 8;
      sub_1DCBD0C9C(&v30);
      sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v26, (boxed_opaque_existential_1Tm + 4));
      *(boxed_opaque_existential_1Tm + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      result = sub_1DCAFF9E8(&v27, a1);
      break;
    case 3uLL:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D18, &qword_1DD10E980);
      v15 = OUTLINED_FUNCTION_13_37(v14, &protocol witness table for Conclude<A>);
      v16 = *(v14 + 32);
      sub_1DCBD0C2C(&v27, v15 + v16);
      *(v15 + *(v14 + 36)) = 0;
      v15[3] = MEMORY[0x1E69E7CA8] + 8;
      sub_1DCBD0C9C(&v27);
      sub_1DCBD0C2C(v15 + v16, (v15 + 4));
      *(v15 + 72) = 0;
      type metadata accessor for FlowActionType(0);
      result = swift_storeEnumTagMultiPayload();
      break;
    default:
      v11 = *(v1 + 40);
      v12 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA57F8, &qword_1DD0F2F68);
      OUTLINED_FUNCTION_5_51();
      v29 = sub_1DCBF7DC0(v13, &qword_1ECCA57F8, &qword_1DD0F2F68);
      sub_1DD0DCF8C();
  }

  return result;
}

void sub_1DCD8C048(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "if condition: %{BOOL}d", v7, 8u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  if (v3)
  {
    v8 = 2;
    v9 = 1;
  }

  else
  {
    swift_beginAccess();
    v9 = 2 * (*(*(a2 + 72) + 16) == 0);
    v8 = 2 * (*(*(a2 + 72) + 16) == 0);
  }

  *(a2 + 96) = v9;
  *(a2 + 104) = v8;
}

void sub_1DCD8C188(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a2;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "elseIf[%ld] condition: %{BOOL}d", v9, 0x12u);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  v10 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v11 = 1;
    }

    else
    {
      swift_beginAccess();
      v12 = *(*(a3 + 72) + 16);
      v13 = v10 < v12;
      v14 = v10 >= v12;
      if (v13)
      {
        ++a2;
      }

      else
      {
        a2 = 2;
      }

      v11 = 2 * v14;
    }

    *(a3 + 96) = a2;
    *(a3 + 104) = v11;
  }
}

void sub_1DCD8C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a2;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "run elseIf[%ld] body", v8, 0xCu);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  *(a3 + 96) = 3;
  *(a3 + 104) = 2;
}

void sub_1DCD8C3E8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v7, a3, v8, 2u);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  *(a2 + 96) = 3;
  *(a2 + 104) = 2;
}

uint64_t sub_1DCD8C4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66496B63656863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F4266496E7572 && a2 == 0xE900000000000079;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736C456B63656863 && a2 == 0xEB00000000664965;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4965736C456E7572 && a2 == 0xED000079646F4266;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4265736C456E7572 && a2 == 0xEB0000000079646FLL;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1701736292 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD0DF0AC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DCD8C6E4(char a1)
{
  result = 0x66496B63656863;
  switch(a1)
  {
    case 1:
      result = 0x646F4266496E7572;
      break;
    case 2:
      result = 0x736C456B63656863;
      break;
    case 3:
      result = 0x4965736C456E7572;
      break;
    case 4:
      result = 0x4265736C456E7572;
      break;
    case 5:
      result = 1701736292;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCD8C7B0(void *a1, uint64_t a2, int a3)
{
  v87 = a3;
  v88 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5908, &qword_1DD0F30E8);
  v5 = OUTLINED_FUNCTION_9(v4);
  v82 = v6;
  v83 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_34_0();
  v81 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5910, &qword_1DD0F30F0);
  v13 = OUTLINED_FUNCTION_9(v12);
  v79 = v14;
  v80 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  v78 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5918, &qword_1DD0F30F8);
  v21 = OUTLINED_FUNCTION_9(v20);
  v85 = v22;
  v86 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5920, &qword_1DD0F3100);
  OUTLINED_FUNCTION_9(v29);
  v84 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v74 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5928, &qword_1DD0F3108);
  v38 = OUTLINED_FUNCTION_9(v37);
  v76 = v39;
  v77 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  OUTLINED_FUNCTION_34_0();
  v75 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5930, &qword_1DD0F3110);
  OUTLINED_FUNCTION_9(v45);
  v74 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v74 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5938, &qword_1DD0F3118);
  v54 = OUTLINED_FUNCTION_9(v53);
  v89 = v55;
  v90 = v54;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v58, v59);
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD8DFD8();
  sub_1DD0DF24C();
  if (!v87)
  {
    v93 = 2;
    sub_1DCD8E128();
    OUTLINED_FUNCTION_11_12();
    sub_1DD0DEFEC();
    (*(v84 + 8))(v36, v29);
    v65 = OUTLINED_FUNCTION_9_38();
    v67 = v28;
    return v66(v65, v67);
  }

  if (v87 == 1)
  {
    v94 = 3;
    sub_1DCD8E0D4();
    v61 = v90;
    sub_1DD0DEF7C();
    v62 = v86;
    sub_1DD0DEFEC();
    v63 = OUTLINED_FUNCTION_17_23();
    v64(v63, v62);
    v65 = OUTLINED_FUNCTION_9_38();
    v67 = v61;
    return v66(v65, v67);
  }

  switch(v88)
  {
    case 1:
      v92 = 1;
      sub_1DCD8E17C();
      v69 = v75;
      OUTLINED_FUNCTION_11_12();
      v71 = v76;
      v70 = v77;
      goto LABEL_11;
    case 2:
      v95 = 4;
      sub_1DCD8E080();
      v69 = v78;
      OUTLINED_FUNCTION_11_12();
      v71 = v79;
      v70 = v80;
      goto LABEL_11;
    case 3:
      v96 = 5;
      sub_1DCD8E02C();
      v69 = v81;
      OUTLINED_FUNCTION_11_12();
      v71 = v82;
      v70 = v83;
LABEL_11:
      (*(v71 + 8))(v69, v70);
      break;
    default:
      v91 = 0;
      sub_1DCD8E1D0();
      OUTLINED_FUNCTION_11_12();
      (*(v74 + 8))(v52, v45);
      break;
  }

  v72 = OUTLINED_FUNCTION_9_38();
  return v73(v72, v28);
}

uint64_t sub_1DCD8CD44(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5898, &qword_1DD0F30A8);
  v108 = OUTLINED_FUNCTION_9(v2);
  v109 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_34_0();
  v112 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58A0, &qword_1DD0F30B0);
  v106 = OUTLINED_FUNCTION_9(v9);
  v107 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_34_0();
  v116 = v15;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58A8, &qword_1DD0F30B8);
  OUTLINED_FUNCTION_9(v105);
  v111 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_34_0();
  v113 = v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58B0, &qword_1DD0F30C0);
  OUTLINED_FUNCTION_9(v115);
  v110 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_34_0();
  v114 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58B8, &qword_1DD0F30C8);
  v29 = OUTLINED_FUNCTION_9(v28);
  v103 = v30;
  v104 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v98 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58C0, &qword_1DD0F30D0);
  OUTLINED_FUNCTION_9(v37);
  v102 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v98 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA58C8, &unk_1DD0F30D8);
  OUTLINED_FUNCTION_9(v45);
  v47 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v50, v51);
  v52 = a1[3];
  v53 = a1[4];
  v117 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_1DCD8DFD8();
  v54 = v118;
  sub_1DD0DF23C();
  if (v54)
  {
    goto LABEL_8;
  }

  v99 = v37;
  v100 = v44;
  v101 = v36;
  v55 = v116;
  v118 = v47;
  v56 = sub_1DD0DEF5C();
  result = sub_1DCB547F8(v56, 0);
  if (v59 == v60 >> 1)
  {
LABEL_7:
    v36 = sub_1DD0DECAC();
    swift_allocError();
    v71 = v70;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v71 = &type metadata for If.State;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    v73 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_112(v36);
    (*(v74 + 104))(v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = OUTLINED_FUNCTION_1_64();
    v76(v75);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    return v36;
  }

  v98 = 0;
  if (v59 < (v60 >> 1))
  {
    v61 = *(v58 + v59);
    sub_1DCB54800(v59 + 1);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v63 == v65 >> 1)
    {
      switch(v61)
      {
        case 1:
          v120 = 1;
          sub_1DCD8E17C();
          OUTLINED_FUNCTION_2_56();
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_17_23();
          v83(v82);
          v84 = OUTLINED_FUNCTION_1_64();
          v85(v84);
          v36 = 1;
          goto LABEL_15;
        case 2:
          v121 = 2;
          sub_1DCD8E128();
          OUTLINED_FUNCTION_2_56();
          v79 = sub_1DD0DEF3C();
          v80 = v117;
          v36 = v79;
          swift_unknownObjectRelease();
          v90 = OUTLINED_FUNCTION_16_28();
          v91(v90);
          v92 = OUTLINED_FUNCTION_8_42();
          v93(v92);
          goto LABEL_16;
        case 3:
          v122 = 3;
          sub_1DCD8E0D4();
          OUTLINED_FUNCTION_2_56();
          v81 = sub_1DD0DEF3C();
          v80 = v117;
          v36 = v81;
          swift_unknownObjectRelease();
          v94 = OUTLINED_FUNCTION_14_37();
          v95(v94);
          v96 = OUTLINED_FUNCTION_8_42();
          v97(v96);
          goto LABEL_16;
        case 4:
          v123 = 4;
          sub_1DCD8E080();
          OUTLINED_FUNCTION_2_56();
          swift_unknownObjectRelease();
          (*(v107 + 8))(v55, v106);
          v77 = OUTLINED_FUNCTION_1_64();
          v78(v77);
          v36 = 2;
          goto LABEL_15;
        case 5:
          v124 = 5;
          sub_1DCD8E02C();
          OUTLINED_FUNCTION_2_56();
          swift_unknownObjectRelease();
          v86 = OUTLINED_FUNCTION_17_23();
          v87(v86);
          v88 = OUTLINED_FUNCTION_1_64();
          v89(v88);
          v36 = 3;
          goto LABEL_15;
        default:
          v119 = 0;
          sub_1DCD8E1D0();
          OUTLINED_FUNCTION_2_56();
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_17_23();
          v67(v66, v99);
          v68 = OUTLINED_FUNCTION_1_64();
          v69(v68);
          v36 = 0;
LABEL_15:
          v80 = v117;
LABEL_16:
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          break;
      }

      return v36;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCD8D588(uint64_t a1)
{
  v2 = sub_1DCD8E128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D5C4(uint64_t a1)
{
  v2 = sub_1DCD8E128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D600(uint64_t a1)
{
  v2 = sub_1DCD8E1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D63C(uint64_t a1)
{
  v2 = sub_1DCD8E1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD8C4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD8D6A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCD8C6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD8D6D0(uint64_t a1)
{
  v2 = sub_1DCD8DFD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D70C(uint64_t a1)
{
  v2 = sub_1DCD8DFD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D748(uint64_t a1)
{
  v2 = sub_1DCD8E02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D784(uint64_t a1)
{
  v2 = sub_1DCD8E02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D7C0(uint64_t a1)
{
  v2 = sub_1DCD8E080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D7FC(uint64_t a1)
{
  v2 = sub_1DCD8E080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D838(uint64_t a1)
{
  v2 = sub_1DCD8E0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D874(uint64_t a1)
{
  v2 = sub_1DCD8E0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D8B0(uint64_t a1)
{
  v2 = sub_1DCD8E17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8D8EC(uint64_t a1)
{
  v2 = sub_1DCD8E17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCD8D928@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCD8CD44(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t *If.deinit()
{
  sub_1DCD8DC00(v0 + 2);
  v1 = v0[9];

  v2 = v0[11];
  sub_1DCB370A4(v0[10]);
  return v0;
}

uint64_t If.__deallocating_deinit()
{
  If.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8DA00()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Conclude();
  v4 = OUTLINED_FUNCTION_13_37(v3, &protocol witness table for Conclude<A>);
  type metadata accessor for ConcludeWithValueFlow();
  swift_getWitnessTable();
  return ActingFlow.conclude(with:)(v0 + v1, v4);
}

uint64_t sub_1DCD8DABC()
{
  v1 = *(*v0 + 88);
  OUTLINED_FUNCTION_112(*(*v0 + 80));
  (*(v2 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1DCD8DB28()
{
  sub_1DCD8DABC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8DD28(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for If.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for If.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCD8DE58(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DCD8DE70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t destroy for If.ConditionBodyPair(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v2 = a1[6];
}

void initializeWithCopy for If.ConditionBodyPair(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  sub_1DD0DCF8C();
}

void assignWithCopy for If.ConditionBodyPair(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v5 = a2[5];
  v4 = a2[6];
  v6 = a1[6];
  a1[5] = v5;
  a1[6] = v4;
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for If.ConditionBodyPair(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t sub_1DCD8DFD8()
{
  result = qword_1ECCA58D0;
  if (!qword_1ECCA58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58D0);
  }

  return result;
}

unint64_t sub_1DCD8E02C()
{
  result = qword_1ECCA58D8;
  if (!qword_1ECCA58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58D8);
  }

  return result;
}

unint64_t sub_1DCD8E080()
{
  result = qword_1ECCA58E0;
  if (!qword_1ECCA58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58E0);
  }

  return result;
}

unint64_t sub_1DCD8E0D4()
{
  result = qword_1ECCA58E8;
  if (!qword_1ECCA58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58E8);
  }

  return result;
}

unint64_t sub_1DCD8E128()
{
  result = qword_1ECCA58F0;
  if (!qword_1ECCA58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58F0);
  }

  return result;
}

unint64_t sub_1DCD8E17C()
{
  result = qword_1ECCA58F8;
  if (!qword_1ECCA58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA58F8);
  }

  return result;
}

unint64_t sub_1DCD8E1D0()
{
  result = qword_1ECCA5900;
  if (!qword_1ECCA5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5900);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for If.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCD8E330(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD8E400()
{
  result = qword_1ECCA5948;
  if (!qword_1ECCA5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5948);
  }

  return result;
}

unint64_t sub_1DCD8E458()
{
  result = qword_1ECCA5950;
  if (!qword_1ECCA5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5950);
  }

  return result;
}

unint64_t sub_1DCD8E4B0()
{
  result = qword_1ECCA5958;
  if (!qword_1ECCA5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5958);
  }

  return result;
}

unint64_t sub_1DCD8E508()
{
  result = qword_1ECCA5960;
  if (!qword_1ECCA5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5960);
  }

  return result;
}

unint64_t sub_1DCD8E560()
{
  result = qword_1ECCA5968;
  if (!qword_1ECCA5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5968);
  }

  return result;
}

unint64_t sub_1DCD8E5B8()
{
  result = qword_1ECCA5970;
  if (!qword_1ECCA5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5970);
  }

  return result;
}

unint64_t sub_1DCD8E610()
{
  result = qword_1ECCA5978;
  if (!qword_1ECCA5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5978);
  }

  return result;
}

unint64_t sub_1DCD8E668()
{
  result = qword_1ECCA5980;
  if (!qword_1ECCA5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5980);
  }

  return result;
}

unint64_t sub_1DCD8E6C0()
{
  result = qword_1ECCA5988;
  if (!qword_1ECCA5988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5988);
  }

  return result;
}

unint64_t sub_1DCD8E718()
{
  result = qword_1ECCA5990;
  if (!qword_1ECCA5990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5990);
  }

  return result;
}

unint64_t sub_1DCD8E770()
{
  result = qword_1ECCA5998;
  if (!qword_1ECCA5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5998);
  }

  return result;
}

unint64_t sub_1DCD8E7C8()
{
  result = qword_1ECCA59A0;
  if (!qword_1ECCA59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59A0);
  }

  return result;
}

unint64_t sub_1DCD8E820()
{
  result = qword_1ECCA59A8;
  if (!qword_1ECCA59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59A8);
  }

  return result;
}

unint64_t sub_1DCD8E878()
{
  result = qword_1ECCA59B0;
  if (!qword_1ECCA59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59B0);
  }

  return result;
}

unint64_t sub_1DCD8E8D0()
{
  result = qword_1ECCA59B8;
  if (!qword_1ECCA59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59B8);
  }

  return result;
}

unint64_t sub_1DCD8E928()
{
  result = qword_1ECCA59C0;
  if (!qword_1ECCA59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59C0);
  }

  return result;
}

unint64_t sub_1DCD8E980()
{
  result = qword_1ECCA59C8;
  if (!qword_1ECCA59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59C8);
  }

  return result;
}

uint64_t IFClientActionParse.clientAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD0DD08C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t IFClientActionParse.init(clientAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DD08C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1DCD8EAB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCD8EB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD8EAB4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCD8EB80(uint64_t a1)
{
  v2 = sub_1DCD8ED50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD8EBBC(uint64_t a1)
{
  v2 = sub_1DCD8ED50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IFClientActionParse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA59D0, &qword_1DD0F3770);
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD8ED50();
  sub_1DD0DF24C();
  sub_1DD0DD08C();
  sub_1DCD8EFF8(&qword_1ECCA59E0);
  sub_1DD0DEFFC();
  return (*(v5 + 8))(v10, v2);
}

unint64_t sub_1DCD8ED50()
{
  result = qword_1ECCA59D8;
  if (!qword_1ECCA59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59D8);
  }

  return result;
}

uint64_t IFClientActionParse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1DD0DD08C();
  v4 = OUTLINED_FUNCTION_9(v3);
  v30 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA59E8, &qword_1DD0F3778);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for IFClientActionParse();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD8ED50();
  v25 = v32;
  sub_1DD0DF23C();
  if (!v25)
  {
    v26 = v30;
    sub_1DCD8EFF8(&qword_1ECCA59F0);
    sub_1DD0DEF4C();
    (*(v13 + 8))(v18, v10);
    (*(v26 + 32))(v23, v31, v3);
    sub_1DCD8F03C(v23, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DCD8EFF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD0DD08C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCD8F03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IFClientActionParse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for IFClientActionParse(uint64_t a1)
{
  v2 = sub_1DD0DD08C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for IFClientActionParse(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DD08C();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1DCD8F35C()
{
  result = sub_1DD0DD08C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IFClientActionParse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD8F498()
{
  result = qword_1ECCA59F8;
  if (!qword_1ECCA59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA59F8);
  }

  return result;
}

unint64_t sub_1DCD8F4F0()
{
  result = qword_1ECCA5A00;
  if (!qword_1ECCA5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5A00);
  }

  return result;
}

unint64_t sub_1DCD8F548()
{
  result = qword_1ECCA5A08;
  if (!qword_1ECCA5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5A08);
  }

  return result;
}

uint64_t ImmediateContinuationFlow.__allocating_init(flowProducer:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ImmediateContinuationFlow.init(flowProducer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1DCD8F5E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD8F608, 0, 0);
}

void sub_1DCD8F608()
{
  OUTLINED_FUNCTION_42();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 24);
  (*(v1 + 16))();
  static ExecuteResponse.complete(next:)();
}

uint64_t ImmediateContinuationFlow.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ImmediateContinuationFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD8F700()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v0;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DCBFA404;

  return sub_1DCD8F5E8(v3);
}

uint64_t dispatch thunk of ImmediateContinuationFlow.execute()(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCBFA404;

  return v8(a1);
}

uint64_t Inform.__allocating_init(_:)(__int128 *a1)
{
  v2 = swift_allocObject();
  Inform.init(_:)(a1);
  return v2;
}

uint64_t sub_1DCD8F9D0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v8 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return v8(v2);
}

uint64_t sub_1DCD8FAC0()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCD8F9D0();
}

uint64_t Inform.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD8FC04(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 255;
  *(v2 + 40) = &type metadata for ClosureOutputGenerator;
  *(v2 + 48) = &off_1F5860950;
  *(v2 + 56) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Inform.init(_:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 255;
  sub_1DCAFF9E8(a1, v1 + 16);
  return v1;
}

uint64_t Inform.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5A10, &unk_1DD0F39A0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v36 - v6;
  v8 = *(v1 + 64);
  if (v8 == 255)
  {
    sub_1DCBD0994();
    v34 = swift_allocError();
    *v35 = 0xD000000000000020;
    v35[1] = 0x80000001DD11CC90;
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    *__swift_allocate_boxed_opaque_existential_1Tm(a1) = v34;
    type metadata accessor for FlowActionType(0);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v9 = *(v1 + 56);
    if (v8 & 1) == 0 && *(v1 + 65) && (v9)
    {
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      v10 = &v7[v3[7]];
      *v10 = v9;
      v10[8] = 0;
      v11 = v3[8];
      sub_1DCBD0C2C(&v38, &v7[v11]);
      v7[v3[9]] = 0;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5A18, &unk_1DD0F39B0);
      *(v7 + 3) = v12;
      v13 = *v10;
      v14 = v10[8];
      *v7 = *v10;
      v7[8] = v14;
      v15 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90038(v15, v16);
      sub_1DCB8D4CC(v13, v14);
      sub_1DCB16D50(&v38, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(&v7[v11], (v7 + 32));
      v7[72] = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      v17 = *v10;
      LOBYTE(v10) = v10[8];
      sub_1DCBD0C2C(&v7[v11], v36);
      *(&v39 + 1) = v3;
      v40 = &protocol witness table for Conclude<A>;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v38);
      v19 = boxed_opaque_existential_1Tm + v3[7];
      *v19 = v17;
      v19[8] = v10;
      v20 = v3[8];
      sub_1DCBD0C2C(v36, boxed_opaque_existential_1Tm + v20);
      *(boxed_opaque_existential_1Tm + v3[9]) = 1;
      boxed_opaque_existential_1Tm[3] = v12;
      v21 = *v19;
      v22 = v19[8];
      *boxed_opaque_existential_1Tm = *v19;
      *(boxed_opaque_existential_1Tm + 8) = v22;
      sub_1DCB8D4CC(v17, v10);
      sub_1DCB8D4CC(v21, v22);
      sub_1DCB16D50(v36, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v20, (boxed_opaque_existential_1Tm + 4));
      *(boxed_opaque_existential_1Tm + 72) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1DCB16D50(v7, &qword_1ECCA5A10, &unk_1DD0F39A0);
    }

    else
    {
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      *(&v39 + 1) = v3;
      v40 = &protocol witness table for Conclude<A>;
      v23 = __swift_allocate_boxed_opaque_existential_1Tm(&v38);
      v24 = v23 + v3[7];
      *v24 = v9;
      v24[8] = v8 & 1;
      v25 = v3[8];
      sub_1DCBD0C2C(v36, v23 + v25);
      *(v23 + v3[9]) = 0;
      v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5A18, &unk_1DD0F39B0);
      v26 = *v24;
      LOBYTE(v24) = v24[8];
      *v23 = v26;
      *(v23 + 8) = v24;
      v27 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90038(v27, v28);
      v29 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90038(v29, v30);
      sub_1DCB8D4CC(v26, v24);
      sub_1DCB16D50(v36, &qword_1ECCA1D20, &qword_1DD0F0330);
      sub_1DCBD0C2C(v23 + v25, (v23 + 4));
      *(v23 + 72) = 0;
      type metadata accessor for FlowActionType(0);
      swift_storeEnumTagMultiPayload();
      v31 = OUTLINED_FUNCTION_90_0();
      sub_1DCD90050(v31, v32);
    }

    return sub_1DCAFF9E8(&v38, a1);
  }
}

id sub_1DCD90038(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1DCB8D4CC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1DCD90050(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1DCCA3874(result, a2 & 1);
  }

  return result;
}

uint64_t Inform.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DCD90050(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t Inform.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1DCD90050(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

void Inform.onSuccess(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3020, &qword_1DD0E90D0);
  swift_allocObject();
  sub_1DD0DCF8C();
}

void ActingFlow<>.onSuccess(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t Inform.execute(with:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD902E0, 0, 0);
}

uint64_t sub_1DCD902E0()
{
  v1 = *(v0 + 160);
  sub_1DCB17CA0(*(v0 + 152), v0 + 16);
  v2 = *(v0 + 40);
  *(v0 + 168) = v2;
  *(v0 + 184) = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 192) = v7;
  *v7 = v8;
  v7[1] = sub_1DCD9042C;

  return v10(v0 + 56, v3, v4);
}

uint64_t sub_1DCD9042C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = v2[24];
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCD90780, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9_39(v3[22]);
    v16 = (v7 + *v7);
    v9 = *(v8 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v3[26] = v10;
    *v10 = v11;
    v10[1] = sub_1DCD90604;
    v12 = v3[22];
    v13 = v3[23];
    v14 = v3[21];

    return (v16)(v3 + 7, v14, v12);
  }
}

uint64_t sub_1DCD90604()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 208);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 216) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  if (v0)
  {
    v7 = sub_1DCD908B0;
  }

  else
  {
    v7 = sub_1DCD90710;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD90710()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
  v3 = *(v1 + 64);
  *(v1 + 64) = 0;
  sub_1DCD90050(v2, v3);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD90780()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (OUTLINED_FUNCTION_11_39())
  {
    OUTLINED_FUNCTION_13_38();

    OUTLINED_FUNCTION_0_56();
    v3 = *(v0 + 112);
LABEL_3:

    goto LABEL_10;
  }

  *(v0 + 128) = v1;
  v4 = v1;
  if (OUTLINED_FUNCTION_10_39())
  {
    v5 = *(v0 + 96);
    if (*(v0 + 104))
    {
      sub_1DCB6DE90(v5, *(v0 + 104));
    }

    else
    {
      *(v0 + 136) = v5;
      if (OUTLINED_FUNCTION_12_36())
      {
        OUTLINED_FUNCTION_13_38();

        OUTLINED_FUNCTION_0_56();
        v3 = *(v0 + 128);
        goto LABEL_3;
      }
    }
  }

  v6 = *(v0 + 160);

  OUTLINED_FUNCTION_5_52();
LABEL_10:
  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCD908B0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 112) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (OUTLINED_FUNCTION_11_39())
  {
    OUTLINED_FUNCTION_13_38();

    OUTLINED_FUNCTION_0_56();
    v3 = *(v0 + 112);
LABEL_3:

    goto LABEL_10;
  }

  *(v0 + 128) = v1;
  v4 = v1;
  if (OUTLINED_FUNCTION_10_39())
  {
    v5 = *(v0 + 96);
    if (*(v0 + 104))
    {
      sub_1DCB6DE90(v5, *(v0 + 104));
    }

    else
    {
      *(v0 + 136) = v5;
      if (OUTLINED_FUNCTION_12_36())
      {
        OUTLINED_FUNCTION_13_38();

        OUTLINED_FUNCTION_0_56();
        v3 = *(v0 + 128);
        goto LABEL_3;
      }
    }
  }

  v6 = *(v0 + 160);

  OUTLINED_FUNCTION_5_52();
LABEL_10:
  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t Inform.cancel(error:)(void *a1)
{
  v2 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {

    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    if (v5 == 255)
    {
      v6 = 1;
    }

    else
    {
      v6 = *(v1 + 56);
    }

    *(v1 + 56) = v6;
    *(v1 + 64) = (v5 != 255) & v5;
    sub_1DCD90038(v4, v5);
    v7 = v4;
    v8 = v5;
  }

  else
  {
    v9 = *(v1 + 56);
    v10 = *(v1 + 64);
    if (v10 == 255)
    {
      v14 = v2;
      v12 = *(v1 + 56);
      v11 = *(v1 + 64);
      v13 = 1;
    }

    else
    {
      v11 = *(v1 + 64);
      v12 = *(v1 + 56);
      v2 = v12;
      v13 = v11;
    }

    *(v1 + 56) = v2;
    *(v1 + 64) = v13 & 1;
    sub_1DCD90038(v9, v10);
    v7 = v12;
    v8 = v11;
  }

  return sub_1DCD90050(v7, v8);
}

uint64_t sub_1DCD90B08(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return Inform.execute(with:)(a1);
}

unint64_t sub_1DCD90BC8()
{
  result = qword_1ECCA5A20[0];
  if (!qword_1ECCA5A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA5A20);
  }

  return result;
}

uint64_t dispatch thunk of OutputGenerator.generate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_39(a3);
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v3 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1DCB4AD3C;

  return v13(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for Inform.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD90E64()
{
  result = qword_1ECCA3028[0];
  if (!qword_1ECCA3028[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3020, &qword_1DD0E90D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA3028);
  }

  return result;
}

void ReactiveFlowPlan.inform(flowProducer:)()
{
  OUTLINED_FUNCTION_1_65();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v3;
  v4[5] = v2;
  swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_3_64();
  ReactiveFlowPlan.push<A>(flowProducer:)(v5, v6, v7, v8);
}

uint64_t sub_1DCD90F8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DF22C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - v10;
  v12 = a2(a1);
  v13 = type metadata accessor for WrappingFlow();
  v18 = type metadata accessor for Inform();
  v19 = &protocol witness table for Inform;
  *&v17 = v12;
  (*(*(AssociatedTypeWitness - 8) + 16))(v11, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v14 = sub_1DCD91134(&v17);
  a3[3] = v13;
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v14;
  return result;
}

uint64_t sub_1DCD91128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1DCD90F8C(a1, *(v2 + 32), a2);
}

uint64_t sub_1DCD91134(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DCD915E8(a1);
}

void ReactiveFlowPlan.informOnError(outputGenerator:)()
{
  OUTLINED_FUNCTION_1_65();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  sub_1DD0DCF8C();
}

void sub_1DCD9120C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  type metadata accessor for Inform();
  swift_allocObject();
  sub_1DCD8FC04(&unk_1DD0F3BA0, v8);
  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B28, &qword_1DD0F3BA8);
  *(a4 + 32) = sub_1DCBF7DC0(&qword_1ECCA5B30, &qword_1ECCA5B28, &qword_1DD0F3BA8);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD9134C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DCD91454;

  return v10(a1, a4);
}

uint64_t sub_1DCD91454()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DCD9154C(uint64_t a1)
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

uint64_t sub_1DCD915E8(__int128 *a1)
{
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 88));
  sub_1DCAFF9E8(a1, v1 + *(*v1 + 96));
  return v1;
}

uint64_t sub_1DCD91684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v6 = *(*v3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v17 - v9 + 72;
  v12 = *(v11 + 96);
  swift_beginAccess();
  v13 = type metadata accessor for WrappingFlow.State();
  (*(*(v13 - 8) + 16))(&v18, v4 + v12, v13);
  if (v19)
  {
    sub_1DCAFF9E8(&v18, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1DD0DCF8C();
  }

  (*(v7 + 16))(v10, v4 + *(*v4 + 88), v6);
  a3[3] = type metadata accessor for Conclude();
  a3[4] = &protocol witness table for Conclude<A>;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  type metadata accessor for WrappingFlow();
  swift_getWitnessTable();
  ActingFlow.conclude(with:)(v10, boxed_opaque_existential_1Tm);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DCD9192C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = *(v3 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for WrappingFlow.State();
  (*(*(v6 - 8) + 40))(&a2[v4], v8, v6);
  return swift_endAccess();
}

uint64_t sub_1DCD919EC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88), *(*v0 + 80));
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for WrappingFlow.State();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DCD91AC0()
{
  v0 = *sub_1DCD919EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD91B2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DCD91B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DCD91C1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DCB193FC;

  return sub_1DCD9134C(a1, v4, v5, v6);
}

void sub_1DCD91CD0(uint64_t a1)
{
  *(v1 + 72) = 1;
  *(v1 + 56) = type metadata accessor for Inform();
  *(v1 + 64) = &protocol witness table for Inform;
  *(v1 + 32) = a1;
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD91EF0(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = a1;
  v7 = a2 & 1;
  a4(&v6);
  result = swift_beginAccess();
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1DCD91F74()
{
  sub_1DCD937B4([v0 _intentInstanceDescription]);
  v1 = MEMORY[0x1E69E7CC0];

  v18 = sub_1DCD70310(v2);
  sub_1DCD92CC8(&v18);

  v3 = v18;
  v4 = sub_1DCB08B14(v18);
  if (v4)
  {
    v5 = v4;
    v18 = v1;
    sub_1DD0DED0C();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v8 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E12A72C0](v6, v3);
        }

        else
        {
          if (v6 >= *(v3 + 16))
          {
            goto LABEL_15;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = sub_1DCF4B96C(v9);
        if (!v12)
        {
          goto LABEL_17;
        }

        v13 = v11;
        v14 = v12;
        v15 = [v10 resolveSelector];

        type metadata accessor for SiriKitParameterMetadata();
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)(v13, v14, v15 != 0, v7);
        sub_1DD0DECDC();
        v16 = *(v18 + 16);
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
        ++v6;
        if (v8 == v5)
        {

          return v18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DCD92184()
{
  result = sub_1DCD921A8();
  byte_1EDE489F8 = result & 1;
  return result;
}

uint64_t sub_1DCD921A8()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = sub_1DCB1A7C0(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [objc_opt_self() sharedPreferences];
    if (v5)
    {
      v6 = v5;
      sub_1DCF4B534(v3, v4, v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Unable to determine current Siri locale. Exceptions may be thrown when trying to convert intents to JSON if this process lacks proper entitlements.", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }
  }

  return 1;
}

Swift::String __swiftcall INIntent.jsonRepresentation()()
{
  v64 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v61[0] = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v61 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v61 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v61 - v15;
  v17 = sub_1DD0DE01C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE489F0 != -1)
  {
    OUTLINED_FUNCTION_1_66();
  }

  v20 = objc_opt_self();
  v21 = [v0 _JSONDictionaryRepresentation];
  v22 = MEMORY[0x1E69E6158];
  sub_1DD0DDE6C();

  v23 = sub_1DD0DDE4C();

  v62 = 0;
  v24 = [v20 dataWithJSONObject:v23 options:0 error:&v62];

  v25 = v62;
  if (!v24)
  {
    v36 = v25;
    v37 = sub_1DD0DAE0C();

    swift_willThrow();
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1DD0E07C0;
    v62 = 0;
    v63 = 0xE000000000000000;
    v61[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    v39 = v62;
    v40 = v63;
    *(v38 + 56) = v22;
    *(v38 + 64) = sub_1DCB34060();
    *(v38 + 32) = v39;
    *(v38 + 40) = v40;
    sub_1DD0DD7EC();

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v41 = sub_1DD0DD8FC();
    v42 = __swift_project_value_buffer(v41, qword_1EDE57E00);
    v43 = *(v41 - 8);
    (*(v43 + 16))(v9, v42, v41);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v41);
    v44 = v61[0];
    sub_1DCBCF6C8(v9, v61[0]);
    if (__swift_getEnumTagSinglePayload(v44, 1, v41) == 1)
    {
      sub_1DCB16D50(v61[0], &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v48 = sub_1DD0DD8EC();
      v49 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v50 = 136315650;
        v51 = sub_1DD0DEC3C();
        v53 = sub_1DCB10E9C(v51, v52, &v62);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2048;
        *(v50 + 14) = 119;
        *(v50 + 22) = 2080;
        *(v50 + 24) = sub_1DCB10E9C(0xD000000000000033, 0x80000001DD11CD80, &v62);
        _os_log_impl(&dword_1DCAFC000, v48, v49, "FatalError at %s:%lu - %s", v50, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v43 + 8))(v61[0], v41);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000033, 0x80000001DD11CD80);
  }

  v26 = sub_1DD0DAF2C();
  v28 = v27;

  sub_1DD0DE00C();
  v29 = sub_1DD0DDFDC();
  if (!v30)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v45 = sub_1DD0DD8FC();
    v46 = __swift_project_value_buffer(v45, qword_1EDE57E00);
    v47 = *(v45 - 8);
    (*(v47 + 16))(v16, v46, v45);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v45);
    sub_1DCBCF6C8(v16, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v45) == 1)
    {
      sub_1DCB16D50(v13, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v56 = 136315650;
        v57 = sub_1DD0DEC3C();
        v59 = sub_1DCB10E9C(v57, v58, &v62);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2048;
        *(v56 + 14) = 123;
        *(v56 + 22) = 2080;
        *(v56 + 24) = sub_1DCB10E9C(0xD000000000000027, 0x80000001DD11CE40, &v62);
        _os_log_impl(&dword_1DCAFC000, v54, v55, "FatalError at %s:%lu - %s", v56, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v47 + 8))(v13, v45);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000027, 0x80000001DD11CE40);
  }

  v31 = v29;
  v32 = v30;
  sub_1DCB21A14(v26, v28);
  v33 = *MEMORY[0x1E69E9840];
  v34 = v31;
  v35 = v32;
  result._object = v35;
  result._countAndFlagsBits = v34;
  return result;
}

uint64_t INIntent.safeJSONDictionaryRepresentation.getter()
{
  if (qword_1EDE489F0 != -1)
  {
    OUTLINED_FUNCTION_1_66();
  }

  v1 = [v0 _JSONDictionaryRepresentation];
  v2 = sub_1DD0DDE6C();

  return v2;
}

uint64_t INIntentResolutionResult.safeJSONDictionaryRepresentation(for:parameterName:)(uint64_t a1)
{
  if (qword_1EDE489F0 != -1)
  {
    OUTLINED_FUNCTION_1_66();
  }

  v3 = sub_1DD0DDF8C();
  v4 = [v1 _JSONDictionaryRepresentationForIntent_parameterName_];

  v5 = sub_1DD0DDE6C();
  return v5;
}

uint64_t sub_1DCD92C5C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1DCB10E5C(0, &unk_1EDE46150, 0x1E696E8B0);
      result = sub_1DD0DE38C();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DCD92CC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DCC224E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DCD92D44(v6);
  return sub_1DD0DECEC();
}

void sub_1DCD92D44(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD0DF02C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DCD92C5C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DCD92F14(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DCD92E24(0, v3, 1, a1);
  }
}

void sub_1DCD92E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v17 = v7;
      v18 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = [v10 tag];
        v13 = [v11 tag];

        if (v12 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v14 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v14;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v18 + 8;
      v7 = v17 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DCD92F14(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_96:
      v91 = (v8 + 16);
      v92 = *(v8 + 16);
      while (v92 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_132;
        }

        v93 = v8;
        v94 = (v8 + 16 * v92);
        v95 = *v94;
        v96 = &v91[2 * v92];
        v8 = *(v96 + 1);
        sub_1DCD93584((*a3 + 8 * *v94), (*a3 + 8 * *v96), (*a3 + 8 * v8), v112);
        if (v5)
        {
          break;
        }

        if (v8 < v95)
        {
          goto LABEL_120;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_121;
        }

        *v94 = v95;
        v94[1] = v8;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_122;
        }

        v92 = *v91 - 1;
        sub_1DCC223A4(v96 + 16, v97, v96);
        *v91 = v92;
        v8 = v93;
      }

LABEL_104:

      return;
    }

LABEL_129:
    v8 = sub_1DCC22390(v8);
    goto LABEL_96;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v100 = v8;
      v102 = v5;
      v11 = (*a3 + 8 * v7);
      v98 = 8 * v7;
      v13 = *v11;
      v12 = v11 + 2;
      v8 = *(*a3 + 8 * v10);
      v5 = v13;
      v108 = [v8 tag];
      v107 = [v5 tag];

      v104 = v9;
      v14 = v9 + 2;
      while (1)
      {
        v15 = v14;
        v16 = v10 + 1;
        if (v16 >= v6)
        {
          break;
        }

        LODWORD(v112) = v108 < v107;
        v17 = *(v12 - 1);
        v8 = *v12;
        v5 = v17;
        v18 = v16;
        v19 = [v8 tag];
        v20 = [v5 tag];

        v21 = v19 < v20;
        v10 = v18;
        v22 = !v21;
        v23 = v112 ^ v22;
        ++v12;
        v14 = v15 + 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v6;
LABEL_12:
      if (v108 >= v107)
      {
        v8 = v100;
        v5 = v102;
        v9 = v104;
      }

      else
      {
        v9 = v104;
        if (v10 < v104)
        {
          goto LABEL_126;
        }

        if (v104 >= v10)
        {
          v8 = v100;
          v5 = v102;
        }

        else
        {
          if (v6 >= v15)
          {
            v24 = v15;
          }

          else
          {
            v24 = v6;
          }

          v25 = 8 * v24 - 8;
          v26 = v10;
          v27 = v104;
          v8 = v100;
          v5 = v102;
          v28 = v98;
          do
          {
            if (v27 != --v26)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v30 = *(v29 + v28);
              *(v29 + v28) = *(v29 + v25);
              *(v29 + v25) = v30;
            }

            ++v27;
            v25 -= 8;
            v28 += 8;
          }

          while (v27 < v26);
        }
      }
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_125;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v10 < v9)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v8 + 16);
      sub_1DCE18BB0();
      v8 = v89;
    }

    v46 = *(v8 + 16);
    v47 = v46 + 1;
    if (v46 >= *(v8 + 24) >> 1)
    {
      sub_1DCE18BB0();
      v8 = v90;
    }

    *(v8 + 16) = v47;
    v48 = v8 + 32;
    v49 = (v8 + 32 + 16 * v46);
    *v49 = v9;
    v49[1] = v10;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v112 = v10;
    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = (v48 + 16 * (v47 - 1));
        v52 = (v8 + 16 * v47);
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 32);
          v54 = *(v8 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_62:
          if (v56)
          {
            goto LABEL_111;
          }

          v68 = *v52;
          v67 = v52[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_114;
          }

          v72 = v51[1];
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_119;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v47 < 2)
        {
          goto LABEL_113;
        }

        v75 = *v52;
        v74 = v52[1];
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_77:
        if (v71)
        {
          goto LABEL_116;
        }

        v77 = *v51;
        v76 = v51[1];
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v78 < v70)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v50 - 1 >= v47)
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

        if (!*a3)
        {
          goto LABEL_131;
        }

        v82 = v8;
        v83 = (v48 + 16 * (v50 - 1));
        v84 = *v83;
        v85 = v50;
        v8 = v48 + 16 * v50;
        v86 = *(v8 + 8);
        sub_1DCD93584((*a3 + 8 * *v83), (*a3 + 8 * *v8), (*a3 + 8 * v86), v110);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v86 < v84)
        {
          goto LABEL_106;
        }

        v5 = *(v82 + 16);
        if (v85 > v5)
        {
          goto LABEL_107;
        }

        *v83 = v84;
        v83[1] = v86;
        if (v85 >= v5)
        {
          goto LABEL_108;
        }

        v87 = v85;
        v47 = (v5 - 1);
        sub_1DCC223A4((v8 + 16), &v5[-v87 - 1], v8);
        v8 = v82;
        *(v82 + 16) = v5 - 1;
        v21 = v5 > 2;
        v5 = 0;
        if (!v21)
        {
          goto LABEL_91;
        }
      }

      v57 = v48 + 16 * v47;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_109;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_110;
      }

      v64 = v52[1];
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_112;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_115;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = v51[1];
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_123;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v6 = a3[1];
    v7 = v112;
    if (v112 >= v6)
    {
      goto LABEL_94;
    }
  }

  v32 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_127;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v9)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v10 == v32)
  {
    goto LABEL_42;
  }

  v101 = v8;
  v103 = v5;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v105 = v9;
  v35 = v9 - v10;
  v109 = v32;
LABEL_35:
  v112 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    v42 = [v40 tag];
    v43 = [v41 tag];

    if (v42 >= v43)
    {
LABEL_40:
      v10 = (v112 + 1);
      v34 += 8;
      --v35;
      if (v112 + 1 == v109)
      {
        v10 = v109;
        v8 = v101;
        v5 = v103;
        v9 = v105;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_40;
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
}

uint64_t sub_1DCD93584(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1DCD3F5B4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 tag];
      v17 = [v15 tag];

      if (v16 >= v17)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_1DCD3F5B4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v33 = v7;
  v34 = v4;
LABEL_15:
  v21 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v21;
    v24 = *v21;
    v25 = *(v10 - 1);
    v26 = v24;
    v27 = [v25 tag];
    v28 = [v26 tag];

    v29 = v5 + 1;
    if (v27 < v28)
    {
      v20 = v29 == v6;
      v6 = v23;
      v7 = v33;
      v4 = v34;
      if (!v20)
      {
        *v5 = *v23;
        v6 = v23;
      }

      goto LABEL_15;
    }

    if (v10 != v29)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v7 = v33;
    v4 = v34;
    v21 = v23;
  }

LABEL_28:
  v30 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, 8 * v30);
  }

  return 1;
}

uint64_t sub_1DCD937B4(void *a1)
{
  v2 = [a1 slotDescriptions];

  if (!v2)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &unk_1EDE46150, 0x1E696E8B0);
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t getEnumTagSinglePayload for TaskFlowType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TaskFlowType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DCD9387C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCD93898(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

double sub_1DCD938C8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1DCD9396C(a1, a2, a3);
  v6 = sub_1DD0DDF8C();

  v7 = [a1 valueForKeyPath_];

  if (v7)
  {
    sub_1DD0DEA6C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1DCD9396C(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = sub_1DCD944A8(a1, a2, a3);
  v7 = [v6 facadePropertyName];
  if (v7)
  {
    v8 = v7;
    v4 = sub_1DD0DDFBC();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);

    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1DCB10E9C(v4, a3, &v21);
      *(v13 + 12) = 2080;
      v15 = [v10 typeName];
      v16 = sub_1DD0DDFBC();
      v18 = v17;

      v19 = sub_1DCB10E9C(v16, v18, &v21);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "Cannot get a key for parameter: %s on intent type: %s. Will use parameterName instead. This may result in a crash.", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }
  }

  return v4;
}

uint64_t sub_1DCD93B8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v82 - v19;
  v21 = OUTLINED_FUNCTION_1_67();
  sub_1DCD938C8(v21, v22, v23, v24);
  if (*(a4 + 24) | v88)
  {
    v82 = v17;
    v30 = OUTLINED_FUNCTION_1_67();
    v33 = sub_1DCD9396C(v30, v31, v32);
    v83 = v34;
    v35 = OUTLINED_FUNCTION_1_67();
    v38 = sub_1DCD944A8(v35, v36, v37);
    v39 = v38;
    if ((a6 & 1) != 0 || [v38 valueStyle] != 3)
    {
      sub_1DCB28B08(a4, v86, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_1_67();
      sub_1DCD948F4(v40, v41, v42, a4, a5, v43);
    }

    v44 = v33;
    if ([v39 isEnum])
    {
      sub_1DCB28B08(v86, v84, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v45 = v85;
      sub_1DCB16D50(v84, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (v45)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v62 = sub_1DD0DD8FC();
        v63 = __swift_project_value_buffer(v62, qword_1EDE57E00);

        v64 = a1;
        v65 = sub_1DD0DD8EC();
        v66 = sub_1DD0DE6DC();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v84[0] = swift_slowAlloc();
          *v67 = 136315394;
          v68 = sub_1DCB10E9C(v33, v83, v84);

          *(v67 + 4) = v68;
          *(v67 + 12) = 2080;
          v69 = [v64 typeName];
          v70 = sub_1DD0DDFBC();
          v72 = v71;

          v73 = sub_1DCB10E9C(v70, v72, v84);

          *(v67 + 14) = v73;
          _os_log_impl(&dword_1DCAFC000, v65, v66, "\nCannot generically set enumerated values due to incompatibilities between Swift and Objective-C.\nIf you are seeing this message please implement the code to apply values for parameter '%s' on intent type '%s' in your domain code.\nYou can use the typed setters on the intent to set enum types rather than using 'setValue'.", v67, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        else
        {
        }

        v74 = *(v62 - 8);
        (*(v74 + 16))(v20, v63, v62);
        __swift_storeEnumTagSinglePayload(v20, 0, 1, v62);
        v75 = v82;
        sub_1DCB28B08(v20, v82, &unk_1ECCA7470, &qword_1DD0E16E0);
        if (__swift_getEnumTagSinglePayload(v75, 1, v62) == 1)
        {
          sub_1DCB16D50(v82, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v76 = sub_1DD0DD8EC();
          v77 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v84[0] = swift_slowAlloc();
            *v78 = 136315650;
            v79 = sub_1DD0DEC3C();
            v81 = sub_1DCB10E9C(v79, v80, v84);

            *(v78 + 4) = v81;
            *(v78 + 12) = 2048;
            *(v78 + 14) = 67;
            *(v78 + 22) = 2080;
            *(v78 + 24) = sub_1DCB10E9C(0xD000000000000044, 0x80000001DD11CE90, v84);
            _os_log_impl(&dword_1DCAFC000, v76, v77, "FatalError at %s:%lu - %s", v78, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          (*(v74 + 8))(v82, v62);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000044, 0x80000001DD11CE90);
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v46 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v46, qword_1EDE57E00);
      v47 = v83;

      v48 = sub_1DD0DD8EC();
      v49 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v84[0] = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_1DCB10E9C(v44, v47, v84);
        _os_log_impl(&dword_1DCAFC000, v48, v49, "Setting enum value for '%s' to rawValue=0. If this is not your default value then implement the code to remove values in your domain code.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v52 = sub_1DD0DE5BC();
      v53 = sub_1DD0DDF8C();

      [a1 setValue:v52 forKey:v53];

      v39 = v53;
    }

    else
    {
      sub_1DCB28B08(v86, v84, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      v54 = v85;
      if (v85)
      {
        v55 = __swift_project_boxed_opaque_existential_1(v84, v85);
        v56 = *(v54 - 8);
        v57 = *(v56 + 64);
        MEMORY[0x1EEE9AC00](v55, v55);
        v59 = &v82 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v56 + 16))(v59);
        v60 = sub_1DD0DF09C();
        (*(v56 + 8))(v59, v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
      }

      else
      {
        v60 = 0;
      }

      v52 = sub_1DD0DDF8C();

      [a1 setValue:v60 forKey:v52];
      swift_unknownObjectRelease();
    }

    sub_1DCB16D50(v86, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v25, qword_1EDE57E00);

    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v86[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DCB10E9C(a2, a3, v86);
      _os_log_impl(&dword_1DCAFC000, v26, v27, "Parameter '%s' value is already nil. Nothing to do", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  return sub_1DCB16D50(v87, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

id sub_1DCD944A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v37 - v13;
  v15 = [a1 _intentInstanceDescription];
  v16 = sub_1DD0DDF8C();
  v17 = [v15 slotByName_];

  if (!v17)
  {
    v19 = v14;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000032, 0x80000001DD11CF40);
    MEMORY[0x1E12A6780](a2, a3);
    MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11CF80);
    v20 = [a1 typeName];
    v21 = sub_1DD0DDFBC();
    v23 = v22;

    MEMORY[0x1E12A6780](v21, v23);

    v24 = v39;
    v25 = v40;
    v26 = qword_1EDE4F900;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD0DD8FC();
    v28 = __swift_project_value_buffer(v27, qword_1EDE57E00);
    v29 = *(v27 - 8);
    (*(v29 + 16))(v19, v28, v27);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v27);
    sub_1DCB28B08(v19, v11, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
    {
      sub_1DCB16D50(v11, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {

      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v32 = 136315650;
        v33 = sub_1DD0DEC3C();
        v35 = sub_1DCB10E9C(v33, v34, &v38);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2048;
        *(v32 + 14) = 115;
        *(v32 + 22) = 2080;
        *(v32 + 24) = sub_1DCB10E9C(v24, v25, &v38);
        _os_log_impl(&dword_1DCAFC000, v30, v31, "FatalError at %s:%lu - %s", v32, 0x20u);
        v36 = v37;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v36, -1, -1);
        MEMORY[0x1E12A8390](v32, -1, -1);
      }

      (*(v29 + 8))(v11, v27);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v24, v25);
  }

  return v17;
}

void sub_1DCD948F4(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_1DCD938C8(a1, a2, a3, v24);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
    if (swift_dynamicCast())
    {
      v9 = v22;
      if (*(v22 + 16) > a5)
      {
        goto LABEL_4;
      }

LABEL_11:
      sub_1DCB28B08(a4, &v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v23)
      {
        sub_1DCB16D50(&v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        goto LABEL_22;
      }

      sub_1DCB20B30(&v22, v24);
      sub_1DCB0DF6C(v24, &v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v9 + 16);
        sub_1DCB1C394();
        v9 = v18;
      }

      v13 = *(v9 + 16);
      if (v13 >= *(v9 + 24) >> 1)
      {
        sub_1DCB1C394();
        v9 = v19;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      *(v9 + 16) = v13 + 1;
      v11 = &v22;
      v12 = (v9 + 32 * v13 + 32);
LABEL_17:
      sub_1DCB20B30(v11, v12);
LABEL_22:
      a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
      *a6 = v9;
      return;
    }
  }

  else
  {
    sub_1DCB16D50(v24, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((a5 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1DCB28B08(a4, &v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (!v23)
  {
    sub_1DCB16D50(&v22, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  sub_1DCB20B30(&v22, v24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1DCF3444C(v9);
    v9 = v20;
    if ((a5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      if (*(v9 + 16) > a5)
      {
        v10 = v9 + 32 * a5;
        __swift_destroy_boxed_opaque_existential_1Tm((v10 + 32));
        v11 = v24;
        v12 = (v10 + 32);
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1DCF3444C(v9);
  v9 = v21;
LABEL_20:
  v14 = *(v9 + 16);
  if (v14 > a5)
  {
    v15 = v14 - 1;
    v16 = v9 + 32 * a5;
    __swift_destroy_boxed_opaque_existential_1Tm((v16 + 32));
    sub_1DCB5DF38((v16 + 64), v15 - a5, (v16 + 32));
    *(v9 + 16) = v15;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_1DCD94B88(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  memset(v5, 0, sizeof(v5));
  sub_1DCD93B8C(a1, a2, a3, v5, a4, 0);
  return sub_1DCB16D50(v5, &dword_1ECCA3CE0, &unk_1DD0E4F80);
}

uint64_t sub_1DCD94BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B60, &qword_1DD0F3C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0F3C10;
  v1 = MEMORY[0x1E69E6370];
  *(inited + 32) = 1;
  *(inited + 40) = v1;
  v2 = MEMORY[0x1E6969080];
  *(inited + 48) = 2;
  *(inited + 56) = v2;
  v3 = MEMORY[0x1E69E63B0];
  *(inited + 64) = 3;
  *(inited + 72) = v3;
  v4 = MEMORY[0x1E69E6448];
  *(inited + 80) = 4;
  *(inited + 88) = v4;
  v5 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 5;
  *(inited + 104) = v5;
  v6 = MEMORY[0x1E69E7360];
  *(inited + 112) = 6;
  *(inited + 120) = v6;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 128) = 7;
  *(inited + 136) = v7;
  v8 = MEMORY[0x1E69E7668];
  *(inited + 144) = 8;
  *(inited + 152) = v8;
  v9 = MEMORY[0x1E69E76D8];
  *(inited + 160) = 9;
  *(inited + 168) = v9;
  *(inited + 176) = 21;
  *(inited + 184) = v3;
  *(inited + 192) = 22;
  *(inited + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B68, &qword_1DD0F3C28);
  *(inited + 208) = 24;
  *(inited + 216) = MEMORY[0x1E69E6530];
  *(inited + 224) = 25;
  *(inited + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B70, &qword_1DD0F3C30);
  *(inited + 240) = 30;
  *(inited + 248) = v7;
  *(inited + 256) = 31;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
  type metadata accessor for INIntentSlotValueType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
  sub_1DCD94D7C();
  result = sub_1DD0DDE9C();
  qword_1ECCA5B58 = result;
  return result;
}

unint64_t sub_1DCD94D7C()
{
  result = qword_1ECCA5B78;
  if (!qword_1ECCA5B78)
  {
    type metadata accessor for INIntentSlotValueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA5B78);
  }

  return result;
}

unint64_t INPerson.debugDescriptionLite.getter()
{
  v1 = v0;
  v2 = sub_1DD0DD85C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD0DD88C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDE57E18;
  v21 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v20, v21))
  {
    return 0xD00000000000001BLL;
  }

  v32 = v5;
  v33 = v2;
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_1EDE57DD0);
  (*(v14 + 16))(v19, v22, v11);
  sub_1DD0DD84C();
  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = sub_1DD0DD87C();
  v25 = sub_1DD0DE7FC();
  v26 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v24, v25, v26, "INIntent.debugDescriptionLite", "", v23, 2u);
  sub_1DCD950C4(v1, &v34);
  v27 = sub_1DD0DE7EC();
  v28 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v24, v27, v28, "INIntent.debugDescriptionLite", "", v23, 2u);

  v29 = v34;
  MEMORY[0x1E12A8390](v23, -1, -1);
  (*(v32 + 8))(v10, v33);
  (*(v14 + 8))(v19, v11);
  return v29;
}

uint64_t sub_1DCD950C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 displayName];
  v5 = sub_1DD0DDFBC();
  v7 = v6;

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v5, v7, 0x4E79616C70736964, 0xEB00000000656D61);
  v8 = [a1 personHandle];
  if (v8)
  {
    v9 = v8;
    v10 = INPersonHandle.debugDescriptionLite.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0x3E6C696E3CLL;
    v12 = 0xE500000000000000;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v10, v12, 0x61486E6F73726570, 0xEC000000656C646ELL);
  v13 = sub_1DCB35468(a1, &selRef_contactIdentifier);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x3E6C696E3CLL;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v15, v16, 0xD000000000000011, 0x80000001DD11CFC0);
  v17 = sub_1DCB35468(a1, &selRef_customIdentifier);
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0x3E6C696E3CLL;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v19, v20, 0xD000000000000010, 0x80000001DD11CFE0);
  swift_getObjectType();
  sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](40, 0xE100000000000000);
  v21 = sub_1DD0DDE7C();
  v23 = v22;

  MEMORY[0x1E12A6780](v21, v23);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  sub_1DCB1C4D8();
  v24 = sub_1DD0DEA3C();
  v26 = v25;

  *a2 = v24;
  a2[1] = v26;
  return result;
}

unint64_t INPersonHandle.debugDescriptionLite.getter()
{
  v1 = v0;
  v2 = sub_1DD0DD85C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD0DD88C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDE57E18;
  v21 = sub_1DD0DE6DC();
  if (!os_log_type_enabled(v20, v21))
  {
    return 0xD00000000000001BLL;
  }

  v32 = v5;
  v33 = v2;
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_1EDE57DD0);
  (*(v14 + 16))(v19, v22, v11);
  sub_1DD0DD84C();
  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = sub_1DD0DD87C();
  v25 = sub_1DD0DE7FC();
  v26 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v24, v25, v26, "INIntent.debugDescriptionLite", "", v23, 2u);
  sub_1DCD956CC(v1, &v34);
  v27 = sub_1DD0DE7EC();
  v28 = sub_1DD0DD83C();
  _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v24, v27, v28, "INIntent.debugDescriptionLite", "", v23, 2u);

  v29 = v34;
  MEMORY[0x1E12A8390](v23, -1, -1);
  (*(v32 + 8))(v10, v33);
  (*(v14 + 8))(v19, v11);
  return v29;
}

uint64_t sub_1DCD956CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 label];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B80, &qword_1DD0F3C80);
  v5 = sub_1DD0DE02C();
  v7 = v6;
  v8 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC5FCB4(v5, v7, 0x6C6562616CLL, 0xE500000000000000);
  v9 = sub_1DCB5DE54(a1);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC5FCB4(v11, v12, 0x65756C6176, 0xE500000000000000);
  }

  else
  {
    v13 = sub_1DCB21038(0x65756C6176, 0xE500000000000000);
    if (v14)
    {
      v15 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = v8[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2810, &qword_1DD0F4B30);
      sub_1DD0DEDCC();
      v17 = *(v8[6] + 16 * v15 + 8);

      v18 = *(v8[7] + 16 * v15 + 8);
      sub_1DD0DEDEC();
    }
  }

  swift_getObjectType();
  v24 = sub_1DD0DF2AC();
  v25 = v19;
  MEMORY[0x1E12A6780](40, 0xE100000000000000);
  v20 = sub_1DD0DDE7C();
  v22 = v21;

  MEMORY[0x1E12A6780](v20, v22);

  result = MEMORY[0x1E12A6780](41, 0xE100000000000000);
  *a2 = v24;
  a2[1] = v25;
  return result;
}

void static Acceptance.no()(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  OUTLINED_FUNCTION_0_58(a1);
}

void static Acceptance.yes()(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  OUTLINED_FUNCTION_0_58(a1);
}

void sub_1DCD95A08(uint64_t a1@<X1>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = a2;
  swift_getAssociatedTypeWitness();
  *(a3 + 24) = type metadata accessor for LifeCycleModifierFlow();
  *(a3 + 32) = swift_getWitnessTable();
  ActingFlow.attach(option:)(&v5, a1);
}

uint64_t *destroy for AcceptanceType(uint64_t *a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 <= 1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for AcceptanceType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1);
    *(a1 + 40) = 1;
  }

  else if (v3)
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for AcceptanceType(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 <= 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *(a2 + 3);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 4);
      (**(v7 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v8 = *a2;
      v9 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v8;
      *(a1 + 16) = v9;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for AcceptanceType(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 <= 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      if (v5)
      {
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
      }
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AcceptanceType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AcceptanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t *destroy for Acceptance(uint64_t *a1)
{
  if (*(a1 + 40) <= 1u)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a1;
}

uint64_t initializeWithCopy for Acceptance(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 1;
  }

  else if (*(a2 + 40))
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(a1 + 24) = v3;
    (**(v3 - 8))(a1);
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for Acceptance(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    sub_1DCD96000(a1);
    if (*(a2 + 40) == 1)
    {
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 4);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else if (*(a2 + 40))
    {
      v6 = *a2;
      v7 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v6;
      *(a1 + 16) = v7;
    }

    else
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for Acceptance(uint64_t a1, _OWORD *a2)
{
  if (a1 != a2)
  {
    sub_1DCD96000(a1);
    v4 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Acceptance(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for Acceptance(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DCD96188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for InputBinding();
  return InputBinding.wrappedValue.setter(v6, v8);
}

uint64_t InputBinding.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v9);
  (*(v5 + 16))(v8, a1, v4);
  (*(v10 + 32))(v8, v9, v10);
  return (*(v5 + 8))(a1, v4);
}

void (*InputBinding.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v5[5] = __swift_coroFrameAllocStub(v8);
  InputBinding.wrappedValue.getter();
  return sub_1DCD96444;
}

void sub_1DCD96444(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    InputBinding.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    InputBinding.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DCD96540()
{
  OUTLINED_FUNCTION_16_30();
  result = (*(v2 + 48))(v1, v2);
  *v0 = result;
  return result;
}

uint64_t InputBinding.entity<A>(_:)(uint64_t a1)
{
  return sub_1DCD967D4(a1);
}

{
  return sub_1DCD968AC(a1);
}

{
  return sub_1DCD967D4(a1);
}

{
  return sub_1DCD968AC(a1);
}

uint64_t sub_1DCD967D4(uint64_t a1)
{
  OUTLINED_FUNCTION_9_40(a1);
  v6 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v2);
  v5[3] = type metadata accessor for ProjectedStorage();
  v5[4] = OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_126();
  *v5 = swift_allocObject();
  v7 = *(*(v6 + 16) + 16);

  v16 = OUTLINED_FUNCTION_12_37(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  return v1(v16);
}

uint64_t sub_1DCD968AC(uint64_t a1)
{
  OUTLINED_FUNCTION_9_40(a1);
  v6 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v2);
  v5[3] = type metadata accessor for ProjectedStorage();
  v5[4] = OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_126();
  *v5 = swift_allocObject();
  v7 = *(v6 + 16);

  v16 = OUTLINED_FUNCTION_12_37(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  return v1(v16);
}

uint64_t InputBinding.entities<A>(_:)(uint64_t a1)
{
  return sub_1DCD968AC(a1);
}

{
  return sub_1DCD967D4(a1);
}

{
  return sub_1DCD968AC(a1);
}

{
  return sub_1DCD967D4(a1);
}

void InputBinding.subscript.getter()
{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_5_53();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0(v0);
}

{
  OUTLINED_FUNCTION_4_62();
  sub_1DCD970D0(v0);
}

void sub_1DCD970D0(uint64_t *a1)
{
  v2 = *a1;
  sub_1DCB17CA0(v1, v3);
  sub_1DD0DCF8C();
}

void InputBinding.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DCD972B4(a1, a2, a3);
}

{
  sub_1DCD972B4(a1, a2, a3);
}

{
  sub_1DCD972B4(a1, a2, a3);
}

{
  sub_1DCD972B4(a1, a2, a3);
}

{
  sub_1DCD972B4(a1, a2, a3);
}

{
  sub_1DCD972B4(a1, a2, a3);
}

void sub_1DCD972B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_1DCB17CA0(v3, v9);
  v7 = *(a2 + 16);
  v8 = *(v6 + *MEMORY[0x1E69E6CE8] + 8);
  a3[3] = type metadata accessor for ProjectedStorage();
  a3[4] = OUTLINED_FUNCTION_0_59();
  OUTLINED_FUNCTION_126();
  *a3 = swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD974F4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_1DCD9C614();
}

void sub_1DCD97500()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9C720();
}

void sub_1DCD9750C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9C5C4();
}

void sub_1DCD97518()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9C5EC();
}

uint64_t sub_1DCD97524()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_1DCD9D194();
}

void sub_1DCD97530()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9D2B4();
}

void sub_1DCD9753C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9CF84();
}

void sub_1DCD97548()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9D084();
}

uint64_t sub_1DCD97554@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1DCD975B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9D3F8();
}

uint64_t sub_1DCD975BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD975EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_1DCD9D420();
}

uint64_t sub_1DCD975F8()
{
  v1 = v0[7];
  v2 = v0[8];
  return sub_1DCD9D448(v0 + 2);
}

uint64_t sub_1DCD97604()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_1DCD9D538();
}

void sub_1DCD97610()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1DCD9DC58();
}

uint64_t sub_1DCD9761C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_1DCD9DD64();
}

uint64_t sub_1DCD97628(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = OUTLINED_FUNCTION_0_59();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCD97668()
{
  v1 = v0[7];
  v2 = v0[8];
  return sub_1DCD9DE48(v0 + 2);
}

uint64_t objectdestroy_8Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_4_0();

  return swift_deallocObject();
}

uint64_t sub_1DCD976B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_1DCD9DF38();
}

uint64_t sub_1DCD976DC(uint64_t a1)
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

void sub_1DCD9778C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9ECAC;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD9782C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9EC1C;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD978CC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9EB50;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD9796C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  *(v0 + 40) = sub_1DCD9EAE4;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_126();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v9);
  OUTLINED_FUNCTION_27_20(v10);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97A0C()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9EA08;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED7C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9EA48;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED80;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97AFC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E960;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED7C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E9A0;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED80;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97BEC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E8AC;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED7C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E910;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED80;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97CDC()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_5_54(v1, v2);
  v3 = OUTLINED_FUNCTION_22_21();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_126();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v5);
  OUTLINED_FUNCTION_28_18(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E81C;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9E85C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_22_21();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_126();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_20_19(v10);
  OUTLINED_FUNCTION_27_20(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E864;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9E8A4;
  v0[8] = v12;

  OUTLINED_FUNCTION_43_17();
}

void sub_1DCD97DCC()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E764;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD97E70()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E6FC;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD97F14()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  v2 = *v1;
  sub_1DCB17D04(v3, v4);
  v5 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v5, v6);
  OUTLINED_FUNCTION_7_3();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v7);
  OUTLINED_FUNCTION_91_3(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_10_40(v9, *MEMORY[0x1E69E6CE8]);
  v11 = OUTLINED_FUNCTION_81_4(v10);
  v0[5] = sub_1DCD9ED68;
  v0[6] = v11;
  v12 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v12, v13);
  OUTLINED_FUNCTION_7_3();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v14);
  OUTLINED_FUNCTION_26_19(v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_79_7(v16);
  v17[6] = sub_1DCD9E6B4;
  v17[7] = v14;
  v0[7] = sub_1DCD9ED84;
  v0[8] = v17;
  sub_1DD0DCF8C();
}

void sub_1DCD98048()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  v2 = *v1;
  sub_1DCB17D04(v3, v4);
  v5 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v5, v6);
  OUTLINED_FUNCTION_7_3();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v7);
  OUTLINED_FUNCTION_91_3(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_10_40(v9, *MEMORY[0x1E69E6CE8]);
  v11 = OUTLINED_FUNCTION_81_4(v10);
  v0[5] = sub_1DCD9ED68;
  v0[6] = v11;
  v12 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v12, v13);
  OUTLINED_FUNCTION_7_3();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v14);
  OUTLINED_FUNCTION_26_19(v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_79_7(v16);
  v17[6] = sub_1DCD9E64C;
  v17[7] = v14;
  v0[7] = sub_1DCD9ED84;
  v0[8] = v17;
  sub_1DD0DCF8C();
}

void sub_1DCD9817C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E58C;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED78;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E608;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED6C;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9826C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E538;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9E548;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E54C;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9E55C;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9835C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E518;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD976D4;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E528;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD976D8;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9844C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E4F8;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD975BC;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E508;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCCC34BC;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9853C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E468;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9ED70;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E4B0;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9ED74;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9862C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_11_41(v1, v2);
  v3 = OUTLINED_FUNCTION_29_18();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v5);
  OUTLINED_FUNCTION_49_12(v6);
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DCD9E43C;
  *(v7 + 24) = v5;
  v0[5] = sub_1DCD9E44C;
  v0[6] = v7;
  v8 = OUTLINED_FUNCTION_29_18();
  sub_1DCAFF9E8(v8, v9);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_30_22(v10);
  OUTLINED_FUNCTION_48_13(v11);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DCD9E450;
  *(v12 + 24) = v10;
  v0[7] = sub_1DCD9E464;
  v0[8] = v12;
  sub_1DD0DCF8C();
}

void sub_1DCD9871C()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E3C0;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD987C0()
{
  OUTLINED_FUNCTION_71_6();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_47_13(v1, v2);
  v3 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v3, v4);
  OUTLINED_FUNCTION_7_3();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v5);
  OUTLINED_FUNCTION_90_4(v6);
  *(v0 + 40) = sub_1DCD9E358;
  *(v0 + 48) = v5;
  v7 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v7, v8);
  OUTLINED_FUNCTION_7_3();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v9);
  OUTLINED_FUNCTION_26_19(v10);
  OUTLINED_FUNCTION_87_5();
}

void sub_1DCD98864()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  v2 = *v1;
  sub_1DCB17D04(v3, v4);
  v5 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v5, v6);
  OUTLINED_FUNCTION_7_3();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v7);
  OUTLINED_FUNCTION_91_3(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_10_40(v9, *MEMORY[0x1E69E6CE8]);
  v11 = OUTLINED_FUNCTION_81_4(v10);
  v0[5] = sub_1DCD9ED68;
  v0[6] = v11;
  v12 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v12, v13);
  OUTLINED_FUNCTION_7_3();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v14);
  OUTLINED_FUNCTION_26_19(v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_79_7(v16);
  v17[6] = sub_1DCD9E310;
  v17[7] = v14;
  v0[7] = sub_1DCD9ED84;
  v0[8] = v17;
  sub_1DD0DCF8C();
}

void sub_1DCD98998()
{
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_67_9();
  v2 = *v1;
  sub_1DCB17D04(v3, v4);
  v5 = OUTLINED_FUNCTION_21_22();
  sub_1DCB17D04(v5, v6);
  OUTLINED_FUNCTION_7_3();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v7);
  OUTLINED_FUNCTION_91_3(v8);
  OUTLINED_FUNCTION_41_4();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_10_40(v9, *MEMORY[0x1E69E6CE8]);
  v11 = OUTLINED_FUNCTION_81_4(v10);
  v0[5] = sub_1DCD9E24C;
  v0[6] = v11;
  v12 = OUTLINED_FUNCTION_21_22();
  sub_1DCAFF9E8(v12, v13);
  OUTLINED_FUNCTION_7_3();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_19_26(v14);
  OUTLINED_FUNCTION_26_19(v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_79_7(v16);
  v17[6] = sub_1DCD9E27C;
  v17[7] = v14;
  v0[7] = sub_1DCD9E2B0;
  v0[8] = v17;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD98ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v16 - v7;
  v10 = *(v9 + 112);
  v11 = *(v2 + v10);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v10) = v13;
    v14 = *(v2 + *(*v2 + 104));
    v15 = *(*v2 + 88);
    swift_beginAccess();
    (*(v4 + 16))(v8, v2 + v15, v3);
    sub_1DD0DDB3C();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_1DCD98C30@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_112(*(v6 + 80));
  return (*(v7 + 16))(a1, &v1[v5]);
}

uint64_t sub_1DCD98CC4(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_112(v7);
  v9 = v8;
  (*(v8 + 24))(&v1[v5], a1, v7);
  v10 = swift_endAccess();
  sub_1DCD98ACC(v10, v11);
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*sub_1DCD98DA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v2 = *(*v1 + 88);
  swift_beginAccess();
  return sub_1DCD98E10;
}

uint64_t sub_1DCD98E10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 24);
    return sub_1DCD98ACC(result, v5);
  }

  return result;
}

void sub_1DCD98E44(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  sub_1DCD98E84(a1, v5);
}

void sub_1DCD98E84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v13 - v8;
  *(v3 + *(v10 + 112)) = 0;
  v11 = *(v6 + 16);
  v11((v3 + *(*v3 + 88)), a1, v5);
  sub_1DD0DDB6C();
  v11(v9, a1, v5);
  v12 = sub_1DD0DDB7C();
  *(v3 + *(*v3 + 104)) = v12;
  v13[1] = v12;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD99068()
{
  v1 = *(*v0 + 88);
  OUTLINED_FUNCTION_112(*(*v0 + 80));
  (*(v2 + 8))(v0 + v3);
  v4 = *(v0 + *(*v0 + 96));

  v5 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1DCD9910C()
{
  sub_1DCD99068();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD9917C(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v2 = a1[6];

  v3 = a1[8];
}

void sub_1DCD991BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  sub_1DD0DCF8C();
}

void sub_1DCD99248(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[6];
  v5 = a1[6];
  a1[5] = a2[5];
  a1[6] = v4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD992AC(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  v6 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t sub_1DCD99308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DCD99348(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void (*sub_1DCD993F8(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1DCD98DA0(v3);
  return sub_1DCBFD490;
}

uint64_t sub_1DCD99478(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v5();
  OUTLINED_FUNCTION_112(*(a2 + 24));
  v8 = *(v7 + 8);

  return v8(a1);
}

void sub_1DCD994E8()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v16 = *(v2 + 16);
  sub_1DD0DDAEC();
  v4 = *(v3 + 24);
  swift_getWitnessTable();
  v5 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_179();
  v13 = v0[3];
  v12 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v13);
  v18 = (*(v12 + 48))(v13, v12);
  OUTLINED_FUNCTION_112(v3);
  (*(v14 + 16))(v17, v0, v3);
  v15 = swift_allocObject();
  v15[2] = v16;
  v15[3] = v4;
  memcpy(v15 + 4, v17, 0x48uLL);
  sub_1DD0DDC3C();

  swift_getWitnessTable();
  sub_1DD0DDBFC();
  (*(v7 + 8))(v1, v5);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD996F8(void *a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = sub_1DD0DC6BC();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  v13 = 0;
  if (!__swift_getEnumTagSinglePayload(v10, 1, v4))
  {
    v13 = sub_1DD0DC63C();
  }

  (*(v6 + 8))(v10, v5);
  return v13;
}

uint64_t sub_1DCD99888(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v53 = a5;
  v54 = a2;
  v50 = a1;
  v51 = a4;
  v6 = (*a4 + *MEMORY[0x1E69E6CE8]);
  v7 = *v6;
  v8 = sub_1DD0DB9FC();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v45 = &v44 - v11;
  v48 = v7;
  v12 = sub_1DD0DC6BC();
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v55 = &v44 - v18;
  v19 = sub_1DD0DE97C();
  v20 = v6[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(*(TupleTypeMetadata2 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v23);
  v26 = &v44 - v25;
  v27 = *(v19 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v24, v29);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v44 - v34;
  v36 = a3[3];
  v37 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v36);
  (*(v37 + 24))(v36, v37);
  (*(v27 + 32))(v26, v35, v19);
  result = __swift_getEnumTagSinglePayload(v26, 1, v12);
  if (result != 1)
  {
    v42 = v52;
    v43 = v55;
    (*(v52 + 32))(v55, v26, v12);
    (*(v42 + 16))(v49, v43, v12);

    sub_1DD0DCF8C();
  }

  v49 = v32;
  if (v54)
  {
    v39 = *(v53 + 8);
    v40 = v45;
    sub_1DD0DBB3C();
    v41 = v47;
    sub_1DD0DB9DC();
    (*(v46 + 8))(v40, v41);
    sub_1DD0DC5FC();

    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD99DC0(void *a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = sub_1DD0DC6BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1DD0DC63C();
  (*(v5 + 8))(v9, v4);
  return v12;
}

void sub_1DCD99F1C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a3[3];
  v5 = a3[4];
  v6 = *a4;
  __swift_project_boxed_opaque_existential_1(a3, v4);
  v7 = *(v5 + 40);

  v7(&v9, v4, v5);
  v8 = *(v6 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DC6BC();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD9A030(void *a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = sub_1DD0DC6BC();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4))
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = sub_1DD0DC67C();
  }

  (*(v6 + 8))(v10, v5);
  return v13;
}

uint64_t sub_1DCD9A1BC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v51 = a1;
  v52 = a4;
  v50 = a3;
  v5 = *(*a3 + *MEMORY[0x1E69E6CE8]);
  v6 = sub_1DD0DB9FC();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v44 = &v44 - v9;
  v47 = v5;
  v10 = sub_1DD0DC6BC();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v53 = &v44 - v16;
  v17 = sub_1DD0DE97C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(*(TupleTypeMetadata2 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v20);
  v23 = &v44 - v22;
  v24 = *(v17 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v21, v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v44 - v31;
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v35 = v33;
  v36 = v51;
  (*(v34 + 24))(v35, v34);
  v37 = *(v36 + 16);
  (*(v24 + 32))(v23, v32, v17);
  result = __swift_getEnumTagSinglePayload(v23, 1, v10);
  if (result != 1)
  {
    v42 = v49;
    v43 = v53;
    (*(v49 + 32))(v53, v23, v10);
    (*(v42 + 16))(v48, v43, v10);

    sub_1DD0DCF8C();
  }

  v48 = v29;
  if (v37)
  {
    v39 = *(v52 + 8);
    v40 = v44;
    sub_1DD0DBB3C();
    v41 = v46;
    sub_1DD0DB9DC();
    (*(v45 + 8))(v40, v41);
    sub_1DD0DC5FC();

    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD9A6EC(void *a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = sub_1DD0DC6BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1DD0DC67C();
  (*(v5 + 8))(v9, v4);
  return v12;
}

void sub_1DCD9A840(uint64_t a1, void *a2, uint64_t *a3)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = *a3;
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v6 = *(v4 + 40);

  v6(&v8, v3, v4);
  v7 = *(v5 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DC6BC();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD9A94C(void *a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = sub_1DD0DC6BC();
  v5 = sub_1DD0DE97C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4))
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1DD0DC69C();
  }

  (*(v6 + 8))(v10, v5);
  return v13;
}

uint64_t sub_1DCD9AAE0(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v52 = a2;
  v51 = a1;
  v6 = (*a4 + *MEMORY[0x1E69E6CE8]);
  v7 = *v6;
  v8 = sub_1DD0DB9FC();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v45 = &v44 - v11;
  v48 = v7;
  v12 = sub_1DD0DC6BC();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v55 = &v44 - v18;
  v19 = sub_1DD0DE97C();
  v20 = v6[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = *(*(TupleTypeMetadata2 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8, v23);
  v26 = &v44 - v25;
  v27 = *(v19 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v24, v29);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v44 - v34;
  v36 = a3[3];
  v37 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v36);
  (*(v37 + 24))(v36, v37);
  (*(v27 + 32))(v26, v35, v19);
  result = __swift_getEnumTagSinglePayload(v26, 1, v12);
  if (result != 1)
  {
    v42 = v50;
    v43 = v55;
    (*(v50 + 32))(v55, v26, v12);
    (*(v42 + 16))(v49, v43, v12);
    sub_1DD0DCF8C();
  }

  v49 = v32;
  if ((v52 & 1) == 0)
  {
    v39 = *(v54 + 8);
    v40 = v45;
    sub_1DD0DBB3C();
    v41 = v47;
    sub_1DD0DB9DC();
    (*(v46 + 8))(v40, v41);
    sub_1DD0DC5FC();
    sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCD9B008(void *a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E6CE8]);
  v4 = sub_1DD0DC6BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 24))(v10, v11);
  v12 = sub_1DD0DC69C();
  (*(v5 + 8))(v9, v4);
  return v12;
}

void sub_1DCD9B164(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = a3[3];
  v5 = a3[4];
  v6 = *a4;
  __swift_project_boxed_opaque_existential_1(a3, v4);
  (*(v5 + 40))(&v8, v4, v5);
  v7 = *(v6 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DC6BC();
  sub_1DD0DCF8C();
}

void sub_1DCD9B270()
{
  OUTLINED_FUNCTION_50();
  v27 = v0;
  v28 = v1;
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *v3;
  v9 = v8(255, *(*v3 + *MEMORY[0x1E69E6CE8]));
  v10 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v19 = v6[3];
  v20 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v19);
  (*(v20 + 24))(v19, v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v9))
  {
    (*(v12 + 8))(v18, v10);
    OUTLINED_FUNCTION_82_2(v7 + *MEMORY[0x1E69E6CE8]);
    sub_1DD0DC6BC();
    v21 = OUTLINED_FUNCTION_37_19();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }

  else
  {
    v28(v4, v9, v26, v27);
    (*(v12 + 8))(v18, v10);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9B42C()
{
  OUTLINED_FUNCTION_50();
  v97 = v1;
  v89 = v2;
  v4 = v3;
  v95 = v5;
  v101 = v6;
  v102 = v7;
  v9 = v8;
  v11 = *v10;
  v94 = v10;
  v12 = (v11 + *MEMORY[0x1E69E6CE8]);
  v13 = *(v12[1] + 16);
  sub_1DD0DC6BC();
  OUTLINED_FUNCTION_76_1();
  v91 = v14;
  v99 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_0_1();
  v103 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_34_0();
  v93 = v20;
  v21 = *v12;
  v22 = sub_1DD0DB9FC();
  v23 = OUTLINED_FUNCTION_9(v22);
  v86 = v24;
  v87 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_34_0();
  v85 = v29;
  v30 = OUTLINED_FUNCTION_12();
  v88 = v21;
  v31 = v4(v30, v21);
  v32 = OUTLINED_FUNCTION_9(v31);
  v96 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32, v36);
  OUTLINED_FUNCTION_10_2();
  v90 = v37 - v38;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v39, v40);
  v100 = &v85 - v41;
  v42 = sub_1DD0DE97C();
  v43 = (OUTLINED_FUNCTION_88_2() - 8);
  v44 = *(*v43 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v45, v46);
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_0_1();
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51, v52);
  OUTLINED_FUNCTION_10_2();
  v55 = v53 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v85 - v58;
  v61 = v9[3];
  v60 = v9[4];
  v98 = v9;
  __swift_project_boxed_opaque_existential_1(v9, v61);
  v62 = OUTLINED_FUNCTION_80_3();
  v63(v62, v60);
  v64 = v0;
  v65 = v43[14];
  v66 = v0;
  v67 = v42;
  v68 = v101;
  v69 = v99;
  (*(v48 + 32))(v66, v59, v67);
  v70 = *(v103 + 16);
  v70(v65 + v64, v68, v69);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v31);
  v92 = v55;
  if (EnumTagSinglePayload != 1)
  {
    v89 = v65;
    v81 = v96;
    OUTLINED_FUNCTION_70_7();
    v82 = v100;
    v83(v100, v64, v31);
    v91 = v70;
    (*(v81 + 16))(v90, v82, v31);
    v84 = OUTLINED_FUNCTION_58_8();
    v91(v84);
    sub_1DD0DCF8C();
  }

  v72 = v102;
  if (__swift_getEnumTagSinglePayload(v65 + v64, 1, v91) != 1)
  {
    v73 = *(v72 + 8);
    v74 = v85;
    v91 = v64;
    v75 = v70;
    v76 = v88;
    sub_1DD0DBB3C();
    v77 = v87;
    v78 = sub_1DD0DB9DC();
    v80 = v79;
    (*(v86 + 8))(v74, v77);
    v89(v78, v80, v76);
    v75(v93, v101, v69);
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9BA3C()
{
  OUTLINED_FUNCTION_50();
  v17 = v5;
  OUTLINED_FUNCTION_24_21();
  v7 = v6;
  v9 = v8(0, *(*v6 + *MEMORY[0x1E69E6CE8]));
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_13_40();
  OUTLINED_FUNCTION_38_16();
  v16(v3, v4);
  v17(v7, v9, v1, v0);
  (*(v11 + 8))(v2, v9);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9BB6C()
{
  OUTLINED_FUNCTION_50();
  v22[2] = v0;
  v22[3] = v1;
  v3 = v2;
  v22[1] = v4;
  v6 = v5;
  v8 = v7;
  v10 = *v9;
  OUTLINED_FUNCTION_82_2(*v9 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DC6BC();
  OUTLINED_FUNCTION_76_1();
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v22 - v18;
  v20 = v6[3];
  v21 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v20);
  (*(v13 + 16))(v19, v8, v11);
  (*(v21 + 40))(&v23, v20, v21);
  v3(0, *(v10 + *MEMORY[0x1E69E6CE8]));
  sub_1DD0DCF8C();
}

void sub_1DCD9BD18()
{
  OUTLINED_FUNCTION_50();
  v25 = v0;
  v26 = v1;
  v24 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *v3;
  v8 = MEMORY[0x1E69E6CE8];
  v10 = v9(255, *(*v3 + *MEMORY[0x1E69E6CE8]));
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v23 - v18;
  v20 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v21 = OUTLINED_FUNCTION_80_3();
  v22(v21, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v10))
  {
    (*(v13 + 8))(v19, v11);
    OUTLINED_FUNCTION_82_2(v7 + *v8);
    sub_1DD0DC6BC();
    OUTLINED_FUNCTION_76_1();
    sub_1DD0DE37C();
  }

  else
  {
    v26(v4, v10, v24, v25);
    (*(v13 + 8))(v19, v11);
  }

  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9BEBC()
{
  OUTLINED_FUNCTION_50();
  v72 = v0;
  v73 = v1;
  v69 = v2;
  v4 = v3;
  v77 = v5;
  v78 = v6;
  v8 = v7;
  v75 = *v5;
  v76 = v9;
  v10 = *(v75 + *MEMORY[0x1E69E6CE8]);
  v11 = sub_1DD0DB9FC();
  v12 = OUTLINED_FUNCTION_9(v11);
  v66 = v13;
  v67 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_34_0();
  v65 = v18;
  v19 = OUTLINED_FUNCTION_12();
  v68 = v10;
  v20 = v4(v19, v10);
  v21 = OUTLINED_FUNCTION_9(v20);
  v74 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21, v25);
  OUTLINED_FUNCTION_10_2();
  v70 = v26 - v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v28, v29);
  v79 = &v65 - v30;
  v31 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_25_0();
  v32 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_20_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v65 - v37;
  OUTLINED_FUNCTION_0_1();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_10_2();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v65 - v50;
  v52 = v8[3];
  v53 = v8[4];
  v71 = v8;
  __swift_project_boxed_opaque_existential_1(v8, v52);
  OUTLINED_FUNCTION_38_16();
  v54 = v53;
  v55 = v76;
  v56(v52, v54);
  v80 = v55;
  OUTLINED_FUNCTION_82_2(v75 + *MEMORY[0x1E69E6CE8]);
  sub_1DD0DC6BC();
  OUTLINED_FUNCTION_76_1();
  sub_1DD0DE40C();
  swift_getWitnessTable();
  v57 = sub_1DD0DE65C();
  (*(v40 + 32))(v38, v51, v31);
  OUTLINED_FUNCTION_38_2(v38);
  if (!v58)
  {
    v62 = v74;
    OUTLINED_FUNCTION_70_7();
    v63 = v79;
    v64(v79, v38, v20);
    (*(v62 + 16))(v70, v63, v20);

    sub_1DD0DCF8C();
  }

  v75 = v47;
  if ((v57 & 1) == 0)
  {
    v59 = *(v78 + 8);
    v60 = v65;
    sub_1DD0DBB3C();
    v61 = v67;
    sub_1DD0DB9DC();
    (*(v66 + 8))(v60, v61);
    OUTLINED_FUNCTION_26_18();
    v69();

    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9C3B4()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_24_21();
  v5 = v4;
  v7 = v6(0, *(*v4 + *MEMORY[0x1E69E6CE8]));
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_15_3();
  v14 = OUTLINED_FUNCTION_9_41();
  v15(v14);
  v3(v5, v7, v1, v0);
  v16 = *(v9 + 8);
  v17 = OUTLINED_FUNCTION_49_3();
  v18(v17);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9C614()
{
  OUTLINED_FUNCTION_15_40();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_179();
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v8 = OUTLINED_FUNCTION_51_13();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  if (OUTLINED_FUNCTION_86_6(v10))
  {
    sub_1DCB185D0(v1, &qword_1ECCA5B88, &qword_1DD0F3EC0);
    v11 = OUTLINED_FUNCTION_37_19();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_19();
    MEMORY[0x1E12A4D20](v15);
    return sub_1DCB185D0(v1, &qword_1ECCA5B88, &qword_1DD0F3EC0);
  }
}

void sub_1DCD9C748()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_15_40();
  v4 = v3(0, v2);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_15_3();
  v11 = OUTLINED_FUNCTION_9_41();
  v12(v11);
  v13 = OUTLINED_FUNCTION_19();
  v1(v13);
  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_49_3();
  v16(v15);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9C824()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_24_21();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_13_40();
  v9 = OUTLINED_FUNCTION_35_22();
  sub_1DCD9EA74(v9, v10);
  v11 = *(v1 + 40);

  v12 = v11(&v17, v0, v1);
  v13 = OUTLINED_FUNCTION_25_0();
  v3(v13);
  v14 = OUTLINED_FUNCTION_59_13();
  v15(v14);
  v16 = OUTLINED_FUNCTION_54_12();
  v12(v16);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9C90C()
{
  OUTLINED_FUNCTION_50();
  v23 = v3;
  v5 = v4;
  v7 = v6;
  v10 = v9(255, v8);
  v11 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_13_40();
  OUTLINED_FUNCTION_38_16();
  v18(v1, v2);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10))
  {
    (*(v13 + 8))(v0, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
    v19 = OUTLINED_FUNCTION_37_19();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  else
  {
    v23(v7, v5, v10);
    (*(v13 + 8))(v0, v11);
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCD9CA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v130 = v21;
  v23 = v22;
  v128 = v24;
  v26 = v25;
  v133 = v28;
  v134 = v27;
  v30 = v29;
  v138 = v31;
  v135 = a21;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_112(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_34_0();
  v137 = v37;
  OUTLINED_FUNCTION_12();
  v38 = sub_1DD0DB9FC();
  v39 = OUTLINED_FUNCTION_9(v38);
  v126 = v40;
  v127 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_34_0();
  v125 = v45;
  v46 = OUTLINED_FUNCTION_12();
  v129 = v26;
  v47 = v23(v46, v26);
  v48 = OUTLINED_FUNCTION_9(v47);
  v136 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48, v52);
  OUTLINED_FUNCTION_10_2();
  v131 = v53 - v54;
  OUTLINED_FUNCTION_29_0();
  v57 = MEMORY[0x1EEE9AC00](v55, v56);
  v65 = OUTLINED_FUNCTION_57_7(v57, v58, v59, v60, v61, v62, v63, v64, v124);
  v66 = (OUTLINED_FUNCTION_88_2() - 8);
  v67 = *(*v66 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v124 - v70;
  OUTLINED_FUNCTION_0_1();
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_10_2();
  v80 = v78 - v79;
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v124 - v83;
  v85 = v30[3];
  v86 = v30[4];
  v132 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v85);
  (*(v86 + 24))(v85, v86);
  v87 = v138;
  v88 = v66[14];
  v89 = v84;
  v90 = v71;
  (*(v73 + 32))(v71, v89, v65);
  sub_1DCD9EA74(v87, v88 + v71);
  OUTLINED_FUNCTION_38_2(v71);
  if (!v91)
  {
    v112 = v136;
    OUTLINED_FUNCTION_70_7();
    v113 = v139;
    v114(v139, v90, v47);
    v115 = *(v112 + 16);
    v130 = v88;
    v116 = v131;
    v115(v131, v113, v47);
    sub_1DCD9EA74(v87, v137);

    OUTLINED_FUNCTION_53_11();
    v117();
    v118 = v132[3];
    v119 = v132[4];
    OUTLINED_FUNCTION_57_1(v132, v118);
    v120 = OUTLINED_FUNCTION_49_3();
    (v115)(v120);
    OUTLINED_FUNCTION_8_43(v80);
    v121(v80, v118, v119);
    v122 = *(v112 + 8);
    v123 = v116;
    v88 = v130;
    v122(v123, v47);
    v122(v139, v47);
LABEL_5:
    sub_1DCB185D0(v88 + v90, &qword_1ECCA5B88, &qword_1DD0F3EC0);
    goto LABEL_6;
  }

  v131 = v80;
  v92 = v137;
  v93 = v139;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  if (__swift_getEnumTagSinglePayload(v88 + v71, 1, v94) != 1)
  {
    v95 = *(v128 + 8);
    v96 = v125;
    v97 = v129;
    sub_1DD0DBB3C();
    v98 = v127;
    v99 = sub_1DD0DB9DC();
    v101 = v100;
    (*(v126 + 8))(v96, v98);
    v102 = v97;
    v90 = v71;
    v130(v99, v101, v102);
    sub_1DCD9EA74(v138, v92);

    OUTLINED_FUNCTION_53_11();
    v103();
    v104 = v132[3];
    v105 = v132[4];
    OUTLINED_FUNCTION_57_1(v132, v104);
    v106 = v136;
    v107 = v131;
    (*(v136 + 16))(v131, v93, v47);
    OUTLINED_FUNCTION_8_43(v107);
    v108(v107, v104, v105);
    v109 = *(v106 + 8);
    v110 = OUTLINED_FUNCTION_58_8();
    v111(v110);
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9CFAC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_15_40();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_15_3();
  v11 = OUTLINED_FUNCTION_9_41();
  v12(v11);
  v13 = OUTLINED_FUNCTION_19();
  v1(v13);
  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_49_3();
  v16(v15);
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9D0AC()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_24_21();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_13_40();
  v11 = OUTLINED_FUNCTION_35_22();
  sub_1DCD9EA74(v11, v12);
  v13 = *(v1 + 40);

  v14 = v13(&v18, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v15 = OUTLINED_FUNCTION_59_13();
  v16(v15);
  v17 = OUTLINED_FUNCTION_54_12();
  v14(v17);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9D194()
{
  OUTLINED_FUNCTION_15_40();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5D98, &qword_1DD0F3EB0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_179();
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v8 = OUTLINED_FUNCTION_51_13();
  v9(v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28A8, &unk_1DD0FE400);
  if (OUTLINED_FUNCTION_86_6(v10))
  {
    sub_1DCB185D0(v1, &qword_1ECCA5D98, &qword_1DD0F3EB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
    v11 = OUTLINED_FUNCTION_37_19();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_19();
    MEMORY[0x1E12A4110](v16);
    return sub_1DCB185D0(v1, &qword_1ECCA5D98, &qword_1DD0F3EB0);
  }
}

void sub_1DCD9D2DC()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_24_21();
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_40_3();
  v18 = *(v10 + 24);
  v19 = *(v10 + 32);
  v20 = OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_57_1(v20, v21);
  v22 = (*(v19 + 40))(&v27, v18, v19);
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  if (!__swift_getEnumTagSinglePayload(v24, 1, v25))
  {
    sub_1DCD9EA74(v12, v2);

    v4(v2, v1, v0, v25);
  }

  v26 = OUTLINED_FUNCTION_54_12();
  v22(v26);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD9D448(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B88, &qword_1DD0F3EC0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = OUTLINED_FUNCTION_50_8();
  v11(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5DA0, &qword_1DD0F3EB8);
  if (OUTLINED_FUNCTION_85_5(v12))
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_75_6();
    v13 = sub_1DD0DC60C();
  }

  sub_1DCB185D0(v8, &qword_1ECCA5B88, &qword_1DD0F3EC0);
  return v13;
}

void sub_1DCD9D560()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  OUTLINED_FUNCTION_15_40();
  v5 = v4(0, v3);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_40_3();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = OUTLINED_FUNCTION_68_2();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v14 = *(v11 + 24);
  v15 = OUTLINED_FUNCTION_35_22();
  v16(v15);
  v17 = OUTLINED_FUNCTION_19();
  v2(v17);
  v18 = OUTLINED_FUNCTION_72_7();
  v19(v18);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9D70C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = v8(255, v7);
  OUTLINED_FUNCTION_25_0();
  v10 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_9(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_15_3();
  v17 = OUTLINED_FUNCTION_9_41();
  v18(v17);
  if (!__swift_getEnumTagSinglePayload(v0, 1, v9))
  {
    v2(v6, v4, v9);
  }

  (*(v12 + 8))(v0, v10);
  OUTLINED_FUNCTION_33_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCD9D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_50();
  v122 = v22;
  v24 = v23;
  v119 = v25;
  v27 = v26;
  v127 = v28;
  v128 = v29;
  v31 = v30;
  v124 = v32;
  v125 = a21;
  v120 = sub_1DD0DB9FC();
  OUTLINED_FUNCTION_9(v120);
  v118 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_34_0();
  v117 = v38;
  v39 = OUTLINED_FUNCTION_12();
  v121 = v27;
  v40 = v24(v39, v27);
  v41 = OUTLINED_FUNCTION_9(v40);
  v126 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41, v45);
  OUTLINED_FUNCTION_10_2();
  v123 = v46 - v47;
  OUTLINED_FUNCTION_29_0();
  v50 = MEMORY[0x1EEE9AC00](v48, v49);
  v58 = OUTLINED_FUNCTION_57_7(v50, v51, v52, v53, v54, v55, v56, v57, v116);
  OUTLINED_FUNCTION_25_0();
  v59 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_20_0(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v62, v63);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0_1();
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68, v69);
  OUTLINED_FUNCTION_10_2();
  v72 = v70 - v71;
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = &v116 - v75;
  v77 = *(v31 + 24);
  v78 = *(v31 + 32);
  v79 = OUTLINED_FUNCTION_19();
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v81 = v77;
  v82 = v127;
  (*(v78 + 24))(v81, v78);
  v83 = *(v82 + 16);
  (*(v65 + 32))(v21, v76, v58);
  OUTLINED_FUNCTION_38_2(v21);
  if (v84)
  {
    v123 = v72;
    v86 = v128;
    v85 = v129;
    if (v83)
    {
      v87 = *(v119 + 8);
      v88 = v117;
      v89 = v121;
      sub_1DD0DBB3C();
      v90 = v120;
      v91 = sub_1DD0DB9DC();
      v93 = v92;
      (*(v118 + 8))(v88, v90);
      v122(v91, v93, v89);

      v125(v94, v124, v86, v40);
      v95 = *(v31 + 24);
      v96 = *(v31 + 32);
      v97 = OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_57_1(v97, v98);
      v99 = v126;
      v100 = v123;
      (*(v126 + 16))(v123, v85, v40);
      OUTLINED_FUNCTION_8_43(v100);
      OUTLINED_FUNCTION_26_18();
      v101();
      (*(v99 + 8))(v85, v40);
    }
  }

  else
  {
    v102 = v126;
    OUTLINED_FUNCTION_70_7();
    v103 = v129;
    v104 = OUTLINED_FUNCTION_68_2();
    v105(v104);
    v106 = *(v102 + 16);
    v107 = v123;
    v106(v123, v103, v40);

    OUTLINED_FUNCTION_53_11();
    v108();
    v109 = *(v31 + 24);
    v110 = *(v31 + 32);
    v111 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_57_1(v111, v112);
    v106(v72, v107, v40);
    OUTLINED_FUNCTION_8_43(v72);
    OUTLINED_FUNCTION_26_18();
    v113();
    v114 = *(v102 + 8);
    v115 = OUTLINED_FUNCTION_58_8();
    v114(v115);
    (v114)(v129, v40);
  }

  OUTLINED_FUNCTION_49();
}