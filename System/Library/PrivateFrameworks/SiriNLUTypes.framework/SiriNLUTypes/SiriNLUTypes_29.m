uint64_t sub_1C8A61D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF5C8, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A61DC8(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF3E0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A61E38()
{
  sub_1C8776C08(&qword_1EC2BF3E0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_External_NluRouter_NLParseResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A6E290();
    }
  }
}

uint64_t Siri_Nlu_External_NluRouter_NLParseResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_39_7();
  if (!v1 || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8776C08(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_224_3(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
  {
    v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0) + 20);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C8A6212C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF5C0, type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A621AC(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B39B8, type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6221C()
{
  sub_1C8776C08(&qword_1EC2B39B8, type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A622B4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEF20);
  __swift_project_value_buffer(v0, qword_1EC2BEF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 4;
  *v5 = "metadata_domain_name";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_PommesResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8A644C8(v3, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1C8A6259C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF5B8, type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6261C(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF338, type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6268C()
{
  sub_1C8776C08(&qword_1EC2BF338, type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A62724()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEF38);
  __swift_project_value_buffer(v0, qword_1EC2BEF38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A62950()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0) + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  sub_1C8776C08(&qword_1EC2BF200, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A62A04()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  sub_1C8776C08(&qword_1EC2BF1F8, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_TypedValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF198, &qword_1C8C13030);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_17_4();
  v30 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v12);
  v13 = OUTLINED_FUNCTION_21(v30);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v16 = OUTLINED_FUNCTION_315();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_278_1();
  v22 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v26 = OUTLINED_FUNCTION_65_0();
  v27 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v26);
  OUTLINED_FUNCTION_154_3(v27);
  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_76(v1, 1, v22);
  if (v28)
  {
    sub_1C8778ED8(v1, &qword_1EC2BF190, &qword_1C8C13028);
  }

  else
  {
    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2BF200, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue);
    OUTLINED_FUNCTION_159_3();
    v0 = v2;
    OUTLINED_FUNCTION_260_0();
    sub_1C8A5FEEC();
    if (v2)
    {
      goto LABEL_10;
    }
  }

  v29 = *(v4 + 24);
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v3, 1, v30);
  if (v28)
  {
    sub_1C8778ED8(v3, &qword_1EC2BF198, &qword_1C8C13030);
LABEL_9:
    OUTLINED_FUNCTION_183_1();
    sub_1C8BD49DC();
    goto LABEL_10;
  }

  sub_1C8A5FE44();
  sub_1C8776C08(&qword_1EC2BF1F8, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_203_2();
  sub_1C8A5FEEC();
  if (!v0)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_TypedValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v44 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  v1 = OUTLINED_FUNCTION_21(v44);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_33();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF198, &qword_1C8C13030);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF208, &qword_1C8C130A0);
  OUTLINED_FUNCTION_21(v43);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v45 = v11;
  v12 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF190, &qword_1C8C13028);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_278_1();
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF210, &qword_1C8C130A8) - 8);
  v21 = *(*v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_17_4();
  v42 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v23);
  v24 = *(v42 + 20);
  v25 = v20[14];
  OUTLINED_FUNCTION_246_2();
  OUTLINED_FUNCTION_246_2();
  OUTLINED_FUNCTION_76(v0, 1, v12);
  if (v26)
  {
    OUTLINED_FUNCTION_76(v0 + v25, 1, v12);
    if (v26)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF190, &qword_1C8C13028);
      goto LABEL_11;
    }

LABEL_9:
    v27 = &qword_1EC2BF210;
    v28 = &qword_1C8C130A8;
    v29 = v0;
LABEL_20:
    sub_1C8778ED8(v29, v27, v28);
    goto LABEL_21;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v0 + v25, 1, v12);
  if (v26)
  {
    sub_1C8A5FEEC();
    goto LABEL_9;
  }

  sub_1C8A5FE44();
  static Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.== infix(_:_:)();
  v31 = v30;
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_5_0();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2BF190, &qword_1C8C13028);
  if ((v31 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v32 = *(v42 + 24);
  v33 = *(v43 + 48);
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_180_0();
  v34 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v34, v35, v44);
  if (v26)
  {
    OUTLINED_FUNCTION_76(v45 + v33, 1, v44);
    if (v26)
    {
      sub_1C8778ED8(v45, &qword_1EC2BF198, &qword_1C8C13030);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_30();
      sub_1C8776C08(v40, v41);
      OUTLINED_FUNCTION_315();
      v37 = sub_1C8BD517C();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v45 + v33, 1, v44);
  if (v36)
  {
    sub_1C8A5FEEC();
LABEL_19:
    v27 = &qword_1EC2BF208;
    v28 = &qword_1C8C130A0;
    v29 = v45;
    goto LABEL_20;
  }

  sub_1C8A5FE44();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.== infix(_:_:)();
  v39 = v38;
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FEEC();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v45, &qword_1EC2BF198, &qword_1C8C13030);
  if (v39)
  {
    goto LABEL_24;
  }

LABEL_21:
  v37 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v37);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A6329C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF5B0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6331C(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF2D0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6338C()
{
  sub_1C8776C08(&qword_1EC2BF2D0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6340C()
{
  result = MEMORY[0x1CCA7E2D0](0x6974696D6972502ELL, 0xEF65756C61566576);
  qword_1EC2BEF50 = 0xD000000000000027;
  *algn_1EC2BEF58 = 0x80000001C8C28050;
  return result;
}

uint64_t sub_1C8A634A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEF60);
  __swift_project_value_buffer(v0, qword_1EC2BEF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "BOOL_value";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 16;
  *v10 = "person";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 17;
  *v13 = "app";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 17:
        OUTLINED_FUNCTION_8();
        sub_1C8A63820();
        break;
      case 16:
        OUTLINED_FUNCTION_8();
        sub_1C8A6376C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A67D6C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A6376C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  sub_1C8776C08(&qword_1EC2BF228, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A63820()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0) + 28);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  sub_1C8776C08(&qword_1EC2BF220, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A8, &qword_1C8C13040);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_75(v7, v27);
  v29 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  v8 = OUTLINED_FUNCTION_21(v29);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A0, &qword_1C8C13038);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_212();
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  v16 = OUTLINED_FUNCTION_21(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v19 = OUTLINED_FUNCTION_65_0();
  v20 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v19);
  OUTLINED_FUNCTION_154_3(v20);
  OUTLINED_FUNCTION_195_3(v21);
  if (v22 || (sub_1C8BD4D3C(), !v0))
  {
    v23 = *(v2 + 24);
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v1, 1, v15);
    if (v22)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF1A0, &qword_1C8C13038);
    }

    else
    {
      sub_1C8A5FE44();
      sub_1C8776C08(&qword_1EC2BF228, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person);
      sub_1C8BD4E2C();
      sub_1C8A5FEEC();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v24 = *(v2 + 28);
    sub_1C8778810();
    v25 = OUTLINED_FUNCTION_323_0();
    OUTLINED_FUNCTION_76(v25, v26, v29);
    if (v22)
    {
      sub_1C8778ED8(v28, &qword_1EC2BF1A8, &qword_1C8C13040);
LABEL_11:
      OUTLINED_FUNCTION_183_1();
      sub_1C8BD49DC();
      goto LABEL_12;
    }

    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2BF220, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_253();
    sub_1C8A5FEEC();
    if (!v0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v66 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  v6 = OUTLINED_FUNCTION_21(v66);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A8, &qword_1C8C13040);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_75(v16, v63);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF230, &qword_1C8C130B0);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_81();
  v67 = v21;
  v22 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1A0, &qword_1C8C13038);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF238, &qword_1C8C130B8);
  OUTLINED_FUNCTION_21(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v34 = OUTLINED_FUNCTION_17_4();
  v35 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v34);
  OUTLINED_FUNCTION_154_3(v35);
  v37 = *(v5 + v36);
  v38 = *(v3 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_39;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    goto LABEL_39;
  }

  v64 = v11;
  v39 = *(v1 + 24);
  v40 = *(v30 + 48);
  OUTLINED_FUNCTION_246_2();
  OUTLINED_FUNCTION_246_2();
  OUTLINED_FUNCTION_73(v0);
  if (v41)
  {
    OUTLINED_FUNCTION_73(v0 + v40);
    if (v41)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1A0, &qword_1C8C13038);
      goto LABEL_16;
    }

LABEL_14:
    v42 = &qword_1EC2BF238;
    v43 = &qword_1C8C130B8;
    v44 = v0;
LABEL_38:
    sub_1C8778ED8(v44, v42, v43);
