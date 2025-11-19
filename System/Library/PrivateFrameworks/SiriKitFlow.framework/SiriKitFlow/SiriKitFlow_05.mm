uint64_t sub_1DCB6B83C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v4 = a3;
  if (!v6)
  {
    return 0;
  }

LABEL_7:

  return v4;
}

BOOL sub_1DCB6B8AC()
{
  v1 = sub_1DCB35468(v0, &selRef_text);
  if (v2)
  {
    v3 = v1;
    v4 = v2;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      return 0;
    }
  }

  v7 = sub_1DCB35468(v0, &selRef_speakableText);
  if (!v8)
  {
    return 1;
  }

  v9 = v7;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

void sub_1DCB6B954(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDialogIdentifier_];
}

void sub_1DCB6B9B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setViewId_];
}

void sub_1DCB6BA10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setModelData_];
}

id sub_1DCB6BA68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_1DCB08B14(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1DCB35460(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    return MEMORY[0x1E12A72C0](v4, a1);
  }

  result = sub_1DD0DEB3C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1DCB6BB04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDialogPhase_];
}

void sub_1DCB6BB5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setResponseMode_];
}

void sub_1DCB6BBC0(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  v3 = sub_1DD0DE2DC();

  [a2 setViews_];
}

uint64_t sub_1DCB6BC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_21();
    sub_1DCE06B08();
    v2 = v10;
    v4 = (a1 + 40);
    do
    {
      v7 = *(v4 - 1);
      v8 = *v4;

      swift_dynamicCast();
      v10 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1DCE06B08();
        v2 = v10;
      }

      *(v2 + 16) = v5 + 1;
      sub_1DCB20B30(&v9, (v2 + 32 * v5 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1DCB6BD3C(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();

  [a2 setCoordinationOptions_];
}

uint64_t sub_1DCB6BDAC(void *a1)
{
  v1 = [a1 views];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t sub_1DCB6BE28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 112);
  v8 = *v1;
  *(v3 + 120) = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v6 = sub_1DCF5D7FC;
  }

  else
  {
    v6 = sub_1DCB6BF34;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCB6BF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_25();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_125();
  a18 = v20;
  v23 = *(v20 + 120);
  if (v23)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v24 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v24, qword_1EDE57E00);
    v25 = v23;
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_151();
      v29 = OUTLINED_FUNCTION_83();
      a10 = v29;
      *v28 = 136315138;
      v30 = sub_1DCB6BE1C(v25);
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v30 = 0x3E6C696E3CLL;
        v32 = 0xE500000000000000;
      }

      v33 = sub_1DCB10E9C(v30, v32, &a10);

      *(v28 + 4) = v33;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v34, v35, "ResponseFactory: Adding response command aceId: %s to response Output");
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    MEMORY[0x1E12A6920]();
    if (*((*(v20 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  v36 = *(v20 + 64);
  if (*(v36 + *(type metadata accessor for OutputGenerationManifest() + 52)))
  {

    sub_1DCBB920C(v37);
  }

  v38 = *(v20 + 104);
  if (v38)
  {
    if (sub_1DCB08B14(*(v20 + 104)))
    {
      v39 = qword_1EDE4F900;

      if (v39 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v40 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v40, qword_1EDE57E00);

      v41 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v42))
      {
        v43 = OUTLINED_FUNCTION_151();
        *v43 = 134217984;
        *(v43 + 4) = sub_1DCB08B14(v38);

        OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v44, v45, "Adding additional %ld hint commands");
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      sub_1DCBB920C(v38);
    }

    sub_1DCBBF7D0(*(v20 + 96), *(v20 + 104));
  }

  v46 = *(v20 + 48);
  v47 = *(v20 + 8);
  OUTLINED_FUNCTION_96_0();

  return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

void OUTLINED_FUNCTION_239()
{

  JUMPOUT(0x1E12A66E0);
}

uint64_t OUTLINED_FUNCTION_90_1()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
}

uint64_t OUTLINED_FUNCTION_90_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_90_4(__int128 *a1)
{
  result = sub_1DCAFF9E8(a1, v2 + 32);
  *(v2 + 72) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1DCB10E9C(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_90_6(uint64_t result)
{
  v2 = *(v1 - 128);
  *(result + 16) = *(v1 - 120);
  *(result + 24) = v2;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_90_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = result;
  v4[9] = a2;
  v4[10] = a3;
  v4[11] = a4;
  v5 = *v4;
  return result;
}

void OUTLINED_FUNCTION_90_9()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void OUTLINED_FUNCTION_90_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

id OUTLINED_FUNCTION_90_12()
{
  *(v1 + 16) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_90_13()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t sub_1DCB6C344()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 88) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1DCB6C478, 0, 0);
  }
}

uint64_t sub_1DCB6C478()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(type metadata accessor for OutputGenerationManifest() + 48);
  v6 = type metadata accessor for AceOutput();
  v4[3] = v6;
  v4[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v4);
  sub_1DCB09910(v2 + v5, boxed_opaque_existential_1Tm + v6[7], &unk_1ECCA3270, &qword_1DD0E0F70);
  *&v8 = OUTLINED_FUNCTION_22_37();
  *(v0 + 16) = v8;
  v9 = v6[9];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v6[8];
  v15 = *MEMORY[0x1E69D0678];
  v16 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_2(v16);
  (*(v17 + 104))(boxed_opaque_existential_1Tm + v14, v15);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  v18 = v3;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v6[10]) = 0;
  *boxed_opaque_existential_1Tm = v1;
  boxed_opaque_existential_1Tm[1] = v18;
  *(boxed_opaque_existential_1Tm + 80) = 1;
  OUTLINED_FUNCTION_29();

  return v19();
}

uint64_t sub_1DCB6C5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3280, &unk_1DD0E23D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActiveCallCheckFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DCB6C90C()
{
  result = qword_1EDE46368;
  if (!qword_1EDE46368)
  {
    sub_1DD0DCC3C();
  }

  return result;
}

uint64_t dispatch thunk of ConversationSELFHelper.withExecutionFlowPluginInputTime<A>(rcId:hypothesisId:_:)()
{
  OUTLINED_FUNCTION_17_14();
  v8 = *(v0 + 320) + **(v0 + 320);
  v1 = *(*(v0 + 320) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_22(v3);

  return v6(v5);
}

void SiriEnvironment.sessionConfigurationProvider.getter()
{
  type metadata accessor for SessionConfigurationProvider();
  OUTLINED_FUNCTION_0_113(&qword_1EDE46EA0);

  sub_1DD0DCA7C();
}

void sub_1DCB6CB10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E90, &qword_1DD0E26F0);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEE0, &qword_1DD10D518);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = OUTLINED_FUNCTION_80_10();
  sub_1DCB099BC(v7, v6, &qword_1ECCA1E90, &qword_1DD0E26F0);
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v8, v9, v10);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB6CC60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UserIdentityProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void sub_1DCB6CD14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCACEF0, &unk_1DD10D528);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_132();
  sub_1DCB4A3FC(v0, v1, v2);
  sub_1DD0DCF8C();
}

void SiriEnvironment.nlRoutingDecision.getter()
{
  type metadata accessor for NLRoutingDecisionProvider();
  OUTLINED_FUNCTION_0_70(&qword_1EDE47C00);

  sub_1DD0DCA7C();
}

void SiriEnvironment.flowRedirectContextProvider.setter()
{
  type metadata accessor for FlowRedirectContextProvider();
  OUTLINED_FUNCTION_0_53(&qword_1EDE4AE50);

  sub_1DD0DCA8C();
}

void FlowTaskProvider.__allocating_init(id:isClientInitiated:creationTime:)()
{
  OUTLINED_FUNCTION_18_3();
  swift_allocObject();
  FlowTaskProvider.init(id:isClientInitiated:creationTime:)();
}

void sub_1DCB6CF38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCF8C();
}

void *sub_1DCB6D03C(void *a1, char a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v47 = a3;
  v48 = a6;
  v49 = a5;
  v50 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v45 - v11;
  v13 = sub_1DD0DB04C();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4208, &qword_1DD0EB1E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v45 - v25;
  v27 = sub_1DD0DB3BC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [objc_allocWithZone(MEMORY[0x1E69CE980]) init];
  if (!v33)
  {
    return 0;
  }

  v34 = v33;
  if (a2 != 2 && v50 && v49 != 2)
  {
    v36 = a2 & 1;
    v37 = v49;
    [v33 setIsExistingFlowSelected_];
    [v34 setIsInterpretableAsUniversalCommand_];
    sub_1DCB6D474(v47, v50, v34);
    sub_1DCB099BC(v48, v26, &qword_1ECCA4208, &qword_1DD0EB1E0);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      v38 = &qword_1ECCA4208;
      v39 = &qword_1DD0EB1E0;
      v40 = v26;
    }

    else
    {
      (*(v28 + 32))(v32, v26, v27);
      sub_1DD0DB7CC();
      v41 = v46;
      if (__swift_getEnumTagSinglePayload(v12, 1, v46) != 1)
      {
        v42 = v45;
        (*(v45 + 32))(v21, v12, v41);
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        (*(v42 + 16))(v18, v21, v41);
        v43 = sub_1DCB0DEDC(v18);
        [v34 setParseHypothesisId_];

        (*(v42 + 8))(v21, v41);
        (*(v28 + 8))(v32, v27);
        goto LABEL_14;
      }

      (*(v28 + 8))(v32, v27);
      v38 = &qword_1ECCA2618;
      v39 = &unk_1DD0E5C50;
      v40 = v12;
    }

    sub_1DCB0E9D8(v40, v38, v39);
    [v34 setParseHypothesisId_];
LABEL_14:
    [a1 setDecisionEngineResponseReported_];

    v44 = a1;
    return a1;
  }

  return 0;
}

void sub_1DCB6D474(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setFlowHandlerId_];
}

uint64_t dispatch thunk of ConversationSELFHelper.withExecutionCommitTime<A>(rcId:hypothesisId:_:)()
{
  OUTLINED_FUNCTION_17_14();
  v8 = *(v0 + 376) + **(v0 + 376);
  v1 = *(*(v0 + 376) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_22(v3);

  return v6(v5);
}

void *sub_1DCB6D608(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void sub_1DCB6D640(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  sub_1DCB0D344();
  if (v11 && (v12 = v11, v33 = sub_1DCB6D03C(v11, a5, a1, a2, a4, a3), v12, v33))
  {
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    v13();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v15 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v15, qword_1EDE57DA0);
    v34 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v16, v17, v18, v19, v20, v21, v22, v23, v31, v34))
    {
      v24 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v24);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v25, v26, "[ConversationSELFHelper] decisionEngineReported failed to be emitted", v27, v28, v29, v30, v32, v33);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

uint64_t sub_1DCB6D758()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_41_12(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v11 = *(v10 + 64) + 15;
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DCB17C3C(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 584) = __swift_project_value_buffer(a9, a2);

  return sub_1DD0DD8EC();
}

uint64_t OUTLINED_FUNCTION_100_7(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v3;
  *(result + 12) = 2048;
  *(result + 14) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v12 + *(v13 + 124)) = 2;
  *v12 = a11;
  v12[1] = v11;
  v15 = *(v13 + 20);
}

uint64_t OUTLINED_FUNCTION_100_10(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2 | 0xEE00293A5F3A0000;

  return sub_1DCB10E9C(a1, v4, (v2 - 96));
}

uint64_t sub_1DCB6D900()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  if (v1)
  {
    OUTLINED_FUNCTION_53_0();

    return v10();
  }

  else
  {
    *(v4 + 56) = v0;
    v12 = OUTLINED_FUNCTION_24_4();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DCB6DA20(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCB6DECC(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCB6DA78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t SubmitCommandError.description.getter()
{
  v1 = *v0;
  result = 0x707365526C696E2ELL;
  switch(*(v0 + 8))
  {
    case 1:
      OUTLINED_FUNCTION_105_2();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v10 = v5 | 1;
      v6 = [v1 description];
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_105_2();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_87_1();
      OUTLINED_FUNCTION_133();
      v10 = v7;
      v6 = [v1 description];
LABEL_5:
      v8 = v6;
      sub_1DD0DDFBC();

      v9 = OUTLINED_FUNCTION_131();
      MEMORY[0x1E12A6780](v9);
      goto LABEL_6;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_105_2();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v10 = v3;
      swift_getErrorValue();
      v4 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v4);
LABEL_6:

      return v10;
  }
}

uint64_t sub_1DCB6DCF4()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 112);
  *(v0 + 32) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 112);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  if (v3)
  {

    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    *v5 = v10;
    *(v5 + 8) = v11;
    OUTLINED_FUNCTION_20();
    swift_storeEnumTagMultiPayload();
    sub_1DCB6DECC(v10, v11);
    v9(v5);
    sub_1DCB6DE90(v10, v11);
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_20();
    v14(v13);
  }

  else
  {

    *v5 = v4;
    *(v5 + 8) = 0;
    OUTLINED_FUNCTION_20();
    swift_storeEnumTagMultiPayload();
    v15 = v4;
    v9(v5);

    v16 = *(v6 + 8);
    v17 = OUTLINED_FUNCTION_20();
    v18(v17);
  }

  v19 = *(v0 + 96);
  v20 = *(v0 + 80);

  OUTLINED_FUNCTION_29();

  return v21();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1DCB6DE90(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t sub_1DCB6DEB4(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

id sub_1DCB6DECC(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SubmitCommandError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DCB6DF34(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DCB6DF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AceOutput();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB6DFD4()
{
  v24 = v0;
  v1 = v0[202];
  memcpy(v0 + 152, (v1 + 8), 0x49uLL);
  memcpy(__dst, (v1 + 8), 0x49uLL);
  sub_1DCB41F3C((v0 + 152), (v0 + 162));
  v2 = sub_1DCB6F140();
  memcpy(v0 + 142, __dst, 0x49uLL);
  sub_1DCB431E0((v0 + 142));
  if (v2)
  {
    if ([objc_allocWithZone(MEMORY[0x1E69CF4B0]) init])
    {
      if ([objc_allocWithZone(MEMORY[0x1E69CF4B8]) init])
      {
        v3 = v0[210];
        v4 = v0[206];
        v5 = v0[205];
        v6 = v0[203];
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        v7 = v5;
        v8 = *(v4 + 16);
        v8(v3, v6, v7);
        sub_1DCB0DEDC(v3);
        OUTLINED_FUNCTION_23_13();
        if (!v9)
        {
          OUTLINED_FUNCTION_0_34();
        }

        v10 = v0[209];
        v11 = v0[205];
        v12 = v0[204];
        v13 = v0[203];
        v14 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v14, qword_1EDE57DA0);
        v8(v10, v13, v11);
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_23_13();
      if (!v9)
      {
        OUTLINED_FUNCTION_0_34();
      }

      v16 = OUTLINED_FUNCTION_43_13();
      __swift_project_value_buffer(v16, qword_1EDE57DA0);
      OUTLINED_FUNCTION_48_1();
      sub_1DD0DCF8C();
    }

    OUTLINED_FUNCTION_23_13();
    if (!v9)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v15 = OUTLINED_FUNCTION_43_13();
    __swift_project_value_buffer(v15, qword_1EDE57DA0);
    OUTLINED_FUNCTION_48_1();
    sub_1DD0DCF8C();
  }

  v17 = v0[210];
  v18 = v0[209];
  v19 = v0[208];
  v20 = v0[207];

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_1DCB6F068()
{
  OUTLINED_FUNCTION_42();
  v1[204] = v0;
  v1[203] = v2;
  v1[202] = v3;
  v4 = sub_1DD0DB04C();
  v1[205] = v4;
  OUTLINED_FUNCTION_99(v4);
  v1[206] = v5;
  v7 = *(v6 + 64) + 15;
  v1[207] = swift_task_alloc();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v1[210] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

BOOL sub_1DCB6F140()
{
  v1 = *v0;
  v2 = 0;
  switch(*(v0 + 72))
  {
    case 1:
      v4 = [*v0 dialog];
      sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
      v5 = sub_1DD0DE2EC();

      v6 = sub_1DCB08B14(v5);

      v3 = v6 == 0;
      return !v3;
    case 2:
      v8 = sub_1DCB08B14(*v0);
      v9 = 0;
      break;
    case 3:
      return v2;
    default:
      v3 = *(v0[2] + 16) == 0;
      return !v3;
  }

  do
  {
    v2 = v8 != v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E12A72C0](v9, v1);
    }

    else
    {
      if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v1 + 8 * v9 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      JUMPOUT(0x1DCB6F30CLL);
    }

    v12 = [v10 dialog];
    sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
    v13 = sub_1DD0DE2EC();

    v14 = v13 >> 62 ? sub_1DD0DEB3C() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    ++v9;
  }

  while (!v14);
  return v2;
}

void *sub_1DCB6F31C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CF4C0]) init];
  if (!v1)
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57DA0);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_26(&dword_1DCAFC000, v19, v20, "Failed to create an instance of RFSchemaRFGradingDialogLineTier1");
      OUTLINED_FUNCTION_80();
    }

    v2 = 0;
    goto LABEL_21;
  }

  v2 = v1;
  v3 = [v0 dialogId];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  v4 = OUTLINED_FUNCTION_16_18();
  sub_1DCB6F6EC(v4, v5, v2);
  [v2 setIsApprovedForGrading_];
  if (OUTLINED_FUNCTION_44_10())
  {
    v6 = [v0 fullSpeak];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_19_1();

    OUTLINED_FUNCTION_4_39();
    if (v7 || (v8 = [v0 fullPrint], sub_1DD0DDFBC(), OUTLINED_FUNCTION_19_1(), , OUTLINED_FUNCTION_4_39(), v9))
    {
      v10 = [v0 printOnly];
      v11 = [v10 BOOLValue];

      if ((v11 & 1) == 0)
      {
        v12 = [v0 redactedFullSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v13 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v13, v14);
        OUTLINED_FUNCTION_18_18();

        if (v11)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v15 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v12 = 0;
        }

        OUTLINED_FUNCTION_46_10(v15, sel_setSpokenDialog_);
      }

      v21 = [v0 spokenOnly];
      v22 = [v21 BOOLValue];

      if ((v22 & 1) == 0)
      {
        v23 = [v0 redactedFullPrint];
LABEL_17:
        v24 = v23;
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_18_18();

        v25 = OUTLINED_FUNCTION_131();
        v17 = sub_1DCB6F750(v25, v26);
        v28 = v27;

        if (v28)
        {
          sub_1DD0DDF8C();
          OUTLINED_FUNCTION_48_1();
        }

        else
        {
          v17 = 0;
        }

        OUTLINED_FUNCTION_25(v29, sel_setDisplayedDialog_);
LABEL_21:
      }
    }

    else
    {
      v31 = [v0 printOnly];
      v32 = [v31 BOOLValue];

      if ((v32 & 1) == 0)
      {
        v33 = [v0 redactedSupportingSpeak];
        sub_1DD0DDFBC();
        OUTLINED_FUNCTION_19_1();
        v34 = OUTLINED_FUNCTION_16_18();
        sub_1DCB6F750(v34, v35);
        OUTLINED_FUNCTION_18_18();

        if (v32)
        {
          OUTLINED_FUNCTION_131();
          sub_1DD0DDF8C();
          v36 = OUTLINED_FUNCTION_47_9();
        }

        else
        {
          v33 = 0;
        }

        OUTLINED_FUNCTION_46_10(v36, sel_setSpokenDialog_);
      }

      v37 = [v0 spokenOnly];
      v38 = [v37 BOOLValue];

      if ((v38 & 1) == 0)
      {
        v23 = [v0 redactedSupportingPrint];
        goto LABEL_17;
      }
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_177()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
}

uint64_t OUTLINED_FUNCTION_177_0()
{

  return sub_1DD0DE97C();
}

void sub_1DCB6F6EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDialogId_];
}

uint64_t sub_1DCB6F750(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

void sub_1DCB6F7A4(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCA42C8, 0x1E69CF4C0);
  v3 = sub_1DD0DE2DC();

  [a2 setDialogLines_];
}

