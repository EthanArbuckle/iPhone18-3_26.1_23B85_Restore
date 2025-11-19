uint64_t sub_1C899B10C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA238);
  __swift_project_value_buffer(v0, qword_1EC2BA238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.decodeMessage<A>(decoder:)()
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
        sub_1C899B534();
        break;
      case 2:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8962408();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C899B5E8();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C899B63C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C899B534()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0) + 32);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  return sub_1C8BD4C7C();
}

void sub_1C899B5E8()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

void sub_1C899B63C()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1060(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_253();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_210();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v12);
  v14 = OUTLINED_FUNCTION_49_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211_3();
  v32 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0);
  OUTLINED_FUNCTION_947(v32);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v17, v18, v19);
  if (v20)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAA88, &qword_1C8BFA998);
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_240_3();
    sub_1C8776818(v21, v22);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_504();
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v23 = *v0;
  v24 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v25 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v1))
  {
    OUTLINED_FUNCTION_513(*(v32 + 36));
    if (!v27 || (v28 = *v26, OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0), sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_445(), sub_1C8BD4E0C(), !v1))
      {
        if (!*(v0[3] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), OUTLINED_FUNCTION_345_0(), sub_1C8776818(v29, v30), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_445(), sub_1C8BD4E0C(), !v1))
        {
          v31 = v0 + *(v32 + 28);
          OUTLINED_FUNCTION_770();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v5);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v10 = OUTLINED_FUNCTION_233();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_211();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA90, &unk_1C8BFA9A0);
  OUTLINED_FUNCTION_223_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_103();
  v41 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0);
  v20 = v41[8];
  v21 = *(v2 + 56);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v1);
  if (!v22)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_17_6(v1 + v21);
    if (!v22)
    {
      OUTLINED_FUNCTION_28_10();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.== infix(_:_:)();
      v25 = v24;
      sub_1C88E3C58();
      OUTLINED_FUNCTION_229();
      sub_1C88E3C58();
      sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BAA90, &unk_1C8BFA9A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_6(v1 + v21);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
LABEL_13:
  v26 = *v0 == *v4 && v0[1] == v4[1];
  if (!v26 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = v41[9];
  v28 = *(v4 + v27 + 8);
  if (*(v0 + v27 + 8))
  {
    if (!v28)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35((v0 + v27));
    v31 = v22 && v29 == v30;
    if (!v31 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v28)
  {
    goto LABEL_10;
  }

  v32 = v0[2];
  v33 = v4[2];
  sub_1C87DC550();
  if (v34)
  {
    v35 = v0[3];
    v36 = v4[3];
    sub_1C87D9370();
    if (v37)
    {
      v38 = v41[7];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v39, v40);
      OUTLINED_FUNCTION_775();
      v23 = OUTLINED_FUNCTION_232_1();
      goto LABEL_11;
    }
  }

LABEL_10:
  v23 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C899BC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899BCDC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899BD4C()
{
  sub_1C8776818(&qword_1EC2BC098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899BDCC()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001ELL, 0x80000001C8C24560);
  qword_1EC2BA250 = 0xD00000000000002BLL;
  *algn_1EC2BA258 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899BE60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA260);
  __swift_project_value_buffer(v0, qword_1EC2BA260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C899C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6B8, &qword_1C8C0A560);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v23, &qword_1EC2BD6B8, &qword_1C8C0A560);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD6B8, &qword_1C8C0A560);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD6B8, &qword_1C8C0A560);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAD78, &qword_1C8BFABA0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C899C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6C0, &qword_1C8C0A568);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD6C0, &qword_1C8C0A568);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD6C0, &qword_1C8C0A568);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD6C0, &qword_1C8C0A568);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAD78, &qword_1C8BFABA0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_233();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_235_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C899CCF8(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C899CAE4(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_503_0();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition(0);
    OUTLINED_FUNCTION_113_1(v17);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C899CAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C899CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD78, &qword_1C8BFABA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB378, &unk_1C8BFAD40);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_134_3(v16);
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition(0);
      OUTLINED_FUNCTION_716(v21);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_503_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB378, &unk_1C8BFAD40);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C899D18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899D20C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899D27C()
{
  sub_1C8776818(&qword_1EC2BC0B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899D2FC()
{
  if (qword_1EC2B5848 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA250;
  v2 = *algn_1EC2BA258;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x797469746E452ELL, 0xE700000000000000);

  qword_1EC2BA278 = v1;
  unk_1EC2BA280 = v2;
  return result;
}

uint64_t sub_1C899D3C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA288);
  __swift_project_value_buffer(v0, qword_1EC2BA288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)()
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
        sub_1C899D770();
        break;
      case 2:
        OUTLINED_FUNCTION_857();
        OUTLINED_FUNCTION_8();
        sub_1C89C9A50();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C899D6BC();
        break;
    }
  }
}

