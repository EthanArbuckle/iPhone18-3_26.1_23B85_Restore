void sub_1DCEC5BC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[0] = a5;
  v10 = *a1;
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContinueInAppDialogFlowStrategyAsyncAdapter();
  (*(v11 + 16))(v14, a7, a8);
  v15 = sub_1DCCC937C(v14);
  swift_getWitnessTable();
  type metadata accessor for SiriKitContinueInAppHandoffWithDialogFlow();
  v16[28] = v15;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEC5F08()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithHandoffDialogProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, a2);
  v3 = *(v2 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v14 = OUTLINED_FUNCTION_0_93(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  v15(v14);
  OUTLINED_FUNCTION_10_62();
  v16 = OUTLINED_FUNCTION_39_24();
  v17 = OUTLINED_FUNCTION_3_97(v16);
  v18(v17);
  return OUTLINED_FUNCTION_11_56();
}

void sub_1DCEC6018()
{
  OUTLINED_FUNCTION_45_17();
  v1 = *(v0 + 80);
  sub_1DCEC540C();
}

void sub_1DCEC6060(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = a6;
  v20[2] = a5;
  v20[0] = *a1;
  v10 = type metadata accessor for Input(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriKitServerAssistedAppResolutionFlow();
  (*(v14 + 16))(v18, a7, a8);
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE57DF8;
  v20[16] = type metadata accessor for RefreshableSiriKitEventSending();
  v20[17] = &off_1F5873940;
  v20[13] = v19;
  sub_1DD0DCF8C();
}

void sub_1DCEC6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 32);
  OUTLINED_FUNCTION_58_15(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16));
  sub_1DCEC6060(v10, v11, v12, v13, v14, v15, v7 + ((*(v9 + 80) + 40) & ~*(v9 + 80)), v16);
}

uint64_t sub_1DCEC6420()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

void sub_1DCEC65C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 40);
  OUTLINED_FUNCTION_58_15(a1, a2, a3, a4, a5, a6, a7, *(v7 + 16));
  sub_1DCEC6550(v10, v11, v12, v13, v14, v15, v7 + ((*(v9 + 80) + 48) & ~*(v9 + 80)), v16);
}

void static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B, C, D>(appResolutionStrategy:authenticationStrategy:)()
{
  OUTLINED_FUNCTION_50();
  v33 = v0;
  v34 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_0_1();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_1();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v24);
  (*(v12 + 16))(v17, v10, v6);
  v25 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v26 = (v21 + *(v12 + 80) + v25) & ~*(v12 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v8;
  *(v27 + 3) = v6;
  v28 = v32;
  v29 = v33;
  *(v27 + 4) = v4;
  *(v27 + 5) = v28;
  v30 = v34;
  *(v27 + 6) = v29;
  *(v27 + 7) = v30;
  (*(v19 + 32))(&v27[v25], v24, v8);
  (*(v12 + 32))(&v27[v26], v17, v6);
  OUTLINED_FUNCTION_41_22();
  OUTLINED_FUNCTION_49();
}

void sub_1DCEC6A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*(v4[2] - 8) + 80) + 64) & ~*(*(v4[2] - 8) + 80);
  v6 = v4[7];
  sub_1DCEC69A8(a1, a2, a3, a4, v4 + v5, v4 + ((v5 + *(*(v4[2] - 8) + 64) + *(*(v4[3] - 8) + 80)) & ~*(*(v4[3] - 8) + 80)), v4[2], v4[3], v4[6]);
}

void sub_1DCEC6C00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RequestTCCAcceptanceFlowStrategyToAsyncAdapter();
  (*(v10 + 16))(v13, a6, a7);
  v14 = sub_1DCF22094(v13);
  swift_getWitnessTable();
  type metadata accessor for ServerHandledTCCFlow();
  v15[15] = v14;
  sub_1DD0DCF8C();
}

void sub_1DCEC6FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ServerHandledTCCFlow();
  (*(v7 + 16))(v10, a4, a5);
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDE57DF8;
  v12[14] = type metadata accessor for RefreshableSiriKitEventSending();
  v12[15] = &off_1F5873940;
  v12[11] = v11;
  sub_1DD0DCF8C();
}

void sub_1DCEC7294(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(a7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClientHandledRequestTCCAcceptanceFlowStrategyToAsyncAdapter();
  (*(v10 + 16))(v13, a6, a7);
  v14 = sub_1DCF220AC(v13);
  swift_getWitnessTable();
  type metadata accessor for ClientHandledTCCFlow();
  v15[20] = v14;
  sub_1DD0DCF8C();
}

void sub_1DCEC7630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClientHandledTCCFlow();
  (*(v7 + 16))(v10, a4, a5);
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(nlContextUpdateProvider:)()
{
  OUTLINED_FUNCTION_52_24();
  OUTLINED_FUNCTION_63_15();
  sub_1DD0DCF8C();
}

{
  OUTLINED_FUNCTION_52_24();
  OUTLINED_FUNCTION_63_15();
  sub_1DD0DCF8C();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_79_12();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_42_2();
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAdapter();
  v5 = OUTLINED_FUNCTION_44_21();
  v6(v5);
  sub_1DCF17554(v0);
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_61_18();
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)(v7, v8, v9, v10);
  OUTLINED_FUNCTION_67_17();
  return OUTLINED_FUNCTION_15_53();
}

uint64_t (*static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_79_12();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_42_2();
  type metadata accessor for NLContextOnlyToRequestTCCAcceptanceFlowStrategyAsyncAdapter();
  v5 = OUTLINED_FUNCTION_44_21();
  v6(v5);
  sub_1DCF22060(v0);
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_61_18();
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)(v7);
  OUTLINED_FUNCTION_67_17();
  return OUTLINED_FUNCTION_14_52();
}

_BYTE *storeEnumTagSinglePayload for RCHChildFlowFactoryHelper(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCEC7C8C()
{
  result = qword_1EDE460C0;
  if (!qword_1EDE460C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460C0);
  }

  return result;
}

id sub_1DCEC7CD0@<X0>(unint64_t *a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  if (v3)
  {
    if (v3 == 1)
    {
      *a1 = *(v1 + 56);
      a1[1] = 0;
      sub_1DD0DCF8C();
    }

    *a1 = v3 | 0x8000000000000000;
    a1[1] = v4 & 1;
  }

  else
  {
    sub_1DCC22514();
    v5 = swift_allocError();
    *v6 = xmmword_1DD0FF840;
    *(v6 + 16) = 0;
    *a1 = v5 | 0x8000000000000000;
    a1[1] = 0;
  }

  return sub_1DCC93338(v3);
}

void sub_1DCEC7D78()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCEC7EF4(void *a1, char a2)
{
  v3 = *(v2 + 80);
  *(v2 + 80) = a1;
  v4 = *(v2 + 88);
  *(v2 + 88) = a2;
  sub_1DCC93338(a1);
  sub_1DCC22568(v3);
  sub_1DCEC7D78();
}

uint64_t sub_1DCEC7F64(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEC7F84, 0, 0);
}

uint64_t sub_1DCEC7F84()
{
  v1 = *(v0 + 128);
  if (!*(v1 + 80))
  {
    v7 = *(v1 + 56);
    v8 = sub_1DD0DD1BC();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = *(v0 + 128);
      sub_1DCEC8430(v0 + 72);
      v14 = *(v12 + 64);
      v13 = *(v12 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
      OUTLINED_FUNCTION_136();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1DD0E07C0;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v16 = v14();

      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
        swift_initStackObject();
        sub_1DCC4A9D8();
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v27, v28, "[SiriKitFixedAppResolutionFlow] Flow is configured to bypass authorization guards");
        OUTLINED_FUNCTION_80();
      }

      v29 = *(v0 + 120);
      v30 = *(v0 + 128);

      sub_1DCEC7EF4(1, 0);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_80();
    }

    v22 = *(v0 + 120);
    v23 = *(v0 + 128);

    sub_1DCEC7EF4(1, 0);
  }

  v2 = *(v0 + 120);
  v3 = type metadata accessor for ExecuteResponse(0);
  v4 = *(v3 + 36);
  v5 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  *v2 = 1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = -4;
  v6 = (v2 + *(v3 + 40));
  *v6 = 0u;
  v6[1] = 0u;
  OUTLINED_FUNCTION_29();

  return v31();
}

uint64_t sub_1DCEC8430@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DCEC8974(v1 + 16, &v4);
  if (!v5)
  {
    sub_1DCEC89E4(&v4);
    type metadata accessor for EnvironmentSummoner();
    swift_initStaticObject();
    sub_1DCEC8A4C(&qword_1EDE48A98, type metadata accessor for EnvironmentSummoner);
    sub_1DD0DCB0C();
  }

  sub_1DCAFF9E8(&v4, &v6);
  return sub_1DCAFF9E8(&v6, a1);
}

void sub_1DCEC85E4(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    v4 = a1;
    v5 = 1;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  sub_1DCEC7EF4(v4, v5);
}

uint64_t sub_1DCEC8628(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCEC86C8;

  return sub_1DCEBDF48(a1);
}

uint64_t sub_1DCEC86C8()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCEC87C4(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DCEC887C;

  return sub_1DCEC8628(a1, (v2 + 16));
}

uint64_t sub_1DCEC887C()
{
  v1 = *(*v0 + 24);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCEC8974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2568, &unk_1DD0FE510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCEC89E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2568, &unk_1DD0FE510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCEC8A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCEC8A94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2568, &unk_1DD0FE510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCEC8B04()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_27_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_59(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCEC53B4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCEC8B94()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_14_0(v4);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBFE04();
}

uint64_t sub_1DCEC8C24()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_27_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_59(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCEC53B4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_193Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1DCEC8D0C()
{
  OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_27_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_59(v1);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCEC4DBC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCEC8D9C(uint64_t a1)
{
  v2 = (*(*(*(v1 + 16) - 8) + 80) + 32) & ~*(*(*(v1 + 16) - 8) + 80);
  v3 = (*(*(*(v1 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 24);
  return sub_1DCEC2C2C(a1, v1 + v2, *(v1 + v3), *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + 16));
}

uint64_t sub_1DCEC8E98()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_1DCEC8EC0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_38_24(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DCEC0850(v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_239Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1DCEC8FB0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_38_24(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DCEC02B4(v5, v6, v7, v8, v9);
}

void sub_1DCEC9110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v55 = v21;
  v24 = v23;
  v61 = v25;
  v62 = v26;
  v28 = v27;
  v58 = v29;
  v59 = v30;
  v63 = v31;
  v33 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v37 = v36;
  v39 = *(v38 + 64);
  v41 = MEMORY[0x1EEE9AC00](v35, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_51_25();
  LOBYTE(v28) = *v28;
  v43 = *(a21 + 152);
  v60 = v22;
  v57 = v24;
  v54[0] = a21;
  v43(v24, a21);
  v64 = v28;
  v44 = *(v37 + 16);
  v45 = v22;
  v46 = AssociatedTypeWitness;
  v56 = AssociatedTypeWitness;
  v44(v54 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v45, AssociatedTypeWitness);
  v47 = *(v37 + 80);
  v54[1] = v37;
  v48 = (v47 + 72) & ~v47;
  v49 = swift_allocObject();
  *(v49 + 2) = v24;
  *(v49 + 3) = a21;
  *(v49 + 4) = v55;
  *(v49 + 5) = v33;
  v50 = v59;
  v51 = v63;
  *(v49 + 6) = v58;
  *(v49 + 7) = v51;
  *(v49 + 8) = v50;
  (*(v37 + 32))(&v49[v48], v54 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  v52 = &v49[(v39 + v48 + 7) & 0xFFFFFFFFFFFFFFF8];
  v53 = v62;
  *v52 = v61;
  *(v52 + 1) = v53;
  v61 = *(v54[0] + 216);
  sub_1DD0DCF8C();
}

void sub_1DCEC9388()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_32_26();
  v17 = v3;
  v18 = v4;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_36_32();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
  v14 = sub_1DD0DE93C();
  sub_1DD0DE70C();
  sub_1DD0DD7EC();

  (*(v2 + 176))(v1, v2);
  v15 = swift_allocObject();
  v15[2] = v1;
  v15[3] = v2;
  v15[4] = v0;
  v15[5] = v6;
  v15[6] = v8;
  v15[7] = v17;
  v15[8] = v18;
  OUTLINED_FUNCTION_31_25();
  v16 = *(swift_getAssociatedConformanceWitness() + 200);
  sub_1DD0DCF8C();
}

void sub_1DCEC9578()
{
  OUTLINED_FUNCTION_50();
  v26 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v25 = v13;
  v15 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_179();
  v21 = OUTLINED_FUNCTION_56_19();
  v22(v21);
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v2;
  v23[4] = v8;
  v23[5] = v6;
  v23[6] = v15;
  v23[7] = v12;
  v23[8] = v10;
  v23[9] = v25;
  v23[10] = v26;
  v24 = *(swift_getAssociatedConformanceWitness() + 320);
  sub_1DD0DCF8C();
}

void sub_1DCEC9748()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_32_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_36_32();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_38_25();
  v15(v14);
  OUTLINED_FUNCTION_7_3();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_48_20(v16);
  v17[4] = v18;
  v17[5] = v2;
  v17[6] = v8;
  v17[7] = v6;
  v17[8] = v0;
  v17[9] = v4;
  OUTLINED_FUNCTION_31_25();
  v19 = *(swift_getAssociatedConformanceWitness() + 336);
  sub_1DD0DCF8C();
}

void sub_1DCEC98D0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_36_32();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_179();
  (*(v3 + 176))(v5, v3);
  OUTLINED_FUNCTION_7_3();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_48_20(v19);
  v20[4] = v21;
  v20[5] = v7;
  v20[6] = v1;
  v20[7] = v13;
  v20[8] = v9;
  v20[9] = v11;
  OUTLINED_FUNCTION_31_25();
  v22 = *(swift_getAssociatedConformanceWitness() + 344);
  sub_1DD0DCF8C();
}

void sub_1DCEC9A70()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_32_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_36_32();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_38_25();
  v15(v14);
  OUTLINED_FUNCTION_7_3();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_48_20(v16);
  v17[4] = v18;
  v17[5] = v2;
  v17[6] = v8;
  v17[7] = v6;
  v17[8] = v4;
  v17[9] = v0;
  OUTLINED_FUNCTION_31_25();
  v19 = *(swift_getAssociatedConformanceWitness() + 312);
  sub_1DD0DCF8C();
}

void sub_1DCEC9BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v41 = v27;
  v43 = v26;
  v44 = v28;
  v45 = v29;
  v40 = v30;
  v32 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  (*(a21 + 176))(v23, a21);
  v38 = swift_allocObject();
  v38[2] = v23;
  v38[3] = a21;
  v38[4] = v21;
  v38[5] = v41;
  v38[6] = v25;
  v38[7] = v32;
  v38[8] = v40;
  v38[9] = v44;
  v38[10] = v45;
  v38[11] = v43;
  v42 = *(swift_getAssociatedConformanceWitness() + 104);
  v39 = v43;
  sub_1DD0DCF8C();
}

void sub_1DCEC9DF0(uint64_t a1, void (*a2)(void *, uint64_t))
{
  if (*(a1 + 72))
  {
    a2(*a1, 1);
  }

  else
  {
    type metadata accessor for CommandFailure();
    swift_allocObject();
    v3 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002DLL, 0x80000001DD1213C0);
    sub_1DCED7108(qword_1EDE49B80, type metadata accessor for CommandFailure);
    v4 = swift_allocError();
    *v5 = v3;
    a2(v4, 1);
  }
}

void sub_1DCEC9F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a19 = v25;
  a20 = v26;
  v72 = v24;
  v65 = v27;
  v70 = v28;
  v69 = v29;
  v31 = v30;
  v71 = v32;
  v34 = v33;
  v73 = v33;
  v68 = v35;
  v64 = v36;
  v67 = a22;
  v66 = a21;
  v38 = a23;
  v37 = a24;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v40 = OUTLINED_FUNCTION_99(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40, v45);
  v47 = &v61 - v46;
  v62 = &v61 - v46;
  memcpy(v75, v31, sizeof(v75));
  v48 = *(v24 + 16);
  memcpy(v74, v31, sizeof(v74));
  v49 = (v75[7] - 3) < 0xFFFFFFFFFFFFFFFELL;
  v50 = v34;
  v51 = v38;
  v52 = (*(v37 + 320))(v50, v38, v37);
  v53 = (*(*v48 + 96))(v74, v49, v52 & 1);
  v63 = v53;
  sub_1DCB09910(v65, v47, &unk_1ECCA3270, &qword_1DD0E0F70);
  v54 = (*(v42 + 80) + 136) & ~*(v42 + 80);
  v55 = (v44 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v58[2] = v51;
  v58[3] = v37;
  v59 = v67;
  v58[4] = v66;
  v58[5] = v59;
  v58[6] = v72;
  OUTLINED_FUNCTION_58_2(v58 + 7);
  v58[16] = v53;
  sub_1DCBB6C68(v62, v58 + v54);
  *(v58 + v55) = v64;
  *(v58 + v56) = v68;
  *(v58 + v57) = v73;
  *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_86();
  v60 = *(swift_getAssociatedConformanceWitness() + 112);
  sub_1DD0DCF8C();
}

void sub_1DCECA284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = type metadata accessor for AceOutput();
  v32 = OUTLINED_FUNCTION_20_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  OUTLINED_FUNCTION_16();
  memcpy(v49, v27, sizeof(v49));
  sub_1DCB17D04(v23 + 64, &v48);
  v41 = *(*(v23 + 16) + 16);
  (*(a23 + 320))(v29, a22, a23);
  v42[0] = 6;
  v36 = (*(a23 + 304))(v42, v29, v25, a22, a23);
  v37 = v36;
  if (v36)
  {
    v38 = type metadata accessor for DefaultFlowActivity();
    OUTLINED_FUNCTION_21_38();
    v36 = sub_1DCED7108(v39, v40);
  }

  else
  {
    v38 = 0;
    v44 = 0;
    v45 = 0;
  }

  v43 = v37;
  v46 = v38;
  v47 = v36;
  OUTLINED_FUNCTION_58_2(v42);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
}

void sub_1DCECA5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = type metadata accessor for AceOutput();
  v34 = OUTLINED_FUNCTION_20_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34, v37);
  OUTLINED_FUNCTION_16();
  memcpy(v46, v25, sizeof(v46));
  v38 = *(*(v21 + 16) + 16);
  (*(a21 + 320))(v27, v23, a21);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v45 = 0;
  *&v43[72] = 0u;
  v44 = 0u;
  OUTLINED_FUNCTION_58_2(v43);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
}

