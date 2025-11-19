uint64_t sub_232E2D978()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_232E2D9B0()
{
  v1 = sub_232E4CA50();
  OUTLINED_FUNCTION_6(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 20, v3 | 7);
}

uint64_t sub_232E2DB58()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232E2DB8C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_232E2DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_232E2DD3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_232E2E154()
{
  result = OUTLINED_FUNCTION_10_2();
  *v1 = *(v0 + *(result + 52));
  return result;
}

uint64_t sub_232E2E26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_232E4C980();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_232E2E2F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232E4C980();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232E2E43C()
{
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  result = swift_unknownObjectRelease();
  qword_27DDD9D00 = v1;
  return result;
}

uint64_t SupportFlowBiomeManager.sessionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SupportFlowCore::SupportFlowBiomeManager::EventType_optional __swiftcall SupportFlowBiomeManager.EventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SupportFlowBiomeManager.EventType.rawValue.getter()
{
  v1 = 0x61737265766E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_232E2E5E0@<X0>(uint64_t *a1@<X8>)
{
  result = SupportFlowBiomeManager.EventType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SupportFlowBiomeManager.init(sessionId:version:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_232E4C9B0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  if (!a2)
  {
    sub_232E4C9A0();
    a1 = sub_232E4C990();
    a2 = v17;
    (*(v11 + 8))(v16, v8);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
}

void SupportFlowBiomeManager.donateTroubleShootingActionEvent(actionId:title:url:flowId:type:)()
{
  OUTLINED_FUNCTION_14();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_16();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  v11 = sub_232E4CBB0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v22 = *v4;
  v17 = *v0;
  v18 = v0[1];
  v21 = *(v0 + 4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9(v22);
  OUTLINED_FUNCTION_12(v19, v20);
  (*(v8 + 8))(v1, v5);
  (*(v14 + 8))(v2, v11);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2E8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;

  sub_232E4CBA0();

  sub_232E4CB80();
  sub_232E3227C(a6, v10, &qword_27DDD98B0, &qword_232E4D988);
  v11 = sub_232E4C8D0();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_232E322DC(v10, &qword_27DDD98B0, &qword_232E4D988);
  }

  else
  {
    sub_232E4C8A0();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  return sub_232E4CB60();
}

uint64_t sub_232E2EAAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232E4CC90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *a2;
  v19 = v4[1];
  v20 = *(v4 + 4);
  v35 = *v4;
  v36 = v19;
  v37 = v20;
  v38 = v18;
  v39 = a3;
  v40 = a4;
  v41 = a1;
  sub_232E4CCB0();
  if (qword_27DDD97F8 != -1)
  {
    swift_once();
  }

  sub_232E4CA20();
  sub_232E321C0(&qword_27DDD9870, MEMORY[0x277D20370]);
  sub_232E4CA30();
  __swift_project_boxed_opaque_existential_1(v42, v42[3]);
  sub_232E4CCA0();
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v21 = sub_232E4CCE0();
  __swift_project_value_buffer(v21, qword_27DDD9D18);
  (*(v10 + 16))(v15, v17, v9);
  v22 = sub_232E4CCC0();
  v23 = sub_232E4CF60();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42[0] = v25;
    *v24 = 136315138;
    v26 = sub_232E308CC();
    v28 = v27;
    v34 = v17;
    v29 = *(v10 + 8);
    v29(v15, v9);
    v30 = sub_232E3161C(v26, v28, v42);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_232E2C000, v22, v23, "Event donated to Biome:\n%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x238397C80](v25, -1, -1);
    MEMORY[0x238397C80](v24, -1, -1);

    return (v29)(v34, v9);
  }

  else
  {

    v32 = *(v10 + 8);
    v32(v15, v9);
    return (v32)(v17, v9);
  }
}

void SupportFlowBiomeManager.donateTroubleShootingArticleEvent(articleId:url:flowId:type:)()
{
  OUTLINED_FUNCTION_14();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_16();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  v11 = sub_232E4CC10();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v17 = *v4;
  v19 = *v0;
  v18 = v0[1];
  v21 = *(v0 + 4);
  v22 = v17;
  OUTLINED_FUNCTION_7();
  v20 = OUTLINED_FUNCTION_13();
  v24 = v19;
  v25 = v18;
  v26 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_12(v20, &v23);
  (*(v8 + 8))(v1, v5);
  (*(v14 + 8))(v2, v11);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2F200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;

  sub_232E4CB00();
  sub_232E3227C(a4, v8, &qword_27DDD98B0, &qword_232E4D988);
  v9 = sub_232E4C8D0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_232E322DC(v8, &qword_27DDD98B0, &qword_232E4D988);
  }

  else
  {
    sub_232E4C8A0();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  return sub_232E4CAE0();
}

void SupportFlowBiomeManager.donateTroubleShootingSettingsEvent(settingId:value:flowId:type:)()
{
  OUTLINED_FUNCTION_14();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_16();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  v11 = sub_232E4CC60();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v17 = *v4;
  v18 = *v0;
  v19 = v0[1];
  v22 = *(v0 + 4);
  v23 = v17;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_9(v23);
  OUTLINED_FUNCTION_12(v20, v21);
  (*(v8 + 8))(v1, v5);
  (*(v14 + 8))(v2, v11);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2F568()
{

  sub_232E4CB00();

  return sub_232E4CAE0();
}

uint64_t sub_232E2F5D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_232E2F568();
}

void SupportFlowBiomeManager.donateTroubleShootingUserSelection(question:answer:flowId:stepId:type:)()
{
  OUTLINED_FUNCTION_14();
  v26 = v2;
  v27 = v3;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v12 = sub_232E4CB10();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v25 = *v5;
  v22 = *v0;
  v21 = v0[1];
  v24 = *(v0 + 4);
  sub_232E4CCB0();
  sub_232E4CCB0();
  OUTLINED_FUNCTION_9(v25);
  sub_232E2EAAC(v1, v23, v26, v27);
  (*(v9 + 8))(v1, v6);
  (*(v15 + 8))(v20, v12);
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E2F824()
{

  sub_232E4CB00();

  return sub_232E4CAE0();
}

uint64_t sub_232E2F89C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_232E2F824();
}

uint64_t sub_232E2F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unsigned int *a5)
{
  v10 = sub_232E4CBC0();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v16 = sub_232E4CA50();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  (*(v22 + 16))(v21 - v20, a2);
  sub_232E4CA70();
  v23 = a4(0);
  v24 = swift_allocBox();
  (*(*(v23 - 8) + 16))(v25, a3, v23);
  *v5 = v24;
  (*(v13 + 104))(v5, *a5, v10);
  return sub_232E4CA90();
}

void SupportFlowBiomeManager.donateSupportFlowSessionEvent(_:)()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v2 = type metadata accessor for SupportFlowSession();
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v8 = (v7 - v6);
  v9 = sub_232E4C780();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_232E4C770();
  sub_232E321C0(&qword_27DDD9858, type metadata accessor for SupportFlowSession);
  v12 = sub_232E4C760();
  v14 = v13;

  v15 = objc_allocWithZone(MEMORY[0x277CF1168]);
  sub_232E31B64(v12, v14);
  v16 = sub_232E314F8(0xD000000000000021, 0x8000000232E4ED80, 0, 0, 0, 0, v12, v14);
  if (qword_27DDD97F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_27DDD9D00 source];
  [v17 sendEvent_];

  if (qword_27DDD9850 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v18 = sub_232E4CCE0();
  __swift_project_value_buffer(v18, qword_27DDD9D18);
  sub_232E31BBC(v1, v8);
  v19 = sub_232E4CCC0();
  v20 = sub_232E4CF60();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v21 = 136315138;
    v23 = *v8;
    v24 = v8[1];

    sub_232E31C78(v8);
    v25 = sub_232E3161C(v23, v24, &v26);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_232E2C000, v19, v20, "Successfully donated session event to Biome for session: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
    sub_232E31C20(v12, v14);
  }

  else
  {
    sub_232E31C20(v12, v14);

    sub_232E31C78(v8);
  }

  OUTLINED_FUNCTION_8();
}

uint64_t SupportFlowBiomeManager.eventPublisher(for:type:interaction:session:)(unsigned __int8 *a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9868, &qword_232E4D858);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_232E4CA50();
  v11 = OUTLINED_FUNCTION_0(v10);
  v38 = v12;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v41 = *a1;
  v19 = v2[1];
  v40 = *v2;
  v42 = v19;
  v39 = *(v2 + 4);
  if (qword_27DDD97F8 != -1)
  {
    swift_once();
  }

  v20 = sub_232E4CA20();
  sub_232E321C0(&qword_27DDD9870, MEMORY[0x277D20370]);
  sub_232E4CA40();
  if (!v3)
  {
    sub_232E3227C(a2, v9, &qword_27DDD9868, &qword_232E4D858);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_232E322DC(v9, &qword_27DDD9868, &qword_232E4D858);
    }

    else
    {
      v21 = v38;
      v36 = *(v38 + 32);
      v36(v18, v9, v10);
      OUTLINED_FUNCTION_11();
      v37 = sub_232E4CCF0();
      v47 = v37;
      (*(v21 + 16))(v16, v18, v10);
      v22 = (*(v21 + 80) + 16) & ~*(v21 + 80);
      v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      v36((v24 + v22), v16, v10);
      v25 = v42;
      v26 = v24 + v23;
      *v26 = v40;
      *(v26 + 8) = v25;
      *(v26 + 16) = v39;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9878, &qword_232E4D860);
      v45 = OUTLINED_FUNCTION_4(&qword_27DDD9880);
      __swift_allocate_boxed_opaque_existential_1(&v43);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9888, &qword_232E4D868);
      OUTLINED_FUNCTION_3();
      sub_232E31E44(v27, v28, &qword_232E4D868);
      sub_232E4CD00();

      (*(v21 + 8))(v18, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      sub_232E31E8C(&v43, v46);
    }

    v29 = v41;
    if (v41 != 12)
    {
      OUTLINED_FUNCTION_11();
      v47 = sub_232E4CCF0();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = v42;
      *(v30 + 24) = v40;
      *(v30 + 32) = v31;
      *(v30 + 40) = v39;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9878, &qword_232E4D860);
      v45 = OUTLINED_FUNCTION_4(&qword_27DDD9880);
      __swift_allocate_boxed_opaque_existential_1(&v43);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9888, &qword_232E4D868);
      OUTLINED_FUNCTION_3();
      sub_232E31E44(v32, v33, &qword_232E4D868);
      sub_232E4CD00();

      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      sub_232E31E8C(&v43, v46);
    }

    OUTLINED_FUNCTION_11();
    v20 = sub_232E4CCF0();
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  return v20;
}

uint64_t sub_232E30418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v5 = sub_232E4CA50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232E4CAA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E4CAB0();
  sub_232E4CA60();
  (*(v11 + 8))(v14, v10);
  sub_232E321C0(&qword_27DDD98A0, MEMORY[0x277D206B0]);
  sub_232E4CEC0();
  sub_232E4CEC0();
  (*(v6 + 8))(v9, v5);
  if (v22 == v21)
  {
    if (sub_232E4CC70() == a3 && v15 == v20)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_232E4D1D0();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_232E3065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_232E4CB20();
  v8 = v7;
  if (v6 == SupportFlowIdentifier.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_232E4D1D0();

    v12 = 0;
    if ((v11 & 1) == 0)
    {
      return v12 & 1;
    }
  }

  if (sub_232E4CC70() == a3 && v13 == a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_232E4D1D0();
  }

  return v12 & 1;
}

uint64_t sub_232E30760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a8;
  v16[1] = a6;
  v9 = a5;
  v10 = sub_232E4CAA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_232E4CC80();
  if (v9 != 12)
  {
    v18 = a5;
    SupportFlowIdentifier.rawValue.getter();
  }

  sub_232E4CB30();

  sub_232E4CB40();
  (*(v11 + 16))(v14, v17, v10);
  return sub_232E4CAC0();
}

uint64_t sub_232E308CC()
{
  v0 = sub_232E4CBC0();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_232E4CA50();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232E4CAA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_232E4D050();

  v27 = 0x203A776F6C46;
  v28 = 0xE600000000000000;
  v12 = sub_232E4CB20();
  MEMORY[0x238397350](v12);

  MEMORY[0x238397350](0xD000000000000014, 0x8000000232E4EDB0);
  sub_232E4CAB0();
  sub_232E4CA60();
  v13 = *(v8 + 8);
  v13(v11, v7);
  v14 = sub_232E30BE8();
  v16 = v15;
  (*(v3 + 8))(v6, v23);
  MEMORY[0x238397350](v14, v16);

  MEMORY[0x238397350](0x6E6F69746341202CLL, 0xEA0000000000203ALL);
  sub_232E4CAB0();
  v17 = v24;
  sub_232E4CA80();
  v13(v11, v7);
  v18 = v17;
  v19 = sub_232E30D50();
  v21 = v20;
  (*(v25 + 8))(v18, v26);
  MEMORY[0x238397350](v19, v21);

  return v27;
}

uint64_t sub_232E30BE8()
{
  v1 = v0;
  v2 = sub_232E4CA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D206A8])
  {
    return 0x6574736567677553;
  }

  if (v7 == *MEMORY[0x277D206A0])
  {
    return 0x6465747563657845;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6E776F6E6B6E55;
}