LABEL_39:
    v53 = 0;
    goto LABEL_40;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v40);
  if (v41)
  {
    sub_1C8A5FEEC();
    goto LABEL_14;
  }

  sub_1C8A5FE44();
  static Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.== infix(_:_:)();
  v46 = v45;
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_12();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2BF1A0, &qword_1C8C13038);
  if ((v46 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  v47 = *(v1 + 28);
  v48 = *(v17 + 48);
  sub_1C8778810();
  sub_1C8778810();
  v49 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v49, v50, v66);
  if (v41)
  {
    OUTLINED_FUNCTION_65(v67 + v48);
    if (v41)
    {
      sub_1C8778ED8(v67, &qword_1EC2BF1A8, &qword_1C8C13040);
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v67 + v48);
  if (v54)
  {
    OUTLINED_FUNCTION_248_4();
LABEL_25:
    v42 = &qword_1EC2BF230;
    v43 = &qword_1C8C130B0;
LABEL_37:
    v44 = v67;
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_24_15();
  sub_1C8A5FE44();
  v55 = *(v66 + 20);
  v56 = *(v64 + v55 + 8);
  if (!*(v65 + v55 + 8))
  {
    if (!v56)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (!v56 || ((OUTLINED_FUNCTION_35((v65 + v55)), v41) ? (v59 = v57 == v58) : (v59 = 0), !v59 && (sub_1C8BD529C() & 1) == 0))
  {
LABEL_36:
    sub_1C8A5FEEC();
    sub_1C8A5FEEC();
    v42 = &qword_1EC2BF1A8;
    v43 = &qword_1C8C13040;
    goto LABEL_37;
  }

LABEL_33:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v60, v61);
  OUTLINED_FUNCTION_223();
  v62 = sub_1C8BD517C();
  sub_1C8A5FEEC();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v67, &qword_1EC2BF1A8, &qword_1C8C13040);
  if ((v62 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_21:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v51, v52);
  OUTLINED_FUNCTION_97();
  v53 = sub_1C8BD517C();
LABEL_40:
  OUTLINED_FUNCTION_157(v53);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A64218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF5A8, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A64298(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF200, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A64308()
{
  sub_1C8776C08(&qword_1EC2BF200, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A64388()
{
  if (qword_1EC2B5DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BEF50;
  v2 = *algn_1EC2BEF58;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](1886404910, 0xE400000000000000);

  qword_1EC2BEF78 = v1;
  unk_1EC2BEF80 = v2;
  return result;
}

uint64_t sub_1C8A64568()
{
  OUTLINED_FUNCTION_9_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_16_2(*(v2 + 20));
  if (!v4)
  {
    return OUTLINED_FUNCTION_15();
  }

  v5 = *v3;
  OUTLINED_FUNCTION_19_14();
  result = sub_1C8BD4DDC();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t sub_1C8A64670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF5A0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A646F0(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF220, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A64760()
{
  sub_1C8776C08(&qword_1EC2BF220, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A647E0()
{
  if (qword_1EC2B5DE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BEF50;
  v2 = *algn_1EC2BEF58;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F737265502ELL, 0xE700000000000000);

  qword_1EC2BEFA0 = v1;
  *algn_1EC2BEFA8 = v2;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0) + 20);
  v3 = *(v2 + 8);
  if (v3 >> 60 == 15)
  {
    return OUTLINED_FUNCTION_15();
  }

  sub_1C87A8FBC(*v2, *(v2 + 8));
  OUTLINED_FUNCTION_19_14();
  sub_1C8BD4D6C();
  v4 = OUTLINED_FUNCTION_166_5();
  result = sub_1C87A9A24(v4, v3);
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

void static Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v2) + 20);
  v5 = *(v1 + v3);
  v4 = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  v8 = *v6;
  v7 = v6[1];
  if (v4 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v23 = OUTLINED_FUNCTION_184();
      sub_1C87A8FA8(v23, v24);
      v25 = OUTLINED_FUNCTION_258();
      sub_1C87A8FA8(v25, v26);
      v27 = OUTLINED_FUNCTION_184();
      v28 = MEMORY[0x1CCA7D0F0](v27);
      v29 = OUTLINED_FUNCTION_258();
      sub_1C87A9A24(v29, v30);
      v31 = OUTLINED_FUNCTION_184();
      sub_1C87A9A24(v31, v32);
      if ((v28 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_5:
    v15 = OUTLINED_FUNCTION_184();
    sub_1C87A8FA8(v15, v16);
    v17 = OUTLINED_FUNCTION_258();
    sub_1C87A8FA8(v17, v18);
    v19 = OUTLINED_FUNCTION_184();
    sub_1C87A9A24(v19, v20);
    v21 = OUTLINED_FUNCTION_258();
    sub_1C87A9A24(v21, v22);
    goto LABEL_9;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v9 = OUTLINED_FUNCTION_184();
  sub_1C87A8FA8(v9, v10);
  v11 = OUTLINED_FUNCTION_258();
  sub_1C87A8FA8(v11, v12);
  v13 = OUTLINED_FUNCTION_184();
  sub_1C87A9A24(v13, v14);
LABEL_8:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v33, v34);
  OUTLINED_FUNCTION_159();
LABEL_9:
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A64B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF598, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A64BE0(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF228, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A64C50()
{
  sub_1C8776C08(&qword_1EC2BF228, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A64CD0()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C252E0);
  qword_1EC2BEFC8 = 0xD000000000000027;
  unk_1EC2BEFD0 = 0x80000001C8C28050;
  return result;
}

uint64_t sub_1C8A64D64()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEFD8);
  __swift_project_value_buffer(v0, qword_1EC2BEFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A662B8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A64FC8();
    }
  }

  return result;
}

uint64_t sub_1C8A64FC8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0) + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  sub_1C8776C08(&qword_1EC2BF258, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B0, &qword_1C8C13048);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_210();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v7);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v12 = OUTLINED_FUNCTION_66();
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v12);
  v14 = *(v13 + 20);
  sub_1C8778810();
  v15 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_76(v15, v16, v8);
  if (v17)
  {
    sub_1C8778ED8(v2, &qword_1EC2BF1B0, &qword_1C8C13048);
  }

  else
  {
    OUTLINED_FUNCTION_129_4();
    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2BF258, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier);
    OUTLINED_FUNCTION_224_3();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_203_2();
    sub_1C8A5FEEC();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  v18 = (v0 + *(v13 + 24));
  if (!v18[1] || (v19 = *v18, sub_1C8BD4DDC(), !v1))
  {
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B0, &qword_1C8C13048);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_212();
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF260, &qword_1C8C130C0) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_74();
  v28 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v12);
  v13 = *(v28 + 20);
  v14 = v9[14];
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_5_6();
  if (!v15)
  {
    OUTLINED_FUNCTION_315();
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v0 + v14);
    if (!v15)
    {
      OUTLINED_FUNCTION_129_4();
      sub_1C8A5FE44();
      static Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.== infix(_:_:)();
      v18 = v17;
      OUTLINED_FUNCTION_220();
      sub_1C8A5FEEC();
      sub_1C8A5FEEC();
      sub_1C8778ED8(v0, &qword_1EC2BF1B0, &qword_1C8C13048);
      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_248_4();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BF260, &qword_1C8C130C0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v0 + v14);
  if (!v15)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v0, &qword_1EC2BF1B0, &qword_1C8C13048);
LABEL_13:
  v19 = *(v28 + 24);
  OUTLINED_FUNCTION_1();
  if (v22)
  {
    if (v20)
    {
      OUTLINED_FUNCTION_35(v21);
      v25 = v15 && v23 == v24;
      if (v25 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v20)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_30();
    sub_1C8776C08(v26, v27);
    v16 = OUTLINED_FUNCTION_159();
    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v16);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A65548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF590, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A655C8(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF1F8, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A65638()
{
  sub_1C8776C08(&qword_1EC2BF1F8, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A656B8()
{
  if (qword_1EC2B5E18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BEFC8;
  v2 = unk_1EC2BEFD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x656449657079542ELL, 0xEF7265696669746ELL);

  qword_1EC2BEFF0 = v1;
  *algn_1EC2BEFF8 = v2;
  return result;
}

uint64_t sub_1C8A65788()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF000);
  __swift_project_value_buffer(v0, qword_1EC2BF000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v5 = "custom";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A65960();
    }
  }

  return result;
}

uint64_t sub_1C8A65960()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0) + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  sub_1C8776C08(&qword_1EC2BF270, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1B8, &unk_1C8C13050);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  OUTLINED_FUNCTION_82(v14);
  OUTLINED_FUNCTION_62_10();
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BF1B8, &unk_1C8C13050);
LABEL_5:
    OUTLINED_FUNCTION_260_0();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_128_5();
  sub_1C8A5FE44();
  sub_1C8776C08(&qword_1EC2BF270, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_188_3();
  OUTLINED_FUNCTION_166_5();
  sub_1C8A5FEEC();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF278, &qword_1C8C130C8) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_74();
  v14 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v13) + 20);
  v15 = v10[14];
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_73(v0 + v15);
    if (v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1B8, &unk_1C8C13050);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_30();
      sub_1C8776C08(v19, v20);
      v17 = OUTLINED_FUNCTION_159();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v15);
  if (v16)
  {
    OUTLINED_FUNCTION_214_3();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BF278, &qword_1C8C130C8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_128_5();
  sub_1C8A5FE44();
  OUTLINED_FUNCTION_100();
  v18 = static Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.== infix(_:_:)();
  OUTLINED_FUNCTION_220();
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_258();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2BF1B8, &unk_1C8C13050);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v17);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A65DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF588, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A65E78(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF258, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A65EE8()
{
  sub_1C8776C08(&qword_1EC2BF258, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A65F68()
{
  if (qword_1EC2B5E28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BEFF0;
  v2 = *algn_1EC2BEFF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6D6F747375432ELL, 0xE700000000000000);

  qword_1EC2BF018 = v1;
  unk_1EC2BF020 = v2;
  return result;
}

uint64_t sub_1C8A6602C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF028);
  __swift_project_value_buffer(v0, qword_1EC2BF028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A662B8();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8A644C8(v3, v4, v5, v6, v7, v8);
    }
  }

  return result;
}

uint64_t sub_1C8A662B8()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *(v0(0) + 24);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C1C();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  OUTLINED_FUNCTION_16_2(*(v1 + 20));
  if (!v3 || (OUTLINED_FUNCTION_230_2(v2), OUTLINED_FUNCTION_19_14(), result = sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_16_2(*(v1 + 24));
    if (!v6)
    {
      return OUTLINED_FUNCTION_15();
    }

    v7 = *v5;
    OUTLINED_FUNCTION_19_14();
    result = sub_1C8BD4DDC();
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v0);
  v2 = *(v1 + 20);
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(v1 + 24);
  OUTLINED_FUNCTION_1();
  if (v12)
  {
    if (v10)
    {
      OUTLINED_FUNCTION_35(v11);
      v15 = v8 && v13 == v14;
      if (v15 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v10)
  {
LABEL_17:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_30();
    sub_1C8776C08(v16, v17);
    return OUTLINED_FUNCTION_159() & 1;
  }

  return 0;
}

uint64_t sub_1C8A664E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF580, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A66564(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF270, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A665D4()
{
  sub_1C8776C08(&qword_1EC2BF270, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6666C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B38F0);
  __swift_project_value_buffer(v0, qword_1EC2B38F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "typed_value";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 5)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A6693C();
    }

    else if (result == 3)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A668C8();
    }
  }

  return result;
}

uint64_t sub_1C8A668C8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0) + 20);
  sub_1C8A6F4F0();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C8A6693C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0);
  sub_1C8776C08(&qword_1EC2BF290, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_RetrievedContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0);
  OUTLINED_FUNCTION_154_3(v14);
  if (*(v2 + v15) == 5 || (sub_1C8A6F4F0(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), (v0 = v1) == 0))
  {
    v16 = *(v4 + 24);
    OUTLINED_FUNCTION_244_2();
    OUTLINED_FUNCTION_62_10();
    if (v17)
    {
      sub_1C8778ED8(v3, &qword_1EC2B5F88, &qword_1C8BE6C38);
LABEL_7:
      OUTLINED_FUNCTION_15();
      goto LABEL_8;
    }

    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2BF290, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_213_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_166_5();
    sub_1C8A5FEEC();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_RetrievedContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F88, &qword_1C8BE6C38);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F90, &qword_1C8BE6C40);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_74();
  v17 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v16);
  v18 = *(v17 + 20);
  v19 = *(v1 + v18);
  v20 = *(v0 + v18);
  if (v19 == 5)
  {
    if (v20 != 5)
    {
      goto LABEL_15;
    }
  }

  else if (v20 == 5 || qword_1C8C15B40[v19] != qword_1C8C15B40[v20])
  {
    goto LABEL_15;
  }

  v21 = *(v17 + 24);
  v22 = *(v12 + 48);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_5_6();
  if (v23)
  {
    OUTLINED_FUNCTION_73(v2 + v22);
    if (v23)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5F88, &qword_1C8BE6C38);
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_268();
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v2 + v22);
    if (!v23)
    {
      sub_1C8A5FE44();
      OUTLINED_FUNCTION_100();
      static Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.== infix(_:_:)();
      v26 = v25;
      OUTLINED_FUNCTION_220();
      sub_1C8A5FEEC();
      OUTLINED_FUNCTION_258();
      sub_1C8A5FEEC();
      sub_1C8778ED8(v2, &qword_1EC2B5F88, &qword_1C8BE6C38);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_30();
      sub_1C8776C08(v27, v28);
      v24 = OUTLINED_FUNCTION_159();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_214_3();
  }

  sub_1C8778ED8(v2, &qword_1EC2B5F90, &qword_1C8BE6C40);