uint64_t sub_1C899D6BC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C899D770()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v0;
  OUTLINED_FUNCTION_1053(v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = OUTLINED_FUNCTION_405_0(v12);
  v45 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v13);
  v14 = OUTLINED_FUNCTION_21(v45);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_115_3(v17, v44);
  v18 = OUTLINED_FUNCTION_233();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_217_1();
  v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v24);
  v26 = OUTLINED_FUNCTION_74_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = OUTLINED_FUNCTION_36_4();
  v46 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v29);
  v30 = *(v46 + 24);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v3);
  if (v31)
  {
    sub_1C8778ED8(v3, &qword_1EC2BAA88, &qword_1C8BFA998);
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_240_3();
    sub_1C8776818(v32, v33);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v34 = *v0;
  if (*(*v4 + 16))
  {
    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
    OUTLINED_FUNCTION_516_0();
    sub_1C8776818(v35, v36);
    OUTLINED_FUNCTION_574();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E0C();
    v37 = v46;
    if (v1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = v46;
  }

  v38 = *(v37 + 28);
  OUTLINED_FUNCTION_1035();
  sub_1C89CBE2C();
  v39 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_41_2(v39, v40);
  if (v31)
  {
    sub_1C8778ED8(v2, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
LABEL_13:
    v43 = v4 + *(v37 + 20);
    OUTLINED_FUNCTION_787();
    sub_1C8BD49DC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_1131();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_346_0();
  sub_1C8776818(v41, v42);
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_1078();
  OUTLINED_FUNCTION_718();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_98_1();
  sub_1C88E3C58();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C899DBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899DC20(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899DC90()
{
  sub_1C8776818(&qword_1EC2BC0C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899DD10()
{
  if (qword_1EC2B5848 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA250;
  v2 = *algn_1EC2BA258;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_1EC2BA2A0 = v1;
  *algn_1EC2BA2A8 = v2;
  return result;
}

uint64_t sub_1C899DDDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA2B0);
  __swift_project_value_buffer(v0, qword_1EC2BA2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)()
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
        sub_1C899E18C();
        break;
      case 2:
        OUTLINED_FUNCTION_846();
        OUTLINED_FUNCTION_8();
        sub_1C89C9A50();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C899E0D8();
        break;
    }
  }
}

uint64_t sub_1C899E0D8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  sub_1C8776818(&qword_1EC2BAF40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C899E18C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v4 = v0;
  OUTLINED_FUNCTION_1053(v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = OUTLINED_FUNCTION_405_0(v12);
  v45 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v13);
  v14 = OUTLINED_FUNCTION_21(v45);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_115_3(v17, v44);
  v18 = OUTLINED_FUNCTION_233();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_217_1();
  v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v24);
  v26 = OUTLINED_FUNCTION_74_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = OUTLINED_FUNCTION_36_4();
  v46 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v29);
  v30 = *(v46 + 24);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v3);
  if (v31)
  {
    sub_1C8778ED8(v3, &qword_1EC2BAA88, &qword_1C8BFA998);
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_240_3();
    sub_1C8776818(v32, v33);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v34 = *v0;
  if (*(*v4 + 16))
  {
    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(0);
    OUTLINED_FUNCTION_845();
    sub_1C8776818(v35, v36);
    OUTLINED_FUNCTION_574();
    OUTLINED_FUNCTION_718();
    sub_1C8BD4E0C();
    v37 = v46;
    if (v1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = v46;
  }

  v38 = *(v37 + 28);
  OUTLINED_FUNCTION_1035();
  sub_1C89CBE2C();
  v39 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_41_2(v39, v40);
  if (v31)
  {
    sub_1C8778ED8(v2, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
LABEL_13:
    v43 = v4 + *(v37 + 20);
    OUTLINED_FUNCTION_787();
    sub_1C8BD49DC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_1131();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_346_0();
  sub_1C8776818(v41, v42);
  OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_1078();
  OUTLINED_FUNCTION_718();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_98_1();
  sub_1C88E3C58();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C899E5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C899E63C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C899E6AC()
{
  sub_1C8776818(&qword_1EC2BC0E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C899E72C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C24510);
  qword_1EC2BA2C8 = 0xD00000000000002BLL;
  unk_1EC2BA2D0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C899E7C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA2D8);
  __swift_project_value_buffer(v0, qword_1EC2BA2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_1C8BFA950;
  v4 = v128 + v3 + v1[14];
  *(v128 + v3) = 1;
  *v4 = "unknown";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v128 + v3 + v2 + v1[14];
  *(v128 + v3 + v2) = 2;
  *v8 = "undoable";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v128 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sessionStarting";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v128 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "urlRepresentable";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v128 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "conditionallyEnabled";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v128 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "foregroundContinuable";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v128 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "changeBinarySetting";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v128 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "requiresMdmChecks";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v128 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "cut";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v128 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v7();
  v25 = (v128 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v7();
  v27 = (v128 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v128 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v7();
  v31 = (v128 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v7();
  v33 = (v128 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v7();
  v35 = (v128 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v128 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "closeEntity";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v128 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "createEntity";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v128 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "cutEntity";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v128 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "deleteEntity";
  *(v44 + 1) = 12;
  v44[16] = 2;
  v7();
  v45 = (v128 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "duplicateEntity";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v128 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "favoriteEntity";
  *(v48 + 1) = 14;
  v48[16] = 2;
  v7();
  v49 = (v128 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "openEntity";
  *(v50 + 1) = 10;
  v50[16] = 2;
  v7();
  v51 = (v128 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "previewEntity";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v128 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "saveEntity";
  *(v54 + 1) = 10;
  v54[16] = 2;
  v7();
  v55 = (v128 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "putEntityInContainer";
  *(v56 + 1) = 20;
  v56[16] = 2;
  v7();
  v57 = (v128 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "playVideo";
  *(v58 + 1) = 9;
  v58[16] = 2;
  v7();
  v59 = (v128 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "audioStarting";
  *(v60 + 1) = 13;
  v60[16] = 2;
  v7();
  v61 = (v128 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "audioRecording";
  *(v62 + 1) = 14;
  v62[16] = 2;
  v7();
  v63 = (v128 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "pushToTalkTransmission";
  *(v64 + 1) = 22;
  v64[16] = 2;
  v7();
  v65 = (v128 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "startDive";
  *(v66 + 1) = 9;
  v66[16] = 2;
  v7();
  v67 = (v128 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "startWorkout";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v128 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "pauseWorkout";
  *(v70 + 1) = 12;
  v70[16] = 2;
  v7();
  v71 = (v128 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "resumeWorkout";
  *(v72 + 1) = 13;
  v72[16] = 2;
  v7();
  v73 = (v128 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "enterMarkup";
  *(v74 + 1) = 11;
  v74[16] = 2;
  v7();
  v75 = (v128 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "exitMarkup";
  *(v76 + 1) = 10;
  v76[16] = 2;
  v7();
  v77 = (v128 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "focusConfiguration";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v128 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "widgetConfiguration";
  *(v80 + 1) = 19;
  v80[16] = 2;
  v7();
  v81 = (v128 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "search";
  *(v82 + 1) = 6;
  v82[16] = 2;
  v7();
  v83 = (v128 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "showSearchResultsInApp";
  *(v84 + 1) = 22;
  v84[16] = 2;
  v7();
  v85 = (v128 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "showStringSearchResultsInApp";
  *(v86 + 1) = 28;
  v86[16] = 2;
  v7();
  v87 = (v128 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "showInAppSearchResults";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v7();
  v89 = (v128 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "showInAppStringSearchResults";
  *(v90 + 1) = 28;
  v90[16] = 2;
  v7();
  v91 = (v128 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "moveSpatial";
  *(v92 + 1) = 11;
  v92[16] = 2;
  v7();
  v93 = (v128 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "navigateSequentially";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v128 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "sting";
  *(v96 + 1) = 5;
  v96[16] = 2;
  v7();
  v97 = (v128 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "toggle";
  *(v98 + 1) = 6;
  v98[16] = 2;
  v7();
  v99 = (v128 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "cameraCapture";
  *(v100 + 1) = 13;
  v100[16] = 2;
  v7();
  v101 = (v128 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "staccatoLongPress";
  *(v102 + 1) = 17;
  v102[16] = 2;
  v7();
  v103 = (v128 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "entityUpdating";
  *(v104 + 1) = 14;
  v104[16] = 2;
  v7();
  v105 = (v128 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "propertyUpdater";
  *(v106 + 1) = 15;
  v106[16] = 2;
  v7();
  v107 = (v128 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "sendMail";
  *(v108 + 1) = 8;
  v108[16] = 2;
  v7();
  v109 = (v128 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "setMailMessageIsRead";
  *(v110 + 1) = 20;
  v110[16] = 2;
  v7();
  v111 = (v128 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "siriKitIntent";
  *(v112 + 1) = 13;
  v112[16] = 2;
  v7();
  v113 = (v128 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "intentSideEffect";
  *(v114 + 1) = 16;
  v114[16] = 2;
  v7();
  v115 = (v128 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "assistantSchema";
  *(v116 + 1) = 15;
  v116[16] = 2;
  v7();
  v117 = (v128 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "rewriteWritingTool";
  *(v118 + 1) = 18;
  v118[16] = 2;
  v7();
  v119 = (v128 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "proofreadWritingTool";
  *(v120 + 1) = 20;
  v120[16] = 2;
  v7();
  v121 = (v128 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "assistantInvocable";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v7();
  v123 = (v128 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "appIntent";
  *(v124 + 1) = 9;
  v124[16] = 2;
  v7();
  v125 = (v128 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "systemFrameworkIntent";
  *(v126 + 1) = 21;
  v126[16] = 2;
  v7();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 52:
      case 53:
      case 57:
      case 58:
      case 59:
      case 61:
        OUTLINED_FUNCTION_0_18();
        sub_1C89BF374();
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C899FE64(v15, v16, v17, v18);
        break;
      case 27:
        v27 = OUTLINED_FUNCTION_33_4();
        sub_1C89A0320(v27, v28, v29, v30);
        break;
      case 43:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C89A07DC(v19, v20, v21, v22);
        break;
      case 50:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C89A0C98(v11, v12, v13, v14);
        break;
      case 51:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1154(v3, v4, v5, v6);
        break;
      case 54:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1610(v7, v8, v9, v10);
        break;
      case 55:
        v31 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1ACC(v31, v32, v33, v34);
        break;
      case 56:
        v35 = OUTLINED_FUNCTION_33_4();
        sub_1C89A1F88(v35, v36, v37, v38);
        break;
      case 60:
        v23 = OUTLINED_FUNCTION_33_4();
        sub_1C89A2444(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C899FE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD670, &qword_1C8C0A518);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD670, &qword_1C8C0A518);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD670, &qword_1C8C0A518);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD670, &qword_1C8C0A518);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A0320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD678, &qword_1C8C0A520);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD678, &qword_1C8C0A520);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD678, &qword_1C8C0A520);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD678, &qword_1C8C0A520);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A07DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD680, &qword_1C8C0A528);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD680, &qword_1C8C0A528);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD680, &qword_1C8C0A528);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD680, &qword_1C8C0A528);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A0C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD688, &qword_1C8C0A530);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD688, &qword_1C8C0A530);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD688, &qword_1C8C0A530);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD688, &qword_1C8C0A530);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A1154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD690, &qword_1C8C0A538);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD690, &qword_1C8C0A538);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD690, &qword_1C8C0A538);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD690, &qword_1C8C0A538);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A1610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD698, &qword_1C8C0A540);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD698, &qword_1C8C0A540);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD698, &qword_1C8C0A540);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD698, &qword_1C8C0A540);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6A0, &qword_1C8C0A548);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD6A0, &qword_1C8C0A548);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD6A0, &qword_1C8C0A548);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD6A0, &qword_1C8C0A548);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6A8, &qword_1C8C0A550);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD6A8, &qword_1C8C0A550);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD6A8, &qword_1C8C0A550);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD6A8, &qword_1C8C0A550);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89A2444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6B0, &qword_1C8C0A558);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD6B0, &qword_1C8C0A558);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD6B0, &qword_1C8C0A558);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD6B0, &qword_1C8C0A558);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6088, &qword_1C8BFABB0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  v3 = OUTLINED_FUNCTION_233();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_72_2(v0);
  if (v9)
  {
    goto LABEL_67;
  }

  OUTLINED_FUNCTION_377();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_69_3();
      sub_1C89B7434();
      break;
    case 2u:
      OUTLINED_FUNCTION_502_0();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A2FF0();
      break;
    case 3u:
      OUTLINED_FUNCTION_502_0();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A312C();
      break;
    case 4u:
      v70 = OUTLINED_FUNCTION_69_3();
      sub_1C89A3268(v70, v71, v72, v73);
      break;
    case 5u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A347C();
      break;
    case 6u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A35B8();
      break;
    case 7u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A36F4();
      break;
    case 8u:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3830();
      break;
    case 9u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A396C();
      break;
    case 0xAu:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3AA8();
      break;
    case 0xBu:
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3BE4();
      break;
    case 0xCu:
      OUTLINED_FUNCTION_167_2();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3D20();
      break;
    case 0xDu:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3E5C();
      break;
    case 0xEu:
      OUTLINED_FUNCTION_502_0();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A3F98();
      break;
    case 0xFu:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A40D4();
      break;
    case 0x10u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A4210();
      break;
    case 0x11u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A434C();
      break;
    case 0x12u:
      OUTLINED_FUNCTION_166_3();
      OUTLINED_FUNCTION_69_3();
      sub_1C89A4488();
      break;
    case 0x13u:
      v126 = OUTLINED_FUNCTION_69_3();
      sub_1C89A45C4(v126, v127, v128, v129);
      break;
    case 0x14u:
      v98 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4804(v98, v99, v100, v101);
      break;
    case 0x15u:
      v102 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4A44(v102, v103, v104, v105);
      break;
    case 0x16u:
      v118 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4C84(v118, v119, v120, v121);
      break;
    case 0x17u:
      v142 = OUTLINED_FUNCTION_69_3();
      sub_1C89A4EC4(v142, v143, v144, v145);
      break;
    case 0x18u:
      v86 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5104(v86, v87, v88, v89);
      break;
    case 0x19u:
      v82 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5344(v82, v83, v84, v85);
      break;
    case 0x1Au:
      v158 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5584(v158, v159, v160, v161);
      break;
    case 0x1Bu:
      v42 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5798(v42, v43, v44, v45);
      break;
    case 0x1Cu:
      v146 = OUTLINED_FUNCTION_69_3();
      sub_1C89A59D8(v146, v147, v148, v149);
      break;
    case 0x1Du:
      v150 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5C18(v150, v151, v152, v153);
      break;
    case 0x1Eu:
      v106 = OUTLINED_FUNCTION_69_3();
      sub_1C89A5E58(v106, v107, v108, v109);
      break;
    case 0x1Fu:
      v90 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6098(v90, v91, v92, v93);
      break;
    case 0x20u:
      v110 = OUTLINED_FUNCTION_69_3();
      sub_1C89A62D8(v110, v111, v112, v113);
      break;
    case 0x21u:
      v54 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6518(v54, v55, v56, v57);
      break;
    case 0x22u:
      v46 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6758(v46, v47, v48, v49);
      break;
    case 0x23u:
      v34 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6998(v34, v35, v36, v37);
      break;
    case 0x24u:
      v38 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6BD8(v38, v39, v40, v41);
      break;
    case 0x25u:
      v18 = OUTLINED_FUNCTION_69_3();
      sub_1C89A6E18(v18, v19, v20, v21);
      break;
    case 0x26u:
      v154 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7058(v154, v155, v156, v157);
      break;
    case 0x27u:
      v122 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7298(v122, v123, v124, v125);
      break;
    case 0x28u:
      v74 = OUTLINED_FUNCTION_69_3();
      sub_1C89A74D8(v74, v75, v76, v77);
      break;
    case 0x29u:
      v94 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7718(v94, v95, v96, v97);
      break;
    case 0x2Au:
      v134 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7958(v134, v135, v136, v137);
      break;
    case 0x2Bu:
      v14 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7B6C(v14, v15, v16, v17);
      break;
    case 0x2Cu:
      v50 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7DAC(v50, v51, v52, v53);
      break;
    case 0x2Du:
      v114 = OUTLINED_FUNCTION_69_3();
      sub_1C89A7FEC(v114, v115, v116, v117);
      break;
    case 0x2Eu:
      v174 = OUTLINED_FUNCTION_69_3();
      sub_1C89A822C(v174, v175, v176, v177);
      break;
    case 0x2Fu:
      v26 = OUTLINED_FUNCTION_69_3();
      sub_1C89A846C(v26, v27, v28, v29);
      break;
    case 0x30u:
      v58 = OUTLINED_FUNCTION_69_3();
      sub_1C89A86AC(v58, v59, v60, v61);
      break;
    case 0x31u:
      v66 = OUTLINED_FUNCTION_69_3();
      sub_1C89A88EC(v66, v67, v68, v69);
      break;
    case 0x32u:
      v10 = OUTLINED_FUNCTION_69_3();
      sub_1C89A8B00(v10, v11, v12, v13);
      break;
    case 0x33u:
      v178 = OUTLINED_FUNCTION_69_3();
      sub_1C89A8D14(v178, v179, v180, v181);
      break;
    case 0x34u:
      v170 = OUTLINED_FUNCTION_69_3();
      sub_1C89A8F54(v170, v171, v172, v173);
      break;
    case 0x35u:
      v22 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9194(v22, v23, v24, v25);
      break;
    case 0x36u:
      v162 = OUTLINED_FUNCTION_69_3();
      sub_1C89A93A8(v162, v163, v164, v165);
      break;
    case 0x37u:
      v166 = OUTLINED_FUNCTION_69_3();
      sub_1C89A95BC(v166, v167, v168, v169);
      break;
    case 0x38u:
      v30 = OUTLINED_FUNCTION_69_3();
      sub_1C89A97D0(v30, v31, v32, v33);
      break;
    case 0x39u:
      v130 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9A10(v130, v131, v132, v133);
      break;
    case 0x3Au:
      v62 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9C50(v62, v63, v64, v65);
      break;
    case 0x3Bu:
      v138 = OUTLINED_FUNCTION_69_3();
      sub_1C89A9E90(v138, v139, v140, v141);
      break;
    case 0x3Cu:
      v78 = OUTLINED_FUNCTION_69_3();
      sub_1C89AA0A4(v78, v79, v80, v81);
      break;
    default:
      OUTLINED_FUNCTION_69_3();
      sub_1C89B72FC();
      break;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_157_3();
    sub_1C88E3C58();
LABEL_67:
    v182 = v1 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0) + 20);
    OUTLINED_FUNCTION_55();
    sub_1C8BD49DC();
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_157_3();
  sub_1C88E3C58();
LABEL_68:
  OUTLINED_FUNCTION_1066();
}

void sub_1C89A2FF0()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A312C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

uint64_t sub_1C89A3268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void sub_1C89A347C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A35B8()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A36F4()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3830()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A396C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3AA8()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3BE4()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3D20()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3E5C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A3F98()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A40D4()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A4210()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A434C()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89A4488()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

uint64_t sub_1C89A45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A4EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A62D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A74D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A7FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A86AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A88EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A8B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89A9E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89AA0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6088, &qword_1C8BFABB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2BD608, MEMORY[0x1E69AA8E8]);
      sub_1C8BD4D4C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89AA564(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AA5E4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AA654()
{
  sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AA6D4()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000015, 0x80000001C8C240E0);

  qword_1EC2BA2F0 = v1;
  *algn_1EC2BA2F8 = v2;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4B3C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (*v0 != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
  {
    v3 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0) + 20);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C89AA930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AA9B0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AAA20()
{
  sub_1C8776818(&qword_1EC2BC110, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AAAA0()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x64695679616C502ELL, 0xEA00000000006F65);

  qword_1EC2BA318 = v1;
  unk_1EC2BA320 = v2;
  return result;
}

uint64_t sub_1C89AAC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AACD8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AAD48()
{
  sub_1C8776818(&qword_1EC2BC128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AADC8()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001DLL, 0x80000001C8C240B0);

  qword_1EC2BA340 = v1;
  *algn_1EC2BA348 = v2;
  return result;
}

uint64_t sub_1C89AAEFC()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t sub_1C89AAFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AB064(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AB0D4()
{
  sub_1C8776818(&qword_1EC2BC140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AB154()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x55797469746E452ELL, 0xEF676E6974616470);

  qword_1EC2BA368 = v1;
  unk_1EC2BA370 = v2;
  return result;
}

uint64_t sub_1C89AB33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AB3BC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AB42C()
{
  sub_1C8776818(&qword_1EC2BC158, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AB4AC()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24090);

  qword_1EC2BA390 = v1;
  *algn_1EC2BA398 = v2;
  return result;
}

uint64_t sub_1C89AB574()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA3A0);
  __swift_project_value_buffer(v0, qword_1EC2BA3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89AB838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AB8B8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AB928()
{
  sub_1C8776818(&qword_1EC2BC170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AB9A8()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74694B697269532ELL, 0xEE00746E65746E49);

  qword_1EC2BA3B8 = v1;
  unk_1EC2BA3C0 = v2;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_465();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t sub_1C89ABBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89ABC50(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89ABCC0()
{
  sub_1C8776818(&qword_1EC2BC188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89ABD40()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C24040);

  qword_1EC2BA3E0 = v1;
  *algn_1EC2BA3E8 = v2;
  return result;
}

uint64_t sub_1C89ABE08()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA3F0);
  __swift_project_value_buffer(v0, qword_1EC2BA3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "stateChange";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)()
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

    if (v1 == 3)
    {
      v3 = OUTLINED_FUNCTION_33_4();
      sub_1C89AC0FC(v3);
    }

    else if (v1 == 2 || v1 == 1)
    {
      OUTLINED_FUNCTION_36_6();
      sub_1C89BF374();
    }
  }
}

uint64_t sub_1C89AC0FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD90, &qword_1C8BFABC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v12 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2BAD90, &qword_1C8BFABC0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v13 = 0;
    v14 = 1;
    result = sub_1C8BD4B9C();
    if (!v1 && (v14 & 1) == 0)
    {
      v9 = v13;
      v10 = v12;
      sub_1C8778ED8(v12, &qword_1EC2BAD90, &qword_1C8BFABC0);
      *v10 = v9;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
    }
  }

  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v12 = v0;
      sub_1C89B72FC();
LABEL_8:
      OUTLINED_FUNCTION_104_0();
      sub_1C88E3C58();
      if (v12)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = v0;
      sub_1C89B7434();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_9_4();
    sub_1C89AC408();
    if (v1)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
  OUTLINED_FUNCTION_113_1(v10);
LABEL_11:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89AC408()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD90, &qword_1C8BFABC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAD90, &qword_1C8BFABC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      return sub_1C8BD4D8C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89AC5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AC650(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AC6C0()
{
  sub_1C8776818(&qword_1EC2BC1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AC740()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24010);

  qword_1EC2BA408 = v1;
  unk_1EC2BA410 = v2;
  return result;
}

void sub_1C89AC878()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_638();
      sub_1C89AC8D4();
    }
  }
}

void sub_1C89AC8D4()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_9_2();
  v1 = *(v0(0) + 20);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_240_3();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_1141();
  OUTLINED_FUNCTION_195();
  sub_1C8BD4C7C();
  OUTLINED_FUNCTION_177_0();
}

void sub_1C89AC974()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  OUTLINED_FUNCTION_1053(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_299_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_17_4();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v13);
  v15 = OUTLINED_FUNCTION_229_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v18 = OUTLINED_FUNCTION_402();
  v19 = *(v3(v18) + 20);
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72_2(v1);
  if (v20)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
LABEL_5:
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  sub_1C88E3EC4();
  OUTLINED_FUNCTION_240_3();
  sub_1C8776818(v21, v22);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_504();
  OUTLINED_FUNCTION_169_3();
  sub_1C88E3C58();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89ACB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89ACC04(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89ACC74()
{
  sub_1C8776818(&qword_1EC2BC1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89ACCF4()
{
  if (qword_1EC2B5878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA2C8;
  v2 = unk_1EC2BA2D0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x65746E497070412ELL, 0xEA0000000000746ELL);

  qword_1EC2BA430 = v1;
  *algn_1EC2BA438 = v2;
  return result;
}

uint64_t sub_1C89ACEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD298, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89ACF28(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89ACF98()
{
  sub_1C8776818(&qword_1EC2BC1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent);

  return sub_1C8BD4CFC();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_121();
    result = sub_1C8BD4AFC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_1C89AD154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD290, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89AD1D4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC1E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89AD244()
{
  sub_1C8776818(&qword_1EC2BC1E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89AD2C0()
{
  if (qword_1EC2B5918 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA458;
  v2 = qword_1EC2BA460;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F69737265562ELL, 0xE900000000000031);

  qword_1EC2BA480 = v1;
  *algn_1EC2BA488 = v2;
  return result;
}

uint64_t sub_1C89AD388()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA490);
  __swift_project_value_buffer(v0, qword_1EC2BA490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C8BFA960;
  v4 = v49 + v3;
  v5 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "toolType";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameters";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "outputType";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "outputResultName";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sourceApplication";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "descriptionSummary";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "categories";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "searchKeywords";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "deprecationDefinition";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "requirements";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "flags";
  *(v31 + 1) = 5;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "authenticationPolicy";
  *(v33 + 1) = 20;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "sampleInvocations";
  *(v35 + 1) = 17;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "systemProtocols";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "customIcon";
  *(v39 + 1) = 10;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "hiddenParameters";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "sourceContainer";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "attributionContainer";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "visibilityFlags";
  *(v47 + 1) = 15;
  v47[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C89ADA34()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType;
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories) = v1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords) = v1;
  v8 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements) = v1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags) = v1;
  v10 = v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations) = v1;
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols) = v1;
  v11 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon;
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters) = v1;
  v13 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceContainer;
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags) = v1;
  return v0;
}

uint64_t sub_1C89ADBE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v95 = v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = v85 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85[2] = v85 - v17;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v85[0] = v1 + 48;
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = 1;
  *(v1 + 64) = v18;
  v19 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType;
  v85[1] = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType;
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = (v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication;
  v85[3] = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication;
  v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = (v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  v86 = (v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  *v24 = 0;
  v24[1] = 0;
  v87 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories) = v18;
  v89 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords) = v18;
  v25 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition;
  v90 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition;
  v26 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v91 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements) = v18;
  v92 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags) = v18;
  v27 = v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  v93 = v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
  *v27 = 0;
  *(v27 + 8) = 1;
  v94 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations) = v18;
  v96 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols) = v18;
  v28 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon;
  v97 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon;
  v29 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v98 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters) = v18;
  v30 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceContainer;
  v31 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v99 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer, 1, 1, v31);
  v100 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
  *(v1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags) = v18;
  swift_beginAccess();
  v32 = *(a1 + 16);
  v33 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v32;
  *(v1 + 24) = v33;
  swift_beginAccess();
  v35 = *(a1 + 32);
  v34 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v35;
  *(v1 + 40) = v34;

  swift_beginAccess();
  v36 = *(a1 + 48);
  LOBYTE(v35) = *(a1 + 56);
  v37 = v85[0];
  swift_beginAccess();
  *v37 = v36;
  *(v1 + 56) = v35;
  swift_beginAccess();
  v38 = *(a1 + 64);
  swift_beginAccess();
  v39 = *(v1 + 64);
  *(v1 + 64) = v38;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v40 = (a1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  swift_beginAccess();
  v43 = v21[1];
  *v21 = v42;
  v21[1] = v41;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v44 = (a1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v86;
  swift_beginAccess();
  v48 = v47[1];
  *v47 = v46;
  v47[1] = v45;

  v49 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v87;
  swift_beginAccess();
  v52 = *(v1 + v51);
  *(v1 + v51) = v50;

  v53 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
  swift_beginAccess();
  v54 = *(a1 + v53);
  v55 = v89;
  swift_beginAccess();
  v56 = *(v1 + v55);
  *(v1 + v55) = v54;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v57 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
  swift_beginAccess();
  v58 = *(a1 + v57);
  v59 = v91;
  swift_beginAccess();
  v60 = *(v1 + v59);
  *(v1 + v59) = v58;

  v61 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
  swift_beginAccess();
  v62 = *(a1 + v61);
  v63 = v92;
  swift_beginAccess();
  v64 = *(v1 + v63);
  *(v1 + v63) = v62;

  v65 = (a1 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy);
  swift_beginAccess();
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v93;
  swift_beginAccess();
  *v67 = v66;
  *(v67 + 8) = v65;
  v68 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = v94;
  swift_beginAccess();
  v71 = *(v1 + v70);
  *(v1 + v70) = v69;

  v72 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
  swift_beginAccess();
  v73 = *(a1 + v72);
  v74 = v96;
  swift_beginAccess();
  v75 = *(v1 + v74);
  *(v1 + v74) = v73;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v76 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
  swift_beginAccess();
  v77 = *(a1 + v76);
  v78 = v98;
  swift_beginAccess();
  v79 = *(v1 + v78);
  *(v1 + v78) = v77;

  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v80 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
  swift_beginAccess();
  v81 = *(a1 + v80);

  v82 = v100;
  swift_beginAccess();
  v83 = *(v1 + v82);
  *(v1 + v82) = v81;

  return v1;
}

void *sub_1C89AE6D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputType, &qword_1EC2B60D8, &qword_1C8BE6D88);
  v4 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceApplication, &qword_1EC2BADB8, &qword_1C8BFABD8);
  v5 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary + 8);

  v6 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories);

  v7 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__deprecationDefinition, &qword_1EC2BADE0, &qword_1C8BFABE0);
  v8 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements);

  v9 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags);

  v10 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations);

  v11 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__customIcon, &qword_1EC2BAE18, &qword_1C8BFABE8);
  v12 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sourceContainer, &qword_1EC2BAE30, &unk_1C8BFABF0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__attributionContainer, &qword_1EC2BAE30, &unk_1C8BFABF0);
  v13 = *(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags);

  return v0;
}