uint64_t sub_232E30D50()
{
  v1 = sub_232E4CC60();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E4CB10();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E4CC10();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232E4CBB0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232E4CBC0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v21, v0, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D206E8])
  {
    (*(v18 + 96))(v21, v17);
    v23 = *v21;
    v24 = swift_projectBox();
    (*(v13 + 16))(v16, v24, v12);
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_232E4D050();

    strcpy(v54, "Action ID: ");
    HIDWORD(v54[1]) = -352321536;
    v25 = sub_232E4CB90();
    MEMORY[0x238397350](v25);

    MEMORY[0x238397350](0x3A656C746974202CLL, 0xE900000000000020);
    v26 = sub_232E4CB70();
    MEMORY[0x238397350](v26);

    MEMORY[0x238397350](0x203A4C5255202CLL, 0xE700000000000000);
    v27 = sub_232E4CB50();
    MEMORY[0x238397350](v27);

    v28 = v54[0];
    (*(v13 + 8))(v16, v12);
  }

  else if (v22 == *MEMORY[0x277D206F0])
  {
    (*(v18 + 96))(v21, v17);
    v29 = *v21;
    v30 = swift_projectBox();
    v31 = v53;
    (*(v53 + 16))(v11, v30, v8);
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_232E4D050();

    strcpy(v54, "Article ID: ");
    BYTE5(v54[1]) = 0;
    HIWORD(v54[1]) = -5120;
    v32 = sub_232E4CAF0();
    MEMORY[0x238397350](v32);

    MEMORY[0x238397350](0x203A4C5255202CLL, 0xE700000000000000);
    v33 = sub_232E4CAD0();
    MEMORY[0x238397350](v33);

    v28 = v54[0];
    (*(v31 + 8))(v11, v8);
  }

  else if (v22 == *MEMORY[0x277D206F8])
  {
    (*(v18 + 96))(v21, v17);
    v35 = *v21;
    v36 = swift_projectBox();
    v38 = v51;
    v37 = v52;
    (*(v51 + 16))(v4, v36, v52);
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_232E4D050();

    strcpy(v54, "Setting ID: ");
    BYTE5(v54[1]) = 0;
    HIWORD(v54[1]) = -5120;
    v39 = sub_232E4CAF0();
    MEMORY[0x238397350](v39);

    MEMORY[0x238397350](0x3A65756C6156202CLL, 0xE900000000000020);
    v40 = sub_232E4CAD0();
    MEMORY[0x238397350](v40);

    v28 = v54[0];
    (*(v38 + 8))(v4, v37);
  }

  else
  {
    if (v22 != *MEMORY[0x277D20700])
    {
      (*(v18 + 8))(v21, v17);
      return 0x206E776F6E6B6E55;
    }

    (*(v18 + 96))(v21, v17);
    v41 = *v21;
    v42 = swift_projectBox();
    v44 = v48;
    v43 = v49;
    v45 = v50;
    (*(v49 + 16))(v48, v42, v50);
    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_232E4D050();

    v54[0] = 0xD000000000000016;
    v54[1] = 0x8000000232E4EDD0;
    v46 = sub_232E4CAF0();
    MEMORY[0x238397350](v46);

    MEMORY[0x238397350](0x726577736E41202CLL, 0xEA0000000000203ALL);
    v47 = sub_232E4CAD0();
    MEMORY[0x238397350](v47);

    v28 = v54[0];
    (*(v43 + 8))(v44, v45);
  }

  return v28;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_232E314F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    v13 = sub_232E4CDD0();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = sub_232E4CDD0();

  if (a6)
  {
LABEL_4:
    v15 = sub_232E4CDD0();

    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  if (a8 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_232E4C8E0();
    sub_232E32268(a7, a8);
  }

  v17 = [v8 initWithContentIdentifier:v13 context:v14 osBuild:v15 userInfo:v16];

  return v17;
}

uint64_t sub_232E3161C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_232E316E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_232E32208(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_232E316E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_232E317E0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_232E4D090();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_232E317E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_232E3182C(a1, a2);
  sub_232E31944(&unk_284831668);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_232E3182C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_232E4CE50())
  {
    result = sub_232E4A414(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_232E4D040();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_232E4D090();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_232E31944(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_232E31A28(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_232E31A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98A8, &qword_232E4D980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_232E31B64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232E31BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E31C20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232E31C78(uint64_t a1)
{
  v2 = type metadata accessor for SupportFlowSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_232E31E44(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_232E31E8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_232E31EA4(uint64_t a1)
{
  v3 = *(sub_232E4CA50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_232E30418(a1, v1 + v4, v6, v7);
}

unint64_t sub_232E31F4C()
{
  result = qword_27DDD9898;
  if (!qword_27DDD9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9898);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_232E31FB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_232E31FF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowBiomeManager.EventType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SupportFlowBiomeManager.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_232E321C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232E32208(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_232E32268(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232E31C20(a1, a2);
  }

  return a1;
}

uint64_t sub_232E3227C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232E322DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4(unint64_t *a1)
{

  return sub_232E31E44(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return sub_232E4CCB0();
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, char *a2)
{

  return sub_232E2EAAC(v2, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_232E4CCB0();
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x238397C80);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return sub_232E4CAA0();
}

SupportFlowCore::EntryPoint __swiftcall EntryPoint.init(bundleIdentifier:)(Swift::String_optional bundleIdentifier)
{
  v2 = v1;
  if (bundleIdentifier.value._object)
  {
    v3 = sub_232E4D0D0();

    if (v3 <= 3)
    {
      v4 = 0x4000302u >> (8 * v3);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 5;
  }

  *v2 = v4;
  return bundleIdentifier.value._countAndFlagsBits;
}

SupportFlowCore::EntryPoint_optional __swiftcall EntryPoint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntryPoint.rawValue.getter()
{
  result = 7368801;
  switch(*v0)
  {
    case 1:
      result = 0x6574654461746164;
      break;
    case 2:
      result = 0x72656C616964;
      break;
    case 3:
      result = 1769105779;
      break;
    case 4:
      result = 1936746868;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_232E32690()
{
  result = qword_27DDD98B8;
  if (!qword_27DDD98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98B8);
  }

  return result;
}

uint64_t sub_232E32708@<X0>(uint64_t *a1@<X8>)
{
  result = EntryPoint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EntryPoint(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for EntryPoint(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232E32944()
{
  result = qword_27DDD98C0;
  if (!qword_27DDD98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98C0);
  }

  return result;
}

unint64_t SupportFlowIdentifier.rawValue.getter()
{
  result = 0x73646F50726961;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x64656C6261736964;
      break;
    case 5:
      result = 0x6150746F67726F66;
      break;
    case 6:
      result = 1818845549;
      break;
    case 7:
      result = 0x736567617373656DLL;
      break;
    case 8:
      result = 0x6573616863727570;
      break;
    case 9:
      result = 0x65526E6565726373;
      break;
    case 0xA:
      result = 0x6572617774666F73;
      break;
    case 0xB:
      result = 1768319351;
      break;
    default:
      return result;
  }

  return result;
}

SupportFlowCore::SupportFlowIdentifier_optional __swiftcall SupportFlowIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_232E32B5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_232E44714();
}

unint64_t sub_232E32B6C()
{
  result = qword_28158FCC8;
  if (!qword_28158FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158FCC8);
  }

  return result;
}

unint64_t sub_232E32BE4@<X0>(unint64_t *a1@<X8>)
{
  result = SupportFlowIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_232E32C10()
{
  result = qword_27DDD98C8;
  if (!qword_27DDD98C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD98D0, &qword_232E4DB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E32E98()
{
  result = qword_27DDD98D8;
  if (!qword_27DDD98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD98D8);
  }

  return result;
}

uint64_t sub_232E32F08()
{
  v0 = sub_232E4C9B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E4C9A0();
  v5 = sub_232E4C990();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_27DDD98E0 = v5;
  *algn_27DDD98E8 = v7;
  dword_27DDD98F0 = 2;
  return result;
}

uint64_t sub_232E32FF0()
{
  v0 = sub_232E4CCE0();
  __swift_allocate_value_buffer(v0, qword_27DDD98F8);
  v1 = __swift_project_value_buffer(v0, qword_27DDD98F8);
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DDD9D18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_232E330B8()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_27DDD9910 = result;
  return result;
}

uint64_t sub_232E330F4()
{
  v10 = sub_232E4CFA0();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E4CF90();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_232E4CD40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_232E38748(0, &qword_27DDD9980, 0x277D85C78);
  sub_232E4CD30();
  v11 = MEMORY[0x277D84F90];
  sub_232E3897C(&qword_27DDD9988, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9990, &qword_232E4DCC0);
  sub_232E38788(&qword_27DDD9998, &qword_27DDD9990, &qword_232E4DCC0);
  sub_232E4D010();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_232E4CFC0();
  qword_27DDD9918 = result;
  return result;
}

uint64_t static SupportFlowSessionManager.lastProcessedSessionDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDD9810 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v2 = qword_27DDD9910;
  v3 = OUTLINED_FUNCTION_21();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_232E4D000();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v5 = sub_232E4C980();
    v6 = swift_dynamicCast() ^ 1;
    v7 = a1;
    v8 = v5;
  }

  else
  {
    sub_232E322DC(v12, &qword_27DDD9920, &qword_232E4DC60);
    v8 = sub_232E4C980();
    v7 = a1;
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v6, 1, v8);
}

uint64_t sub_232E334D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E3353C()
{
  if (qword_27DDD9810 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDD9910;
  v1 = sub_232E4CDD0();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_232E4C8F0();
    v5 = v4;

    v6 = sub_232E4C750();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_232E4C740();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9948, &unk_232E4DCA0);
    sub_232E384C0();
    sub_232E4C730();

    if (qword_27DDD9808 != -1)
    {
      swift_once();
    }

    v14 = sub_232E4CCE0();
    __swift_project_value_buffer(v14, qword_27DDD98F8);

    v15 = sub_232E4CCC0();
    v16 = sub_232E4CF60();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v18 + 16);

      _os_log_impl(&dword_232E2C000, v15, v16, "Loaded %ld sessions from UserDefaults", v17, 0xCu);
      MEMORY[0x238397C80](v17, -1, -1);
    }

    else
    {
    }

    sub_232E31C20(v3, v5);

    return v18;
  }

  else
  {
    if (qword_27DDD9808 != -1)
    {
      swift_once();
    }

    v9 = sub_232E4CCE0();
    __swift_project_value_buffer(v9, qword_27DDD98F8);
    v10 = sub_232E4CCC0();
    v11 = sub_232E4CF60();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_232E2C000, v10, v11, "No session data found in UserDefaults", v12, 2u);
      MEMORY[0x238397C80](v12, -1, -1);
    }

    type metadata accessor for SupportFlowSession();

    return sub_232E4CD90();
  }
}

void sub_232E339D8(uint64_t a1)
{
  v2 = sub_232E4C780();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_232E4C770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9948, &unk_232E4DCA0);
  sub_232E3857C();
  v5 = sub_232E4C760();
  v7 = v6;

  if (qword_27DDD9810 != -1)
  {
    swift_once();
  }

  v8 = qword_27DDD9910;
  v9 = sub_232E4C8E0();
  v10 = sub_232E4CDD0();
  [v8 setObject:v9 forKey:v10];

  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v11 = sub_232E4CCE0();
  __swift_project_value_buffer(v11, qword_27DDD98F8);

  v12 = sub_232E4CCC0();
  v13 = sub_232E4CF60();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(a1 + 16);

    _os_log_impl(&dword_232E2C000, v12, v13, "Successfully saved session map with %ld sessions", v14, 0xCu);
    MEMORY[0x238397C80](v14, -1, -1);
  }

  else
  {
  }

  sub_232E31C20(v5, v7);
}

uint64_t sub_232E33D34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_232E33DB8()
{
  OUTLINED_FUNCTION_14();
  v33 = v0;
  v34 = v1;
  v3 = v2;
  v4 = sub_232E4CD10();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v35 = sub_232E4CD40();
  v10 = OUTLINED_FUNCTION_0(v35);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  v15 = type metadata accessor for SupportFlowSession();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v32[1] = qword_27DDD9918;
  sub_232E31BBC(v3, v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v20 = swift_allocObject();
  sub_232E334D8(v18, v20 + v19);
  v37[4] = v33;
  v37[5] = v20;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v37[2] = v21;
  v37[3] = v34;
  v22 = _Block_copy(v37);
  sub_232E4CD20();
  v36 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v25 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v25);
  _Block_release(v22);
  v26 = *(v7 + 8);
  v27 = OUTLINED_FUNCTION_11_0();
  v28(v27);
  v29 = *(v12 + 8);
  v30 = OUTLINED_FUNCTION_18();
  v31(v30);

  OUTLINED_FUNCTION_8();
}

void sub_232E34078(uint64_t *a1)
{
  v2 = type metadata accessor for SupportFlowSession();
  v3 = OUTLINED_FUNCTION_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_232E3353C();
  v11 = *a1;
  v10 = a1[1];
  sub_232E31BBC(a1, v8);

  swift_isUniquelyReferenced_nonNull_native();
  sub_232E4A540(v8, v11, v10);

  sub_232E339D8(v9);

  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v12 = sub_232E4CCE0();
  __swift_project_value_buffer(v12, qword_27DDD98F8);

  v13 = sub_232E4CCC0();
  v14 = sub_232E4CF60();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_23();
    v20 = OUTLINED_FUNCTION_22();
    *v15 = 136315138;
    v16 = OUTLINED_FUNCTION_11_0();
    v19 = sub_232E3161C(v16, v17, v18);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_232E2C000, v13, v14, "Successfully updated session with ID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  OUTLINED_FUNCTION_14();
  v1 = (type metadata accessor for SupportFlowSession() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = v1[7];
  v6 = sub_232E4C980();
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v8(v3 + v1[9], v6);
  v9 = *(v3 + v1[13] + 8);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

void sub_232E34340()
{
  v1 = type metadata accessor for SupportFlowSession();
  OUTLINED_FUNCTION_19(v1);
  sub_232E34078((v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80))));
}

void sub_232E343B0()
{
  v0 = type metadata accessor for SupportFlowSession();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E3353C();
  v6 = v5;
  v7 = 0;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    while (1)
    {
      v13 = v7;
LABEL_9:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      sub_232E31BBC(*(v6 + 56) + *(v1 + 72) * (v14 | (v13 << 6)), v4);
      sub_232E34588(v4);
      sub_232E31C78(v4);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  if (qword_27DDD9810 == -1)
  {
    goto LABEL_12;
  }

LABEL_14:
  swift_once();
LABEL_12:
  v15 = qword_27DDD9910;
  v16 = sub_232E4CDD0();
  [v15 removeObjectForKey_];
}

void sub_232E34588(uint64_t a1)
{
  v2 = type metadata accessor for SupportFlowSession();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-1] - v7;
  sub_232E31BBC(a1, &v18[-1] - v7);
  SupportFlowSessionAnalyticsEvent.init(session:)(v8, v20);
  sub_232E365FC();
  sub_232E36DB4(v20);
  if (qword_27DDD9800 != -1)
  {
    swift_once();
  }

  v18[0] = qword_27DDD98E0;
  v18[1] = *algn_27DDD98E8;
  v19 = dword_27DDD98F0;

  SupportFlowBiomeManager.donateSupportFlowSessionEvent(_:)();

  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v9 = sub_232E4CCE0();
  __swift_project_value_buffer(v9, qword_27DDD98F8);
  sub_232E31BBC(a1, v6);
  v10 = sub_232E4CCC0();
  v11 = sub_232E4CF60();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315138;
    v14 = *v6;
    v15 = v6[1];

    sub_232E31C78(v6);
    v16 = sub_232E3161C(v14, v15, v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_232E2C000, v10, v11, "Successfully logged analytics event for session: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x238397C80](v13, -1, -1);
    MEMORY[0x238397C80](v12, -1, -1);
  }

  else
  {

    sub_232E31C78(v6);
  }
}

void sub_232E3480C()
{
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_17();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v24 = sub_232E4CD40();
  v8 = OUTLINED_FUNCTION_0(v24);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v25[4] = v1;
  v25[5] = 0;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v25[2] = v13;
  v25[3] = v0;
  v14 = _Block_copy(v25);
  sub_232E4CD20();
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v17 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v17);
  _Block_release(v14);
  v18 = *(v5 + 8);
  v19 = OUTLINED_FUNCTION_11_0();
  v20(v19);
  v21 = *(v10 + 8);
  v22 = OUTLINED_FUNCTION_18();
  v23(v22);

  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E34A0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9960, &qword_232E4DCB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v104 = &v92 - v2;
  v3 = type metadata accessor for SupportFlowSession();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v102 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v108 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v106 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99A8, &qword_232E4DCC8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v92 - v15;
  v17 = sub_232E4C980();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v92 - v24;
  MEMORY[0x28223BE20](v23);
  v109 = &v92 - v26;
  v27 = sub_232E3353C();
  v28 = qword_27DDD9810;

  if (v28 != -1)
  {
LABEL_43:
    swift_once();
  }

  v29 = qword_27DDD9910;
  v30 = sub_232E4CDD0();
  LODWORD(v29) = [v29 BOOLForKey_];

  if (v29)
  {
    sub_232E4C900();
  }

  else
  {
    sub_232E4C970();
    sub_232E4C920();
    (*(v18 + 8))(v25, v17);
  }

  v31 = v22;
  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v32 = sub_232E4CCE0();
  v25 = __swift_project_value_buffer(v32, qword_27DDD98F8);
  (*(v18 + 16))(v22, v109, v17);
  v100 = v25;
  v33 = sub_232E4CCC0();
  v34 = sub_232E4CF60();
  v35 = os_log_type_enabled(v33, v34);
  v98 = v18;
  v99 = v17;
  if (v35)
  {
    v22 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v112[0] = v107;
    *v22 = 136315138;
    sub_232E3897C(&qword_27DDD9940, MEMORY[0x277CC9578]);
    v36 = sub_232E4D1B0();
    v37 = v31;
    v39 = v38;
    v97 = *(v18 + 8);
    v97(v37, v17);
    v40 = sub_232E3161C(v36, v39, v112);

    *(v22 + 4) = v40;
    _os_log_impl(&dword_232E2C000, v33, v34, "Starting cleanup of sessionMap sessions that are older than %s", v22, 0xCu);
    v25 = v107;
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
    MEMORY[0x238397C80](v25, -1, -1);
    MEMORY[0x238397C80](v22, -1, -1);
  }

  else
  {

    v97 = *(v18 + 8);
    v97(v22, v17);
  }

  v42 = 0;
  v17 = (v27 + 8);
  v43 = 1 << *(v27 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v18 = v44 & v27[8];
  v103 = MEMORY[0x277D84F90];
  v45 = (v43 + 63) >> 6;
  *&v41 = 136315394;
  v96 = v41;
  v107 = v27;
  v105 = v14;
  while (1)
  {
    if (!v18)
    {
      while (1)
      {
        v46 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v46 >= v45)
        {
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99B0, &unk_232E4DCD0);
          __swift_storeEnumTagSinglePayload(v14, 1, 1, v62);
          v18 = 0;
          goto LABEL_20;
        }

        v18 = *(v17 + 8 * v46);
        ++v42;
        if (v18)
        {
          v42 = v46;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v46 = v42;
LABEL_19:
    v47 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v48 = v47 | (v46 << 6);
    v49 = (v27[6] + 16 * v48);
    v51 = *v49;
    v50 = v49[1];
    v52 = v27[7] + *(v110 + 72) * v48;
    v53 = v106;
    sub_232E31BBC(v52, v106);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99B0, &unk_232E4DCD0);
    v55 = *(v54 + 48);
    v56 = v105;
    *v105 = v51;
    *(v56 + 1) = v50;
    v14 = v56;
    sub_232E334D8(v53, &v56[v55]);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v54);

LABEL_20:
    sub_232E389C4(v14, v16);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99B0, &unk_232E4DCD0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v57) == 1)
    {
      break;
    }

    v22 = *v16;
    v58 = *(v16 + 1);
    v59 = &v16[*(v57 + 48)];
    v25 = v108;
    sub_232E334D8(v59, v108);
    v60 = *(v111 + 20);
    v61 = sub_232E4C940();
    v27 = v107;
    if (v61)
    {
      sub_232E31BBC(v25, v102);

      v101 = sub_232E4CCC0();
      v63 = sub_232E4CF60();

      v95 = v63;
      if (os_log_type_enabled(v101, v63))
      {
        v64 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v112[0] = v93;
        *v64 = v96;
        v65 = sub_232E3161C(v22, v58, v112);
        v94 = v64;
        *(v64 + 4) = v65;
        *(v64 + 12) = 2080;
        v66 = *(v111 + 20);
        sub_232E3897C(&qword_27DDD9940, MEMORY[0x277CC9578]);
        v92 = sub_232E4D1B0();
        v68 = v67;
        sub_232E31C78(v102);
        v92 = sub_232E3161C(v92, v68, v112);

        v69 = v94;
        *(v94 + 14) = v92;
        _os_log_impl(&dword_232E2C000, v101, v95, "Processing session for cleanup: %s, timestamp: %s", v69, 0x16u);
        v70 = v93;
        swift_arrayDestroy();
        MEMORY[0x238397C80](v70, -1, -1);
        MEMORY[0x238397C80](v94, -1, -1);
      }

      else
      {

        sub_232E31C78(v102);
      }

      sub_232E34588(v108);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_232E4A0A4(0, v103[2] + 1, 1, v103);
      }

      v25 = v103[2];
      v71 = v103[3];
      v101 = (v25 + 1);
      if (v25 >= v71 >> 1)
      {
        v103 = sub_232E4A0A4((v71 > 1), v25 + 1, 1, v103);
      }

      sub_232E31C78(v108);
      v72 = v103;
      v103[2] = v101;
      v73 = &v72[2 * v25];
      v73[4] = v22;
      v73[5] = v58;
    }

    else
    {
      sub_232E31C78(v25);
    }
  }

  v74 = v107;

  v75 = v103[2];
  if (v75)
  {
    v76 = v103 + 5;
    v77 = v104;
    do
    {
      v78 = *(v76 - 1);
      v79 = *v76;

      v80 = sub_232E4A484(v78, v79);
      LOBYTE(v78) = v81;

      if (v78)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v74;
        v82 = v74[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
        v77 = v104;
        sub_232E4D0A0();
        v74 = v112[0];
        v83 = *(*(v112[0] + 48) + 16 * v80 + 8);

        sub_232E334D8(v74[7] + *(v110 + 72) * v80, v77);
        v84 = v111;
        sub_232E4D0B0();
        v85 = 0;
      }

      else
      {
        v85 = 1;
        v84 = v111;
      }

      __swift_storeEnumTagSinglePayload(v77, v85, 1, v84);
      sub_232E322DC(v77, &qword_27DDD9960, &qword_232E4DCB0);
      v76 += 2;
      --v75;
    }

    while (v75);
  }

  sub_232E339D8(v74);

  v86 = v103;

  v87 = sub_232E4CCC0();
  v88 = sub_232E4CF60();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    v90 = v86[2];

    *(v89 + 4) = v90;

    _os_log_impl(&dword_232E2C000, v87, v88, "Successfully cleaned up %ld old sessions", v89, 0xCu);
    MEMORY[0x238397C80](v89, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return (v97)(v109, v99);
}