LABEL_15:
  v24 = 0;
LABEL_16:
  OUTLINED_FUNCTION_157(v24);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A66E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF578, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A66F14(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B38E0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A66F84()
{
  sub_1C8776C08(&qword_1EC2B38E0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A67004()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3980);
  __swift_project_value_buffer(v0, qword_1EC2B3980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CONTEXT_TYPE_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CONTEXT_TYPE_APP_IN_FOCUS_BUNDLE_ID";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 28;
  *v12 = "CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_IMAGE";
  *(v12 + 1) = 40;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 29;
  *v14 = "CONTEXT_TYPE_HAS_FOCUSED_ON_SCREEN_DOCUMENT";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 50;
  *v16 = "CONTEXT_TYPE_OTHER";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A672B0()
{
  result = MEMORY[0x1CCA7E2D0](0x615664657079542ELL, 0xEB0000000065756CLL);
  qword_1EC2BF040 = 0xD00000000000002DLL;
  *algn_1EC2BF048 = 0x80000001C8C28080;
  return result;
}

uint64_t sub_1C8A673B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A67428()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0) + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  sub_1C8776C08(&qword_1EC2BF2A0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F78, &unk_1C8C13060);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0);
  OUTLINED_FUNCTION_82(v14);
  OUTLINED_FUNCTION_62_10();
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2B5F78, &unk_1C8C13060);
LABEL_5:
    OUTLINED_FUNCTION_260_0();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_132_1();
  sub_1C8A5FE44();
  sub_1C8776C08(&qword_1EC2BF2A0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_188_3();
  OUTLINED_FUNCTION_166_5();
  sub_1C8A5FEEC();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v1);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v6 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F80, &qword_1C8BE6C30) - 8);
  v11 = *(*v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_74();
  v14 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v13) + 20);
  v15 = v10[14];
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_73(v0 + v15);
    if (v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F78, &unk_1C8C13060);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_30();
      sub_1C8776C08(v20, v21);
      v17 = OUTLINED_FUNCTION_159();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v0 + v15);
  if (v16)
  {
    OUTLINED_FUNCTION_214_3();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5F80, &qword_1C8BE6C30);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_132_1();
  sub_1C8A5FE44();
  OUTLINED_FUNCTION_100();
  static Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.== infix(_:_:)();
  v19 = v18;
  OUTLINED_FUNCTION_220();
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_258();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2B5F78, &unk_1C8C13060);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v17);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A678C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF570, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A67940(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF290, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A679B0()
{
  sub_1C8776C08(&qword_1EC2BF290, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A67A30()
{
  if (qword_1EC2B5E48 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BF040;
  v2 = *algn_1EC2BF048;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6974696D6972502ELL, 0xEF65756C61566576);

  qword_1EC2BF068 = v1;
  unk_1EC2BF070 = v2;
  return result;
}

uint64_t sub_1C8A67B00()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF078);
  __swift_project_value_buffer(v0, qword_1EC2BF078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "BOOL_value";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 17;
  *v10 = "app";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 17)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A67DC0();
    }

    else if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A67D6C();
    }
  }

  return result;
}

uint64_t sub_1C8A67D6C()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *(v0(0) + 20);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4B2C();
}

uint64_t sub_1C8A67DC0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(0);
  sub_1C8776C08(&qword_1EC2BF2B0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_154_3(v14);
  if (*(v2 + v15) == 2 || (OUTLINED_FUNCTION_48_0(), sub_1C8BD4D3C(), (v0 = v1) == 0))
  {
    v16 = *(v4 + 24);
    OUTLINED_FUNCTION_244_2();
    OUTLINED_FUNCTION_62_10();
    if (v17)
    {
      sub_1C8778ED8(v3, &qword_1EC2B5F68, &qword_1C8BE6C18);
LABEL_7:
      OUTLINED_FUNCTION_15();
      goto LABEL_8;
    }

    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2BF2B0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App);
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_213_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_166_5();
    sub_1C8A5FEEC();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F68, &qword_1C8BE6C18);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_211();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F70, &unk_1C8BE6C20);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_74();
  v21 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v20);
  v22 = *(v21 + 20);
  v23 = *(v1 + v22);
  v24 = *(v0 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      goto LABEL_28;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    goto LABEL_28;
  }

  v25 = *(v21 + 24);
  v26 = *(v16 + 48);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v2);
  if (v30)
  {
    OUTLINED_FUNCTION_19(v2 + v26);
    if (v30)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5F68, &qword_1C8BE6C18);
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v2 + v26);
  if (v30)
  {
    OUTLINED_FUNCTION_214_3();
LABEL_15:
    v31 = &qword_1EC2B5F70;
    v32 = &unk_1C8BE6C20;
LABEL_27:
    sub_1C8778ED8(v2, v31, v32);
LABEL_28:
    v29 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_30_11();
  sub_1C8A5FE44();
  v33 = *(v5 + 20);
  v34 = *(v11 + v33 + 8);
  if (!*(v3 + v33 + 8))
  {
    if (!v34)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (!v34 || ((OUTLINED_FUNCTION_35((v3 + v33)), v30) ? (v37 = v35 == v36) : (v37 = 0), !v37 && (sub_1C8BD529C() & 1) == 0))
  {
LABEL_26:
    sub_1C8A5FEEC();
    sub_1C8A5FEEC();
    v31 = &qword_1EC2B5F68;
    v32 = &qword_1C8BE6C18;
    goto LABEL_27;
  }

LABEL_23:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v38, v39);
  OUTLINED_FUNCTION_258();
  v40 = sub_1C8BD517C();
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_230();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v2, &qword_1EC2B5F68, &qword_1C8BE6C18);
  if ((v40 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v27, v28);
  OUTLINED_FUNCTION_196_0();
  v29 = sub_1C8BD517C();
LABEL_29:
  OUTLINED_FUNCTION_157(v29);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A683A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF568, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A68420(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF2A0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A68490()
{
  sub_1C8776C08(&qword_1EC2BF2A0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A68510()
{
  if (qword_1EC2B5E58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BF068;
  v2 = unk_1EC2BF070;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](1886404910, 0xE400000000000000);

  qword_1EC2BF090 = v1;
  *algn_1EC2BF098 = v2;
  return result;
}

uint64_t sub_1C8A68650()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_578();
      sub_1C8A644C8(v5, v6, v7, v8, v2, v0);
    }
  }

  return result;
}

uint64_t sub_1C8A686F4()
{
  v0 = OUTLINED_FUNCTION_84();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_35(v4);
      v8 = v8 && v6 == v7;
      if (v8 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v3)
  {
LABEL_8:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_30();
    sub_1C8776C08(v9, v10);
    return OUTLINED_FUNCTION_159() & 1;
  }

  return 0;
}

uint64_t sub_1C8A68810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF560, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A68890(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF2B0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A68900()
{
  sub_1C8776C08(&qword_1EC2BF2B0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A68998()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF0B8);
  __swift_project_value_buffer(v0, qword_1EC2BF0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typedValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchMetadata";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A6E290();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A68C38();
    }
  }
}

uint64_t sub_1C8A68C38()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  sub_1C8776C08(&qword_1EC2BF2D0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_210();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v14 = OUTLINED_FUNCTION_66();
  v21 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v14);
  v22 = v0;
  v15 = *(v21 + 24);
  sub_1C8778810();
  v16 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_76(v16, v17, v10);
  if (v18)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5F58, &qword_1C8C13070);
  }

  else
  {
    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2BF2D0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue);
    OUTLINED_FUNCTION_224_3();
    OUTLINED_FUNCTION_532();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_203_2();
    sub_1C8A5FEEC();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  v19 = *v0;
  if (!*(*v22 + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0), sub_1C8776C08(&qword_1EC2BF2C8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_532(), sub_1C8BD4E0C(), !v1))
  {
    v20 = v22 + *(v21 + 20);
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_SpanMatchedEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F58, &qword_1C8C13070);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_212();
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F60, &qword_1C8BE6C10) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_103();
  v28 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0);
  v16 = *(v28 + 24);
  v17 = v13[14];
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_76(v0, 1, v5);
  if (v18)
  {
    OUTLINED_FUNCTION_76(v0 + v17, 1, v5);
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F58, &qword_1C8C13070);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5F60, &qword_1C8BE6C10);
LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v0 + v17, 1, v5);
  if (v18)
  {
    OUTLINED_FUNCTION_248_4();
    goto LABEL_9;
  }

  sub_1C8A5FE44();
  static Siri_Nlu_External_NluRouter_TypedValue.== infix(_:_:)();
  v20 = v19;
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_516();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2B5F58, &qword_1C8C13070);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v21 = *v4;
  v22 = *v2;
  sub_1C87D72DC();
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = *(v28 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v25, v26);
  v27 = sub_1C8BD517C();