void sub_1DCECA858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  LODWORD(v153) = v25;
  LODWORD(v159) = v26;
  v154 = v27;
  v152 = v28;
  v158 = v29;
  v160 = v30;
  v157 = v31;
  v162 = v32;
  v155 = a22;
  v156 = a21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v34 = OUTLINED_FUNCTION_20_0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34, v37);
  OUTLINED_FUNCTION_10_2();
  v146 = v38 - v39;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_33_2();
  v145 = v42;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v43, v44);
  v149 = &v142 - v45;
  v147 = type metadata accessor for AceOutput();
  v46 = OUTLINED_FUNCTION_2(v147);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46, v49);
  OUTLINED_FUNCTION_16();
  v148 = v51 - v50;
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52, v57);
  OUTLINED_FUNCTION_34_0();
  v59 = v58;
  v60 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(v60);
  v151 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_34_0();
  v67 = v66;
  v69 = v24[11];
  v68 = v24[12];
  v161 = v24;
  __swift_project_boxed_opaque_existential_1(v24 + 8, v69);
  v70 = *(v68 + 104);
  v71 = OUTLINED_FUNCTION_39_1();
  v72 = v159;
  if (v73(v71, v68) & 1) != 0 && (v72)
  {
    v159 = v60;
    v74 = *(a24 + 176);
    v144 = v67;
    v75 = v155;
    v74(a23, a24);
    v76 = *(v54 + 16);
    v143 = v59;
    v77 = v59;
    v78 = AssociatedTypeWitness;
    v76(v77, v152, AssociatedTypeWitness);
    v79 = (*(v54 + 80) + 72) & ~*(v54 + 80);
    v80 = (v56 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    *(v82 + 16) = a23;
    *(v82 + 24) = a24;
    OUTLINED_FUNCTION_73_10();
    *(v83 + 4) = v84;
    *(v83 + 5) = v75;
    v85 = v162;
    *(v83 + 6) = v161;
    *(v83 + 7) = v85;
    *(v83 + 8) = v160;
    (*(v54 + 32))(&v83[v79], v143, v78);
    *(v82 + v80) = v157;
    *(v82 + v81) = v158;
    *(v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8)) = v154;
    v86 = *(swift_getAssociatedConformanceWitness() + 200);
    sub_1DD0DCF8C();
  }

  v87 = v161[11];
  v88 = v161[12];
  __swift_project_boxed_opaque_existential_1(v161 + 8, v87);
  if ((*(v88 + 32))(v87, v88))
  {
    OUTLINED_FUNCTION_70_12();
    if ((v89 & 1) == 0)
    {
      v90 = v155;
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      v91 = v161;
      v92 = v161[7];
      v153 = v161[6];
      v152 = __swift_project_boxed_opaque_existential_1(v161 + 3, v153);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v93 = OUTLINED_FUNCTION_52_2();
      *(v93 + 16) = xmmword_1DD0E15D0;
      v94 = v154;
      *(v93 + 32) = v154;
      v95 = swift_allocObject();
      v95[2] = a23;
      v95[3] = v56;
      v96 = v157;
      v95[4] = v162;
      v95[5] = v96;
      OUTLINED_FUNCTION_73_10();
      *(v97 + 48) = v98;
      *(v97 + 56) = v90;
      v99 = v160;
      *(v97 + 64) = v91;
      *(v97 + 72) = v99;
      *(v97 + 80) = v54;
      *(v97 + 88) = v94;
      *(v97 + 96) = v159 & 1;
      *(v97 + 97) = 0;
      v159 = *(v92 + 72);
      v100 = v94;
      sub_1DD0DCF8C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_70_12();
    if ((v101 & 1) == 0)
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      type metadata accessor for NLContextUpdate();
      v105 = v149;
      OUTLINED_FUNCTION_31();
      v107 = v106;
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v106);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD0E15D0;
      v112 = v154;
      v153 = inited;
      *(inited + 32) = v154;
      LOBYTE(v165[0]) = 7;
      v113 = *(v56 + 304);
      v114 = v112;
      v115 = v113(v165, v160, v54, a23, v56);
      v116 = v115;
      if (v115)
      {
        v117 = type metadata accessor for DefaultFlowActivity();
        OUTLINED_FUNCTION_21_38();
        v115 = sub_1DCED7108(v118, v119);
      }

      else
      {
        v117 = 0;
        v165[1] = 0;
        v165[2] = 0;
      }

      v120 = v145;
      v165[0] = v116;
      v165[3] = v117;
      v165[4] = v115;
      v164 = MEMORY[0x1E69E7CC0];
      sub_1DCB09910(v105, v145, &unk_1ECCA3270, &qword_1DD0E0F70);
      if (__swift_getEnumTagSinglePayload(v120, 1, v107) == 1)
      {
        sub_1DCB0E9D8(v120, &unk_1ECCA3270, &qword_1DD0E0F70);
      }

      else
      {
        v163[0] = 0;
        NLContextUpdate.doConvertToAceContextUpdate(options:)(v163);
        OUTLINED_FUNCTION_0_95();
        v122 = sub_1DCED65D8(v120, v121);
        MEMORY[0x1E12A6920](v122);
        OUTLINED_FUNCTION_68_17();
        if (v124)
        {
          OUTLINED_FUNCTION_21_0(v123);
          sub_1DD0DE33C();
        }

        OUTLINED_FUNCTION_86();
        sub_1DD0DE3AC();
      }

      v125 = v146;
      sub_1DCB09910(v105, v146, &unk_1ECCA3270, &qword_1DD0E0F70);
      if (__swift_getEnumTagSinglePayload(v125, 1, v107) == 1)
      {
        sub_1DCB0E9D8(v125, &unk_1ECCA3270, &qword_1DD0E0F70);
      }

      else
      {
        NLContextUpdate.doConvertToServerContextUpdate()();
        OUTLINED_FUNCTION_0_95();
        v127 = sub_1DCED65D8(v125, v126);
        MEMORY[0x1E12A6920](v127);
        OUTLINED_FUNCTION_68_17();
        if (v124)
        {
          OUTLINED_FUNCTION_21_0(v128);
          sub_1DD0DE33C();
        }

        OUTLINED_FUNCTION_86();
        sub_1DD0DE3AC();
      }

      v154 = v114;
      if (MEMORY[0x1E69E7CC0] >> 62)
      {
        sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
        v129 = sub_1DD0DEE0C();
      }

      else
      {
        v129 = MEMORY[0x1E69E7CC0];
        sub_1DD0DEE7C();
      }

      sub_1DCBB920C(v129);
      sub_1DCBB920C(v153);
      v130 = v164;
      sub_1DCB09910(v165, v163, &unk_1ECCA3280, &unk_1DD0E23D0);
      v131 = v147;
      v132 = v148;
      sub_1DCBB6C68(v149, v148 + v147[7]);
      v133 = v131[9];
      sub_1DD0DD10C();
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v137);
      v138 = v131[8];
      v139 = *MEMORY[0x1E69D0678];
      v140 = sub_1DD0DD15C();
      OUTLINED_FUNCTION_2(v140);
      (*(v141 + 104))(v132 + v138, v139);
      *(v132 + 120) = 0;
      *(v132 + 104) = 0u;
      *(v132 + 88) = 0u;
      sub_1DCB6C5E8(v163, v132 + 88);
      *(v132 + v131[10]) = 0;
      *v132 = v130;
      *(v132 + 8) = 0u;
      *(v132 + 24) = 0u;
      *(v132 + 40) = 0u;
      *(v132 + 56) = 0u;
      *(v132 + 72) = 0;
      *(v132 + 80) = 3;
      sub_1DCB0E9D8(v165, &unk_1ECCA3280, &unk_1DD0E23D0);
      sub_1DCB82888();
    }
  }

  v102 = swift_allocObject();
  OUTLINED_FUNCTION_73_10();
  *(v103 + 16) = v104;
  *(v102 + 24) = v155;
  sub_1DD0DCF8C();
}

void sub_1DCECB450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v58 = v21;
  v59 = v22;
  v24 = v23;
  v26 = v25;
  v51 = v25;
  v60 = v28;
  v61 = v27;
  v56 = v29;
  v31 = v30;
  v54 = v30;
  v33 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v37);
  v39 = &v51 - v38;
  v55 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(v55);
  v62 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_34_0();
  v57 = v45;
  v46 = *(a21 + 176);
  v53 = v33;
  v46(v24, a21);
  (*(v35 + 16))(v39, v56, AssociatedTypeWitness);
  v47 = (*(v35 + 80) + 88) & ~*(v35 + 80);
  v48 = swift_allocObject();
  *(v48 + 2) = v24;
  *(v48 + 3) = a21;
  *(v48 + 4) = v60;
  *(v48 + 5) = v26;
  v49 = v59;
  *(v48 + 6) = v58;
  *(v48 + 7) = v49;
  *(v48 + 8) = v33;
  *(v48 + 9) = v31;
  *(v48 + 10) = v61;
  (*(v35 + 32))(&v48[v47], v39, v52);
  v50 = *(swift_getAssociatedConformanceWitness() + 112);
  sub_1DD0DCF8C();
}

void sub_1DCECB70C(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, void *__src, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  memcpy(__dst, __src, sizeof(__dst));
  v17 = *(v13 + 16);
  memcpy(v24, __src, sizeof(v24));
  v18 = (*(a13 + 320))(a3, a12, a13);
  v19 = (*(*v17 + 96))(v24, 0, v18 & 1);
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = v13;
  memcpy(v20 + 7, __dst, 0x48uLL);
  v20[16] = a6;
  v20[17] = a7;
  v20[18] = a1;
  v20[19] = a3;
  v20[20] = v19;
  swift_getAssociatedTypeWitness();
  v21 = *(swift_getAssociatedConformanceWitness() + 112);
  sub_1DD0DCF8C();
}