uint64_t sub_232E35554()
{
  v109 = type metadata accessor for SupportFlowSession();
  v0 = *(v109 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v109);
  v107 = v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v106 = (v99 - v5);
  v6 = MEMORY[0x28223BE20](v4);
  v118 = v99 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v117 = v99 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v120 = v99 - v11;
  MEMORY[0x28223BE20](v10);
  v108 = (v99 - v12);
  v13 = sub_232E4C980();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = v99 - v19;
  if (qword_27DDD9810 != -1)
  {
LABEL_52:
    swift_once();
  }

  v21 = qword_27DDD9910;
  v22 = sub_232E4CDD0();
  v23 = [v21 BOOLForKey_];

  sub_232E4C970();
  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v24 = sub_232E4CCE0();
  v25 = __swift_project_value_buffer(v24, qword_27DDD98F8);
  v26 = *(v14 + 16);
  v104 = v20;
  v26(v18, v20, v13);
  v110 = v25;
  v27 = v14;
  v28 = sub_232E4CCC0();
  v29 = sub_232E4CF60();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v122[0] = v31;
    *v30 = 136315138;
    v32 = sub_232E4C960();
    v33 = v13;
    v34 = v23;
    v35 = v0;
    v37 = v36;
    v38 = v18;
    v39 = v33;
    v101 = *(v27 + 8);
    v101(v38, v33);
    v40 = sub_232E3161C(v32, v37, v122);
    v0 = v35;
    v23 = v34;

    *(v30 + 4) = v40;
    _os_log_impl(&dword_232E2C000, v28, v29, "Processing sessions for logging - current time: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x238397C80](v31, -1, -1);
    MEMORY[0x238397C80](v30, -1, -1);

    v13 = v39;
  }

  else
  {

    v101 = *(v27 + 8);
    v101(v18, v13);
  }

  v41 = v27;
  v42 = sub_232E3353C();
  MEMORY[0x28223BE20](v42);
  LOBYTE(v99[-2]) = v23;
  v43 = v104;
  v99[-1] = v104;

  v44 = v42;
  v45 = sub_232E36348(sub_232E388F4, &v99[-4], v42);
  v47 = *(v45 + 16);
  if (v47)
  {
    v99[2] = v41;
    v100 = v13;
    v48 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v99[1] = v45;
    v49 = v45 + v48;
    v116 = *(v0 + 72);
    v103 = 0x8000000232E4ECB0;
    v102 = 0x8000000232E4EC90;
    *&v46 = 136315394;
    v105 = v46;
    v99[0] = v47;
    v50 = v47;
    v51 = v109;
    v52 = v108;
    do
    {
      v119 = v44;
      sub_232E31BBC(v49, v52);
      v53 = v120;
      sub_232E31BBC(v52, v120);
      v54 = *(v53 + v51[9]);
      v114 = *(v53 + v51[10]);
      v115 = v54;
      v55 = *(v53 + v51[6]);
      v14 = 0xE300000000000000;
      v56 = 7368801;
      v111 = v50;
      v112 = v49;
      switch(v55)
      {
        case 1:
          v56 = 0x6574654461746164;
          v14 = 0xEC000000726F7463;
          break;
        case 2:
          v14 = 0xE600000000000000;
          v56 = 0x72656C616964;
          break;
        case 3:
          v14 = 0xE400000000000000;
          v56 = 1769105779;
          break;
        case 4:
          v14 = 0xE400000000000000;
          v56 = 1936746868;
          break;
        case 5:
          v14 = 0xE700000000000000;
          v56 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v57 = v51[11];
      v113 = *(v120 + v51[12]);
      v58 = *(v120 + v51[13]);
      v60 = *(v120 + v57);
      v59 = *(v120 + v57 + 8);
      v61 = 0xE700000000000000;
      v62 = 0x73646F50726961;
      switch(*(v120 + v51[14]))
      {
        case 1:
          v62 = 0xD000000000000012;
          v63 = &v131;
          goto LABEL_23;
        case 2:
          v62 = 0x79726574746162;
          break;
        case 3:
          v62 = 0xD000000000000012;
          v63 = &v132;
LABEL_23:
          v61 = *(v63 - 32);
          break;
        case 4:
          v62 = 0x64656C6261736964;
          v61 = 0xEF746E756F636341;
          break;
        case 5:
          v62 = 0x6150746F67726F66;
          v64 = 0x64726F777373;
          goto LABEL_28;
        case 6:
          v61 = 0xE400000000000000;
          v62 = 1818845549;
          break;
        case 7:
          v61 = 0xE800000000000000;
          v62 = 0x736567617373656DLL;
          break;
        case 8:
          v61 = 0xE900000000000073;
          v62 = 0x6573616863727570;
          break;
        case 9:
          v62 = 0x65526E6565726373;
          v61 = 0xEC00000072696170;
          break;
        case 0xA:
          v62 = 0x6572617774666F73;
          v64 = 0x657461647055;
LABEL_28:
          v61 = v64 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 0xB:
          v61 = 0xE400000000000000;
          v62 = 1768319351;
          break;
        case 0xC:
          v62 = 0;
          v61 = 0xE000000000000000;
          break;
        default:
          break;
      }

      v65 = v51[16];
      v0 = v120;
      v66 = *(v120 + v51[15]);
      v13 = *(v120 + v65);

      sub_232E31C78(v0);
      LOBYTE(v122[0]) = v115;
      BYTE1(v122[0]) = v114;
      v122[1] = v56;
      v122[2] = v14;
      v123 = v113;
      v124 = v58;
      v125 = v60;
      v126 = v59;
      v127 = v62;
      v128 = v61;
      v129 = v66;
      v51 = v109;
      v130 = v13;
      sub_232E365FC();
      sub_232E36DB4(v122);
      v52 = v108;
      v67 = v117;
      sub_232E31BBC(v108, v117);
      *(v67 + v51[8]) = 1;
      v20 = *v52;
      v68 = v52[1];
      sub_232E31BBC(v67, v118);
      v69 = v119;
      swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v69;
      v70 = sub_232E4A484(v20, v68);
      v72 = *(v69 + 16);
      v73 = (v71 & 1) == 0;
      v18 = (v72 + v73);
      if (__OFADD__(v72, v73))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v14 = v70;
      v0 = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
      if (sub_232E4D0A0())
      {
        v74 = sub_232E4A484(v20, v68);
        v13 = v107;
        v18 = v106;
        if ((v0 & 1) != (v75 & 1))
        {
          result = sub_232E4D200();
          __break(1u);
          return result;
        }

        v14 = v74;
      }

      else
      {
        v13 = v107;
        v18 = v106;
      }

      v44 = v121[0];
      if (v0)
      {
        sub_232E38918(v118, *(v121[0] + 56) + v14 * v116);
      }

      else
      {
        *(v121[0] + 8 * (v14 >> 6) + 64) |= 1 << v14;
        v76 = (v44[6] + 16 * v14);
        *v76 = v20;
        v76[1] = v68;
        sub_232E334D8(v118, v44[7] + v14 * v116);
        v77 = v44[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_51;
        }

        v44[2] = v79;
      }

      sub_232E31BBC(v52, v18);
      sub_232E334D8(v52, v13);
      v80 = sub_232E4CCC0();
      v81 = sub_232E4CF60();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v121[0] = v83;
        *v82 = v105;
        v119 = v44;
        v84 = *v18;
        v85 = v18[1];

        sub_232E31C78(v18);
        v86 = sub_232E3161C(v84, v85, v121);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2080;
        v87 = v13 + v51[7];
        v88 = sub_232E4C960();
        v90 = v89;
        sub_232E31C78(v13);
        v91 = sub_232E3161C(v88, v90, v121);

        *(v82 + 14) = v91;
        v44 = v119;
        _os_log_impl(&dword_232E2C000, v80, v81, "Logged session event for session: %s, lastUpdated: %s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238397C80](v83, -1, -1);
        MEMORY[0x238397C80](v82, -1, -1);
      }

      else
      {

        sub_232E31C78(v13);
        sub_232E31C78(v18);
      }

      sub_232E31C78(v117);
      v49 = v112 + v116;
      v50 = v111 - 1;
    }

    while (v111 != 1);

    sub_232E339D8(v44);
    v92 = sub_232E4CCC0();
    v93 = sub_232E4CF50();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 134217984;
      *(v94 + 4) = v99[0];
      _os_log_impl(&dword_232E2C000, v92, v93, "Successfully logged %ld session events", v94, 0xCu);
      MEMORY[0x238397C80](v94, -1, -1);
    }

    v13 = v100;
    v43 = v104;
  }

  else
  {

    v92 = sub_232E4CCC0();
    v95 = sub_232E4CF60();
    if (os_log_type_enabled(v92, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_232E2C000, v92, v95, "No sessions found to log (lastUpdated + 24 hours <= current time)", v96, 2u);
      MEMORY[0x238397C80](v96, -1, -1);
    }
  }

  v97 = v101;

  return v97(v43, v13);
}