uint64_t sub_1C89AE894(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0]();
}

uint64_t sub_1C89AE954()
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
        sub_1C89AECD0();
        break;
      case 2:
        sub_1C89AED2C();
        break;
      case 3:
        sub_1C89AED88();
        break;
      case 4:
        sub_1C89AEE1C();
        break;
      case 5:
        sub_1C89AEEE8();
        break;
      case 6:
      case 8:
        sub_1C89AF0A0();
        break;
      case 7:
        sub_1C89AEFC4();
        break;
      case 9:
        sub_1C89AF10C();
        break;
      case 10:
        sub_1C89AF1E8();
        break;
      case 11:
        sub_1C89AF274();
        break;
      case 12:
        sub_1C89AF350();
        break;
      case 13:
      case 21:
        sub_1C89AF9CC();
        break;
      case 14:
        sub_1C89AF42C();
        break;
      case 15:
        sub_1C89AF4A4();
        break;
      case 16:
        sub_1C89AF580();
        break;
      case 17:
        sub_1C89AF65C();
        break;
      case 18:
        sub_1C89AF738();
        break;
      case 19:
        sub_1C89AF814();
        break;
      case 20:
        sub_1C89AF8F0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89AECD0()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  sub_1C8BD4C2C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C89AED2C()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  sub_1C8BD4C2C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C89AED88()
{
  swift_beginAccess();
  sub_1C89DF208();
  sub_1C8BD4B5C();
  return swift_endAccess();
}