void sub_1DCECB930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v107 = v25;
  v108 = v26;
  v106 = v27;
  v117 = v29;
  v118 = v28;
  v110 = v30;
  v116 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v33 = OUTLINED_FUNCTION_20_0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  OUTLINED_FUNCTION_10_2();
  v101 = v37 - v38;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v39, v40);
  v112 = v96 - v41;
  v98 = type metadata accessor for SiriKitEventPayload(0);
  v42 = OUTLINED_FUNCTION_2(v98);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42, v45);
  OUTLINED_FUNCTION_16();
  v99 = (v47 - v46);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v105 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48, v52);
  OUTLINED_FUNCTION_34_0();
  v114 = v53;
  v111 = a24;
  v54 = swift_getAssociatedTypeWitness();
  v55 = OUTLINED_FUNCTION_22_0(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  v61 = MEMORY[0x1EEE9AC00](v55, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  v64 = v96 - v63;
  v66 = v24[11];
  v65 = v24[12];
  v109 = v24;
  __swift_project_boxed_opaque_existential_1(v24 + 8, v66);
  v67 = *(v65 + 160);
  v68 = OUTLINED_FUNCTION_39_1();
  v104 = v69(v68, v65);
  v102 = v70;
  if (v70)
  {
    v112 = a22;
    v101 = a21;
    v71 = *(v111 + 176);
    v103 = v64;
    v72 = v116;
    v71(a23);
    v113 = v57;
    v73 = *(v57 + 16);
    v100 = v96 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73(v100, v64, &protocol requirements base descriptor for RCHFlowDelegate);
    v74 = v105;
    (*(v105 + 16))(v114, v106, AssociatedTypeWitness);
    v97 = (*(v57 + 80) + 48) & ~*(v57 + 80);
    v106 = (v59 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = ((v106 + 15) & 0xFFFFFFFFFFFFFFF8);
    v98 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = *(v74 + 80);
    v96[1] = a23;
    v78 = (v77 + v76 + 8) & ~v77;
    v79 = (v51 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96[0] = &protocol requirements base descriptor for RCHFlowDelegate;
    v80 = swift_allocObject();
    *(v80 + 16) = a23;
    v81 = v100;
    v82 = v101;
    *(v80 + 24) = v111;
    *(v80 + 32) = v82;
    v83 = v113;
    *(v80 + 40) = v112;
    (*(v83 + 32))(v80 + v97, v81, &protocol requirements base descriptor for RCHFlowDelegate);
    *(v80 + v106) = v109;
    *&v99[v80] = v72;
    v84 = v117;
    *(v80 + v98) = v118;
    *(v80 + v75) = v110;
    *(v80 + v76) = v84;
    (*(v74 + 32))(v80 + v78, v114, AssociatedTypeWitness);
    v85 = (v80 + v79);
    v86 = v108;
    *v85 = v107;
    v85[1] = v86;
    v87 = (v80 + ((v79 + 23) & 0xFFFFFFFFFFFFFFF8));
    v88 = v102;
    *v87 = v104;
    v87[1] = v88;
    v89 = *(swift_getAssociatedConformanceWitness() + 184);
    sub_1DD0DCF8C();
  }

  v119 = [v117 _intentResponseCode];
  v90 = sub_1DD0DF03C();
  v92 = v91;
  v93 = v109[17];
  __swift_project_boxed_opaque_existential_1(v109 + 13, v109[16]);
  type metadata accessor for SiriKitEvent(0);
  v94 = v99;
  *v99 = 6;
  v95 = v118;
  *(v94 + 1) = v110;
  *(v94 + 2) = v95;
  *(v94 + 3) = 3;
  *(v94 + 16) = 0;
  *(v94 + 5) = v104;
  *(v94 + 3) = xmmword_1DD0FF930;
  *(v94 + 8) = 0x80000001DD120EB0;
  *(v94 + 9) = v90;
  *(v94 + 10) = v92;
  v94[88] = 75;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCECC184(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v3 = sub_1DCB08B14(a1);
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = 0x1E69C7000uLL;
  while (v3 != v4)
  {
    if (v5)
    {
      v8 = MEMORY[0x1E12A72C0](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v8 = *(v1 + 8 * v4 + 32);
    }

    v9 = v8;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1DD0DECDC();
      v10 = *(v38 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
    }

    else
    {
    }

    ++v4;
  }

  v11 = sub_1DCB08B14(v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9328, &qword_1DD0FF998);
  if (v11 <= 1)
  {
    v33 = OUTLINED_FUNCTION_52_2();
    *(v33 + 16) = xmmword_1DD0E07C0;
    *(v33 + 32) = v1;

    return;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD0E32B0;
  *(v12 + 32) = v2;
  *(v12 + 40) = v2;
  v13 = (v12 + 40);
  if (!v3)
  {
    return;
  }

  v34 = (v12 + 32);
  v36 = v3;
  v37 = v12;
  v14 = 0;
  v15 = 0;
LABEL_15:
  v35 = v14;
  v16 = v15;
  while (1)
  {
    if (v5)
    {
      v17 = MEMORY[0x1E12A72C0](v16, v1);
    }

    else
    {
      if (v16 >= *(v6 + 16))
      {
        goto LABEL_43;
      }

      v17 = *(v1 + 8 * v16 + 32);
    }

    v18 = v17;
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v19 = v1;
    v20 = v5;
    v21 = v6;
    v22 = v7;
    v23 = *(v7 + 1904);
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    v25 = *(v37 + 16);
    if (v24)
    {
      v30 = v18;
      if (v35)
      {
        if (v25 < 2)
        {
          goto LABEL_45;
        }

        MEMORY[0x1E12A6920]();
        OUTLINED_FUNCTION_23_1(*v13);
        if (v29)
        {
          OUTLINED_FUNCTION_21_0(v31);
          sub_1DD0DE33C();
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_44;
        }

        MEMORY[0x1E12A6920]();
        OUTLINED_FUNCTION_23_1(*v34);
        if (v29)
        {
          OUTLINED_FUNCTION_21_0(v32);
          sub_1DD0DE33C();
        }
      }

      sub_1DD0DE3AC();

      v14 = 1;
      v7 = v22;
      v5 = v20;
      v1 = v19;
      if (v15 != v36)
      {
        goto LABEL_15;
      }

      return;
    }

    v26 = v18;
    if (v25 < 2)
    {
      goto LABEL_42;
    }

    v27 = v26;
    MEMORY[0x1E12A6920]();
    OUTLINED_FUNCTION_23_1(*v13);
    if (v29)
    {
      OUTLINED_FUNCTION_21_0(v28);
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();

    ++v16;
    v6 = v21;
    v7 = v22;
    v5 = v20;
    v1 = v19;
    if (v15 == v36)
    {
      return;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1DCECC4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_50();
  v47 = v22;
  v48 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_179();
  memcpy(v49, v28, sizeof(v49));
  v42 = OUTLINED_FUNCTION_56_19();
  v43(v42);
  v44 = swift_allocObject();
  v44[2] = v24;
  v44[3] = a21;
  v44[4] = v47;
  v44[5] = v26;
  v44[6] = v34;
  v44[7] = v32;
  v44[8] = v30;
  v44[9] = v48;
  v44[10] = v36;
  OUTLINED_FUNCTION_58_2(v44 + 11);
  v45 = *(swift_getAssociatedConformanceWitness() + 328);
  v46 = v30;
  sub_1DD0DCF8C();
}

void sub_1DCECC6D0()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_32_26();
  OUTLINED_FUNCTION_58_16(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_10_2();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_51_25();
  sub_1DCECD2D4();
  if (v21)
  {
    v57 = v3;
    v60[0] = MEMORY[0x1E69E7CC0];
    v2 = sub_1DCB08B14(v4);
    v18 = 0;
    v5 = v4 & 0xC000000000000001;
    v3 = 0x1E69C7000uLL;
    while (1)
    {
      if (v2 == v18)
      {
        sub_1DCB08B14(v60[0]);
        v33 = OUTLINED_FUNCTION_39_1();
        if (v1 != sub_1DCB08B14(v33))
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v34 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v34, qword_1EDE57E00);
          OUTLINED_FUNCTION_39_1();

          sub_1DD0DCF8C();
        }

        memcpy(v60, v58, 0x48uLL);
        v56 = *(*(v57 + 16) + 16);
        OUTLINED_FUNCTION_75_12();
        static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
      }

      if (v5)
      {
        v22 = MEMORY[0x1E12A72C0](v18, v4);
      }

      else
      {
        if (v18 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v22 = *(v4 + 8 * v18 + 32);
      }

      v23 = v22;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
      }

      else
      {
        v1 = v60;
        sub_1DD0DECDC();
        v24 = *(v60[0] + 16);
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
      }

      ++v18;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else if (qword_1EDE4F900 == -1)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_14:
  v25 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v25, qword_1EDE57E00);
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1DCAFC000, v26, v27, "Additional AceViews present and generated from utterance views. Cannot assume Modes compatibility.", v28, 2u);
    OUTLINED_FUNCTION_80();
  }

  v29 = (*(**(v3 + 16) + 112))(v4);
  memset(v60, 0, 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v30 = OUTLINED_FUNCTION_52_2();
  *(v30 + 16) = xmmword_1DD0E15D0;
  *(v30 + 32) = v29;
  v59 = MEMORY[0x1E69E7CC0];
  sub_1DCB09910(v5, v2, &unk_1ECCA3270, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_10_63(v2);
  if (v31)
  {
    v32 = v29;
    sub_1DCB0E9D8(v2, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v61 = 0;
    v35 = v29;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(&v61);
    OUTLINED_FUNCTION_0_95();
    v37 = sub_1DCED65D8(v2, v36);
    MEMORY[0x1E12A6920](v37);
    OUTLINED_FUNCTION_24_3(v59);
    if (v38)
    {
      OUTLINED_FUNCTION_21_0(v39);
      OUTLINED_FUNCTION_93_0();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCB09910(v5, v18, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_10_63(v18);
  if (v31)
  {
    sub_1DCB0E9D8(v18, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    OUTLINED_FUNCTION_0_95();
    v41 = sub_1DCED65D8(v18, v40);
    MEMORY[0x1E12A6920](v41);
    OUTLINED_FUNCTION_24_3(v59);
    if (v42)
    {
      OUTLINED_FUNCTION_21_0(v43);
      OUTLINED_FUNCTION_93_0();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCBB920C(v30);

  sub_1DCBB920C(v44);

  v45 = type metadata accessor for AceOutput();
  sub_1DCB09910(v5, v0 + v45[7], &unk_1ECCA3270, &qword_1DD0E0F70);
  v46 = v45[9];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = v45[8];
  v52 = *MEMORY[0x1E69D0678];
  v53 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v53);
  (*(v54 + 104))(v0 + v51, v52);
  OUTLINED_FUNCTION_2_16();
  sub_1DCB6C5E8(v60, v55);
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_49();
}

void sub_1DCECCCC4()
{
  OUTLINED_FUNCTION_50();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_58_16(v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v13 = OUTLINED_FUNCTION_20_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  OUTLINED_FUNCTION_10_2();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_51_25();
  sub_1DCECD2D4();
  if (v22)
  {
    v57 = v1;
    v59[0] = MEMORY[0x1E69E7CC0];
    v2 = sub_1DCB08B14(v3);
    v19 = 0;
    v6 = v3 & 0xC000000000000001;
    v4 = 0x1E69C7000uLL;
    while (1)
    {
      if (v2 == v19)
      {
        sub_1DCB08B14(v59[0]);
        v34 = OUTLINED_FUNCTION_39_1();
        if (v1 != sub_1DCB08B14(v34))
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v35 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v35, qword_1EDE57E00);
          OUTLINED_FUNCTION_39_1();

          sub_1DD0DCF8C();
        }

        v56 = *(v57[2] + 16);
        v62 = 0;
        v60 = 0u;
        v61 = 0u;
        memcpy(v59, v58, 0x48uLL);
        OUTLINED_FUNCTION_75_12();
        static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
      }

      if (v6)
      {
        v23 = MEMORY[0x1E12A72C0](v19, v3);
      }

      else
      {
        if (v19 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v23 = *(v3 + 8 * v19 + 32);
      }

      v24 = v23;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
      }

      else
      {
        v1 = v59;
        sub_1DD0DECDC();
        v25 = *(v59[0] + 16);
        sub_1DD0DED1C();
        sub_1DD0DED2C();
        sub_1DD0DECEC();
      }

      ++v19;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else if (qword_1EDE4F900 == -1)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_14:
  v26 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v26, qword_1EDE57E00);
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DCAFC000, v27, v28, "Additional AceViews present and generated from utterance views. Cannot assume Modes compatibility.", v29, 2u);
    OUTLINED_FUNCTION_80();
  }

  v30 = (*(**(v4 + 16) + 136))(v3);
  memset(v59, 0, 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v31 = OUTLINED_FUNCTION_52_2();
  *(v31 + 16) = xmmword_1DD0E15D0;
  *(v31 + 32) = v30;
  *&v60 = MEMORY[0x1E69E7CC0];
  sub_1DCB09910(v6, v2, &unk_1ECCA3270, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_10_63(v2);
  if (v32)
  {
    v33 = v30;
    sub_1DCB0E9D8(v2, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v63 = 0;
    v36 = v30;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(&v63);
    OUTLINED_FUNCTION_0_95();
    v38 = sub_1DCED65D8(v2, v37);
    MEMORY[0x1E12A6920](v38);
    OUTLINED_FUNCTION_24_3(v60);
    if (v39)
    {
      OUTLINED_FUNCTION_21_0(v40);
      OUTLINED_FUNCTION_93_0();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCB09910(v6, v19, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_10_63(v19);
  if (v32)
  {
    sub_1DCB0E9D8(v19, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    OUTLINED_FUNCTION_0_95();
    v42 = sub_1DCED65D8(v19, v41);
    MEMORY[0x1E12A6920](v42);
    v43 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v43 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v43);
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCBB920C(v31);

  sub_1DCBB920C(v44);

  v45 = type metadata accessor for AceOutput();
  sub_1DCB09910(v6, v0 + v45[7], &unk_1ECCA3270, &qword_1DD0E0F70);
  v46 = v45[9];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  v51 = v45[8];
  v52 = *MEMORY[0x1E69D0678];
  v53 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v53);
  (*(v54 + 104))(v0 + v51, v52);
  OUTLINED_FUNCTION_2_16();
  sub_1DCB6C5E8(v59, v55);
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_49();
}

void sub_1DCECD2D4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DCB08B14(v0);
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  do
  {
    v7 = v5;
    if (v4 == v5)
    {
      break;
    }

    if (v6)
    {
      v8 = MEMORY[0x1E12A72C0](v5, v1);
    }

    else
    {
      if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(v1 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      OUTLINED_FUNCTION_1_2();
      swift_once();
LABEL_25:
      v19 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v19, qword_1EDE57E00);
      v20 = sub_1DD0DD8EC();
      v21 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DCAFC000, v20, v21, "Found an existing SADialog on a Snippet. Assuming domain has already done Modes conversion and leaving as is.", v22, 2u);
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_28;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();

    v5 = v7 + 1;
  }

  while (v10);
  v11 = sub_1DCB08B14(v3);
  v12 = sub_1DCB08B14(v1);
  if (v4 != v7 || v11 != v12)
  {
    v14 = 0;
    while (v4 != v14)
    {
      if (v6)
      {
        v18 = OUTLINED_FUNCTION_86();
        v15 = MEMORY[0x1E12A72C0](v18);
      }

      else
      {
        if (v14 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v15 = *(v1 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_31;
      }

      v17 = [v15 dialog];

      ++v14;
      if (v17)
      {

        if (qword_1EDE4F900 != -1)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_49();
}

void sub_1DCECD4DC()
{
  OUTLINED_FUNCTION_50();
  v67 = v1;
  v3 = v2;
  v5 = v4;
  v68 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_10_2();
  v66[7] = v12 - v13;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_33_2();
  v66[6] = v16;
  OUTLINED_FUNCTION_29_0();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v66 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  OUTLINED_FUNCTION_33_2();
  v66[3] = v23;
  OUTLINED_FUNCTION_29_0();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_33_2();
  v66[5] = v28;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_33_2();
  v66[4] = v31;
  OUTLINED_FUNCTION_29_0();
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_33_2();
  v66[8] = v36;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v37, v38);
  memcpy(v73, v5, sizeof(v73));
  v39 = *MEMORY[0x1E69C8300];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_39_25();
  v41 = v41 && v40 == v3;
  if (v41)
  {
  }

  else
  {
    v66[2] = v21;
    OUTLINED_FUNCTION_13_60();
    OUTLINED_FUNCTION_96_3();
    if ((v21 & 1) == 0)
    {
      v42 = *MEMORY[0x1E69C8338];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_39_25();
      if (v41 && v43 == v3)
      {
      }

      else
      {
        OUTLINED_FUNCTION_13_60();
        OUTLINED_FUNCTION_96_3();
        if ((v21 & 1) == 0)
        {
          v45 = *MEMORY[0x1E69C8310];
          sub_1DD0DDFBC();
          OUTLINED_FUNCTION_39_25();
          if (v41 && v46 == v3)
          {
          }

          else
          {
            OUTLINED_FUNCTION_13_60();
            OUTLINED_FUNCTION_96_3();
            if ((v21 & 1) == 0)
            {
              v48 = *MEMORY[0x1E69C8308];
              sub_1DD0DDFBC();
              OUTLINED_FUNCTION_39_25();
              if (v41 && v49 == v3)
              {
              }

              else
              {
                OUTLINED_FUNCTION_13_60();
                OUTLINED_FUNCTION_96_3();
                if ((v21 & 1) == 0)
                {
                  v51 = *MEMORY[0x1E69C8320];
                  sub_1DD0DDFBC();
                  OUTLINED_FUNCTION_39_25();
                  if (!v41 || v52 != v3)
                  {
                    OUTLINED_FUNCTION_13_60();
                    OUTLINED_FUNCTION_96_3();
                    if (v21)
                    {
                      goto LABEL_46;
                    }

                    v54 = *MEMORY[0x1E69C8318];
                    sub_1DD0DDFBC();
                    OUTLINED_FUNCTION_39_25();
                    if (v41 && v55 == v3)
                    {
                    }

                    else
                    {
                      OUTLINED_FUNCTION_13_60();
                      OUTLINED_FUNCTION_96_3();
                      if ((v21 & 1) == 0)
                      {
                        v66[1] = *MEMORY[0x1E69C82F8];
                        sub_1DD0DDFBC();
                        OUTLINED_FUNCTION_39_25();
                        if (v41 && v57 == v3)
                        {

                          goto LABEL_50;
                        }

                        OUTLINED_FUNCTION_13_60();
                        OUTLINED_FUNCTION_96_3();
                        if (v21)
                        {
LABEL_50:
                          v65 = *(*(v0 + 16) + 16);
                          v72 = 0;
                          v70 = 0u;
                          v71 = 0u;
                          sub_1DCBBA39C((v0 + 64));
                        }

LABEL_46:
                        OUTLINED_FUNCTION_23_26();
                        v63 = OUTLINED_FUNCTION_33_22();
                        OUTLINED_FUNCTION_5_85(v63);
                        OUTLINED_FUNCTION_60_13();
                        OUTLINED_FUNCTION_2_86();
                        static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
                      }
                    }

                    OUTLINED_FUNCTION_23_26();
                    v64 = OUTLINED_FUNCTION_33_22();
                    OUTLINED_FUNCTION_5_85(v64);
                    OUTLINED_FUNCTION_60_13();
                    OUTLINED_FUNCTION_2_86();
                    static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
                  }

                  goto LABEL_46;
                }
              }

              v62 = OUTLINED_FUNCTION_33_22();
              OUTLINED_FUNCTION_5_85(v62);
              memcpy(v69, v73, sizeof(v69));
              OUTLINED_FUNCTION_2_86();
              static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
            }
          }

          OUTLINED_FUNCTION_23_26();
          v61 = OUTLINED_FUNCTION_33_22();
          OUTLINED_FUNCTION_5_85(v61);
          OUTLINED_FUNCTION_60_13();
          OUTLINED_FUNCTION_2_86();
          static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
        }
      }

      OUTLINED_FUNCTION_23_26();
      v60 = OUTLINED_FUNCTION_33_22();
      OUTLINED_FUNCTION_5_85(v60);
      OUTLINED_FUNCTION_60_13();
      OUTLINED_FUNCTION_2_86();
      static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    }
  }

  OUTLINED_FUNCTION_23_26();
  v59 = OUTLINED_FUNCTION_33_22();
  OUTLINED_FUNCTION_5_85(v59);
  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_2_86();
  static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

void sub_1DCECE134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = *a1;
  if (*a1)
  {
    if (v23 == 1)
    {
      v24 = *MEMORY[0x1E69C8308];
      v25 = sub_1DD0DDFBC();
      sub_1DCECB930(a3, a4, a5, a6, a7, v25, v26, v27, a8, a9, a10, a11, v30, v31, a3, a4, v35, v36, v37, v38, v39, v40, v41, v42);
    }

    v32 = a2;
    if (v23 != 2)
    {
      v28 = *(a1 + 8);
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      sub_1DCECA858(a3, a4, a5, a6, a7, v23, v28 & 1, (v28 >> 8) & 1, a8, a9, a10, a11, a5, v32, a3, a4, v35, v36, v37, v38, v39, v40, v41, v42);
    }

    HIWORD(v36) = 1613;
    v35 = 3;
    LOWORD(v36) = 0;
    sub_1DCFA6D00((a2 + 104), &v36 + 7, a4, a3, a5, &v36 + 6, [a6 _intentResponseCode], 0, a6, &v35, 0xD000000000000012, 0x80000001DD120EB0, a10, a11);
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  sub_1DCECB450(a3, a4, a5, a6, a7, a8, a9, a10, a11, v29, v30, v31, a3, a4, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_1DCECE6F4(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for SiriKitEventPayload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v31[3] = a5;
    v32 = v17;
    v22 = a1[1];
    v31[0] = a4;
    v23 = a2[2];
    v33 = v22;
    v24 = *(a1 + 2);
    v34 = *(a1 + 1);
    v35 = v24;
    v36 = *(a1 + 3);
    v37 = a1[8];
    v25 = (*(*v23 + 120))(&v32, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0);
    v31[1] = v25;
    v31[2] = a6;
    v26 = a2[6];
    v27 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v26);
    (*(v27 + 48))(v25, v26, v27);
    v28 = a2[17];
    __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
    type metadata accessor for SiriKitEvent(0);
    *v16 = 32;
    v29 = v31[0];
    *(v16 + 1) = a3;
    *(v16 + 2) = v29;
    *(v16 + 3) = 3;
    *(v16 + 16) = 0;
    *(v16 + 5) = 0;
    *(v16 + 6) = 0;
    *(v16 + 7) = v17;
    *(v16 + 8) = v22;
    *(v16 + 9) = 0;
    *(v16 + 10) = 0;
    v16[88] = 33;
    swift_storeEnumTagMultiPayload();
    v30 = a3;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD0E07C0;
  v32 = 0;
  v33 = 0xE000000000000000;
  v38 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v19 = v32;
  v20 = v33;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1DCB34060();
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1DD0DD7EC();

  return a5(v17, 1);
}

uint64_t sub_1DCECEA2C(const void *a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v24 = a8;
    v23 = a3;
    v20 = *(a10 + 192);
    memcpy(v30, a1, 0x49uLL);
    sub_1DCBBF670(v30, v29);
    v20(a9, a10);
    v21 = swift_allocObject();
    v21[2] = a9;
    v21[3] = a10;
    v21[4] = a4;
    v21[5] = a7;
    v21[6] = a5;
    v21[7] = a6;
    v21[8] = v24;
    memcpy(v21 + 9, a1, 0x48uLL);
    v21[18] = a2;
    v21[19] = v23;
    v22 = *(swift_getAssociatedConformanceWitness() + 64);
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  v17 = __dst[0];
  v18 = __dst[0];
  a2(v17, 1);
  return sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCECED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v40 = a7;
  v41 = a6;
  v37 = a1;
  v39 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v34 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v21 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  v24 = &v34 - v23;
  v25 = *(a11 + 224);
  v42 = a3;
  v43 = a4;
  v25(__dst, a3, a4, a5, a10, a11);
  if (LOBYTE(__dst[0]))
  {
    if (LOBYTE(__dst[0]) == 1)
    {
      v45[0] = 6;
      HIBYTE(v44) = 15;
      __dst[0] = 0;
      LOWORD(__dst[1]) = 0;
      sub_1DCFA6D00((v41 + 104), v45, v42, a2, v43, &v44 + 7, 0, 1, a5, __dst, *v40, v40[1], a10, a11);
    }

    (*(a11 + 152))(a10, a11);
    v26 = v40;
    memcpy(__dst, v40, 0x48uLL);
    sub_1DCB09910(v37, v19, &unk_1ECCA3270, &qword_1DD0E0F70);
    v27 = *(v35 + 80);
    v34 = a5;
    v37 = v24;
    v28 = (v27 + 160) & ~v27;
    v29 = swift_allocObject();
    v29[2] = a10;
    v29[3] = a11;
    v30 = v39;
    v29[4] = v38;
    v29[5] = v30;
    v38 = AssociatedTypeWitness;
    v29[6] = v41;
    v29[7] = a2;
    v31 = v43;
    v29[8] = v42;
    v29[9] = v31;
    memcpy(v29 + 10, v26, 0x48uLL);
    v29[19] = a5;
    sub_1DCBB6C68(v19, v29 + v28);
    v32 = *(swift_getAssociatedConformanceWitness() + 136);
    sub_1DD0DCF8C();
  }

  memcpy(__dst, v40, 0x48uLL);
  sub_1DCECA284(a2, v42, v43, __dst, MEMORY[0x1E69E7CC0], a5, v37, v38, v39, a10, a11, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
}

uint64_t sub_1DCECF29C(uint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v18 = *a1;
  v19 = *(a1 + 72);
  if ((v19 & 1) == 0)
  {
    v26 = a6;
    v21 = *(a9 + 176);
    v30 = *a1;
    v22 = *(a1 + 3);
    v31 = *(a1 + 1);
    v32 = v22;
    v23 = *(a1 + 7);
    v33 = *(a1 + 5);
    v34 = v23;
    v35 = v19;
    sub_1DCBBF670(&v30, v29);
    v21(a8, a9);
    v24 = swift_allocObject();
    *(v24 + 16) = a8;
    *(v24 + 24) = a9;
    *(v24 + 32) = a2;
    *(v24 + 40) = a3;
    *(v24 + 48) = a4;
    *(v24 + 56) = a5;
    *(v24 + 64) = v18;
    *(v24 + 72) = *(a1 + 1);
    *(v24 + 88) = *(a1 + 3);
    *(v24 + 104) = *(a1 + 5);
    *(v24 + 120) = *(a1 + 7);
    *(v24 + 136) = v26;
    *(v24 + 144) = a7;
    v25 = *(swift_getAssociatedConformanceWitness() + 288);
    sub_1DD0DCF8C();
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCECF538(uint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  v17 = *a1;
  if ((a1[9] & 1) == 0)
  {
    (*(a10 + 152))(a9, a10);
    v24 = *(a1 + 1);
    v25 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = *(a1 + 7);
    v19 = swift_allocObject();
    v19[2] = a9;
    v19[3] = a10;
    v19[4] = a2;
    v19[5] = a3;
    memcpy(v19 + 6, a6, 0x48uLL);
    v19[15] = a7;
    v19[16] = a4;
    v19[17] = a8;
    v20 = *(swift_getAssociatedConformanceWitness() + 128);
    sub_1DD0DCF8C();
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCECF7AC(uint64_t a1, char a2, uint64_t (*a3)(void, void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &__dst[-v19 - 8];
  v21 = type metadata accessor for AceOutput();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  if ((a2 & 1) == 0)
  {
    v28 = a3;
    v25 = *(*(a6 + 16) + 16);
    v26 = a5[7] - 3;
    (*(a10 + 320))(a8, a9);
    v27 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v27);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    memcpy(__dst, a5, sizeof(__dst));
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
  }

  return a3(a1, 1);
}

void sub_1DCECFA8C(uint64_t a1, void (*a2)(void *, uint64_t))
{
  if (*(a1 + 9))
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    sub_1DCB66C54();
    v5 = swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v4;
    sub_1DCB390C4(v3, v4, 1);
    sub_1DCB6DECC(v3, v4);
    a2(v5, 1);

    sub_1DCB390D0(v3, v4, 1);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1DCECFB6C(uint64_t *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v33 - v18;
  v20 = type metadata accessor for AceOutput();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v23 = *a1;
  v24 = *(a1 + 72);
  if ((v24 & 1) == 0)
  {
    v39 = a2;
    v27 = a1[7];
    v26 = a1[8];
    v36 = a6;
    v28 = *(a1 + 3);
    v57 = *(a1 + 1);
    v58 = v28;
    v59 = *(a1 + 5);
    v33[1] = a4;
    v35 = *(*(a4 + 16) + 16);
    v34 = (v27 - 3) < 0xFFFFFFFFFFFFFFFELL;
    v38 = a3;
    v37 = a7;
    v29 = *(a9 + 320);
    v50 = v23;
    v51 = *(a1 + 1);
    v52 = *(a1 + 3);
    v53 = *(a1 + 5);
    v54 = v27;
    v55 = v26;
    v30 = v27;
    v31 = v26;
    v56 = v24;
    sub_1DCBBF670(&v50, &v44);
    v29(a6, v40, a9);
    v32 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v32);
    v43 = 0;
    v42 = 0u;
    v41 = 0u;
    v44 = v23;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v48 = v30;
    v49 = v31;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCECFF4C(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v69 = a6;
  v70 = a7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v65 = &v54 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v67 = AssociatedTypeWitness;
  v20 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v21);
  v68 = &v54 - v22;
  v23 = type metadata accessor for SiriKitEventPayload(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v61 = __dst[0];
    v63 = a3;
    v64 = a5;
    v60 = __dst[1];
    v31 = *(a1 + 32);
    v82 = *(a1 + 16);
    v83 = v31;
    v84 = *(a1 + 48);
    v85 = *(a1 + 64);
    v32 = *(a9 + 224);
    v33 = a5;
    v34 = v69;
    v62 = a8;
    v32(v71, v33, v69, 0, a8, a9);
    v35 = v34;
    if (LOBYTE(v71[0]))
    {
      v59 = a2;
      if (LOBYTE(v71[0]) == 1)
      {
        v36 = v70[17];
        v58 = v70[16];
        v56 = v36;
        v55 = __swift_project_boxed_opaque_existential_1(v70 + 13, v58);
        v54 = type metadata accessor for SiriKitEvent(0);
        *v27 = 6;
        v37 = v64;
        *(v27 + 1) = v35;
        *(v27 + 2) = v37;
        *(v27 + 3) = 0;
        *(v27 + 16) = 0;
        *(v27 + 5) = 0;
        *(v27 + 6) = 0;
        v38 = v60;
        *(v27 + 7) = v61;
        *(v27 + 8) = v38;
        *(v27 + 9) = 0xD000000000000012;
        *(v27 + 10) = 0x80000001DD111680;
        v27[88] = 44;
        swift_storeEnumTagMultiPayload();
        v69 = v35;
        sub_1DD0DCF8C();
      }

      v40 = a4;
      v41 = v34;
      v42 = v62;
      (*(a9 + 152))(v62, a9);
      v44 = v60;
      v43 = v61;
      v76 = v61;
      v77 = v60;
      v45 = *(a1 + 32);
      v78 = *(a1 + 16);
      v79 = v45;
      v80 = *(a1 + 48);
      v81 = *(a1 + 64);
      v46 = swift_allocObject();
      *(v46 + 16) = v42;
      *(v46 + 24) = a9;
      *(v46 + 32) = v59;
      v47 = v40;
      v57 = v40;
      v48 = v64;
      v49 = v70;
      *(v46 + 40) = v63;
      *(v46 + 48) = v49;
      *(v46 + 56) = v47;
      *(v46 + 64) = v48;
      *(v46 + 72) = v41;
      *(v46 + 80) = v43;
      *(v46 + 88) = v44;
      v50 = *(a1 + 32);
      *(v46 + 96) = *(a1 + 16);
      *(v46 + 112) = v50;
      *(v46 + 128) = *(a1 + 48);
      *(v46 + 144) = *(a1 + 64);
      v51 = *(swift_getAssociatedConformanceWitness() + 136);
      sub_1DCB09910(__dst, v71, &unk_1ECCA3260, &unk_1DD0E5AD0);
      v52 = v41;
      sub_1DD0DCF8C();
    }

    v71[0] = v61;
    v71[1] = v60;
    v39 = *(a1 + 32);
    v72 = *(a1 + 16);
    v73 = v39;
    v74 = *(a1 + 48);
    v75 = *(a1 + 64);
    sub_1DCECA5A0(a4, v64, v34, v71, MEMORY[0x1E69E7CC0], a2, v63, v62, a9, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
  }

  v28 = __dst[0];
  v29 = __dst[0];
  a2(v28, 1);
  return sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCED05A8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v56 = a5;
  v57 = a7;
  v59 = a2;
  v60 = a4;
  v58 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v15 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v46 - v19;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v50 = a9;
    v51 = __dst[0];
    v24 = *(a1 + 24);
    v64 = *(a1 + 8);
    v65 = v24;
    v25 = *(a1 + 56);
    v66 = *(a1 + 40);
    v67 = v25;
    v49 = a6;
    v53 = a11;
    v26 = *(a11 + 152);
    memcpy(v63, a1, 0x49uLL);
    sub_1DCBBF670(v63, &v61);
    v52 = v20;
    v48 = a3;
    v26(v58, a11);
    v27 = v54;
    (*(v54 + 16))(&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20, AssociatedTypeWitness);
    v28 = *(v27 + 80);
    v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v27;
    v30 = (v28 + 56) & ~v28;
    v31 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v53;
    *(v35 + 2) = v58;
    *(v35 + 3) = v36;
    v37 = v47;
    v38 = v48;
    *(v35 + 4) = v59;
    *(v35 + 5) = v38;
    *(v35 + 6) = v60;
    (*(v29 + 32))(&v35[v30], v37, AssociatedTypeWitness);
    *&v35[v31] = v49;
    v39 = v56;
    *&v35[v46] = v57;
    *&v35[v32] = v55;
    v40 = v50;
    *&v35[v33] = v50;
    *&v35[v34] = v39;
    v41 = &v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8];
    v42 = v65;
    *(v41 + 8) = v64;
    *(v41 + 24) = v42;
    v43 = v67;
    *(v41 + 40) = v66;
    *v41 = v51;
    *(v41 + 56) = v43;
    v44 = *(swift_getAssociatedConformanceWitness() + 72);
    v45 = v40;
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD0E07C0;
  v61 = 0;
  v62 = 0xE000000000000000;
  memcpy(v63, a1, 0x49uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  sub_1DD0DEDBC();
  v22 = v61;
  v23 = v62;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1DCB34060();
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  sub_1DD0DD7EC();

  sub_1DCEC9DF0(__dst, a3);
}

uint64_t sub_1DCED0A4C(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14)
{
  if ((a2 & 1) == 0)
  {
    v20 = swift_allocObject();
    v20[2] = a13;
    v20[3] = a14;
    v20[4] = a10;
    v20[5] = a11;
    v20[6] = a8;
    v20[7] = a9;
    v20[8] = a1;
    memcpy(v20 + 9, a12, 0x48uLL);
    v20[18] = a3;
    v20[19] = a7;
    v20[20] = a4;
    v20[21] = a5;
    swift_getAssociatedTypeWitness();
    v26 = *(swift_getAssociatedConformanceWitness() + 80);
    sub_1DCED6F5C(a1, 0);
    v21 = a10;
    swift_unknownObjectRetain();
    v22 = a8;
    v23 = a9;
    sub_1DCBBF670(a12, v28);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E07C0;
  v28[9] = a1;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9338, &qword_1DD0FF9A0);
  sub_1DD0DEDBC();
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1DCB34060();
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  return a4(a1, 1);
}

void sub_1DCED0D30(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v47 = a8;
  v48 = a5;
  v43 = a7;
  v50 = a6;
  v41 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  v20 = v38 - v19;
  v21 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v22 = a3;
    MEMORY[0x1E12A6920]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  v51 = a12;
  v42 = a11;
  v44 = a9;
  v45 = a10;
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DD0E07C0;
    v52 = 0;
    v53 = 0xE000000000000000;
    v54 = a1;
    v55 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9340, &qword_1DD0FF9A8);
    sub_1DD0DEDBC();
    v24 = v52;
    v25 = v53;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1DCB34060();
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_1DD0DD7EC();
  }

  else
  {

    sub_1DCBB920C(v26);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v21;
  v38[1] = v27;
  v28 = v41;
  (*(a14 + 192))(a13, a14);
  AssociatedConformanceWitness = v56;
  v29 = swift_allocObject();
  v29[2] = a13;
  v29[3] = a14;
  v29[4] = v43;
  v30 = v47;
  memcpy(v29 + 5, v47, 0x48uLL);
  v40 = v20;
  v31 = v48;
  v29[14] = v28;
  v29[15] = v31;
  v32 = v50;
  v33 = v44;
  v29[16] = v50;
  v29[17] = v33;
  v34 = AssociatedConformanceWitness;
  v29[18] = v27;
  v29[19] = v34;
  v35 = v42;
  v29[20] = v45;
  v29[21] = v35;
  v29[22] = v51;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = *(AssociatedConformanceWitness + 64);

  sub_1DCBBF670(v30, &v52);
  swift_unknownObjectRetain();
  v36 = v31;
  v37 = v32;
  sub_1DD0DCF8C();
}

void sub_1DCED1188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v128 = a7;
  v125 = a6;
  v132 = a5;
  v131 = a4;
  v127 = a3;
  v124 = a1;
  v130 = a14;
  v129 = a13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v120 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v119 = v118 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v138 = v118 - v25;
  v121 = type metadata accessor for AceOutput();
  v140 = *(v121 - 8);
  v26 = *(v140 + 64);
  v28 = MEMORY[0x1EEE9AC00](v121, v27);
  v30 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v139 = (v118 - v33);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v133 = v118 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v126 = v118 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v142 = v118 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v141 = v118 - v45;
  MEMORY[0x1EEE9AC00](v44, v46);
  v47 = sub_1DCB08B14(a2);
  v135 = v30;
  if (v47 || *(v127[5] + 16) || *(v127[4] + 16)) && ((*(v130 + 128))(v132, v125, v129))
  {
    v48 = v130;
    v49 = v132;
    v50 = v129;
    if (((*(v130 + 136))(v132, v125, v129, v130) & 1) == 0)
    {
      v142 = a2;
      v67 = v128[11];
      v68 = v128[12];
      __swift_project_boxed_opaque_existential_1(v128 + 8, v67);
      (*(v68 + 96))(v67, v68);
      v69 = v127;
      LODWORD(v141) = (v127[7] - 3) < 0xFFFFFFFFFFFFFFFELL;
      (*(v48 + 320))(v49, v50, v48);
      v70 = type metadata accessor for NLContextUpdate();
      __swift_storeEnumTagSinglePayload(v138, 1, 1, v70);
      memset(v146, 0, 40);
      memcpy(__dst, v69, sizeof(__dst));
      static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)();
    }

    sub_1DCECC184(a2);
    v52 = 0;
    v137 = *(v51 + 16);
    v134 = v48 + 320;
    v118[1] = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v118[0] = xmmword_1DD0E1E40;
    v53 = v127;
    v136 = v51;
    if (v137)
    {
      v54 = *(v51 + 16);
      if (v54)
      {
        v55 = *(v51 + 32);
        if (v54 > 1)
        {
          v56 = *(v51 + 32);

          sub_1DD0DCF8C();
        }

        v57 = v127[8];
        v58 = *(v127 + 2);
        v123 = *(v127 + 3);
        v122 = v58;
        v59 = v127[2];
        v60 = v127[3];
        v62 = *v127;
        v61 = v127[1];

        sub_1DCBBF670(v53, __dst);
        *__dst = v62;
        *&__dst[8] = v61;
        *&__dst[16] = v59;
        *&__dst[24] = v60;
        *&__dst[32] = v122;
        *&__dst[48] = v123;
        *&__dst[64] = v57;
        memcpy(v146, __dst, sizeof(v146));
        v63 = v128[11];
        v64 = v128[12];
        __swift_project_boxed_opaque_existential_1(v128 + 8, v63);
        (*(v64 + 96))(v63, v64);
        v65 = *(v53 + 56) - 3;
        (*(v130 + 320))(v132, v129);
        v66 = type metadata accessor for NLContextUpdate();
        __swift_storeEnumTagSinglePayload(v138, 1, 1, v66);
        v145 = 0;
        v144 = 0u;
        v143 = 0u;
        static AceOutputHelper.makeConfirmedViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  v71 = MEMORY[0x1E69E7CC0];
  v149 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v126 = *(a8 + 16);
  v138 = *(v126 + 2);
  if (!v138)
  {
    v73 = v71;
LABEL_49:
    sub_1DCBB920C(v73);

    sub_1DCBB920C(v97);
    v52 = v149;
    __dst[0] = 7;
    v98 = (*(v130 + 304))(__dst, v132, v125, v129);
    v99 = v98;
    v100 = v124;
    v101 = v120;
    if (v98)
    {
      v102 = type metadata accessor for DefaultFlowActivity();
      v98 = sub_1DCED7108(qword_1ECCA3720, type metadata accessor for DefaultFlowActivity);
    }

    else
    {
      v102 = 0;
      *&v146[8] = 0;
      *&v146[16] = 0;
    }

    *v146 = v99;
    *&v146[24] = v102;
    *&v146[32] = v98;
    v148 = MEMORY[0x1E69E7CC0];
    v103 = v119;
    sub_1DCB09910(v100, v119, &unk_1ECCA3270, &qword_1DD0E0F70);
    v104 = type metadata accessor for NLContextUpdate();
    if (__swift_getEnumTagSinglePayload(v103, 1, v104) == 1)
    {
      sub_1DCB0E9D8(v103, &unk_1ECCA3270, &qword_1DD0E0F70);
    }

    else
    {
      *__dst = 0;
      NLContextUpdate.doConvertToAceContextUpdate(options:)(__dst);
      v105 = sub_1DCED65D8(v103, type metadata accessor for NLContextUpdate);
      MEMORY[0x1E12A6920](v105);
      if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
    }

    sub_1DCB09910(v100, v101, &unk_1ECCA3270, &qword_1DD0E0F70);
    if (__swift_getEnumTagSinglePayload(v101, 1, v104) == 1)
    {
      sub_1DCB0E9D8(v101, &unk_1ECCA3270, &qword_1DD0E0F70);
    }

    else
    {
      NLContextUpdate.doConvertToServerContextUpdate()();
      v106 = sub_1DCED65D8(v101, type metadata accessor for NLContextUpdate);
      MEMORY[0x1E12A6920](v106);
      if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v148 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
    }

    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      v107 = MEMORY[0x1E69E7CC0];
      sub_1DD0DEE7C();
      goto LABEL_64;
    }

LABEL_74:
    sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
    v107 = sub_1DD0DEE0C();
LABEL_64:
    v142 = a11;
    sub_1DCBB920C(v107);
    sub_1DCBB920C(v52);
    v108 = v148;
    sub_1DCB09910(v146, __dst, &unk_1ECCA3280, &unk_1DD0E23D0);
    v109 = v121;
    sub_1DCB09910(v124, &v30[*(v121 + 28)], &unk_1ECCA3270, &qword_1DD0E0F70);
    v110 = v109[9];
    v111 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(&v30[v110], 1, 1, v111);
    v112 = v109[8];
    v113 = *MEMORY[0x1E69D0678];
    v114 = sub_1DD0DD15C();
    (*(*(v114 - 8) + 104))(&v30[v112], v113, v114);
    *(v30 + 15) = 0;
    *(v30 + 104) = 0u;
    *(v30 + 88) = 0u;
    sub_1DCB6C5E8(__dst, (v30 + 88));
    v30[v109[10]] = 0;
    *v30 = v108;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 40) = 0u;
    *(v30 + 56) = 0u;
    *(v30 + 9) = 0;
    v30[80] = 3;
    sub_1DCB0E9D8(v146, &unk_1ECCA3280, &unk_1DD0E23D0);
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1DD0E07C0;
    v116 = sub_1DCB08B14(v108);
    v117 = MEMORY[0x1E69E65A8];
    *(v115 + 56) = MEMORY[0x1E69E6530];
    *(v115 + 64) = v117;
    *(v115 + 32) = v116;
    sub_1DD0DD7EC();

    sub_1DCB82888();
  }

  v137 = &v126[(*(v140 + 80) + 32) & ~*(v140 + 80)];
  v136 = *(v140 + 72);

  v72 = 0;
  v73 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v74 = v139;
    sub_1DCB6FF74(&v137[v136 * v72], v139);
    v75 = *v74;

    sub_1DCED65D8(v74, type metadata accessor for AceOutput);
    v52 = (v75 >> 62);
    if (v75 >> 62)
    {
      v76 = sub_1DD0DEB3C();
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = v73 >> 62;
    if (v73 >> 62)
    {
      v78 = sub_1DD0DEB3C();
    }

    else
    {
      v78 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = v78 + v76;
    if (__OFADD__(v78, v76))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v142 = v76;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v77)
      {
        goto LABEL_27;
      }

      v81 = v73 & 0xFFFFFFFFFFFFFF8;
      if (v79 <= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v77)
      {
LABEL_27:
        sub_1DD0DEB3C();
        goto LABEL_28;
      }

      v81 = v73 & 0xFFFFFFFFFFFFFF8;
    }

    v82 = *(v81 + 16);
LABEL_28:
    v73 = sub_1DD0DEC7C();
    v81 = v73 & 0xFFFFFFFFFFFFFF8;
LABEL_29:
    v141 = v73;
    v83 = *(v81 + 16);
    v84 = (*(v81 + 24) >> 1) - v83;
    v85 = v81 + 8 * v83;
    v140 = v81;
    if (v52)
    {
      v87 = sub_1DD0DEB3C();
      if (!v87)
      {
LABEL_43:

        if (v142 > 0)
        {
          goto LABEL_68;
        }

        goto LABEL_44;
      }

      v88 = v87;
      v89 = sub_1DD0DEB3C();
      if (v84 < v89)
      {
        goto LABEL_71;
      }

      if (v88 < 1)
      {
        goto LABEL_73;
      }

      v133 = v89;
      v134 = v72;
      v90 = v85 + 32;
      sub_1DCED70A4();
      for (i = 0; i != v88; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28E8, &qword_1DD0FF9B0);
        v52 = sub_1DCBC9A2C(__dst, i, v75);
        v93 = *v92;
        v52(__dst, 0);
        *(v90 + 8 * i) = v93;
      }

      v30 = v135;
      v72 = v134;
      v86 = v133;
    }

    else
    {
      v52 = (v75 & 0xFFFFFFFFFFFFFF8);
      v86 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v86)
      {
        goto LABEL_43;
      }

      if (v84 < v86)
      {
        goto LABEL_72;
      }

      sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
      swift_arrayInitWithCopy();
    }

    if (v86 < v142)
    {
      goto LABEL_68;
    }

    if (v86 > 0)
    {
      v94 = *(v140 + 16);
      v95 = __OFADD__(v94, v86);
      v96 = v94 + v86;
      if (v95)
      {
        goto LABEL_69;
      }

      *(v140 + 16) = v96;
    }

LABEL_44:
    ++v72;
    v73 = v141;
    if (v72 == v138)
    {

      goto LABEL_49;
    }
  }
}

uint64_t sub_1DCED2630(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    v21 = 7;
    v20 = 47;
    v18 = 2;
    v19 = 0;
    sub_1DCFA6D00((a3 + 104), &v21, a4, a5, a6, &v20, 0, 1, a7, &v18, *a8, a8[1], a11, a12);
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E07C0;
  swift_getErrorValue();
  v14 = sub_1DD0DF18C();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1DCB34060();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  sub_1DD0DD7EC();

  return a9(a1, 1);
}

void sub_1DCED2838(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  v48 = a8;
  v49 = a5;
  v50 = a6;
  v51 = a3;
  v52 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v42 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v22 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v24 = type metadata accessor for AceOutput();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  if ((a2 & 1) == 0)
  {
    if (sub_1DCB08B14(a1))
    {
      memcpy(__dst, v50, sizeof(__dst));
      sub_1DCECCCC4();
      sub_1DCB82888();
    }

    v43 = a12;
    v44 = a11;
    v45 = a10;
    v33 = *(a14 + 176);
    v42 = a9;
    v33(a13, a14);
    sub_1DCB09910(v48, v20, &unk_1ECCA3270, &qword_1DD0E0F70);
    v34 = (*(v46 + 80) + 160) & ~*(v46 + 80);
    v35 = swift_allocObject();
    v35[2] = a13;
    v35[3] = a14;
    v36 = v52;
    v35[4] = v51;
    v35[5] = v36;
    v37 = v50;
    v35[6] = v49;
    v35[7] = a9;
    v38 = v44;
    v35[8] = v45;
    v35[9] = v38;
    v39 = v43;
    v35[10] = v43;
    memcpy(v35 + 11, v37, 0x48uLL);
    sub_1DCBB6C68(v20, v35 + v34);
    v40 = *(swift_getAssociatedConformanceWitness() + 248);
    v41 = v39;
    sub_1DD0DCF8C();
  }

  v27 = a1;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v29 = __dst[0];
  v30 = __dst[1];
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1DCB34060();
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  sub_1DD0DD7EC();

  v31 = a1;
  v51(a1, 1);
  v32 = MEMORY[0x1E69E7CF8];
  sub_1DCED6DE0(a1, 1, MEMORY[0x1E69E7CF8]);
  sub_1DCED6DE0(a1, 1, v32);
}

uint64_t sub_1DCED2DB8(const void *a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11)
{
  v32[4] = a5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v20);
  v22 = v32 - v21;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v32[2] = a8;
    v32[3] = a11;
    v32[1] = a7;
    sub_1DCB09910(a10, v22, &unk_1ECCA3270, &qword_1DD0E0F70);
    v30 = (*(v18 + 80) + 112) & ~*(v18 + 80);
    v31 = swift_allocObject();
    v31[2] = a2;
    v31[3] = a3;
    memcpy(v31 + 4, a9, 0x48uLL);
    v31[13] = a4;
    sub_1DCBB6C68(v22, v31 + v30);
    sub_1DD0DCF8C();
  }

  v23 = __dst[0];
  v24 = __dst[0];
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD0E07C0;
  v33 = 0;
  v34 = 0xE000000000000000;
  v32[5] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v26 = v33;
  v27 = v34;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1DCB34060();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_1DD0DD7EC();

  v28 = v23;
  a2(v23, 1);
  sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
  return sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCED3104(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for AceOutput();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  if ((a2 & 1) == 0)
  {
    v17 = *(*(a6 + 16) + 16);
    sub_1DD0DCF8C();
  }

  v13 = a1;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD0E07C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1DCB34060();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0xE000000000000000;
  sub_1DD0DD7EC();

  v15 = a1;
  a3(a1, 1);
  v16 = MEMORY[0x1E69E7D48];
  sub_1DCED6DE0(a1, 1, MEMORY[0x1E69E7D48]);
  sub_1DCED6DE0(a1, 1, v16);
}

uint64_t sub_1DCED3468(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    sub_1DCB17D04(a3 + 104, v22);
    v21 = 6;
    v20 = 15;
    v18 = 3;
    v19 = 0;
    sub_1DCFA6D00(v22, &v21, a4, a5, a6, &v20, 0, 1, a7, &v18, *a8, a8[1], a11, a12);
  }

  return a9(a1, 1);
}

uint64_t sub_1DCED354C(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v16 = type metadata accessor for SiriKitEventPayload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v26[2] = a8;
    v26[3] = a7;
    v22 = *a6;
    v23 = a6[1];
    v24 = a3[17];
    v26[1] = __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    *v20 = 6;
    *(v20 + 1) = a4;
    *(v20 + 2) = a5;
    *(v20 + 3) = 3;
    *(v20 + 16) = 0;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *(v20 + 7) = v22;
    *(v20 + 8) = v23;
    *(v20 + 9) = 0xD000000000000012;
    *(v20 + 10) = 0x80000001DD111680;
    v20[88] = 44;
    swift_storeEnumTagMultiPayload();
    v25 = a4;
    sub_1DD0DCF8C();
  }

  return a7(a1, 1);
}

uint64_t sub_1DCED36F8(uint64_t *a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a1;
  v13 = *(a1 + 72);
  if ((v13 & 1) == 0)
  {
    v18 = a1[7];
    v17 = a1[8];
    v19 = *(a4 + 16);
    v41 = *(a1 + 1);
    v42 = *(a1 + 3);
    v43 = *(a1 + 5);
    v40 = v12;
    v44 = v18;
    v45 = v17;
    v29 = v17;
    v20 = *(a12 + 320);
    v33 = v12;
    v34 = *(a1 + 1);
    v35 = *(a1 + 3);
    v36 = *(a1 + 5);
    v37 = v18;
    v38 = v17;
    v39 = v13;
    sub_1DCBBF670(&v33, v32);
    v23 = v20(a6, a11, a12);
    v24 = (*(*v19 + 96))(&v40, (v18 - 3) < 0xFFFFFFFFFFFFFFFELL, v23 & 1);
    v25 = swift_allocObject();
    *(v25 + 16) = a11;
    *(v25 + 24) = a12;
    *(v25 + 32) = a2;
    *(v25 + 40) = a3;
    *(v25 + 48) = a4;
    *(v25 + 56) = v12;
    v26 = *(a1 + 3);
    *(v25 + 64) = *(a1 + 1);
    *(v25 + 80) = v26;
    *(v25 + 96) = *(a1 + 5);
    *(v25 + 112) = v18;
    *(v25 + 120) = v29;
    *(v25 + 128) = v24;
    *(v25 + 136) = a5;
    *(v25 + 144) = a6;
    *(v25 + 152) = a10;
    *(v25 + 160) = a8;
    swift_getAssociatedTypeWitness();
    v27 = *(swift_getAssociatedConformanceWitness() + 104);
    sub_1DD0DCF8C();
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCED39BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = v36 - v22;
  v24 = type metadata accessor for AceOutput();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  if ((a2 & 1) == 0)
  {
    v36[4] = a4;
    v36[5] = a3;
    v36[0] = a1;
    v36[1] = a7;
    v36[2] = a12;
    v36[3] = a11;
    memcpy(__dst, a6, sizeof(__dst));
    (*(a13 + 320))(a9, a12, a13);
    v32 = a6[7] - 3;
    v33 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E15D0;
    *(inited + 32) = a10;
    v35 = a10;
    sub_1DCECCCC4();
    swift_setDeallocating();
    sub_1DCC65718();
    sub_1DCB0E9D8(v23, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCB82888();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v36[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v28 = a1;
  v29 = __dst[0];
  v30 = __dst[1];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1DCB34060();
  *(v27 + 32) = v29;
  *(v27 + 40) = v30;
  sub_1DD0DD7EC();

  return a3(v28, 1);
}

void sub_1DCED3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, char a24)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = type metadata accessor for SiriKitEventPayload(0);
  v39 = OUTLINED_FUNCTION_2(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39, v42);
  OUTLINED_FUNCTION_16();
  v45 = v44 - v43;
  if ((v35 & 1) == 0)
  {
    v46 = *v27;
    v47 = v27[1];
    v48 = v33[17];
    __swift_project_boxed_opaque_existential_1(v33 + 13, v33[16]);
    type metadata accessor for SiriKitEvent(0);
    *v45 = a23;
    *(v45 + 8) = v31;
    *(v45 + 16) = v29;
    *(v45 + 24) = 3;
    *(v45 + 32) = 0;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = v46;
    *(v45 + 64) = v47;
    *(v45 + 72) = 0;
    *(v45 + 80) = 0;
    *(v45 + 88) = a24;
    swift_storeEnumTagMultiPayload();
    v49 = v31;
    sub_1DD0DCF8C();
  }

  v25(v37, 1);
  OUTLINED_FUNCTION_49();
}

void sub_1DCED3F38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v18 = *a1;
  v19 = *(a1 + 8);
  if (v19 == 1)
  {
    sub_1DCED6B04(v18, 1u);
    sub_1DCB6DECC(v18, 1u);
    if ([v18 errorCode] == 1305)
    {
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      (*(a13 + 176))(a12, a13);
      v22 = swift_allocObject();
      *(v22 + 16) = a12;
      *(v22 + 24) = a13;
      *(v22 + 32) = a4;
      *(v22 + 40) = a5;
      *(v22 + 48) = v18;
      *(v22 + 56) = 1;
      *(v22 + 64) = a6;
      *(v22 + 72) = a2;
      *(v22 + 80) = a7;
      *(v22 + 88) = a3;
      v23 = *(swift_getAssociatedConformanceWitness() + 112);
      sub_1DCED6B04(v18, 1u);
      sub_1DD0DCF8C();
    }

    sub_1DCB66C54();
    v28 = swift_allocError();
    *v29 = v18;
    *(v29 + 8) = 1;
    sub_1DCB6DECC(v18, 1u);
    a4(v28, 1);

    sub_1DCBCC7B0(v18, 1u);
    v26 = v18;
    v27 = 1;
  }

  else
  {
    if (v19 == 255)
    {
      v39 = 7;
      v38 = 78;
      if (a11)
      {
        v20 = 256;
      }

      else
      {
        v20 = 0;
      }

      v36 = a9;
      v37 = v20 & 0xFFFE | a10 & 1;
      v21 = a9;
      sub_1DCFA6D00((a6 + 104), &v39, a3, a2, a7, &v38, 0, 1, a8, &v36, 0, 0, a12, a13);
    }

    sub_1DCB66C54();
    v24 = swift_allocError();
    *v25 = v18;
    *(v25 + 8) = v19;
    sub_1DCED6B04(v18, v19);
    sub_1DCB6DECC(v18, v19);
    a4(v24, 1);

    v26 = v18;
    v27 = v19;
  }

  sub_1DCBCC7B0(v26, v27);
}

void sub_1DCED43A4(_BYTE *a1, void (*a2)(void *, uint64_t), uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a8;
  v36 = a2;
  v32 = a7;
  v33 = a10;
  v34 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = v30 - v19;
  v21 = type metadata accessor for AceOutput();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v24 = a1[72];
  if ((v24 & 1) == 0)
  {
    memcpy(__dst, a1, sizeof(__dst));
    memcpy(v39, a1, sizeof(v39));
    v30[3] = *(*(a6 + 16) + 16);
    v31 = a3;
    v28 = *(a11 + 320);
    memcpy(v40, a1, 0x48uLL);
    v40[72] = v24;
    sub_1DCBBF670(v40, v37);
    v28(v35, v33, a11);
    v29 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v29);
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  v25 = v36;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  sub_1DD0DD7EC();
  sub_1DCB66C54();
  v26 = swift_allocError();
  *v27 = a4;
  *(v27 + 8) = a5;
  sub_1DCB6DECC(a4, a5);
  v25(v26, 1);
}

uint64_t sub_1DCED4794(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8)
{
  v32 = a7;
  v15 = type metadata accessor for SiriKitEventPayload(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000051, 0x80000001DD121100);
    v33 = 1305;
    v20 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v20);

    v31 = a8;
    v21 = v34;
    v29 = v35;
    v23 = *a6;
    v22 = a6[1];
    v24 = a3[17];
    v30 = __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
    type metadata accessor for SiriKitEvent(0);
    *v19 = 6;
    *(v19 + 1) = v34;
    *(v19 + 1) = *(&v34 + 3);
    *(v19 + 1) = a4;
    *(v19 + 2) = a5;
    *(v19 + 3) = 3;
    *(v19 + 16) = 0;
    *(v19 + 34) = v33;
    *(v19 + 19) = WORD2(v33);
    *(v19 + 5) = 0;
    *(v19 + 6) = 0;
    *(v19 + 7) = v23;
    *(v19 + 8) = v22;
    v25 = v29;
    *(v19 + 9) = v21;
    *(v19 + 10) = v25;
    v19[88] = 78;
    swift_storeEnumTagMultiPayload();
    v26 = a4;
    sub_1DD0DCF8C();
  }

  return v32(a1, 1);
}

uint64_t sub_1DCED49BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, char a10, uint64_t (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a2 & 1) == 0)
  {
    v25 = 7;
    v24 = 78;
    if (a10)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    v22 = a8;
    v23 = v19 & 0xFFFE | a9 & 1;
    v20 = a8;
    sub_1DCFA6D00((a3 + 104), &v25, a4, a5, a6, &v24, 0, 1, a7, &v22, 0, 0, a13, a14);
  }

  return a11(a1, 1);
}

uint64_t sub_1DCED4AAC(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v21 = *a1;
  if ((a1[9] & 1) == 0)
  {
    v23 = a1[1];
    v27 = 7;
    v26 = 39;
    v24 = 0;
    LOWORD(v25) = 0;
    sub_1DCFA6D00((a4 + 104), &v27, a5, a6, a7, &v26, 0, 1, a8, &v24, v21, v23, a10, a11);
  }

  return a2(*a1, 1);
}

uint64_t sub_1DCED4C7C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = a3;
  v32 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = v30 - v20;
  v22 = type metadata accessor for AceOutput();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  if ((a2 & 1) == 0)
  {
    v30[1] = a5;
    if (sub_1DCB08B14(a1))
    {
      memcpy(__dst, a6, sizeof(__dst));
      (*(a13 + 320))(a10, a12, a13);
      v29 = type metadata accessor for NLContextUpdate();
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v29);
      sub_1DCECCCC4();
      sub_1DCB0E9D8(v21, &unk_1ECCA3270, &qword_1DD0E0F70);
      sub_1DCB82888();
    }

    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    (*(a13 + 320))(a10, a12, a13);
    sub_1DCECD4DC();
  }

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1DD0E07C0;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  v26 = __dst[0];
  v27 = __dst[1];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1DCB34060();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_1DD0DD7EC();

  return v31(a1, 1);
}

uint64_t sub_1DCED509C(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v55 = a6;
  v54 = a5;
  v51 = a4;
  v56 = a3;
  v53 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v22);
  v24 = &v43 - v23;
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v50 = a14;
    v49 = a13;
    v47 = a12;
    v46 = a11;
    v52 = a9;
    v26 = *(a1 + 24);
    v58 = *(a1 + 8);
    v59 = v26;
    v27 = *(a1 + 56);
    v60 = *(a1 + 40);
    v61 = v27;
    v28 = *(v20 + 16);
    v45 = __dst[0];
    v28(v24, a10, AssociatedTypeWitness);
    v29 = (*(v20 + 80) + 88) & ~*(v20 + 80);
    v30 = (v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = a7;
    v43 = AssociatedTypeWitness;
    v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v31 + 79) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = a15;
    *(v32 + 3) = a16;
    v33 = v56;
    *(v32 + 4) = v53;
    *(v32 + 5) = v33;
    v34 = v55;
    *(v32 + 6) = v54;
    *(v32 + 7) = v34;
    *(v32 + 8) = a7;
    *(v32 + 9) = a8;
    *(v32 + 10) = v52;
    (*(v20 + 32))(&v32[v29], v24, v43);
    v35 = &v32[v30];
    v36 = v47;
    *v35 = v46;
    *(v35 + 1) = v36;
    v37 = &v32[v31];
    v38 = v60;
    *(v37 + 56) = v61;
    *(v37 + 40) = v38;
    v39 = v58;
    *(v37 + 24) = v59;
    *v37 = v45;
    *(v37 + 8) = v39;
    v40 = &v32[v44];
    v41 = v50;
    *v40 = v49;
    *(v40 + 1) = v41;
    swift_getAssociatedTypeWitness();
    v42 = *(swift_getAssociatedConformanceWitness() + 192);
    sub_1DCB09910(__dst, v57, &unk_1ECCA3260, &unk_1DD0E5AD0);
    sub_1DD0DCF8C();
  }

  return v53(__dst[0], 1);
}

uint64_t sub_1DCED5478(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v58 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v57 = v47 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v60 = v47 - v33;
  v59 = type metadata accessor for AceOutput();
  v34 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59, v35);
  memcpy(__dst, a1, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    v47[5] = __dst[0];
    v50 = a2;
    v51 = a6;
    v52 = a5;
    v53 = a7;
    v54 = a3;
    v55 = a8;
    v56 = a15;
    v49 = __dst[5];
    v37 = *(a1 + 24);
    v67 = *(a1 + 8);
    v68 = v37;
    v65 = *(a1 + 48);
    v66 = *(a1 + 64);
    v38 = a4[11];
    v39 = a4[12];
    __swift_project_boxed_opaque_existential_1(a4 + 8, v38);
    v48 = a4;
    v40 = *(v39 + 16);
    memcpy(v64, a1, 0x49uLL);
    sub_1DCBBF670(v64, v63);
    if (v40(v38, v39))
    {
      sub_1DCB0E9D8(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
      memcpy(v62, a12, 0x48uLL);
      sub_1DCBBF670(a12, v63);
      sub_1DCECB70C(v52, v51, v53, v55, a9, a10, a11, v62, 0, v50, v54, v56, a16);
    }

    v47[4] = a16;
    v47[3] = a14;
    v47[1] = a13;
    v41 = v48;
    v42 = v48[2];
    memcpy(v62, a12, 0x48uLL);
    v43 = *(*v42 + 120);
    memcpy(v63, __dst, 0x49uLL);
    sub_1DCBBF670(v63, &v61);
    v47[2] = v43(v62, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0);
    if (v49[2])
    {
      v44 = v49[4];
      v45 = v49[5];
    }

    sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
    v46 = v41[12];
    __swift_project_boxed_opaque_existential_1(v41 + 8, v41[11]);
    sub_1DCCDEA6C();
  }

  return a2(__dst[0], 1);
}

void sub_1DCED5D08(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DD0E07C0;
    swift_getErrorValue();
    v15 = sub_1DD0DF18C();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1DCB34060();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_1DD0DD7EC();

    v25 = 6;
    v24 = 73;
    v22 = 3;
    v23 = 0;
    sub_1DCFA6D00((a3 + 104), &v25, a4, a5, a6, &v24, 0, 1, a7, &v22, *a8, a8[1], a11, a12);
  }

  v25 = 7;
  v24 = 73;
  v22 = 1;
  v23 = 0;
  sub_1DCFA6D00((a3 + 104), &v25, a4, a5, a6, &v24, 0, 1, a7, &v22, *a8, a8[1], a11, a12);
}

uint64_t sub_1DCED5F20(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = v34 - v20;
  v22 = type metadata accessor for AceOutput();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = *a1;
  v47 = *(a1 + 1);
  v27 = *(a1 + 5);
  v48 = *(a1 + 3);
  v49 = v27;
  if ((a1[9] & 1) == 0)
  {
    v34[1] = a3;
    v34[2] = a2;
    v35 = a10;
    v34[3] = a9;
    v29 = a7;
    v32 = a1 + 7;
    v31 = a1[7];
    v30 = v32[1];
    v36 = v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1DCB10E5C(0, &qword_1EDE460F0, 0x1E69C7860);
    v37 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)(a4, a5, v37);
    v41 = v26;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v31;
    v46 = v30;
    (*(a11 + 320))(a5, v35, a11);
    v33 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v33);
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v34[0] = v29;
    static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  }

  return a2(v26, 1);
}

uint64_t sub_1DCED6468()
{
  sub_1DCB3728C();
  OUTLINED_FUNCTION_56();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCED65A0()
{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_11_57();
  return sub_1DCED5F20(v3, v4, v5, v6, v7, v8, v9, v0[10], (v0 + 11), v10, v11);
}

uint64_t sub_1DCED65D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCED6630(uint64_t a1)
{
  v6 = v1[2];
  v7 = v1[3];
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26_30();
  v14 = v13 & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_9_63();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(v15);
  v17 = v16;
  v19 = v18;
  v20 = (*(v17 + 80) + v14 + 8) & ~*(v17 + 80);
  v21 = *(v19 + 64);
  OUTLINED_FUNCTION_14_6();
  v22 = *(v1 + v2);
  v23 = *(v1 + v3);
  v24 = *(v1 + v4);
  v25 = v1[4];
  v26 = v1[5];
  v27 = *(v1 + v5);
  v28 = *(v1 + v14);
  OUTLINED_FUNCTION_72_16();
  return sub_1DCED509C(a1, v30, v31, v1 + v10, v32, v33, v34, v35, v38, v36, v39, v37, *v29, v29[1], v6, v7);
}

uint64_t sub_1DCED6788()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v10 = *(v8 + 64);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_11_57();
  v11 = *(v1 + 80);
  OUTLINED_FUNCTION_72_16();
  return sub_1DCED5478(v0, v13, v14, v15, v16, v17, v18, v19, v20, v23, v21, v22, *(v1 + v12), *(v1 + v12 + 8), v2, v3);
}

uint64_t sub_1DCED6888()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_0(AssociatedTypeWitness);
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_11_57();
  return sub_1DCED4AAC(v0, v8, v9, v10, v11, v12, v13, *(v1 + 80), v1 + v7, v2, v3);
}

uint64_t sub_1DCED6960(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    a1 = 0;
    v5 = 0;
  }

  return v3(a1, v5);
}

void sub_1DCED699C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_11_57();
  sub_1DCED3F38(v3, v4, v5, v6, v7, v8, v9, *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 97), v10, v11);
}

uint64_t sub_1DCED69E0()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v10 = *(v8 + 64);
  OUTLINED_FUNCTION_12_55();
  OUTLINED_FUNCTION_66_10();
  return sub_1DCED36F8(v0, v15, v16, v17, v18, v19, v1 + v14, *(v1 + v11), *(v1 + v12), *(v1 + v13), v2, v3);
}

uint64_t sub_1DCED6AAC()
{
  OUTLINED_FUNCTION_45_18();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v10 = *(v0 + 160);
  v9 = *(v0 + 144);
  return v7(v4, v3 & 1, v5, v6, *(v0 + 48));
}

id sub_1DCED6B04(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1DCB6DECC(result, a2);
  }

  return result;
}

uint64_t sub_1DCED6B70()
{
  OUTLINED_FUNCTION_45_18();
  v1 = v0[6];
  v2 = v0[16];
  v3 = v0[17];
  return v6(v5, v4 & 1);
}

void sub_1DCED6BDC(void *a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 136) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_12_55();
  sub_1DCED2838(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + 56), *(v2 + 128), v2 + v17, *(v2 + v14), *(v2 + v15), *(v2 + v16), *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1DCED6CBC()
{
  OUTLINED_FUNCTION_59_19();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_11_57();
  return sub_1DCED2DB8(v0, v7, v8, v9, v10, v11, v12, *(v1 + 80), (v1 + 88), v1 + v6, v2);
}

void sub_1DCED6D4C(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[13];

  sub_1DCED3104(a1, a2 & 1, v8, v9, (v2 + 4), v10);
}

void sub_1DCED6DE0(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

void sub_1DCED6DF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_11_57();
  sub_1DCED05A8(v3, v4, v5, v6, v7, v8, v9, *(v0 + 80), *(v0 + 88), v10, v11);
}

uint64_t sub_1DCED6E24(void *a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v13 = *(v11 + 64);
  OUTLINED_FUNCTION_12_55();
  return sub_1DCED0A4C(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v17, *(v2 + v14), *(v2 + v15), *(v2 + v16), *(v2 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((((((v16 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

id sub_1DCED6F5C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  OUTLINED_FUNCTION_54_16();

  return swift_deallocObject();
}

uint64_t sub_1DCED7060()
{
  OUTLINED_FUNCTION_45_18();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v10 = *(v0 + 144);
  return v8(v5, v4 & 1, v6, v7);
}

unint64_t sub_1DCED70A4()
{
  result = qword_1ECCA9350;
  if (!qword_1ECCA9350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA28E8, &qword_1DD0FF9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9350);
  }

  return result;
}

uint64_t sub_1DCED7108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCED7168()
{
  OUTLINED_FUNCTION_52_25();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return sub_1DCED0530(v4, v3 & 1, v5);
}

uint64_t objectdestroy_85Tm(void (*a1)(void), void (*a2)(void))
{
  v5 = *(v2 + 40);

  a1(*(v2 + 48));
  a2(*(v2 + 56));

  v6 = *(v2 + 72);

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  OUTLINED_FUNCTION_76_15();
  if (v8)
  {
  }

  v9 = *(v0 + 120);

  v10 = *(v0 + 136);

  OUTLINED_FUNCTION_56();

  return swift_deallocObject();
}

uint64_t sub_1DCED7320()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_11_57();
  return v4(v3);
}

uint64_t sub_1DCED73D0()
{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_11_57();
  return sub_1DCECEA2C(v3, v4, v5, v6, v7, v8, v9, v0[10], v10, v11);
}

void sub_1DCED7400()
{
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_66_10();
  sub_1DCECED1C(v3, v4, v5, v6, v7, v8, v0 + 9, v0[18], v0[19], v9, v10);
}

uint64_t sub_1DCED7438(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v7);
  return sub_1DCECF21C(a1, a2 & 1, v2[4], v2[5], v2[6], v2[7], v2[8], v2[9], v2 + 10, v2[19], v2 + ((*(v8 + 80) + 160) & ~*(v8 + 80)), v5, v6);
}

uint64_t sub_1DCED74E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_66_10();
  return sub_1DCECE6F4(v3, v4, v5, v6, v7, v8);
}

void sub_1DCED7504()
{
  OUTLINED_FUNCTION_59_19();
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_99(AssociatedTypeWitness);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v10 = *(v8 + 64);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_66_10();
  sub_1DCECE134(v0, v13, v14, v15, v16, v17, v1 + v12, *(v1 + v11), *(v1 + v11 + 8), v2, v3);
}

void sub_1DCED75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if ((*(a13 + 144))(a5, a6, a12, a13))
  {
    v13 = type metadata accessor for RCHDelegateToNeedsConfirmationWithCancellationFlowStrategyAdapter();
    sub_1DCB17CA0(a11, v15);
    *&v15[0] = sub_1DCEDC730(a10, v15);
    swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)(v15, v13);
  }

  else
  {
    v14 = type metadata accessor for RCHDelegateToNeedsConfirmationFlowStrategyAdapter();
    sub_1DCB17CA0(a11, v15);
    *&v15[0] = sub_1DCEDB488(a10, v15);
    swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)(v15, v14);
  }

  swift_unknownObjectRetain();

  sub_1DD0DCF8C();
}

void sub_1DCED77B0(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a1;
  v20 = *(*a1 + 80);
  sub_1DD01FF1C(a3, a5, a6, a4, &v33);
  if (v34)
  {
    v31 = v19;
    sub_1DCAFF9E8(&v33, v35);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v21, qword_1EDE57E00);

    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v33 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1DCB10E9C(a5, a6, &v33);
      _os_log_impl(&dword_1DCAFC000, v22, v23, "Running UnsetRelationshipFlow for unsupported parameter name: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1E12A8390](v25, -1, -1);
      MEMORY[0x1E12A8390](v24, -1, -1);
    }

    v26 = type metadata accessor for ConfigToUnsupportedUnsetRelationshipFlowStrategyAdapter();
    sub_1DCB17CA0(a10, &v33);
    sub_1DCB17CA0(v35, v32);
    *&v33 = sub_1DCC99EC4(&v33, v32);
    v27 = *(v31 + 88);
    WitnessTable = swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeUnsupportedUnsetRelationshipFlowProducer<A, B>(strategy:)(&v33, v26, v27, WitnessTable);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    sub_1DCED7C40(&v33);
    (*(a14 + 200))(&v33, a2, a3, a5, a6, a4, a13, a14);
    v29 = v33;
    v30 = type metadata accessor for RCHDelegateToUnsupportedValueFlowStrategyAdapter();
    if (v29)
    {
      sub_1DCB17CA0(a12, v35);
      *&v35[0] = sub_1DCEE0D5C(a11, v35);
      swift_getWitnessTable();
      if (v29 == 1)
      {
        static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)(v35, v30);
      }

      else
      {
        static RCHChildFlowFactoryHelper.makeUnsupportedValueAndPromptFlowProducer<A>(strategy:)(v35, v30);
      }
    }

    else
    {
      sub_1DCB17CA0(a12, v35);
      *&v35[0] = sub_1DCEE0D5C(a11, v35);
      swift_getWitnessTable();
      static RCHChildFlowFactoryHelper.makeUnsupportedValuePunchOutFlowProducer<A>(strategy:)(v35, v30);
    }

    swift_unknownObjectRetain();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCED7C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9358, qword_1DD0FF9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCED7CA8(int a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ([a4 _intentResponseCode] == 8)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "IntentResponseCode is .userConfirmationRequired so ignoring delegate and forcing confirmation for backwards compatibility.", v18, 2u);
      MEMORY[0x1E12A8390](v18, -1, -1);
    }

LABEL_8:
    v19 = type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy();
    sub_1DCB17CA0(a8, v32);
    v20 = a4;
    v21 = sub_1DCED8FD4(a7, v32);
    v22 = *(a10 + 232);
    swift_unknownObjectRetain();
    v22(v32, a2, a3, v20, a9, a10);
    if (LOBYTE(v32[0]) == 1)
    {
      *&v32[0] = v21;
      swift_getWitnessTable();
      static RCHChildFlowFactoryHelper.makeConfirmIntentWithWaitToContinueFlowProducer<A>(strategy:)(v32, v19);
      v23 = swift_allocObject();
      v23[2] = a9;
      v23[3] = a10;
      v23[4] = a5;
      v23[5] = a6;
      sub_1DD0DCF8C();
    }

    *&v32[0] = v21;
    swift_getWitnessTable();
    static RCHChildFlowFactoryHelper.makeConfirmIntentFlowProducer<A>(strategy:)();
  }

  if ((*(a10 + 112))(a3, a4, a9, a10))
  {
    goto LABEL_8;
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v24 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v24, qword_1EDE57E00);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "Delegate indicated that we should not confirm the intent with the user. No flow will be provided.", v27, 2u);
    MEMORY[0x1E12A8390](v27, -1, -1);
  }

  return a5(0);
}

void sub_1DCED8088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = 2;
  sub_1DCB17CA0(a8, v19);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a7;
  sub_1DCAFF9E8(v19, (v17 + 5));
  v17[10] = a1;
  v17[11] = a2;
  v17[12] = a3;
  v17[13] = a4;
  v17[14] = a5;
  v17[15] = a6;
  v18 = *(a10 + 216);
  swift_unknownObjectRetain();
  sub_1DD0DCF8C();
}

void sub_1DCED81BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*a1)
  {
    type metadata accessor for AnyFlow();
    type metadata accessor for LegacyContinueInAppAdaptingFlow();
    v12 = a3[3];
    v11 = a3[4];
    v13 = __swift_project_boxed_opaque_existential_1(a3, v12);
    v23 = v12;
    v24 = *(v11 + 8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v22);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v13, v12);
    *&v22 = sub_1DCED9D38();
    swift_unknownObjectRetain();
    sub_1DD0DCF8C();
  }

  v15 = type metadata accessor for RCHDelegateToContinueInAppDialogFlowStrategy();
  v17 = a3[3];
  v16 = a3[4];
  v18 = __swift_project_boxed_opaque_existential_1(a3, v17);
  v23 = v17;
  v24 = *(v16 + 8);
  v19 = __swift_allocate_boxed_opaque_existential_1Tm(&v22);
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  *&v22 = sub_1DCB87714(a2, &v22);
  swift_getWitnessTable();
  static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)(&v22, v15);
  swift_unknownObjectRetain();

  v20 = swift_allocObject();
  *(v20 + 16) = a8;
  *(v20 + 24) = a9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED8434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a1;
  if (a6 == 4)
  {
    v17 = *a10;
    v18 = a7;
    v21 = sub_1DD0DD28C();
    v27[3] = v21;
    v27[4] = MEMORY[0x1E69CE220];
    __swift_allocate_boxed_opaque_existential_1Tm(v27);
    sub_1DD0DD27C();
    v19 = (*(*(v17 + 88) + 168))(a2, v27, a3, a4, a5, *(v17 + 80), *(v17 + 88));
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    a7 = v18;
    if (v19)
    {
      type metadata accessor for RCHDelegateToAppResolutionFlowStrategyAdapter();
      swift_getWitnessTable();
      type metadata accessor for SiriKitServerAssistedAppResolutionFlow();
      v26 = a10;
      sub_1DCB17CA0(a11, v27);
      sub_1DCB17CA0(a12, v25);
      sub_1DCB17CA0(a13, v24);
      v23[3] = v21;
      v23[4] = MEMORY[0x1E69CE220];
      __swift_allocate_boxed_opaque_existential_1Tm(v23);
      sub_1DD0DCF8C();
    }
  }

  return a7(0);
}