uint64_t sub_232E361B4(uint64_t a1, char a2)
{
  v4 = sub_232E4C980();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SupportFlowSession();
  v10 = a1 + *(v9 + 28);
  sub_232E4C920();
  if (a2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_232E3897C(&qword_27DDD99A0, MEMORY[0x277CC9578]);
    v11 = sub_232E4CDA0();
    (*(v5 + 8))(v8, v4);
    if ((v11 & 1) == 0)
    {
      v12 = 0;
      return v12 & 1;
    }
  }

  v12 = *(a1 + *(v9 + 32)) ^ 1;
  return v12 & 1;
}

uint64_t sub_232E36348(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v5 = type metadata accessor for SupportFlowSession();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  v15 = 0;
  v40 = a3;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

LABEL_8:
    v24 = *(v39 + 72);
    sub_232E31BBC(*(v40 + 56) + v24 * (__clz(__rbit64(v21)) | (v15 << 6)), v11);
    sub_232E334D8(v11, v14);
    v25 = v37(v14);
    if (v3)
    {
      sub_232E31C78(v14);
      v32 = v36;

      return v32;
    }

    v21 &= v21 - 1;
    if (v25)
    {
      sub_232E334D8(v14, v35);
      v26 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_232E414C4(0, *(v26 + 16) + 1, 1);
        v26 = v41;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v36 = v29 + 1;
        v34 = v29;
        sub_232E414C4(v28 > 1, v29 + 1, 1);
        v30 = v36;
        v29 = v34;
        v26 = v41;
      }

      *(v26 + 16) = v30;
      v31 = *(v39 + 80);
      v36 = v26;
      result = sub_232E334D8(v35, v26 + ((v31 + 32) & ~v31) + v29 * v24);
    }

    else
    {
      result = sub_232E31C78(v14);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v36;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232E365FC()
{
  v1 = sub_232E4CD10();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232E4CD40();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E37A8C();
  v10 = v9;
  v11 = swift_allocObject();
  memcpy((v11 + 16), v0, 0x4AuLL);
  aBlock[4] = sub_232E38840;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232E33D34;
  aBlock[3] = &block_descriptor_49;
  v12 = _Block_copy(aBlock);
  sub_232E38848(v0, v16);
  sub_232E4CD20();
  v16[0] = MEMORY[0x277D84F90];
  sub_232E3897C(&qword_27DDD9928, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  sub_232E4D010();
  MEMORY[0x2383974C0](0, v8, v4, v12);
  _Block_release(v12);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

uint64_t sub_232E368D0(uint64_t a1)
{
  v2 = sub_232E4CD10();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232E4CD40();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E37A8C();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 20) = BYTE4(a1);
  *(v12 + 16) = a1;
  aBlock[4] = sub_232E386EC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232E33D34;
  aBlock[3] = &block_descriptor_37;
  v13 = _Block_copy(aBlock);
  sub_232E4CD20();
  v18 = MEMORY[0x277D84F90];
  sub_232E3897C(&qword_27DDD9928, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  sub_232E4D010();
  MEMORY[0x2383974C0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v2);
  (*(v6 + 8))(v9, v16);
}

uint64_t static SupportFlowSessionManager.logSessionEvent(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SupportFlowSession();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  sub_232E31BBC(a1, &v22 - v11);
  SupportFlowSessionAnalyticsEvent.init(session:)(v12, v24);
  sub_232E365FC();
  sub_232E36DB4(v24);
  sub_232E31BBC(a1, v10);
  v10[*(v3 + 40)] = 1;
  static SupportFlowSessionManager.updateSession(_:)();
  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v13 = sub_232E4CCE0();
  __swift_project_value_buffer(v13, qword_27DDD98F8);
  sub_232E31BBC(a1, v7);
  v14 = sub_232E4CCC0();
  v15 = sub_232E4CF60();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_23();
    v17 = OUTLINED_FUNCTION_22();
    v23 = v17;
    *v16 = 136315138;
    v18 = *v7;
    v19 = v7[1];

    sub_232E31C78(v7);
    v20 = sub_232E3161C(v18, v19, &v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_232E2C000, v14, v15, "Successfully logged session analytics event for session: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    sub_232E31C78(v7);
  }

  return sub_232E31C78(v10);
}

void static SupportFlowSessionManager.logLookbackEvent(abandon:entryPoint:duration:)()
{
  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v0 = sub_232E4CCE0();
  __swift_project_value_buffer(v0, qword_27DDD98F8);
  oslog = sub_232E4CCC0();
  v1 = sub_232E4CF70();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_232E2C000, oslog, v1, "Deprecated logLookbackEvent called - update to use session-based method", v2, 2u);
    OUTLINED_FUNCTION_15();
  }
}

void static SupportFlowSessionManager.logLookbackEvent(for:duration:)(uint64_t *a1, char *a2)
{
  v4 = type metadata accessor for SupportFlowSession();
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v10 = (v9 - v8);
  sub_232E368D0(*(a1 + *(v11 + 44)) | (*(a1 + *(v11 + 32)) << 8) | qword_232E4DD20[*a2] | qword_232E4DD00[*a2] | qword_232E4DCE0[*a2]);
  v12 = *a1;
  v13 = a1[1];
  static SupportFlowSessionManager.removeProcessedSession(_:)();
  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v14 = sub_232E4CCE0();
  __swift_project_value_buffer(v14, qword_27DDD98F8);
  sub_232E31BBC(a1, v10);
  v15 = sub_232E4CCC0();
  v16 = sub_232E4CF60();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_23();
    v18 = OUTLINED_FUNCTION_22();
    v22 = v18;
    *v17 = 136315138;
    v19 = *v10;
    v20 = v10[1];

    sub_232E31C78(v10);
    v21 = sub_232E3161C(v19, v20, &v22);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_232E2C000, v15, v16, "Successfully logged lookback analytics event and removed session: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    sub_232E31C78(v10);
  }
}

void static SupportFlowSessionManager.removeProcessedSession(_:)()
{
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_17();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v25 = sub_232E4CD40();
  v8 = OUTLINED_FUNCTION_0(v25);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v0;
  v26[4] = sub_232E383A8;
  v26[5] = v13;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v26[2] = v14;
  v26[3] = &block_descriptor_21;
  v15 = _Block_copy(v26);

  sub_232E4CD20();
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v18 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v18);
  _Block_release(v15);
  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_11_0();
  v21(v20);
  v22 = *(v10 + 8);
  v23 = OUTLINED_FUNCTION_18();
  v24(v23);

  OUTLINED_FUNCTION_8();
}