uint64_t sub_1C89AEE1C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
  sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AEEE8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AEFC4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF0A0()
{
  OUTLINED_FUNCTION_534_0();
  v2 = *v1;
  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  v0();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C89AF10C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category(0);
  sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF1E8()
{
  swift_beginAccess();
  sub_1C8BD4BDC();
  return swift_endAccess();
}

uint64_t sub_1C89AF274()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF350()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0);
  sub_1C8776818(&qword_1EC2BAF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF42C()
{
  OUTLINED_FUNCTION_1152();
  OUTLINED_FUNCTION_801();
  v2 = *v1;
  OUTLINED_FUNCTION_540();
  v3 = swift_beginAccess();
  v0(v3);
  OUTLINED_FUNCTION_991();
  sub_1C8BD4B5C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C89AF4A4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0);
  sub_1C8776818(&qword_1EC2BAF78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF580()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0);
  sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF65C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF738()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
  sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C89AF814()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF8F0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89AF9CC()
{
  OUTLINED_FUNCTION_1152();
  OUTLINED_FUNCTION_801();
  v2 = *v1;
  OUTLINED_FUNCTION_540();
  v3 = swift_beginAccess();
  v0(v3);
  OUTLINED_FUNCTION_991();
  sub_1C8BD4B1C();
  return OUTLINED_FUNCTION_53_1();
}

uint64_t sub_1C89AFA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_696();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_119();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C89AFAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = v76 - v11;
  v80 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  v12 = *(*(v80 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v76[2] = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76[3] = v76 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v81 = v76 - v18;
  v82 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  v19 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v79 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v84 = v76 - v23;
  v85 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  v24 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v87 = v76 - v28;
  v88 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  v29 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v76 - v33;
  v35 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  swift_beginAccess();
  v93 = a1;
  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_1C8BD4DDC();
    if (v4)
    {
    }
  }

  v40 = v93;
  swift_beginAccess();
  v41 = *(v40 + 32);
  v42 = *(v40 + 40);
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {

    sub_1C8BD4DDC();
    if (!v4)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  v44 = v93;
  swift_beginAccess();
  if (*(v44 + 48))
  {
    v45 = *(v44 + 56);
    v91 = *(v44 + 48);
    v92 = v45;
    sub_1C89DF208();
    result = sub_1C8BD4D4C();
    if (v4)
    {
      return result;
    }
  }

  v76[1] = a3;
  swift_beginAccess();
  if (*(*(v44 + 64) + 16))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
    sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

    sub_1C8BD4E0C();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_1C8778ED8(v34, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
    sub_1C8BD4E2C();
    if (v4)
    {
      return sub_1C88E3C58();
    }

    sub_1C88E3C58();
  }

  v47 = (v93 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  swift_beginAccess();
  if (v47[1])
  {
    v48 = *v47;
    v49 = v47[1];

    sub_1C8BD4DDC();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v50 = v87;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v50, 1, v88) == 1)
  {
    sub_1C8778ED8(v50, &qword_1EC2BADB8, &qword_1C8BFABD8);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);
    sub_1C8BD4E2C();
    if (v4)
    {
      return sub_1C88E3C58();
    }

    sub_1C88E3C58();
  }

  v51 = (v93 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  swift_beginAccess();
  if (v51[1])
  {
    v52 = *v51;
    v53 = v51[1];

    sub_1C8BD4DDC();
    if (v4)
    {
    }
  }

  v54 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
  v55 = v93;
  swift_beginAccess();
  if (*(*(v55 + v54) + 16))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category(0);
    sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

    sub_1C8BD4E0C();
    if (v4)
    {
    }
  }

  v56 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
  v57 = v93;
  swift_beginAccess();
  if (*(*(v57 + v56) + 16))
  {

    sub_1C8BD4DAC();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v58 = v84;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v58, 1, v85) != 1)
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);
    sub_1C8BD4E2C();
    if (!v4)
    {
      sub_1C88E3C58();
      goto LABEL_44;
    }

    return sub_1C88E3C58();
  }

  sub_1C8778ED8(v58, &qword_1EC2BADE0, &qword_1C8BFABE0);