void sub_1DCED8744(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1DCED81BC(a1, v1[4], v1 + 5, v1[10], v1[11], v1[12], v1[13], v1[14], v1[15]);
}

uint64_t sub_1DCED87A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1DCED8820(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for Parse(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB29E58(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
    v12 = sub_1DD0DC76C();
    OUTLINED_FUNCTION_2(v12);
    (*(v13 + 8))(v10);
    sub_1DCB17CA0(v11 + 40, v15);
    v16 = 0;
    a2(v15);
  }

  else
  {
    sub_1DCB29EBC(v10);
    v15[3] = sub_1DD0DD28C();
    v15[4] = MEMORY[0x1E69CE220];
    __swift_allocate_boxed_opaque_existential_1Tm(v15);
    sub_1DD0DD27C();
    v16 = 0;
    a2(v15);
  }

  return sub_1DCB0E9D8(v15, qword_1ECCA9360, &qword_1DD107640);
}

void sub_1DCED8A7C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v7 = *v6;
  v8 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v9 = v0[2];
  sub_1DCED8D50(v4, v2);
}

void sub_1DCED8C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v13 - v9;
  v11 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DD0FFA78;
  v12[5] = 0;
  v12[6] = a3;
  v12[7] = a4;
  sub_1DD0DCF8C();
}