void static SupportFlowSessionManager.updateLastProcessedSessionDate(with:)()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = sub_232E4C980();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  if (qword_27DDD9810 != -1)
  {
    OUTLINED_FUNCTION_9_0();
  }

  v9 = qword_27DDD9910;
  v10 = sub_232E4C930();
  v11 = OUTLINED_FUNCTION_21();
  [v9 setObject:v10 forKey:v11];

  if (qword_27DDD9808 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v12 = sub_232E4CCE0();
  __swift_project_value_buffer(v12, qword_27DDD98F8);
  (*(v6 + 16))(v0, v2, v3);
  v13 = sub_232E4CCC0();
  v14 = sub_232E4CF60();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_23();
    v16 = OUTLINED_FUNCTION_22();
    v27 = v16;
    *v15 = 136315138;
    sub_232E3897C(&qword_27DDD9940, MEMORY[0x277CC9578]);
    v17 = sub_232E4D1B0();
    v19 = v18;
    v20 = *(v6 + 8);
    v21 = OUTLINED_FUNCTION_11_0();
    v22(v21);
    v23 = sub_232E3161C(v17, v19, &v27);

    *(v15 + 4) = v23;
    _os_log_impl(&dword_232E2C000, v13, v14, "Successfully updated previous lookback date to: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  else
  {

    v24 = *(v6 + 8);
    v25 = OUTLINED_FUNCTION_11_0();
    v26(v25);
  }

  OUTLINED_FUNCTION_8();
}

void static SupportFlowSessionManager.getSessionMap(completion:)()
{
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_17();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v25 = sub_232E4CD40();
  v8 = OUTLINED_FUNCTION_0(v25);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  if (qword_27DDD9818 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v0;
  v26[4] = sub_232E383B0;
  v26[5] = v13;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(COERCE_DOUBLE(1107296256));
  v26[2] = v14;
  v26[3] = &block_descriptor_27;
  v15 = _Block_copy(v26);

  sub_232E4CD20();
  OUTLINED_FUNCTION_2_0();
  sub_232E3897C(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9930, &qword_232E4DC68);
  sub_232E38788(&qword_27DDD9938, &qword_27DDD9930, &qword_232E4DC68);
  OUTLINED_FUNCTION_8_0();
  sub_232E4D010();
  v18 = OUTLINED_FUNCTION_10_0();
  MEMORY[0x2383974C0](v18);
  _Block_release(v15);
  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_11_0();
  v21(v20);
  v22 = *(v10 + 8);
  v23 = OUTLINED_FUNCTION_18();
  v24(v23);

  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E37788(void (*a1)(void))
{
  sub_232E3353C();
  a1();
}

void sub_232E377D8(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9960, &qword_232E4DCB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_232E3353C();
  v9 = sub_232E4A484(a1, a2);
  if (v10)
  {
    v11 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = v8;
    v12 = *(v8 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9968, &qword_232E4DCB8);
    sub_232E4D0A0();
    v8 = v25;
    v13 = *(*(v25 + 48) + 16 * v11 + 8);

    v14 = *(v8 + 56);
    v15 = type metadata accessor for SupportFlowSession();
    sub_232E334D8(v14 + *(*(v15 - 8) + 72) * v11, v7);
    sub_232E4D0B0();
    v16 = v7;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = type metadata accessor for SupportFlowSession();
    v16 = v7;
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  sub_232E322DC(v7, &qword_27DDD9960, &qword_232E4DCB0);
  sub_232E339D8(v8);

  if (qword_27DDD9808 != -1)
  {
    swift_once();
  }

  v19 = sub_232E4CCE0();
  __swift_project_value_buffer(v19, qword_27DDD98F8);

  v20 = sub_232E4CCC0();
  v21 = sub_232E4CF60();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_232E3161C(a1, a2, &v25);
    _os_log_impl(&dword_232E2C000, v20, v21, "Removed processed session from map: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x238397C80](v23, -1, -1);
    MEMORY[0x238397C80](v22, -1, -1);
  }
}

void sub_232E37A8C()
{
  OUTLINED_FUNCTION_14();
  v14 = sub_232E4CFA0();
  v1 = OUTLINED_FUNCTION_0(v14);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  v6 = sub_232E4CF90();
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = sub_232E4CD40();
  v11 = OUTLINED_FUNCTION_19(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16_0();
  sub_232E38748(0, &qword_27DDD9980, 0x277D85C78);
  sub_232E4CD30();
  sub_232E3897C(&qword_27DDD9988, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9990, &qword_232E4DCC0);
  sub_232E38788(&qword_27DDD9998, &qword_27DDD9990, &qword_232E4DCC0);
  sub_232E4D010();
  (*(v3 + 104))(v0, *MEMORY[0x277D85260], v14);
  sub_232E4CFC0();
  OUTLINED_FUNCTION_8();
}

void sub_232E37C98(const void *a1)
{
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v2 = sub_232E4CCE0();
  __swift_project_value_buffer(v2, qword_27DDD9D18);
  sub_232E38848(a1, __dst);
  v3 = sub_232E4CCC0();
  v4 = sub_232E4CF80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_232E3161C(0xD000000000000015, 0x8000000232E4EE60, v14);
    *(v5 + 12) = 2080;
    memcpy(__dst, a1, 0x4AuLL);
    SupportFlowSessionAnalyticsEvent.eventRepresentation()();
    sub_232E38748(0, &qword_27DDD9978, 0x277D82BB8);
    v7 = sub_232E4CD80();
    v9 = v8;
    sub_232E36DB4(a1);

    v10 = sub_232E3161C(v7, v9, v14);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_232E2C000, v3, v4, "Logging analytics event %s with %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238397C80](v6, -1, -1);
    MEMORY[0x238397C80](v5, -1, -1);
  }

  else
  {

    sub_232E36DB4(a1);
  }

  v11 = sub_232E4CDD0();
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x4AuLL);
  v14[4] = sub_232E388EC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_232E3830C;
  v14[3] = &block_descriptor_55;
  v13 = _Block_copy(v14);
  sub_232E38848(a1, __dst);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

void sub_232E37F8C(unint64_t a1)
{
  if (qword_27DDD9850 != -1)
  {
    swift_once();
  }

  v2 = a1 & 0x10000;
  v3 = a1 & 0x1000000;
  v4 = a1 & 0x100000000;
  v5 = sub_232E4CCE0();
  __swift_project_value_buffer(v5, qword_27DDD9D18);
  v6 = sub_232E4CCC0();
  v7 = sub_232E4CF80();
  v8 = a1 >> 8;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_232E3161C(0xD000000000000016, 0x8000000232E4EE20, aBlock);
    *(v9 + 12) = 2080;
    v22 = a1 & 1;
    v11 = v2 >> 16;
    v12 = v3 >> 24;
    v13 = HIDWORD(v4);
    v23 = a1 >> 8;
    SupportFlowLookbackAnalyticsEvent.eventRepresentation()();
    sub_232E38748(0, &qword_27DDD9978, 0x277D82BB8);
    v14 = sub_232E4CD80();
    v16 = v15;

    v8 = sub_232E3161C(v14, v16, aBlock);

    *(v9 + 14) = v8;
    LOBYTE(v8) = v23;
    _os_log_impl(&dword_232E2C000, v6, v7, "Logging analytics event %s with %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238397C80](v10, -1, -1);
    v17 = v9;
    v18 = v22;
    MEMORY[0x238397C80](v17, -1, -1);
  }

  else
  {

    v18 = a1 & 1;
    v11 = v2 >> 16;
    v12 = v3 >> 24;
    v13 = HIDWORD(v4);
  }

  v19 = sub_232E4CDD0();
  v20 = swift_allocObject();
  v20[16] = v18;
  v20[17] = v8;
  v20[18] = v11;
  v20[19] = v12;
  v20[20] = v13;
  aBlock[4] = sub_232E38740;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_232E3830C;
  aBlock[3] = &block_descriptor_43;
  v21 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

id sub_232E3830C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_232E38748(0, &qword_27DDD9978, 0x277D82BB8);
    v5 = sub_232E4CD70();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for SupportFlowSessionManager(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SupportFlowSessionManager(_BYTE *result, int a2, int a3)
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

unint64_t sub_232E384C0()
{
  result = qword_27DDD9950;
  if (!qword_27DDD9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9948, &unk_232E4DCA0);
    sub_232E3897C(&qword_27DDD9958, type metadata accessor for SupportFlowSession);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9950);
  }

  return result;
}

unint64_t sub_232E3857C()
{
  result = qword_27DDD9970;
  if (!qword_27DDD9970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9948, &unk_232E4DCA0);
    sub_232E3897C(&qword_27DDD9858, type metadata accessor for SupportFlowSession);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9970);
  }

  return result;
}

void sub_232E386A0(unsigned __int8 *a1)
{
  v1 = 0x100000000;
  if (!a1[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!a1[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!a1[2])
  {
    v3 = 0;
  }

  sub_232E37F8C(v3 | *a1 | (a1[1] << 8) | v2 | v1);
}

uint64_t sub_232E386F4(unsigned __int8 *a1)
{
  v1 = a1[3];
  a1[4];
  v2 = 0x10000;
  if (!a1[2])
  {
    v2 = 0;
  }

  v3 = v2 | *a1 | (a1[1] << 8);
  return sub_232E382D4();
}

uint64_t sub_232E38748(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_232E38788(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t objectdestroy_45Tm()
{
  v1 = v0[4];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_232E38918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowSession();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E3897C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232E389C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD99A8, &qword_232E4DCC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17()
{

  return sub_232E4CD10();
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_21()
{

  return sub_232E4CDD0();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t sub_232E390CC(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_232E4D210();
  a2(v5, a1);
  return sub_232E4D230();
}

uint64_t sub_232E39128()
{
  sub_232E4CE30();
}

uint64_t sub_232E391E8()
{
  sub_232E4CE30();
}

uint64_t sub_232E39298()
{
  sub_232E4CE30();
}

uint64_t sub_232E392E8()
{
  sub_232E4CE30();
}

uint64_t sub_232E393BC()
{
  sub_232E4CE30();
}

uint64_t sub_232E39460(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_5_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
  }

  sub_232E4CE30();
}

uint64_t sub_232E394BC()
{
  SupportFlowIdentifier.rawValue.getter();
  sub_232E4CE30();
}

uint64_t sub_232E3951C(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_1();
  }

  sub_232E4CE30();
}

uint64_t sub_232E395A4(uint64_t a1, char a2)
{
  sub_232E4D210();
  if (!a2)
  {
    OUTLINED_FUNCTION_4_1();
  }

  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E39640()
{
  sub_232E4D210();
  SupportFlowIdentifier.rawValue.getter();
  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E396A4(uint64_t a1, char a2)
{
  sub_232E4D210();
  if (a2)
  {
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_5_1();
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
  }

  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E39744()
{
  sub_232E4D210();
  sub_232E4CE30();

  return sub_232E4D230();
}

uint64_t sub_232E397C8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_232E4D210();
  a3(v6, a2);
  return sub_232E4D230();
}

id sub_232E39814()
{
  v0 = sub_232E4C9D0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v150 = &v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232E4CDC0();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v146 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v147 = &v138 - v8;
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v138 - v11;
  v153 = sub_232E4C8D0();
  v151 = *(v153 - 8);
  v13 = *(v151 + 64);
  v14 = MEMORY[0x28223BE20](v153);
  v148 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v138 - v17;
  MEMORY[0x28223BE20](v16);
  v152 = &v138 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v138 - v22;
  v24 = type metadata accessor for ReentryUserInfo();
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v154 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE8, &qword_232E4EB60);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v138 - v32;
  v34 = sub_232E4C7A0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v138 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E47990(4, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_232E322DC(v33, &qword_27DDD9AE8, &qword_232E4EB60);
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v39 = sub_232E4CCE0();
    __swift_project_value_buffer(v39, qword_28158FCB0);
    v40 = sub_232E4CCC0();
    v41 = sub_232E4CF70();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_232E2C000, v40, v41, "Invalid time interval.", v42, 2u);
      MEMORY[0x238397C80](v42, -1, -1);
    }

    return 0;
  }

  (*(v35 + 32))(v38, v33, v34);
  v145 = v35;
  v43 = v38;
  v44 = *(v35 + 16);
  v149 = v43;
  v44(v31);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v34);
  v144 = "v16@?0@NSError8";
  v45 = sub_232E48140();
  sub_232E322DC(v31, &qword_27DDD9AE8, &qword_232E4EB60);
  if (!v45)
  {
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v51 = sub_232E4CCE0();
    __swift_project_value_buffer(v51, qword_28158FCB0);
    v52 = sub_232E4CCC0();
    v53 = sub_232E4CF50();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v155[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_232E3161C(0xD00000000000002DLL, v144 | 0x8000000000000000, v155);
      _os_log_impl(&dword_232E2C000, v52, v53, "Found no current %s event.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x238397C80](v55, -1, -1);
      MEMORY[0x238397C80](v54, -1, -1);
    }

    goto LABEL_19;
  }

  v143 = v45;
  sub_232E3ACCC(v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_232E322DC(v23, &qword_27DDD9A10, &qword_232E4DD70);
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v46 = sub_232E4CCE0();
    __swift_project_value_buffer(v46, qword_28158FCB0);
    v47 = sub_232E4CCC0();
    v48 = sub_232E4CF70();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v155[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_232E3161C(0xD00000000000002DLL, v144 | 0x8000000000000000, v155);
      _os_log_impl(&dword_232E2C000, v47, v48, "Invalid userInfo in %s event.", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x238397C80](v50, -1, -1);
      MEMORY[0x238397C80](v49, -1, -1);
    }

LABEL_19:
    (*(v145 + 8))(v149, v34);
    return 0;
  }

  v56 = v23;
  v57 = v154;
  sub_232E3E200(v56, v154);
  if ((*(v57 + v24[6]) & 1) == 0)
  {

    goto LABEL_32;
  }

  v58 = sub_232E4D1D0();

  if (v58)
  {
LABEL_32:
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v73 = sub_232E4CCE0();
    __swift_project_value_buffer(v73, qword_28158FCB0);
    v74 = sub_232E4CCC0();
    v75 = sub_232E4CF50();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v155[0] = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_232E3161C(0xD00000000000002DLL, v144 | 0x8000000000000000, v155);
      _os_log_impl(&dword_232E2C000, v74, v75, "Notification for event %s is canceled.", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x238397C80](v77, -1, -1);
      MEMORY[0x238397C80](v76, -1, -1);
    }

    (*(v145 + 8))(v149, v34);
    v72 = v57;
    goto LABEL_37;
  }

  v59 = (v57 + v24[7]);
  if (v59[1])
  {
    v60 = *v59;
    v141 = v59[1];
    v142 = v60;
    v61 = v59[2];
    v62 = v59[3];
    (v44)(v31, v149, v34);
    v63 = v141;
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v34);
    v140 = v61;
    v64 = sub_232E48140();
    sub_232E322DC(v31, &qword_27DDD9AE8, &qword_232E4EB60);
    if (!v64)
    {
      if (qword_28158FCA8 != -1)
      {
        swift_once();
      }

      v95 = sub_232E4CCE0();
      __swift_project_value_buffer(v95, qword_28158FCB0);

      v96 = v63;

      v97 = sub_232E4CCC0();
      v98 = sub_232E4CF60();
      sub_232E3E000(v142, v63);
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v155[0] = v100;
        *v99 = 136315138;
        *(v99 + 4) = sub_232E3161C(v142, v96, v155);
        _os_log_impl(&dword_232E2C000, v97, v98, "No event for required signal %s.", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v100);
        MEMORY[0x238397C80](v100, -1, -1);
        MEMORY[0x238397C80](v99, -1, -1);
      }

      (*(v145 + 8))(v149, v34);
      v72 = v154;
      goto LABEL_37;
    }
  }

  v65 = v154;
  sub_232E3227C(v154, v12, &qword_27DDD98B0, &qword_232E4D988);
  v66 = v153;
  if (__swift_getEnumTagSinglePayload(v12, 1, v153) == 1)
  {
    sub_232E322DC(v12, &qword_27DDD98B0, &qword_232E4D988);
    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v67 = sub_232E4CCE0();
    __swift_project_value_buffer(v67, qword_28158FCB0);
    v68 = sub_232E4CCC0();
    v69 = sub_232E4CF70();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v155[0] = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_232E3161C(0xD00000000000002DLL, v144 | 0x8000000000000000, v155);
      _os_log_impl(&dword_232E2C000, v68, v69, "⚠️ No deep link URL provided in %s event", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x238397C80](v71, -1, -1);
      MEMORY[0x238397C80](v70, -1, -1);
    }

    (*(v145 + 8))(v149, v34);
    v72 = v65;
LABEL_37:
    sub_232E3E0A8(v72);
    return 0;
  }

  v80 = v151;
  v81 = v152;
  (*(v151 + 32))(v152, v12, v66);
  if (qword_28158FCA8 != -1)
  {
    swift_once();
  }

  v82 = sub_232E4CCE0();
  v83 = __swift_project_value_buffer(v82, qword_28158FCB0);
  v140 = *(v80 + 16);
  v141 = v80 + 16;
  v140(v18, v81, v66);
  v84 = v80;
  v142 = v83;
  v85 = sub_232E4CCC0();
  v86 = sub_232E4CF60();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v138 = v87;
    v139 = swift_slowAlloc();
    v155[0] = v139;
    *v87 = 136315138;
    sub_232E3E2B8(&qword_27DDD9A18, MEMORY[0x277CC9260]);
    v88 = sub_232E4D1B0();
    v90 = v89;
    v144 = *(v84 + 8);
    (v144)(v18, v66);
    v91 = sub_232E3161C(v88, v90, v155);

    v92 = v138;
    *(v138 + 1) = v91;
    v93 = v92;
    _os_log_impl(&dword_232E2C000, v85, v86, "Got reentry url from defaults. URL: %s.", v92, 0xCu);
    v94 = v139;
    __swift_destroy_boxed_opaque_existential_0Tm(v139);
    MEMORY[0x238397C80](v94, -1, -1);
    MEMORY[0x238397C80](v93, -1, -1);
  }

  else
  {

    v144 = *(v80 + 8);
    (v144)(v18, v66);
  }

  sub_232E4CDB0();
  sub_232E38748(0, &qword_27DDD9AF0, 0x277CCA8D8);
  v101 = sub_232E4CFD0();
  v102 = v152;
  if (!v101)
  {
    v103 = [objc_opt_self() mainBundle];
  }

  sub_232E4C9C0();
  sub_232E4CE00();
  v104 = (v154 + v24[5]);
  v105 = v104[1];
  if (v105)
  {
    v106 = *v104;

    sub_232E4CDB0();
    if (!sub_232E4CFD0())
    {
      v107 = [objc_opt_self() mainBundle];
    }

    sub_232E4C9C0();
    sub_232E4CE00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AF8, &qword_232E4E0B0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_232E4DD40;
    *(v108 + 56) = MEMORY[0x277D837D0];
    *(v108 + 64) = sub_232E3E264();
    *(v108 + 32) = v106;
    *(v108 + 40) = v105;

    sub_232E4CDF0();

    v102 = v152;
  }

  else
  {
    sub_232E4CDB0();
    if (!sub_232E4CFD0())
    {
      v109 = [objc_opt_self() mainBundle];
    }

    sub_232E4C9C0();
    sub_232E4CE00();
  }

  v110 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v111 = sub_232E4CDD0();

  [v110 setTitle_];

  v112 = sub_232E4CDD0();

  [v110 setBody_];

  v113 = sub_232E4CDD0();
  [v110 setCategoryIdentifier_];

  [v110 setShouldPreemptPresentedNotification_];
  [v110 setInterruptionLevel_];
  v114 = sub_232E4C8B0();
  [v110 setDefaultActionURL_];

  [v110 setShouldSuppressDefaultAction_];
  [v110 setShouldAuthenticateDefaultAction_];
  [v110 setShouldIgnoreDoNotDisturb_];
  v115 = v148;
  v116 = v153;
  v140(v148, v102, v153);
  v78 = v110;
  v117 = sub_232E4CCC0();
  v118 = sub_232E4CF60();

  v119 = os_log_type_enabled(v117, v118);
  v120 = v154;
  if (v119)
  {
    v121 = v115;
    v122 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v155[0] = v150;
    *v122 = 136315394;
    v123 = [v78 title];
    v124 = sub_232E4CDE0();
    v126 = v125;

    v127 = sub_232E3161C(v124, v126, v155);

    *(v122 + 4) = v127;
    *(v122 + 12) = 2080;
    sub_232E3E2B8(&qword_27DDD9A18, MEMORY[0x277CC9260]);
    v128 = v121;
    v129 = v153;
    v130 = sub_232E4D1B0();
    v132 = v131;
    v133 = v129;
    v134 = v144;
    (v144)(v128, v133);
    v135 = sub_232E3161C(v130, v132, v155);

    *(v122 + 14) = v135;
    _os_log_impl(&dword_232E2C000, v117, v118, "Returning notification content %s URL: %s.", v122, 0x16u);
    v136 = v150;
    swift_arrayDestroy();
    v120 = v154;
    MEMORY[0x238397C80](v136, -1, -1);
    MEMORY[0x238397C80](v122, -1, -1);

    v134(v152, v153);
  }

  else
  {

    v137 = v144;
    (v144)(v115, v116);
    v137(v102, v116);
  }

  (*(v145 + 8))(v149, v34);
  sub_232E3E0A8(v120);
  return v78;
}

uint64_t sub_232E3ACCC@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 eventBody];
  if (v3 && (v4 = sub_232E4C42C(v3), v5 >> 60 != 15))
  {
    v9 = v4;
    v10 = v5;
    v11 = sub_232E4C750();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_232E4C740();
    v14 = type metadata accessor for ReentryUserInfo();
    sub_232E3E2B8(&qword_27DDD9B00, type metadata accessor for ReentryUserInfo);
    sub_232E4C730();
    sub_232E32268(v9, v10);

    v7 = a1;
    v8 = 0;
    v6 = v14;
  }

  else
  {
    v6 = type metadata accessor for ReentryUserInfo();
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t static DeviceEventCoordinator.presentReentryNotificationIfNeeded(clear:)(char a1)
{
  *(v1 + 200) = a1;
  v2 = sub_232E4C9B0();
  *(v1 + 144) = v2;
  v3 = *(v2 - 8);
  *(v1 + 152) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232E3B03C, 0, 0);
}