LABEL_44:
  v59 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
  v60 = v93;
  swift_beginAccess();
  if (*(*(v60 + v59) + 16))
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0);
    sub_1C8776818(&qword_1EC2BAF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement);

    sub_1C8BD4E0C();
    if (v4)
    {
    }
  }

  v61 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
  v62 = v93;
  swift_beginAccess();
  if (*(*(v62 + v61) + 16))
  {
    sub_1C89DF1B4();

    sub_1C8BD4D1C();
    if (v4)
    {
    }
  }

  v63 = (v93 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy);
  swift_beginAccess();
  if (!*v63 || (v64 = *(v63 + 8), v89 = *v63, v90 = v64, sub_1C89DF10C(), result = sub_1C8BD4D4C(), !v4))
  {
    v65 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
    v66 = v93;
    swift_beginAccess();
    if (!*(*(v66 + v65) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), sub_1C8776818(&qword_1EC2BAF78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition), , sub_1C8BD4E0C(), result = , !v4))
    {
      v67 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
      v68 = v93;
      swift_beginAccess();
      if (!*(*(v68 + v67) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(0), sub_1C8776818(&qword_1EC2BC0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol), , sub_1C8BD4E0C(), result = , !v4))
      {
        swift_beginAccess();
        v69 = v81;
        sub_1C89CBE2C();
        if (__swift_getEnumTagSinglePayload(v69, 1, v82) == 1)
        {
          sub_1C8778ED8(v69, &qword_1EC2BAE18, &qword_1C8BFABE8);
        }

        else
        {
          sub_1C88E3EC4();
          sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);
          sub_1C8BD4E2C();
          result = sub_1C88E3C58();
          if (v4)
          {
            return result;
          }
        }

        v70 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
        v71 = v93;
        swift_beginAccess();
        if (!*(*(v71 + v70) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0), sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter), , sub_1C8BD4E0C(), result = , !v4))
        {
          swift_beginAccess();
          v72 = v78;
          sub_1C89CBE2C();
          if (__swift_getEnumTagSinglePayload(v72, 1, v80) == 1)
          {
            sub_1C8778ED8(v72, &qword_1EC2BAE30, &unk_1C8BFABF0);
          }

          else
          {
            sub_1C88E3EC4();
            sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
            sub_1C8BD4E2C();
            result = sub_1C88E3C58();
            if (v4)
            {
              return result;
            }
          }

          v73 = v93;
          swift_beginAccess();
          v74 = v77;
          sub_1C89CBE2C();
          if (__swift_getEnumTagSinglePayload(v74, 1, v80) == 1)
          {
            sub_1C8778ED8(v74, &qword_1EC2BAE30, &unk_1C8BFABF0);
          }

          else
          {
            sub_1C88E3EC4();
            sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);
            sub_1C8BD4E2C();
            result = sub_1C88E3C58();
            if (v4)
            {
              return result;
            }

            v73 = v93;
          }

          v75 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
          result = swift_beginAccess();
          if (*(*(v73 + v75) + 16))
          {
            sub_1C89DF160();

            sub_1C8BD4D1C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C89B0D48(uint64_t a1, uint64_t a2)
{
  v199 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  v4 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v193 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD650, &qword_1C8C0A4F8);
  v6 = *(*(v197 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v197);
  v9 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v200 = &v189 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v192 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v194 = &v189 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v195 = &v189 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v198 = &v189 - v19;
  v204 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  v20 = *(*(v204 - 8) + 64);
  MEMORY[0x1EEE9AC00](v204);
  v196 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD658, &qword_1C8C0A500);
  v22 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v205 = &v189 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v201 = &v189 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v203 = &v189 - v28;
  v209 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  v29 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v206 = (&v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD660, &qword_1C8C0A508);
  v31 = *(*(v208 - 8) + 64);
  MEMORY[0x1EEE9AC00](v208);
  v210 = &v189 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v207 = (&v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v217 = &v189 - v37;
  v214 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  v38 = *(*(v214 - 8) + 64);
  MEMORY[0x1EEE9AC00](v214);
  v211 = &v189 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD668, &qword_1C8C0A510);
  v40 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v215 = &v189 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v212 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v219 = &v189 - v46;
  v47 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v216 = &v189 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v189 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v218 = &v189 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v189 - v58;
  swift_beginAccess();
  v61 = *(a1 + 16);
  v60 = *(a1 + 24);
  swift_beginAccess();
  v62 = v61 == *(a2 + 16) && v60 == *(a2 + 24);
  if (v62 || (sub_1C8BD529C() & 1) != 0)
  {
    swift_beginAccess();
    v63 = *(a1 + 32);
    v64 = *(a1 + 40);
    swift_beginAccess();
    v65 = v63 == *(a2 + 32) && v64 == *(a2 + 40);
    if (v65 || (sub_1C8BD529C() & 1) != 0)
    {
      swift_beginAccess();
      v66 = *(a1 + 48);
      v67 = *(a1 + 56);
      swift_beginAccess();
      v68 = *(a2 + 56);
      if (sub_1C87E4678(v66, v67, *(a2 + 48)))
      {
        v189 = v9;
        swift_beginAccess();
        v69 = *(a1 + 64);
        swift_beginAccess();
        v70 = *(a2 + 64);

        sub_1C87DC550();
        v71 = a2;
        v73 = v72;

        if ((v73 & 1) == 0)
        {
          v78 = 0;
LABEL_36:

          return v78 & 1;
        }

        swift_beginAccess();
        v190 = a1;
        sub_1C89CBE2C();
        swift_beginAccess();
        v74 = *(v50 + 48);
        sub_1C89CBE2C();
        v191 = v71;
        sub_1C89CBE2C();
        if (__swift_getEnumTagSinglePayload(v53, 1, v47) == 1)
        {
          sub_1C8778ED8(v59, &qword_1EC2B60D8, &qword_1C8BE6D88);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v53[v74], 1, v47);
          v76 = v190;
          v77 = v219;
          if (EnumTagSinglePayload == 1)
          {
            sub_1C8778ED8(v53, &qword_1EC2B60D8, &qword_1C8BE6D88);
            goto LABEL_26;
          }
        }

        else
        {
          v79 = v218;
          sub_1C89CBE2C();
          v80 = __swift_getEnumTagSinglePayload(&v53[v74], 1, v47);
          v77 = v219;
          if (v80 != 1)
          {
            v84 = v216;
            sub_1C88E3EC4();
            v85 = *(v47 + 20);
            v76 = v190;
            if (*&v79[v85] == *&v84[v85] || (v86 = *&v79[v85], , , sub_1C896B338(), v88 = v87, , , (v88 & 1) != 0))
            {
              sub_1C8BD49FC();
              sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
              v89 = sub_1C8BD517C();
              sub_1C88E3C58();
              sub_1C8778ED8(v59, &qword_1EC2B60D8, &qword_1C8BE6D88);
              sub_1C88E3C58();
              sub_1C8778ED8(v53, &qword_1EC2B60D8, &qword_1C8BE6D88);
              if ((v89 & 1) == 0)
              {
                goto LABEL_22;
              }

LABEL_26:
              v90 = (v76 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
              swift_beginAccess();
              v91 = *v90;
              v92 = v90[1];
              v93 = (v191 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
              swift_beginAccess();
              v94 = v93[1];
              if (v92)
              {
                v95 = v217;
                if (!v94)
                {
                  goto LABEL_35;
                }

                v96 = v91 == *v93 && v92 == v94;
                if (!v96 && (sub_1C8BD529C() & 1) == 0)
                {
                  goto LABEL_35;
                }
              }

              else
              {
                v95 = v217;
                if (v94)
                {
                  goto LABEL_35;
                }
              }

              swift_beginAccess();
              sub_1C89CBE2C();
              swift_beginAccess();
              v98 = *(v213 + 48);
              v99 = v215;
              sub_1C89CBE2C();
              v100 = v99;
              sub_1C89CBE2C();
              v101 = v214;
              if (__swift_getEnumTagSinglePayload(v99, 1, v214) == 1)
              {
                sub_1C8778ED8(v77, &qword_1EC2BADB8, &qword_1C8BFABD8);
                if (__swift_getEnumTagSinglePayload(v99 + v98, 1, v101) == 1)
                {
                  sub_1C8778ED8(v99, &qword_1EC2BADB8, &qword_1C8BFABD8);
LABEL_47:
                  v104 = (v76 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
                  swift_beginAccess();
                  v105 = *v104;
                  v106 = v104[1];
                  v107 = v191;
                  v108 = (v191 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
                  swift_beginAccess();
                  v109 = v108[1];
                  if (v106)
                  {
                    if (!v109)
                    {
                      goto LABEL_35;
                    }

                    v110 = v105 == *v108 && v106 == v109;
                    if (!v110 && (sub_1C8BD529C() & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  else if (v109)
                  {
                    goto LABEL_35;
                  }

                  v111 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
                  swift_beginAccess();
                  v112 = *(v76 + v111);
                  v113 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__categories;
                  swift_beginAccess();
                  v114 = *(v107 + v113);

                  sub_1C87E27F4();
                  v115 = v107;
                  v117 = v116;

                  if ((v117 & 1) == 0)
                  {
                    goto LABEL_73;
                  }

                  v118 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
                  swift_beginAccess();
                  v119 = *(v76 + v118);
                  v120 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__searchKeywords;
                  swift_beginAccess();
                  if ((sub_1C87D2814(v119, *(v115 + v120)) & 1) == 0)
                  {
                    goto LABEL_35;
                  }

                  swift_beginAccess();
                  sub_1C89CBE2C();
                  swift_beginAccess();
                  v121 = *(v208 + 48);
                  v122 = v95;
                  v123 = v210;
                  sub_1C89CBE2C();
                  v100 = v123;
                  sub_1C89CBE2C();
                  v124 = v209;
                  if (__swift_getEnumTagSinglePayload(v123, 1, v209) == 1)
                  {
                    sub_1C8778ED8(v122, &qword_1EC2BADE0, &qword_1C8BFABE0);
                    if (__swift_getEnumTagSinglePayload(v123 + v121, 1, v124) == 1)
                    {
                      sub_1C8778ED8(v123, &qword_1EC2BADE0, &qword_1C8BFABE0);
                      v125 = v191;
                      goto LABEL_65;
                    }
                  }

                  else
                  {
                    v126 = v207;
                    sub_1C89CBE2C();
                    if (__swift_getEnumTagSinglePayload(v100 + v121, 1, v124) != 1)
                    {
                      v127 = v206;
                      sub_1C88E3EC4();
                      v128 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation.== infix(_:_:)(v126, v127);
                      sub_1C88E3C58();
                      sub_1C8778ED8(v217, &qword_1EC2BADE0, &qword_1C8BFABE0);
                      sub_1C88E3C58();
                      sub_1C8778ED8(v100, &qword_1EC2BADE0, &qword_1C8BFABE0);
                      v125 = v191;
                      if ((v128 & 1) == 0)
                      {
                        goto LABEL_35;
                      }

LABEL_65:
                      v129 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
                      swift_beginAccess();
                      v130 = *(v76 + v129);
                      v131 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__requirements;
                      swift_beginAccess();
                      v132 = *(v125 + v131);

                      sub_1C87D964C();
                      v133 = v125;
                      v135 = v134;

                      if (v135)
                      {
                        v136 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
                        swift_beginAccess();
                        v137 = *(v76 + v136);
                        v138 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags;
                        swift_beginAccess();
                        if (sub_1C87E29E0(v137, *(v133 + v138)))
                        {
                          v139 = v76 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
                          swift_beginAccess();
                          v140 = *v139;
                          v141 = *(v139 + 8);
                          v142 = v133 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__authenticationPolicy;
                          swift_beginAccess();
                          v143 = *(v142 + 8);
                          if (sub_1C87E4678(v140, v141, *v142))
                          {
                            v144 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
                            swift_beginAccess();
                            v145 = *(v76 + v144);
                            v146 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__sampleInvocations;
                            v147 = v191;
                            swift_beginAccess();
                            v148 = *(v147 + v146);

                            sub_1C87D9370();
                            LOBYTE(v147) = v149;

                            if ((v147 & 1) == 0)
                            {
                              goto LABEL_95;
                            }

                            v150 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
                            v151 = v190;
                            swift_beginAccess();
                            v152 = *(v151 + v150);
                            v153 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__systemProtocols;
                            v154 = v191;
                            swift_beginAccess();
                            v155 = *(v154 + v153);

                            LOBYTE(v154) = sub_1C87E2AD0(v152, v155);

                            if ((v154 & 1) == 0)
                            {
                              goto LABEL_95;
                            }

                            swift_beginAccess();
                            sub_1C89CBE2C();
                            swift_beginAccess();
                            v156 = *(v202 + 48);
                            v157 = v205;
                            sub_1C89CBE2C();
                            sub_1C89CBE2C();
                            if (__swift_getEnumTagSinglePayload(v157, 1, v204) == 1)
                            {
                              sub_1C8778ED8(v203, &qword_1EC2BAE18, &qword_1C8BFABE8);
                              if (__swift_getEnumTagSinglePayload(v205 + v156, 1, v204) == 1)
                              {
                                sub_1C8778ED8(v205, &qword_1EC2BAE18, &qword_1C8BFABE8);
                                goto LABEL_79;
                              }
                            }

                            else
                            {
                              v158 = v205;
                              sub_1C89CBE2C();
                              if (__swift_getEnumTagSinglePayload(v158 + v156, 1, v204) != 1)
                              {
                                v162 = v205;
                                sub_1C88E3EC4();
                                static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.== infix(_:_:)();
                                v164 = v163;
                                sub_1C88E3C58();
                                sub_1C8778ED8(v203, &qword_1EC2BAE18, &qword_1C8BFABE8);
                                sub_1C88E3C58();
                                sub_1C8778ED8(v162, &qword_1EC2BAE18, &qword_1C8BFABE8);
                                if ((v164 & 1) == 0)
                                {
                                  goto LABEL_95;
                                }

LABEL_79:
                                v165 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
                                v166 = v190;
                                swift_beginAccess();
                                v167 = *(v166 + v165);
                                v168 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hiddenParameters;
                                v169 = v191;
                                swift_beginAccess();
                                v170 = *(v169 + v168);

                                sub_1C87DC550();
                                LOBYTE(v169) = v171;

                                if ((v169 & 1) == 0)
                                {
                                  goto LABEL_95;
                                }

                                swift_beginAccess();
                                sub_1C89CBE2C();
                                swift_beginAccess();
                                v172 = *(v197 + 48);
                                v173 = v200;
                                sub_1C89CBE2C();
                                sub_1C89CBE2C();
                                if (__swift_getEnumTagSinglePayload(v173, 1, v199) == 1)
                                {
                                  sub_1C8778ED8(v198, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                  if (__swift_getEnumTagSinglePayload(v200 + v172, 1, v199) == 1)
                                  {
                                    sub_1C8778ED8(v200, &qword_1EC2BAE30, &unk_1C8BFABF0);
LABEL_87:
                                    swift_beginAccess();
                                    sub_1C89CBE2C();
                                    swift_beginAccess();
                                    v178 = *(v197 + 48);
                                    v179 = v189;
                                    sub_1C89CBE2C();
                                    sub_1C89CBE2C();
                                    if (__swift_getEnumTagSinglePayload(v179, 1, v199) == 1)
                                    {
                                      sub_1C8778ED8(v194, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                      if (__swift_getEnumTagSinglePayload(&v189[v178], 1, v199) == 1)
                                      {
                                        sub_1C8778ED8(v189, &qword_1EC2BAE30, &unk_1C8BFABF0);
LABEL_94:
                                        v184 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
                                        v185 = v190;
                                        swift_beginAccess();
                                        v186 = *(v185 + v184);
                                        v187 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__visibilityFlags;
                                        v188 = v191;
                                        swift_beginAccess();
                                        v78 = sub_1C87D9D44(v186, *(v188 + v187));
                                        goto LABEL_36;
                                      }
                                    }

                                    else
                                    {
                                      v180 = v189;
                                      sub_1C89CBE2C();
                                      if (__swift_getEnumTagSinglePayload(v180 + v178, 1, v199) != 1)
                                      {
                                        v181 = v189;
                                        sub_1C88E3EC4();
                                        static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.== infix(_:_:)();
                                        v183 = v182;
                                        sub_1C88E3C58();
                                        sub_1C8778ED8(v194, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                        sub_1C88E3C58();
                                        sub_1C8778ED8(v181, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                        if (v183)
                                        {
                                          goto LABEL_94;
                                        }

LABEL_95:
                                        v78 = 0;
                                        goto LABEL_36;
                                      }

                                      sub_1C8778ED8(v194, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                      sub_1C88E3C58();
                                    }

                                    v159 = &qword_1EC2BD650;
                                    v160 = &qword_1C8C0A4F8;
                                    v161 = v189;
LABEL_77:
                                    sub_1C8778ED8(v161, v159, v160);
                                    goto LABEL_95;
                                  }
                                }

                                else
                                {
                                  v174 = v200;
                                  sub_1C89CBE2C();
                                  if (__swift_getEnumTagSinglePayload(v174 + v172, 1, v199) != 1)
                                  {
                                    v175 = v200;
                                    sub_1C88E3EC4();
                                    static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.== infix(_:_:)();
                                    v177 = v176;
                                    sub_1C88E3C58();
                                    sub_1C8778ED8(v198, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                    sub_1C88E3C58();
                                    sub_1C8778ED8(v175, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                    if ((v177 & 1) == 0)
                                    {
                                      goto LABEL_95;
                                    }

                                    goto LABEL_87;
                                  }

                                  sub_1C8778ED8(v198, &qword_1EC2BAE30, &unk_1C8BFABF0);
                                  sub_1C88E3C58();
                                }

                                v159 = &qword_1EC2BD650;
                                v160 = &qword_1C8C0A4F8;
                                v161 = v200;
                                goto LABEL_77;
                              }

                              sub_1C8778ED8(v203, &qword_1EC2BAE18, &qword_1C8BFABE8);
                              sub_1C88E3C58();
                            }

                            v159 = &qword_1EC2BD658;
                            v160 = &qword_1C8C0A500;
                            v161 = v205;
                            goto LABEL_77;
                          }

                          goto LABEL_22;
                        }

LABEL_35:
                        v78 = 0;
                        goto LABEL_36;
                      }

LABEL_73:
                      v78 = 0;
                      goto LABEL_36;
                    }

                    sub_1C8778ED8(v217, &qword_1EC2BADE0, &qword_1C8BFABE0);
                    sub_1C88E3C58();
                  }

                  v81 = &qword_1EC2BD660;
                  v82 = &qword_1C8C0A508;
                  goto LABEL_45;
                }
              }

              else
              {
                sub_1C89CBE2C();
                if (__swift_getEnumTagSinglePayload(v99 + v98, 1, v101) != 1)
                {
                  sub_1C88E3EC4();
                  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.== infix(_:_:)();
                  v103 = v102;
                  sub_1C88E3C58();
                  sub_1C8778ED8(v77, &qword_1EC2BADB8, &qword_1C8BFABD8);
                  sub_1C88E3C58();
                  sub_1C8778ED8(v99, &qword_1EC2BADB8, &qword_1C8BFABD8);
                  if ((v103 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_47;
                }

                sub_1C8778ED8(v77, &qword_1EC2BADB8, &qword_1C8BFABD8);
                sub_1C88E3C58();
              }

              v81 = &qword_1EC2BD668;
              v82 = &qword_1C8C0A510;
LABEL_45:
              v83 = v100;
              goto LABEL_21;
            }

            sub_1C88E3C58();
            sub_1C8778ED8(v59, &qword_1EC2B60D8, &qword_1C8BE6D88);
            sub_1C88E3C58();
            v83 = v53;
            v81 = &qword_1EC2B60D8;
            v82 = &qword_1C8BE6D88;
LABEL_21:
            sub_1C8778ED8(v83, v81, v82);
LABEL_22:
            v78 = 0;
            goto LABEL_36;
          }

          sub_1C8778ED8(v59, &qword_1EC2B60D8, &qword_1C8BE6D88);
          sub_1C88E3C58();
        }

        v81 = &qword_1EC2B60E0;
        v82 = &qword_1C8BE6D90;
        v83 = v53;
        goto LABEL_21;
      }
    }
  }

  v78 = 0;
  return v78 & 1;
}

uint64_t sub_1C89B2804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B2884(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B28F4()
{
  sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B2974()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4B0);
  __swift_project_value_buffer(v0, qword_1EC2BA4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolType_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolType_APP_INTENT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ToolType_SIRI_INTENT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ToolType_ACTION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B2BF0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4C8);
  __swift_project_value_buffer(v0, qword_1EC2BA4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Flag_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Flag_OPENS_APP_WHEN_RUN";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Flag_IS_DISCONTINUED";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Flag_IS_UNDISCOVERABLE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "Flag_DOES_NOT_IMPLEMENT_PERFORM";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "Flag_SHOWS_OPEN_WHEN_RUN";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "Flag_OUTPUT_HAS_SNIPPET";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "Flag_OUTPUT_PROVIDES_DIALOG";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B2F70()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4E0);
  __swift_project_value_buffer(v0, qword_1EC2BA4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VisibilityFlag_VISIBLE_FOR_SHORTCUTS";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlag_VISIBLE_FOR_ASSISTANT";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B3174()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA4F8);
  __swift_project_value_buffer(v0, qword_1EC2BA4F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicy_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AuthenticationPolicy_NONE";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN";
  *(v12 + 1) = 54;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN_AND_REMOTE";
  *(v14 + 1) = 65;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B33F0()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74656D617261502ELL, 0xEA00000000007265);

  qword_1EC2BA510 = v1;
  *algn_1EC2BA518 = v2;
  return result;
}

uint64_t sub_1C89B34B8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA520);
  __swift_project_value_buffer(v0, qword_1EC2BA520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "valueType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "relationships";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sampleInvocations";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "flags";
  *(v20 + 1) = 5;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C89BE258();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C89B3964();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C89B3A18();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89B3A6C();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C89B3AC0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89B3964()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0) + 44);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  return sub_1C8BD4C7C();
}

void sub_1C89B3A18()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

void sub_1C89B3A6C()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_692();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_165_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211_3();
  v13 = *v2;
  v14 = v2[1];
  OUTLINED_FUNCTION_88_0();
  if (!v15 || (v1 = v0, sub_1C8BD4DDC(), !v0))
  {
    v16 = v2[2];
    v17 = v2[3];
    OUTLINED_FUNCTION_88_0();
    if (!v18 || (v1 = v0, sub_1C8BD4DDC(), !v0))
    {
      v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
      OUTLINED_FUNCTION_513(*(v19 + 40));
      if (v22)
      {
        v23 = v20;
        v24 = *v21;
        OUTLINED_FUNCTION_564();
        sub_1C8BD4DDC();
        if (v1)
        {
          goto LABEL_19;
        }

        v20 = v23;
      }

      v34 = v20;
      v25 = *(v20 + 44);
      sub_1C89CBE2C();
      v26 = OUTLINED_FUNCTION_193_0();
      OUTLINED_FUNCTION_76(v26, v27, v9);
      if (v28)
      {
        sub_1C8778ED8(v3, &qword_1EC2B60D8, &qword_1C8BE6D88);
      }

      else
      {
        OUTLINED_FUNCTION_2_20();
        OUTLINED_FUNCTION_233();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_337_0();
        sub_1C8776818(v29, v30);
        OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_781();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_11_15();
        sub_1C88E3C58();
        if (v1)
        {
          goto LABEL_19;
        }
      }

      if (!*(v2[4] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(0), sub_1C8776818(&qword_1EC2BB3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v1))
      {
        if (!*(v2[5] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), OUTLINED_FUNCTION_345_0(), sub_1C8776818(v31, v32), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v1))
        {
          if (!*(v2[6] + 16) || (sub_1C89CC754(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D1C(), !v1))
          {
            v33 = *(v34 + 36);
            OUTLINED_FUNCTION_69();
          }
        }
      }
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v4);
  v6 = OUTLINED_FUNCTION_74_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41_6();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  OUTLINED_FUNCTION_229_2(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_60_1();
  v17 = *v1;
  v18 = v1[1];
  OUTLINED_FUNCTION_761();
  v21 = v21 && v19 == v20;
  if (!v21 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v22 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(0);
  v24 = *(v23 + 40);
  v25 = *(v0 + v24 + 8);
  if (*(v1 + v24 + 8))
  {
    if (!v25)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_35((v1 + v24));
    v28 = v21 && v26 == v27;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v25)
  {
    goto LABEL_37;
  }

  v48 = v23;
  v29 = *(v23 + 44);
  v30 = *(v3 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_109_2();
  if (!v21)
  {
    OUTLINED_FUNCTION_268();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v2 + v30);
    if (!v31)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_1122();
      OUTLINED_FUNCTION_916();
      if (v34 || (, , OUTLINED_FUNCTION_216(), sub_1C896B338(), OUTLINED_FUNCTION_1164(), , (&qword_1C8BE6D88 & 1) != 0))
      {
        v35 = sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v36, v37);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
        OUTLINED_FUNCTION_351_0();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_229();
        sub_1C88E3C58();
        sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
        if (v35)
        {
          goto LABEL_33;
        }

LABEL_37:
        v47 = 0;
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_104_3();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
      v32 = &qword_1EC2B60D8;
      v33 = &qword_1C8BE6D88;
LABEL_29:
      sub_1C8778ED8(v2, v32, v33);
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
LABEL_28:
    v32 = &qword_1EC2B60E0;
    v33 = &qword_1C8BE6D90;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_19(v2 + v30);
  if (!v21)
  {
    goto LABEL_28;
  }

  sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_33:
  v38 = v1[4];
  v39 = v0[4];
  sub_1C87DBE28();
  if ((v40 & 1) == 0)
  {
    goto LABEL_37;
  }

  v41 = v1[5];
  v42 = v0[5];
  sub_1C87D9370();
  if ((v43 & 1) == 0 || (sub_1C87DC4C8(v1[6], v0[6]) & 1) == 0)
  {
    goto LABEL_37;
  }

  v44 = *(v48 + 36);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v45, v46);
  v47 = OUTLINED_FUNCTION_746();
LABEL_38:
  OUTLINED_FUNCTION_157(v47);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89B4214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD280, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B4294(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B4304()
{
  sub_1C8776818(&qword_1EC2BB368, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B4384()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA538);
  __swift_project_value_buffer(v0, qword_1EC2BA538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlags_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ParameterFlags_HIDDEN";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ParameterFlags_SYNTHESIZED";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B45C4()
{
  if (qword_1EC2B5960 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA510;
  v2 = *algn_1EC2BA518;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_1EC2BA550 = v1;
  *algn_1EC2BA558 = v2;
  return result;
}

uint64_t sub_1C89B4694()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA560);
  __swift_project_value_buffer(v0, qword_1EC2BA560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B48C4()
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
      v5 = OUTLINED_FUNCTION_578();
      v0(v5);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_627();
      v2();
    }
  }

  return result;
}

uint64_t sub_1C89B493C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_1C8776818(&qword_1EC2BB338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6078, &qword_1C8BE6D28);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_210();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(v7);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51_1();
  v12 = *v1;
  v13 = v1[1];
  OUTLINED_FUNCTION_88_0();
  if (!v14 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v0))
  {
    v15 = OUTLINED_FUNCTION_1142();
    v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(v15);
    OUTLINED_FUNCTION_994(v16);
    OUTLINED_FUNCTION_915(v17);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v18)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6078, &qword_1C8BE6D28);
LABEL_7:
      OUTLINED_FUNCTION_688();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_223_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_827();
    sub_1C8776818(v19, v20);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_490();
    sub_1C88E3C58();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(v3);
  v5 = OUTLINED_FUNCTION_49_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6078, &qword_1C8BE6D28);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6080, &unk_1C8BE6D30);
  OUTLINED_FUNCTION_229_2(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_60_1();
  v16 = *v0;
  v17 = v0[1];
  OUTLINED_FUNCTION_761();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship(0);
  OUTLINED_FUNCTION_724(v21);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_125_0();
  if (v20)
  {
    OUTLINED_FUNCTION_43_1(v1 + v2);
    if (v20)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6078, &qword_1C8BE6D28);
LABEL_17:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v26, v27);
      v23 = OUTLINED_FUNCTION_64_0();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v1 + v2);
  if (v22)
  {
    OUTLINED_FUNCTION_490();
    sub_1C88E3C58();
LABEL_14:
    sub_1C8778ED8(v1, &qword_1EC2B6080, &unk_1C8BE6D30);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_1107();
  v24 = OUTLINED_FUNCTION_168_0();
  v25 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.== infix(_:_:)(v24);
  sub_1C88E3C58();
  OUTLINED_FUNCTION_239();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2B6078, &qword_1C8BE6D28);
  if (v25)
  {
    goto LABEL_17;
  }

LABEL_15:
  v23 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89B4E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD278, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B4E8C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B4EFC()
{
  sub_1C8776818(&qword_1EC2BB3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B4F7C()
{
  if (qword_1EC2B5978 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA550;
  v2 = *algn_1EC2BA558;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_1EC2BA578 = v1;
  unk_1EC2BA580 = v2;
  return result;
}

uint64_t sub_1C89B5044()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA588);
  __swift_project_value_buffer(v0, qword_1EC2BA588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C8BE8D40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isNone";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "equals";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "notEquals";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lessThan";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contains";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "doesNotContain";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)()
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
      case 2:
        OUTLINED_FUNCTION_36_6();
        sub_1C89BF374();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C89B54C4(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C89B5980(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89B5E3C(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C89B62F8(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_33_4();
        sub_1C89B67B4(v23, v24, v25, v26);
        break;
      case 8:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C89B6C70(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89B54C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD620, &qword_1C8C0A4C8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD620, &qword_1C8C0A4C8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD620, &qword_1C8C0A4C8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD620, &qword_1C8C0A4C8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89B5980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD628, &qword_1C8C0A4D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD628, &qword_1C8C0A4D0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD628, &qword_1C8C0A4D0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD628, &qword_1C8C0A4D0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89B5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD630, &qword_1C8C0A4D8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD630, &qword_1C8C0A4D8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD630, &qword_1C8C0A4D8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD630, &qword_1C8C0A4D8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89B62F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD638, &qword_1C8C0A4E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD638, &qword_1C8C0A4E0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD638, &qword_1C8C0A4E0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD638, &qword_1C8C0A4E0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89B67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD640, &qword_1C8C0A4E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD640, &qword_1C8C0A4E8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD640, &qword_1C8C0A4E8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD640, &qword_1C8C0A4E8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89B6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  DoesNotContain = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v7 = *(*(DoesNotContain - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](DoesNotContain);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD648, &qword_1C8C0A4F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, DoesNotContain);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD648, &qword_1C8C0A4F0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, DoesNotContain);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD648, &qword_1C8C0A4F0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, DoesNotContain) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD648, &qword_1C8C0A4F0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6068, &qword_1C8BFAC00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (v9)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = v0;
      sub_1C89B7434();
      goto LABEL_9;
    case 2u:
      v15 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7570(v15, v16, v17, v18);
      goto LABEL_12;
    case 3u:
      v19 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7784(v19, v20, v21, v22);
      goto LABEL_12;
    case 4u:
      v11 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7998(v11, v12, v13, v14);
      goto LABEL_12;
    case 5u:
      v28 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7BAC(v28, v29, v30, v31);
      goto LABEL_12;
    case 6u:
      v32 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7DC0(v32, v33, v34, v35);
      goto LABEL_12;
    case 7u:
      v23 = OUTLINED_FUNCTION_9_4();
      sub_1C89B7FD4(v23, v24, v25, v26);
LABEL_12:
      v27 = v1;
      OUTLINED_FUNCTION_72_5();
      break;
    default:
      v10 = v0;
      sub_1C89B72FC();
LABEL_9:
      v27 = v10;
      OUTLINED_FUNCTION_104_0();
      break;
  }

  sub_1C88E3C58();
  if (!v27)
  {
LABEL_14:
    v36 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation(0);
    OUTLINED_FUNCTION_113_1(v36);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

void sub_1C89B72FC()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

void sub_1C89B7434()
{
  OUTLINED_FUNCTION_189();
  v9 = OUTLINED_FUNCTION_74_3(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_217_1();
  v13 = sub_1C8BD47CC();
  v14 = OUTLINED_FUNCTION_116_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_480();
  v17 = v0(0);
  OUTLINED_FUNCTION_108_1(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_711();
  }

  else
  {
    OUTLINED_FUNCTION_91();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = OUTLINED_FUNCTION_123_2();
      v20(v19);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v21, v22);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_709();
      v23 = OUTLINED_FUNCTION_253_2();
      v24(v23);
      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    OUTLINED_FUNCTION_999();
  }

  __break(1u);
}

uint64_t sub_1C89B7570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B7FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6068, &qword_1C8BFAC00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  DoesNotContain = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v9 = *(*(DoesNotContain - 8) + 64);
  MEMORY[0x1EEE9AC00](DoesNotContain);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.OneOf_RelationKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6068, &qword_1C8BFAC00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89B8468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B84E8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B8558()
{
  sub_1C8776818(&qword_1EC2BB338, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B85D8()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x736C617571452ELL, 0xE700000000000000);

  qword_1EC2BA5A0 = v1;
  *algn_1EC2BA5A8 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B87F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD268, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B8870(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B88E0()
{
  sub_1C8776818(&qword_1EC2BC240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B8960()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_1EC2BA5C8 = v1;
  unk_1EC2BA5D0 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B8B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD260, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B8BFC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B8C6C()
{
  sub_1C8776818(&qword_1EC2BC258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B8CEC()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x726574616572472ELL, 0xEC0000006E616854);

  qword_1EC2BA5F0 = v1;
  *algn_1EC2BA5F8 = v2;
  return result;
}

uint64_t sub_1C89B8DB8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA600);
  __swift_project_value_buffer(v0, qword_1EC2BA600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89B906C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD258, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B90EC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B915C()
{
  sub_1C8776818(&qword_1EC2BC270, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B91DC()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_1EC2BA618 = v1;
  unk_1EC2BA620 = v2;
  return result;
}

uint64_t sub_1C89B92A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA628);
  __swift_project_value_buffer(v0, qword_1EC2BA628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void sub_1C89B94A4()
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
      OUTLINED_FUNCTION_119();
      sub_1C8BD4B3C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89C9A50();
    }
  }
}

void sub_1C89B9588()
{
  OUTLINED_FUNCTION_1065();
  v3 = v2;
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v4 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v5, v6), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    if (*(v1 + 8) != 1 || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4D3C(), !v0))
    {
      v7 = *(v3(0) + 24);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89B96BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD250, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B973C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B97AC()
{
  sub_1C8776818(&qword_1EC2BC288, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B982C()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_1EC2BA640 = v1;
  *algn_1EC2BA648 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89B9A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD248, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B9AC8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B9B38()
{
  sub_1C8776818(&qword_1EC2BC2A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B9BB8()
{
  if (qword_1EC2B5988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA578;
  v2 = unk_1EC2BA580;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_1EC2BA668 = v1;
  unk_1EC2BA670 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (OUTLINED_FUNCTION_1170(), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v2, v3), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}