void sub_1DCED8D50(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED8DBC(void *a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v6[0] = a1;
    v7 = 1;
    v4 = a1;
  }

  else
  {
    v6[3] = type metadata accessor for RCHAdaptedEmptyOutput();
    v6[4] = &off_1F58664B0;
    v6[0] = swift_allocObject();
    v7 = 0;
  }

  a3(v6);
  return sub_1DCB0E9D8(v6, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCED8E58(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 80;
  v3 = *(a2 + 80);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1DCED8FD4(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCED9024(a1, a2);
  return v4;
}

uint64_t sub_1DCED9024(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCAFF9E8(a2, v2 + 24);
  *(v2 + 64) = 0;
  return v2;
}

uint64_t sub_1DCED9054@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  result = sub_1DCED96B8(a1, &v9);
  v6 = v9;
  *(v2 + 64) = v9;
  v7 = 2;
  switch(v6)
  {
    case 1:
      v7 = 0;
      break;
    case 2:
      v7 = 1;
      break;
    case 3:
      v8 = v2[2];
      result = (*(*(v4 + 88) + 96))(*(v4 + 80));
      if (result)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      break;
    default:
      break;
  }

  *a2 = v7;
  return result;
}

void sub_1DCED911C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(unint64_t *))
{
  v8 = *v5;
  v9 = *(v5 + 64);
  if (v9 == 3)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    if (v9 != 2)
    {
      v13 = *(v8 + 80);
      v14 = *(v8 + 88);
      type metadata accessor for RCHDelegateToConfirmIntentFlowStrategy.ConfirmIntentErrors();
      swift_getWitnessTable();
      v15 = swift_allocError();
      *v16 = v9;
      v19 = v15;
      v20 = 0;
      v21 = 1;
      goto LABEL_7;
    }

    LOBYTE(v19) = 0;
  }

  v11 = *(v8 + 80);
  v10 = *(v8 + 88);
  swift_getAssociatedTypeWitness();
  ConfirmIntentAnswer.init(confirmationResponse:intent:)(&v19, a3, v17);
  v19 = v17[0];
  v20 = v18;
  v21 = 0;
  v12 = a3;
LABEL_7:
  a5(&v19);
  sub_1DCCB7284(v19, v20, v21);
}