uint64_t sub_232E3B03C()
{
  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v1 = sub_232E4CCE0();
  __swift_project_value_buffer(v1, qword_28158FCB0);
  v2 = sub_232E4CCC0();
  v3 = sub_232E4CF60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_232E2C000, v2, v3, "Present reentry notification if needed.", v4, 2u);
    OUTLINED_FUNCTION_15();
  }

  v5 = sub_232E39814();
  v0[21] = v5;
  if (v5)
  {
    v6 = v5;
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    sub_232E38748(0, &qword_27DDD99F8, 0x277CE1FC0);
    sub_232E4C9A0();
    v10 = sub_232E4C990();
    v12 = v11;
    (*(v8 + 8))(v7, v9);
    v13 = sub_232E3B5B4(v10, v12, v6, 0);
    v0[22] = v13;
    sub_232E38748(0, &qword_27DDD9A00, 0x277CE2028);
    v14 = sub_232E3B638();
    v0[23] = v14;
    v0[2] = v0;
    v0[3] = sub_232E3B370;
    v15 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A08, &qword_232E4DD68);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_232E3B6AC;
    v0[13] = &block_descriptor_0;
    v0[14] = v15;
    [v14 addNotificationRequest:v13 withCompletionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v16 = sub_232E4CCC0();
    v17 = sub_232E4CF70();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_232E2C000, v16, v17, "No hmt reentry notification", v18, 2u);
      OUTLINED_FUNCTION_15();
    }

    v19 = v0[20];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_232E3B370()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_232E3B510;
  }

  else
  {
    v3 = sub_232E3B480;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232E3B480()
{
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    static DeviceEventCoordinator.clearReentryNotification()();
  }

  else
  {

    v1 = v2;
  }

  v5 = *(v3 + 160);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_232E3B510()
{
  v2 = v1[24];
  swift_willThrow();

  OUTLINED_FUNCTION_16_1();
  if (v3)
  {
    static DeviceEventCoordinator.clearReentryNotification()();
  }

  else
  {
  }

  v4 = v1[20];

  v5 = v1[1];

  return v5();
}

id sub_232E3B5B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_232E4CDD0();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

id sub_232E3B638()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_232E4CDD0();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_232E3B6AC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_232E3B71C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_232E3B71C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AE0, &qword_232E4E0A8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t static DeviceEventCoordinator.clearReentryNotification()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  OUTLINED_FUNCTION_19(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v6 = sub_232E4CCE0();
  __swift_project_value_buffer(v6, qword_28158FCB0);
  v7 = sub_232E4CCC0();
  v8 = sub_232E4CF60();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_232E2C000, v7, v8, "Clear reentry notification.", v9, 2u);
    OUTLINED_FUNCTION_15();
  }

  v10 = type metadata accessor for ReentryUserInfo();
  v5[v10[6]] = 0;
  v11 = sub_232E4C8D0();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
  v12 = &v5[v10[7]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v13 = &v5[v10[5]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OUTLINED_FUNCTION_7_0();
  v17 = __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  OUTLINED_FUNCTION_11_1(v17, 0x8000000232E4F6A0);
  return sub_232E322DC(v5, &qword_27DDD9A10, &qword_232E4DD70);
}

uint64_t static DeviceEventCoordinator.recordReentryNotificationURL(url:title:requiredSignal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  OUTLINED_FUNCTION_19(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v13 = sub_232E4C8D0();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v63 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - v21;
  v23 = *a4;
  v66 = a4[1];
  v67 = v23;
  v24 = a4[2];
  v64 = a4[3];
  v65 = v24;
  if (qword_28158FCA8 != -1)
  {
    OUTLINED_FUNCTION_1_2();
  }

  v25 = sub_232E4CCE0();
  __swift_project_value_buffer(v25, qword_28158FCB0);
  v26 = *(v16 + 16);
  v68 = a1;
  v62 = v26;
  v26(v22, a1, v13);

  v27 = sub_232E4CCC0();
  v28 = sub_232E4CF60();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v70 = a3;
    v30 = v29;
    v61 = swift_slowAlloc();
    v73 = v61;
    *v30 = 136315394;
    sub_232E3E2B8(&qword_27DDD9A18, MEMORY[0x277CC9260]);
    v31 = sub_232E4D1B0();
    v33 = v32;
    v34 = *(v16 + 8);
    v35 = OUTLINED_FUNCTION_9_1();
    v36(v35);
    v37 = sub_232E3161C(v31, v33, &v73);

    *(v30 + 4) = v37;
    *(v30 + 12) = 2080;
    v38 = v69;
    v71 = v69;
    v72 = v70;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A20, &qword_232E4DD78);
    v39 = sub_232E4CE10();
    v41 = sub_232E3161C(v39, v40, &v73);

    *(v30 + 14) = v41;
    _os_log_impl(&dword_232E2C000, v27, v28, "Record reentry notification URL %s with title %s.", v30, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15();
    a3 = v70;
    OUTLINED_FUNCTION_15();
  }

  else
  {

    v42 = *(v16 + 8);
    v43 = OUTLINED_FUNCTION_9_1();
    v44(v43);
    v38 = v69;
  }

  v45 = v63;
  v62(v63, v68, v13);
  v46 = type metadata accessor for ReentryUserInfo();
  v12[v46[6]] = 1;
  (*(v16 + 32))(v12, v45, v13);
  v47 = OUTLINED_FUNCTION_7_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v13);
  v50 = &v12[v46[5]];
  *v50 = v38;
  *(v50 + 1) = a3;
  v51 = &v12[v46[7]];
  v53 = v66;
  v52 = v67;
  *v51 = v67;
  *(v51 + 1) = v53;
  v54 = v64;
  *(v51 + 2) = v65;
  *(v51 + 3) = v54;
  v55 = OUTLINED_FUNCTION_7_0();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v46);

  v58 = sub_232E3D908(v52, v53);
  OUTLINED_FUNCTION_11_1(v58, 0x8000000232E4F6A0);
  return sub_232E322DC(v12, &qword_27DDD9A10, &qword_232E4DD70);
}

void sub_232E3BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v15 = [v14 Signals];
  swift_unknownObjectRelease();
  sub_232E38748(0, &qword_27DDD9AD0, 0x277CF1168);
  sub_232E3227C(a5, v13, &qword_27DDD9A10, &qword_232E4DD70);

  v16 = sub_232E3BED8(a1, a2, a3, a4, 0, 0, v13);
  v17 = [v15 source];
  [v17 sendEvent_];
}

id sub_232E3BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v28 = a3;
  v11 = type metadata accessor for ReentryUserInfo();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A10, &qword_232E4DD70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  sub_232E3227C(a7, &v28 - v17, &qword_27DDD9A10, &qword_232E4DD70);
  if (__swift_getEnumTagSinglePayload(v18, 1, v11) == 1)
  {
    v19 = 0;
    v20 = 0xF000000000000000;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_232E3E200(v18, v14);
    sub_232E3C144(v30);
    sub_232E3E0A8(v14);
    v19 = v30[0];
    v20 = v30[1];
    if (a2)
    {
LABEL_3:
      v21 = sub_232E4CDD0();

      if (a4)
      {
        goto LABEL_4;
      }

LABEL_8:
      v22 = 0;
      if (a6)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v21 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v22 = sub_232E4CDD0();

  if (a6)
  {
LABEL_5:
    v23 = sub_232E4CDD0();

    goto LABEL_10;
  }

LABEL_9:
  v23 = 0;
LABEL_10:
  if (v20 >> 60 == 15)
  {
    v24 = 0;
  }

  else
  {
    sub_232E31B64(v19, v20);
    v24 = sub_232E4C8E0();
    sub_232E32268(v19, v20);
  }

  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = [v25 initWithContentIdentifier:v21 context:v22 osBuild:v23 userInfo:{v24, v28, v29}];

  sub_232E32268(v19, v20);
  sub_232E322DC(a7, &qword_27DDD9A10, &qword_232E4DD70);
  return v26;
}

void sub_232E3C144(uint64_t *a1@<X8>)
{
  v3 = sub_232E4C780();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_232E4C770();
  type metadata accessor for ReentryUserInfo();
  sub_232E3E2B8(&qword_27DDD9AD8, type metadata accessor for ReentryUserInfo);
  v6 = sub_232E4C760();
  if (v1)
  {

    if (qword_28158FCA8 != -1)
    {
      swift_once();
    }

    v8 = sub_232E4CCE0();
    __swift_project_value_buffer(v8, qword_28158FCB0);
    MEMORY[0x238397B60](v1);
    v9 = sub_232E4CCC0();
    v10 = sub_232E4CF70();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      MEMORY[0x238397B60](v1);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_232E2C000, v9, v10, "❌ Error encoding ReentryUserInfo: %@", v11, 0xCu);
      sub_232E322DC(v12, &qword_27DDD9860, &qword_232E4D850);
      MEMORY[0x238397C80](v12, -1, -1);
      MEMORY[0x238397C80](v11, -1, -1);
    }

    else
    {
    }

    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v14 = v6;
    v15 = v7;
  }

  *a1 = v14;
  a1[1] = v15;
}

uint64_t sub_232E3C35C()
{
  if (qword_27DDD9830 != -1)
  {
    swift_once();
  }

  qword_27DDD99B8 = qword_27DDD9D08;
  unk_27DDD99C0 = unk_27DDD9D10;
  qword_27DDD99C8 = 0;
  unk_27DDD99D0 = 0;
}

uint64_t static ReentrySignal.resetNetworkSettings.getter()
{
  if (qword_27DDD9820 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_0(&qword_27DDD99B8);
}

uint64_t sub_232E3C43C()
{
  if (qword_28158FC88 != -1)
  {
    swift_once();
  }

  qword_27DDD99D8 = qword_28158FDF0;
  unk_27DDD99E0 = *algn_28158FDF8;
  xmmword_27DDD99E8 = xmmword_232E4DD50;
}

uint64_t static ReentrySignal.softwareUpdate.getter()
{
  if (qword_27DDD9828 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_20_0(&qword_27DDD99D8);
}

uint64_t sub_232E3C524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_232E4D1D0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_232E3C634(char a1)
{
  sub_232E4D210();
  MEMORY[0x238397730](a1 & 1);
  return sub_232E4D230();
}

uint64_t sub_232E3C688(char a1)
{
  if (a1)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_232E3C6E0()
{
  v1 = *v0;
  sub_232E4D210();
  MEMORY[0x238397730](v1);
  return sub_232E4D230();
}

uint64_t sub_232E3C72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E3C524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E3C774@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E3C5F4();
  *a1 = result;
  return result;
}

uint64_t sub_232E3C79C(uint64_t a1)
{
  v2 = sub_232E3D94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E3C7D8(uint64_t a1)
{
  v2 = sub_232E3D94C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ReentrySignal.encode(to:)()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A28, &qword_232E4DD80);
  OUTLINED_FUNCTION_0(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  v15[1] = v0[3];
  v15[2] = v13;
  v14 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_232E3D94C();
  sub_232E4D250();
  sub_232E4D160();
  if (!v1)
  {
    sub_232E4D140();
  }

  (*(v16 + 8))(v10, v4);
  OUTLINED_FUNCTION_21_0();
}

void ReentrySignal.init(from:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A38, &qword_232E4DD88);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v10);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_232E3D94C();
  sub_232E4D240();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    v12 = sub_232E4D100();
    v14 = v13;
    v15 = sub_232E4D0E0();
    v17 = v16;
    v18 = *(v7 + 8);
    v21 = v15;
    v19 = OUTLINED_FUNCTION_9_1();
    v20(v19);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v21;
    v4[3] = v17;

    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_232E3CB44()
{
  v0 = sub_232E4D0D0();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232E3CB98(char a1)
{
  if (a1)
  {
    return 0x656D75736572;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_232E3CBC0()
{
  v0 = sub_232E4D0D0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232E3CC0C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232E3CCDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232E3CB44();
  *a2 = result;
  return result;
}

uint64_t sub_232E3CD0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232E3CB98(*v1);
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_232E3CDEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_232E443E8();
}

uint64_t sub_232E3CE60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_232E3CBC0();
  *a2 = result;
  return result;
}

uint64_t sub_232E3CE90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232E3CC0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_232E3CEC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E3CBC0();
  *a1 = result;
  return result;
}

uint64_t sub_232E3CEF8(uint64_t a1)
{
  v2 = sub_232E3DEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E3CF34(uint64_t a1)
{
  v2 = sub_232E3DEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_232E3CF70()
{
  OUTLINED_FUNCTION_19_0();
  v70 = v0;
  v2 = v1;
  v65 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v7);
  v68 = &v61 - v8;
  v9 = sub_232E4C8D0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v66 = v11;
  v67 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9A88, &qword_232E4E098);
  OUTLINED_FUNCTION_0(v17);
  v69 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  v24 = type metadata accessor for ReentryUserInfo();
  v25 = OUTLINED_FUNCTION_6(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v31 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_232E3DEA0();
  v32 = v70;
  sub_232E4D240();
  if (v32)
  {
    goto LABEL_3;
  }

  v64 = v16;
  v34 = v68;
  v33 = v69;
  v70 = v30;
  sub_232E3DEF4();
  OUTLINED_FUNCTION_17_0();
  sub_232E4D130();
  v63 = v23;
  v35 = v71;
  v36 = v70;
  *(v70 + v24[6]) = v71;
  v37 = v33;
  if (v35 == 1)
  {

    v38 = v2;
  }

  else
  {
    v39 = sub_232E4D1D0();

    v38 = v2;
    if ((v39 & 1) == 0)
    {
      v45 = 1;
      v46 = v67;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v36, v45, 1, v46);
      sub_232E3DFAC();
      OUTLINED_FUNCTION_17_0();
      sub_232E4D0F0();
      v50 = v37;
      v51 = (v36 + v24[7]);
      v52 = v72;
      *v51 = v71;
      v51[1] = v52;
      LOBYTE(v71) = 1;
      v53 = sub_232E4D0E0();
      v69 = v54;
      v55 = v53;
      v56 = *(v50 + 8);
      v57 = OUTLINED_FUNCTION_13_0();
      v58(v57);
      v59 = (v36 + v24[5]);
      v60 = v69;
      *v59 = v55;
      v59[1] = v60;
      sub_232E3E044(v36, v65);
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
      sub_232E3E0A8(v36);
      goto LABEL_4;
    }
  }

  LOBYTE(v71) = 2;
  v40 = v34;
  v62 = sub_232E4D100();
  v42 = v41;
  sub_232E4C8C0();
  v43 = v67;
  if (__swift_getEnumTagSinglePayload(v40, 1, v67) != 1)
  {

    v47 = v40;
    v48 = *(v66 + 32);
    v49 = v64;
    v48(v64, v47, v43);
    v48(v36, v49, v43);
    v45 = 0;
    v46 = v43;
    v37 = v69;
    goto LABEL_12;
  }

  sub_232E322DC(v40, &qword_27DDD98B0, &qword_232E4D988);
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  sub_232E4D050();

  *&v71 = 0xD000000000000014;
  *(&v71 + 1) = 0x8000000232E4F6D0;
  MEMORY[0x238397350](v62, v42);

  sub_232E4D080();
  swift_allocError();
  v2 = v38;
  sub_232E3DF48();
  v44 = v63;
  sub_232E4D070();

  swift_willThrow();
  (*(v69 + 8))(v44, v17);
LABEL_3:
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
LABEL_4:
  OUTLINED_FUNCTION_21_0();
}

void sub_232E3D4FC()
{
  OUTLINED_FUNCTION_19_0();
  v43 = v1;
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD98B0, &qword_232E4D988);
  OUTLINED_FUNCTION_19(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_232E4C8D0();
  v12 = OUTLINED_FUNCTION_0(v11);
  v41 = v13;
  v42 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AB0, &qword_232E4E0A0);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  v27 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_232E3DEA0();
  sub_232E4D250();
  v28 = type metadata accessor for ReentryUserInfo();
  LOBYTE(v44) = *(v2 + *(v28 + 24));
  sub_232E3E104();
  OUTLINED_FUNCTION_15_0();
  v29 = v43;
  sub_232E4D190();
  if (!v29)
  {
    v40 = v28;
    v30 = v41;
    v43 = v21;
    sub_232E3227C(v2, v10, &qword_27DDD98B0, &qword_232E4D988);
    v31 = v42;
    if (__swift_getEnumTagSinglePayload(v10, 1, v42) == 1)
    {
      sub_232E322DC(v10, &qword_27DDD98B0, &qword_232E4D988);
    }

    else
    {
      (*(v30 + 32))(v18, v10, v31);
      sub_232E4C8A0();
      OUTLINED_FUNCTION_10_1(2);
      sub_232E4D160();
      (*(v30 + 8))(v18, v31);
    }

    v32 = v40;
    v33 = (v2 + *(v40 + 28));
    v34 = v33[1];
    v35 = v33[2];
    v36 = v33[3];
    v44 = *v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    sub_232E3D908(v44, v34);
    sub_232E3E158();
    OUTLINED_FUNCTION_15_0();
    sub_232E4D150();
    sub_232E3E000(v44, v45);
    v21 = v43;
    v37 = (v2 + *(v32 + 20));
    v38 = *v37;
    v39 = v37[1];
    OUTLINED_FUNCTION_10_1(1);
    sub_232E4D140();
  }

  (*(v21 + 8))(v26, v19);
  OUTLINED_FUNCTION_21_0();
}

uint64_t type metadata accessor for ReentryUserInfo()
{
  result = qword_27DDD9A40;
  if (!qword_27DDD9A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232E3D908(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_232E3D94C()
{
  result = qword_27DDD9A30;
  if (!qword_27DDD9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A30);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_232E3D9AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_232E3D9EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_232E3DA74()
{
  sub_232E3DB38();
  if (v0 <= 0x3F)
  {
    sub_232E3DB90(319, &qword_27DDD9A58);
    if (v1 <= 0x3F)
    {
      sub_232E3DB90(319, &qword_27DDD9A60);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232E3DB38()
{
  if (!qword_27DDD9A50)
  {
    sub_232E4C8D0();
    v0 = sub_232E4CFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDD9A50);
    }
  }
}

void sub_232E3DB90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_232E4CFE0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_232E3DBDC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_232E3DC64(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232E3DD44()
{
  result = qword_27DDD9A68;
  if (!qword_27DDD9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A68);
  }

  return result;
}

unint64_t sub_232E3DD9C()
{
  result = qword_27DDD9A70;
  if (!qword_27DDD9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A70);
  }

  return result;
}

unint64_t sub_232E3DDF4()
{
  result = qword_27DDD9A78;
  if (!qword_27DDD9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A78);
  }

  return result;
}

unint64_t sub_232E3DE4C()
{
  result = qword_27DDD9A80;
  if (!qword_27DDD9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A80);
  }

  return result;
}

unint64_t sub_232E3DEA0()
{
  result = qword_27DDD9A90;
  if (!qword_27DDD9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A90);
  }

  return result;
}

unint64_t sub_232E3DEF4()
{
  result = qword_27DDD9A98;
  if (!qword_27DDD9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9A98);
  }

  return result;
}

unint64_t sub_232E3DF48()
{
  result = qword_27DDD9AA0;
  if (!qword_27DDD9AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9A88, &qword_232E4E098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AA0);
  }

  return result;
}