uint64_t sub_1DCB6F828()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  v3 = *(v1 + 216);
  v9 = *v0;
  *(v2 + 224) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCB6F918()
{
  v21 = v0;
  v1 = v0[28];
  if (v1)
  {
    v17 = v0[25];
    v18 = v0[26];
    v2 = v0[23];
    v19 = v0[22];
    v20 = v0[24];
    v4 = v0[19];
    v3 = v0[20];
    v5 = v0[17];
    v6 = v0[18];
    v8 = v0[13];
    v7 = v0[14];
    sub_1DD0DE48C();
    v9 = sub_1DD0DE4BC();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    sub_1DCB6FF74(v3, v4);
    v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v8;
    v12[5] = v1;
    sub_1DCB6DF70(v4, v12 + v10);
    v13 = (v12 + v11);
    *v13 = v17;
    v13[1] = v18;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v14 = v0[26];
  v15 = v0[13];
  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57DA0);
  OUTLINED_FUNCTION_48_1();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB6FC74()
{
  v1 = type metadata accessor for AceOutput();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = *(v0 + v2);

  sub_1DCB42C24(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80));
  if (*(v0 + v2 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 88));
  }

  v8 = v6 + v1[7];
  v9 = type metadata accessor for NLContextUpdate();
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = *(v8 + 8);

    v11 = *(v8 + 16);

    v12 = *(v8 + 24);

    v13 = *(v8 + 40);

    v14 = *(v8 + 48);

    v15 = *(v8 + 56);

    v16 = *(v8 + 80);

    v17 = *(v8 + 96);

    v18 = *(v8 + 104);

    v19 = *(v8 + 120);

    v20 = *(v8 + 152);

    v21 = *(v8 + 160);

    v22 = *(v8 + 168);

    v23 = *(v8 + 192);

    v24 = *(v8 + 208);

    v25 = *(v8 + 216);

    v26 = *(v8 + 224);

    v27 = *(v8 + 232);

    v28 = *(v8 + 240);

    if (*(v8 + 256))
    {

      v29 = *(v8 + 264);
    }

    v30 = *(v8 + 280);

    v31 = *(v9 + 128);
    v32 = sub_1DD0DD72C();
    if (!__swift_getEnumTagSinglePayload(v8 + v31, 1, v32))
    {
      OUTLINED_FUNCTION_112(v32);
      (*(v33 + 8))(v8 + v31, v32);
    }

    v34 = *(v8 + *(v9 + 140) + 8);
  }

  v35 = v1[8];
  v36 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_112(v36);
  (*(v37 + 8))(v6 + v35);
  v38 = v1[9];
  v39 = sub_1DD0DD10C();
  if (!__swift_getEnumTagSinglePayload(v6 + v38, 1, v39))
  {
    OUTLINED_FUNCTION_112(v39);
    (*(v40 + 8))(v6 + v38, v39);
  }

  v41 = *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCB6FF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AceOutput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB6FFD8(uint64_t a1)
{
  v2 = type metadata accessor for AceOutput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCB70034(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1DD0DD85C();
  v8 = OUTLINED_FUNCTION_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = sub_1DD0DD87C();
  v18 = sub_1DD0DE7FC();
  if ((sub_1DD0DE92C() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      OUTLINED_FUNCTION_5_109();
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1DD0DD83C();
      _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v17, v18, v21, a1, "enableTelemetry=YES", v20, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
LABEL_10:

      (*(v10 + 16))(v16, a4, v7);
      v22 = sub_1DD0DD8CC();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_1DD0DD8BC();
      return;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_76();
  if (!v19)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v25;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t AceServiceContextProvider.__allocating_init(storage:)()
{

  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

void SessionConfigurationProvider.init(sessionConfiguration:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_5_102(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB70320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCB70390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCB703F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v7 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB70320(a1, v6);
  OUTLINED_FUNCTION_1_121(qword_1EDE46EA8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB70528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionConfigurationProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB70568@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_5_70(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB706C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCB70738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v7 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB706C8(a1, v6);
  OUTLINED_FUNCTION_1_83(&qword_1EDE47C08);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB70868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB708D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NLRoutingDecisionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB70910@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NLRoutingDecisionProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void FlowRedirectContextProvider.init(flowRedirectContext:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_5_46();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void sub_1DCB709FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_53(&qword_1EDE4AE58);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB70ABC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowRedirectContextProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void IdentifiedUser.description.getter()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v3 = 0x65736C6166;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5FE8, &unk_1DD0F4BB0);
  OUTLINED_FUNCTION_2(v31);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_4_1();
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD12A760);
  v8 = type metadata accessor for IdentifiedUser();
  OUTLINED_FUNCTION_34_43(v8[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
  v9 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v9);

  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD12A780);
  OUTLINED_FUNCTION_34_43(v8[10]);
  v10 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v10);

  MEMORY[0x1E12A6780](0x726570202020200ALL, 0xEF3D6449616E6F73);
  OUTLINED_FUNCTION_34_43(v8[12]);
  v11 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v11);

  MEMORY[0x1E12A6780](0xD00000000000001ALL, 0x80000001DD12A7A0);
  v12 = OUTLINED_FUNCTION_25_40(v8[13]);
  v13 = 0xE500000000000000;
  if (v14)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1E12A6780](v12, v15);

  MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD12A7C0);
  v16 = v8[14];
  sub_1DD0DD17C();
  sub_1DCB4A3FC(&qword_1EDE46338, 255, MEMORY[0x1E69D06F8]);
  v17 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v17);

  MEMORY[0x1E12A6780](0xD00000000000001FLL, 0x80000001DD12A7E0);
  v18 = OUTLINED_FUNCTION_25_40(v8[15]);
  if (v14)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1E12A6780](v18, v19);

  MEMORY[0x1E12A6780](0xD000000000000023, 0x80000001DD12A800);
  v20 = OUTLINED_FUNCTION_25_40(v8[16]);
  if (v14)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x1E12A6780](v20, v21);

  MEMORY[0x1E12A6780](0xD000000000000014, 0x80000001DD12A830);
  v22 = (v2 + v8[7]);
  v32 = *v22;
  v33 = *(v22 + 2);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD12A850);
  v23 = *(v2 + v8[9]);
  if (v23 && ([v23 isDeviceOwner] & 1) != 0)
  {
    v13 = 0xE400000000000000;
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  MEMORY[0x1E12A6780](v24, v13);

  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD12A870);
  if (v23 && (v25 = [v23 isMediaFallbackUser], v23, (v25 & 1) != 0))
  {
    v26 = 0xE400000000000000;
    v3 = 1702195828;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v3, v26);

  MEMORY[0x1E12A6780](0xD000000000000022, 0x80000001DD12A890);
  v27 = (v2 + v8[6]);
  if (v27[1])
  {
    v28 = *v27;
    v29 = v27[1];
  }

  else
  {
    v29 = 0xE300000000000000;
    v28 = 7104878;
  }

  MEMORY[0x1E12A6780](v28, v29);

  MEMORY[0x1E12A6780](0x636F6C202020200ALL, 0xEC0000003D656C61);
  sub_1DCB099BC(v2 + v8[5], v1, &qword_1ECCA5FE8, &unk_1DD0F4BB0);
  v30 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v30);

  MEMORY[0x1E12A6780](23818, 0xE200000000000000);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB70FA4()
{
  OUTLINED_FUNCTION_42();
  v8 = OUTLINED_FUNCTION_41_12(v1, v2, v3, v4, v5, v6, v7);
  v0[10] = v8;
  OUTLINED_FUNCTION_99(v8);
  v0[11] = v9;
  v11 = *(v10 + 64) + 15;
  v0[12] = swift_task_alloc();
  v12 = sub_1DD0DB04C();
  v0[13] = v12;
  OUTLINED_FUNCTION_99(v12);
  v0[14] = v13;
  v0[15] = *(v14 + 64);
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1DCB710A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 48);
  sub_1DCB70034(*(v2 + 24), a2, *(v2 + 96), *(v2 + 40));
  *(v2 + 72) = v5;
  v11 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 80) = v7;
  *v7 = v2;
  v7[1] = sub_1DCB47C10;
  v8 = *(v2 + 56);
  v9 = *(v2 + 16);

  return v11(v9);
}

uint64_t sub_1DCB711B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB710A8, 0, 0);
}

uint64_t sub_1DCB711E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_52_10(v8);

  return sub_1DCB712A4(v10, v11, v3, v4, v6, v5);
}

uint64_t sub_1DCB712A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1DCB4765C;

  return v11(a1);
}

void SiriEnvironment.sessionConfigurationProvider.setter()
{
  type metadata accessor for SessionConfigurationProvider();
  OUTLINED_FUNCTION_0_113(&qword_1EDE46EA0);

  sub_1DD0DCA8C();
}

void SessionConfigurationProvider.sessionConfiguration.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_121(qword_1EDE46EA8);
  sub_1DD0DCEDC();
}

void SessionConfigurationProvider.mock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1DD0DCF8C();
}

void SiriEnvironment.nlRoutingDecision.setter()
{
  type metadata accessor for NLRoutingDecisionProvider();
  OUTLINED_FUNCTION_0_70(&qword_1EDE47C00);

  sub_1DD0DCA8C();
}

void sub_1DCB71558()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_83(&qword_1EDE47C08);
  sub_1DD0DCEDC();
}

void sub_1DCB71628()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1DD0DCF8C();
}

void SiriEnvironment.flowRedirectContextProvider.getter()
{
  type metadata accessor for FlowRedirectContextProvider();
  OUTLINED_FUNCTION_0_53(&qword_1EDE4AE50);

  sub_1DD0DCA7C();
}

void FlowRedirectContextProvider.flowRedirectContext.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4FB8, &qword_1DD0F0648);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_53(&qword_1EDE4AE58);
  sub_1DD0DCEDC();
}

void FlowRedirectContextProvider.mock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1DD0DCF8C();
}

void FlowTaskProvider.init(id:isClientInitiated:creationTime:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  *(v0 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v6);
  sub_1DD0DCE9C();
}

uint64_t sub_1DCB719B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowTaskProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCB719F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FlowTaskProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void sub_1DCB71A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E0, &qword_1DD105D00);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCF8C();
}

void sub_1DCB71B24(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_1DCB71A54();
}

void sub_1DCB71B4C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v7 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E8, &qword_1DD105D08);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCB54EBC(a1, v6);
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCF8C();
}

void SiriEnvironment.flowTask.setter()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCB71E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  OUTLINED_FUNCTION_12_65();
}

uint64_t dispatch thunk of AnyFlow.onAsync(input:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  v1 = *(v0 + 192);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_6(v4);

  return v8(v6);
}

uint64_t sub_1DCB71FBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB71FD0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 72);
  v9 = (*(v1 + 64) + **(v1 + 64));
  v3 = *(*(v1 + 64) + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_76_6(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_75_4(v5);

  return v9(v7);
}

uint64_t sub_1DCB720B0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_77_3();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30_1(v7);
  *v8 = v9;
  v8[1] = sub_1DCB47430;

  return sub_1DCB72188(v2, v0 + v6, v3, v4);
}

uint64_t sub_1DCB72188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB47430;

  return v12(a1, a3, a4);
}

uint64_t Flow.onAsync(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCB722F8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 72);
  sub_1DCB72440(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_1_41();
    swift_once();
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = sub_1DD0DD88C();
  v10 = *(v0 + 48);
  __swift_project_value_buffer(v4, qword_1EDE57DD0);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v10;
  sub_1DD0DD84C();
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_51_8(v6);

  return sub_1DCB711B4(v7, "execution_commit_time", 21, 2, v8, &unk_1DD0EB078, v5);
}

uint64_t sub_1DCB72454()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_52_10(v5);

  return sub_1DCB724F0(v7, v8);
}

uint64_t sub_1DCB724F0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return v7(a1);
}

uint64_t ContactsManager.init(aceService:)(__int128 *a1)
{
  v3 = type metadata accessor for AceServiceInvokerAsyncAdapter();
  v4 = swift_allocObject();
  sub_1DCB18FF0(a1, v4 + 16);
  type metadata accessor for ContactsManagerAsync();
  v5 = swift_allocObject();
  v5[5] = v3;
  v5[6] = &off_1F5852030;
  v5[2] = v4;
  *(v1 + 16) = v5;
  return v1;
}

void sub_1DCB726CC()
{
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  sub_1DCB4BA5C();
}

id sub_1DCB7277C(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_66();
  v10 = (*(v9 + 96))(__dst, a3, a4);
  v11 = *a5;
  v12 = sub_1DD0DDFBC();
  v14 = sub_1DCB72BF8(v10, a2, v12, v13);

  return v14;
}

uint64_t sub_1DCB72840(uint64_t *a1, int a2, int a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v56 = sub_1DD0DB04C();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v56, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[5];
  v12 = *(v11 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = *a1;
    v52 = a1[1];
    v53 = v14;
    v15 = a1[7];
    v46 = a1[6];
    v47 = v15;
    v16 = a1[4];
    v51 = a1[3];
    v59 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    v17 = 0;
    v50 = (v6 + 8);
    v18 = *(v11 + 16);
    v54 = v12;
    v55 = v18;
    v48 = v16;
    v19 = (v16 + 40);
    v20 = (v11 + 40);
    v49 = *(v4 + 16);
    while (v55 != v17)
    {
      if (v17 >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v21 = v11;
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = objc_allocWithZone(MEMORY[0x1E69C7B08]);

      v25 = [v24 init];
      sub_1DD0DB03C();
      v26 = sub_1DD0DAFFC();
      v28 = v27;
      (*v50)(v10, v56);
      sub_1DCB4D8E8(v26, v28, v25);
      sub_1DCB72D28(v53, v52, v25);
      sub_1DCB72D80(v22, v23, v25);
      v29 = v25;
      [v29 setCanUseServerTTS_];
      v30 = v51;
      if (*(v51 + 16) && (v31 = sub_1DCB21038(0x79726F6765746163, 0xE800000000000000), (v32 & 1) != 0))
      {
        v33 = (*(v30 + 56) + 16 * v31);
        v34 = *v33;
        v35 = v33[1];

        v36 = sub_1DD0DDF8C();
      }

      else
      {
        v36 = 0;
      }

      v11 = v21;
      [v29 setDialogCategory_];

      if (v49 && v17 < *(v48 + 16))
      {
        v37 = *(v19 - 1);
        v38 = *v19;

        sub_1DCB2C534(v37, v38, v29, &selRef_setSpeakableText_);
      }

      if ((v57 & 1) != 0 && v17 == *(v21 + 16) - 1 && (sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98), v39 = sub_1DD0DE8CC(), [v29 setListenAfterSpeaking_], v39, v40 = v47, v47 >= 3))
      {
        v42 = [objc_allocWithZone(MEMORY[0x1E69C7B80]) init];
        v43 = v40;
        v44 = v42;
        sub_1DD0BEDA0(v46, v43, v42);
        [v29 setListenAfterSpeakingBehavior_];
      }

      else
      {
      }

      sub_1DD0DECDC();
      v41 = *(v59 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      result = sub_1DD0DECEC();
      ++v17;
      v19 += 2;
      v20 += 2;
      if (v54 == v17)
      {
        return v59;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

id sub_1DCB72BF8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  if (a1 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v11 = sub_1DD0DEE0C();

    a1 = v11;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  }

  sub_1DCB673E0(v8);

  sub_1DCB673E0(v9);
  sub_1DCB6BBC0(a1, v7);
  sub_1DCB6BB04(a3, a4, v7);
  return v7;
}

void sub_1DCB72D28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setDialogIdentifier_];
}

void sub_1DCB72D80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setText_];
}

unint64_t *sub_1DCB72DE0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_1DCB72E48(*a2);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return a1;
}

unint64_t sub_1DCB72E2C(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

unint64_t sub_1DCB72E48(unint64_t result)
{
  if (result >> 62 == 1)
  {
    v2 = (result & 0x3FFFFFFFFFFFFFFFLL);

    return v2;
  }

  else if (!(result >> 62))
  {
    sub_1DD0DCF8C();
  }

  return result;
}

double TemplatingResult.init(templateIdentifier:speak:print:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_26();
  v9 = v8;
  v14 = OUTLINED_FUNCTION_22_15(v10, v11, v12, v13);

  v15 = sub_1DCB73048(v6, v5, v14, a4, v4);

  *v9 = v6;
  *(v9 + 8) = v5;
  v16 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = v15;
  *(v9 + 24) = v16;
  *(v9 + 32) = v4;
  *(v9 + 40) = a4;
  result = 0.0;
  *(v9 + 48) = xmmword_1DD0E1E40;
  *(v9 + 64) = v14;
  return result;
}

uint64_t sub_1DCB72FB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      v6 = sub_1DD0DE38C();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v6;
  }

  return result;
}

uint64_t sub_1DCB73048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DCB7321C();
    v11 = 0;
    v6 = v17;
    do
    {
      v15 = v11;
      sub_1DCB7323C(&v15, a5, a4, a3, a1, a2, __src);
      v17 = v6;
      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_1DCB7321C();
        v6 = v17;
      }

      ++v11;
      *(v6 + 16) = v12 + 1;
      memcpy((v6 + 224 * v12 + 32), __src, 0xD9uLL);
    }

    while (v5 != v11);
  }

  return v6;
}

void sub_1DCB7315C()
{
  OUTLINED_FUNCTION_10_15();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_17();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_3_6(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E18, &unk_1DD0E5280);
      v8 = OUTLINED_FUNCTION_14_15();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_6_12(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_2_24();
        sub_1DCD3F414(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_5_16();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_14();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1DCB7321C()
{
  v1 = *v0;
  sub_1DCB7315C();
  *v0 = v2;
}

uint64_t sub_1DCB7323C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *result;
  v11 = a3 + 16 * *result;
  if (*result < *(a2 + 16))
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v10 >= *(a3 + 16))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    v15 = a2 + 16 * v10;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    if (!v14)
    {
      v23 = 0;
      v12 = *(v15 + 40);
      v13 = *(v15 + 32);
      v16 = 0;
      goto LABEL_16;
    }

    if (v13 != v16 || v12 != v17)
    {
      v19 = *(v11 + 32);
      v20 = *(v11 + 40);
      v21 = *(v15 + 32);
      v22 = *(v15 + 40);
      result = sub_1DD0DF0AC();
      if ((result & 1) == 0)
      {

        v23 = v17;
        goto LABEL_16;
      }
    }
  }

  if (v10 >= *(a3 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = 0;
  v23 = 0;
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
LABEL_16:

  if (v10 >= *(a4 + 16))
  {
    goto LABEL_21;
  }

  v24 = a4 + 16 * v10;
  v26 = *(v24 + 32);
  v25 = *(v24 + 40);
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
  }

  else
  {
LABEL_21:

    MEMORY[0x1E12A6780](35, 0xE100000000000000);
    v28 = sub_1DD0DF03C();
    MEMORY[0x1E12A6780](v28);

    v26 = a5;
    result = a6;
  }

  if (v10 >= *(a3 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  v29 = *(v11 + 40);
  v30 = *(v11 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  *a7 = v26;
  *(a7 + 8) = result;
  *(a7 + 16) = v13;
  *(a7 + 24) = v12;
  *(a7 + 32) = v16;
  *(a7 + 40) = v23;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = v30 == 0;
  *(a7 + 88) = v13;
  *(a7 + 96) = v12;
  *(a7 + 104) = v16;
  *(a7 + 112) = v23;
  *(a7 + 120) = 0u;
  *(a7 + 136) = 0u;
  *(a7 + 152) = 0u;
  *(a7 + 168) = 0u;
  *(a7 + 184) = 0u;
  *(a7 + 200) = 0u;
  *(a7 + 216) = 0;
}

void *initializeWithCopy for TemplatingResult(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = a2[7];

  if (v7 >= 3)
  {
    a1[6] = a2[6];
    a1[7] = v7;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  a1[8] = a2[8];

  return a1;
}

BOOL sub_1DCB73584(uint64_t (*a1)(void))
{
  v4 = type metadata accessor for Parse(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  v9 = type metadata accessor for USOParse();
  v10 = OUTLINED_FUNCTION_20_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  sub_1DCB29E58(v1, v2);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v20 = type metadata accessor for Parse;
    v21 = v2;
LABEL_7:
    sub_1DCB283D8(v21, v20);
    return 0;
  }

  sub_1DCC6D300(v2, v16);
  if ((Parse.interpretableAsUniversalAction.getter() & 1) == 0)
  {
    v20 = type metadata accessor for USOParse;
    v21 = v16;
    goto LABEL_7;
  }

  sub_1DD0DB46C();
  v17 = a1();

  OUTLINED_FUNCTION_0_22();
  sub_1DCB283D8(v16, v18);
  return (v17 & 1) != 0;
}

uint64_t sub_1DCB73700()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 16));
  OUTLINED_FUNCTION_69();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t SharingPolicyCheckFlow.__allocating_init()()
{
  type metadata accessor for DefaultSharingPolicyCheckFlowStrategy();
  inited = swift_initStaticObject();
  OUTLINED_FUNCTION_12_63();
  v1 = swift_allocObject();

  return sub_1DCB7F560(inited, v1);
}

void sub_1DCB737CC()
{
  OUTLINED_FUNCTION_20_10();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD0DB04C();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_72();
  [v3 setDidAuthenticateAppProtection_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7868]) init];
  if ([v3 _type] == 2)
  {
    v12 = INIntent.jsonRepresentation()();
    sub_1DCB2C534(v12._countAndFlagsBits, v12._object, v11, &selRef_setJsonEncodedIntent_);
  }

  else
  {
    v13 = sub_1DCB61EDC(v3);
    [v11 setIntent_];
  }

  v14 = v11;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  v15 = *(v7 + 8);
  v16 = OUTLINED_FUNCTION_19();
  v17(v16);
  OUTLINED_FUNCTION_99_8();
  sub_1DCB4D8E8(v18, v19, v20);

  sub_1DCB73950(v1, v14);
  [v14 setShouldRunHandleIntent_];
  OUTLINED_FUNCTION_15_5();
}

void sub_1DCB73950(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();
  [a2 setIntentSlotKeyPaths_];
}

uint64_t sub_1DCB739B0()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_12_0();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t OUTLINED_FUNCTION_97_1(uint64_t a1, uint64_t a2)
{

  return sub_1DCB4F1DC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_200(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DCB10E9C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_97_3()
{
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
}

uint64_t OUTLINED_FUNCTION_97_4()
{
}

uint64_t OUTLINED_FUNCTION_97_6()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_97_7()
{
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[32];
}

uint64_t OUTLINED_FUNCTION_97_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 3, v2);
}

uint64_t OUTLINED_FUNCTION_97_11()
{
  v2 = *(v0 - 104) | 7;

  return swift_allocObject();
}

uint64_t sub_1DCB73BC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_129_2();
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v9 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCB73CC0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 72);
  v2 = *(v0 + 96);
  v3 = v1;
  v4 = OUTLINED_FUNCTION_124_2();
  sub_1DCB51C9C(v4);
  *v2 = v1;
  *(v2 + 8) = 0;
  *(*(v0 + 96) + 9) = 0;
  OUTLINED_FUNCTION_29();

  return v5();
}