void sub_1DCED9250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *v5;
  v10 = v5[2];
  (*(*(v9 + 88) + 96))(*(v9 + 80), *(v9 + 88));
  v11 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  sub_1DCED99E0(a4, a5);
}

void sub_1DCED9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *v5;
  v10 = v5[2];
  v11 = *(v9 + 80);
  (*(*(v9 + 88) + 232))(&v20);
  if (v20)
  {
    v19 = a5;
    v12 = v6[7];
    __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
    sub_1DCED99E0(a4, v19);
  }

  OUTLINED_FUNCTION_11_7();

  sub_1DCED94CC(v13, v14, v15, v16, v17);
}

void sub_1DCED94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v10 = v5[2];
  sub_1DCED99E0(a4, a5);
}

void sub_1DCED95B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  v11 = v6[2];
  sub_1DCED99E0(a5, a6);
}

uint64_t sub_1DCED96B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for Parse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[2];
  v12 = *(v5 + 88);
  v13 = *(v5 + 80);
  if ((*(v12 + 96))(v13, v12))
  {
    v14 = type metadata accessor for Input(0);
    (*(v12 + 280))(&v23, a1 + *(v14 + 20), v13, v12);
    v15 = v23;
  }

  else
  {
    v16 = type metadata accessor for Input(0);
    (*(v12 + 272))(&v23 + 1, a1 + *(v16 + 20), v13, v12);
    v15 = BYTE1(v23);
  }

  switch(v15)
  {
    case 1:
    case 2:
    case 3:
      v17 = sub_1DD0DF0AC();

      if (v17)
      {
        goto LABEL_7;
      }

      break;
    default:

LABEL_7:
      if (qword_1EDE4F908 != -1)
      {
        swift_once();
      }

      sub_1DD0DE6DC();
      sub_1DD0DD7EC();
      v19 = type metadata accessor for Input(0);
      sub_1DCB29E58(a1 + *(v19 + 20), v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 8))(v10, v21);
        LOBYTE(v15) = *(v20 + 24);
        if (!v15)
        {
          sub_1DD0DE6EC();
          sub_1DD0DD7EC();
        }
      }

      else
      {
        result = sub_1DCB29EBC(v10);
        LOBYTE(v15) = 0;
      }

      break;
  }

  *a2 = v15;
  return result;
}

void sub_1DCED99E0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCED9A4C(void *a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v6[0] = a1;
    v7 = 1;
    v4 = a1;
  }

  else
  {
    v6[3] = type metadata accessor for RCHAdaptedEmptyOutput();
    v6[4] = &off_1F58664B0;
    v6[0] = swift_allocObject();
    v7 = 0;
  }

  a3(v6);
  return sub_1DCCD16C4(v6);
}

uint64_t sub_1DCED9AD8()
{
  sub_1DCB3786C();

  return swift_deallocClassInstance();
}

_BYTE *sub_1DCED9C20(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1DCED9D38()
{
  OUTLINED_FUNCTION_30_0();
  v5 = v4;
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v5, (v6 + 2));
  v6[7] = v3;
  v6[8] = v2;
  v6[9] = v1;
  v6[10] = v0;
  return v6;
}

void sub_1DCED9D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v10 = v5[2];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = *(v9 + 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 88);
  sub_1DD0DCF8C();
}

void sub_1DCED9F64()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for LegacyContinueInAppAdaptingFlow();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCED9FEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEDA00C, 0, 0);
}

uint64_t sub_1DCEDA0F4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DCEDA244(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  v10 = v1[5];
  v11 = v1[6];
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  v13 = v1[8];
  v21 = v1[7];
  v22 = v12;
  v14 = v1[10];
  v19 = v1[9];
  v20 = v13;
  v18 = v14;
  v23 = 2;
  (*(v5 + 16))(v9, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v9, v4);
  (*(v11 + 8))(v21, v20, v19, v18, &v23, sub_1DCEDA8A0, v16, *(v3 + 80), *(v3 + 88), v10, v11);
}

uint64_t sub_1DCEDA41C(void *a1, char a2)
{
  v4 = type metadata accessor for ExecuteResponse(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
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
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "Received an SubmitCommandError while rendering ContinueInApp output. This is usually caused by a user cancellation. Exiting without crashing: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }
  }

  v18 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(&v8[*(v4 + 36)], 1, 1, v18);
  *v8 = 1;
  *(v8 + 1) = 0;
  v8[16] = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0;
  *(v8 + 3) = 0;
  v8[48] = -4;
  v19 = &v8[*(v4 + 40)];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCEDA664()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return v0;
}

uint64_t sub_1DCEDA6A4()
{
  sub_1DCEDA664();

  return swift_deallocClassInstance();
}

void sub_1DCEDA6F0(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCEDA78C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCED9FEC(a1);
}

uint64_t sub_1DCEDA828(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCEDA864(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDA8A0(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970) - 8) + 80);

  return sub_1DCEDA41C(a1, a2 & 1);
}

uint64_t sub_1DCEDA980@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v5 = [swift_getObjCClassFromMetadata() typeName];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DD0DDFBC();
    v9 = v8;

    if (qword_1ECCA1248 != -1)
    {
      swift_once();
    }

    v10 = sub_1DCCE6C7C(v7, v9, qword_1ECCA2828);
    v11 = 6;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;

  *(a1 + 8) = 0;
  return result;
}

void sub_1DCEDAB68()
{
  v3 = v1;
  OUTLINED_FUNCTION_4_93();
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v20 - v8 + 14;
  sub_1DCEDA980(v21);
  v10 = v21[0];
  sub_1DCC4B20C(v21);
  if (v10 == 6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DCAFC000, v12, v13, "Attempted to use old response generator for unlock, but we have a default auth policy. Using the newer unlock mode instead (and overriding domain customization here)", v14, 2u);
      MEMORY[0x1E12A8390](v14, -1, -1);
    }

    sub_1DCEDA980(v20);
    sub_1DCC4B20C(v20);
    v15 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = &unk_1DD10AAC0;
    v16[5] = 0;
    v16[6] = v2;
    v16[7] = v0;
    sub_1DD0DCF8C();
  }

  v17 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v18 = v3[2];
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDAE14()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

uint64_t sub_1DCEDAEA8()
{
  v2 = v0;
  OUTLINED_FUNCTION_4_93();
  v3 = *v0;
  v4 = v0[2];
  if (((*(*(v3 + 88) + 288))(v5, v6, v2 + 8, *(v3 + 80), *(v3 + 88)) & 1) == 0)
  {
    v8 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    OUTLINED_FUNCTION_5_86();
  }

  v9[3] = type metadata accessor for EmptyOutput();
  v9[4] = &protocol witness table for EmptyOutput;
  v9[0] = swift_allocObject();
  v10 = 0;
  v1(v9);
  return sub_1DCCD16C4(v9);
}

void sub_1DCEDB030()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDB0C4()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDB15C()
{
  OUTLINED_FUNCTION_4_93();
  OUTLINED_FUNCTION_1_103();
  OUTLINED_FUNCTION_5_86();
}

void sub_1DCEDB240(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDB3F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDB488(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1DCEDB4D8(a1, a2);
  return v4;
}

uint64_t sub_1DCEDB4D8(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  *(v2 + 64) = 0;
  return v2;
}

uint64_t sub_1DCEDB508@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, char *a4@<X8>)
{
  result = sub_1DCEDC018(a3, a1, a2, &v9);
  v7 = v9;
  *(v4 + 64) = v9;
  if (v7)
  {
    v8 = v7 != 1;
  }

  else
  {
    v8 = 2;
  }

  *a4 = v8;
  return result;
}

void sub_1DCEDB564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(id *), uint64_t a9)
{
  v10 = v9;
  v52 = *(*v9 + 88);
  v53 = *(*v9 + 80);
  type metadata accessor for RCHFlowFrame();
  v12 = v9[2];
  v13 = *(type metadata accessor for Input(0) + 20);
  sub_1DCEFEAA8();
  if (!v14)
  {
    v14 = a2;
  }

  v15 = v14;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E07C0;
  v54 = a2;
  v17 = INIntent.debugDescriptionLite.getter();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1DCB34060();
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  OUTLINED_FUNCTION_5_87();
  sub_1DD0DD7EC();

  sub_1DD0DE6DC();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD0E07C0;
  v59 = v15;
  v23 = INIntent.debugDescriptionLite.getter();
  v25 = v24;

  *(v22 + 56) = v20;
  *(v22 + 64) = v21;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  OUTLINED_FUNCTION_5_87();
  sub_1DD0DD7EC();

  v26 = *(v10 + 64);
  if (v26 >= 2)
  {
    if (v26 != 2)
    {
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_2_89(v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, a6, v52, v53, v12, v54, a3, a4, a5, a8, a9);
      v48 = *(v20 + 264);
      sub_1DD0DCF8C();
    }

    v30 = [a6 itemToConfirm];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_2_89(v31, v32, v33, v34, v35, v36, v37, v38, v49, v50, a6, v52, v53, v12, v54, a3, a4, a5, a8, a9);
    v39 = *(v20 + 256);
    sub_1DD0DCF8C();
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x6465766965636552, 0xEF20657461747320);
  v60 = *(v10 + 64);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0xD00000000000003CLL, 0x80000001DD1217F0);
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v27 = CommandFailure.init(errorCode:reason:)(-1, 0, 0xE000000000000000);
  sub_1DCC7AE30();
  v28 = swift_allocError();
  *v29 = v27;
  v61 = v28;
  v62 = 0;
  v63 = 1;
  a8(&v61);

  sub_1DCCB7284(v61, v62, v63);
}

void sub_1DCEDBA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  v12 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v9[6]);
  v13 = v9[2];
  sub_1DCEDBDB0(a8, a9);
}

uint64_t sub_1DCEDBB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v8[3] = type metadata accessor for EmptyOutput();
  v8[4] = &protocol witness table for EmptyOutput;
  v8[0] = swift_allocObject();
  v9 = 0;
  a6(v8);
  return sub_1DCCD16C4(v8);
}

void sub_1DCEDBCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  v11 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
  v12 = v7[2];
  sub_1DCEDBDB0(a6, a7);
}

void sub_1DCEDBDB0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCEDBE1C(void *a1, char a2, uint64_t a3, uint64_t a4, _BYTE *a5, void (*a6)(unint64_t *))
{
  v9 = *v6;
  if (a2)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DD0E32B0;
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1DCB34060();
    *(v12 + 64) = v14;
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    swift_getErrorValue();

    v15 = sub_1DD0DF18C();
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v15;
    *(v12 + 80) = v16;
    sub_1DD0DD7EC();

    v22 = a1;
    v23 = 0;
    v24 = 1;
    v17 = a1;
    a6(&v22);
  }

  else
  {
    LOBYTE(v22) = *a5;
    v19 = *(v9 + 80);
    v18 = *(v9 + 88);
    swift_getAssociatedTypeWitness();
    NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)(&v22, a1, v25);
    v22 = v25[0];
    v23 = v26;
    v24 = 0;
    v20 = a1;
    a6(&v22);
  }

  sub_1DCCB7284(v22, v23, v24);
}

uint64_t sub_1DCEDC018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v26 = a4;
  v8 = *v4;
  v9 = type metadata accessor for Parse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4[2];
  v15 = *(type metadata accessor for Input(0) + 20);
  (*(*(v8 + 88) + 272))(&v27, a1 + v15, *(v8 + 80));
  v16 = v27;
  switch(v27)
  {
    case 1:
    case 2:
    case 3:
      v17 = sub_1DD0DF0AC();

      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    default:

LABEL_4:
      if (qword_1EDE4F908 != -1)
      {
LABEL_30:
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_65();
      sub_1DCB29E58(a1 + v15, v13);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        result = sub_1DCB29EBC(v13);
LABEL_9:
        v16 = 0;
        goto LABEL_10;
      }

      a1 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
      v19 = sub_1DD0DC76C();
      (*(*(v19 - 8) + 8))(v13, v19);
      v16 = *(a1 + 24);
      if (v16)
      {
        goto LABEL_7;
      }

      v20 = *(a1 + 32);
      v21 = sub_1DCB08B14(v20);
      v15 = v20 & 0xC000000000000001;

      v22 = 0;
      break;
  }

  while (1)
  {
    if (v21 == v22)
    {

      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_6_65();

      goto LABEL_9;
    }

    if (!v15)
    {
      if (v22 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v23 = *(v20 + 8 * v22 + 32);
        sub_1DD0DCF8C();
      }

      goto LABEL_29;
    }

    v13 = MEMORY[0x1E12A72C0](v22, v20);
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v24 = *(v13 + 4) == a2 && *(v13 + 5) == a3;
    if (v24 || (sub_1DD0DF0AC() & 1) != 0)
    {
      break;
    }

    ++v22;
  }

  v25 = v13[24];
  sub_1DD0DE6DC();
  if (v25 == 1)
  {
    OUTLINED_FUNCTION_6_65();

    v16 = 3;
    goto LABEL_10;
  }

  v16 = 2;
  OUTLINED_FUNCTION_6_65();

LABEL_7:

LABEL_10:
  *v26 = v16;
  return result;
}

uint64_t sub_1DCEDC620(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDC65C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

void sub_1DCEDC78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_2_90(v10);
  v11[4] = v12;
  v11[5] = 0;
  v11[6] = a1;
  v11[7] = a2;
  sub_1DD0DCF8C();
}

void sub_1DCEDC87C(uint64_t a1@<X6>, char *a2@<X8>)
{
  v4 = *v2;
  sub_1DCEDD674(a1, &v12);
  if (v12 == 1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v5 = 0;
  }

  else
  {
    v6 = *(v4 + 80);
    v7 = *(v4 + 88);
    type metadata accessor for RCHFlowFrame();
    v8 = v2[2];
    v9 = *(type metadata accessor for Input(0) + 20);
    sub_1DCEFEAA8();
    v10 = v2[13];
    v2[13] = v11;

    if (v2[13])
    {
      v5 = 1;
    }

    else
    {
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5();
      }

      sub_1DD0DE6DC();
      v5 = 2;
      sub_1DD0DD7EC();
    }
  }

  *a2 = v5;
}

void sub_1DCEDCA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *v8;
  v15 = v8[2];
  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = v8;
  v13 = *(*(v11 + 88) + 184);
  v14 = *(v11 + 80);
  sub_1DD0DCF8C();
}

void sub_1DCEDCB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DCB17CA0(a4 + 64, v6);
  sub_1DCEDA980(v5);
  type metadata accessor for SiriKitDisambiguationListAdapter();
  swift_allocObject();
  SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)(a1, v6);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDCBCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *))
{
  v10 = *v9;
  v11 = *v9;
  v12 = v9[13];
  if (!v12)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v35 = 0u;
    v36 = 0u;
    v22 = *(v11 + 80);
    v21 = *(v11 + 88);
    swift_getAssociatedTypeWitness();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v35, a2, v34);
    v23 = type metadata accessor for IntentPromptAnswer();
    static DisambiguationResult.chosenItem(_:)();
    v24 = *(*(v23 - 8) + 8);
    v25 = a2;
    v24(v34, v23);
    v37 = 0;
    a9(&v35);
    type metadata accessor for DisambiguationResult();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v26 = sub_1DD0DF22C();
    OUTLINED_FUNCTION_13_1(v26);
    return (*(v27 + 8))(&v35);
  }

  v14 = v9[2];
  v15 = *(v10 + 80);
  v16 = *(*(v10 + 88) + 248);
  v17 = v12;
  v16(v33);
  sub_1DCB192E4(v33, &v35);
  if (!*(&v36 + 1))
  {
    sub_1DCB16DB0(&v35, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    v19 = a9;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5B38, &qword_1DD103310);
  result = swift_dynamicCast();
  v19 = a9;
  if ((result & 1) == 0)
  {
LABEL_11:
    sub_1DCB192E4(v33, &v35);
    goto LABEL_12;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v34[0] + 16) > a5)
  {
    sub_1DCB0DF6C(v34[0] + 32 * a5 + 32, &v35);

LABEL_12:
    swift_getAssociatedTypeWitness();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v35, v17, v34);
    v28 = type metadata accessor for IntentPromptAnswer();
    static DisambiguationResult.chosenItem(_:)();
    v29 = *(*(v28 - 8) + 8);
    v30 = v17;
    v29(v34, v28);
    v37 = 0;
    v19(&v35);

    type metadata accessor for DisambiguationResult();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v31 = sub_1DD0DF22C();
    OUTLINED_FUNCTION_13_1(v31);
    (*(v32 + 8))(&v35);
    return sub_1DCB16DB0(v33, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  }

  __break(1u);
  return result;
}

void sub_1DCEDCFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v12 = *v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v30 - v16 + 14;
  sub_1DCEDA980(v31);
  v18 = v31[0];
  sub_1DCC4B20C(v31);
  if (v18 == 6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Attempted to use old response generator for unlock, but we have a default auth policy. Using the newer unlock mode instead (and overriding domain customization here)", v22, 2u);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    sub_1DCEDA980(v30);
    sub_1DCC4B20C(v30);
    v23 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
    v24 = swift_allocObject();
    v25 = OUTLINED_FUNCTION_2_90(v24);
    v25[4] = v26;
    v25[5] = 0;
    v25[6] = a7;
    v25[7] = a8;
    sub_1DD0DCF8C();
  }

  v27 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v9[6]);
  v28 = v9[2];
  sub_1DCEDD56C(a7, a8);
}

void sub_1DCEDD260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  v12 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v9[6]);
  v13 = v9[2];
  sub_1DCEDD56C(a8, a9);
}

void sub_1DCEDD370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = v6[7];
  __swift_project_boxed_opaque_existential_1(v6 + 3, v6[6]);
  v11 = v6[2];
  sub_1DCEDD56C(a5, a6);
}

void sub_1DCEDD478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  v11 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v7[6]);
  v12 = v7[2];
  sub_1DCEDD56C(a6, a7);
}

void sub_1DCEDD56C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDD5D8(void *a1, char a2, void (*a3)(void *))
{
  if (a2)
  {
    v6[0] = a1;
    v7 = 1;
    v4 = a1;
  }

  else
  {
    v6[3] = type metadata accessor for RCHAdaptedEmptyOutput();
    v6[4] = &off_1F58664B0;
    v6[0] = swift_allocObject();
    v7 = 0;
  }

  a3(v6);
  return sub_1DCB16DB0(v6, &qword_1ECCA1F70, &qword_1DD0E2BD0);
}

uint64_t sub_1DCEDD674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for Parse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[2];
  v12 = *(type metadata accessor for Input(0) + 20);
  (*(*(v5 + 88) + 272))(&v20, a1 + v12, *(v5 + 80));
  v13 = v20;
  switch(v20)
  {
    case 1:
    case 2:
    case 3:
      v14 = sub_1DD0DF0AC();

      if (v14)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      sub_1DCB29E58(a1 + v12, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        v17 = sub_1DD0DC76C();
        OUTLINED_FUNCTION_13_1(v17);
        (*(v18 + 8))(v10);
        v13 = *(v16 + 24);
      }

      else
      {
        result = sub_1DCB29EBC(v10);
        v13 = 0;
      }

      break;
  }

  *a2 = v13;
  return result;
}

void sub_1DCEDD8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a7;
  *(v11 + 24) = a8;
  v12 = *v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDDA58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDDAA0()
{
  OUTLINED_FUNCTION_35_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_14_0(v1);

  return sub_1DCC100AC();
}