unint64_t sub_232E3DFAC()
{
  result = qword_27DDD9AA8;
  if (!qword_27DDD9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AA8);
  }

  return result;
}

uint64_t sub_232E3E000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_232E3E044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReentryUserInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232E3E0A8(uint64_t a1)
{
  v2 = type metadata accessor for ReentryUserInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232E3E104()
{
  result = qword_27DDD9AB8;
  if (!qword_27DDD9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AB8);
  }

  return result;
}

unint64_t sub_232E3E158()
{
  result = qword_27DDD9AC0;
  if (!qword_27DDD9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AC0);
  }

  return result;
}

unint64_t sub_232E3E1AC()
{
  result = qword_27DDD9AC8;
  if (!qword_27DDD9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9AC8);
  }

  return result;
}

uint64_t sub_232E3E200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReentryUserInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_232E3E264()
{
  result = qword_28158FCA0;
  if (!qword_28158FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28158FCA0);
  }

  return result;
}

uint64_t sub_232E3E2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ReentryUserInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ReentryUserInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_232E3E468()
{
  result = qword_27DDD9B08;
  if (!qword_27DDD9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B08);
  }

  return result;
}

unint64_t sub_232E3E4C0()
{
  result = qword_27DDD9B10;
  if (!qword_27DDD9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B10);
  }

  return result;
}

unint64_t sub_232E3E518()
{
  result = qword_27DDD9B18;
  if (!qword_27DDD9B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_1(uint64_t a1, uint64_t a2)
{

  sub_232E3BD3C(0xD00000000000002DLL, a2, 0, 0, v2);
}

void OUTLINED_FUNCTION_16_1()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
}

uint64_t OUTLINED_FUNCTION_20_0@<X0>(void *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  *v1 = *a1;
  v1[1] = v3;
  v1[2] = v5;
  v1[3] = v4;
}

uint64_t sub_232E3E74C()
{
  OUTLINED_FUNCTION_0_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AF8, &qword_232E4E0B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232E4DD40;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_232E3E264();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  result = sub_232E4CDF0();
  *v1 = result;
  *v0 = v6;
  return result;
}

uint64_t sub_232E3E858()
{
  OUTLINED_FUNCTION_0_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9AF8, &qword_232E4E0B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232E4DD40;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_232E3E264();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  result = sub_232E4CDF0();
  *v1 = result;
  *v0 = v6;
  return result;
}

uint64_t SupportFlowSessionAnalyticsEvent.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SupportFlowSession();
  v22 = *(a1 + v4[10]);
  v23 = *(a1 + v4[9]);
  v5 = 0xE300000000000000;
  v6 = 7368801;
  v7 = v4;
  switch(*(a1 + v4[6]))
  {
    case 1:
      v5 = 0xEC000000726F7463;
      v6 = 0x6574654461746164;
      break;
    case 2:
      v5 = 0xE600000000000000;
      v6 = 0x72656C616964;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v6 = 1769105779;
      break;
    case 4:
      v5 = 0xE400000000000000;
      v6 = 1936746868;
      break;
    case 5:
      v5 = 0xE700000000000000;
      v6 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v20 = v6;
  v21 = v5;
  v8 = v4[11];
  v9 = *(a1 + v4[12]);
  v10 = *(a1 + v4[13]);
  v12 = *(a1 + v8);
  v11 = *(a1 + v8 + 8);
  if (*(a1 + v4[14]) == 12)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v24 = *(a1 + v4[14]);
    v13 = SupportFlowIdentifier.rawValue.getter();
    v14 = v15;
  }

  v16 = v7[16];
  v17 = *(a1 + v7[15]);
  v18 = *(a1 + v16);

  result = sub_232E31C78(a1);
  *a2 = v23;
  *(a2 + 1) = v22;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  *(a2 + 64) = v14;
  *(a2 + 72) = v17;
  *(a2 + 73) = v18;
  return result;
}

uint64_t SupportFlowSessionAnalyticsEvent.eventRepresentation()()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = v0[24];
  v7 = *(v0 + 4);
  v6 = *(v0 + 5);
  v8 = *(v0 + 6);
  v11 = *(v0 + 8);
  v12 = *(v0 + 7);
  v13 = v0[72];
  v14 = v0[73];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B20, &qword_232E4E210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232E4E200;
  *(inited + 32) = 0x6E6F646E616261;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_232E4CF10();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000232E4F890;
  *(inited + 72) = sub_232E4CF10();
  *(inited + 80) = 0x6F705F7972746E65;
  *(inited + 88) = 0xEB00000000746E69;
  *(inited + 96) = sub_232E4CDD0();
  strcpy((inited + 104), "featured_topic");
  *(inited + 119) = -18;
  *(inited + 120) = sub_232E4CF10();
  *(inited + 128) = 0x7263735F7473616CLL;
  *(inited + 136) = 0xEB000000006E6565;
  *(inited + 144) = sub_232E4CF30();
  *(inited + 152) = 0x64695F70657473;
  *(inited + 160) = 0xE700000000000000;
  *(inited + 168) = sub_232E4CDD0();
  *(inited + 176) = 0x6369706F74;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_232E4CDD0();
  *(inited + 200) = 0x6165735F73657375;
  *(inited + 208) = 0xEB00000000686372;
  *(inited + 216) = sub_232E4CF10();
  strcpy((inited + 224), "warm_handoff");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = sub_232E4CF10();
  sub_232E3ECD4();
  return sub_232E4CD90();
}

unint64_t sub_232E3ECD4()
{
  result = qword_27DDD9978;
  if (!qword_27DDD9978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD9978);
  }

  return result;
}