void OUTLINED_FUNCTION_123_0()
{

  JUMPOUT(0x1E12A6780);
}

void *OUTLINED_FUNCTION_123_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char __src)
{

  return memcpy(&a9, &__src, 0xB0uLL);
}

void OUTLINED_FUNCTION_119()
{

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000048, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_119_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_119_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return sub_1DCEFF0BC(v0);
}

uint64_t OUTLINED_FUNCTION_119_3()
{
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[17];
  v6 = v0[15];
}

uint64_t sub_1DCB73E3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB73F20()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_1DCB74408(*(v0 + 120), "SubmitHandleIntent", 18, 2, *(v0 + 128));

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_15_9();
  v7(v6);
  v8 = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 24);
  *(v0 + 26) = v9;
  v10 = *(v0 + 25);
  *(v0 + 27) = v10;
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v12))
  {
    v13 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v13);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_62();
  }

  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 41) = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v19;
  *v19 = v20;
  v19[1] = sub_1DCB74A1C;
  v21 = *(v0 + 80);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);
  v24 = *(v0 + 48);

  return sub_1DCB74070(v24, v22, v0 + 32, v23);
}

uint64_t sub_1DCB74070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 80) = *a3;
  *(v5 + 42) = *(a3 + 8);
  *(v5 + 43) = *(a3 + 9);
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCB740A0()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_70();
  v2 = sub_1DD0DE01C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = [v0 intentResponse];
  if (!v12)
  {
    sub_1DCB35468(v0, &selRef_jsonEncodedIntentResponse);
    if (v19)
    {
      sub_1DD0DE00C();
      sub_1DD0DDFCC();
      OUTLINED_FUNCTION_102_6();

      (*(v5 + 8))(v11, v2);
      if (v1 >> 60 != 15)
      {

        v31 = OUTLINED_FUNCTION_126_1();
        MEMORY[0x1E12A6780](v31, 0xE800000000000000);
        goto LABEL_17;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v20 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v22))
      {
LABEL_15:

LABEL_19:
        OUTLINED_FUNCTION_15_5();
        return;
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v23 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v24))
      {
        goto LABEL_15;
      }
    }

    v25 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v25);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_62();
    goto LABEL_15;
  }

  v13 = v12;
  sub_1DCB35468(v12, &selRef_typeName);
  v15 = v14;
  sub_1DCB3B800(v13);
  OUTLINED_FUNCTION_16_10();
  if (!(!v17 & v16))
  {
    OUTLINED_FUNCTION_102_6();

    if (!v15)
    {
      v18 = 0;
LABEL_18:
      OUTLINED_FUNCTION_20();
      v32 = sub_1DD0DAEFC();
      INIntentResponseCreate();

      v33 = OUTLINED_FUNCTION_20();
      sub_1DCB21A14(v33, v34);
      goto LABEL_19;
    }

LABEL_17:
    v18 = sub_1DD0DDF8C();

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return sub_1DD0DE3AC();
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t a1, unint64_t a2)
{

  return sub_1DCB10E9C(a1, a2, (v2 - 88));
}

double OUTLINED_FUNCTION_98_2()
{
  result = 0.0;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 240) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_98_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_98_5()
{
}

uint64_t sub_1DCB74410()
{
  v55 = v0;
  if (*(v0 + 43))
  {
    v2 = *(v0 + 42);
    v3 = *(v0 + 80);
    if (v2 == 1)
    {
      sub_1DCB6DECC(*(v0 + 80), 1u);
      v7 = [v3 errorCode];
      v10 = 0;
    }

    else if (*(v0 + 42))
    {
      sub_1DCB6DECC(*(v0 + 80), v2);
      v10 = 0;
      v7 = -1;
    }

    else
    {
      sub_1DCB390C4(*(v0 + 80), 0, 1);
      v4 = OUTLINED_FUNCTION_124_2();
      sub_1DCB6DECC(v4, v5);
      v6 = sub_1DD0DADFC();
      v7 = [v6 code];

      v8 = OUTLINED_FUNCTION_124_2();
      sub_1DCB6DECC(v8, v9);
      v10 = *(v0 + 80);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v22 = *(v0 + 80);
    v23 = *(v0 + 42);
    v24 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v24, qword_1EDE57E00);
    sub_1DCB6DECC(v22, v23);
    v25 = sub_1DD0DD8EC();
    v26 = sub_1DD0DE6EC();
    sub_1DCB390D0(v22, v23, 1);
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 42);
    v29 = *(v0 + 80);
    if (v27)
    {
      v51 = v10;
      v30 = v7;
      v31 = OUTLINED_FUNCTION_151();
      v32 = OUTLINED_FUNCTION_83();
      v54 = v32;
      *v31 = 136315138;
      v52 = v29;
      LOBYTE(v53) = v28;
      sub_1DCB6DECC(v29, v28);
      v33 = SubmitCommandError.description.getter();
      v35 = v34;
      sub_1DCB6DE90(v29, v28);
      sub_1DCB10E9C(v33, v35, &v54);
      OUTLINED_FUNCTION_33_4();

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1DCAFC000, v25, v26, "Received an error for handleIntentCommandResponse: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_80();
      v7 = v30;
      v10 = v51;
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB390D0(v29, v28, 1);
    v36 = *(v0 + 42);
    v37 = *(v0 + 80);
    v39 = *(v0 + 48);
    v38 = *(v0 + 56);
    OUTLINED_FUNCTION_106_6();
    sub_1DCF47DA4(v40, v41, v42, v43);
    OUTLINED_FUNCTION_4_14();
    sub_1DD0DEC1C();
    *(v0 + 16) = v52;
    *(v0 + 24) = v53;
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD00000000000002FLL);
    *(v0 + 32) = v37;
    *(v0 + 40) = v36;
    *(v0 + 41) = 1;
    v44 = OUTLINED_FUNCTION_124();
    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    sub_1DD0DEDBC();

    v47 = *(v0 + 16);
    v46 = *(v0 + 24);
    type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v48 = CommandFailure.init(errorCode:reason:errorDomain:underlyingError:)(v7, v47, v46, 0, 0, v10);
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    *v39 = v48;
    *(v39 + 24) = 1;
  }

  else
  {
    v11 = qword_1EDE4F900;
    v12 = *(v0 + 80);
    if (v11 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v13 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v16);
      _os_log_impl(&dword_1DCAFC000, v14, v15, "HandleIntentCompleted received", v1, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);
    v21 = *(v0 + 42);

    sub_1DCB74820(v19, v20);
    sub_1DCB390D0(v18, v21, 0);
  }

  OUTLINED_FUNCTION_29();

  return v49();
}

void *sub_1DCB74820@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [a1 typeName];
  sub_1DD0DDFBC();

  sub_1DCB740A0();
  v5 = v4;

  if (v5)
  {
    v6 = qword_1EDE4F900;
    v7 = v5;
    if (v6 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v10))
    {
      v11 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0(v11);
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_37();
    }

    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;

    return a1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v20))
    {
      v21 = OUTLINED_FUNCTION_50_0();
      *v21 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v22, v23, v24, v25, v21, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_109_6();
    OUTLINED_FUNCTION_41_4();
    swift_allocObject();
    v26 = OUTLINED_FUNCTION_93_8();
    result = CommandFailure.init(errorCode:reason:)(v26, 0xD00000000000002ALL, v27);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = result;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1DCB74A1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB74B00()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 104);
  sub_1DCB390D0(*(v0 + 144), *(v0 + 26), *(v0 + 27));

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCB74B6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 304);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB74C50()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 208);

  OUTLINED_FUNCTION_103_8();
  sub_1DCB3B864();

  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCB74CF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCB74DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA54F0, &qword_1DD0F2090);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();

  sub_1DCB649C0(v3);
}