void sub_1DCEDDBAC(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X5>, char *a4@<X8>)
{
  v5 = v4;
  v9 = *v4;
  sub_1DCEDEC8C(a3, v35);
  if (LOBYTE(v35[0]) != 1)
  {
    v16 = *(v9 + 80);
    v17 = *(v9 + 88);
    type metadata accessor for RCHFlowFrame();
    v18 = v4[2];
    v19 = *(type metadata accessor for Input(0) + 20);
    sub_1DCEFEAA8();
    v21 = v20;
    v22 = v5[8];
    v5[8] = v20;
    v23 = v20;

    if (v21)
    {
      (*(v17 + 248))(v35, v23, a1, a2, v16, v17);
      if (v35[3])
      {

        sub_1DCB0E9D8(v35, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        v15 = 1;
        goto LABEL_21;
      }

      sub_1DCB0E9D8(v35, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v29, qword_1EDE57E00);

      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v35[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1DCB10E9C(a1, a2, v35);
        _os_log_impl(&dword_1DCAFC000, v30, v31, "Updated intent still contains a nil value for %s. Assuming that the user did not answer the prompt and ignoring the input", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      v34 = v5[8];
      v5[8] = 0;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v27, v28, "Delegate was not able to update intent from parse");
        OUTLINED_FUNCTION_80();
      }
    }

    v15 = 2;
    goto LABEL_21;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v11, v12))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v13, v14, "User cancelled the prompt");
    OUTLINED_FUNCTION_80();
  }

  v15 = 0;
LABEL_21:
  *a4 = v15;
}

uint64_t sub_1DCEDDF38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(_OWORD *), uint64_t a8)
{
  v10 = *v8;
  v11 = v8[8];
  if (v11)
  {
    v12 = v8;
    v15 = qword_1EDE4F900;
    v16 = v11;
    if (v15 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = v16;
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v19, v20))
    {
      v52 = a4;
      v21 = swift_slowAlloc();
      v51 = a3;
      v22 = swift_slowAlloc();
      *&v57[0] = v22;
      *v21 = 136315138;
      v23 = INIntent.debugDescriptionLite.getter();
      v25 = a8;
      v26 = sub_1DCB10E9C(v23, v24, v57);

      *(v21 + 4) = v26;
      a8 = v25;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "IntentFromParse: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      a3 = v51;
      OUTLINED_FUNCTION_80();
      a4 = v52;
      OUTLINED_FUNCTION_80();
    }

    v27 = v12[2];
    v30 = v10 + 80;
    v28 = *(v10 + 80);
    v29 = *(v30 + 8);
    (*(v29 + 248))(&v55, v18, a3, a4, v28, v29);
    if (*(&v56 + 1))
    {
      sub_1DCB20B30(&v55, v57);
      sub_1DCB0DF6C(v57, &v55);
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      *(v31 + 24) = v29;
      *(v31 + 32) = a3;
      *(v31 + 40) = a4;
      *(v31 + 48) = a7;
      *(v31 + 56) = a8;
      sub_1DCB20B30(&v55, (v31 + 64));
      v32 = *(v29 + 256);

      sub_1DD0DCF8C();
    }

    sub_1DCB0E9D8(&v55, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    v39 = v18;

    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v40, v41))
    {
      v53 = a4;
      v42 = swift_slowAlloc();
      *&v57[0] = swift_slowAlloc();
      *v42 = 136315394;
      v43 = INIntent.debugDescriptionLite.getter();
      v45 = a3;
      v46 = sub_1DCB10E9C(v43, v44, v57);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1DCB10E9C(v45, v53, v57);
      _os_log_impl(&dword_1DCAFC000, v40, v41, "Unable to extract parameter value. Intent: %s, parameterName: %s", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    swift_getAssociatedTypeWitness();
    v55 = 0u;
    v56 = 0u;
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(&v55, v39, v57);
    BYTE8(v57[2]) = 0;
    v47 = v39;
    a7(v57);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v33 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v33, qword_1EDE57E00);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DCAFC000, v34, v35, "Delegate was not able to update intent from parse", v36, 2u);
      OUTLINED_FUNCTION_80();
    }

    memset(v57, 0, 41);
    a7(v57);
    v38 = *(v10 + 80);
    v37 = *(v10 + 88);
    swift_getAssociatedTypeWitness();
  }

  type metadata accessor for IntentPromptAnswer();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v48 = sub_1DD0DF22C();
  OUTLINED_FUNCTION_2(v48);
  return (*(v49 + 8))(v57);
}

uint64_t sub_1DCEDE4B8(void *a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);

    sub_1DCB96674(a1);
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();

    sub_1DCB51C9C(a1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v36 = a5;
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1DCB10E9C(a3, a4, v38);
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v16 = sub_1DD0DF18C();
      v18 = sub_1DCB10E9C(v16, v17, v38);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_1DCAFC000, v12, v13, "Domain failed to update intent successfully (parameter=%s: %s", v14, 0x16u);
      swift_arrayDestroy();
      v19 = v15;
      a5 = v36;
      MEMORY[0x1E12A8390](v19, -1, -1);
      MEMORY[0x1E12A8390](v14, -1, -1);
    }

    v38[0] = a1;
    v39 = 1;
    v20 = a1;
    a5(v38);
    swift_getAssociatedTypeWitness();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = a1;
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6DC();
    sub_1DCB51C9C(a1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = a5;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38[0] = v28;
      *v27 = 136315138;
      v29 = INIntent.debugDescriptionLite.getter();
      v31 = sub_1DCB10E9C(v29, v30, v38);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "Applying value to intent was successful. Transitioning to complete. Updated intent: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E12A8390](v28, -1, -1);
      v32 = v27;
      a5 = v26;
      MEMORY[0x1E12A8390](v32, -1, -1);
    }

    sub_1DCB0DF6C(a7, v37);
    swift_getAssociatedTypeWitness();
    IntentPromptAnswer.init(answeredValue:updatedIntent:)(v37, v23, v38);
    v39 = 0;
    v33 = v23;
    a5(v38);
  }

  type metadata accessor for IntentPromptAnswer();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v34 = sub_1DD0DF22C();
  return (*(*(v34 - 8) + 8))(v38, v34);
}

void sub_1DCEDE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *v5;
  v8 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v9 = v5[2];
  [a5 resolutionResultCode];
  v10 = OUTLINED_FUNCTION_86();
  sub_1DCEDEC20(v10, v11);
}

void sub_1DCEDEA1C()
{
  v1 = *v0;
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_86();
  sub_1DCEDEC20(v4, v5);
}

void sub_1DCEDEB20()
{
  v1 = *v0;
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_86();
  sub_1DCEDEC20(v4, v5);
}

void sub_1DCEDEC20(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEDEC8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for Parse(0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[2];
  v14 = *(type metadata accessor for Input(0) + 20);
  (*(*(v5 + 88) + 272))(&v22, a1 + v14, *(v5 + 80));
  v15 = v22;
  switch(v22)
  {
    case 1:
    case 2:
    case 3:
      v16 = sub_1DD0DF0AC();

      if (v16)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      sub_1DCB29E58(a1 + v14, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
        v19 = sub_1DD0DC76C();
        OUTLINED_FUNCTION_2(v19);
        (*(v20 + 8))(v12);
        v15 = *(v18 + 24);
      }

      else
      {
        result = sub_1DCB29EBC(v12);
        v15 = 0;
      }

      break;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_1DCEDEF58(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDEF94(void *a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = *(v2 + 24);
  return sub_1DCEDE4B8(a1, a2 & 1, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + 64);
}

void *sub_1DCEDEFCC()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1DCEDEFF4(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DCEDF000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1DCEDF058(a1, a2, a3);
  return v6;
}

void *sub_1DCEDF058(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[9] = 0;
  v3[2] = a1;
  sub_1DCB17CA0(a2, (v3 + 3));
  v6 = sub_1DCB08B14(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  if (!v6)
  {

    a3 = 0;
  }

  v7 = v3[9];
  v3[8] = a3;
  v3[9] = 0;

  return v3;
}

void sub_1DCEDF0CC(char *a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for RCHFlowFrame();
  v5 = v1[2];
  v6 = *(type metadata accessor for Input(0) + 20);
  sub_1DCEFEAA8();
  sub_1DCEDEFF4(v7);
  v8 = sub_1DCEDEFCC();
  if (v8)
  {
    v9 = v8;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    v11 = v9;
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = INIntent.debugDescriptionLite.getter();
      v18 = sub_1DCB10E9C(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DCAFC000, v12, v13, "Received an updated intent from delegate. Choosing to handle. Intent: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    v22 = 1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v21))
    {
      v22 = 2;
      v23 = OUTLINED_FUNCTION_50_0();
      *v23 = 0;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Delegate was not able to update intent from parse. Ignoring input", v23, 2u);
      OUTLINED_FUNCTION_80();
    }

    else
    {

      v22 = 2;
    }
  }

  *a1 = v22;
}

void sub_1DCEDF338(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_7();
  a21 = v23;
  a22 = v24;
  v25 = v22;
  v27 = v26;
  v29 = v28;
  v30 = *v22;
  v31 = sub_1DCEDEFCC();
  if (!v31)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v37 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v37, qword_1EDE57E00);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_75(v34))
    {
      goto LABEL_12;
    }

    v35 = OUTLINED_FUNCTION_50_0();
    *v35 = 0;
    v36 = "RCHDelegateToRCHFlowStrategyAdapter had no previously cached intent. Calling delegate to parse input";
    goto LABEL_11;
  }

  if (v29)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v32 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v32, qword_1EDE57E00);
    v33 = sub_1DD0DD8EC();
    v34 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_75(v34))
    {
      goto LABEL_12;
    }

    v35 = OUTLINED_FUNCTION_50_0();
    *v35 = 0;
    v36 = "RCHDelegateToRCHFlowStrategyAdapter received a value for the current intent which we would not have had when calling makeIntentFromParse in the 'on' method. Ignoring any cached result and calling delegate to parse input.";
LABEL_11:
    _os_log_impl(&dword_1DCAFC000, v33, v34, v36, v35, 2u);
    OUTLINED_FUNCTION_80();
LABEL_12:

    v38 = *(v30 + 80);
    v39 = *(v30 + 88);
    type metadata accessor for RCHFlowFrame();
    v40 = v25[2];
    sub_1DCEFEAA8();
    goto LABEL_18;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v42 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v42, qword_1EDE57E00);
  v43 = sub_1DD0DD8EC();
  v44 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v44))
  {
    v45 = OUTLINED_FUNCTION_50_0();
    *v45 = 0;
    _os_log_impl(&dword_1DCAFC000, v43, v44, "RCHDelegateToRCHFlowStrategyAdapter using previously cached intent.", v45, 2u);
    OUTLINED_FUNCTION_80();
  }

  v41 = sub_1DCEDEFCC();
LABEL_18:
  v46 = v41;
  if (v41)
  {
    v47 = v41;
    sub_1DCEDEFF4(0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v48 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v48, qword_1EDE57E00);
    v49 = v47;
    v50 = sub_1DD0DD8EC();
    v51 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      a10 = v53;
      *v52 = 136315138;
      v54 = INIntent.debugDescriptionLite.getter();
      v56 = sub_1DCB10E9C(v54, v55, &a10);

      *(v52 + 4) = v56;
      OUTLINED_FUNCTION_7_59(&dword_1DCAFC000, v57, v58, "RCHDelegateToRCHFlowStrategyAdapter makeIntentFromParse resulted in: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v65 = v49;
    v27(v46, 0);

    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    if (qword_1EDE4F908 != -1)
    {
      swift_once();
    }

    sub_1DD0DE6DC();
    sub_1DD0DD7EC();
    v61 = *(v30 + 80);
    v62 = *(v30 + 88);
    type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter.AdapterError();
    swift_getWitnessTable();
    v63 = swift_allocError();
    v27(v63, 1);
    OUTLINED_FUNCTION_12_1();
  }
}

uint64_t sub_1DCEDF778()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_1DCD91F74();
  }

  return v1;
}

void sub_1DCEDF8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
  v10 = v5[2];
  sub_1DCEDFC80(a4, a5);
}

void sub_1DCEDFA60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v24 - v9;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v11, qword_1EDE57E00);
  v12 = a1;
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_1DD0DF18C();
    v19 = sub_1DCB10E9C(v17, v18, &v25);

    *(v15 + 4) = v19;
    OUTLINED_FUNCTION_7_59(&dword_1DCAFC000, v20, v21, "No equivalent API method to adapt. Sending genric error message for error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v22 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1DD100228;
  v23[5] = 0;
  v23[6] = a2;
  v23[7] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCEDFC80(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t RCHDelegateToRCHFlowStrategyAdapter.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v2 = *(v0 + 64);

  return v0;
}

uint64_t RCHDelegateToRCHFlowStrategyAdapter.__deallocating_deinit()
{
  RCHDelegateToRCHFlowStrategyAdapter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEDFE84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCEDFEC0(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

_BYTE *sub_1DCEE0130(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCEE0238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEE0250()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v4 = v0;
  v4[1] = sub_1DCEE0340;
  v5 = v0[2];
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCEE0340()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCBCD1A8, 0, 0);
  }

  else
  {
    v5 = *(v2 + 48);

    OUTLINED_FUNCTION_29();

    return v6();
  }
}

uint64_t sub_1DCEE0508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCEE0520()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v4 = v0;
  v4[1] = sub_1DCEE0610;
  v5 = v0[2];
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCEE0610()
{
  OUTLINED_FUNCTION_42();
  v3 = *(*v1 + 56);
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCBCF9FC, 0, 0);
  }

  else
  {
    v5 = *(v2 + 48);

    OUTLINED_FUNCTION_29();

    return v6();
  }
}

uint64_t sub_1DCEE073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  (*(v12 + 16))(&v20 - v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v16, v11);
  v21(a3, a4, a6, v18);
}

void sub_1DCEE0944(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE09F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB22EC8;

  return sub_1DCEE0238(a1, a2, a3);
}

uint64_t sub_1DCEE0AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCEE0D08;

  return sub_1DCEE0508(a1, a2, a3);
}

uint64_t objectdestroy_9Tm_3()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCEE0D5C(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCB18FF0(a2, v4 + 24);
  return v4;
}

void sub_1DCEE0F08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE0FD4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_9(a1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  (*(v9 + 16))(v8 - v7, v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C18, &qword_1DD100A20);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8(v15, v17);
    v10 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v11 = *(v10 + 16);
    v12 = OUTLINED_FUNCTION_20();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1DCB16DB0(v15, &qword_1ECCA1C20, &qword_1DD0E1B70);
    sub_1DD0DF18C();
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCEE1134@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3[3] - 8) + 32))(a4, v17, a3[3]);
  }

  else
  {
    (*(v8 + 32))(v12, v17, v7);
    a1(v12);
    (*(v8 + 8))(v12, v7);
    v20 = a3[3];
  }

  v21 = a3[4];
  sub_1DD0DF22C();
  return swift_storeEnumTagMultiPayload();
}

void sub_1DCEE1348()
{
  OUTLINED_FUNCTION_4_82();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter();
  OUTLINED_FUNCTION_116_6();

  RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)();
}

void RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_75_13();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v0;
  v4[4] = v3;
  v4[5] = v2;
  v5 = *(v0 + 32);
  sub_1DD0DCF8C();
}

void RCHFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_10_2();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  v13 = __swift_project_value_buffer(v12, qword_1EDE57E00);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v11, v13, v12);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v12);
  sub_1DCB099BC(v11, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_1DCB16DB0(v7, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_83();
      v25 = swift_slowAlloc();
      *v20 = 136315650;
      v21 = sub_1DD0DEC3C();
      v23 = sub_1DCB10E9C(v21, v22, &v25);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 84;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_1DCB10E9C(0xD000000000000039, 0x80000001DD121910, &v25);
      _os_log_impl(&dword_1DCAFC000, v18, v19, "FatalError at %s:%lu - %s", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_80();
    }

    (*(v14 + 8))(v7, v12);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000039, 0x80000001DD121910);
}

void RCHFlowStrategy.makeErrorResponse(error:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  v12 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  OUTLINED_FUNCTION_41_4();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DD100600;
  v13[5] = 0;
  v13[6] = a2;
  v13[7] = a3;
  sub_1DD0DCF8C();
}

void sub_1DCEE187C(uint64_t a1, char a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[3] = a6;
  v11[4] = a1;
  v12 = a2 & 1;
  v11[2] = a5;
  v7 = *(*(a6 + 8) + 8);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DF22C();
  type metadata accessor for AnnotatedIntent();
  sub_1DCEE1134(sub_1DCEED4AC, v11, v8, &v13);
  v9 = v13;
  v10 = v14;
  a3(v13, v14);
  sub_1DCC8BC7C(v9, v10);
}

uint64_t sub_1DCEE1994@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(*(a2 + 8) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent();
  v9 = v4;
  type metadata accessor for ParameterHints();
  v6 = swift_allocObject();
  type metadata accessor for ParameterClause();
  v7 = v4;
  *(v6 + 16) = sub_1DD0DDE9C();
  result = sub_1DCB5C758(&v9, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1DCEE1A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)();
}

uint64_t RCHFlowStrategyAsync.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t RCHFlowStrategyAsync.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCEE1BC0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCEE1C30(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1DCEE1C6C(a1);
}

uint64_t sub_1DCEE1CE0(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 16);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 96);
  return v2(a1, v3);
}

uint64_t sub_1DCEE1D54(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE1DA0, 0, 0);
}

uint64_t sub_1DCEE1DA0()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = OUTLINED_FUNCTION_56_6();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v3;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = *(v2 + 80);
  OUTLINED_FUNCTION_60_14(*(v2 + 88));
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent();
  OUTLINED_FUNCTION_17();
  *v7 = v9;
  v7[1] = sub_1DCEE1EB0;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v10);
}

uint64_t sub_1DCEE1EB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCEE1FB0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 16) + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DCEE2024(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = sub_1DD0DE47C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  v15 = *(v5 + 96);
  (*(v10 + 16))(&v19 - v13, a1, v9);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = v6;
  (*(v10 + 32))(v17 + v16, v14, v9);
  (*(v6 + 24))(v19, v20, sub_1DCEED134, v17, v8, v6);
}

uint64_t sub_1DCEE222C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = a2 & 1;
  v5 = *(*(a5 + 8) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v8, v6);
}

uint64_t sub_1DCEE22D0(uint64_t a1)
{
  v2 = *(*(*v1 + 88) + 40);
  v3 = *(*v1 + 80);
  v4 = v1 + *(*v1 + 96);
  return v2(a1, v3);
}

uint64_t sub_1DCEE2344(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2368, 0, 0);
}

uint64_t sub_1DCEE2368()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCEE2454(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - v10;
  v12 = v5[12];
  (*(v7 + 16))(&v16 - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  (*(v5[11] + 48))(a3, sub_1DCEF96B0, v14, v5[10]);
}

uint64_t sub_1DCEE2600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2624, 0, 0);
}

uint64_t sub_1DCEE2624()
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
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCEE26F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  (*(*(v6[11] + 8) + 32))(a3, v18, sub_1DCEF96B0, v15, v6[10]);
}

uint64_t sub_1DCEE28B4(uint64_t a1)
{
  sub_1DCB099BC(a1, v3, &qword_1ECCA1F70, &qword_1DD0E2BD0);
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

uint64_t sub_1DCEE2954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2978, 0, 0);
}

uint64_t sub_1DCEE2978()
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
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCEE2A4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  (*(*(v6[11] + 8) + 40))(a3, v18, sub_1DCEF96B0, v15, v6[10]);
}

uint64_t sub_1DCEE2C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2C2C, 0, 0);
}

uint64_t sub_1DCEE2C2C()
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
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCEE2D00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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
  (*(*(v6[11] + 8) + 48))(a3, v18, sub_1DCEF96B0, v15, v6[10]);
}

uint64_t sub_1DCEE2EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE2EE4, 0, 0);
}

uint64_t sub_1DCEE2EE4()
{
  OUTLINED_FUNCTION_39();
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
  OUTLINED_FUNCTION_17();
  *v6 = v7;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DCEE2FE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  (*(*(*(v7[11] + 8) + 24) + 24))(a3, v18, v19, sub_1DCEF96B0, v16, v7[10]);
}

uint64_t sub_1DCEE31A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE31C4, 0, 0);
}

uint64_t sub_1DCEE31C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_4_3(v2);
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_121_1(v4);
  type metadata accessor for SiriKitIntentExecutionBehavior();
  OUTLINED_FUNCTION_17();
  *v1 = v5;
  v1[1] = sub_1DCD76388;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DDE0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DCEE3290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F8, &qword_1DD0F2098);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  v13 = v6[12];
  (*(v8 + 16))(&v17 - v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v12, v7);
  (*(*(*(v6[11] + 8) + 16) + 40))(a3, v18, sub_1DCD7ABF0, v15, v6[10]);
}

uint64_t sub_1DCEE3450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCEE3478, 0, 0);
}

uint64_t sub_1DCEE3478()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v6 = v7;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DCEE3578(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  (*(*(*(v7[11] + 8) + 8) + 16))(a3, v18, v19, sub_1DCEED080, v16, v7[10]);
}

uint64_t sub_1DCEE37A8()
{
  v0 = *sub_1DCEE3738();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCEE3820(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCBCF08C;

  return sub_1DCEE1D54(a1, a2);
}

uint64_t sub_1DCEE38EC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCEE2344(a1, a2);
}

uint64_t sub_1DCEE3998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCEE2600(a1, a2, a3);
}

uint64_t sub_1DCEE3A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCEE2954(a1, a2, a3);
}

uint64_t sub_1DCEE3B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCEE2C08(a1, a2, a3);
}

uint64_t sub_1DCEE3BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCEE3450(a1, a2, a3, a4);
}

uint64_t sub_1DCEE3C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCEE2EBC(a1, a2, a3, a4);
}

uint64_t sub_1DCEE3D3C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCBCF434;

  return sub_1DCEE31A0(a1, a2);
}

void sub_1DCEE3E08()
{
  OUTLINED_FUNCTION_75_13();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  OUTLINED_FUNCTION_49_3();
  sub_1DCEE3E68();
}