LABEL_14:
  OUTLINED_FUNCTION_157(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A69244(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF558, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A692C4(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF328, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A69334()
{
  sub_1C8776C08(&qword_1EC2BF328, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A693B4()
{
  result = MEMORY[0x1CCA7E2D0](0x4D797469746E452ELL, 0xEC00000068637461);
  qword_1EC2BF0D0 = 0xD00000000000002ELL;
  *algn_1EC2BF0D8 = 0x80000001C8C280B0;
  return result;
}

uint64_t sub_1C8A69448()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF0E0);
  __swift_project_value_buffer(v0, qword_1EC2BF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sourceItemIdentifier";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "entityName";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "startIndex";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "endIndex";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "matchScore";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "matchProperties";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "matcherType";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "originAppBundleId";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "userUtterance";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "identifier";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A644C8(v3, v4, v5, v6, v7, v8);
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A662B8();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A69964();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8A699C8();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C8A69A2C();
        break;
      case 8:
        OUTLINED_FUNCTION_8();
        sub_1C8A69A90();
        break;
      case 9:
        OUTLINED_FUNCTION_8();
        sub_1C8A69B44();
        break;
      case 10:
        OUTLINED_FUNCTION_8();
        sub_1C8A69BB8();
        break;
      case 11:
        OUTLINED_FUNCTION_8();
        sub_1C8A69C1C();
        break;
      case 12:
        OUTLINED_FUNCTION_8();
        sub_1C8A69C80();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A69A90()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0) + 40);
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  sub_1C8776C08(&qword_1EC2BF2E8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A69B44()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0) + 44);
  sub_1C8A6F544();
  return sub_1C8BD4B4C();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C0, &qword_1C8C13078);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v8);
  v10 = OUTLINED_FUNCTION_21(matched);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_66();
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v13);
  OUTLINED_FUNCTION_16_2(v14[5]);
  if (!v16 || (OUTLINED_FUNCTION_230_2(v15), OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_16_2(v14[6]);
    if (!v18 || (v19 = *v17, OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_468(v14[7]);
      if ((v21 & 1) != 0 || (v22 = *v20, OUTLINED_FUNCTION_48_0(), sub_1C8BD4D9C(), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_468(v14[8]);
        if ((v24 & 1) != 0 || (v25 = *v23, OUTLINED_FUNCTION_48_0(), sub_1C8BD4D9C(), (v0 = v1) == 0))
        {
          v26 = (v2 + v14[9]);
          if ((v26[1] & 1) != 0 || (v27 = *v26, v1 = v0, sub_1C8BD4D7C(), !v0))
          {
            v28 = v14[10];
            sub_1C8778810();
            v29 = OUTLINED_FUNCTION_323_0();
            OUTLINED_FUNCTION_76(v29, v30, matched);
            if (v31)
            {
              sub_1C8778ED8(v3, &qword_1EC2BF1C0, &qword_1C8C13078);
            }

            else
            {
              OUTLINED_FUNCTION_27_12();
              sub_1C8A5FE44();
              sub_1C8776C08(&qword_1EC2BF2E8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties);
              OUTLINED_FUNCTION_213_0();
              sub_1C8BD4E2C();
              OUTLINED_FUNCTION_203_2();
              sub_1C8A5FEEC();
              if (v0)
              {
                goto LABEL_24;
              }
            }

            if (*(v2 + v14[11]) == 3 || (sub_1C8A6F544(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), !v1))
            {
              OUTLINED_FUNCTION_16_2(v14[12]);
              if (!v33 || (v34 = *v32, OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), !v1))
              {
                OUTLINED_FUNCTION_16_2(v14[13]);
                if (!v36 || (v37 = *v35, OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), !v1))
                {
                  OUTLINED_FUNCTION_16_2(v14[14]);
                  if (!v39 || (v40 = *v38, OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), !v1))
                  {
                    OUTLINED_FUNCTION_15();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v3);
  v5 = OUTLINED_FUNCTION_21(matched);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C0, &qword_1C8C13078);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_212();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF2F0, &qword_1C8C130D0);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_103();
  v16 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  v17 = v16[5];
  OUTLINED_FUNCTION_1();
  if (v20)
  {
    if (!v18)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v19);
    v23 = v23 && v21 == v22;
    if (!v23 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v18)
  {
    goto LABEL_42;
  }

  v24 = v16[6];
  OUTLINED_FUNCTION_1();
  if (v27)
  {
    if (!v25)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v26);
    v30 = v23 && v28 == v29;
    if (!v30 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v25)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_143_5(v16[7]);
  if (v32)
  {
    if (!v31)
    {
      goto LABEL_42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    if (v33)
    {
      goto LABEL_42;
    }
  }

  OUTLINED_FUNCTION_143_5(v16[8]);
  if (v35)
  {
    if (!v34)
    {
      goto LABEL_42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    if (v36)
    {
      goto LABEL_42;
    }
  }

  v37 = v16[9];
  v38 = (v1 + v37);
  v39 = *(v1 + v37 + 4);
  v40 = (v0 + v37);
  v41 = *(v0 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_42;
    }
  }

  v42 = v16[10];
  v43 = *(v12 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v2, 1, matched);
  if (!v23)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v2 + v43, 1, matched);
    if (!v44)
    {
      sub_1C8A5FE44();
      static Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.== infix(_:_:)();
      v47 = v46;
      OUTLINED_FUNCTION_268();
      sub_1C8A5FEEC();
      OUTLINED_FUNCTION_516();
      sub_1C8A5FEEC();
      sub_1C8778ED8(v2, &qword_1EC2BF1C0, &qword_1C8C13078);
      if ((v47 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_45;
    }

    OUTLINED_FUNCTION_248_4();
LABEL_41:
    sub_1C8778ED8(v2, &qword_1EC2BF2F0, &qword_1C8C130D0);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_76(v2 + v43, 1, matched);
  if (!v23)
  {
    goto LABEL_41;
  }

  sub_1C8778ED8(v2, &qword_1EC2BF1C0, &qword_1C8C13078);
LABEL_45:
  v48 = v16[11];
  v49 = *(v1 + v48);
  v50 = *(v0 + v48);
  if (v49 == 3)
  {
    if (v50 != 3)
    {
      goto LABEL_42;
    }
  }

  else if (v49 != v50)
  {
    goto LABEL_42;
  }

  v51 = v16[12];
  OUTLINED_FUNCTION_1();
  if (v54)
  {
    if (!v52)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v53);
    v57 = v23 && v55 == v56;
    if (!v57 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v52)
  {
    goto LABEL_42;
  }

  v58 = v16[13];
  OUTLINED_FUNCTION_1();
  if (v61)
  {
    if (!v59)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v60);
    v64 = v23 && v62 == v63;
    if (!v64 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v59)
  {
    goto LABEL_42;
  }

  v65 = v16[14];
  OUTLINED_FUNCTION_1();
  if (v68)
  {
    if (!v66)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v67);
    v71 = v23 && v69 == v70;
    if (!v71 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_76:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_30();
    sub_1C8776C08(v72, v73);
    v45 = OUTLINED_FUNCTION_159();
    goto LABEL_43;
  }

  if (!v66)
  {
    goto LABEL_76;
  }

LABEL_42:
  v45 = 0;
LABEL_43:
  OUTLINED_FUNCTION_157(v45);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A6A434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF550, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6A4B4(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF2C8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6A524()
{
  sub_1C8776C08(&qword_1EC2BF2C8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6A5A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF0F8);
  __swift_project_value_buffer(v0, qword_1EC2BF0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "siriEntityMatcher";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "globalEntityMatcher";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A6A7D0()
{
  if (qword_1EC2B5E80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BF0D0;
  v2 = *algn_1EC2BF0D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C285D0);

  qword_1EC2BF110 = v1;
  *algn_1EC2BF118 = v2;
  return result;
}

uint64_t sub_1C8A6A898()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF120);
  __swift_project_value_buffer(v0, qword_1EC2BF120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maxTokenCount";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchedTokenCount";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "matchedAliasTypes";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A6AC04();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A6ABA0();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A6AB3C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A6AC04()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0) + 28);
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  sub_1C8776C08(&qword_1EC2BF300, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C8, &qword_1C8C13080);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(v8);
  v10 = OUTLINED_FUNCTION_21(matched);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_1();
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_154_3(v13);
  OUTLINED_FUNCTION_468(v14);
  if ((v16 & 1) != 0 || (v17 = *v15, OUTLINED_FUNCTION_48_0(), sub_1C8BD4D9C(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_468(*(v3 + 24));
    if ((v19 & 1) != 0 || (v20 = *v18, OUTLINED_FUNCTION_48_0(), sub_1C8BD4D9C(), (v0 = v1) == 0))
    {
      v21 = *(v3 + 28);
      OUTLINED_FUNCTION_244_2();
      OUTLINED_FUNCTION_62_10();
      if (v22)
      {
        sub_1C8778ED8(v2, &qword_1EC2BF1C8, &qword_1C8C13080);
LABEL_9:
        OUTLINED_FUNCTION_15();
        goto LABEL_10;
      }

      sub_1C8A5FE44();
      sub_1C8776C08(&qword_1EC2BF300, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_166_5();
      sub_1C8A5FEEC();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(v2);
  v4 = OUTLINED_FUNCTION_21(matched);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1C8, &qword_1C8C13080);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_211();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF308, &qword_1C8C130D8);
  OUTLINED_FUNCTION_21(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_74();
  v19 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v18);
  OUTLINED_FUNCTION_143_5(*(v19 + 20));
  if (v22)
  {
    if (!v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_0();
    if (v23)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_143_5(*(v20 + 24));
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_61_0();
    if ((v27 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v32 = 0;
    goto LABEL_21;
  }

  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_9:
  v28 = *(v24 + 28);
  v29 = *(v14 + 48);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v33)
  {
    OUTLINED_FUNCTION_19(v0 + v29);
    if (v33)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1C8, &qword_1C8C13080);
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v29);
  if (v33)
  {
    OUTLINED_FUNCTION_214_3();
LABEL_18:
    v34 = &qword_1EC2BF308;
    v35 = &qword_1C8C130D8;
LABEL_19:
    sub_1C8778ED8(v0, v34, v35);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_25_14();
  sub_1C8A5FE44();
  v36 = sub_1C87E4684(*v1, *v9);
  if ((v36 & 1) == 0)
  {
    sub_1C8A5FEEC();
    sub_1C8A5FEEC();
    v34 = &qword_1EC2BF1C8;
    v35 = &qword_1C8C13080;
    goto LABEL_19;
  }

  v37 = *(matched + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v38, v39);
  v40 = sub_1C8BD517C();
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_230();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2BF1C8, &qword_1C8C13080);
  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v30, v31);
  OUTLINED_FUNCTION_196_0();
  v32 = sub_1C8BD517C();
LABEL_21:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A6B1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF548, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6B274(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF2E8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6B2E4()
{
  sub_1C8776C08(&qword_1EC2BF2E8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6B364()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF138);
  __swift_project_value_buffer(v0, qword_1EC2BF138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "homeEntity";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "synonym";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "transliteration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "expandedEmoji";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "contactRelationship";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "contactHypocorism";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "contactHandle";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A6B684()
{
  if (qword_1EC2B5E98 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BF110;
  v2 = *algn_1EC2BF118;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x79547361696C412ELL, 0xEB00000000736570);

  qword_1EC2BF150 = v1;
  *algn_1EC2BF158 = v2;
  return result;
}

uint64_t sub_1C8A6B750()
{
  OUTLINED_FUNCTION_225_3();
  if (*v2 != -1)
  {
    swift_once();
  }

  v3 = *v1;
  v4 = *v0;

  return OUTLINED_FUNCTION_5_0();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_39_7();
  if (!v1 || (sub_1C8A6F598(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D2C(), !v0))
  {
    v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0) + 20);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C8A6B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_12_0();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v9, v10);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C8A6BA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF540, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6BAAC(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2BF300, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6BB1C()
{
  sub_1C8776C08(&qword_1EC2BF300, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6BBB4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3810);
  __swift_project_value_buffer(v0, qword_1EC2B3810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "required_context";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "utterance_context";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "original_ranked_tools";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "adjusted_ranked_tools";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "original_ranked_spans";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "adjusted_ranked_spans";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "spans";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v21 = *MEMORY[0x1E69AADC8];
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 24;
  *v23 = "context";
  *(v23 + 1) = 7;
  v23[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_NluRouter_QueryDecorationOutput.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A6E290();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A6D9A4();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      case 9:
      case 10:
      case 11:
        continue;
      case 12:
        OUTLINED_FUNCTION_8();
        sub_1C8A6C08C();
        break;
      default:
        if (v1 == 24)
        {
          OUTLINED_FUNCTION_8();
          sub_1C8A6C12C();
        }

        break;
    }
  }
}

uint64_t sub_1C8A6C08C()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0);
  sub_1C8776C08(&qword_1EC2BF328, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A6C12C()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0);
  sub_1C8776C08(&qword_1EC2B38E0, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_39_7();
  if (!v2 || (type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0), OUTLINED_FUNCTION_51_6(), sub_1C8776C08(v3, v4), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
  {
    if (!*(v1[1] + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0), OUTLINED_FUNCTION_51_6(), sub_1C8776C08(v6, v7), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
    {
      if (!*(v1[2] + 16) || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4DAC(), !v0))
      {
        if (!*(v1[3] + 16) || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4DAC(), !v0))
        {
          if (!*(v1[4] + 16) || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4DAC(), !v0))
          {
            if (!*(v1[5] + 16) || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4DAC(), !v0))
            {
              if (!*(v1[6] + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0), sub_1C8776C08(&qword_1EC2BF328, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
              {
                if (!*(v1[7] + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0), OUTLINED_FUNCTION_51_6(), sub_1C8776C08(v8, v9), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
                {
                  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0) + 48);
                  return OUTLINED_FUNCTION_69();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_QueryDecorationOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = *v2;
  v5 = *v4;
  sub_1C87D62D8();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v1[1];
  v8 = v0[1];
  sub_1C87D62D8();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C87D2814(v1[2], v0[2]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C87D2814(v1[3], v0[3]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C87D2814(v1[4], v0[4]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1C87D2814(v1[5], v0[5]) & 1) == 0)
  {
    return 0;
  }

  v10 = v1[6];
  v11 = v0[6];
  sub_1C87D6DA0();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v1[7];
  v14 = v0[7];
  sub_1C87D62D8();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0) + 48);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v17, v18);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t (*sub_1C8A6C57C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1C8A6C5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF538, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6C650(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B3800, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6C6C0()
{
  sub_1C8776C08(&qword_1EC2B3800, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6C758()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3500);
  __swift_project_value_buffer(v0, qword_1EC2B3500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nl_parse_response";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pommes_response";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A6C984()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_578();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_578();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_1C8A6C9F8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0) + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  sub_1C8776C08(&qword_1EC2B39B8, type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A6CAAC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0) + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
  sub_1C8776C08(&qword_1EC2BF338, type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1D8, &unk_1C8C13090);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_17_4();
  v30 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v12);
  v13 = OUTLINED_FUNCTION_21(v30);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v16 = OUTLINED_FUNCTION_315();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_278_1();
  v22 = type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v26 = OUTLINED_FUNCTION_65_0();
  v27 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v26);
  OUTLINED_FUNCTION_154_3(v27);
  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_76(v1, 1, v22);
  if (v28)
  {
    sub_1C8778ED8(v1, &qword_1EC2BF1D0, &qword_1C8C13088);
  }

  else
  {
    sub_1C8A5FE44();
    sub_1C8776C08(&qword_1EC2B39B8, type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse);
    OUTLINED_FUNCTION_159_3();
    v0 = v2;
    OUTLINED_FUNCTION_260_0();
    sub_1C8A5FEEC();
    if (v2)
    {
      goto LABEL_10;
    }
  }

  v29 = *(v4 + 24);
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v3, 1, v30);
  if (v28)
  {
    sub_1C8778ED8(v3, &qword_1EC2BF1D8, &unk_1C8C13090);
LABEL_9:
    OUTLINED_FUNCTION_183_1();
    sub_1C8BD49DC();
    goto LABEL_10;
  }

  sub_1C8A5FE44();
  sub_1C8776C08(&qword_1EC2BF338, type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_203_2();
  sub_1C8A5FEEC();
  if (!v0)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v71 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
  v5 = OUTLINED_FUNCTION_21(v71);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v67 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1D8, &unk_1C8C13090);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81();
  v68 = v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF340, &qword_1C8C130E0);
  OUTLINED_FUNCTION_21(v70);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_75(v18, v67);
  v19 = type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF1D0, &qword_1C8C13088);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v67 - v30);
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF348, &unk_1C8C130E8) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_17_4();
  v69 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v35);
  v36 = *(v69 + 20);
  v37 = v32[14];
  v73 = v4;
  sub_1C8778810();
  v74 = v2;
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0);
  if (v45)
  {
    OUTLINED_FUNCTION_19(v0 + v37);
    if (v45)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1D0, &qword_1C8C13088);
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v37);
  if (v45)
  {
    sub_1C8A5FEEC();
LABEL_15:
    v46 = &qword_1EC2BF348;
    v47 = &unk_1C8C130E8;
LABEL_16:
    v48 = v0;
LABEL_37:
    sub_1C8778ED8(v48, v46, v47);
LABEL_38:
    v44 = 0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_23_18();
  sub_1C8A5FE44();
  v49 = *v31;
  v50 = *v25;
  sub_1C87D2A98();
  if ((v51 & 1) == 0)
  {
    sub_1C8A5FEEC();
    OUTLINED_FUNCTION_218();
    sub_1C8A5FEEC();
    v46 = &qword_1EC2BF1D0;
    v47 = &qword_1C8C13088;
    goto LABEL_16;
  }

  v52 = *(v19 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v53, v54);
  v55 = sub_1C8BD517C();
  sub_1C8A5FEEC();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v0, &qword_1EC2BF1D0, &qword_1C8C13088);
  if ((v55 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_6:
  v38 = *(v69 + 24);
  v39 = *(v70 + 48);
  v40 = v72;
  OUTLINED_FUNCTION_180_0();
  OUTLINED_FUNCTION_180_0();
  v41 = v71;
  OUTLINED_FUNCTION_76(v40, 1, v71);
  if (v45)
  {
    OUTLINED_FUNCTION_76(v40 + v39, 1, v41);
    if (v45)
    {
      sub_1C8778ED8(v40, &qword_1EC2BF1D8, &unk_1C8C13090);
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v56 = v68;
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v40 + v39, 1, v41);
  if (v57)
  {
    sub_1C8A5FEEC();
LABEL_23:
    v46 = &qword_1EC2BF340;
    v47 = &qword_1C8C130E0;
LABEL_36:
    v48 = v40;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_22_17();
  v58 = v67;
  sub_1C8A5FE44();
  v59 = *(v41 + 20);
  v60 = *(v58 + v59 + 8);
  if (!*(v56 + v59 + 8))
  {
    if (!v60)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (!v60 || ((OUTLINED_FUNCTION_35((v56 + v59)), v45) ? (v63 = v61 == v62) : (v63 = 0), !v63 && (sub_1C8BD529C() & 1) == 0))
  {
LABEL_35:
    sub_1C8A5FEEC();
    OUTLINED_FUNCTION_121();
    sub_1C8A5FEEC();
    v46 = &qword_1EC2BF1D8;
    v47 = &unk_1C8C13090;
    goto LABEL_36;
  }

LABEL_32:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v64, v65);
  OUTLINED_FUNCTION_184();
  v66 = sub_1C8BD517C();
  sub_1C8A5FEEC();
  OUTLINED_FUNCTION_254_0();
  sub_1C8A5FEEC();
  sub_1C8778ED8(v40, &qword_1EC2BF1D8, &unk_1C8C13090);
  if ((v66 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v42, v43);
  OUTLINED_FUNCTION_258();
  v44 = sub_1C8BD517C();
LABEL_39:
  OUTLINED_FUNCTION_157(v44);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A6D484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6D504(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B34F0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6D574()
{
  sub_1C8776C08(&qword_1EC2B34F0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6D60C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3858);
  __swift_project_value_buffer(v0, qword_1EC2B3858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "active_tasks";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "executed_tasks";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "system_dialog_acts";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "salient_entities";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_NluRouter_NLRouterTurnContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A6E290();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A6D9A4();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A6D9F8();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A6DA98();
        break;
      default:
        continue;
    }
  }
}

void sub_1C8A6D9A4()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776C08(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8A6D9F8()
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776C08(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A6DA98()
{
  type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
  sub_1C8776C08(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_39_7();
  if (!v2 || (type metadata accessor for Siri_Nlu_External_Task(0), OUTLINED_FUNCTION_131_2(), sub_1C8776C08(v3, v4), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_224_3(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
  {
    if (!*(v1[1] + 16) || (type metadata accessor for Siri_Nlu_External_Task(0), OUTLINED_FUNCTION_131_2(), sub_1C8776C08(v6, v7), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
    {
      if (!*(v1[2] + 16) || (type metadata accessor for Siri_Nlu_External_SystemDialogAct(0), sub_1C8776C08(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
      {
        if (!*(v1[3] + 16) || (type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C8776C08(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
        {
          v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0) + 32);
          return OUTLINED_FUNCTION_69();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRouterTurnContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = *v2;
  v5 = *v4;
  sub_1C87D7330();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v1[1];
  v8 = v0[1];
  sub_1C87D7330();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v1[2];
  v11 = v0[2];
  sub_1C87D7384();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v1[3];
  v14 = v0[3];
  sub_1C87D73D8();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0) + 32);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v17, v18);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C8A6DE54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF528, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6DED4(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B3848, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6DF44()
{
  sub_1C8776C08(&qword_1EC2B3848, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6DFDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3A08);
  __swift_project_value_buffer(v0, qword_1EC2B3A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_query";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "turn_summaries";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_NluRouter_RequestSummary.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A6E290();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A662B8();
    }
  }
}

void sub_1C8A6E290()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776C08(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0);
  v4 = v0 + *(v3 + 24);
  if (!*(v4 + 8) || (OUTLINED_FUNCTION_230_2(v4), OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v1))
  {
    v6 = *v0;
    if (!*(*v2 + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0), sub_1C8776C08(&qword_1EC2B3A50, type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
    {
      v7 = *(v3 + 20);
      return OUTLINED_FUNCTION_69();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_RequestSummary.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(v2);
  v4 = *(v3 + 24);
  OUTLINED_FUNCTION_1();
  if (v7)
  {
    if (!v5)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v6);
    v10 = v10 && v8 == v9;
    if (!v10 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v11 = *v1;
  v12 = *v0;
  sub_1C87D742C();
  if (v13)
  {
    v14 = *(v3 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_30();
    sub_1C8776C08(v15, v16);
    return OUTLINED_FUNCTION_64_0() & 1;
  }

  return 0;
}

uint64_t sub_1C8A6E534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF520, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6E5B4(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B39F8, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6E624()
{
  sub_1C8776C08(&qword_1EC2B39F8, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6E6BC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3A60);
  __swift_project_value_buffer(v0, qword_1EC2B3A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executed_query";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response_text";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "execution_source";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gen_ai_metadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A644C8(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A662B8();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A6EA00();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A6EA74();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A6EA00()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0) + 28);
  sub_1C8A6F5EC();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C8A6EA74()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0) + 32);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  sub_1C8776C08(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_TurnSummary.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  OUTLINED_FUNCTION_154_3(v14);
  OUTLINED_FUNCTION_16_2(v15);
  if (!v17 || (OUTLINED_FUNCTION_230_2(v16), OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_16_2(v4[6]);
    if (!v19 || (v20 = *v18, OUTLINED_FUNCTION_19_14(), sub_1C8BD4DDC(), (v0 = v1) == 0))
    {
      if (*(v2 + v4[7]) == 5 || (sub_1C8A6F5EC(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), (v0 = v1) == 0))
      {
        v21 = v4[8];
        OUTLINED_FUNCTION_244_2();
        OUTLINED_FUNCTION_62_10();
        if (v22)
        {
          sub_1C8778ED8(v3, &qword_1EC2B5FA8, &unk_1C8BEBC60);
LABEL_11:
          OUTLINED_FUNCTION_15();
          goto LABEL_12;
        }

        sub_1C8A5FE44();
        sub_1C8776C08(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);
        OUTLINED_FUNCTION_240();
        OUTLINED_FUNCTION_213_0();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_166_5();
        sub_1C8A5FEEC();
        if (!v0)
        {
          goto LABEL_11;
        }
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8A6F008()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8776C08(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A6F0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C08(&qword_1EC2BF518, type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A6F158(uint64_t a1)
{
  v2 = sub_1C8776C08(&qword_1EC2B3A50, type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A6F1C8()
{
  sub_1C8776C08(&qword_1EC2B3A50, type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A6F248()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3AA8);
  __swift_project_value_buffer(v0, qword_1EC2B3AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EXECUTION_SOURCE_UNSET";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EXECUTION_SOURCE_SIRI_X";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EXECUTION_SOURCE_PLANNER";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EXECUTION_SOURCE_PQA_SEARCH";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EXECUTION_SOURCE_GENAI";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C8A6F4F0()
{
  result = qword_1EC2B3970;
  if (!qword_1EC2B3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3970);
  }

  return result;
}

unint64_t sub_1C8A6F544()
{
  result = qword_1EC2BF2E0;
  if (!qword_1EC2BF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF2E0);
  }

  return result;
}

unint64_t sub_1C8A6F598()
{
  result = qword_1EC2BF318;
  if (!qword_1EC2BF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF318);
  }

  return result;
}

unint64_t sub_1C8A6F5EC()
{
  result = qword_1EC2B3A98;
  if (!qword_1EC2B3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3A98);
  }

  return result;
}

unint64_t sub_1C8A6F644()
{
  result = qword_1EC2B3960;
  if (!qword_1EC2B3960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3960);
  }

  return result;
}

unint64_t sub_1C8A6F69C()
{
  result = qword_1EC2B3968;
  if (!qword_1EC2B3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3968);
  }

  return result;
}

unint64_t sub_1C8A6F6F4()
{
  result = qword_1EC2B3958;
  if (!qword_1EC2B3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3958);
  }

  return result;
}

unint64_t sub_1C8A6F77C()
{
  result = qword_1EC2BF380;
  if (!qword_1EC2BF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF380);
  }

  return result;
}

unint64_t sub_1C8A6F7D4()
{
  result = qword_1EC2BF388;
  if (!qword_1EC2BF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF388);
  }

  return result;
}

unint64_t sub_1C8A6F82C()
{
  result = qword_1EC2BF390;
  if (!qword_1EC2BF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF390);
  }

  return result;
}

unint64_t sub_1C8A6F884()
{
  result = qword_1EC2BF398;
  if (!qword_1EC2BF398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF398);
  }

  return result;
}

unint64_t sub_1C8A6F8DC()
{
  result = qword_1EC2BF3A0;
  if (!qword_1EC2BF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF3A0);
  }

  return result;
}

unint64_t sub_1C8A6F934()
{
  result = qword_1EC2BF3A8;
  if (!qword_1EC2BF3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BF3A8);
  }

  return result;
}

unint64_t sub_1C8A6F9EC()
{
  result = qword_1EC2B3A88;
  if (!qword_1EC2B3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3A88);
  }

  return result;
}

unint64_t sub_1C8A6FA44()
{
  result = qword_1EC2B3A90;
  if (!qword_1EC2B3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3A90);
  }

  return result;
}

unint64_t sub_1C8A6FA9C()
{
  result = qword_1EC2B3A80;
  if (!qword_1EC2B3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3A80);
  }

  return result;
}

uint64_t sub_1C8A71528()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C8A7161C()
{
  v0 = OUTLINED_FUNCTION_248_1();
  result = v1(v0);
  if (v3 <= 0x3F)
  {
    result = sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

void sub_1C8A716B0()
{
  OUTLINED_FUNCTION_248_1();
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_223();
    sub_1C8A72FC8(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

void sub_1C8A71798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A71824()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A71798(319, &qword_1EC2B3AF0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C8A71798(319, &qword_1EC2B3B08, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8A719E8()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A71798(319, &qword_1EC2B3B38, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A72FC8(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A71B48()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A71C18()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EC2B3950, &type metadata for Siri_Nlu_External_NluRouter_RetrievedContext.ContextType, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A71798(319, &qword_1EC2B3908, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_182Tm()
{
  v1 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v3 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_183Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_12_0();
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_32_1();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1C8A71E90()
{
  OUTLINED_FUNCTION_248_1();
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_223();
    sub_1C8A71798(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

void sub_1C8A71F28()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A71798(319, &qword_1EC2B3938, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_128Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_241();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == a2)
  {
    v5 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v5, a2, v6);
  }

  else
  {
    OUTLINED_FUNCTION_386();
    return OUTLINED_FUNCTION_23_2(v8);
  }
}

void __swift_store_extra_inhabitant_index_129Tm()
{
  v1 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_27_6();
  }
}

void sub_1C8A72178()
{
  sub_1C8A71798(319, &qword_1EC2B2F00, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A71798(319, &qword_1EC2B3AC0, type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A7229C()
{
  v0 = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C8A72FC8(319, &qword_1EC2B2ED0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      sub_1C8A72FC8(319, &qword_1EC2B4230, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v4;
      }

      sub_1C8A71798(319, &qword_1EC2B3890, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties, MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v4;
      }

      sub_1C8A72FC8(319, &qword_1EC2B38C0, &type metadata for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.EntityMatcherType, MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v4;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.EntityMatcherType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8A72560()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EC2B2ED0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A71798(319, &qword_1EC2B38A8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypesOptions(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8A727B8()
{
  sub_1C8A71798(319, &qword_1EC2B2F10, type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1C8A71798(319, &qword_1EC2B2EF8, type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity, MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_1C8BD49FC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t __swift_get_extra_inhabitant_index_137Tm()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_516();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v0)
    {
      v8 = *(v1 + 20);
    }

    else
    {
      v9 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      OUTLINED_FUNCTION_266();
    }
  }

  OUTLINED_FUNCTION_260();

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

uint64_t __swift_store_extra_inhabitant_index_138Tm()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  v8 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v8);
  if (*(v9 + 84) == v7)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
    OUTLINED_FUNCTION_18_0(v10);
    if (*(v11 + 84) == v7)
    {
      v12 = *(v5 + 20);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      OUTLINED_FUNCTION_264_0();
    }
  }

  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_260();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void sub_1C8A72B34()
{
  OUTLINED_FUNCTION_248_1();
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_119();
    sub_1C8A71798(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_223();
      sub_1C8A71798(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }
}

void sub_1C8A72C18()
{
  sub_1C8A71798(319, &qword_1EDACA308, type metadata accessor for Siri_Nlu_External_Task, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8A71798(319, &qword_1EDACA2E0, type metadata accessor for Siri_Nlu_External_SystemDialogAct, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8A71798(319, &qword_1EDACA2E8, type metadata accessor for Siri_Nlu_External_EntityCandidate, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C8BD49FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8A72D84()
{
  sub_1C8A71798(319, &qword_1EC2B2F18, type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A72FC8(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A72E9C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A72FC8(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A72FC8(319, &qword_1EC2B3A78, &type metadata for Siri_Nlu_External_NluRouter_TurnSummary.ExecutionSource, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C8A71798(319, &qword_1EC2B36B0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8A72FC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *sub_1C8A73018(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8A730FC()
{
  sub_1C8A71798(319, &qword_1EC2B3828, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C8A71798(319, &qword_1EC2B34D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C8A71798(319, &qword_1EC2B37E0, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_71_3()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_84_5()
{

  return sub_1C8778810();
}

void OUTLINED_FUNCTION_140_3()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_168_3()
{
  result = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_173_5(uint64_t result)
{
  v3 = *(result + 20);
  *(v1 + 8) = v3;
  *(v1 + 12) = *(v2 + v3) & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_181_2()
{
  result = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  v2 = v0 + *(result + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_190_4()
{

  return sub_1C8A5FE44();
}

uint64_t OUTLINED_FUNCTION_198_1()
{
  *(v0 + *(v1 + 20)) = 2;
  v2 = *(v1 + 24);
  return 0;
}

uint64_t OUTLINED_FUNCTION_208_1()
{
  *(v1 - 104) = v0;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_214_3()
{

  return sub_1C8A5FEEC();
}

uint64_t OUTLINED_FUNCTION_222_4(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_227_3(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = a1;
  v1[2] = a1;
  v1[3] = a1;
}

uint64_t OUTLINED_FUNCTION_242_3()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_244_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_246_2()
{

  return sub_1C8778810();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.requestID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult()
{
  result = qword_1EC2BF620;
  if (!qword_1EC2BF620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A736A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Ssu_SSUEncodingResult.requestID.setter();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.requestID.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_29() + 24));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*Siri_Nlu_Internal_Ssu_SSUEncodingResult.requestID.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_4_27(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Ssu_SSUEncodingResult.clearRequestID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.ssuEncoderVersion.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8A73850(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Ssu_SSUEncodingResult.ssuEncoderVersion.setter();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.ssuEncoderVersion.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_29() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*Siri_Nlu_Internal_Ssu_SSUEncodingResult.ssuEncoderVersion.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_4_27(v1) + 28);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Ssu_SSUEncodingResult.clearSsuEncoderVersion()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.utterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 32)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8A73A00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Ssu_SSUEncodingResult.utterance.setter();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.utterance.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_7_29() + 32));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void (*Siri_Nlu_Internal_Ssu_SSUEncodingResult.utterance.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_4_27(v1) + 32);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Ssu_SSUEncodingResult.clearUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult() + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.encoding.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  v3 = a1 + v2[5];
  result = _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C8A73D78()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BF5E8);
  __swift_project_value_buffer(v0, qword_1EC2BF5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ssuEncoderVersion";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "utterance";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "encoding";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Ssu_SSUEncodingResult._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BF5E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A7411C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A74180();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A741E4();
        break;
      case 4:
        sub_1C8BD4B6C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  v4 = (v0 + v3[6]);
  if (!v4[1] || (v5 = *v4, result = OUTLINED_FUNCTION_19_5(), (v2 = v1) == 0))
  {
    v7 = (v0 + v3[7]);
    if (!v7[1] || (v8 = *v7, result = OUTLINED_FUNCTION_19_5(), (v2 = v1) == 0))
    {
      v9 = (v0 + v3[8]);
      if (!v9[1] || (v10 = *v9, result = OUTLINED_FUNCTION_19_5(), (v2 = v1) == 0))
      {
        if (!*(*v0 + 16) || (result = sub_1C8BD4D5C(), !v2))
        {
          v11 = v0 + v3[5];
          return sub_1C8BD49DC();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Ssu_SSUEncodingResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  v5 = v4[6];
  OUTLINED_FUNCTION_1();
  if (v8)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v12 = v4[7];
  OUTLINED_FUNCTION_1();
  if (v15)
  {
    if (!v13)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v14);
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v19 = v4[8];
  OUTLINED_FUNCTION_1();
  if (v22)
  {
    if (!v20)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v21);
    v25 = v11 && v23 == v24;
    if (!v25 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (sub_1C87DCE78(*a1, *a2))
  {
    v26 = v4[5];
    sub_1C8BD49FC();
    sub_1C8776C50(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUEncodingResult.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
  sub_1C8776C50(&qword_1EC2BF600, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A7457C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776C50(&qword_1EC2BF630, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A745FC(uint64_t a1)
{
  v2 = sub_1C8776C50(&qword_1EC2BF610, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A7466C()
{
  sub_1C8776C50(&qword_1EC2BF610, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult);

  return sub_1C8BD4CFC();
}

void sub_1C8A74834()
{
  sub_1C8A74920(319, &qword_1EC2B2ED8, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A74920(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A74920(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_29()
{

  return type metadata accessor for Siri_Nlu_Internal_Ssu_SSUEncodingResult();
}

uint64_t SIRINLUEXTERNALNLU_ROUTERAliasTypesReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v27[0] & 0x7F) << v4;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        v10 = v5++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v27[0] = 0;
          v27[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v28 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v28 & 0x7F) << v14;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v10 = v15++ >= 9;
              if (v10)
              {
                goto LABEL_32;
              }
            }

            [a2 hasError];
LABEL_32:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v27[0] & 0x7F) << v20;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v10 = v21++ >= 9;
            if (v10)
            {
              goto LABEL_46;
            }
          }

          [a2 hasError];
LABEL_46:
          PBRepeatedInt32Add();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::LegacyNLContext::formatText(sirinluexternal::LegacyNLContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 72);
  if ((v5 & 2) != 0)
  {
    v13 = *(this + 68);
    PB::TextFormatter::format(a2, "dictation_prompt");
    v5 = *(this + 72);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 72) & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(this + 16);
  PB::TextFormatter::format(a2, "legacy_context_source");
  if ((*(this + 72) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 69);
    PB::TextFormatter::format(a2, "listen_after_speaking");
  }

LABEL_5:
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "rendered_texts");
  }

  v10 = *(this + 5);
  for (i = *(this + 6); v10 != i; v10 += 24)
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 72) & 8) != 0)
  {
    v12 = *(this + 70);
    PB::TextFormatter::format(a2, "strict_prompt");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::LegacyNLContext::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 68);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 72);
  }

  if ((v4 & 8) != 0)
  {
    v6 = *(v3 + 70);
    this = PB::Writer::write(a2);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  if ((*(v3 + 72) & 4) != 0)
  {
    v7 = *(v3 + 69);
    this = PB::Writer::write(a2);
  }

  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  if (*(v3 + 72))
  {
    v11 = *(v3 + 64);
    this = PB::Writer::writeVarInt(a2);
  }

  v13 = *(v3 + 40);
  v12 = *(v3 + 48);
  while (v13 != v12)
  {
    this = PB::Writer::write();
    v13 += 24;
  }

  return this;
}

uint64_t sirinluexternal::LegacyNLContext::readFrom(sirinluexternal::LegacyNLContext *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 40);
    do
    {
      v8 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = (v8 + v2);
        v19 = v3 >= v2;
        v20 = v3 - v2;
        if (!v19)
        {
          v20 = 0;
        }

        v21 = v2 + 1;
        while (v20)
        {
          v22 = *v18;
          *(a2 + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          v16 += 7;
          ++v18;
          --v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = (v8 + v2);
      v13 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v13;
        v14 = *v12++;
        v11 |= (v14 & 0x7F) << v9;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        ++v13;
        v15 = v10++ > 8;
        if (v15)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      if ((v11 & 7) == 4)
      {
        v4 = 0;
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) <= 3)
      {
        switch(v23)
        {
          case 1:
            *(this + 72) |= 2u;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2))
            {
              v30 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v28 = v27 + 1;
              v29 = *(*a2 + v27);
              *(a2 + 1) = v28;
              v30 = v29 != 0;
            }

            *(this + 68) = v30;
            goto LABEL_19;
          case 2:
            *(this + 72) |= 8u;
            v44 = *(a2 + 1);
            if (v44 >= *(a2 + 2))
            {
              v47 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v45 = v44 + 1;
              v46 = *(*a2 + v44);
              *(a2 + 1) = v45;
              v47 = v46 != 0;
            }

            *(this + 70) = v47;
            goto LABEL_19;
          case 3:
            operator new();
        }
      }

      else if (v23 > 6)
      {
        if (v23 == 7)
        {
          *(this + 72) |= 1u;
          v36 = *(a2 + 1);
          v35 = *(a2 + 2);
          v37 = *a2;
          if (v36 > 0xFFFFFFFFFFFFFFF5 || v36 + 10 > v35)
          {
            v48 = 0;
            v49 = 0;
            v40 = 0;
            v50 = (v37 + v36);
            v19 = v35 >= v36;
            v51 = v35 - v36;
            if (!v19)
            {
              v51 = 0;
            }

            v52 = v36 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v40) = 0;
                *(a2 + 24) = 1;
                goto LABEL_76;
              }

              v53 = *v50;
              *(a2 + 1) = v52;
              v40 |= (v53 & 0x7F) << v48;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              ++v50;
              --v51;
              ++v52;
              v15 = v49++ > 8;
              if (v15)
              {
LABEL_58:
                LODWORD(v40) = 0;
                goto LABEL_76;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v40) = 0;
            }
          }

          else
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = (v37 + v36);
            v42 = v36 + 1;
            while (1)
            {
              *(a2 + 1) = v42;
              v43 = *v41++;
              v40 |= (v43 & 0x7F) << v38;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              ++v42;
              v15 = v39++ > 8;
              if (v15)
              {
                goto LABEL_58;
              }
            }
          }

LABEL_76:
          *(this + 16) = v40;
          goto LABEL_19;
        }

        if (v23 == 8)
        {
          v24 = *(this + 6);
          v25 = *(this + 7);
          if (v24 >= v25)
          {
            v54 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
            v55 = v54 + 1;
            if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
            }

            v56 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
            if (2 * v56 > v55)
            {
              v55 = 2 * v56;
            }

            if (v56 >= 0x555555555555555)
            {
              v57 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v57 = v55;
            }

            v66.__end_cap_.__value_ = v7;
            if (v57)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v57);
            }

            v58 = 24 * v54;
            *v58 = 0;
            *(v58 + 8) = 0;
            *(v58 + 16) = 0;
            v26 = 24 * v54 + 24;
            v59 = *(this + 5);
            v60 = *(this + 6) - v59;
            v61 = v58 - v60;
            memcpy((v58 - v60), v59, v60);
            v62 = *(this + 5);
            *(this + 5) = v61;
            *(this + 6) = v26;
            v63 = *(this + 7);
            *(this + 7) = 0;
            v66.__end_ = v62;
            v66.__end_cap_.__value_ = v63;
            v66.__first_ = v62;
            v66.__begin_ = v62;
            std::__split_buffer<std::string>::~__split_buffer(&v66);
          }

          else
          {
            *v24 = 0;
            v24[1] = 0;
            v26 = (v24 + 3);
            v24[2] = 0;
          }

          *(this + 6) = v26;
          PB::Reader::read();
          goto LABEL_19;
        }
      }

      else
      {
        if (v23 == 4)
        {
          *(this + 72) |= 4u;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2))
          {
            v34 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = v31 + 1;
            v33 = *(*a2 + v31);
            *(a2 + 1) = v32;
            v34 = v33 != 0;
          }

          *(this + 69) = v34;
          goto LABEL_19;
        }

        if (v23 == 5)
        {
          operator new();
        }
      }

LABEL_18:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v64 = 0;
        return v64 & 1;
      }

LABEL_19:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v64 = v4 ^ 1;
  return v64 & 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8323F38, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sirinluexternal::LegacyNLContext::~LegacyNLContext(sirinluexternal::LegacyNLContext *this)
{
  sirinluexternal::LegacyNLContext::~LegacyNLContext(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875340;
  v3 = (this + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*(this + 2));
  }

  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

double sirinluexternal::LegacyNLContext::LegacyNLContext(sirinluexternal::LegacyNLContext *this)
{
  *this = &unk_1F4875340;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_1F4875340;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

sirinluexternal::LegacyNLContext *sirinluexternal::LegacyNLContext::LegacyNLContext(sirinluexternal::LegacyNLContext *this, const sirinluexternal::LegacyNLContext *a2)
{
  *this = &unk_1F4875340;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 18) = 0;
  *(this + 24) = 0u;
  *(this + 52) = 0u;
  if ((*(a2 + 72) & 2) != 0)
  {
    v4 = *(a2 + 68);
    *(this + 72) = 2;
    *(this + 68) = v4;
    v3 = 10;
    if ((*(a2 + 72) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 8;
  if ((*(a2 + 72) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 70);
    *(this + 72) = v3;
    *(this + 70) = v5;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  if ((*(a2 + 72) & 4) != 0)
  {
    v6 = *(a2 + 69);
    *(this + 72) |= 4u;
    *(this + 69) = v6;
  }

  v7 = *(a2 + 2);
  if (v7 != *(a2 + 3))
  {
    v8 = *v7;
    operator new();
  }

  if (*(a2 + 72))
  {
    v9 = *(a2 + 16);
    *(this + 72) |= 1u;
    *(this + 16) = v9;
  }

  if (this != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 40), *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  }

  return this;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t sirinluexternal::LegacyNLContext::operator=(uint64_t a1, const sirinluexternal::LegacyNLContext *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::LegacyNLContext::LegacyNLContext(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::LegacyNLContext::~LegacyNLContext(v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::LegacyNLContext *a2, sirinluexternal::LegacyNLContext *a3)
{
  v3 = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v3;
  LOBYTE(v3) = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = v3;
  LOBYTE(v3) = *(this + 70);
  *(this + 70) = *(a2 + 70);
  *(a2 + 70) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LOBYTE(v4) = *(this + 69);
  *(this + 69) = *(a2 + 69);
  *(a2 + 69) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v10;
  return this;
}

uint64_t sirinluexternal::LegacyNLContext::LegacyNLContext(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875340;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 70) = *(a2 + 70);
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  *(a1 + 69) = *(a2 + 69);
  if (v6)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
    operator delete(*v7);
    *v7 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 64) = *(a2 + 64);
  std::vector<std::string>::__vdeallocate((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

uint64_t sirinluexternal::LegacyNLContext::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::LegacyNLContext::LegacyNLContext(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::LegacyNLContext::~LegacyNLContext(v5);
  }

  return a1;
}

BOOL sirinluexternal::LegacyNLContext::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = *(a2 + 72);
  if ((v4 & 2) != 0)
  {
    if ((*(a2 + 72) & 2) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 72) & 8) != 0)
  {
    if ((*(a2 + 72) & 8) == 0 || *(a1 + 70) != *(a2 + 70))
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 8) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = *(v7 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v7 + 8);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? *(a1 + 8) : *v6;
    v13 = v11 >= 0 ? *(a2 + 8) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 69) != *(a2 + 69))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  if (!PB::PtrVector<siricommon::StringValue>::operator==(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if ((v5 & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

LABEL_40:
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);

  return std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(v15, v16, v17, v18);
}

BOOL PB::PtrVector<siricommon::StringValue>::operator==(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = siricommon::StringValue::operator==(v7, v9);
  }

  while (result && v5 != a2);
  return result;
}

BOOL std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(char *a1, char *a2, void *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  v5 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a3;
  do
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v5, v6);
    if (!result)
    {
      break;
    }

    v5 += 24;
    v6 += 3;
  }

  while (v5 != a2);
  return result;
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

unint64_t sirinluexternal::LegacyNLContext::hash_value(sirinluexternal::LegacyNLContext *this)
{
  v2 = *(this + 72);
  if ((v2 & 2) != 0)
  {
    v3 = *(this + 68);
    if ((*(this + 72) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 72) & 8) != 0)
    {
LABEL_3:
      v4 = *(this + 70);
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = *(this + 1);
  if (v5)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v5);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = *(this + 69);
LABEL_11:
  v8 = *(this + 2);
  v9 = *(this + 3);
  if (v8 == v9)
  {
    v10 = 0;
    if ((v2 & 1) == 0)
    {
LABEL_17:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *(*v8 + 8);
      if (v11)
      {
        v11 = std::__string_hash<char>::operator()[abi:ne200100](v11);
      }

      v10 ^= v11;
      v8 += 8;
    }

    while (v8 != v9);
    if ((v2 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v12 = *(this + 16);
LABEL_20:
  v13 = *(this + 5);
  v14 = *(this + 6);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v15 ^= std::__string_hash<char>::operator()[abi:ne200100](v13);
      v13 += 24;
    }

    while (v13 != v14);
  }

  return v4 ^ v3 ^ v6 ^ v7 ^ v10 ^ v12 ^ v15;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::formatText(sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "response");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::readFrom(sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

void sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::~NLv4ContextFeaturizerResponse(sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *this)
{
  sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::~NLv4ContextFeaturizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4875390;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::NLv4ContextFeaturizerResponse(void *this)
{
  *this = &unk_1F4875390;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4875390;
  this[1] = 0;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::NLv4ContextFeaturizerResponse(void *this, const sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *a2)
{
  *this = &unk_1F4875390;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::operator=(const sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *a1, const sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::NLv4ContextFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::~NLv4ContextFeaturizerResponse(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *a2, sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::NLv4ContextFeaturizerResponse(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4875390;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_1F4875390;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4875390;
    v6[1] = v4;
    sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::~NLv4ContextFeaturizerResponse(v6);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sirinluinternalsnlp_intermediate::ContextFeaturizerResponse::operator==(v2, v3);
  }
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::hash_value(sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse *this)
{
  v1 = *(this + 1);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    return sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluinternalsnlp_intermediate::NLv4ContextFeaturizerResponse::makeResponse(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRICOMMONUInt64ValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUserCancelledReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SIRINLUEXTERNALUUID);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v13->super.super.isa, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::formatText(sirinluinternalspanmatch::SpanMatchRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asrId");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "nl_context");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "token_chain");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[2];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  if (v3[4])
  {
    this = PB::Writer::write();
  }

  v6 = v3[1];
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::readFrom(sirinluinternalspanmatch::SpanMatchRequest *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_33;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 2)
      {
        if (v21 == 3)
        {
          operator new();
        }

        if (v21 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          operator new();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_33;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_33:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternalspanmatch::SpanMatchRequest::~SpanMatchRequest(sirinluinternalspanmatch::SpanMatchRequest *this)
{
  sirinluinternalspanmatch::SpanMatchRequest::~SpanMatchRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48753E0;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternalspanmatch::SpanMatchRequest::SpanMatchRequest(sirinluinternalspanmatch::SpanMatchRequest *this)
{
  *this = &unk_1F48753E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F48753E0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::SpanMatchRequest(uint64_t this, const sirinluinternalspanmatch::SpanMatchRequest *a2)
{
  *this = &unk_1F48753E0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::operator=(uint64_t a1, const sirinluinternalspanmatch::SpanMatchRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalspanmatch::SpanMatchRequest::SpanMatchRequest(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluinternalspanmatch::SpanMatchRequest::~SpanMatchRequest(v7);
  }

  return a1;
}

void *sirinluinternalspanmatch::swap(void *this, sirinluinternalspanmatch::SpanMatchRequest *a2, sirinluinternalspanmatch::SpanMatchRequest *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v6;
  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::SpanMatchRequest(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F48753E0;
  *(a1 + 24) = 0u;
  v5 = a2[3];
  a2[3] = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a2[2];
  a2[2] = 0;
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[4];
  a2[4] = 0;
  v10 = *(a1 + 32);
  *(a1 + 32) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = a2[1];
  a2[1] = 0;
  v12 = *v4;
  *v4 = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternalspanmatch::SpanMatchRequest::SpanMatchRequest(v7, a2);
    v3 = v8;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    v9 = v4;
    sirinluinternalspanmatch::SpanMatchRequest::~SpanMatchRequest(v7);
  }

  return a1;
}

BOOL sirinluinternalspanmatch::SpanMatchRequest::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || !sirinluinternal::TokenChain::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6)
  {
    if (!v7 || !sirinluexternal::NLContext::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = *(v9 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v9 + 8);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? a1[4] : *v8;
  v15 = v13 >= 0 ? a2[4] : *v9;
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

LABEL_26:
  v16 = a1[1];
  v17 = a2[1];
  result = (v16 | v17) == 0;
  if (v16 && v17)
  {
    v19 = a1[1];

    return sirinluexternal::UUID::operator==(v19, v17);
  }

  return result;
}

unint64_t sirinluinternalspanmatch::SpanMatchRequest::hash_value(sirinluinternalspanmatch::SpanMatchRequest *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = sirinluinternal::TokenChain::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    v5 = sirinluexternal::NLContext::hash_value(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    if (*(v7 + 28))
    {
      v8 = *(v7 + 8);
      if ((*(v7 + 28) & 2) != 0)
      {
LABEL_12:
        v9 = *(v7 + 16);
        if ((*(v7 + 28) & 4) != 0)
        {
LABEL_13:
          v10 = *(v7 + 24);
LABEL_17:
          v7 = v9 ^ v8 ^ v10;
          return v5 ^ v3 ^ v6 ^ v7;
        }

LABEL_16:
        v10 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      if ((*(v7 + 28) & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    v9 = 0;
    if ((*(v7 + 28) & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  return v5 ^ v3 ^ v6 ^ v7;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::makeNlContext(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalspanmatch::SpanMatchRequest::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::Task::formatText(sirinluexternal::Task *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "score");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::Task::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluexternal::Task::readFrom(sirinluexternal::Task *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::Task::~Task(sirinluexternal::Task *this)
{
  sirinluexternal::Task::~Task(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875430;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::Task::Task(void *this)
{
  *this = &unk_1F4875430;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4875430;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluexternal::Task::Task(void *this, const sirinluexternal::Task *a2)
{
  *this = &unk_1F4875430;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::Task::operator=(uint64_t a1, const sirinluexternal::Task *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::Task::Task(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternal::Task::~Task(&v6);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::Task *a2, sirinluexternal::Task *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

void *sirinluexternal::Task::Task(void *a1, void *a2)
{
  *a1 = &unk_1F4875430;
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v5 = a2[3];
  a2[3] = 0;
  v6 = a1[3];
  a1[3] = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a2[2];
  a2[2] = 0;
  v8 = a1[2];
  a1[2] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a2[1];
  a2[1] = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sirinluexternal::Task::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::Task::Task(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternal::Task::~Task(&v6);
  }

  return a1;
}

BOOL sirinluexternal::Task::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6)
  {
    if (!v7 || !sirinluexternal::UsoGraph::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = a1[1];
  v10 = a2[1];
  result = (v9 | v10) == 0;
  if (v9 && v10)
  {
    v11 = *(v10 + 16);
    if (*(v9 + 16))
    {
      if ((*(v10 + 16) & 1) != 0 && *(v9 + 8) == *(v10 + 8))
      {
        return 1;
      }
    }

    else if ((*(v10 + 16) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternal::Task::hash_value(sirinluexternal::Task *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 2);
  if (v7)
  {
    v7 = sirinluexternal::UsoGraph::hash_value(v7);
  }

  v8 = *(this + 1);
  if (v8 != 0.0)
  {
    if (*(*&v8 + 16))
    {
      v8 = *(*&v8 + 8);
      if (v8 == 0.0)
      {
        v8 = 0.0;
      }
    }

    else
    {
      v8 = 0.0;
    }
  }

  return v7 ^ v6 ^ *&v8;
}

uint64_t sirinluexternal::Task::makeTaskId(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::Task::makeTask(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::Task::makeScore(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToUndo::formatText(sirinluexternal::UserWantedToUndo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "reference");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserWantedToUndo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToUndo::readFrom(sirinluexternal::UserWantedToUndo *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluexternal::UserWantedToUndo::~UserWantedToUndo(sirinluexternal::UserWantedToUndo *this)
{
  sirinluexternal::UserWantedToUndo::~UserWantedToUndo(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875480;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::UserWantedToUndo::UserWantedToUndo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875480;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4875480;
  return this;
}

void *sirinluexternal::UserWantedToUndo::UserWantedToUndo(void *this, const sirinluexternal::UserWantedToUndo *a2)
{
  *this = &unk_1F4875480;
  this[1] = 0;
  this[2] = 0;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}