uint64_t sub_232E3ED18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F646E616261 && a2 == 0xE700000000000000;
  if (v4 || (sub_232E4D1D0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737463656E6E6F63 && a2 == 0xEF746E6567416F54;
    if (v6 || (sub_232E4D1D0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696F507972746E65 && a2 == 0xEA0000000000746ELL;
      if (v7 || (sub_232E4D1D0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465727574616566 && a2 == 0xED00006369706F54;
        if (v8 || (sub_232E4D1D0() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657263537473616CLL && a2 == 0xEA00000000006E65;
          if (v9 || (sub_232E4D1D0() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x644970657473 && a2 == 0xE600000000000000;
            if (v10 || (sub_232E4D1D0() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
              if (v11 || (sub_232E4D1D0() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7261655373657375 && a2 == 0xEA00000000006863;
                if (v12 || (sub_232E4D1D0() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x646E61486D726177 && a2 == 0xEB0000000066666FLL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_232E4D1D0();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232E3F02C(unsigned __int8 a1)
{
  sub_232E4D210();
  MEMORY[0x238397730](a1);
  return sub_232E4D230();
}

uint64_t sub_232E3F074(char a1)
{
  result = 0x6E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0x737463656E6E6F63;
      break;
    case 2:
      result = 0x696F507972746E65;
      break;
    case 3:
      result = 0x6465727574616566;
      break;
    case 4:
      result = 0x657263537473616CLL;
      break;
    case 5:
      result = 0x644970657473;
      break;
    case 6:
      result = 0x6369706F74;
      break;
    case 7:
      result = 0x7261655373657375;
      break;
    case 8:
      result = 0x646E61486D726177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_232E3F1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_232E3ED18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_232E3F1E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232E3EFEC();
  *a1 = result;
  return result;
}

uint64_t sub_232E3F210(uint64_t a1)
{
  v2 = sub_232E3F544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232E3F24C(uint64_t a1)
{
  v2 = sub_232E3F544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SupportFlowSessionAnalyticsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B28, &qword_232E4E218);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v26 - v9;
  v11 = *v1;
  v30 = v1[1];
  v12 = *(v1 + 1);
  v28 = *(v1 + 2);
  v29 = v12;
  v27 = v1[24];
  v13 = *(v1 + 4);
  v14 = *(v1 + 5);
  v15 = *(v1 + 7);
  v26[4] = *(v1 + 6);
  v26[5] = v13;
  v26[1] = v15;
  v26[2] = *(v1 + 8);
  v26[3] = v14;
  v16 = v1[72];
  v17 = v1[73];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_232E3F544();
  sub_232E4D250();
  v40 = 0;
  v23 = v31;
  sub_232E4D170();
  if (v23)
  {
    return (*(v6 + 8))(v10, v22);
  }

  v39 = 1;
  sub_232E4D170();
  v38 = 2;
  v31 = v10;
  sub_232E4D160();
  v37 = 3;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D170();
  v36 = 4;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D180();
  v35 = 5;
  sub_232E4D160();
  v34 = 6;
  v24 = v31;
  sub_232E4D160();
  v33 = 7;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D170();
  v32 = 8;
  OUTLINED_FUNCTION_2_3();
  sub_232E4D170();
  return (*(v6 + 8))(v24, v22);
}

unint64_t sub_232E3F544()
{
  result = qword_27DDD9B30;
  if (!qword_27DDD9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B30);
  }

  return result;
}

uint64_t SupportFlowSessionAnalyticsEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B38, &qword_232E4E220);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232E3F544();
  sub_232E4D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v30[0] = 0;
  v10 = sub_232E4D110();
  OUTLINED_FUNCTION_0_3(1);
  v41 = sub_232E4D110();
  OUTLINED_FUNCTION_0_3(2);
  v11 = sub_232E4D100();
  v28 = v12;
  OUTLINED_FUNCTION_0_3(3);
  v26 = sub_232E4D110();
  OUTLINED_FUNCTION_0_3(4);
  v25 = sub_232E4D120();
  OUTLINED_FUNCTION_0_3(5);
  v24 = sub_232E4D100();
  v27 = v13;
  OUTLINED_FUNCTION_0_3(6);
  v23 = sub_232E4D100();
  v22 = v11;
  v15 = v14;
  OUTLINED_FUNCTION_0_3(7);
  v21 = sub_232E4D110();
  v42 = 8;
  v16 = sub_232E4D110();
  v20 = v41 & 1;
  v26 &= 1u;
  v41 = v21 & 1;
  v17 = OUTLINED_FUNCTION_1_3();
  v18(v17);
  LOBYTE(__src[0]) = v10 & 1;
  BYTE1(__src[0]) = v20;
  __src[1] = v22;
  __src[2] = v28;
  LOBYTE(__src[3]) = v26;
  __src[4] = v25;
  __src[5] = v24;
  __src[6] = v27;
  __src[7] = v23;
  __src[8] = v15;
  LOBYTE(__src[9]) = v41;
  BYTE1(__src[9]) = v16 & 1;
  memcpy(a2, __src, 0x4AuLL);
  sub_232E38848(__src, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v30[0] = v10 & 1;
  v30[1] = v20;
  v31 = v22;
  v32 = v28;
  v33 = v26;
  v34 = v25;
  v35 = v24;
  v36 = v27;
  v37 = v23;
  v38 = v15;
  v39 = v41;
  v40 = v16 & 1;
  return sub_232E36DB4(v30);
}

uint64_t sub_232E3FA18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_232E3FA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowSessionAnalyticsEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowSessionAnalyticsEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_232E3FC24()
{
  result = qword_27DDD9B40;
  if (!qword_27DDD9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B40);
  }

  return result;
}

unint64_t sub_232E3FC7C()
{
  result = qword_27DDD9B48;
  if (!qword_27DDD9B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B48);
  }

  return result;
}

unint64_t sub_232E3FCD4()
{
  result = qword_27DDD9B50;
  if (!qword_27DDD9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B50);
  }

  return result;
}

void static URL.deepLink(_:stepId:sessionId:referrer:)()
{
  OUTLINED_FUNCTION_14();
  v42 = v0;
  v43 = v1;
  v3 = v2;
  v5 = v4;
  v41 = sub_232E4C7E0();
  v6 = OUTLINED_FUNCTION_0(v41);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = sub_232E4C880();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = *v5;
  sub_232E4C870();
  OUTLINED_FUNCTION_21_1();
  sub_232E4C860();
  MEMORY[0x238396D50](0, 0xE000000000000000);
  if (v23 != 12)
  {
    SupportFlowIdentifier.rawValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B58, &qword_232E4E410);
    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v40 = *(v8 + 72);
    *(swift_allocObject() + 16) = xmmword_232E4DD40;
    sub_232E4C7B0();

    sub_232E4C810();
    if (v3)
    {
      v26 = sub_232E4C7F0();
      if (*v25)
      {
        v27 = v25;
        sub_232E4C7B0();
        sub_232E4127C();
        sub_232E412C8(*(*v27 + 16));
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_23_0();
        v28();
      }

      v29 = OUTLINED_FUNCTION_24();
      v26(v29);
    }

    if (v42)
    {
      v31 = sub_232E4C7F0();
      if (*v30)
      {
        v32 = v30;
        sub_232E4C7B0();
        sub_232E4127C();
        sub_232E412C8(*(*v32 + 16));
        OUTLINED_FUNCTION_4_2();
        OUTLINED_FUNCTION_23_0();
        v33();
      }

      v34 = OUTLINED_FUNCTION_24();
      v31(v34);
    }

    if (v43)
    {
      v36 = sub_232E4C7F0();
      if (*v35)
      {
        v37 = v35;
        sub_232E4C7B0();
        sub_232E4127C();
        sub_232E412C8(*(*v37 + 16));
        v38 = OUTLINED_FUNCTION_4_2();
        (*(v8 + 32))(v38, v13, v41);
      }

      v39 = OUTLINED_FUNCTION_24();
      v36(v39);
    }
  }

  sub_232E4C830();
  (*(v17 + 8))(v22, v14);
  OUTLINED_FUNCTION_8();
}

uint64_t SupportFlowURLParameter.rawValue.getter()
{
  result = 1701869940;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 1885697139;
      break;
    case 3:
      result = 0x7265727265666572;
      break;
    default:
      return result;
  }

  return result;
}

void URL.flowStep.getter()
{
  OUTLINED_FUNCTION_14();
  v4 = sub_232E4C7E0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B68, &qword_232E4E420);
  OUTLINED_FUNCTION_19(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v20 = sub_232E4C880();
  OUTLINED_FUNCTION_12_0(v20);
  if (v30)
  {
    v21 = &qword_27DDD9B60;
    v22 = &qword_232E4E418;
    v23 = v2;
    goto LABEL_20;
  }

  sub_232E4C800();
  OUTLINED_FUNCTION_8_1();
  (*(v24 + 8))(v2, v3);
  if (!v1)
  {
    goto LABEL_21;
  }

  v25 = *(v1 + 16);
  if (!v25)
  {
LABEL_14:

    v35 = 1;
LABEL_17:
    OUTLINED_FUNCTION_5_2(v34, v35);
    if (!v30)
    {
      sub_232E4C7D0();
      v36 = OUTLINED_FUNCTION_3_3();
      v37(v36);
LABEL_21:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_8();
      return;
    }

    v21 = &qword_27DDD9B68;
    v22 = &qword_232E4E420;
    v23 = v0;
LABEL_20:
    sub_232E41308(v23, v21, v22);
    goto LABEL_21;
  }

  v26 = 0;
  OUTLINED_FUNCTION_9_2();
  v28 = v1 + v27;
  while (v26 < *(v1 + 16))
  {
    (*(v38 + 16))(v11, v28 + *(v38 + 72) * v26, v4);
    v30 = sub_232E4C7C0() == 1885697139 && v29 == 0xE400000000000000;
    if (v30)
    {

LABEL_16:

      v34 = (*(v38 + 32))(v0, v11, v4);
      v35 = 0;
      goto LABEL_17;
    }

    v31 = sub_232E4D1D0();

    if (v31)
    {
      goto LABEL_16;
    }

    ++v26;
    v32 = OUTLINED_FUNCTION_17_1();
    v33(v32);
    if (v25 == v26)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void URL.flowSession.getter()
{
  OUTLINED_FUNCTION_14();
  v4 = sub_232E4C7E0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B68, &qword_232E4E420);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v16 = sub_232E4C880();
  OUTLINED_FUNCTION_12_0(v16);
  if (v28)
  {
    v17 = &qword_27DDD9B60;
    v18 = &qword_232E4E418;
    v19 = v2;
    goto LABEL_20;
  }

  sub_232E4C800();
  OUTLINED_FUNCTION_8_1();
  (*(v20 + 8))(v2, v3);
  if (!v1)
  {
    goto LABEL_21;
  }

  v39 = v0;
  v40 = *(v1 + 16);
  if (!v40)
  {
LABEL_14:

    v34 = 1;
    v24 = v39;
LABEL_17:
    OUTLINED_FUNCTION_5_2(v33, v34);
    if (!v28)
    {
      sub_232E4C7D0();
      v37 = OUTLINED_FUNCTION_3_3();
      v38(v37);
LABEL_21:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_8();
      return;
    }

    v17 = &qword_27DDD9B68;
    v18 = &qword_232E4E420;
    v19 = v24;
LABEL_20:
    sub_232E41308(v19, v17, v18);
    goto LABEL_21;
  }

  v21 = 0;
  v22 = 0x6E6F6973736573;
  OUTLINED_FUNCTION_9_2();
  v24 = v1 + v23;
  while (v21 < *(v1 + 16))
  {
    v25 = OUTLINED_FUNCTION_14_0();
    v26(v25);
    v28 = sub_232E4C7C0() == v22 && v27 == 0xE700000000000000;
    if (v28)
    {

LABEL_16:

      v35 = OUTLINED_FUNCTION_13_1();
      v33 = v36(v35);
      v34 = 0;
      goto LABEL_17;
    }

    v29 = v22;
    v30 = sub_232E4D1D0();

    if (v30)
    {
      goto LABEL_16;
    }

    ++v21;
    v31 = OUTLINED_FUNCTION_17_1();
    v32(v31);
    v22 = v29;
    if (v40 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void URL.referrer.getter()
{
  OUTLINED_FUNCTION_14();
  v4 = sub_232E4C7E0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B68, &qword_232E4E420);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_1();
  v16 = sub_232E4C880();
  OUTLINED_FUNCTION_12_0(v16);
  if (v28)
  {
    v17 = &qword_27DDD9B60;
    v18 = &qword_232E4E418;
    v19 = v2;
    goto LABEL_20;
  }

  sub_232E4C800();
  OUTLINED_FUNCTION_8_1();
  (*(v20 + 8))(v2, v3);
  if (!v1)
  {
    goto LABEL_21;
  }

  v39 = v0;
  v40 = *(v1 + 16);
  if (!v40)
  {
LABEL_14:

    v34 = 1;
    v24 = v39;
LABEL_17:
    OUTLINED_FUNCTION_5_2(v33, v34);
    if (!v28)
    {
      sub_232E4C7D0();
      v37 = OUTLINED_FUNCTION_3_3();
      v38(v37);
LABEL_21:
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_8();
      return;
    }

    v17 = &qword_27DDD9B68;
    v18 = &qword_232E4E420;
    v19 = v24;
LABEL_20:
    sub_232E41308(v19, v17, v18);
    goto LABEL_21;
  }

  v21 = 0;
  v22 = 0x7265727265666572;
  OUTLINED_FUNCTION_9_2();
  v24 = v1 + v23;
  while (v21 < *(v1 + 16))
  {
    v25 = OUTLINED_FUNCTION_14_0();
    v26(v25);
    v28 = sub_232E4C7C0() == v22 && v27 == 0xE800000000000000;
    if (v28)
    {

LABEL_16:

      v35 = OUTLINED_FUNCTION_13_1();
      v33 = v36(v35);
      v34 = 0;
      goto LABEL_17;
    }

    v29 = v22;
    v30 = sub_232E4D1D0();

    if (v30)
    {
      goto LABEL_16;
    }

    ++v21;
    v31 = OUTLINED_FUNCTION_17_1();
    v32(v31);
    v22 = v29;
    if (v40 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void static URL.isValid(supportFlowURL:)()
{
  OUTLINED_FUNCTION_14();
  v65 = sub_232E4C7E0();
  v1 = OUTLINED_FUNCTION_0(v65);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B60, &qword_232E4E418);
  OUTLINED_FUNCTION_19(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v13 = sub_232E4C880();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  sub_232E4C820();
  if (__swift_getEnumTagSinglePayload(v0, 1, v13) == 1)
  {
    sub_232E41308(v0, &qword_27DDD9B60, &qword_232E4E418);
    goto LABEL_45;
  }

  (*(v16 + 32))(v21, v0, v13);
  v22 = sub_232E4C850();
  if (!v23)
  {
LABEL_9:
    (*(v16 + 8))(v21, v13);
    goto LABEL_45;
  }

  if (v22 == 0x6674726F70707573 && v23 == 0xEB00000000776F6CLL)
  {
  }

  else
  {
    v25 = sub_232E4D1D0();

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v26 = sub_232E4C800();
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    v66 = MEMORY[0x277D84F90];
    sub_232E414E4(0, v29, 0);
    v30 = v66;
    v31 = v3 + 16;
    v32 = *(v3 + 16);
    v33 = v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v63 = *(v31 + 56);
    v64 = v32;
    v34 = (v31 - 8);
    do
    {
      v64(v8, v33, v65);
      v35 = sub_232E4C7C0();
      v37 = v36;
      (*v34)(v8, v65);
      v39 = *(v66 + 16);
      v38 = *(v66 + 24);
      if (v39 >= v38 >> 1)
      {
        OUTLINED_FUNCTION_18_1(v38);
      }

      *(v66 + 16) = v39 + 1;
      v40 = v66 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v33 += v63;
      --v29;
    }

    while (v29);

    v27 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v41 = sub_232E40EFC(v30);
  sub_232E414E4(0, 4, 0);
  v42 = 0;
  v43 = v27;
  do
  {
    v44 = 0xE400000000000000;
    v45 = 1701869940;
    switch(byte_284831A00[v42 + 32])
    {
      case 1:
        v44 = 0xE700000000000000;
        v45 = 0x6E6F6973736573;
        break;
      case 2:
        v45 = 1885697139;
        break;
      case 3:
        v44 = 0xE800000000000000;
        v45 = 0x7265727265666572;
        break;
      default:
        break;
    }

    v67 = v43;
    v47 = *(v43 + 16);
    v46 = *(v43 + 24);
    if (v47 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_18_1(v46);
      v43 = v67;
    }

    ++v42;
    *(v43 + 16) = v47 + 1;
    v48 = v43 + 16 * v47;
    *(v48 + 32) = v45;
    *(v48 + 40) = v44;
  }

  while (v42 != 4);
  v49 = sub_232E40EFC(v43);
  v50 = sub_232E40FC8(v49, v41);

  if (v50)
  {
    v51 = 0;
    while (byte_284831A00[v51 + 32])
    {
LABEL_32:
      if (++v51 == 4)
      {
        goto LABEL_44;
      }
    }

    if (*(v41 + 16))
    {
      v52 = *(v41 + 40);
      sub_232E4D210();
      sub_232E4CE30();
      v53 = sub_232E4D230();
      v54 = ~(-1 << *(v41 + 32));
      while (1)
      {
        v55 = v53 & v54;
        if (((*(v41 + 56 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
        {
          break;
        }

        v56 = (*(v41 + 48) + 16 * v55);
        if (*v56 != 1701869940 || v56[1] != 0xE400000000000000)
        {
          v58 = sub_232E4D1D0();
          v53 = v55 + 1;
          if ((v58 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

LABEL_44:

    v61 = OUTLINED_FUNCTION_16_2();
    v62(v61);
  }

  else
  {
    v59 = OUTLINED_FUNCTION_16_2();
    v60(v59);
  }

LABEL_45:
  OUTLINED_FUNCTION_8();
}

uint64_t sub_232E40EFC(uint64_t a1)
{
  result = MEMORY[0x238397430](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_232E41BB4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_232E40FC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_232E4D210();

        sub_232E4CE30();
        v18 = sub_232E4D230();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_232E4D1D0();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

SupportFlowCore::SupportFlowURLParameter_optional __swiftcall SupportFlowURLParameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_232E4D0D0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_232E411E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_232E4479C();
}

uint64_t sub_232E41214@<X0>(uint64_t *a1@<X8>)
{
  result = SupportFlowURLParameter.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

size_t sub_232E4127C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_232E49FB8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_232E412C8(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_232E49FB8(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_232E41308(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_232E41380(void *__src, uint64_t a2, void *__dst)
{
  if (__dst != __src || __src + 16 * a2 <= __dst)
  {
    return OUTLINED_FUNCTION_1_4(__src, a2, __dst);
  }

  return __src;
}

uint64_t sub_232E41398(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_232E41460(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_232E4E400;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

size_t sub_232E414C4(size_t a1, int64_t a2, char a3)
{
  result = sub_232E416C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_232E414E4(char *a1, int64_t a2, char a3)
{
  result = sub_232E41888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_232E41508()
{
  result = qword_27DDD9B70;
  if (!qword_27DDD9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B70);
  }

  return result;
}

unint64_t sub_232E41560()
{
  result = qword_27DDD9B78;
  if (!qword_27DDD9B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD9B80, &qword_232E4E4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD9B78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SupportFlowURLParameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

char *sub_232E416A0(char *a1, int64_t a2, char a3)
{
  result = sub_232E41990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_232E416C0(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BB0, &unk_232E4E560);
  v10 = *(type metadata accessor for SupportFlowSession() - 8);
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
  v15 = *(type metadata accessor for SupportFlowSession() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_232E41398(a4 + v16, v8, v13 + v16, type metadata accessor for SupportFlowSession);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_232E41888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA8, &unk_232E4EBD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_232E41990(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B88, &qword_232E4E538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_232E41A84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B90, &unk_232E4E540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9B98, &qword_232E4EBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_232E41BB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_232E4D210();
  sub_232E4CE30();
  v9 = sub_232E4D230();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_232E4D1D0() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_232E41F5C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_232E41D00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA0, &unk_232E4E550);
  result = sub_232E4D030();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_232E41460(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_232E4D210();
    sub_232E4CE30();
    result = sub_232E4D230();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_232E41F5C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_232E41D00(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_232E4221C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_232E4D210();
      sub_232E4CE30();
      result = sub_232E4D230();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_232E4D1D0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_232E420C4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_232E4D1F0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_232E420C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA0, &unk_232E4E550);
  v2 = *v0;
  v3 = sub_232E4D020();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_232E4221C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD9BA0, &unk_232E4E550);
  result = sub_232E4D030();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_232E4D210();

        sub_232E4CE30();
        result = sub_232E4D230();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  v4 = *v1;
  *(v4 + 16) = v0 + 1;
  return v4 + v2 + v0 * *(v3 - 168);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return sub_232E4C820();
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v4 = *(v3 - 88);
  v5 = v0 + *(v4 + 72) * v2;
  v6 = *(v4 + 16);
  return v1;
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  result = *(v0 - 208);
  v2 = *(*(v0 - 200) + 8);
  v3 = *(v0 - 192);
  return result;
}