void sub_1DCEE3E68()
{
  OUTLINED_FUNCTION_50();
  v33[3] = v1;
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_1DD0DB04C();
  v12 = OUTLINED_FUNCTION_9(v11);
  v33[1] = v13;
  v33[2] = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_105_8(v17);
  v19 = *(v18 + 80);
  OUTLINED_FUNCTION_0_1();
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v33 - v26;
  v33[6] = v9;
  sub_1DCB17D04(v9, &v38);
  v33[8] = v7;
  sub_1DCB17D04(v7, v39);
  v33[7] = v5;
  sub_1DCB17D04(v5, v36);
  v28 = type metadata accessor for OutputPublisherAsyncAdapter();
  v29 = swift_allocObject();
  sub_1DCAFF9E8(v36, v29 + 16);
  v39[8] = v28;
  v39[9] = &protocol witness table for OutputPublisherAsyncAdapter;
  v39[5] = v29;
  v30 = *(v10 + 88);
  type metadata accessor for RCHFlowStrategyAsyncAdapter();
  OUTLINED_FUNCTION_10_64();
  OUTLINED_FUNCTION_21_39();
  type metadata accessor for RCHFlowAsync();
  v33[4] = v21;
  v33[5] = v19;
  (*(v21 + 16))(v27, v35, v19);
  v37[5] = sub_1DCEE1C30(v27);
  sub_1DCB17D04(v34, v37);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v31, v32);
  sub_1DD0DCF8C();
}

void sub_1DCEE42F0()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  OUTLINED_FUNCTION_22_2();
  sub_1DCEE4360();
}

void sub_1DCEE4360()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_72_17(v1, v2, v3, v4, v5, v6);
  v8 = v7;
  v9 = *v0;
  v10 = sub_1DD0DB04C();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  v22 = *(v9 + 80);
  OUTLINED_FUNCTION_0_1();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_78_17();
  sub_1DCB17D04(v8, v9 + 40);
  OUTLINED_FUNCTION_128_2();
  type metadata accessor for OutputPublisherAsyncAdapter();
  v19 = OUTLINED_FUNCTION_55();
  sub_1DCAFF9E8(v23, v19 + 16);
  v25 = v9;
  v26 = &protocol witness table for OutputPublisherAsyncAdapter;
  v24 = v19;
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v20, v21);
  OUTLINED_FUNCTION_75_0();
  sub_1DD0DCB0C();
}

void sub_1DCEE47CC()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  OUTLINED_FUNCTION_22_2();
  sub_1DCEE483C();
}

void sub_1DCEE483C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_72_17(v1, v2, v3, v4, v5, v6);
  v8 = v7;
  v9 = *v0;
  v10 = sub_1DD0DB04C();
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_105_8(v15);
  v24 = *(v16 + 80);
  OUTLINED_FUNCTION_0_1();
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_78_17();
  sub_1DCB17D04(v8, v9 + 40);
  OUTLINED_FUNCTION_128_2();
  type metadata accessor for OutputPublisherAsyncAdapter();
  v21 = OUTLINED_FUNCTION_55();
  sub_1DCAFF9E8(v25, v21 + 16);
  v27 = v9;
  v28 = &protocol witness table for OutputPublisherAsyncAdapter;
  v26 = v21;
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v22, v23);
  OUTLINED_FUNCTION_75_0();
  sub_1DD0DCB0C();
}

void sub_1DCEE4CA4()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_0_76();
  swift_allocObject();
  OUTLINED_FUNCTION_22_2();
  sub_1DCEE4CF4();
}

void sub_1DCEE4CF4()
{
  OUTLINED_FUNCTION_50();
  v48 = v2;
  v49 = v1;
  v43[4] = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v50 = v12;
  v44 = *v0;
  v13 = sub_1DD0DB04C();
  v14 = OUTLINED_FUNCTION_9(v13);
  v43[2] = v15;
  v43[3] = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14, v18);
  OUTLINED_FUNCTION_16();
  v43[1] = v20 - v19;
  v21 = type metadata accessor for Input(0);
  v22 = OUTLINED_FUNCTION_20_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  OUTLINED_FUNCTION_16();
  v43[5] = v27 - v26;
  v28 = *(v44 + 80);
  OUTLINED_FUNCTION_0_1();
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v43 - v35;
  v47 = v11;
  sub_1DCB17D04(v11, &v53);
  v46 = v9;
  sub_1DCB17D04(v9, v54);
  v45 = v7;
  sub_1DCB17D04(v7, v51);
  v37 = type metadata accessor for OutputPublisherAsyncAdapter();
  v38 = swift_allocObject();
  sub_1DCAFF9E8(v51, v38 + 16);
  v54[8] = v37;
  v54[9] = &protocol witness table for OutputPublisherAsyncAdapter;
  v54[5] = v38;
  v39 = *(v44 + 88);
  type metadata accessor for RCHFlowStrategyAsyncAdapter();
  OUTLINED_FUNCTION_10_64();
  OUTLINED_FUNCTION_21_39();
  type metadata accessor for RCHFlowAsync();
  v43[6] = v30;
  v43[7] = v28;
  v40 = *(v30 + 16);
  v44 = v5;
  v40(v36, v5, v28);
  v52[5] = sub_1DCEE1C30(v36);
  sub_1DCB17D04(v50, v52);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  OUTLINED_FUNCTION_7_60();
  sub_1DCEED3AC(v41, v42);
  sub_1DD0DCF8C();
}

void sub_1DCEE51D4()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v22 = *v7;
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v23 = type metadata accessor for RCHFlowAsync.State();
  OUTLINED_FUNCTION_9(v23);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  (*(v15 + 16))(v21 - v20, v6, v9);
  sub_1DCB17D04(v4, &v25);
  sub_1DCB843DC(v2, &v24);
  OUTLINED_FUNCTION_49_3();
  sub_1DCB84438();
}

void RCHFlow.__allocating_init(strategy:childFlowFactory:)()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  sub_1DCB4BA5C();
}

void RCHFlow.__allocating_init(strategy:childFlowFactory:app:intent:)()
{
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  sub_1DCB4BA5C();
}

void RCHFlow.__allocating_init(strategy:childFlowFactory:input:intent:)()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_70();
  v2 = type metadata accessor for Input(v1);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  sub_1DCB4BA5C();
}

uint64_t sub_1DCEE5C28()
{
  v1 = *(v0 + 16);
  sub_1DCEE60E4();
  return v2 & 1;
}

uint64_t sub_1DCEE5C50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCEE5C7C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "RCHFlow deferring to RCHFlowAsync for execute()");
    OUTLINED_FUNCTION_80();
  }

  v7 = v0[3];

  v8 = *(v7 + 16);
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_1DCB3F98C;
  v10 = v0[2];

  sub_1DCB7EFB4();
}

uint64_t RCHFlow.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RCHFlow.__deallocating_deinit()
{
  RCHFlow.deinit();
  OUTLINED_FUNCTION_0_76();

  return swift_deallocClassInstance();
}

void sub_1DCEE5E0C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCEE5ED0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCEE5C50(a1);
}

uint64_t sub_1DCEE5F90@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_8_2();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for RCHFlowAsync.State();
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_4_1();
  sub_1DCB7AC2C(v2);
  OUTLINED_FUNCTION_19();
  result = swift_getEnumCaseMultiPayload();
  if (result == 10)
  {
    v17 = *(v2 + 16);
    *a1 = *v2;
    *(a1 + 16) = v17;
  }

  else
  {
    type metadata accessor for RCHFlowAsync.RCHFlowError();
    OUTLINED_FUNCTION_1_107();
    swift_getWitnessTable();
    v18 = OUTLINED_FUNCTION_64_16();
    sub_1DCB7AC2C(v19);
    OUTLINED_FUNCTION_40_1();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v18 | 0x4000000000000000;
    v23 = *(v11 + 8);
    v24 = OUTLINED_FUNCTION_19();
    return v25(v24);
  }

  return result;
}

void sub_1DCEE60E4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_8_2();
  v8 = *(v7 + 88);
  OUTLINED_FUNCTION_25_0();
  v9 = type metadata accessor for RCHFlowAsync.State();
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  OUTLINED_FUNCTION_10_2();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v50[-v21];
  sub_1DCB7AC2C(&v50[-v21]);
  v23 = sub_1DCEE6538(v9);
  v24 = *(v12 + 8);
  v25 = OUTLINED_FUNCTION_19();
  v24(v25);
  if (!v23)
  {
    OUTLINED_FUNCTION_55_1();
    v31 = v1 + *(v30 + 96);
    (*(v8 + 16))(&v51, v3, v6, v8);
    if (v51)
    {
      if (v51 != 1)
      {
        goto LABEL_13;
      }

      sub_1DCB7AC2C(v18);
      OUTLINED_FUNCTION_111_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 9)
      {
        v44 = *v18;
        v43 = v18[1];
        v45 = *(*(v8 + 8) + 8);
        OUTLINED_FUNCTION_133_1();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DCF8C();
      }

      if (EnumCaseMultiPayload == 7)
      {
        v38 = *v18;
        type metadata accessor for Input(255);
        OUTLINED_FUNCTION_84_10();
        OUTLINED_FUNCTION_133_1();
        OUTLINED_FUNCTION_6_0();
        type metadata accessor for RCHFlowSharedData();
        OUTLINED_FUNCTION_6_0();
        sub_1DD0DE97C();
        OUTLINED_FUNCTION_21_39();
        v39 = *(OUTLINED_FUNCTION_88_2() + 48);
        OUTLINED_FUNCTION_2_94();
        v40 = OUTLINED_FUNCTION_90_0();
        sub_1DCEED3F8(v40, v41, v42);
        *(v22 + v39) = v38;
        OUTLINED_FUNCTION_19();
        swift_storeEnumTagMultiPayload();
        sub_1DD0DCF8C();
      }

      if (EnumCaseMultiPayload != 1)
      {
        type metadata accessor for Input(255);
        OUTLINED_FUNCTION_84_10();
        OUTLINED_FUNCTION_133_1();
        OUTLINED_FUNCTION_6_0();
        type metadata accessor for RCHFlowSharedData();
        OUTLINED_FUNCTION_6_0();
        sub_1DD0DE97C();
        OUTLINED_FUNCTION_21_39();
        v46 = *(OUTLINED_FUNCTION_88_2() + 48);
        OUTLINED_FUNCTION_2_94();
        v47 = OUTLINED_FUNCTION_90_0();
        sub_1DCEED3F8(v47, v48, v49);
        *(v22 + v46) = 0;
        OUTLINED_FUNCTION_19();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_104_5();
      }

      v33 = OUTLINED_FUNCTION_111_4();
      v24(v33);
      type metadata accessor for Input(255);
      OUTLINED_FUNCTION_84_10();
      OUTLINED_FUNCTION_133_1();
      OUTLINED_FUNCTION_6_0();
      type metadata accessor for RCHFlowSharedData();
      OUTLINED_FUNCTION_6_0();
      sub_1DD0DE97C();
      OUTLINED_FUNCTION_21_39();
      v34 = *(OUTLINED_FUNCTION_88_2() + 48);
      OUTLINED_FUNCTION_2_94();
      v35 = OUTLINED_FUNCTION_90_0();
      sub_1DCEED3F8(v35, v36, v37);
      *(v22 + v34) = 0;
      OUTLINED_FUNCTION_19();
    }

    else
    {
      v22[1] = 0;
      v22[2] = 0;
      *v22 = 0x8000000000000000;
      OUTLINED_FUNCTION_19();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_104_5();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v26 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v29);
    _os_log_impl(&dword_1DCAFC000, v27, v28, "RCHFlowAsync is in a completed state. Returning false from on(input:) without consulting strategy.", v9, 2u);
    OUTLINED_FUNCTION_80();
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

BOOL sub_1DCEE6538(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = swift_getEnumCaseMultiPayload() == 10;
  (*(v3 + 8))(v6, a1);
  return v7;
}

uint64_t sub_1DCEE6620()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 760);
  *v2 = *v0;
  *(v1 + 768) = v5;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEE670C()
{
  v1 = *(v0 + 768);
  OUTLINED_FUNCTION_80_11();
  sub_1DCF34488(*(v3 + *(v2 + 144)), v4);
}

uint64_t sub_1DCEE691C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 800);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 808) = v0;

  if (!v0)
  {
    v9 = *(v3 + 792);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEE6A1C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[98];
  v0[102] = v0[66];
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE6B64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = v3[105];
  v5 = v3[104];
  v6 = v3[103];
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v10 + 848) = v9;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DCEE6C80()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 848);
  OUTLINED_FUNCTION_80_11();
  sub_1DCF34488(*(v3 + *(v2 + 144)), v4);
}

uint64_t sub_1DCEE6E0C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 880);
  *v2 = *v0;
  *(v1 + 888) = v5;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCEE6EF8()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[111];
  v9 = v0[109];
  v2 = v0[108];
  v3 = v0[90];
  v4 = v0[88];
  v5 = v0[76];
  v6 = v0[75];
  v7 = v0[71];
  v8 = v0[70];
  *v3 = v0[107];
  v3[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEE70E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 920);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 928) = v0;

  if (!v0)
  {
    v9 = *(v3 + 912);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCEE71E0()
{
  OUTLINED_FUNCTION_79();
  v2 = *(v1 + 904);
  sub_1DCAFF9E8((v1 + 56), v1 + 16);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "RCHFlow successfully sent error dialog. Transitioning to complete.", v0, 2u);
    OUTLINED_FUNCTION_80();
  }

  v6 = *(v1 + 896);
  v7 = *(v1 + 720);
  v8 = *(v1 + 704);
  v9 = *(v1 + 568);

  *v7 = v6 | 0x4000000000000000;
  *(v7 + 8) = xmmword_1DD0E5100;
  swift_storeEnumTagMultiPayload();
  v10 = v6;
  sub_1DCB7C864(v7);
}

uint64_t sub_1DCEE7560()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v5 = *(v4 + 944);
  v6 = *(v4 + 936);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB16DB0(v2 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16DB0(v2 + 376, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCEE768C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 560);

  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
  OUTLINED_FUNCTION_4_95();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

void sub_1DCEE7744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 808);
  v26 = *(v22 + 792);
  v27 = *(v22 + 592);
  v28 = *(v22 + 576);

  *(v22 + 536) = v25;
  v29 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    v30 = (*(*(v22 + 584) + 88))(*(v22 + 592), *(v22 + 576));
    if (v30 == *off_1E8648628)
    {
      v31 = v30;
      v32 = *(v22 + 784);

      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_50_0();
        *v35 = 0;
        _os_log_impl(&dword_1DCAFC000, v33, v34, "RCHFlow timed out while attempting to parse an Intent from input", v35, 2u);
        OUTLINED_FUNCTION_80();
      }

      v36 = *(v22 + 776);
      v37 = *(v22 + 720);
      v38 = *(v22 + 704);
      v39 = *(v22 + 680);
      v40 = *(v22 + 584);
      v41 = *(v22 + 576);
      v42 = *(v22 + 568);
      v69 = *(v22 + 560);

      sub_1DCEED3AC(&qword_1ECCA9868, off_1E8648630);
      v43 = OUTLINED_FUNCTION_34();
      (*(v40 + 104))(v44, v31, v41);
      *v37 = v43;
      swift_storeEnumTagMultiPayload();
      sub_1DCB7C864(v37);
    }

    (*(*(v22 + 584) + 8))(*(v22 + 592), *(v22 + 576));
  }

  v45 = *(v22 + 808);
  v46 = *(v22 + 784);

  v47 = v45;
  v48 = sub_1DD0DD8EC();
  v49 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v22 + 808);
    v51 = OUTLINED_FUNCTION_151();
    v52 = OUTLINED_FUNCTION_83();
    a11 = v52;
    *v51 = 136315138;
    swift_getErrorValue();
    v54 = *(v22 + 480);
    v53 = *(v22 + 488);
    v55 = *(v22 + 496);
    v56 = sub_1DD0DF18C();
    v58 = sub_1DCB10E9C(v56, v57, &a11);

    *(v51 + 4) = v58;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v59, v60, "RCHFlow received an error while attempting to parse an Intent from input: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  v61 = *(v22 + 808);
  v62 = *(v22 + 776);
  v63 = *(v22 + 720);
  v64 = *(v22 + 704);
  v65 = *(v22 + 680);
  v66 = *(v22 + 568);
  v67 = *(v22 + 560);
  *v63 = v61;
  swift_storeEnumTagMultiPayload();
  v68 = v61;
  sub_1DCB7C864(v63);
}

void sub_1DCEE7AE4()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v1 = v0[116];
  v2 = v0[114];
  v3 = v0[112];
  v4 = v0[90];
  v5 = v0[88];
  v6 = v0[71];
  v7 = v0[70];

  v4[1] = 0;
  v4[2] = 0;
  *v4 = v1 | 0x4000000000000000;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  sub_1DCB7C864(v4);
}

uint64_t sub_1DCEE7C24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *a2;
  v4[7] = *a2;
  v6 = *(*(type metadata accessor for Parse(0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v7 = *(v5 + 80);
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCEE7D50, 0, 0);
}

uint64_t sub_1DCEE7D50()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  (*(v0[10] + 16))(v0[11], v0[4] + *(*v0[4] + 96), v0[9]);
  v4 = type metadata accessor for Input(0);
  sub_1DCEED3F8(v3 + *(v4 + 20), v1, type metadata accessor for Parse);
  if (v2)
  {
    v5 = *(v0[6] + 24);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  v0[12] = v5;
  v7 = *(v0[7] + 88);
  v0[13] = v7;
  v8 = *(v7 + 24);
  OUTLINED_FUNCTION_8();
  v17 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1DCEE7EF0;
  v13 = v0[11];
  v15 = v0[8];
  v14 = v0[9];

  return v17(v15, v5, v14, v7);
}

uint64_t sub_1DCEE7EF0()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v7 = v4[14];
  *v6 = *v1;
  v5[15] = v0;

  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  v11 = v4[9];
  v12 = v4[8];
  if (v0)
  {

    OUTLINED_FUNCTION_41_23();
    v13 = *(v10 + 8);
  }

  else
  {
    v5[16] = v3;

    OUTLINED_FUNCTION_41_23();
    v16 = *(v10 + 8);
  }

  v14 = OUTLINED_FUNCTION_115_6();
  v15(v14);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_125_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1DCEE80A0()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[16];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  OUTLINED_FUNCTION_60_14(v0[13]);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnnotatedIntent();
  v0[2] = v1;
  v6 = sub_1DCF4142C();
  *v5 = sub_1DCB5C758((v0 + 2), v6);

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCEE8184()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[11];
  v2 = v0[8];

  OUTLINED_FUNCTION_29();
  v4 = v0[15];

  return v3();
}

void sub_1DCEE822C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1DCEE8D48();
}

uint64_t sub_1DCEE82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 96);
  v7 = *(*a2 + 88);
  v8 = *(v7 + 40);
  v9 = *(*a2 + 80);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DCB4AD3C;

  return v13(a1, a3, v9, v7);
}

void sub_1DCEE8454(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  a3(0, *(*v3 + 80), *(*v3 + 88));
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19();
  Flow.deferToExecuteAsync(_:)();
}

void sub_1DCEE84F8()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_99_7();
  v2 = *(v1 + 80);
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_82_7();
  v5 = type metadata accessor for RCHFlowAsync.State();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_10_2();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v55 - v17);
  v19 = v0[1];
  v56 = *v0;
  sub_1DCB7AC2C(v55 - v17);
  OUTLINED_FUNCTION_90_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    switch(v56 >> 62)
    {
      case 1uLL:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v49 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v49, qword_1EDE57E00);
        sub_1DD0DCF8C();
      case 2uLL:
        v36 = *v18;
        v37 = v56 & 0x3FFFFFFFFFFFFFFFLL;
        if (v19)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v38 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
          v39 = sub_1DD0DD8EC();
          v40 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_61_1(v40))
          {
            v41 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v41);
            OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v42, v18, "RCHFlow an error was encountered and handled during app resolution.");
            OUTLINED_FUNCTION_14_3();
          }

          *v14 = v37 | 0x4000000000000000;
          *(v14 + 8) = xmmword_1DD0E5100;
          OUTLINED_FUNCTION_131();
        }

        else
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_1_2();
            swift_once();
          }

          v50 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
          v51 = sub_1DD0DD8EC();
          v52 = sub_1DD0DE6DC();
          if (OUTLINED_FUNCTION_61_1(v52))
          {
            v53 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_97_0(v53);
            OUTLINED_FUNCTION_56_1(&dword_1DCAFC000, v54, v18, "RCHFlow an error was encountered but not handled during app resolution. Attempting to send error response.");
            OUTLINED_FUNCTION_14_3();
          }

          *v14 = v37;
          OUTLINED_FUNCTION_131();
        }

        swift_storeEnumTagMultiPayload();
        sub_1DCBF4C98(v56);
        OUTLINED_FUNCTION_88_11();
      case 3uLL:
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v43 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v43, qword_1EDE57E00);
        v44 = sub_1DD0DD8EC();
        v45 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_61_1(v45))
        {
          v46 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_47_0(v46);
          OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v47, v48, "RCHFlow intent was cancelled during app resolution");
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_45_19(0x8000000000000000);
        OUTLINED_FUNCTION_95_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_88_11();
      default:
        v55[2] = v19;
        v55[3] = v20;
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v55[1] = v2;
        v21 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
        sub_1DD0DCF8C();
    }
  }

  v22 = *(v8 + 8);
  v23 = OUTLINED_FUNCTION_90_0();
  v24(v23);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v25 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
  v26 = sub_1DD0DD8EC();
  v27 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_61_1(v27))
  {
    v28 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_47_0(v28);
    OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v29, v30, "Received an app resolution callback but we are not waiting for app resolution");
    OUTLINED_FUNCTION_37();
  }

  OUTLINED_FUNCTION_82_7();
  type metadata accessor for RCHFlowAsync.RCHFlowError();
  OUTLINED_FUNCTION_1_107();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_75_0();
  v31 = OUTLINED_FUNCTION_34();
  sub_1DCB7AC2C(v32);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v5);
  OUTLINED_FUNCTION_45_19(v31 | 0x4000000000000000);
  OUTLINED_FUNCTION_95_6();
  swift_storeEnumTagMultiPayload();
  sub_1DCB7C864(v14);
}