unint64_t sub_1DCB74E48()
{
  result = 0x646574726174732ELL;
  switch(*(v0 + 24))
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6F5479646165722ELL;
      break;
    case 3:
      result = 0x74656C706D6F632ELL;
      break;
    case 4:
      result = 0x726F7272652ELL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DCB74F28(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t sub_1DCB74F74()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
  v6 = v0[28];

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCB7500C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCB75118(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAABF0, &qword_1DD0FA700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v22 - v8;
  v10 = *(v2 + 16);
  if (*(v10 + 16) && (v11 = sub_1DCB21038(a1, a2), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v10 + 56);
    v15 = type metadata accessor for ParameterClause();
    sub_1DCC8BC94(v14 + *(*(v15 - 8) + 72) * v13, v9);
    v16 = 1;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  }

  else
  {
    type metadata accessor for ParameterClause();
    v17 = OUTLINED_FUNCTION_2_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v16 = 0;
  }

  sub_1DCB75264(v9);
  return v16;
}

uint64_t sub_1DCB75264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAABF0, &qword_1DD0FA700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCB752CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB753CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for PromptForValueFlowAsync.State();
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1DCB77170();
  return (*(v7 + 8))(a1, v6);
}

unsigned __int8 *sub_1DCB754BC(unsigned __int8 *a1, id *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v245 = *(v4 - 8);
  v246 = v4;
  v256 = *(v245 + 64);
  v260 = v3;
  v242 = sub_1DD0DC76C();
  v253 = *(v242 - 8);
  v5 = *(v253 + 80);
  v239 = sub_1DD0DB1EC();
  v254 = *(v239 - 8);
  v238 = v254;
  v247 = *(v254 + 80) | v5;
  v243 = sub_1DD0DB4BC();
  v251 = *(v243 - 8);
  v261 = v251;
  v6 = *(v251 + 80) & 0xF8;
  v244 = sub_1DD0DB3EC();
  v7 = *(v244 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v237 = sub_1DD0DD12C();
  v249 = *(v237 - 8);
  v236 = v249;
  v10 = *(v249 + 80);
  v11 = sub_1DD0DD08C();
  v12 = v9;
  v235 = v11;
  v13 = v11;
  v14 = v8;
  v15 = *(v13 - 8);
  v234 = v15;
  v16 = (v247 | (v10 | *(v15 + 80))) & 0xF8 | v9;
  v17 = v256 + v16;
  v18 = *(v253 + 64);
  v233 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v254 + 64))
  {
    v18 = *(v254 + 64);
  }

  v257 = *(v251 + 64) + v8;
  v228 = v7;
  v19 = *(v7 + 84);
  v227 = *(v7 + 64);
  if (v19)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = v20 + 7;
  v240 = v257 & ~v8;
  v22 = (v20 + 7 + v240) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v18 <= v23)
  {
    v18 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v24 = v22 + 31;
  if (v18 <= (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v18 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v230 = *(v249 + 64);
  v231 = v9 + 16;
  v25 = *(v251 + 84);
  v241 = *(v7 + 84);
  v26 = v19 != 0;
  v27 = v19 - 1;
  if (!v26)
  {
    v27 = 0;
  }

  v226 = v27;
  if (v27 <= v25)
  {
    v27 = *(v251 + 84);
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  v232 = v27;
  v28 = ((v24 + ((v9 + 16 + ((v230 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 <= v28)
  {
    v18 = v28;
  }

  v29 = *(v15 + 64);
  if (v18 > v29)
  {
    v29 = v18;
  }

  if (v29 <= 0x18)
  {
    v30 = 24;
  }

  else
  {
    v30 = v29;
  }

  v252 = *(a3 + 16);
  v250 = *(v252 - 8);
  if (*(v250 + 64) <= 9uLL)
  {
    v31 = 9;
  }

  else
  {
    v31 = *(*(v252 - 8) + 64);
  }

  if (v31 + 1 > ((((v30 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = ((((v30 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v32 <= 9)
  {
    v33 = 9;
  }

  else
  {
    v33 = v32;
  }

  v34 = v3[v33];
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
        v37 = *v3;
        goto LABEL_44;
      case 2:
        v37 = *v3;
        goto LABEL_44;
      case 3:
        v37 = *v3 | (v3[2] << 16);
        goto LABEL_44;
      case 4:
        v37 = *v3;
LABEL_44:
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

  v259 = v30 + 1;
  v38 = ~v16;
  v255 = ~v14;
  v229 = ~v12;
  v248 = 8 * v31;
  switch(v34)
  {
    case 0u:
      v221 = v20;
      (*(v245 + 8))(v3, v246);
      v39 = (&v3[v17] & v38);
      v40 = v39[v30];
      v41 = v40 - 10;
      if (v40 >= 0xA)
      {
        if (v30 <= 3)
        {
          v42 = v30;
        }

        else
        {
          v42 = 4;
        }

        switch(v42)
        {
          case 1:
            v43 = *v39;
            goto LABEL_81;
          case 2:
            v43 = *v39;
            goto LABEL_81;
          case 3:
            v43 = *v39 | (*((&v3[v17] & v38) + 2) << 16);
            goto LABEL_81;
          case 4:
            v43 = *v39;
LABEL_81:
            if (v30 < 4)
            {
              v40 = (v43 | (v41 << (8 * v30))) + 10;
            }

            else
            {
              v40 = v43 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v40)
      {
        case 0u:
          goto LABEL_90;
        case 1u:
          goto LABEL_101;
        case 2u:
          goto LABEL_94;
        case 3u:
          goto LABEL_95;
        case 4u:
          goto LABEL_91;
        case 5u:
          goto LABEL_102;
        case 6u:
          goto LABEL_103;
        case 7u:
          goto LABEL_96;
        case 8u:
          goto LABEL_107;
        case 9u:
          goto LABEL_92;
        default:
          goto LABEL_123;
      }

      goto LABEL_123;
    case 1u:
      v221 = v20;
      (*(v245 + 8))(v3, v246);
      v39 = (&v3[v17] & v38);
      v48 = v39[v30];
      v49 = v48 - 10;
      if (v48 >= 0xA)
      {
        if (v30 <= 3)
        {
          v50 = v30;
        }

        else
        {
          v50 = 4;
        }

        switch(v50)
        {
          case 1:
            v51 = *v39;
            goto LABEL_86;
          case 2:
            v51 = *v39;
            goto LABEL_86;
          case 3:
            v51 = *v39 | (*((&v3[v17] & v38) + 2) << 16);
            goto LABEL_86;
          case 4:
            v51 = *v39;
LABEL_86:
            if (v30 < 4)
            {
              v48 = (v51 | (v49 << (8 * v30))) + 10;
            }

            else
            {
              v48 = v51 + 10;
            }

            break;
          default:
            goto LABEL_89;
        }
      }

      break;
    case 2u:
      v44 = v3[v31];
      v45 = v44 - 2;
      if (v44 >= 2)
      {
        if (v31 <= 3)
        {
          v46 = v31;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v3;
            goto LABEL_73;
          case 2:
            v47 = *v3;
            goto LABEL_73;
          case 3:
            v47 = *v3 | (v3[2] << 16);
            goto LABEL_73;
          case 4:
            v47 = *v3;
LABEL_73:
            if (v31 < 4)
            {
              v44 = (v47 | (v45 << v248)) + 2;
            }

            else
            {
              v44 = v47 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v44 == 1)
      {
        goto LABEL_79;
      }

      if (!v44)
      {
        (*(v250 + 8))(v3, v252);
      }

      goto LABEL_125;
    case 3u:
LABEL_79:

      goto LABEL_125;
    default:
      goto LABEL_125;
  }

LABEL_89:
  switch(v48)
  {
    case 0u:
LABEL_90:
      v53 = v253;
      v52 = v242;
      goto LABEL_93;
    case 1u:
LABEL_101:
      (*(v253 + 8))(v39, v242);
      v65 = *(&v39[v233] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_123;
    case 2u:
LABEL_94:
      v54 = *(v39 + 1);

      v55 = *(v39 + 2);
      goto LABEL_106;
    case 3u:
LABEL_95:
      v56 = *v39;
      swift_unknownObjectRelease();
      goto LABEL_123;
    case 4u:
LABEL_91:
      v53 = v238;
      v52 = v239;
      goto LABEL_93;
    case 5u:
LABEL_102:
      v66 = *v39;
      goto LABEL_122;
    case 6u:
LABEL_103:
      (*(v261 + 8))(v39, v243);
      v219 = &v39[v257] & v255;
      if (!__swift_getEnumTagSinglePayload(v219, 1, v244))
      {
        (*(v228 + 8))(v219, v244);
      }

      v67 = *(((v21 + v219) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_106:

      goto LABEL_123;
    case 7u:
LABEL_96:
      v218 = v21;
      (*(v261 + 8))(v39, v243);
      v57 = &v39[v257] & v255;
      if (!__swift_getEnumTagSinglePayload(v57, 1, v244))
      {
        (*(v228 + 8))(v57, v244);
      }

      v58 = 7;
      if (!v241)
      {
        v58 = 8;
      }

      v59 = *(((v227 + v58 + v57) & 0xFFFFFFFFFFFFFFF8) + 8);

      v60 = &v39[((((v240 + v221 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v61 = *(v60 + 8);

      v62 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
      v63 = *(v62 + 8);

      v64 = *(((v62 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

      v21 = v218;
      goto LABEL_123;
    case 8u:
LABEL_107:
      v220 = v21;
      (*(v236 + 8))(v39, v237);
      v68 = &v39[v230 + 7] & 0xFFFFFFFFFFFFFFF8;
      v69 = *(v68 + 8);

      v70 = (v231 + v68) & v229;
      if (v25 == v232)
      {
        v71 = (v231 + v68) & v229;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, v25, v243);
        v70 = v71;
        v21 = v220;
        if (EnumTagSinglePayload)
        {
          goto LABEL_121;
        }

        v217 = (v257 + v70) & v255;
        goto LABEL_118;
      }

      v73 = (v257 + v70) & v255;
      v21 = v220;
      if (v226 == v232)
      {
        v217 = (v257 + v70) & v255;
        if (v241 >= 2)
        {
          v215 = v70;
          v74 = __swift_getEnumTagSinglePayload(v73, v241, v244);
          v70 = v215;
          if (v74 >= 2)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_118;
      }

      v75 = *(((v220 + v73) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v75 >= 0xFFFFFFFF)
      {
        LODWORD(v75) = -1;
      }

      if ((v75 + 1) < 2)
      {
        v217 = (v257 + v70) & v255;
LABEL_118:
        v216 = v70;
        (*(v261 + 8))(v70, v243);
        if (!__swift_getEnumTagSinglePayload(v217, 1, v244))
        {
          (*(v228 + 8))(v217, v244);
        }

        v76 = *(((v21 + v217) & 0xFFFFFFFFFFFFFFF8) + 8);

        v70 = v216;
      }

LABEL_121:
      v66 = *((v23 + v70 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_122:

LABEL_123:
      v77 = &v39[v259 + 7];
      v78 = v21;
      v80 = (v77 & 0xFFFFFFFFFFFFFFF8) + 15;
      v79 = *(v77 & 0xFFFFFFFFFFFFFFF8);

      v81 = (v80 & 0xFFFFFFFFFFFFFFF8);
      v21 = v78;
      v20 = v221;
      if (v81[3] >= 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
      }

LABEL_125:
      v82 = a2;
      v83 = *(a2 + v33);
      v84 = v83 - 4;
      if (v83 >= 4)
      {
        if (v33 <= 3)
        {
          v85 = v33;
        }

        else
        {
          v85 = 4;
        }

        v82 = a2;
        switch(v85)
        {
          case 1:
            v86 = *a2;
            goto LABEL_134;
          case 2:
            v86 = *a2;
            goto LABEL_134;
          case 3:
            v86 = *a2 | (*(a2 + 2) << 16);
            v82 = a2;
            goto LABEL_134;
          case 4:
            v86 = *a2;
LABEL_134:
            if (v33 < 4)
            {
              v83 = (v86 | (v84 << (8 * v33))) + 4;
            }

            else
            {
              v83 = v86 + 4;
            }

            break;
          default:
            goto LABEL_137;
        }
      }

      break;
    case 9u:
LABEL_92:
      v53 = v234;
      v52 = v235;
LABEL_93:
      (*(v53 + 8))(v39, v52);
      goto LABEL_123;
    default:
      goto LABEL_123;
  }

LABEL_137:
  switch(v83)
  {
    case 0u:
      v87 = v82;
      (*(v245 + 16))(v3);
      v88 = ((v87 + v17) & v38);
      v89 = v88[v30];
      v90 = v89 - 10;
      if (v89 < 0xA)
      {
        v92 = (&v3[v17] & v38);
      }

      else
      {
        if (v30 <= 3)
        {
          v91 = v30;
        }

        else
        {
          v91 = 4;
        }

        v92 = (&v3[v17] & v38);
        switch(v91)
        {
          case 1:
            v93 = *v88;
            goto LABEL_179;
          case 2:
            v93 = *v88;
            goto LABEL_179;
          case 3:
            v93 = *v88 | (v88[2] << 16);
            goto LABEL_179;
          case 4:
            v93 = *v88;
LABEL_179:
            if (v30 < 4)
            {
              v89 = (v93 | (v90 << (8 * v30))) + 10;
            }

            else
            {
              v89 = v93 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v89)
      {
        case 0u:
          (*(v253 + 16))(v92, v88, v242);
          *(v92 + v30) = 0;
          goto LABEL_254;
        case 1u:
          (*(v253 + 16))(v92, v88, v242);
          *((v92 + v233) & 0xFFFFFFFFFFFFFFF8) = *(&v88[v233] & 0xFFFFFFFFFFFFFFF8);
          *(v92 + v30) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v92 = *v88;
          v92[1] = *(v88 + 1);
          v92[2] = *(v88 + 2);
          *(v92 + v30) = 2;

          goto LABEL_234;
        case 3u:
          *v92 = *v88;
          *(v92 + v30) = 3;
          swift_unknownObjectRetain();
          goto LABEL_254;
        case 4u:
          (*(v238 + 16))(v92, v88, v239);
          v113 = 4;
          goto LABEL_193;
        case 5u:
          v119 = *v88;
          *v92 = *v88;
          *(v92 + v30) = 5;
          v120 = v119;
          goto LABEL_254;
        case 6u:
          v123 = v20;
          (*(v261 + 16))(v92, v88, v243);
          v124 = ((v92 + v257) & v255);
          v125 = (&v88[v257] & v255);
          if (__swift_getEnumTagSinglePayload(v125, 1, v244))
          {
            memcpy(v124, v125, v123);
          }

          else
          {
            (*(v228 + 16))(v124, v125, v244);
            __swift_storeEnumTagSinglePayload(v124, 0, 1, v244);
          }

          v167 = ((v124 + v21) & 0xFFFFFFFFFFFFFFF8);
          v168 = ((v125 + v21) & 0xFFFFFFFFFFFFFFF8);
          *v167 = *v168;
          v167[1] = v168[1];
          v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
          v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
          v171 = *v170;
          *(v169 + 4) = *(v170 + 4);
          *v169 = v171;
          *(v92 + v30) = 6;
          goto LABEL_234;
        case 7u:
          v222 = v20;
          (*(v261 + 16))(v92, v88, v243);
          v115 = ((v92 + v257) & v255);
          v116 = (&v88[v257] & v255);
          if (__swift_getEnumTagSinglePayload(v116, 1, v244))
          {
            memcpy(v115, v116, v222);
          }

          else
          {
            (*(v228 + 16))(v115, v116, v244);
            __swift_storeEnumTagSinglePayload(v115, 0, 1, v244);
          }

          v145 = ((v115 + v21) & 0xFFFFFFFFFFFFFFF8);
          v146 = ((v116 + v21) & 0xFFFFFFFFFFFFFFF8);
          *v145 = *v146;
          v145[1] = v146[1];
          v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
          v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v149 = *v148;
          *(v147 + 4) = *(v148 + 4);
          *v147 = v149;
          v150 = ((v92 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
          v151 = (&v88[v23 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v150 = *v151;
          v150[1] = v151[1];
          v152 = ((v150 + 23) & 0xFFFFFFFFFFFFFFF8);
          v153 = ((v151 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v153;
          v152[1] = v153[1];
          v154 = ((v152 + 23) & 0xFFFFFFFFFFFFFFF8);
          v155 = ((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v154 = *v155;
          v154[1] = v155[1];
          *(v92 + v30) = 7;

LABEL_234:

          goto LABEL_254;
        case 8u:
          v224 = v20;
          (*(v236 + 16))(v92, v88, v237);
          v129 = ((v92 + v230 + 7) & 0xFFFFFFFFFFFFFFF8);
          v130 = (&v88[v230 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v129 = *v130;
          v129[1] = v130[1];
          v131 = ((v129 + v231) & v229);
          v132 = ((v130 + v231) & v229);

          if (v25 != v232)
          {
            v134 = v257;
            v136 = ((v132 + v257) & v255);
            if (v226 == v232)
            {
              if (v241 >= 2 && __swift_getEnumTagSinglePayload((v132 + v257) & v255, v241, v244) >= 2)
              {
                goto LABEL_223;
              }
            }

            else
            {
              v177 = *(((v136 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v177 >= 0xFFFFFFFF)
              {
                LODWORD(v177) = -1;
              }

              if ((v177 + 1) >= 2)
              {
                goto LABEL_223;
              }
            }

            v135 = v255;
            goto LABEL_242;
          }

          v133 = __swift_getEnumTagSinglePayload(v132, v25, v243);
          v134 = v257;
          if (v133)
          {
LABEL_223:
            memcpy(v131, v132, v23);
LABEL_252:
            v181 = v224;
            goto LABEL_253;
          }

          v135 = v255;
          v136 = ((v132 + v257) & v255);
LABEL_242:
          (*(v261 + 16))(v131, v132, v243);
          v178 = ((v131 + v134) & v135);
          if (__swift_getEnumTagSinglePayload(v136, 1, v244))
          {
            memcpy(v178, v136, v224);
          }

          else
          {
            (*(v228 + 16))(v178, v136, v244);
            __swift_storeEnumTagSinglePayload(v178, 0, 1, v244);
          }

          v181 = v227;
          v182 = ((v178 + v21) & 0xFFFFFFFFFFFFFFF8);
          v183 = ((v136 + v21) & 0xFFFFFFFFFFFFFFF8);
          *v182 = *v183;
          v182[1] = v183[1];
          v184 = (v182 + 19) & 0xFFFFFFFFFFFFFFF8;
          v185 = (v183 + 19) & 0xFFFFFFFFFFFFFFF8;
          v186 = *v185;
          *(v184 + 4) = *(v185 + 4);
          *v184 = v186;

          if (!v241)
          {
            goto LABEL_252;
          }

LABEL_253:
          v187 = (((v240 + v181 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v188 = ((v131 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
          v189 = *((v132 + v187 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v188 = v189;
          *(v92 + v30) = 8;
          v190 = v189;
          v3 = v260;
LABEL_254:
          v191 = (&v88[v259 + 7] & 0xFFFFFFFFFFFFFFF8);
          v192 = ((v92 + v259 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v192 = *v191;
          v193 = (v192 + 15) & 0xFFFFFFFFFFFFFFF8;
          v194 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
          v195 = *(v194 + 24);

          if (v195 < 0xFFFFFFFF)
          {
            v196 = *v194;
            v197 = *(v194 + 16);
            *(v193 + 32) = *(v194 + 32);
            *v193 = v196;
            *(v193 + 16) = v197;
          }

          else
          {
            *(v193 + 24) = v195;
            *(v193 + 32) = *(v194 + 32);
            (**(v195 - 8))(v193, v194, v195);
          }

          *(v193 + 40) = *(v194 + 40);
          v3[v33] = 0;
          return v3;
        case 9u:
          (*(v234 + 16))(v92, v88, v235);
          v113 = 9;
LABEL_193:
          *(v92 + v30) = v113;
          goto LABEL_254;
        default:
          memcpy(v92, v88, v259);
          goto LABEL_254;
      }

    case 1u:
      v102 = v82;
      (*(v245 + 16))(v3);
      v103 = ((v102 + v17) & v38);
      v104 = v103[v30];
      v105 = v104 - 10;
      if (v104 < 0xA)
      {
        v107 = (&v3[v17] & v38);
      }

      else
      {
        if (v30 <= 3)
        {
          v106 = v30;
        }

        else
        {
          v106 = 4;
        }

        v107 = (&v3[v17] & v38);
        switch(v106)
        {
          case 1:
            v108 = *v103;
            goto LABEL_185;
          case 2:
            v108 = *v103;
            goto LABEL_185;
          case 3:
            v108 = *v103 | (v103[2] << 16);
            goto LABEL_185;
          case 4:
            v108 = *v103;
LABEL_185:
            if (v30 < 4)
            {
              v104 = (v108 | (v105 << (8 * v30))) + 10;
            }

            else
            {
              v104 = v108 + 10;
            }

            break;
          default:
            goto LABEL_188;
        }
      }

      break;
    case 2u:
      v94 = *(v82 + v31);
      v95 = v94 - 2;
      if (v94 >= 2)
      {
        if (v31 <= 3)
        {
          v96 = v31;
        }

        else
        {
          v96 = 4;
        }

        v82 = a2;
        switch(v96)
        {
          case 1:
            v97 = *a2;
            goto LABEL_167;
          case 2:
            v97 = *a2;
            goto LABEL_167;
          case 3:
            v97 = *a2 | (*(a2 + 2) << 16);
            v82 = a2;
            goto LABEL_167;
          case 4:
            v97 = *a2;
LABEL_167:
            if (v31 < 4)
            {
              v94 = (v97 | (v95 << v248)) + 2;
            }

            else
            {
              v94 = v97 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v94 == 1)
      {
        v110 = *v82;
        v111 = v82;
        v112 = *v82;
        *v3 = v110;
        v3[8] = *(v111 + 8);
        v3[v31] = 1;
      }

      else if (v94)
      {
        memcpy(v3, v82, v31 + 1);
      }

      else
      {
        (*(v250 + 16))(v3, v82, v252);
        v3[v31] = 0;
      }

      v101 = 2;
      goto LABEL_266;
    case 3u:
      v98 = *v82;
      v99 = v82;
      v100 = *v82;
      *v3 = v98;
      v3[8] = *(v99 + 8);
      v101 = 3;
      goto LABEL_266;
    default:

      return memcpy(v3, v82, v33 + 1);
  }

LABEL_188:
  switch(v104)
  {
    case 0u:
      (*(v253 + 16))(v107, v103, v242);
      *(v107 + v30) = 0;
      goto LABEL_262;
    case 1u:
      (*(v253 + 16))(v107, v103, v242);
      *((v107 + v233) & 0xFFFFFFFFFFFFFFF8) = *(&v103[v233] & 0xFFFFFFFFFFFFFFF8);
      *(v107 + v30) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v107 = *v103;
      v107[1] = *(v103 + 1);
      v107[2] = *(v103 + 2);
      *(v107 + v30) = 2;

      goto LABEL_237;
    case 3u:
      *v107 = *v103;
      *(v107 + v30) = 3;
      swift_unknownObjectRetain();
      goto LABEL_262;
    case 4u:
      (*(v238 + 16))(v107, v103, v239);
      v114 = 4;
      goto LABEL_195;
    case 5u:
      v121 = *v103;
      *v107 = *v103;
      *(v107 + v30) = 5;
      v122 = v121;
      goto LABEL_262;
    case 6u:
      v126 = v20;
      (*(v261 + 16))(v107, v103, v243);
      v127 = ((v107 + v257) & v255);
      v128 = (&v103[v257] & v255);
      if (__swift_getEnumTagSinglePayload(v128, 1, v244))
      {
        memcpy(v127, v128, v126);
      }

      else
      {
        (*(v228 + 16))(v127, v128, v244);
        __swift_storeEnumTagSinglePayload(v127, 0, 1, v244);
      }

      v172 = ((v127 + v21) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v128 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      v172[1] = v173[1];
      v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
      v175 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
      v176 = *v175;
      *(v174 + 4) = *(v175 + 4);
      *v174 = v176;
      *(v107 + v30) = 6;
      goto LABEL_237;
    case 7u:
      v223 = v20;
      (*(v261 + 16))(v107, v103, v243);
      v117 = ((v107 + v257) & v255);
      v118 = (&v103[v257] & v255);
      if (__swift_getEnumTagSinglePayload(v118, 1, v244))
      {
        memcpy(v117, v118, v223);
      }

      else
      {
        (*(v228 + 16))(v117, v118, v244);
        __swift_storeEnumTagSinglePayload(v117, 0, 1, v244);
      }

      v156 = ((v117 + v21) & 0xFFFFFFFFFFFFFFF8);
      v157 = ((v118 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v156[1] = v157[1];
      v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
      v160 = *v159;
      *(v158 + 4) = *(v159 + 4);
      *v158 = v160;
      v161 = ((v107 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
      v162 = (&v103[v23 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v161[1] = v162[1];
      v163 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
      v164 = ((v162 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v163 = *v164;
      v163[1] = v164[1];
      v165 = ((v163 + 23) & 0xFFFFFFFFFFFFFFF8);
      v166 = ((v164 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v165 = *v166;
      v165[1] = v166[1];
      *(v107 + v30) = 7;

LABEL_237:

      goto LABEL_262;
    case 8u:
      v225 = v20;
      (*(v236 + 16))(v107, v103, v237);
      v137 = ((v107 + v230 + 7) & 0xFFFFFFFFFFFFFFF8);
      v138 = (&v103[v230 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v137 = *v138;
      v137[1] = v138[1];
      v139 = ((v137 + v231) & v229);
      v140 = ((v138 + v231) & v229);

      if (v25 == v232)
      {
        v141 = __swift_getEnumTagSinglePayload(v140, v25, v243);
        v142 = v257;
        if (!v141)
        {
          v143 = v255;
          v144 = ((v140 + v257) & v255);
          goto LABEL_248;
        }

LABEL_227:
        memcpy(v139, v140, v23);
        goto LABEL_260;
      }

      v142 = v257;
      v144 = ((v140 + v257) & v255);
      if (v226 == v232)
      {
        if (v241 >= 2 && __swift_getEnumTagSinglePayload((v140 + v257) & v255, v241, v244) >= 2)
        {
          goto LABEL_227;
        }
      }

      else
      {
        v179 = *(((v144 + v21) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v179 >= 0xFFFFFFFF)
        {
          LODWORD(v179) = -1;
        }

        if ((v179 + 1) >= 2)
        {
          goto LABEL_227;
        }
      }

      v143 = v255;
LABEL_248:
      (*(v261 + 16))(v139, v140, v243);
      v180 = ((v139 + v142) & v143);
      if (__swift_getEnumTagSinglePayload(v144, 1, v244))
      {
        memcpy(v180, v144, v225);
      }

      else
      {
        (*(v228 + 16))(v180, v144, v244);
        __swift_storeEnumTagSinglePayload(v180, 0, 1, v244);
      }

      v198 = v227;
      v199 = ((v180 + v21) & 0xFFFFFFFFFFFFFFF8);
      v200 = ((v144 + v21) & 0xFFFFFFFFFFFFFFF8);
      *v199 = *v200;
      v199[1] = v200[1];
      v201 = (v199 + 19) & 0xFFFFFFFFFFFFFFF8;
      v202 = (v200 + 19) & 0xFFFFFFFFFFFFFFF8;
      v203 = *v202;
      *(v201 + 4) = *(v202 + 4);
      *v201 = v203;

      if (v241)
      {
LABEL_261:
        v204 = (((v240 + v198 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v205 = ((v139 + v204 + 7) & 0xFFFFFFFFFFFFFFF8);
        v206 = *((v140 + v204 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v205 = v206;
        *(v107 + v30) = 8;
        v207 = v206;
        v3 = v260;
LABEL_262:
        v208 = (&v103[v259 + 7] & 0xFFFFFFFFFFFFFFF8);
        v209 = ((v107 + v259 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v209 = *v208;
        v210 = (v209 + 15) & 0xFFFFFFFFFFFFFFF8;
        v211 = (v208 + 15) & 0xFFFFFFFFFFFFFFF8;
        v212 = *(v211 + 24);

        if (v212 < 0xFFFFFFFF)
        {
          v213 = *v211;
          v214 = *(v211 + 16);
          *(v210 + 32) = *(v211 + 32);
          *v210 = v213;
          *(v210 + 16) = v214;
        }

        else
        {
          *(v210 + 24) = v212;
          *(v210 + 32) = *(v211 + 32);
          (**(v212 - 8))(v210, v211, v212);
        }

        *(v210 + 40) = *(v211 + 40);
        v101 = 1;
LABEL_266:
        v3[v33] = v101;
        return v3;
      }

LABEL_260:
      v198 = v225;
      goto LABEL_261;
    case 9u:
      (*(v234 + 16))(v107, v103, v235);
      v114 = 9;
LABEL_195:
      *(v107 + v30) = v114;
      goto LABEL_262;
    default:
      memcpy(v107, v103, v259);
      goto LABEL_262;
  }
}

void sub_1DCB77170()
{
  v1 = v0;
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for PromptForValueFlowAsync.State();
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
  swift_retain_n();
  v33 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v33, v14))
  {
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v15 = 136315394;
    v16 = *(v0 + 8);
    v17 = *(v1 + 9);
    v18 = *(v1 + 10);
    v19 = *(v1 + 11);

    v20 = OUTLINED_FUNCTION_76_13();
    MEMORY[0x1E12A66E0](v20);

    v21 = OUTLINED_FUNCTION_76_13();
    v24 = sub_1DCB10E9C(v21, v22, v23);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2080;
    v25 = *(*v1 + 112);
    OUTLINED_FUNCTION_156();
    (*(v6 + 16))(v12, &v1[v25], v4);

    sub_1DCB78F10(v4);

    (*(v6 + 8))(v12, v4);
    v26 = OUTLINED_FUNCTION_76_13();
    v29 = sub_1DCB10E9C(v26, v27, v28);

    *(v15 + 14) = v29;
    _os_log_impl(&dword_1DCAFC000, v33, v14, "PromptForValueFlow [%s] transitioned to state %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();

    OUTLINED_FUNCTION_49();
  }

  else
  {

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCB77430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1DCB21038(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for ParameterClause();
    sub_1DCC8BC94(v9 + *(*(v10 - 8) + 72) * v8, a3);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v10;
  }

  else
  {
    type metadata accessor for ParameterClause();
    v11 = OUTLINED_FUNCTION_2_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1DCB774F8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  swift_storeEnumTagMultiPayload();
  sub_1DCB753CC(v2);
  static ExecuteResponse.ongoing(requireInput:)(1, v4);

  OUTLINED_FUNCTION_29();

  return v5();
}

_BYTE *sub_1DCB77584(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v198 = *(sub_1DD0DB04C() - 8);
  v212 = *(v198 + 64);
  v195 = sub_1DD0DC76C();
  v208 = *(v195 - 8);
  v194 = v208;
  v3 = *(v208 + 80);
  v193 = sub_1DD0DB1EC();
  v210 = *(v193 - 8);
  v192 = v210;
  v201 = *(v210 + 80) | v3;
  v197 = sub_1DD0DB4BC();
  v206 = *(v197 - 8);
  v219 = v206;
  v4 = *(v206 + 80) & 0xF8;
  v196 = sub_1DD0DB3EC();
  v5 = *(v196 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v8 = sub_1DD0DD12C();
  v203 = *(v8 - 8);
  v190 = v203;
  v191 = v8;
  v9 = *(v203 + 80);
  v10 = sub_1DD0DD08C();
  v11 = v208;
  v209 = *(v10 - 8);
  v12 = (v201 | (v9 | *(v209 + 80))) & 0xF8 | v7;
  v13 = v212 + v12;
  v14 = *(v11 + 64);
  v213 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v210 + 64))
  {
    v14 = *(v210 + 64);
  }

  v15 = *(v206 + 64);
  v16 = v15 + v6;
  v17 = (v15 + v6) & ~v6;
  v202 = v5;
  v18 = *(v5 + 84);
  v19 = *(v5 + 64);
  if (v18)
  {
    v20 = *(v5 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = (v20 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v14 <= v22)
  {
    v14 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  if (v14 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v207 = *(v203 + 64);
  v211 = v7 + 16;
  v24 = v4 | v6 | 7;
  v25 = *(v219 + 84);
  if (v18)
  {
    v26 = v18 - 1;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= v25)
  {
    v27 = *(v219 + 84);
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  else
  {
    v28 = v27;
  }

  v29 = ((v23 + ((v7 + 16 + ((v207 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v29)
  {
    v14 = v29;
  }

  v30 = *(*(v10 - 8) + 64);
  if (v14 > v30)
  {
    v30 = v14;
  }

  if (v30 <= 0x18)
  {
    v31 = 24;
  }

  else
  {
    v31 = v30;
  }

  v32 = ((((v31 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v33 = *(*(a3 + 16) - 8);
  if (*(v33 + 64) <= 9uLL)
  {
    v34 = 9;
  }

  else
  {
    v34 = *(v33 + 64);
  }

  if (v34 + 1 > v32)
  {
    v32 = v34 + 1;
  }

  if (v32 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v32;
  }

  v36 = a2[v35];
  v37 = v36 - 4;
  if (v36 < 4)
  {
    v39 = a1;
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

    v39 = a1;
    switch(v38)
    {
      case 1:
        v40 = *a2;
        goto LABEL_46;
      case 2:
        v40 = *a2;
        goto LABEL_46;
      case 3:
        v40 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v40 = *a2;
LABEL_46:
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

  v189 = v28;
  v41 = ~v12;
  v42 = ~v24;
  switch(v36)
  {
    case 0u:
      v43 = v10;
      v181 = ~v6;
      v183 = v16;
      v175 = v18;
      v173 = v19;
      v177 = v17;
      __n = v20;
      v185 = v20 + 7;
      v187 = v35;
      v204 = v31 + 1;
      v216 = v31;
      (*(v198 + 16))(v39);
      __dst = (&v39[v13] & v41);
      v44 = (&a2[v13] & v41);
      v45 = v44[v216];
      v46 = v45 - 10;
      if (v45 >= 0xA)
      {
        if (v216 <= 3)
        {
          v47 = v216;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v44;
            goto LABEL_90;
          case 2:
            v48 = *v44;
            goto LABEL_90;
          case 3:
            v48 = *(&a2[v13] & v41) | (*((&a2[v13] & v41) + 2) << 16);
            goto LABEL_90;
          case 4:
            v48 = *v44;
LABEL_90:
            if (v216 < 4)
            {
              v45 = (v48 | (v46 << (8 * v216))) + 10;
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
          v65 = (&v39[v13] & v41);
          (*(v194 + 16))(__dst, v44, v195);
          *(__dst + v216) = 0;
          goto LABEL_167;
        case 1u:
          (*(v194 + 16))(__dst, v44, v195);
          *((__dst + v213) & 0xFFFFFFFFFFFFFFF8) = *(&v44[v213] & 0xFFFFFFFFFFFFFFF8);
          *(__dst + v216) = 1;
          sub_1DD0DCF8C();
        case 2u:
          v65 = (&v39[v13] & v41);
          *__dst = *v44;
          v65[1] = *((&a2[v13] & v41) + 8);
          v65[2] = *((&a2[v13] & v41) + 0x10);
          *(__dst + v216) = 2;

          goto LABEL_145;
        case 3u:
          v65 = (&v39[v13] & v41);
          *__dst = *v44;
          *(__dst + v216) = 3;
          swift_unknownObjectRetain();
          goto LABEL_167;
        case 4u:
          v65 = (&v39[v13] & v41);
          v67 = v216;
          (*(v192 + 16))(__dst, v44, v193);
          v68 = 4;
          goto LABEL_104;
        case 5u:
          v75 = *v44;
          v65 = (&v39[v13] & v41);
          *__dst = *v44;
          *(__dst + v216) = 5;
          v76 = v75;
          goto LABEL_167;
        case 6u:
          v65 = (&v39[v13] & v41);
          (*(v219 + 16))(__dst, v44, v197);
          v79 = ((__dst + v183) & v181);
          v80 = (&v44[v183] & v181);
          if (__swift_getEnumTagSinglePayload(v80, 1, v196))
          {
            memcpy(v79, v80, __n);
          }

          else
          {
            (*(v202 + 16))(v79, v80, v196);
            __swift_storeEnumTagSinglePayload(v79, 0, 1, v196);
          }

          v125 = ((v79 + v185) & 0xFFFFFFFFFFFFFFF8);
          v126 = ((v80 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v125[1] = v126[1];
          v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
          v129 = *v128;
          *(v127 + 4) = *(v128 + 4);
          *v127 = v129;
          *(__dst + v216) = 6;
          goto LABEL_145;
        case 7u:
          v65 = (&v39[v13] & v41);
          (*(v219 + 16))(__dst, v44, v197);
          v71 = ((__dst + v183) & v181);
          v72 = (&v44[v183] & v181);
          if (__swift_getEnumTagSinglePayload(v72, 1, v196))
          {
            memcpy(v71, v72, __n);
          }

          else
          {
            (*(v202 + 16))(v71, v72, v196);
            __swift_storeEnumTagSinglePayload(v71, 0, 1, v196);
          }

          v103 = ((v71 + v185) & 0xFFFFFFFFFFFFFFF8);
          v104 = ((v72 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v103 = *v104;
          v103[1] = v104[1];
          v105 = (v103 + 19) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v104 + 19) & 0xFFFFFFFFFFFFFFF8;
          v107 = *v106;
          *(v105 + 4) = *(v106 + 4);
          *v105 = v107;
          v108 = ((__dst + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          v109 = (&v44[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v108[1] = v109[1];
          v110 = ((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
          v111 = ((v109 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v110 = *v111;
          v110[1] = v111[1];
          v112 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8);
          v113 = ((v111 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          *(__dst + v216) = 7;

LABEL_145:

          goto LABEL_167;
        case 8u:
          (*(v190 + 16))(__dst, v44, v191);
          v83 = ((__dst + v207 + 7) & 0xFFFFFFFFFFFFFFF8);
          v84 = (&v44[v207 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v83 = *v84;
          v83[1] = v84[1];
          v85 = ((v83 + v211) & v42);
          v86 = ((v84 + v211) & v42);

          if (v25 != v189)
          {
            v90 = ((v86 + v183) & v181);
            if (v26 == v189)
            {
              v91 = v196;
              v65 = __dst;
              if (v175 < 2)
              {
LABEL_153:
                v92 = v219;
                v88 = ~v6;
                v89 = v183;
                goto LABEL_154;
              }

              if (__swift_getEnumTagSinglePayload((v86 + v183) & v181, v175, v196) >= 2)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v135 = *(((v90 + v185) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v135 >= 0xFFFFFFFF)
              {
                LODWORD(v135) = -1;
              }

              v65 = __dst;
              if ((v135 + 1) >= 2)
              {
                goto LABEL_134;
              }
            }

            v91 = v196;
            goto LABEL_153;
          }

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, v25, v197);
          v65 = __dst;
          if (EnumTagSinglePayload)
          {
LABEL_134:
            memcpy(v85, v86, v22);
LABEL_165:
            v144 = __n;
            goto LABEL_166;
          }

          v88 = ~v6;
          v89 = v183;
          v90 = ((v86 + v183) & v181);
          v91 = v196;
          v92 = v219;
LABEL_154:
          (*(v92 + 16))(v85, v86, v197);
          v136 = ((v85 + v89) & v88);
          if (__swift_getEnumTagSinglePayload(v90, 1, v91))
          {
            memcpy(v136, v90, __n);
          }

          else
          {
            (*(v202 + 16))(v136, v90, v91);
            __swift_storeEnumTagSinglePayload(v136, 0, 1, v91);
          }

          v139 = ((v136 + v185) & 0xFFFFFFFFFFFFFFF8);
          v140 = ((v90 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v139 = *v140;
          v139[1] = v140[1];
          v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
          v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
          v143 = *v142;
          *(v141 + 4) = *(v142 + 4);
          *v141 = v143;

          v144 = v173;
          if (!v175)
          {
            goto LABEL_165;
          }

LABEL_166:
          v145 = (((v177 + v144 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v146 = ((v85 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          v147 = *((v86 + v145 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v146 = v147;
          *(v65 + v216) = 8;
          v148 = v147;
          v39 = a1;
LABEL_167:
          v149 = (&v44[v204 + 7] & 0xFFFFFFFFFFFFFFF8);
          v150 = ((v65 + v204 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v150 = *v149;
          v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
          v152 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
          v153 = *(v152 + 24);

          if (v153 < 0xFFFFFFFF)
          {
            v154 = *v152;
            v155 = *(v152 + 16);
            *(v151 + 32) = *(v152 + 32);
            *v151 = v154;
            *(v151 + 16) = v155;
          }

          else
          {
            *(v151 + 24) = v153;
            *(v151 + 32) = *(v152 + 32);
            (**(v153 - 8))(v151, v152, v153);
          }

          *(v151 + 40) = *(v152 + 40);
          v39[v187] = 0;
          return v39;
        case 9u:
          v65 = (&v39[v13] & v41);
          v67 = v216;
          (*(v209 + 16))(__dst, v44, v43);
          v68 = 9;
LABEL_104:
          *(v65 + v67) = v68;
          goto LABEL_167;
        default:
          v65 = (&v39[v13] & v41);
          memcpy(__dst, v44, v204);
          goto LABEL_167;
      }

    case 1u:
      v56 = v10;
      v182 = ~v6;
      v184 = v16;
      v176 = v18;
      v174 = v19;
      v178 = v17;
      __na = v20;
      v186 = v20 + 7;
      v188 = v35;
      v205 = v31 + 1;
      v217 = v31;
      (*(v198 + 16))(v39);
      __dsta = (&v39[v13] & v41);
      v57 = (&a2[v13] & v41);
      v58 = v57[v217];
      v59 = v58 - 10;
      if (v58 >= 0xA)
      {
        if (v217 <= 3)
        {
          v60 = v217;
        }

        else
        {
          v60 = 4;
        }

        switch(v60)
        {
          case 1:
            v61 = *v57;
            goto LABEL_96;
          case 2:
            v61 = *v57;
            goto LABEL_96;
          case 3:
            v61 = *(&a2[v13] & v41) | (*((&a2[v13] & v41) + 2) << 16);
            goto LABEL_96;
          case 4:
            v61 = *v57;
LABEL_96:
            if (v217 < 4)
            {
              v58 = (v61 | (v59 << (8 * v217))) + 10;
            }

            else
            {
              v58 = v61 + 10;
            }

            break;
          default:
            goto LABEL_99;
        }
      }

      break;
    case 2u:
      v49 = a2[v34];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v34 <= 3)
        {
          v51 = v34;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a2;
            goto LABEL_77;
          case 2:
            v52 = *a2;
            goto LABEL_77;
          case 3:
            v52 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v52 = *a2;
LABEL_77:
            if (v34 < 4)
            {
              v49 = (v52 | (v50 << (8 * v34))) + 2;
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
        v63 = *a2;
        v64 = *a2;
        *v39 = v63;
        v39[8] = a2[8];
        v39[v34] = 1;
      }

      else if (v49)
      {
        memcpy(v39, a2, v34 + 1);
      }

      else
      {
        (*(v33 + 16))(v39);
        v39[v34] = 0;
      }

      v55 = 2;
      goto LABEL_86;
    case 3u:
      v53 = *a2;
      v54 = *a2;
      *v39 = v53;
      v39[8] = a2[8];
      v55 = 3;
LABEL_86:
      v39[v35] = v55;
      return v39;
    default:

      return memcpy(v39, a2, v35 + 1);
  }

LABEL_99:
  switch(v58)
  {
    case 0u:
      v66 = (&v39[v13] & v41);
      (*(v194 + 16))(__dsta, v57, v195);
      *(__dsta + v217) = 0;
      goto LABEL_175;
    case 1u:
      (*(v194 + 16))(__dsta, v57, v195);
      *((__dsta + v213) & 0xFFFFFFFFFFFFFFF8) = *(&v57[v213] & 0xFFFFFFFFFFFFFFF8);
      *(__dsta + v217) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v66 = (&v39[v13] & v41);
      *__dsta = *v57;
      v66[1] = *((&a2[v13] & v41) + 8);
      v66[2] = *((&a2[v13] & v41) + 0x10);
      *(__dsta + v217) = 2;

      goto LABEL_148;
    case 3u:
      v66 = (&v39[v13] & v41);
      *__dsta = *v57;
      *(__dsta + v217) = 3;
      swift_unknownObjectRetain();
      goto LABEL_175;
    case 4u:
      v66 = (&v39[v13] & v41);
      v69 = v217;
      (*(v192 + 16))(__dsta, v57, v193);
      v70 = 4;
      goto LABEL_106;
    case 5u:
      v77 = *v57;
      v66 = (&v39[v13] & v41);
      *__dsta = *v57;
      *(__dsta + v217) = 5;
      v78 = v77;
      goto LABEL_175;
    case 6u:
      v66 = (&v39[v13] & v41);
      (*(v219 + 16))(__dsta, v57, v197);
      v81 = ((__dsta + v184) & v182);
      v82 = (&v57[v184] & v182);
      if (__swift_getEnumTagSinglePayload(v82, 1, v196))
      {
        memcpy(v81, v82, __na);
      }

      else
      {
        (*(v202 + 16))(v81, v82, v196);
        __swift_storeEnumTagSinglePayload(v81, 0, 1, v196);
      }

      v130 = ((v81 + v186) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v82 + v186) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = (v130 + 19) & 0xFFFFFFFFFFFFFFF8;
      v133 = (v131 + 19) & 0xFFFFFFFFFFFFFFF8;
      v134 = *v133;
      *(v132 + 4) = *(v133 + 4);
      *v132 = v134;
      *(__dsta + v217) = 6;
      goto LABEL_148;
    case 7u:
      v66 = (&v39[v13] & v41);
      (*(v219 + 16))(__dsta, v57, v197);
      v73 = ((__dsta + v184) & v182);
      v74 = (&v57[v184] & v182);
      if (__swift_getEnumTagSinglePayload(v74, 1, v196))
      {
        memcpy(v73, v74, __na);
      }

      else
      {
        (*(v202 + 16))(v73, v74, v196);
        __swift_storeEnumTagSinglePayload(v73, 0, 1, v196);
      }

      v114 = ((v73 + v186) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v74 + v186) & 0xFFFFFFFFFFFFFFF8);
      *v114 = *v115;
      v114[1] = v115[1];
      v116 = (v114 + 19) & 0xFFFFFFFFFFFFFFF8;
      v117 = (v115 + 19) & 0xFFFFFFFFFFFFFFF8;
      v118 = *v117;
      *(v116 + 4) = *(v117 + 4);
      *v116 = v118;
      v119 = ((__dsta + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v120 = (&v57[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v119[1] = v120[1];
      v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
      v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v121 = *v122;
      v121[1] = v122[1];
      v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      v124 = ((v122 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v123 = *v124;
      v123[1] = v124[1];
      *(__dsta + v217) = 7;

LABEL_148:

      goto LABEL_175;
    case 8u:
      (*(v190 + 16))(__dsta, v57, v191);
      v93 = ((__dsta + v207 + 7) & 0xFFFFFFFFFFFFFFF8);
      v94 = (&v57[v207 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v93 = *v94;
      v93[1] = v94[1];
      v95 = ((v93 + v211) & v42);
      v96 = ((v94 + v211) & v42);

      if (v25 == v189)
      {
        v97 = __swift_getEnumTagSinglePayload(v96, v25, v197);
        v66 = __dsta;
        if (!v97)
        {
          v98 = ~v6;
          v99 = v184;
          v100 = ((v96 + v184) & v182);
          v101 = v196;
          v102 = v219;
          goto LABEL_161;
        }

LABEL_138:
        memcpy(v95, v96, v22);
        goto LABEL_173;
      }

      v100 = ((v96 + v184) & v182);
      if (v26 == v189)
      {
        v101 = v196;
        v66 = __dsta;
        if (v176 < 2)
        {
LABEL_160:
          v102 = v219;
          v98 = ~v6;
          v99 = v184;
LABEL_161:
          (*(v102 + 16))(v95, v96, v197);
          v138 = ((v95 + v99) & v98);
          if (__swift_getEnumTagSinglePayload(v100, 1, v101))
          {
            memcpy(v138, v100, __na);
          }

          else
          {
            (*(v202 + 16))(v138, v100, v101);
            __swift_storeEnumTagSinglePayload(v138, 0, 1, v101);
          }

          v156 = ((v138 + v186) & 0xFFFFFFFFFFFFFFF8);
          v157 = ((v100 + v186) & 0xFFFFFFFFFFFFFFF8);
          *v156 = *v157;
          v156[1] = v157[1];
          v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
          v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
          v160 = *v159;
          *(v158 + 4) = *(v159 + 4);
          *v158 = v160;

          v161 = v174;
          if (v176)
          {
LABEL_174:
            v162 = (((v178 + v161 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v163 = ((v95 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
            v164 = *((v96 + v162 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v163 = v164;
            *(v66 + v217) = 8;
            v165 = v164;
            v39 = a1;
LABEL_175:
            v166 = (&v57[v205 + 7] & 0xFFFFFFFFFFFFFFF8);
            v167 = ((v66 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v167 = *v166;
            v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
            v169 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
            v170 = *(v169 + 24);

            if (v170 < 0xFFFFFFFF)
            {
              v171 = *v169;
              v172 = *(v169 + 16);
              *(v168 + 32) = *(v169 + 32);
              *v168 = v171;
              *(v168 + 16) = v172;
            }

            else
            {
              *(v168 + 24) = v170;
              *(v168 + 32) = *(v169 + 32);
              (**(v170 - 8))(v168, v169, v170);
            }

            *(v168 + 40) = *(v169 + 40);
            v39[v188] = 1;
            return v39;
          }

LABEL_173:
          v161 = __na;
          goto LABEL_174;
        }

        if (__swift_getEnumTagSinglePayload((v96 + v184) & v182, v176, v196) >= 2)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v137 = *(((v100 + v186) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v137 >= 0xFFFFFFFF)
        {
          LODWORD(v137) = -1;
        }

        v66 = __dsta;
        if ((v137 + 1) >= 2)
        {
          goto LABEL_138;
        }
      }

      v101 = v196;
      goto LABEL_160;
    case 9u:
      v66 = (&v39[v13] & v41);
      v69 = v217;
      (*(v209 + 16))(__dsta, v57, v56);
      v70 = 9;
LABEL_106:
      *(v66 + v69) = v70;
      goto LABEL_175;
    default:
      v66 = (&v39[v13] & v41);
      memcpy(__dsta, v57, v205);
      goto LABEL_175;
  }
}

unint64_t sub_1DCB78BC8()
{
  result = qword_1EDE46178;
  if (!qword_1EDE46178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46178);
  }

  return result;
}

void sub_1DCB78C0C(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([a1 _type] == 2 && !sub_1DCB08B14(a2))
  {
    sub_1DCF4A748(v3);
  }

  else
  {
    v4 = [v3 _intentInstanceDescription];
    v5 = OUTLINED_FUNCTION_33_4();
    v6 = sub_1DCB08B14(v5);
    if (!v6)
    {
LABEL_18:

      return;
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      v24 = v3;
      do
      {
        if ((a2 & 0xC000000000000001) == 0)
        {
          v11 = *(a2 + 8 * v8 + 32);
          sub_1DD0DCF8C();
        }

        v10 = MEMORY[0x1E12A72C0](v8, a2);
        if (*(v10 + 24) == 1 && (v12 = *(v10 + 32), v13 = *(v10 + 40), v14 = sub_1DD0DDF8C(), v15 = [v3 slotByName_], v14, v15))
        {

          v17 = *(v10 + 32);
          v16 = *(v10 + 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = *(v9 + 16);
            sub_1DCB34108();
            v9 = v22;
          }

          v19 = *(v9 + 16);
          v18 = *(v9 + 24);
          if (v19 >= v18 >> 1)
          {
            OUTLINED_FUNCTION_21_0(v18);
            sub_1DCB34108();
            v9 = v23;
          }

          *(v9 + 16) = v19 + 1;
          v20 = v9 + 16 * v19;
          *(v20 + 32) = v17;
          *(v20 + 40) = v16;
          v3 = v24;
        }

        else
        {
        }

        ++v8;
      }

      while (v7 != v8);
      goto LABEL_18;
    }

    __break(1u);
  }
}

uint64_t sub_1DCB78DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for Parse(0);

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1DCB78E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for Parse(0);

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t OutputGenerationManifest.printSupportingDialogInDisplayModes.setter()
{
  result = OUTLINED_FUNCTION_5_73();
  *(v1 + *(result + 64)) = v0;
  return result;
}

void OUTLINED_FUNCTION_160(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[23] = a1;
  v3[24] = a2;
  v3[20] = v2;
  v5 = v3[28];

  sub_1DD0DCF8C();
}

__n128 OUTLINED_FUNCTION_160_0()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[1].n128_u64[1];
  return v0[2];
}

unint64_t sub_1DCB78F10(uint64_t a1)
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

uint64_t sub_1DCB7915C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB79258()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_62_10();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCB792D0()
{
  sub_1DCB79304();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCB79304()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  sub_1DCB79360(*(v0 + 272), *(v0 + 280));
  return v0;
}

void sub_1DCB79360(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    sub_1DCB79378(a1, a2 & 1);
  }
}

void sub_1DCB79378(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1DCB79384()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 72);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DCB79474, 0, 0);
}

uint64_t sub_1DCB79474()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCB794CC()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = *(v1 + 72);

  v7 = *(v4 + 8);

  return v7();
}

void sub_1DCB795F4()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB79808()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCB79974(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v1 + *(*v1 + 144);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = *(v4 + 16);
  *v4 = *a1;
  *(v4 + 16) = v2;
  v8 = *(v4 + 24);
  *(v4 + 24) = v3;
  sub_1DCB799DC(v6, v5, v7, v8);

  sub_1DCB795F4();
}

void sub_1DCB799DC(void *a1, void *a2, void *a3, char a4)
{
  switch(a4)
  {
    case 0:

      a1 = a3;
      goto LABEL_7;
    case 1:
    case 2:

      a1 = a2;
LABEL_7:

      goto LABEL_5;
    case 3:
      v4 = a3 & 1;

      sub_1DCB74F28(a1, a2, v4);
      return;
    case 4:

LABEL_5:

      break;
    default:
      return;
  }
}

id sub_1DCB79AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1 + *(*v1 + 144);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 24);
  if (v7 == 4)
  {
    *a1 = v5;
    *(a1 + 8) = v6 & 1;
    *(a1 + 16) = 1;

    return v5;
  }

  else
  {
    v8 = *(v4 + 16);
    if (v7 == 3)
    {
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v8 & 1;

      return sub_1DCB79C24(v5, v6, v8 & 1);
    }

    else
    {
      v10 = *(v3 + 80);
      v11 = *(v3 + 88);
      type metadata accessor for SiriKitHandleIntentFlow.HandleIntentFlowError();
      OUTLINED_FUNCTION_4_59();
      swift_getWitnessTable();
      v12 = OUTLINED_FUNCTION_79_0();
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v8;
      *(v13 + 24) = v7;
      *a1 = v12;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      OUTLINED_FUNCTION_26_18();

      return sub_1DCB61AE4(v14, v15, v16, v7);
    }
  }
}

id sub_1DCB79C24(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

uint64_t sub_1DCB79C80(unint64_t a1, uint64_t a2, int a3)
{
  v17 = a3;
  v4 = sub_1DD0DD89C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v7 = sub_1DD0DD85C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v13 = sub_1DD0DD88C();
  __swift_project_value_buffer(v13, qword_1EDE57DD0);
  v14 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  v16 = sub_1DD0DE7EC();
  result = sub_1DD0DE92C();
  if ((result & 1) == 0)
  {

    return (*(v8 + 8))(v12, v7);
  }

  if ((v17 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
LABEL_10:
      sub_1DD0DCF8C();
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DCB79F5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCB7A03C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCB7A138()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_9_65();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCB7A1A0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v3[32];
    (*(v3[27] + 8))(v3[28], v3[26]);

    v10 = v3[28];

    v11 = *(v7 + 8);

    v11();
  }
}

uint64_t sub_1DCB7A2E0()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = v1[14];
  v6 = v1[15];
  v7 = v1[16];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCB7A420()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = OUTLINED_FUNCTION_86();
  sub_1DCB799DC(v3, v4, v1, 2);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCB7A4A4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCB79C24(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for ParseCodingErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_1DCB7A560()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_99_7();
  v2 = *(v1 + 80);
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_80_8();
  v5 = type metadata accessor for RCHFlowAsync.RCHFlowError();
  OUTLINED_FUNCTION_9(v5);
  v62 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v61 = type metadata accessor for SiriKitEventPayload(0);
  v11 = OUTLINED_FUNCTION_2(v61);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_80_8();
  v15 = type metadata accessor for RCHFlowAsync.State();
  v16 = OUTLINED_FUNCTION_9(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  OUTLINED_FUNCTION_10_2();
  v64 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v60 - v26);
  v28 = *(v0 + 8);
  v63 = *v0;
  v29 = *(v0 + 16);
  sub_1DCB7AC2C(&v60 - v26);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v30 = *v27;

    if (v29)
    {
      v31 = v28;
      if (v28)
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v32 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
        v33 = sub_1DD0DD8EC();
        v34 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_61_1(v34))
        {
          v35 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_47_0(v35);
          OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v36, v37, "RCHFlow Handle resulted in an error that was already handled. Cancelling with no ouput");
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_45_19(0x8000000000000000);
        OUTLINED_FUNCTION_95_6();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_88_11();
      }

      v48 = v64;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v49 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v49, qword_1EDE57E00);
      v50 = v63;
      v51 = v63;
      v52 = sub_1DD0DD8EC();
      v53 = sub_1DD0DE6EC();
      sub_1DCB74F28(v50, v31, 1);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_151();
        v62 = v30;
        v55 = v54;
        v56 = OUTLINED_FUNCTION_83();
        v65 = v56;
        *v55 = 136315138;
        swift_getErrorValue();
        v57 = sub_1DD0DF18C();
        OUTLINED_FUNCTION_102_4(v57, v58);
        OUTLINED_FUNCTION_104_0();

        *(v55 + 4) = v50;
        _os_log_impl(&dword_1DCAFC000, v52, v53, "RCHFlow Handle resulted in an error that not handled. Will attempt to send error dialog: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        OUTLINED_FUNCTION_80();
        v50 = v63;
        OUTLINED_FUNCTION_80();
      }

      *v48 = v50;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      v59 = v50;
      OUTLINED_FUNCTION_88_11();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v39 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
    v40 = sub_1DD0DD8EC();
    v41 = sub_1DD0DE6DC();
    v42 = OUTLINED_FUNCTION_61_1(v41);
    v43 = v63;
    if (v42)
    {
      v44 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0(v44);
      OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v45, v46, "RCHFlow Handle completed normally");
      OUTLINED_FUNCTION_37();
    }

    v47 = v64;
    *v64 = v30;
    v47[1] = v43;
    v47[2] = v28;
    OUTLINED_FUNCTION_95_6();
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(v18 + 8))(v27, v15);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v38 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCB7ABCC(__int128 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  sub_1DCB7A560();
}

uint64_t sub_1DCB7AC2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for RCHFlowAsync.State();
  OUTLINED_FUNCTION_2(v10);
  return (*(v11 + 16))(a1, &v1[v5]);
}

void *sub_1DCB7ACD8(unint64_t *a1, void *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = sub_1DD0DB04C();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      v7 = type metadata accessor for Input(0);
      v8 = v7[5];
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v12 = sub_1DD0DC76C();
          (*(*(v12 - 8) + 16))(v9, v10, v12);
          goto LABEL_88;
        case 1u:
          v81 = sub_1DD0DC76C();
          (*(*(v81 - 8) + 16))(v9, v10, v81);
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v9[*(v82 + 48)] = *&v10[*(v82 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v58 = *(v10 + 1);
          *v9 = *v10;
          *(v9 + 1) = v58;
          *(v9 + 2) = *(v10 + 2);

          goto LABEL_88;
        case 3u:
          *v9 = *v10;
          swift_unknownObjectRetain();
          goto LABEL_88;
        case 4u:
          v51 = sub_1DD0DB1EC();
          (*(*(v51 - 8) + 16))(v9, v10, v51);
          goto LABEL_88;
        case 5u:
          v88 = *v10;
          *v9 = *v10;
          v89 = v88;
          goto LABEL_88;
        case 6u:
          v92 = sub_1DD0DB4BC();
          (*(*(v92 - 8) + 16))(v9, v10, v92);
          v93 = type metadata accessor for USOParse();
          v94 = v93[5];
          v95 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v94], 1, v95))
          {
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v94], &v10[v94], *(*(v96 - 8) + 64));
          }

          else
          {
            (*(*(v95 - 8) + 16))(&v9[v94], &v10[v94], v95);
            __swift_storeEnumTagSinglePayload(&v9[v94], 0, 1, v95);
          }

          v194 = v93[6];
          v195 = &v9[v194];
          v196 = &v10[v194];
          v197 = *(v196 + 1);
          *v195 = *v196;
          *(v195 + 1) = v197;
          v198 = v93[7];
          v199 = &v9[v198];
          v200 = &v10[v198];
          v199[4] = v200[4];
          *v199 = *v200;

          goto LABEL_88;
        case 7u:
          v75 = sub_1DD0DB4BC();
          (*(*(v75 - 8) + 16))(v9, v10, v75);
          v76 = type metadata accessor for USOParse();
          v77 = v76[5];
          v78 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v10[v77], 1, v78))
          {
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v9[v77], &v10[v77], *(*(v79 - 8) + 64));
          }

          else
          {
            (*(*(v78 - 8) + 16))(&v9[v77], &v10[v77], v78);
            __swift_storeEnumTagSinglePayload(&v9[v77], 0, 1, v78);
          }

          v154 = v76[6];
          v155 = &v9[v154];
          v156 = &v10[v154];
          v157 = *(v156 + 1);
          *v155 = *v156;
          *(v155 + 1) = v157;
          v158 = v76[7];
          v159 = &v9[v158];
          v160 = &v10[v158];
          v159[4] = v160[4];
          *v159 = *v160;
          v161 = type metadata accessor for LinkParse();
          v162 = v161[5];
          v163 = &v9[v162];
          v164 = &v10[v162];
          v165 = *(v164 + 1);
          *v163 = *v164;
          *(v163 + 1) = v165;
          v166 = v161[6];
          v167 = &v9[v166];
          v168 = &v10[v166];
          v169 = *(v168 + 1);
          *v167 = *v168;
          *(v167 + 1) = v169;
          v170 = v161[7];
          v171 = &v9[v170];
          v172 = &v10[v170];
          v173 = *(v172 + 1);
          *v171 = *v172;
          *(v171 + 1) = v173;

          goto LABEL_88;
        case 8u:
          v97 = sub_1DD0DD12C();
          (*(*(v97 - 8) + 16))(v9, v10, v97);
          v98 = type metadata accessor for NLRouterParse();
          v99 = *(v98 + 20);
          v100 = &v9[v99];
          v101 = &v10[v99];
          v102 = *(v101 + 1);
          *v100 = *v101;
          *(v100 + 1) = v102;
          v103 = *(v98 + 24);
          v277 = v98;
          __dsta = &v9[v103];
          v104 = &v10[v103];
          v105 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v104, 1, v105))
          {
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dsta, v104, *(*(v106 - 8) + 64));
          }

          else
          {
            v201 = sub_1DD0DB4BC();
            (*(*(v201 - 8) + 16))(__dsta, v104, v201);
            v202 = v105[5];
            v274 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v104[v202], 1, v274))
            {
              v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dsta[v202], &v104[v202], *(*(v203 - 8) + 64));
            }

            else
            {
              (*(*(v274 - 8) + 16))(&__dsta[v202], &v104[v202]);
              __swift_storeEnumTagSinglePayload(&__dsta[v202], 0, 1, v274);
            }

            v233 = v105[6];
            v234 = &__dsta[v233];
            v235 = &v104[v233];
            v236 = *(v235 + 1);
            *v234 = *v235;
            *(v234 + 1) = v236;
            v237 = v105[7];
            v238 = &__dsta[v237];
            v239 = &v104[v237];
            v238[4] = v239[4];
            *v238 = *v239;

            __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v105);
          }

          v240 = *(v277 + 28);
          v241 = *&v10[v240];
          *&v9[v240] = v241;
          v242 = v241;
          goto LABEL_88;
        case 9u:
          v54 = sub_1DD0DD08C();
          (*(*(v54 - 8) + 16))(v9, v10, v54);
LABEL_88:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v9, v10, *(*(v11 - 8) + 64));
          break;
      }

      *(a1 + v7[6]) = *(a2 + v7[6]);
      v243 = v7[7];
      v244 = a1 + v243;
      v245 = a2 + v243;
      v246 = *(a2 + v243 + 24);

      if (v246)
      {
        v247 = *(v245 + 4);
        *(v244 + 3) = v246;
        *(v244 + 4) = v247;
        (**(v246 - 8))(v244, v245, v246);
      }

      else
      {
        v248 = *(v245 + 1);
        *v244 = *v245;
        *(v244 + 1) = v248;
        *(v244 + 4) = *(v245 + 4);
      }

      *(a1 + v7[8]) = *(a2 + v7[8]);
      v249 = *(a3 + 16);
      v250 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      v251 = *(swift_getTupleTypeMetadata2() + 48);
      v252 = *(a2 + v251);
      *(a1 + v251) = v252;
      v253 = v252;
      goto LABEL_101;
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      v24 = *a2;
      v25 = a2[1];
      *a1 = v24;
      a1[1] = v25;
      sub_1DD0DCF8C();
    case 3u:
      v26 = *a2;
      v27 = a2[1];
      *a1 = v26;
      a1[1] = v27;
      sub_1DD0DCF8C();
    case 4u:
      v15 = sub_1DD0DB04C();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = type metadata accessor for Input(0);
      v17 = v16[5];
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v21 = sub_1DD0DC76C();
          (*(*(v21 - 8) + 16))(v18, v19, v21);
          goto LABEL_80;
        case 1u:
          v52 = sub_1DD0DC76C();
          (*(*(v52 - 8) + 16))(v18, v19, v52);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v18[*(v53 + 48)] = *&v19[*(v53 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v45 = *(v19 + 1);
          *v18 = *v19;
          *(v18 + 1) = v45;
          *(v18 + 2) = *(v19 + 2);

          goto LABEL_80;
        case 3u:
          *v18 = *v19;
          swift_unknownObjectRetain();
          goto LABEL_80;
        case 4u:
          v43 = sub_1DD0DB1EC();
          (*(*(v43 - 8) + 16))(v18, v19, v43);
          goto LABEL_80;
        case 5u:
          v55 = *v19;
          *v18 = *v19;
          v56 = v55;
          goto LABEL_80;
        case 6u:
          v59 = sub_1DD0DB4BC();
          (*(*(v59 - 8) + 16))(v18, v19, v59);
          v60 = type metadata accessor for USOParse();
          v61 = v60[5];
          v62 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v61], 1, v62))
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v61], &v19[v61], *(*(v63 - 8) + 64));
          }

          else
          {
            (*(*(v62 - 8) + 16))(&v18[v61], &v19[v61], v62);
            __swift_storeEnumTagSinglePayload(&v18[v61], 0, 1, v62);
          }

          v144 = v60[6];
          v145 = &v18[v144];
          v146 = &v19[v144];
          v147 = *(v146 + 1);
          *v145 = *v146;
          *(v145 + 1) = v147;
          v148 = v60[7];
          v149 = &v18[v148];
          v150 = &v19[v148];
          v149[4] = v150[4];
          *v149 = *v150;

          goto LABEL_80;
        case 7u:
          v46 = sub_1DD0DB4BC();
          (*(*(v46 - 8) + 16))(v18, v19, v46);
          v47 = type metadata accessor for USOParse();
          v48 = v47[5];
          v49 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v48], 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v18[v48], &v19[v48], *(*(v50 - 8) + 64));
          }

          else
          {
            (*(*(v49 - 8) + 16))(&v18[v48], &v19[v48], v49);
            __swift_storeEnumTagSinglePayload(&v18[v48], 0, 1, v49);
          }

          v124 = v47[6];
          v125 = &v18[v124];
          v126 = &v19[v124];
          v127 = *(v126 + 1);
          *v125 = *v126;
          *(v125 + 1) = v127;
          v128 = v47[7];
          v129 = &v18[v128];
          v130 = &v19[v128];
          v129[4] = v130[4];
          *v129 = *v130;
          v131 = type metadata accessor for LinkParse();
          v132 = v131[5];
          v133 = &v18[v132];
          v134 = &v19[v132];
          v135 = *(v134 + 1);
          *v133 = *v134;
          *(v133 + 1) = v135;
          v136 = v131[6];
          v137 = &v18[v136];
          v138 = &v19[v136];
          v139 = *(v138 + 1);
          *v137 = *v138;
          *(v137 + 1) = v139;
          v140 = v131[7];
          v141 = &v18[v140];
          v142 = &v19[v140];
          v143 = *(v142 + 1);
          *v141 = *v142;
          *(v141 + 1) = v143;

          goto LABEL_80;
        case 8u:
          v64 = sub_1DD0DD12C();
          (*(*(v64 - 8) + 16))(v18, v19, v64);
          v65 = type metadata accessor for NLRouterParse();
          v66 = *(v65 + 20);
          v67 = &v18[v66];
          v68 = &v19[v66];
          v69 = *(v68 + 1);
          *v67 = *v68;
          *(v67 + 1) = v69;
          v70 = *(v65 + 24);
          v276 = v65;
          __dst = &v18[v70];
          v71 = &v19[v70];
          v72 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v71, 1, v72))
          {
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v71, *(*(v73 - 8) + 64));
          }

          else
          {
            v151 = sub_1DD0DB4BC();
            (*(*(v151 - 8) + 16))(__dst, v71, v151);
            v152 = v72[5];
            v273 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v71[v152], 1, v273))
            {
              v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v152], &v71[v152], *(*(v153 - 8) + 64));
            }

            else
            {
              (*(*(v273 - 8) + 16))(&__dst[v152], &v71[v152]);
              __swift_storeEnumTagSinglePayload(&__dst[v152], 0, 1, v273);
            }

            v214 = v72[6];
            v215 = &__dst[v214];
            v216 = &v71[v214];
            v217 = *(v216 + 1);
            *v215 = *v216;
            *(v215 + 1) = v217;
            v218 = v72[7];
            v219 = &__dst[v218];
            v220 = &v71[v218];
            v219[4] = v220[4];
            *v219 = *v220;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v72);
          }

          v221 = *(v276 + 28);
          v222 = *&v19[v221];
          *&v18[v221] = v222;
          v223 = v222;
          goto LABEL_80;
        case 9u:
          v44 = sub_1DD0DD08C();
          (*(*(v44 - 8) + 16))(v18, v19, v44);
LABEL_80:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v18, v19, *(*(v20 - 8) + 64));
          break;
      }

      *(a1 + v16[6]) = *(a2 + v16[6]);
      v224 = v16[7];
      v225 = a1 + v224;
      v226 = a2 + v224;
      v227 = *(a2 + v224 + 24);

      if (v227)
      {
        v228 = *(v226 + 4);
        *(v225 + 3) = v227;
        *(v225 + 4) = v228;
        (**(v227 - 8))(v225, v226, v227);
      }

      else
      {
        v229 = *(v226 + 1);
        *v225 = *v226;
        *(v225 + 1) = v229;
        *(v225 + 4) = *(v226 + 4);
      }

      *(a1 + v16[8]) = *(a2 + v16[8]);
      v230 = *(a3 + 16);
      v231 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
      sub_1DD0DCF8C();
    case 5u:
      v28 = sub_1DD0DB04C();
      (*(*(v28 - 8) + 16))(a1, a2, v28);
      v29 = type metadata accessor for Input(0);
      v30 = v29[5];
      v31 = a1 + v30;
      v32 = a2 + v30;
      v33 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v34 = sub_1DD0DC76C();
          (*(*(v34 - 8) + 16))(v31, v32, v34);
          goto LABEL_96;
        case 1u:
          v90 = sub_1DD0DC76C();
          (*(*(v90 - 8) + 16))(v31, v32, v90);
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v31[*(v91 + 48)] = *&v32[*(v91 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v80 = *(v32 + 1);
          *v31 = *v32;
          *(v31 + 1) = v80;
          *(v31 + 2) = *(v32 + 2);

          goto LABEL_96;
        case 3u:
          *v31 = *v32;
          swift_unknownObjectRetain();
          goto LABEL_96;
        case 4u:
          v57 = sub_1DD0DB1EC();
          (*(*(v57 - 8) + 16))(v31, v32, v57);
          goto LABEL_96;
        case 5u:
          v107 = *v32;
          *v31 = *v32;
          v108 = v107;
          goto LABEL_96;
        case 6u:
          v109 = sub_1DD0DB4BC();
          (*(*(v109 - 8) + 16))(v31, v32, v109);
          v110 = type metadata accessor for USOParse();
          v111 = v110[5];
          v112 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v111], 1, v112))
          {
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v111], &v32[v111], *(*(v113 - 8) + 64));
          }

          else
          {
            (*(*(v112 - 8) + 16))(&v31[v111], &v32[v111], v112);
            __swift_storeEnumTagSinglePayload(&v31[v111], 0, 1, v112);
          }

          v204 = v110[6];
          v205 = &v31[v204];
          v206 = &v32[v204];
          v207 = *(v206 + 1);
          *v205 = *v206;
          *(v205 + 1) = v207;
          v208 = v110[7];
          v209 = &v31[v208];
          v210 = &v32[v208];
          v209[4] = v210[4];
          *v209 = *v210;

          goto LABEL_96;
        case 7u:
          v83 = sub_1DD0DB4BC();
          (*(*(v83 - 8) + 16))(v31, v32, v83);
          v84 = type metadata accessor for USOParse();
          v85 = v84[5];
          v86 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v32[v85], 1, v86))
          {
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v31[v85], &v32[v85], *(*(v87 - 8) + 64));
          }

          else
          {
            (*(*(v86 - 8) + 16))(&v31[v85], &v32[v85], v86);
            __swift_storeEnumTagSinglePayload(&v31[v85], 0, 1, v86);
          }

          v174 = v84[6];
          v175 = &v31[v174];
          v176 = &v32[v174];
          v177 = *(v176 + 1);
          *v175 = *v176;
          *(v175 + 1) = v177;
          v178 = v84[7];
          v179 = &v31[v178];
          v180 = &v32[v178];
          v179[4] = v180[4];
          *v179 = *v180;
          v181 = type metadata accessor for LinkParse();
          v182 = v181[5];
          v183 = &v31[v182];
          v184 = &v32[v182];
          v185 = *(v184 + 1);
          *v183 = *v184;
          *(v183 + 1) = v185;
          v186 = v181[6];
          v187 = &v31[v186];
          v188 = &v32[v186];
          v189 = *(v188 + 1);
          *v187 = *v188;
          *(v187 + 1) = v189;
          v190 = v181[7];
          v191 = &v31[v190];
          v192 = &v32[v190];
          v193 = *(v192 + 1);
          *v191 = *v192;
          *(v191 + 1) = v193;

          goto LABEL_96;
        case 8u:
          v114 = sub_1DD0DD12C();
          (*(*(v114 - 8) + 16))(v31, v32, v114);
          v115 = type metadata accessor for NLRouterParse();
          v116 = *(v115 + 20);
          v117 = &v31[v116];
          v118 = &v32[v116];
          v119 = *(v118 + 1);
          *v117 = *v118;
          *(v117 + 1) = v119;
          v120 = *(v115 + 24);
          v278 = v115;
          __dstb = &v31[v120];
          v121 = &v32[v120];
          v122 = type metadata accessor for USOParse();

          if (__swift_getEnumTagSinglePayload(v121, 1, v122))
          {
            v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v121, *(*(v123 - 8) + 64));
          }

          else
          {
            v211 = sub_1DD0DB4BC();
            (*(*(v211 - 8) + 16))(__dstb, v121, v211);
            v212 = v122[5];
            v275 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v121[v212], 1, v275))
            {
              v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v212], &v121[v212], *(*(v213 - 8) + 64));
            }

            else
            {
              (*(*(v275 - 8) + 16))(&__dstb[v212], &v121[v212]);
              __swift_storeEnumTagSinglePayload(&__dstb[v212], 0, 1, v275);
            }

            v254 = v122[6];
            v255 = &__dstb[v254];
            v256 = &v121[v254];
            v257 = *(v256 + 1);
            *v255 = *v256;
            *(v255 + 1) = v257;
            v258 = v122[7];
            v259 = &__dstb[v258];
            v260 = &v121[v258];
            v259[4] = v260[4];
            *v259 = *v260;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v122);
          }

          v261 = *(v278 + 28);
          v262 = *&v32[v261];
          *&v31[v261] = v262;
          v263 = v262;
          goto LABEL_96;
        case 9u:
          v74 = sub_1DD0DD08C();
          (*(*(v74 - 8) + 16))(v31, v32, v74);
LABEL_96:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v31, v32, *(*(v33 - 8) + 64));
          break;
      }

      *(a1 + v29[6]) = *(a2 + v29[6]);
      v264 = v29[7];
      v265 = a1 + v264;
      v266 = a2 + v264;
      v267 = *(a2 + v264 + 24);

      if (v267)
      {
        v268 = *(v266 + 4);
        *(v265 + 3) = v267;
        *(v265 + 4) = v268;
        (**(v267 - 8))(v265, v266, v267);
      }

      else
      {
        v269 = *(v266 + 1);
        *v265 = *v266;
        *(v265 + 1) = v269;
        *(v265 + 4) = *(v266 + 4);
      }

      *(a1 + v29[8]) = *(a2 + v29[8]);
      v270 = *(a3 + 16);
      v271 = *(*(*(a3 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      v272 = swift_getTupleTypeMetadata2();
      *(a1 + *(v272 + 48)) = *(a2 + *(v272 + 48));
      sub_1DD0DCF8C();
    case 6u:
      v35 = *a2;
      v36 = a2[1];
      *a1 = v35;
      a1[1] = v36;
      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 8u:
      v40 = a2[1];
      *a1 = *a2;
      a1[1] = v40;
      a1[2] = a2[2];
      sub_1DD0DCF8C();
    case 9u:
      v22 = *a2;
      v23 = a2[1];
      *a1 = v22;
      a1[1] = v23;
      sub_1DD0DCF8C();
    case 0xAu:
      v37 = *a2;
      v38 = a2[1];
      v39 = a2[2];
      sub_1DCB72E48(v37);
      *a1 = v37;
      a1[1] = v38;
      a1[2] = v39;
      goto LABEL_101;
    case 0xBu:
      v13 = *a2;
      v14 = v13;
      *a1 = v13;
LABEL_101:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v41 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v41);
      break;
  }

  return result;
}

void sub_1DCB7C864(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_59();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for RCHFlowAsync.State();
  (*(*(v10 - 8) + 24))(&v1[v5], a1, v10);
  swift_endAccess();
  sub_1DCB7E62C();
}

unint64_t *sub_1DCB7C958(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 - 8);
    (*(v6 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DB04C();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for Input(0);
        v9 = v8[5];
        v10 = a1 + v9;
        v11 = a2 + v9;
        v12 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v13 = sub_1DD0DC76C();
            (*(*(v13 - 8) + 16))(v10, v11, v13);
            goto LABEL_89;
          case 1u:
            v69 = sub_1DD0DC76C();
            (*(*(v69 - 8) + 16))(v10, v11, v69);
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v10[*(v70 + 48)] = *&v11[*(v70 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v10 = *v11;
            *(v10 + 1) = *(v11 + 1);
            *(v10 + 2) = *(v11 + 2);

            goto LABEL_89;
          case 3u:
            *v10 = *v11;
            swift_unknownObjectRetain();
            goto LABEL_89;
          case 4u:
            v42 = sub_1DD0DB1EC();
            (*(*(v42 - 8) + 16))(v10, v11, v42);
            goto LABEL_89;
          case 5u:
            v76 = *v11;
            *v10 = *v11;
            v77 = v76;
            goto LABEL_89;
          case 6u:
            v80 = sub_1DD0DB4BC();
            (*(*(v80 - 8) + 16))(v10, v11, v80);
            v81 = type metadata accessor for USOParse();
            v82 = v81[5];
            v83 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v11[v82], 1, v83))
            {
              v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v10[v82], &v11[v82], *(*(v84 - 8) + 64));
            }

            else
            {
              (*(*(v83 - 8) + 16))(&v10[v82], &v11[v82], v83);
              __swift_storeEnumTagSinglePayload(&v10[v82], 0, 1, v83);
            }

            v171 = v81[6];
            v172 = &v10[v171];
            v173 = &v11[v171];
            *v172 = *v173;
            *(v172 + 1) = *(v173 + 1);
            v174 = v81[7];
            v175 = &v10[v174];
            v176 = &v11[v174];
            v177 = *v176;
            v175[4] = v176[4];
            *v175 = v177;

            goto LABEL_89;
          case 7u:
            v64 = sub_1DD0DB4BC();
            (*(*(v64 - 8) + 16))(v10, v11, v64);
            v65 = type metadata accessor for USOParse();
            v66 = v65[5];
            v67 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v11[v66], 1, v67))
            {
              v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v10[v66], &v11[v66], *(*(v68 - 8) + 64));
            }

            else
            {
              (*(*(v67 - 8) + 16))(&v10[v66], &v11[v66], v67);
              __swift_storeEnumTagSinglePayload(&v10[v66], 0, 1, v67);
            }

            v137 = v65[6];
            v138 = &v10[v137];
            v139 = &v11[v137];
            *v138 = *v139;
            *(v138 + 1) = *(v139 + 1);
            v140 = v65[7];
            v141 = &v10[v140];
            v142 = &v11[v140];
            v143 = *v142;
            v141[4] = v142[4];
            *v141 = v143;
            v144 = type metadata accessor for LinkParse();
            v145 = v144[5];
            v146 = &v10[v145];
            v147 = &v11[v145];
            *v146 = *v147;
            *(v146 + 1) = *(v147 + 1);
            v148 = v144[6];
            v149 = &v10[v148];
            v150 = &v11[v148];
            *v149 = *v150;
            *(v149 + 1) = *(v150 + 1);
            v151 = v144[7];
            v152 = &v10[v151];
            v153 = &v11[v151];
            *v152 = *v153;
            *(v152 + 1) = *(v153 + 1);

            goto LABEL_89;
          case 8u:
            v85 = sub_1DD0DD12C();
            (*(*(v85 - 8) + 16))(v10, v11, v85);
            v86 = type metadata accessor for NLRouterParse();
            v87 = *(v86 + 20);
            v88 = &v10[v87];
            v89 = &v11[v87];
            *v88 = *v89;
            *(v88 + 1) = *(v89 + 1);
            v90 = *(v86 + 24);
            v254 = v86;
            __dsta = &v10[v90];
            v91 = &v11[v90];
            v92 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v91, 1, v92))
            {
              v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsta, v91, *(*(v93 - 8) + 64));
            }

            else
            {
              v178 = sub_1DD0DB4BC();
              (*(*(v178 - 8) + 16))(__dsta, v91, v178);
              v179 = v92[5];
              v251 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v91[v179], 1, v251))
              {
                v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsta[v179], &v91[v179], *(*(v180 - 8) + 64));
              }

              else
              {
                (*(*(v251 - 8) + 16))(&__dsta[v179], &v91[v179]);
                __swift_storeEnumTagSinglePayload(&__dsta[v179], 0, 1, v251);
              }

              v210 = v92[6];
              v211 = &__dsta[v210];
              v212 = &v91[v210];
              *v211 = *v212;
              *(v211 + 1) = *(v212 + 1);
              v213 = v92[7];
              v214 = &__dsta[v213];
              v215 = &v91[v213];
              v216 = *v215;
              v214[4] = v215[4];
              *v214 = v216;

              __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v92);
            }

            v217 = *(v254 + 28);
            v218 = *&v11[v217];
            *&v10[v217] = v218;
            v219 = v218;
            goto LABEL_89;
          case 9u:
            v45 = sub_1DD0DD08C();
            (*(*(v45 - 8) + 16))(v10, v11, v45);
LABEL_89:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v10, v11, *(*(v12 - 8) + 64));
            break;
        }

        *(a1 + v8[6]) = *(a2 + v8[6]);
        v220 = v8[7];
        v221 = a1 + v220;
        v222 = a2 + v220;
        v223 = *(a2 + v220 + 24);

        if (v223)
        {
          *(v221 + 3) = v223;
          *(v221 + 4) = *(v222 + 4);
          (**(v223 - 8))(v221, v222, v223);
        }

        else
        {
          v224 = *v222;
          v225 = *(v222 + 1);
          *(v221 + 4) = *(v222 + 4);
          *v221 = v224;
          *(v221 + 1) = v225;
        }

        *(a1 + v8[8]) = *(a2 + v8[8]);
        v226 = *(a3 + 16);
        v227 = *(*(*(a3 + 24) + 8) + 8);
        swift_getAssociatedTypeWitness();
        v228 = *(swift_getTupleTypeMetadata2() + 48);
        v229 = *(a2 + v228);
        *(a1 + v228) = v229;
        v230 = v229;
        goto LABEL_102;
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 3u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 4u:
        v16 = sub_1DD0DB04C();
        (*(*(v16 - 8) + 16))(a1, a2, v16);
        v17 = type metadata accessor for Input(0);
        v18 = v17[5];
        v19 = a1 + v18;
        v20 = a2 + v18;
        v21 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v22 = sub_1DD0DC76C();
            (*(*(v22 - 8) + 16))(v19, v20, v22);
            goto LABEL_81;
          case 1u:
            v43 = sub_1DD0DC76C();
            (*(*(v43 - 8) + 16))(v19, v20, v43);
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v19[*(v44 + 48)] = *&v20[*(v44 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v19 = *v20;
            *(v19 + 1) = *(v20 + 1);
            *(v19 + 2) = *(v20 + 2);

            goto LABEL_81;
          case 3u:
            *v19 = *v20;
            swift_unknownObjectRetain();
            goto LABEL_81;
          case 4u:
            v35 = sub_1DD0DB1EC();
            (*(*(v35 - 8) + 16))(v19, v20, v35);
            goto LABEL_81;
          case 5u:
            v46 = *v20;
            *v19 = *v20;
            v47 = v46;
            goto LABEL_81;
          case 6u:
            v49 = sub_1DD0DB4BC();
            (*(*(v49 - 8) + 16))(v19, v20, v49);
            v50 = type metadata accessor for USOParse();
            v51 = v50[5];
            v52 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v51], 1, v52))
            {
              v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v51], &v20[v51], *(*(v53 - 8) + 64));
            }

            else
            {
              (*(*(v52 - 8) + 16))(&v19[v51], &v20[v51], v52);
              __swift_storeEnumTagSinglePayload(&v19[v51], 0, 1, v52);
            }

            v127 = v50[6];
            v128 = &v19[v127];
            v129 = &v20[v127];
            *v128 = *v129;
            *(v128 + 1) = *(v129 + 1);
            v130 = v50[7];
            v131 = &v19[v130];
            v132 = &v20[v130];
            v133 = *v132;
            v131[4] = v132[4];
            *v131 = v133;

            goto LABEL_81;
          case 7u:
            v37 = sub_1DD0DB4BC();
            (*(*(v37 - 8) + 16))(v19, v20, v37);
            v38 = type metadata accessor for USOParse();
            v39 = v38[5];
            v40 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v20[v39], 1, v40))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v19[v39], &v20[v39], *(*(v41 - 8) + 64));
            }

            else
            {
              (*(*(v40 - 8) + 16))(&v19[v39], &v20[v39], v40);
              __swift_storeEnumTagSinglePayload(&v19[v39], 0, 1, v40);
            }

            v110 = v38[6];
            v111 = &v19[v110];
            v112 = &v20[v110];
            *v111 = *v112;
            *(v111 + 1) = *(v112 + 1);
            v113 = v38[7];
            v114 = &v19[v113];
            v115 = &v20[v113];
            v116 = *v115;
            v114[4] = v115[4];
            *v114 = v116;
            v117 = type metadata accessor for LinkParse();
            v118 = v117[5];
            v119 = &v19[v118];
            v120 = &v20[v118];
            *v119 = *v120;
            *(v119 + 1) = *(v120 + 1);
            v121 = v117[6];
            v122 = &v19[v121];
            v123 = &v20[v121];
            *v122 = *v123;
            *(v122 + 1) = *(v123 + 1);
            v124 = v117[7];
            v125 = &v19[v124];
            v126 = &v20[v124];
            *v125 = *v126;
            *(v125 + 1) = *(v126 + 1);

            goto LABEL_81;
          case 8u:
            v54 = sub_1DD0DD12C();
            (*(*(v54 - 8) + 16))(v19, v20, v54);
            v55 = type metadata accessor for NLRouterParse();
            v56 = *(v55 + 20);
            v57 = &v19[v56];
            v58 = &v20[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);
            v59 = *(v55 + 24);
            v253 = v55;
            __dst = &v19[v59];
            v60 = &v20[v59];
            v61 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v60, 1, v61))
            {
              v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v60, *(*(v62 - 8) + 64));
            }

            else
            {
              v134 = sub_1DD0DB4BC();
              (*(*(v134 - 8) + 16))(__dst, v60, v134);
              v135 = v61[5];
              v250 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v60[v135], 1, v250))
              {
                v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v135], &v60[v135], *(*(v136 - 8) + 64));
              }

              else
              {
                (*(*(v250 - 8) + 16))(&__dst[v135], &v60[v135]);
                __swift_storeEnumTagSinglePayload(&__dst[v135], 0, 1, v250);
              }

              v191 = v61[6];
              v192 = &__dst[v191];
              v193 = &v60[v191];
              *v192 = *v193;
              *(v192 + 1) = *(v193 + 1);
              v194 = v61[7];
              v195 = &__dst[v194];
              v196 = &v60[v194];
              v197 = *v196;
              v195[4] = v196[4];
              *v195 = v197;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v61);
            }

            v198 = *(v253 + 28);
            v199 = *&v20[v198];
            *&v19[v198] = v199;
            v200 = v199;
            goto LABEL_81;
          case 9u:
            v36 = sub_1DD0DD08C();
            (*(*(v36 - 8) + 16))(v19, v20, v36);
LABEL_81:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v19, v20, *(*(v21 - 8) + 64));
            break;
        }

        *(a1 + v17[6]) = *(a2 + v17[6]);
        v201 = v17[7];
        v202 = a1 + v201;
        v203 = a2 + v201;
        v204 = *(a2 + v201 + 24);

        if (v204)
        {
          *(v202 + 3) = v204;
          *(v202 + 4) = *(v203 + 4);
          (**(v204 - 8))(v202, v203, v204);
        }

        else
        {
          v205 = *v203;
          v206 = *(v203 + 1);
          *(v202 + 4) = *(v203 + 4);
          *v202 = v205;
          *(v202 + 1) = v206;
        }

        *(a1 + v17[8]) = *(a2 + v17[8]);
        v207 = *(a3 + 16);
        v208 = *(*(*(a3 + 24) + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *(a1 + *(TupleTypeMetadata2 + 48)) = *(a2 + *(TupleTypeMetadata2 + 48));
        sub_1DD0DCF8C();
      case 5u:
        v23 = sub_1DD0DB04C();
        (*(*(v23 - 8) + 16))(a1, a2, v23);
        v24 = type metadata accessor for Input(0);
        v25 = v24[5];
        v26 = a1 + v25;
        v27 = a2 + v25;
        v28 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v29 = sub_1DD0DC76C();
            (*(*(v29 - 8) + 16))(v26, v27, v29);
            goto LABEL_97;
          case 1u:
            v78 = sub_1DD0DC76C();
            (*(*(v78 - 8) + 16))(v26, v27, v78);
            v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v26[*(v79 + 48)] = *&v27[*(v79 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v26 = *v27;
            *(v26 + 1) = *(v27 + 1);
            *(v26 + 2) = *(v27 + 2);

            goto LABEL_97;
          case 3u:
            *v26 = *v27;
            swift_unknownObjectRetain();
            goto LABEL_97;
          case 4u:
            v48 = sub_1DD0DB1EC();
            (*(*(v48 - 8) + 16))(v26, v27, v48);
            goto LABEL_97;
          case 5u:
            v94 = *v27;
            *v26 = *v27;
            v95 = v94;
            goto LABEL_97;
          case 6u:
            v96 = sub_1DD0DB4BC();
            (*(*(v96 - 8) + 16))(v26, v27, v96);
            v97 = type metadata accessor for USOParse();
            v98 = v97[5];
            v99 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v27[v98], 1, v99))
            {
              v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v26[v98], &v27[v98], *(*(v100 - 8) + 64));
            }

            else
            {
              (*(*(v99 - 8) + 16))(&v26[v98], &v27[v98], v99);
              __swift_storeEnumTagSinglePayload(&v26[v98], 0, 1, v99);
            }

            v181 = v97[6];
            v182 = &v26[v181];
            v183 = &v27[v181];
            *v182 = *v183;
            *(v182 + 1) = *(v183 + 1);
            v184 = v97[7];
            v185 = &v26[v184];
            v186 = &v27[v184];
            v187 = *v186;
            v185[4] = v186[4];
            *v185 = v187;

            goto LABEL_97;
          case 7u:
            v71 = sub_1DD0DB4BC();
            (*(*(v71 - 8) + 16))(v26, v27, v71);
            v72 = type metadata accessor for USOParse();
            v73 = v72[5];
            v74 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v27[v73], 1, v74))
            {
              v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v26[v73], &v27[v73], *(*(v75 - 8) + 64));
            }

            else
            {
              (*(*(v74 - 8) + 16))(&v26[v73], &v27[v73], v74);
              __swift_storeEnumTagSinglePayload(&v26[v73], 0, 1, v74);
            }

            v154 = v72[6];
            v155 = &v26[v154];
            v156 = &v27[v154];
            *v155 = *v156;
            *(v155 + 1) = *(v156 + 1);
            v157 = v72[7];
            v158 = &v26[v157];
            v159 = &v27[v157];
            v160 = *v159;
            v158[4] = v159[4];
            *v158 = v160;
            v161 = type metadata accessor for LinkParse();
            v162 = v161[5];
            v163 = &v26[v162];
            v164 = &v27[v162];
            *v163 = *v164;
            *(v163 + 1) = *(v164 + 1);
            v165 = v161[6];
            v166 = &v26[v165];
            v167 = &v27[v165];
            *v166 = *v167;
            *(v166 + 1) = *(v167 + 1);
            v168 = v161[7];
            v169 = &v26[v168];
            v170 = &v27[v168];
            *v169 = *v170;
            *(v169 + 1) = *(v170 + 1);

            goto LABEL_97;
          case 8u:
            v101 = sub_1DD0DD12C();
            (*(*(v101 - 8) + 16))(v26, v27, v101);
            v102 = type metadata accessor for NLRouterParse();
            v103 = *(v102 + 20);
            v104 = &v26[v103];
            v105 = &v27[v103];
            *v104 = *v105;
            *(v104 + 1) = *(v105 + 1);
            v106 = *(v102 + 24);
            v255 = v102;
            __dstb = &v26[v106];
            v107 = &v27[v106];
            v108 = type metadata accessor for USOParse();

            if (__swift_getEnumTagSinglePayload(v107, 1, v108))
            {
              v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v107, *(*(v109 - 8) + 64));
            }

            else
            {
              v188 = sub_1DD0DB4BC();
              (*(*(v188 - 8) + 16))(__dstb, v107, v188);
              v189 = v108[5];
              v252 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v107[v189], 1, v252))
              {
                v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v189], &v107[v189], *(*(v190 - 8) + 64));
              }

              else
              {
                (*(*(v252 - 8) + 16))(&__dstb[v189], &v107[v189]);
                __swift_storeEnumTagSinglePayload(&__dstb[v189], 0, 1, v252);
              }

              v231 = v108[6];
              v232 = &__dstb[v231];
              v233 = &v107[v231];
              *v232 = *v233;
              *(v232 + 1) = *(v233 + 1);
              v234 = v108[7];
              v235 = &__dstb[v234];
              v236 = &v107[v234];
              v237 = *v236;
              v235[4] = v236[4];
              *v235 = v237;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v108);
            }

            v238 = *(v255 + 28);
            v239 = *&v27[v238];
            *&v26[v238] = v239;
            v240 = v239;
            goto LABEL_97;
          case 9u:
            v63 = sub_1DD0DD08C();
            (*(*(v63 - 8) + 16))(v26, v27, v63);
LABEL_97:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v26, v27, *(*(v28 - 8) + 64));
            break;
        }

        *(a1 + v24[6]) = *(a2 + v24[6]);
        v241 = v24[7];
        v242 = a1 + v241;
        v243 = a2 + v241;
        v244 = *(a2 + v241 + 24);

        if (v244)
        {
          *(v242 + 3) = v244;
          *(v242 + 4) = *(v243 + 4);
          (**(v244 - 8))(v242, v243, v244);
        }

        else
        {
          v245 = *v243;
          v246 = *(v243 + 1);
          *(v242 + 4) = *(v243 + 4);
          *v242 = v245;
          *(v242 + 1) = v246;
        }

        *(a1 + v24[8]) = *(a2 + v24[8]);
        v247 = *(a3 + 16);
        v248 = *(*(*(a3 + 24) + 8) + 8);
        swift_getAssociatedTypeWitness();
        type metadata accessor for RCHFlowSharedData();
        sub_1DD0DE97C();
        v249 = swift_getTupleTypeMetadata2();
        *(a1 + *(v249 + 48)) = *(a2 + *(v249 + 48));
        sub_1DD0DCF8C();
      case 6u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 8u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 9u:
        *a1 = *a2;
        a1[1] = a2[1];
        sub_1DD0DCF8C();
      case 0xAu:
        v30 = *a2;
        v31 = a2[1];
        v32 = a2[2];
        sub_1DCB72E48(v30);
        *a1 = v30;
        a1[1] = v31;
        a1[2] = v32;
        goto LABEL_102;
      case 0xBu:
        v14 = *a2;
        v15 = v14;
        *a1 = v14;
LABEL_102:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v33 = *(v6 + 64);

        return memcpy(a1, a2, v33);
    }
  }

  return a1;
}

void sub_1DCB7E62C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for RCHFlowAsync.State();
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

unint64_t sub_1DCB7E8CC(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = 0x696C616974696E49;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD000000000000017;
      break;
    case 2u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD00000000000001DLL;
      break;
    case 3u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD000000000000021;
      break;
    case 4u:
      type metadata accessor for Input(255);
      v10 = *(a1 + 16);
      v11 = *(*(*(a1 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      v12 = *&v6[*(swift_getTupleTypeMetadata2() + 48)];

      sub_1DCEED454();
      v7 = 0x706552736465654ELL;
      break;
    case 5u:
      v7 = 0xD000000000000016;
      type metadata accessor for Input(255);
      v13 = *(a1 + 16);
      v14 = *(*(*(a1 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData();
      sub_1DD0DE97C();
      v15 = *&v6[*(swift_getTupleTypeMetadata2() + 48)];

      goto LABEL_13;
    case 6u:
      (*(v3 + 8))(v6, a1);
      v7 = 0x4365766C6F736552;
      break;
    case 7u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD000000000000018;
      break;
    case 8u:
      (*(v3 + 8))(v6, a1);
      v7 = 0x656C646E6148;
      break;
    case 9u:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD000000000000010;
      break;
    case 0xAu:
      (*(v3 + 8))(v6, a1);
      v7 = 0x6574656C706D6F43;
      break;
    case 0xBu:
      (*(v3 + 8))(v6, a1);
      v7 = 0xD000000000000014;
      break;
    case 0xCu:
      return v7;
    case 0xDu:
      v7 = 0x64657472617453;
      break;
    default:
      v7 = 0xD000000000000016;
      type metadata accessor for Input(255);
      v8 = *(a1 + 16);
      v9 = *(*(*(a1 + 24) + 8) + 8);
      swift_getAssociatedTypeWitness();

LABEL_13:
      sub_1DCEED454();
      break;
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_128_2()
{
  *(v0 + 40) = v1;

  return sub_1DCB17D04(v1, v0 + 104);
}

uint64_t OUTLINED_FUNCTION_128_3()
{

  return sub_1DD0DF0AC();
}

uint64_t sub_1DCB7EE3C()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_112(*(v3 + 80));
  (*(v4 + 8))(v0 + v5);
  OUTLINED_FUNCTION_66();
  v7 = *(v0 + *(v6 + 104));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v8 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v9 + 120)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v10 + 128)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v11 + 136)));
  OUTLINED_FUNCTION_66();
  sub_1DCB799DC(*(v0 + *(v12 + 144)), *(v0 + *(v12 + 144) + 8), *(v0 + *(v12 + 144) + 16), *(v0 + *(v12 + 144) + 24));
  return v0;
}

uint64_t sub_1DCB7EF3C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCB7EFB4()
{
  OUTLINED_FUNCTION_39();
  *(v1 + 568) = v0;
  *(v1 + 560) = v2;
  v3 = *v0;
  sub_1DD0DCC7C();
}

void sub_1DCB7F1FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  sub_1DCB7EFB4();
}

uint64_t Parse.DirectInvocation.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void sub_1DCB7F3C0()
{
  OUTLINED_FUNCTION_20_10();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_9(v7);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4(0, AssociatedTypeWitness);
  (*(v11 + 16))(v17, v0, v8);
  v2(v17, v8, v6);
  OUTLINED_FUNCTION_15_5();
}

uint64_t AnyValueFlow.__allocating_init<A>(_:)()
{
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_57_2();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_116();
  AnyValueFlow.init<A>(_:)();
  return v0;
}

uint64_t sub_1DCB7F560(uint64_t a1, uint64_t a2)
{
  v8 = type metadata accessor for DefaultSharingPolicyCheckFlowStrategy();
  v9 = &off_1F5872EA8;
  *&v7 = a1;
  *(a2 + 16) = 0;
  if (qword_1EDE4CCC8 != -1)
  {
    OUTLINED_FUNCTION_3_115();
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, a2 + 24);
  if (qword_1EDE4CC80 != -1)
  {
    OUTLINED_FUNCTION_2_106();
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, a2 + 64);
  v4 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  *(a2 + 128) = v4;
  *(a2 + 136) = &off_1F5872E98;
  *(a2 + 104) = inited;
  sub_1DCAFF9E8(&v7, a2 + 144);
  return a2;
}

uint64_t GuardFlow.init(preconditionFlows:)(unint64_t a1)
{
  v2 = sub_1DCB7F6D8(a1, sub_1DCE1A29C, sub_1DCF77C68);
  sub_1DCB7F77C(v2, 0);
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = 0;
  return v1;
}

uint64_t sub_1DCB7F6D8(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1DD0DEB3C();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1DCB7F77C(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_40();
    return;
  }

LABEL_9:
  __break(1u);
}

void Flow.guarded<A>(by:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v25[1] = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_1();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v25 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ConditionalFlow();
  (*(v18 + 16))(v24, v8, v4);
  (*(v10 + 16))(v16, v1, v6);
  ConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)();
  OUTLINED_FUNCTION_49();
}

uint64_t ConditionalFlow.__allocating_init<A, B>(preconditionFlow:executableFlow:)()
{
  OUTLINED_FUNCTION_1_13();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)();
  return v3;
}

void *ConditionalFlow.init<A, B>(preconditionFlow:executableFlow:)()
{
  v5 = v0;
  OUTLINED_FUNCTION_1_13();
  v6 = *v0;
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_55_1();
  *(v0 + *(v7 + 96)) = v8;
  Flow.eraseToAnyValueFlow()();
  v10 = v9;
  (*(*(v1 - 8) + 8))(v3, v1);
  (*(*(v2 - 8) + 8))(v4, v2);
  OUTLINED_FUNCTION_55_1();
  *(v5 + *(v11 + 104)) = v10;
  OUTLINED_FUNCTION_55_1();
  v13 = *(v12 + 88);
  v14 = *(v6 + 80);
  v15 = type metadata accessor for ConditionalFlowResult();
  __swift_storeEnumTagSinglePayload(v5 + v13, 1, 2, v15);
  return v5;
}

double sub_1DCB7FB14()
{
  OUTLINED_FUNCTION_61_9();
  Flow.eraseToAnyFlow()();
  v1 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_47_10(v1);
  OUTLINED_FUNCTION_53_7();
  *(v0 + 24) = 0;
  return OUTLINED_FUNCTION_10_32();
}

uint64_t sub_1DCB7FB98@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for ConditionalFlow.State();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  sub_1DCB7FCDC(&v15 - v11);
  v13 = type metadata accessor for ConditionalFlowResult();
  if (!__swift_getEnumTagSinglePayload(v12, 2, v13))
  {
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  (*(v6 + 8))(v12, v4);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

uint64_t sub_1DCB7FCDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for ConditionalFlow.State();
  OUTLINED_FUNCTION_2(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_1DCB7FD78(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCB7FE14(a1);
}

uint64_t sub_1DCB7FE14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  OUTLINED_FUNCTION_66();
  v2[4] = *(v3 + 80);
  v4 = type metadata accessor for ConditionalFlow.State();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCB55264, 0, 0);
}

uint64_t OUTLINED_FUNCTION_59_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v5;
  *(v2 + 96) = v4;
  v9 = *(v2 + 40);

  return sub_1DCB4F1DC(v7, v9, v3, v6);
}

uint64_t OUTLINED_FUNCTION_59_7@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *(v1 + a1 + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);

  return AceServiceInvokerAsync.submitAndForget(_:)(v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_59_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_59_10(float a1)
{
  *v1 = a1;
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
}

uint64_t OUTLINED_FUNCTION_59_11(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[25];
  v4 = v2[26];
  v5 = v2[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_59_13()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_14()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_59_16(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_17()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_20()
{
  v2 = *(v0 - 168);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_59_21()
{
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[26];
}

void OUTLINED_FUNCTION_59_22(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_59_25()
{

  return type metadata accessor for Resolvable();
}

void sub_1DCB80128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 32);
  type metadata accessor for AnyChildCompletion();
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v10 + 16) = a4;
  *(v10 + 24) = v11;
  v12 = type metadata accessor for ExecuteResponse(0);
  v13 = *(v12 + 36);
  v14 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(a5 + v13, 1, 1, v14);
  *a5 = 0;
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = v10;
  *(a5 + 48) = -4;
  v15 = (a5 + *(v12 + 40));
  *v15 = 0u;
  v15[1] = 0u;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB80218(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCB8058C(a1);
}

uint64_t sub_1DCB802B4()
{
  v1 = v0[9];
  swift_beginAccess();
  if ((*(v1 + 48) & 1) == 0)
  {
    v7 = v0[9];
    swift_beginAccess();
    v8 = sub_1DCB805AC();
    swift_endAccess();
    if (v8)
    {
      v10 = v0[8];
      v9 = v0[9];
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = v0[9];
    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "GuardFlow failed a previous guard. Exiting as complete.", v5, 2u);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  v6 = v0[8];

  v13.n128_f64[0] = static ExecuteResponse.complete()();
  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1DCB8058C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCB802B4, 0, 0);
}

uint64_t sub_1DCB805AC()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v1 == v2 >> 1)
  {
    return 0;
  }

  if (v1 < (v2 >> 1))
  {
    v3 = *v0;
    v4 = *(v0[1] + 8 * v1);
    sub_1DCB54800(v1 + 1);
    sub_1DD0DCF8C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCB80664()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t static CommonGuardFlowUtils.makeGuardFlow(withGuards:)()
{
  type metadata accessor for GuardFlow();

  return GuardFlow.__allocating_init(withGuards:)(v0);
}

uint64_t GuardFlow.__allocating_init(withGuards:)(void *a1)
{
  if (a1[2])
  {
    sub_1DD0DED0C();
    v3 = a1[4];
    v2 = a1[5];
    sub_1DD0DCF8C();
  }

  v4 = MEMORY[0x1E69E7CC0];
  type metadata accessor for GuardFlow();
  swift_allocObject();
  return GuardFlow.init(preconditionFlows:)(v4);
}

void sub_1DCB807EC()
{
  type metadata accessor for DefaultSharingPolicyCheckFlowStrategy();
  inited = swift_initStaticObject();
  type metadata accessor for SharingPolicyCheckFlow();
  v1 = swift_allocObject();
  sub_1DCB7F560(inited, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2420, &qword_1DD0E8410);
  swift_allocObject();
  sub_1DCB80A54();
}

uint64_t RefreshableDeviceState.restrictedCommands.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_18_17(a1);
  OUTLINED_FUNCTION_9_25(v6);
  v2 = *(v1 + 216);
  v3 = OUTLINED_FUNCTION_12_3();
  v4(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

void sub_1DCB80900()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB80A90()
{
  OUTLINED_FUNCTION_13_7();
  v2 = type metadata accessor for SharingPolicyCheckFlow();
  v0[4] = v1;
  v0[7] = v2;
  v0[8] = &unk_1DD0E2D78;
  v0[9] = v1;
  v0[10] = sub_1DCBF9A50;
  v0[11] = v1;
  v0[12] = &unk_1DD0E2D88;
  v0[13] = v1;
  v0[14] = sub_1DCB81794;
  OUTLINED_FUNCTION_3_16();
  v14 = v3;
  OUTLINED_FUNCTION_145_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1FB0, &qword_1DD0E2D90);
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_144();

  OUTLINED_FUNCTION_68_4();
  OUTLINED_FUNCTION_48_4(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_78_4();
}

uint64_t OUTLINED_FUNCTION_152_1()
{
  result = *(v1 - 136);
  v3 = *(v1 - 104);
  *(v1 - 160) = *(v0 + 16);
  return result;
}

uint64_t sub_1DCB80BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  Flow.eraseToAnyValueFlow()();
  v10 = v9;
  (*(v4 + 8))(v8, a3);
  return v10;
}

void sub_1DCB80CA8()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_14_23();
  v11 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_7();
  if (!OUTLINED_FUNCTION_34_12() || v49 == 2)
  {
    OUTLINED_FUNCTION_48_8();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v15 = sub_1DD0DD8FC();
    v16 = OUTLINED_FUNCTION_59_0(v15, qword_1EDE57E00);
    v17 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v17))
    {
      OUTLINED_FUNCTION_43_0();
      v50 = OUTLINED_FUNCTION_24_14();
      LODWORD(type metadata for GuardFlowResult.Kind) = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3170, &unk_1DD0E9300);
      v18 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v18, v19);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v48 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v20 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v20, v21);
      OUTLINED_FUNCTION_148();
      *(&type metadata for GuardFlowResult.Description + 6) = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v22, v23, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v25 = *(v24 + 16);
    v26 = OUTLINED_FUNCTION_10_23();
    v27(v26);
    v28 = OUTLINED_FUNCTION_8_31();
    v31 = __swift_storeEnumTagSinglePayload(v28, v29, v30, v15);
    OUTLINED_FUNCTION_44_6(v31, v32, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v33)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v34 = sub_1DD0DD8EC();
      v35 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v35))
      {
        OUTLINED_FUNCTION_83();
        v50 = OUTLINED_FUNCTION_54();
        *v47 = 136315650;
        v36 = OUTLINED_FUNCTION_45_6();
        sub_1DCB10E9C(v36, v37, &v50);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v38 = OUTLINED_FUNCTION_21_7();
        *(v47 + 24) = sub_1DCB10E9C(v38, v39, v40);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v41, v42, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v43 = OUTLINED_FUNCTION_13_18();
      v44(v43);
    }

    v45 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v45, v46);
  }

  LOBYTE(v48) = v49 & 1;
  v1(&v48);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCB80FF0(char *a1, uint64_t a2)
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
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "GuardFlow applying result to existing exitValue.", v7, 2u);
    MEMORY[0x1E12A8390](v7, -1, -1);
  }

  result = swift_beginAccess();
  *(a2 + 48) = (*(a2 + 48) | v3) & 1;
  return result;
}

uint64_t sub_1DCB81104()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return SharingPolicyCheckFlow.execute()(v5);
}

BOOL sub_1DCB8118C@<W0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = SharingPolicyCheckFlow.exitValue.getter();
  *a1 = result;
  return result;
}

void sub_1DCB811C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCB80CA8();
}

void sub_1DCB811D0(_BYTE *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for ConditionalFlow.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  if (*a1 == 1)
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v3);
    v9 = type metadata accessor for ConditionalFlowResult();
    v10 = 0;
  }

  else
  {
    v9 = type metadata accessor for ConditionalFlowResult();
    v10 = 2;
  }

  __swift_storeEnumTagSinglePayload(v8, v10, 2, v9);
  sub_1DCB812C0(v8);
}

void sub_1DCB812C0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 88);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for ConditionalFlow.State();
  (*(*(v8 - 8) + 24))(&v1[v5], a1, v8);
  swift_endAccess();
  sub_1DCB813A8();
}

void sub_1DCB813A8()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for ConditionalFlow.State();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCB81644(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for ConditionalFlowResult();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 2, v8);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x7845736465656E2ELL;
    }
  }

  else
  {
    (*(v3 + 8))(v6, a1);
    return 0x74656C706D6F632ELL;
  }
}

BOOL sub_1DCB8179C@<W0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GuardFlowResult;
  result = SharingPolicyCheckFlow.exitValue.getter();
  *a1 = result;
  return result;
}

void sub_1DCB817D8()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_46_8();
  v1 = *v0;
  v2 = v0[4];
  type metadata accessor for AnyChildCompletion();
  v3 = *(v1 + 80);
  sub_1DD0DCF8C();
}

uint64_t RefreshableDeviceState.isPod.getter()
{
  sub_1DCB4E718(v5);
  OUTLINED_FUNCTION_4_38(v5);
  v1 = *(v0 + 64);
  v2 = OUTLINED_FUNCTION_7_1();
  v3(v2);
  return OUTLINED_FUNCTION_11_28(v5);
}

uint64_t sub_1DCB81954()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

void SiriEnvironment.flowTask.getter()
{
  type metadata accessor for FlowTaskProvider();
  OUTLINED_FUNCTION_1_125(&qword_1EDE4B0C0);

  sub_1DD0DCA7C();
}

void sub_1DCB81AA8()
{
  OUTLINED_FUNCTION_61_9();
  v1 = OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_47_10(v1);
  OUTLINED_FUNCTION_53_7();
  *(v0 + 24) = 0;
  OUTLINED_FUNCTION_10_32();

  sub_1DD0DCF8C();
}

void sub_1DCB81B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for ConditionalFlow.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  (*(*(v3 - 8) + 16))(&v10 - v7, a1, v3);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v3);
  v9 = type metadata accessor for ConditionalFlowResult();
  __swift_storeEnumTagSinglePayload(v8, 0, 2, v9);
  sub_1DCB812C0(v8);
}

uint64_t MachineUtteranceBuilder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_1DCB81C48(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_1DD0DCF8C();
}

uint64_t RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 152);
  result = sub_1DCB370A4(*(v1 + 144));
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.appResolutionFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 136);
  result = sub_1DCB370A4(*(v1 + 128));
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 88);
  result = sub_1DCB370A4(*(v1 + 80));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmationResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1DCB81E04);
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

uint64_t RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 24);
  result = sub_1DCB370A4(*(v1 + 16));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithDialogProducer<A>(strategy:)(uint64_t a1, uint64_t a2)
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

uint64_t RCHChildFlowProducersAsync.continueInAppFlowProducer.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 120);
  result = sub_1DCB370A4(*(v1 + 112));
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

void *sub_1DCB81F60()
{
  OUTLINED_FUNCTION_85_9();
  if (*v2)
  {
    v3 = *(v1 + 8);
    *v0 = *v2;
    v0[1] = v3;
    sub_1DD0DCF8C();
  }

  *v0 = *v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 24);
    v0[2] = v4;
    v0[3] = v5;
    sub_1DD0DCF8C();
  }

  *(v0 + 1) = *(v1 + 16);
  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = *(v1 + 40);
    v0[4] = v6;
    v0[5] = v7;
    sub_1DD0DCF8C();
  }

  *(v0 + 2) = *(v1 + 32);
  v8 = *(v1 + 48);
  if (v8)
  {
    v9 = *(v1 + 56);
    v0[6] = v8;
    v0[7] = v9;
    sub_1DD0DCF8C();
  }

  *(v0 + 3) = *(v1 + 48);
  v10 = *(v1 + 64);
  if (v10)
  {
    v11 = *(v1 + 72);
    v0[8] = v10;
    v0[9] = v11;
    sub_1DD0DCF8C();
  }

  *(v0 + 4) = *(v1 + 64);
  v12 = *(v1 + 80);
  if (v12)
  {
    v13 = *(v1 + 88);
    v0[10] = v12;
    v0[11] = v13;
    sub_1DD0DCF8C();
  }

  *(v0 + 5) = *(v1 + 80);
  v14 = *(v1 + 96);
  if (v14)
  {
    v15 = *(v1 + 104);
    v0[12] = v14;
    v0[13] = v15;
    sub_1DD0DCF8C();
  }

  *(v0 + 6) = *(v1 + 96);
  v16 = *(v1 + 112);
  if (v16)
  {
    v17 = *(v1 + 120);
    v0[14] = v16;
    v0[15] = v17;
    sub_1DD0DCF8C();
  }

  *(v0 + 7) = *(v1 + 112);
  v18 = *(v1 + 128);
  if (v18)
  {
    v19 = *(v1 + 136);
    v0[16] = v18;
    v0[17] = v19;
    sub_1DD0DCF8C();
  }

  *(v0 + 8) = *(v1 + 128);
  v20 = *(v1 + 144);
  if (v20)
  {
    v21 = *(v1 + 152);
    v0[18] = v20;
    v0[19] = v21;
    sub_1DD0DCF8C();
  }

  *(v0 + 9) = *(v1 + 144);
  v22 = *(v1 + 160);
  if (v22)
  {
    v23 = *(v1 + 168);
    v0[20] = v22;
    v0[21] = v23;
    sub_1DD0DCF8C();
  }

  *(v0 + 10) = *(v1 + 160);
  return v0;
}

void sub_1DCB82130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2890, &qword_1DD0E6C40);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_24(&qword_1EDE4DB40);
  sub_1DD0DCEDC();
}

void sub_1DCB821F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DCB19354();
}

void OUTLINED_FUNCTION_125_2()
{
  v1 = *(v0 + 58);
  v2 = *(v0 + 360);
  v3 = *(v0 + 57);
}

uint64_t OUTLINED_FUNCTION_125_3()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_125_5()
{
  v2 = *(v0 - 328);
  v3 = *(v0 - 344);

  sub_1DD0DCB0C();
}

uint64_t RCHChildFlowFactory.init(producers:)(void *__src)
{
  memcpy(__dst, __src, 0xB0uLL);
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0;
  nullsub_1(__dst);
  memcpy(__srca, __dst, 0xB0uLL);
  sub_1DCB82380(&__srca[22]);
  memcpy((v1 + 16), __srca, 0x160uLL);
  return v1;
}

void static RCHChildFlowProducers.withRCHFlowDelegate<A>(delegate:)()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void *sub_1DCB825A4(void *result)
{
  v1 = result;
  if (*result)
  {
    v2 = result[1];
  }

  if (v1[2])
  {
    v3 = v1[3];
  }

  if (v1[4])
  {
    v4 = v1[5];
  }

  if (v1[6])
  {
    v5 = v1[7];
  }

  if (v1[8])
  {
    v6 = v1[9];
  }

  if (v1[10])
  {
    v7 = v1[11];
  }

  if (v1[12])
  {
    v8 = v1[13];
  }

  if (v1[14])
  {
    v9 = v1[15];
  }

  if (v1[16])
  {
    v10 = v1[17];
  }

  if (v1[18])
  {
    v11 = v1[19];
  }

  if (v1[20])
  {
    v12 = v1[21];
  }

  return result;
}