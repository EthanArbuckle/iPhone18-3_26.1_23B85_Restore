uint64_t sub_1C89B9E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD240, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89B9EB8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89B9F28()
{
  sub_1C8776818(&qword_1EC2BC2B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89B9FA8()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x726F67657461432ELL, 0xE900000000000079);

  qword_1EC2BA690 = v1;
  *algn_1EC2BA698 = v2;
  return result;
}

uint64_t sub_1C89BA070()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA6A0);
  __swift_project_value_buffer(v0, qword_1EC2BA6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subcategoryName";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BA368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD238, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BA3E8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BA458()
{
  sub_1C8776818(&qword_1EC2BC2D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Category);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BA4D8()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_1EC2BA6B8 = v1;
  unk_1EC2BA6C0 = v2;
  return result;
}

uint64_t sub_1C89BA5A0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA6C8);
  __swift_project_value_buffer(v0, qword_1EC2BA6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_33_4();
      sub_1C89BA830(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_36_6();
      sub_1C8955054();
    }
  }
}

uint64_t sub_1C89BA830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE58, &qword_1C8BFAC10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD618, &qword_1C8C0A4C0);
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
    sub_1C8778ED8(v14, &qword_1EC2BAE58, &qword_1C8BFAC10);
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
      sub_1C8778ED8(v23, &qword_1EC2BD618, &qword_1C8C0A4C0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD618, &qword_1C8C0A4C0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD618, &qword_1C8C0A4C0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAE58, &qword_1C8BFAC10);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v11 = OUTLINED_FUNCTION_9_4();
      sub_1C89BAF24(v11, v12, v13, v14);
      OUTLINED_FUNCTION_141_2();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_141_2();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_9_4();
      sub_1C89BADD0();
      if (v0)
      {
        goto LABEL_4;
      }
    }
  }

  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  OUTLINED_FUNCTION_113_1(v9);
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89BADD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE58, &qword_1C8BFAC10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAE58, &qword_1C8BFAC10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89BAF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE58, &qword_1C8BFAC10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAE58, &qword_1C8BFAC10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB458, &qword_1C8BFAD50);
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
      sub_1C8778ED8(v0, &qword_1EC2BAE58, &qword_1C8BFAC10);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
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
    OUTLINED_FUNCTION_141_2();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB458, &qword_1C8BFAD50);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE58, &qword_1C8BFAC10);
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

uint64_t sub_1C89BB3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD230, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BB438(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BB4A8()
{
  sub_1C8776818(&qword_1EC2BC2E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BB528()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA6E0);
  __swift_project_value_buffer(v0, qword_1EC2BA6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyle_MULTICOLOR";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyle_TINTED";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BB72C()
{
  if (qword_1EC2B5A08 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA6B8;
  v2 = unk_1EC2BA6C0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_1EC2BA6F8 = v1;
  unk_1EC2BA700 = v2;
  return result;
}

uint64_t sub_1C89BB7FC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA708);
  __swift_project_value_buffer(v0, qword_1EC2BA708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "style";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foreground";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "background";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89BBB10();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C89BBB78();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    if (!*(v1 + 16) || (v4 = *(v1 + 24), OUTLINED_FUNCTION_940(), sub_1C89CC7A8(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v0))
    {
      v5 = *(v1 + 32);
      v6 = *(v1 + 40);
      OUTLINED_FUNCTION_88_0();
      if (!v7 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
      {
        v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
        OUTLINED_FUNCTION_513(*(v8 + 32));
        if (!v10 || (v11 = *v9, OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
        {
          v12 = *(v8 + 28);
          return OUTLINED_FUNCTION_69();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C89BBD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD228, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BBDD4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BBE44()
{
  sub_1C8776818(&qword_1EC2BC300, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BBEC4()
{
  if (qword_1EC2B5928 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA480;
  v2 = *algn_1EC2BA488;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_1EC2BA720 = v1;
  *algn_1EC2BA728 = v2;
  return result;
}

uint64_t sub_1C89BBF90()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA730);
  __swift_project_value_buffer(v0, qword_1EC2BA730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BC1BC()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_638();
      sub_1C8971D40();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_55();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

void sub_1C89BC274()
{
  OUTLINED_FUNCTION_178_1();
  v2 = v1;
  OUTLINED_FUNCTION_60_4();
  if (!v3 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    v4 = (v2)(0);
    OUTLINED_FUNCTION_1148(v4);
    OUTLINED_FUNCTION_513(v5);
    if (!v7 || (OUTLINED_FUNCTION_512(v6), OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      v8 = *(v2 + 20);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89BC314(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_85_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (v6 || (sub_1C8BD529C() & 1) != 0)
  {
    v7 = a3(0);
    v8 = *(v7 + 24);
    OUTLINED_FUNCTION_1();
    if (v11)
    {
      if (v9)
      {
        OUTLINED_FUNCTION_35(v10);
        v14 = v6 && v12 == v13;
        if (v14 || (sub_1C8BD529C() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v9)
    {
LABEL_13:
      v15 = *(v7 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v16, v17);
      return OUTLINED_FUNCTION_64_0() & 1;
    }
  }

  return 0;
}

uint64_t sub_1C89BC45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD220, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BC4DC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BC54C()
{
  sub_1C8776818(&qword_1EC2BC318, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BC5FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1CCA7E2D0](a2, a3);
  *a4 = 0xD00000000000002BLL;
  *a5 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89BC688()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA758);
  __swift_project_value_buffer(v0, qword_1EC2BA758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
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
  *v12 = "bundleId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bundleVersion";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "teamId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "device";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "origin";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89BCA60();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C89BCB14();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89BCA60()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0) + 44);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
  sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE68, &qword_1C8BFAC20);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_1();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v15 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
  {
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    OUTLINED_FUNCTION_88_0();
    if (!v18 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
    {
      v19 = *(v2 + 32);
      v20 = *(v2 + 40);
      OUTLINED_FUNCTION_88_0();
      if (!v21 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
      {
        v22 = *(v2 + 48);
        v23 = *(v2 + 56);
        OUTLINED_FUNCTION_88_0();
        if (!v24 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
        {
          v25 = *(v2 + 64);
          v26 = *(v2 + 72);
          OUTLINED_FUNCTION_88_0();
          if (!v27 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
          {
            v28 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
            OUTLINED_FUNCTION_915(*(v28 + 44));
            sub_1C89CBE2C();
            OUTLINED_FUNCTION_377_0();
            if (v29)
            {
              sub_1C8778ED8(v3, &qword_1EC2BAE68, &qword_1C8BFAC20);
            }

            else
            {
              OUTLINED_FUNCTION_92_3();
              OUTLINED_FUNCTION_223_1();
              sub_1C88E3EC4();
              sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);
              OUTLINED_FUNCTION_240();
              OUTLINED_FUNCTION_9_1();
              sub_1C8BD4E2C();
              OUTLINED_FUNCTION_488_0();
              sub_1C88E3C58();
              if (v1)
              {
                goto LABEL_18;
              }
            }

            v30 = *(v2 + 80);
            if (!v30 || (v31 = *(v2 + 88), OUTLINED_FUNCTION_946(v30), sub_1C89CC7FC(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D4C(), !v1))
            {
              v32 = *(v28 + 40);
              OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(v3);
  v5 = OUTLINED_FUNCTION_49_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE68, &qword_1C8BFAC20);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB490, &qword_1C8BFAD58);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_60_1();
  v16 = *v1;
  v17 = v1[1];
  OUTLINED_FUNCTION_761();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_646();
  v23 = v20 && v21 == v22;
  if (!v23 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_1055();
  v26 = v20 && v24 == v25;
  if (!v26 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  v27 = v1[6] == *(v0 + 48) && v1[7] == *(v0 + 56);
  if (!v27 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  v28 = v1[8] == *(v0 + 64) && v1[9] == *(v0 + 72);
  if (!v28 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_38;
  }

  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  v29 = *(v39 + 44);
  v30 = *(v12 + 48);
  OUTLINED_FUNCTION_607();
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_125_0();
  if (v20)
  {
    OUTLINED_FUNCTION_43_1(v2 + v30);
    if (v20)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAE68, &qword_1C8BFAC20);
      goto LABEL_36;
    }

LABEL_34:
    sub_1C8778ED8(v2, &qword_1EC2BB490, &qword_1C8BFAD58);
LABEL_38:
    v38 = 0;
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v2 + v30);
  if (v31)
  {
    OUTLINED_FUNCTION_488_0();
    sub_1C88E3C58();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_1107();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.== infix(_:_:)();
  v33 = v32;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAE68, &qword_1C8BFAC20);
  if ((v33 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_36:
  v34 = *(v0 + 88);
  if (!sub_1C87E4678(v1[10], *(v1 + 88), *(v0 + 80)))
  {
    goto LABEL_38;
  }

  v35 = *(v39 + 40);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v36, v37);
  v38 = OUTLINED_FUNCTION_64_0();
LABEL_39:
  OUTLINED_FUNCTION_157(v38);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BD134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD218, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BD1B4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BD224()
{
  sub_1C8776818(&qword_1EC2BC330, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BD2A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA770);
  __swift_project_value_buffer(v0, qword_1EC2BA770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Origin_THIRD_PARTY";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BD4E0()
{
  if (qword_1EC2B5A40 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA748;
  v2 = qword_1EC2BA750;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6563697665442ELL, 0xE700000000000000);

  qword_1EC2BA788 = v1;
  unk_1EC2BA790 = v2;
  return result;
}

uint64_t sub_1C89BD5A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA798);
  __swift_project_value_buffer(v0, qword_1EC2BA798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.traverse<A>(visitor:)()
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
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.OneOf_DeviceKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_816();
      OUTLINED_FUNCTION_9_4();
      sub_1C89BF8B4();
      if (v1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_816();
      sub_1C89BF778();
      OUTLINED_FUNCTION_104_0();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_4;
      }
    }
  }

  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
  OUTLINED_FUNCTION_113_1(v10);
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.OneOf_DeviceKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB4A0, &qword_1C8BFAD60);
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
      sub_1C8778ED8(v0, &qword_1EC2BAE70, &qword_1C8BFAC28);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
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
    OUTLINED_FUNCTION_321_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB4A0, &qword_1C8BFAD60);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device.OneOf_DeviceKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE70, &qword_1C8BFAC28);
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

uint64_t sub_1C89BDBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD210, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BDC3C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BDCAC()
{
  sub_1C8776818(&qword_1EC2BB488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BDD2C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000014, 0x80000001C8C23A10);
  qword_1EC2BA7B0 = 0xD00000000000002BLL;
  *algn_1EC2BA7B8 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89BDDC0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA7C0);
  __swift_project_value_buffer(v0, qword_1EC2BA7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "containerId";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "bundleVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "containerType";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "teamId";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "device";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "origin";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8962408();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C89BE1F0();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89BE258();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C89BE2A8();
        break;
      case 8:
        OUTLINED_FUNCTION_8();
        sub_1C89BE35C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89BE258()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *(v0(0) + 40);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C1C();
}

uint64_t sub_1C89BE2A8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0) + 44);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
  sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE80, &qword_1C8BFAC38);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_1();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v15 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
  {
    v16 = *(v2 + 16);
    v17 = *(v2 + 24);
    OUTLINED_FUNCTION_88_0();
    if (!v18 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
    {
      v31 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
      OUTLINED_FUNCTION_513(v31[9]);
      if (!v20 || (v21 = *v19, OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
      {
        v22 = *(v2 + 32);
        if (!v22 || (v23 = *(v2 + 40), OUTLINED_FUNCTION_946(v22), sub_1C89CC850(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D4C(), !v1))
        {
          OUTLINED_FUNCTION_513(v31[10]);
          if (!v25 || (v26 = *v24, OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
          {
            OUTLINED_FUNCTION_915(v31[11]);
            sub_1C89CBE2C();
            OUTLINED_FUNCTION_377_0();
            if (v27)
            {
              sub_1C8778ED8(v3, &qword_1EC2BAE80, &qword_1C8BFAC38);
            }

            else
            {
              OUTLINED_FUNCTION_91_2();
              OUTLINED_FUNCTION_223_1();
              sub_1C88E3EC4();
              sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);
              OUTLINED_FUNCTION_240();
              OUTLINED_FUNCTION_9_1();
              sub_1C8BD4E2C();
              OUTLINED_FUNCTION_487();
              sub_1C88E3C58();
              if (v1)
              {
                goto LABEL_18;
              }
            }

            v28 = *(v2 + 48);
            if (!v28 || (v29 = *(v2 + 56), OUTLINED_FUNCTION_946(v28), sub_1C89CC8A4(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4D4C(), !v1))
            {
              v30 = v31[8];
              OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_84();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(v4);
  v6 = OUTLINED_FUNCTION_49_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE80, &qword_1C8BFAC38);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_103();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB4C8, &qword_1C8BFAD68);
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
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_646();
  v24 = v21 && v22 == v23;
  if (!v24 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_42;
  }

  v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  v26 = v25[9];
  OUTLINED_FUNCTION_1();
  if (v29)
  {
    if (!v27)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v28);
    v32 = v21 && v30 == v31;
    if (!v32 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v27)
  {
    goto LABEL_42;
  }

  v33 = *(v0 + 40);
  if (!sub_1C87E4678(v1[4], *(v1 + 40), *(v0 + 32)))
  {
    goto LABEL_42;
  }

  v34 = v25[10];
  OUTLINED_FUNCTION_1();
  if (!v37)
  {
    if (!v35)
    {
      goto LABEL_30;
    }

LABEL_42:
    v50 = 0;
    goto LABEL_43;
  }

  if (!v35)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_35(v36);
  v40 = v21 && v38 == v39;
  if (!v40 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_30:
  v41 = v25[11];
  v42 = *(v3 + 48);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_125_0();
  if (v21)
  {
    OUTLINED_FUNCTION_43_1(v2 + v42);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAE80, &qword_1C8BFAC38);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v2 + v42);
  if (v43)
  {
    OUTLINED_FUNCTION_487();
    sub_1C88E3C58();
LABEL_38:
    sub_1C8778ED8(v2, &qword_1EC2BB4C8, &qword_1C8BFAD68);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_91_2();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.== infix(_:_:)();
  v45 = v44;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_239();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAE80, &qword_1C8BFAC38);
  if ((v45 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_40:
  v46 = *(v0 + 56);
  if (!sub_1C87E4678(v1[6], *(v1 + 56), *(v0 + 48)))
  {
    goto LABEL_42;
  }

  v47 = v25[8];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v48, v49);
  v50 = OUTLINED_FUNCTION_64_0();
LABEL_43:
  OUTLINED_FUNCTION_157(v50);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89BE9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD208, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BEA38(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BEAA8()
{
  sub_1C8776818(&qword_1EC2BC358, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BEB28()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA7D8);
  __swift_project_value_buffer(v0, qword_1EC2BA7D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Origin_THIRD_PARTY";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BED64()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA7F0);
  __swift_project_value_buffer(v0, qword_1EC2BA7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_APP";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_DAEMON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_EXTENSION";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_FRAMEWORK";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89BEFDC()
{
  if (qword_1EC2B5A68 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA7B0;
  v2 = *algn_1EC2BA7B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6563697665442ELL, 0xE700000000000000);

  qword_1EC2BA808 = v1;
  unk_1EC2BA810 = v2;
  return result;
}

uint64_t sub_1C89BF0A0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA818);
  __swift_project_value_buffer(v0, qword_1EC2BA818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void sub_1C89BF2F0()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_567();
  while (1)
  {
    OUTLINED_FUNCTION_88();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_536();
      OUTLINED_FUNCTION_1031();
      sub_1C8955054();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_536();
      OUTLINED_FUNCTION_1031();
      sub_1C89BF374();
    }
  }

  OUTLINED_FUNCTION_1066();
}

void sub_1C89BF374()
{
  OUTLINED_FUNCTION_189();
  v5 = v4;
  OUTLINED_FUNCTION_1052();
  OUTLINED_FUNCTION_1034();
  v6 = sub_1C8BD47CC();
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v46 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v45 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD610, &qword_1C8C0A4B8);
  v13 = OUTLINED_FUNCTION_80(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_0();
  v47 = v16;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1057();
  v18 = OUTLINED_FUNCTION_516();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_301_1();
  sub_1C89CBE2C();
  v5(0);
  v24 = OUTLINED_FUNCTION_120();
  v44 = v25;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v24, v26, v25);
  OUTLINED_FUNCTION_627();
  sub_1C8778ED8(v27, v28, v29);
  if (v5 == 1 || (v1 = v0, sub_1C8BD4B0C(), !v0))
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v6);
    OUTLINED_FUNCTION_6_16();
    sub_1C8776818(v33, v34);
    OUTLINED_FUNCTION_223_1();
    OUTLINED_FUNCTION_195();
    sub_1C8BD4B4C();
    if (v1)
    {
      v35 = v3;
LABEL_8:
      sub_1C8778ED8(v35, &qword_1EC2BD610, &qword_1C8C0A4B8);
      goto LABEL_9;
    }

    sub_1C89DF3F4();
    OUTLINED_FUNCTION_72_2(v47);
    if (v36)
    {
      v35 = v47;
      goto LABEL_8;
    }

    v37 = *(v46 + 32);
    OUTLINED_FUNCTION_787();
    v37();
    OUTLINED_FUNCTION_627();
    sub_1C8778ED8(v38, v39, v40);
    (v37)(v2, v45, v6);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

LABEL_9:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.traverse<A>(visitor:)()
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
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.OneOf_DeviceKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_815();
      OUTLINED_FUNCTION_9_4();
      sub_1C89BF8B4();
      if (v1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      OUTLINED_FUNCTION_815();
      sub_1C89BF778();
      OUTLINED_FUNCTION_104_0();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_4;
      }
    }
  }

  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
  OUTLINED_FUNCTION_113_1(v10);
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

void sub_1C89BF778()
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
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_1C89BF8B4()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v4 = v3;
  v10 = OUTLINED_FUNCTION_728(v5, v6, v7, v8, v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_525();
  sub_1C89CBE2C();
  v16 = v2(0);
  v17 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v17, v18, v16);
  if (v19)
  {
    v22 = OUTLINED_FUNCTION_88();
    sub_1C8778ED8(v22, v23, v4);
  }

  else
  {
    OUTLINED_FUNCTION_890();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v0;
      v21 = v0[1];
      sub_1C8BD4DDC();

      OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_190();
      return;
    }

    sub_1C88E3C58();
  }

  __break(1u);
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.OneOf_DeviceKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB4D8, &qword_1C8BFAD70);
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
      sub_1C8778ED8(v0, &qword_1EC2BAE88, &qword_1C8BFAC40);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
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
    OUTLINED_FUNCTION_320_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB4D8, &qword_1C8BFAD70);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device.OneOf_DeviceKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE88, &qword_1C8BFAC40);
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

uint64_t sub_1C89BFC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD200, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89BFCC4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89BFD34()
{
  sub_1C8776818(&qword_1EC2BB4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89BFDB4()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001ALL, 0x80000001C8C23920);
  qword_1EC2BA830 = 0xD00000000000002BLL;
  *algn_1EC2BA838 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89BFE48()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA840);
  __swift_project_value_buffer(v0, qword_1EC2BA840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "synonyms";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89C0130();
        break;
      case 1:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C89C0130()
{
  OUTLINED_FUNCTION_534_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_885(v2);
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  return v0();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
    OUTLINED_FUNCTION_513(*(v3 + 28));
    if (!v5 || (OUTLINED_FUNCTION_512(v4), OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4DAC(), !v0))
      {
        v6 = *(v3 + 24);
        OUTLINED_FUNCTION_69();
      }
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_85_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0) + 28);
  OUTLINED_FUNCTION_1();
  if (v10)
  {
    if (!v8)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v9);
    v13 = v6 && v11 == v12;
    if (!v13 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_1C87D2814(*(v3 + 16), *(v2 + 16)))
  {
    OUTLINED_FUNCTION_1013();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C8776818(v14, v15);
    return OUTLINED_FUNCTION_64_0() & 1;
  }

  return 0;
}

uint64_t sub_1C89C0374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C03F4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C0464()
{
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C04E4()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C23900);
  qword_1EC2BA858 = 0xD00000000000002BLL;
  unk_1EC2BA860 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89C0578()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA868);
  __swift_project_value_buffer(v0, qword_1EC2BA868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C0778()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_55();
      sub_1C8BD4C2C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_55();
      v0();
    }
  }

  return result;
}

void sub_1C89C081C()
{
  OUTLINED_FUNCTION_1065();
  v4 = v3;
  OUTLINED_FUNCTION_50_2();
  v5 = *v0;
  v6 = v2[1];
  v7 = OUTLINED_FUNCTION_954();
  if (sub_1C88E36B8(v7, v8) || (OUTLINED_FUNCTION_954(), OUTLINED_FUNCTION_210_1(), sub_1C8BD4D6C(), !v1))
  {
    v9 = v2[2];
    v10 = v2[3];
    OUTLINED_FUNCTION_88_0();
    if (!v11 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
    {
      v12 = *(v4(0) + 24);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C08D0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = OUTLINED_FUNCTION_231_2(a1, a2);
  if ((MEMORY[0x1CCA7D0F0](v4) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_646();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  OUTLINED_FUNCTION_1105(v8);
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v9, v10);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C89C09D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C0A54(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C0AC4()
{
  sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C0B44()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C238C0);
  qword_1EC2BA880 = 0xD00000000000002BLL;
  *algn_1EC2BA888 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89C0BD8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA890);
  __swift_project_value_buffer(v0, qword_1EC2BA890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtitle";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "altText";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "image";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "synonyms";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "snippetPluginModel";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89C0F94();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C89C1048();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C89C10FC();
        break;
      case 5:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89C11B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89C0F94()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89C1048()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0) + 32);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
  sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89C10FC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0) + 36);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
  sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89C11B0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0) + 40);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB0, &qword_1C8BFAC68);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81_3(v9, v54);
  v61 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  v10 = OUTLINED_FUNCTION_21(v61);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_7(v13, v55);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA8, &qword_1C8BFAC60);
  OUTLINED_FUNCTION_80(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = OUTLINED_FUNCTION_294_0(v18, v56);
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v19);
  v21 = OUTLINED_FUNCTION_74_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_115_3(v24, v57);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA0, &qword_1C8BFAC58);
  OUTLINED_FUNCTION_80(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_165_0();
  v62 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v29);
  v30 = OUTLINED_FUNCTION_21(v62);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE98, &qword_1C8BFAC50);
  OUTLINED_FUNCTION_80(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_103();
  v37 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  v38 = OUTLINED_FUNCTION_48_5(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_211_3();
  v41 = *v0;
  v42 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v43 || (sub_1C8BD4DDC(), !v1))
  {
    v58 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
    v44 = v58[7];
    sub_1C89CBE2C();
    v45 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v45, v46, v2);
    if (v47)
    {
      sub_1C8778ED8(v3, &qword_1EC2BAE98, &qword_1C8BFAC50);
    }

    else
    {
      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_1084();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_781();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_485_0();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    v48 = v58[8];
    sub_1C89CBE2C();
    v49 = OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_76(v49, v50, v62);
    if (v47)
    {
      sub_1C8778ED8(v4, &qword_1EC2BAEA0, &qword_1C8BFAC58);
    }

    else
    {
      OUTLINED_FUNCTION_89_2();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_379();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_484();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    v51 = v58[9];
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v60);
    if (v47)
    {
      sub_1C8778ED8(v60, &qword_1EC2BAEA8, &qword_1C8BFAC60);
    }

    else
    {
      OUTLINED_FUNCTION_88_1();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);
      OUTLINED_FUNCTION_1037();
      OUTLINED_FUNCTION_1077();
      OUTLINED_FUNCTION_379();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_482();
      sub_1C88E3C58();
      if (v1)
      {
        goto LABEL_22;
      }
    }

    if (!*(v0[2] + 16) || (OUTLINED_FUNCTION_781(), sub_1C8BD4DAC(), !v1))
    {
      v52 = v58[10];
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_72_2(v59);
      if (v47)
      {
        sub_1C8778ED8(v59, &qword_1EC2BAEB0, &qword_1C8BFAC68);
LABEL_21:
        v53 = v0 + v58[6];
        OUTLINED_FUNCTION_119();
        sub_1C8BD49DC();
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_87_3();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData);
      OUTLINED_FUNCTION_298_0();
      OUTLINED_FUNCTION_379();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_481_0();
      sub_1C88E3C58();
      if (!v1)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_1034();
  v99 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(v7);
  v8 = OUTLINED_FUNCTION_21(v99);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB0, &qword_1C8BFAC68);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB518, &qword_1C8BFAD78);
  OUTLINED_FUNCTION_21(v98);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_165_0();
  v102 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v18);
  v19 = OUTLINED_FUNCTION_21(v102);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA8, &qword_1C8BFAC60);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_207_0(v26);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB520, &qword_1C8BFAD80);
  OUTLINED_FUNCTION_21(v101);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = OUTLINED_FUNCTION_405_0(v30);
  v105 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v31);
  v32 = OUTLINED_FUNCTION_21(v105);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_7(v35, v95);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEA0, &qword_1C8BFAC58);
  OUTLINED_FUNCTION_80(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_81();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB528, &qword_1C8BFAD88);
  OUTLINED_FUNCTION_21(v104);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_217_1();
  v44 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(v43);
  v45 = OUTLINED_FUNCTION_48_5(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_33();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE98, &qword_1C8BFAC50);
  OUTLINED_FUNCTION_80(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_552();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB530, &qword_1C8BFAD90);
  OUTLINED_FUNCTION_21(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_112_0();
  v56 = *v1 == *v6 && v1[1] == v6[1];
  if (!v56 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_37;
  }

  v96 = v4;
  v97 = v3;
  v57 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v58 = *(v57 + 28);
  v59 = *(v52 + 48);
  v100 = v57;
  sub_1C89CBE2C();
  v60 = v6;
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72(v0);
  if (v56)
  {
    OUTLINED_FUNCTION_72(v0 + v59);
    if (v56)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAE98, &qword_1C8BFAC50);
      goto LABEL_16;
    }

LABEL_14:
    v62 = &qword_1EC2BB530;
    v63 = &qword_1C8BFAD90;
    v64 = v0;
LABEL_36:
    sub_1C8778ED8(v64, v62, v63);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_12();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72(v0 + v59);
  if (v61)
  {
    OUTLINED_FUNCTION_485_0();
    sub_1C88E3C58();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_90_3();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_156_1();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.== infix(_:_:)();
  v66 = v65;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_271();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAE98, &qword_1C8BFAC50);
  if ((v66 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  v67 = v100[8];
  v68 = *(v104 + 48);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v69 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v69, v70);
  if (v56)
  {
    OUTLINED_FUNCTION_24(v2 + v68);
    if (v56)
    {
      sub_1C8778ED8(v2, &qword_1EC2BAEA0, &qword_1C8BFAC58);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_1150();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v2 + v68);
  if (v71)
  {
    OUTLINED_FUNCTION_484();
    sub_1C88E3C58();
LABEL_24:
    v62 = &qword_1EC2BB528;
    v63 = &qword_1C8BFAD88;
    v64 = v2;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_89_2();
  OUTLINED_FUNCTION_1051();
  OUTLINED_FUNCTION_184();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.== infix(_:_:)();
  v73 = v72;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2BAEA0, &qword_1C8BFAC58);
  if ((v73 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v74 = v100[9];
  v75 = *(v101 + 48);
  v76 = v103;
  OUTLINED_FUNCTION_786();
  OUTLINED_FUNCTION_778();
  v77 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v77, v78);
  if (v56)
  {
    OUTLINED_FUNCTION_24(v103 + v75);
    if (v56)
    {
      sub_1C8778ED8(v103, &qword_1EC2BAEA8, &qword_1C8BFAC60);
      goto LABEL_40;
    }

LABEL_34:
    v62 = &qword_1EC2BB520;
    v63 = &qword_1C8BFAD80;
LABEL_35:
    v64 = v76;
    goto LABEL_36;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v103 + v75);
  if (v79)
  {
    OUTLINED_FUNCTION_482();
    sub_1C88E3C58();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_88_1();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_184();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.== infix(_:_:)();
  v82 = v81;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v103, &qword_1EC2BAEA8, &qword_1C8BFAC60);
  if ((v82 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  if ((sub_1C87D2814(v1[2], v60[2]) & 1) == 0)
  {
    goto LABEL_37;
  }

  v83 = v100[10];
  v84 = *(v98 + 48);
  v76 = v97;
  OUTLINED_FUNCTION_786();
  OUTLINED_FUNCTION_778();
  v85 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v85, v86);
  if (v56)
  {
    OUTLINED_FUNCTION_24(v97 + v84);
    if (v56)
    {
      sub_1C8778ED8(v97, &qword_1EC2BAEB0, &qword_1C8BFAC68);
LABEL_46:
      v87 = v100[6];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v88, v89);
      v80 = sub_1C8BD517C();
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_1074();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v97 + v84);
  if (v90)
  {
    OUTLINED_FUNCTION_481_0();
    sub_1C88E3C58();
LABEL_50:
    v62 = &qword_1EC2BB518;
    v63 = &qword_1C8BFAD78;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_87_3();
  sub_1C88E3EC4();
  if ((MEMORY[0x1CCA7D0F0](*v83, v83[1], *v96, v96[1]) & 1) == 0 || (v83[2] == v96[2] ? (v91 = v83[3] == v96[3]) : (v91 = 0), !v91 && (sub_1C8BD529C() & 1) == 0))
  {
    sub_1C88E3C58();
    OUTLINED_FUNCTION_121();
    sub_1C88E3C58();
    v62 = &qword_1EC2BAEB0;
    v63 = &qword_1C8BFAC68;
    v64 = v97;
    goto LABEL_36;
  }

  v92 = *(v99 + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v93, v94);
  LOBYTE(v92) = OUTLINED_FUNCTION_100_1();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v97, &qword_1EC2BAEB0, &qword_1C8BFAC68);
  if (v92)
  {
    goto LABEL_46;
  }

LABEL_37:
  v80 = 0;
LABEL_38:
  OUTLINED_FUNCTION_157(v80);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C215C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C21DC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C224C()
{
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C22CC()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x656761726F74532ELL, 0xE800000000000000);

  qword_1EC2BA8A8 = v1;
  unk_1EC2BA8B0 = v2;
  return result;
}

void sub_1C89C243C()
{
  OUTLINED_FUNCTION_178_1();
  v2 = *v0;
  v3 = v0[1];
  v5 = v4;
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = v2;
      v7 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
LABEL_6:
      if (v6 != v7)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_210_1();
      sub_1C8BD4D6C();
      if (!v1)
      {
LABEL_8:
        v8 = *(v5(0) + 20);
        OUTLINED_FUNCTION_69();
      }

      OUTLINED_FUNCTION_177_0();
      return;
  }
}

uint64_t sub_1C89C256C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C25EC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C265C()
{
  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C26DC()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6C7469746275532ELL, 0xE900000000000065);

  qword_1EC2BA8D0 = v1;
  *algn_1EC2BA8D8 = v2;
  return result;
}

uint64_t sub_1C89C27A4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA8E0);
  __swift_project_value_buffer(v0, qword_1EC2BA8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E8, &qword_1C8C0A498);
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
    sub_1C8778ED8(v14, &qword_1EC2BAEB8, &qword_1C8BFAC70);
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
      sub_1C8778ED8(v23, &qword_1EC2BD5E8, &qword_1C8C0A498);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89C2EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD600, &qword_1C8C0A4B0);
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
    sub_1C8778ED8(v14, &qword_1EC2BAEB8, &qword_1C8BFAC70);
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
      sub_1C8778ED8(v23, &qword_1EC2BD600, &qword_1C8C0A4B0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD600, &qword_1C8C0A4B0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD600, &qword_1C8C0A4B0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C89C363C(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C89C3428(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_359();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
    OUTLINED_FUNCTION_113_1(v17);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C363C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEB8, &qword_1C8BFAC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAEB8, &qword_1C8BFAC70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB548, &qword_1C8BFAD98);
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
      sub_1C8778ED8(v0, &qword_1EC2BAEB8, &qword_1C8BFAC70);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
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
    OUTLINED_FUNCTION_359();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB548, &qword_1C8BFAD98);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.OneOf_SubtitleKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAEB8, &qword_1C8BFAC70);
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

uint64_t sub_1C89C3AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C3B50(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C3BC0()
{
  sub_1C8776818(&qword_1EC2BB510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C3C40()
{
  if (qword_1EC2B5AD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA8D0;
  v2 = *algn_1EC2BA8D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC2BA8F8 = v1;
  unk_1EC2BA900 = v2;
  return result;
}

uint64_t sub_1C89C3DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C3E70(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C3EE0()
{
  sub_1C8776818(&qword_1EC2BC3D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle.Static);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C3F60()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x74786554746C412ELL, 0xE800000000000000);

  qword_1EC2BA920 = v1;
  *algn_1EC2BA928 = v2;
  return result;
}

uint64_t sub_1C89C4024()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA930);
  __swift_project_value_buffer(v0, qword_1EC2BA930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C4264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E8, &qword_1C8C0A498);
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
    sub_1C8778ED8(v14, &qword_1EC2BAEC8, &qword_1C8BFAC80);
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
      sub_1C8778ED8(v23, &qword_1EC2BD5E8, &qword_1C8C0A498);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89C4720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5F8, &qword_1C8C0A4A8);
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
    sub_1C8778ED8(v14, &qword_1EC2BAEC8, &qword_1C8BFAC80);
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
      sub_1C8778ED8(v23, &qword_1EC2BD5F8, &qword_1C8C0A4A8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD5F8, &qword_1C8C0A4A8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD5F8, &qword_1C8C0A4A8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C89C4EBC(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C89C4CA8(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_357_0();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
    OUTLINED_FUNCTION_113_1(v17);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C4CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C4EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEC8, &qword_1C8BFAC80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAEC8, &qword_1C8BFAC80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB560, &qword_1C8BFADA0);
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
      sub_1C8778ED8(v0, &qword_1EC2BAEC8, &qword_1C8BFAC80);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
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
    OUTLINED_FUNCTION_357_0();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB560, &qword_1C8BFADA0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.OneOf_AltTextKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAEC8, &qword_1C8BFAC80);
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

uint64_t sub_1C89C5350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C53D0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C5440()
{
  sub_1C8776818(&qword_1EC2BB508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C54C0()
{
  if (qword_1EC2B5AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA920;
  v2 = *algn_1EC2BA928;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC2BA948 = v1;
  unk_1EC2BA950 = v2;
  return result;
}

void sub_1C89C55A0()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_118();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C8BE6F30;
  v15 = v14 + v13 + v11[14];
  *(v14 + v13) = v5;
  *v15 = v3;
  *(v15 + 8) = v1;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_121_0(v17);
  (*(v18 + 104))(v15, v16);
  sub_1C8BD510C();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C89C5734()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_55();
      v0();
    }
  }

  return result;
}

uint64_t sub_1C89C5828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C58A8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C5918()
{
  sub_1C8776818(&qword_1EC2BC400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C5998()
{
  if (qword_1EC2B5AB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA880;
  v2 = *algn_1EC2BA888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6567616D492ELL, 0xE600000000000000);

  qword_1EC2BA970 = v1;
  *algn_1EC2BA978 = v2;
  return result;
}

uint64_t sub_1C89C5A58()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA980);
  __swift_project_value_buffer(v0, qword_1EC2BA980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C5C98()
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
      v6 = OUTLINED_FUNCTION_300();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_300();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_1C89C5D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E8, &qword_1C8C0A498);
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
    sub_1C8778ED8(v14, &qword_1EC2BAED8, &qword_1C8BFAC90);
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
      sub_1C8778ED8(v23, &qword_1EC2BD5E8, &qword_1C8C0A498);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E8, &qword_1C8C0A498);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAED8, &qword_1C8BFAC90);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89C61D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5F0, &qword_1C8C0A4A0);
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
    sub_1C8778ED8(v14, &qword_1EC2BAED8, &qword_1C8BFAC90);
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
      sub_1C8778ED8(v23, &qword_1EC2BD5F0, &qword_1C8C0A4A0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD5F0, &qword_1C8C0A4A0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD5F0, &qword_1C8C0A4A0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAED8, &qword_1C8BFAC90);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C89C6974(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C89C6760(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_251_2();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
    OUTLINED_FUNCTION_113_1(v17);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C6760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC3B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C6974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAED8, &qword_1C8BFAC90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB578, &qword_1C8BFADA8);
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
      sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
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
    OUTLINED_FUNCTION_251_2();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB578, &qword_1C8BFADA8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
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

uint64_t sub_1C89C6E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C6E88(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C6EF8()
{
  sub_1C8776818(&qword_1EC2BB500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C6F78()
{
  if (qword_1EC2B5B18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA970;
  v2 = *algn_1EC2BA978;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6369746174532ELL, 0xE700000000000000);

  qword_1EC2BA998 = v1;
  unk_1EC2BA9A0 = v2;
  return result;
}

uint64_t sub_1C89C703C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA9A8);
  __swift_project_value_buffer(v0, qword_1EC2BA9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "file";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_36_6();
        sub_1C8955054();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C89C7338(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955198();
        break;
    }
  }
}

uint64_t sub_1C89C7338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD5E0, &qword_1C8C0A490);
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
    sub_1C8778ED8(v14, &qword_1EC2BAEE8, &qword_1C8BFACA0);
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
      sub_1C8778ED8(v23, &qword_1EC2BD5E0, &qword_1C8C0A490);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E0, &qword_1C8C0A490);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD5E0, &qword_1C8C0A490);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = OUTLINED_FUNCTION_9_4();
        sub_1C89C7A4C(v11, v12, v13, v14);
        OUTLINED_FUNCTION_105_2();
        sub_1C88E3C58();
        if (v0)
        {
          goto LABEL_11;
        }

        goto LABEL_3;
      }

      OUTLINED_FUNCTION_105_2();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_9_4();
      sub_1C89C7C60();
    }

    else
    {
      OUTLINED_FUNCTION_105_2();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_9_4();
      sub_1C89C78F4();
    }

    if (v0)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(0);
  OUTLINED_FUNCTION_113_1(v9);
LABEL_11:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C89C78F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1C8BD4D6C();
      return sub_1C87A997C(v6, v5);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C7A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C7C60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE8, &qword_1C8BFACA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89C7E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C7EBC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C7F2C()
{
  sub_1C8776818(&qword_1EC2BC428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C7FAC()
{
  if (qword_1EC2B5B28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BA998;
  v2 = unk_1EC2BA9A0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_1EC2BA9C0 = v1;
  *algn_1EC2BA9C8 = v2;
  return result;
}

uint64_t sub_1C89C8070()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA9D0);
  __swift_project_value_buffer(v0, qword_1EC2BA9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "configurationData";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)()
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
        sub_1C89C0130();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8971D40();
        break;
      case 1:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
    }
  }

  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
    OUTLINED_FUNCTION_1148(v3);
    OUTLINED_FUNCTION_1133(v4);
    if (!v7 & v6)
    {
      goto LABEL_5;
    }

    v8 = *v5;
    v9 = OUTLINED_FUNCTION_455();
    sub_1C87A8FBC(v9, v10);
    OUTLINED_FUNCTION_455();
    OUTLINED_FUNCTION_210_1();
    sub_1C8BD4D6C();
    v11 = OUTLINED_FUNCTION_455();
    sub_1C87A9A24(v11, v12);
    if (!v0)
    {
LABEL_5:
      OUTLINED_FUNCTION_1133(*(v1 + 28));
      if (!v7 & v6)
      {
        goto LABEL_7;
      }

      v14 = *v13;
      v15 = OUTLINED_FUNCTION_455();
      sub_1C87A8FBC(v15, v16);
      OUTLINED_FUNCTION_455();
      OUTLINED_FUNCTION_210_1();
      sub_1C8BD4D6C();
      v17 = OUTLINED_FUNCTION_455();
      sub_1C87A9A24(v17, v18);
      if (!v0)
      {
LABEL_7:
        v19 = *(v1 + 20);
        OUTLINED_FUNCTION_69();
      }
    }
  }

  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89C84D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C8554(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C85C4()
{
  sub_1C8776818(&qword_1EC2BC440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C8644()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C23810);
  qword_1EC2BA9E8 = 0xD00000000000002BLL;
  unk_1EC2BA9F0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89C86D8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BA9F8);
  __swift_project_value_buffer(v0, qword_1EC2BA9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C8980()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_210();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_51_1();
  if (!*v1 || (v12 = *(v1 + 8), OUTLINED_FUNCTION_946(*v1), sub_1C89CC8F8(), OUTLINED_FUNCTION_1146(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), !v0))
  {
    v13 = OUTLINED_FUNCTION_1142();
    v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v13);
    OUTLINED_FUNCTION_994(v14);
    OUTLINED_FUNCTION_915(v15);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v16)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_7:
      OUTLINED_FUNCTION_688();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_223_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_337_0();
    sub_1C8776818(v17, v18);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_11_15();
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

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.== infix(_:_:)()
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
  v18 = *v0;
  if (*(v1 + 8))
  {
    v17 = *v1 != 0;
  }

  if (*(v0 + 8) == 1)
  {
    if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
      goto LABEL_20;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_20;
  }

  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(0);
  OUTLINED_FUNCTION_724(v19);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_109_2();
  if (v20)
  {
    OUTLINED_FUNCTION_19(v2 + v3);
    if (v20)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_25:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v28, v29);
      v23 = OUTLINED_FUNCTION_746();
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_268();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2 + v3);
  if (v20)
  {
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
LABEL_18:
    v21 = &qword_1EC2B60E0;
    v22 = &qword_1C8BE6D90;
LABEL_19:
    sub_1C8778ED8(v2, v21, v22);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_1122();
  OUTLINED_FUNCTION_916();
  if (!v24)
  {

    OUTLINED_FUNCTION_216();
    sub_1C896B338();
    OUTLINED_FUNCTION_1164();

    if ((&qword_1C8BE6D88 & 1) == 0)
    {
      OUTLINED_FUNCTION_104_3();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
      v21 = &qword_1EC2B60D8;
      v22 = &qword_1C8BE6D88;
      goto LABEL_19;
    }
  }

  v25 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v26, v27);
  OUTLINED_FUNCTION_258();
  sub_1C8BD517C();
  OUTLINED_FUNCTION_351_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_229();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_20:
  v23 = 0;
LABEL_21:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C8F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD1A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C8F98(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C9008()
{
  sub_1C8776818(&qword_1EC2BAF90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C9088()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BAA10);
  __swift_project_value_buffer(v0, qword_1EC2BAA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirection_IMPORT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirection_EXPORT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C928C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C237A0);
  qword_1EC2BAA28 = 0xD00000000000002BLL;
  unk_1EC2BAA30 = 0x80000001C8C22BA0;
  return result;
}

uint64_t _s12SiriNLUTypes0A38_Nlu_External_IntelligenceFlow_ToolKitV0G10DefinitionV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v0, v1);
  OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1() & 1;
}

uint64_t sub_1C89C9414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD198, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89C9494(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC468, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89C9504()
{
  sub_1C8776818(&qword_1EC2BC468, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89C9580()
{
  if (qword_1EC2B5B60 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BAA28;
  v2 = unk_1EC2BAA30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F69737265562ELL, 0xE900000000000031);

  qword_1EC2BAA50 = v1;
  *algn_1EC2BAA58 = v2;
  return result;
}

uint64_t sub_1C89C9648()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BAA60);
  __swift_project_value_buffer(v0, qword_1EC2BAA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89C9848@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)()
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
      sub_1C89C9A50();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89C999C();
    }
  }
}

uint64_t sub_1C89C999C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);
  return sub_1C8BD4C7C();
}

void sub_1C89C9A50()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_921(v2);
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_210();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v9);
  v11 = OUTLINED_FUNCTION_229_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211_3();
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(0);
  OUTLINED_FUNCTION_329_0(v17);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72_2(v1);
  if (v14)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB5B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_532();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_523_0();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_1050();
  if (!v15 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(0), sub_1C8776818(&qword_1EC2BB5B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_532(), sub_1C8BD4E0C(), !v0))
  {
    v16 = &qword_1C8BFACB8 + *(v17 + 20);
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_1125();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  v10 = OUTLINED_FUNCTION_74_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41_6();
  v13 = OUTLINED_FUNCTION_233();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_212();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB5C0, &qword_1C8BFADB0);
  OUTLINED_FUNCTION_223_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_74();
  v42 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(v23);
  v24 = *(v42 + 24);
  v25 = *(v4 + 56);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_109_2();
  if (v26)
  {
    OUTLINED_FUNCTION_19(v1 + v25);
    if (v26)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_315();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1 + v25);
  if (v26)
  {
    OUTLINED_FUNCTION_523_0();
    sub_1C88E3C58();
LABEL_9:
    v27 = &qword_1EC2BB5C0;
    v28 = &qword_1C8BFADB0;
LABEL_10:
    sub_1C8778ED8(v1, v27, v28);
LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_1122();
  v29 = *(v0 + 20);
  if (*(v3 + v29) != *(v2 + v29))
  {
    v30 = *(v3 + v29);

    v31 = OUTLINED_FUNCTION_216();
    sub_1C89B0D48(v31, v32);
    OUTLINED_FUNCTION_1164();

    if ((&qword_1C8BFACB8 & 1) == 0)
    {
      sub_1C88E3C58();
      OUTLINED_FUNCTION_91();
      sub_1C88E3C58();
      v27 = &qword_1EC2BAF00;
      v28 = &qword_1C8BFACB8;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v33, v34);
  OUTLINED_FUNCTION_666();
  v35 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_104_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
  if ((v35 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v36 = *v8;
  v37 = *v6;
  sub_1C87DB73C();
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_255(v42);
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v39, v40);
  v41 = OUTLINED_FUNCTION_100_1();
LABEL_17:
  OUTLINED_FUNCTION_157(v41);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89C9FA4()
{
  OUTLINED_FUNCTION_382_0();
  sub_1C8BD530C();
  v0(0);
  v1 = OUTLINED_FUNCTION_184();
  sub_1C8776818(v1, v2);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C89CA05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD190, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89CA0DC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BC480, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89CA14C()
{
  sub_1C8776818(&qword_1EC2BC480, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89CA60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&byte_1EC2B60B8, &qword_1C8BE6D68);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v85 = *(v16 - 8);
  v17 = *(v85 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v86 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v80 = &v68 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD890, &qword_1C8C0A748);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = (&v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v26);
  v82 = (&v68 - v30);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v77 = v15;
  v69 = v13;
  v73 = v4;
  v74 = a1;
  v31 = 0;
  v32 = *(a1 + 64);
  v70 = a1 + 64;
  v33 = 1 << *(a1 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v32;
  v36 = (v33 + 63) >> 6;
  v81 = a2;
  v72 = v22;
  v78 = v28;
  v79 = v16;
  while (v35)
  {
    v84 = (v35 - 1) & v35;
    v37 = __clz(__rbit64(v35)) | (v31 << 6);
LABEL_13:
    v41 = (*(v74 + 48) + 16 * v37);
    v42 = *v41;
    v43 = v41[1];
    v44 = *(v74 + 56) + *(v85 + 72) * v37;
    sub_1C88E4144();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD898, &qword_1C8C0A750);
    v46 = *(v45 + 48);
    *v28 = v42;
    v28[1] = v43;
    sub_1C88E3EC4();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v45);

    a2 = v81;
    v38 = v82;
LABEL_14:
    sub_1C89DF3F4();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD898, &qword_1C8C0A750);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v47);
    v83 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v83;
    }

    v49 = *(v47 + 48);
    v50 = *v38;
    v51 = v38[1];
    sub_1C88E3EC4();
    v52 = sub_1C88DB074(v50, v51);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_31;
    }

    v55 = *(a2 + 56) + *(v85 + 72) * v52;
    v56 = v86;
    sub_1C88E4144();
    if (*&v56[*(v79 + 20)] != *&v22[*(v79 + 20)])
    {
      swift_beginAccess();
      v57 = v77;
      sub_1C89CBE2C();
      swift_beginAccess();
      v58 = v76;
      v59 = *(v75 + 48);
      sub_1C89CBE2C();
      sub_1C89CBE2C();
      v60 = v73;
      if (__swift_getEnumTagSinglePayload(v58, 1, v73) == 1)
      {

        sub_1C8778ED8(v57, &qword_1EC2B60C0, &unk_1C8BE6D70);
        v61 = __swift_getEnumTagSinglePayload(v58 + v59, 1, v60) == 1;
        v62 = v58;
        if (!v61)
        {
          goto LABEL_29;
        }

        sub_1C8778ED8(v58, &qword_1EC2B60C0, &unk_1C8BE6D70);
        v22 = v72;
      }

      else
      {
        v63 = v69;
        sub_1C89CBE2C();
        if (__swift_getEnumTagSinglePayload(v58 + v59, 1, v60) == 1)
        {

          sub_1C8778ED8(v77, &qword_1EC2B60C0, &unk_1C8BE6D70);
          sub_1C88E3C58();
          v62 = v58;
LABEL_29:
          sub_1C8778ED8(v62, &byte_1EC2B60B8, &qword_1C8BE6D68);
LABEL_30:

          sub_1C88E3C58();
LABEL_31:
          sub_1C88E3C58();
          return 0;
        }

        v64 = v71;
        sub_1C88E3EC4();

        v65 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind.== infix(_:_:)(v63, v64);
        sub_1C88E3C58();
        sub_1C8778ED8(v77, &qword_1EC2B60C0, &unk_1C8BE6D70);
        sub_1C88E3C58();
        sub_1C8778ED8(v58, &qword_1EC2B60C0, &unk_1C8BE6D70);
        v22 = v72;
        if ((v65 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      a2 = v81;
    }

    sub_1C8BD49FC();
    sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    v66 = sub_1C8BD517C();
    sub_1C88E3C58();
    result = sub_1C88E3C58();
    v28 = v78;
    v35 = v84;
    if ((v66 & 1) == 0)
    {
      return v83;
    }
  }

  v38 = v82;
  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD898, &qword_1C8C0A750);
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v67);
      v84 = 0;
      goto LABEL_14;
    }

    v40 = *(v70 + 8 * v39);
    ++v31;
    if (v40)
    {
      v84 = (v40 - 1) & v40;
      v37 = __clz(__rbit64(v40)) | (v39 << 6);
      v31 = v39;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89CBD78()
{
  OUTLINED_FUNCTION_12_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C89CBE2C()
{
  OUTLINED_FUNCTION_12_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

unint64_t sub_1C89CBEC0()
{
  result = qword_1EC2BAF88;
  if (!qword_1EC2BAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BAF88);
  }

  return result;
}

unint64_t sub_1C89CBF14()
{
  result = qword_1EC2BAFB8;
  if (!qword_1EC2BAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BAFB8);
  }

  return result;
}

unint64_t sub_1C89CBF68()
{
  result = qword_1EC2BB078;
  if (!qword_1EC2BB078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB078);
  }

  return result;
}

unint64_t sub_1C89CBFBC()
{
  result = qword_1EC2BB088;
  if (!qword_1EC2BB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB088);
  }

  return result;
}

unint64_t sub_1C89CC010()
{
  result = qword_1EC2BB0A8;
  if (!qword_1EC2BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB0A8);
  }

  return result;
}

unint64_t sub_1C89CC064()
{
  result = qword_1EC2BB0E0;
  if (!qword_1EC2BB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB0E0);
  }

  return result;
}

unint64_t sub_1C89CC0B8()
{
  result = qword_1EC2BB1C8;
  if (!qword_1EC2BB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB1C8);
  }

  return result;
}

unint64_t sub_1C89CC10C()
{
  result = qword_1EC2BB1D0;
  if (!qword_1EC2BB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB1D0);
  }

  return result;
}

unint64_t sub_1C89CC160()
{
  result = qword_1EC2BB1D8;
  if (!qword_1EC2BB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB1D8);
  }

  return result;
}

unint64_t sub_1C89CC1B4()
{
  result = qword_1EC2BB250;
  if (!qword_1EC2BB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB250);
  }

  return result;
}

unint64_t sub_1C89CC208()
{
  result = qword_1EC2BB2D0;
  if (!qword_1EC2BB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB2D0);
  }

  return result;
}

uint64_t sub_1C89CC25C(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations(0);
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v59);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v55 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6C8, &qword_1C8C0A570);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v61 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v61 + 16))
  {
    return 0;
  }

  v56 = a1;
  v57 = &v55 - v17;
  v60 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v55 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v62 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_13:
    v29 = (*(v56 + 48) + 16 * v25);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v56 + 56) + *(v4 + 72) * v25;
    sub_1C88E4144();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D0, &qword_1C8C0A578);
    v34 = *(v33 + 48);
    v35 = v60;
    *v60 = v31;
    v35[1] = v30;
    v36 = v35;
    sub_1C88E3EC4();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v33);

LABEL_14:
    v37 = v57;
    sub_1C89DF3F4();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D0, &qword_1C8C0A578);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
    v40 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v40;
    }

    v41 = v37;
    v42 = v8;
    v43 = *(v38 + 48);
    v44 = *v41;
    v45 = v41[1];
    sub_1C88E3EC4();
    v46 = v44;
    v47 = v61;
    sub_1C88DB074(v46, v45);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      goto LABEL_22;
    }

    v50 = *(v47 + 56);
    v51 = *(v4 + 72);
    v8 = v42;
    sub_1C88E4144();
    if ((sub_1C87DB3DC(*v42, *v11) & 1) == 0)
    {
      sub_1C88E3C58();
LABEL_22:
      sub_1C88E3C58();
      return 0;
    }

    v52 = *(v59 + 20);
    sub_1C8BD49FC();
    sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    v53 = sub_1C8BD517C();
    sub_1C88E3C58();
    result = sub_1C88E3C58();
    v23 = v62;
    if ((v53 & 1) == 0)
    {
      return v40;
    }
  }

  v26 = v60;
  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD6D0, &qword_1C8C0A578);
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v54);
      v62 = 0;
      goto LABEL_14;
    }

    v28 = *(v55 + 8 * v27);
    ++v19;
    if (v28)
    {
      v62 = (v28 - 1) & v28;
      v25 = __clz(__rbit64(v28)) | (v27 << 6);
      v19 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C89CC754()
{
  result = qword_1EC2BB400;
  if (!qword_1EC2BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB400);
  }

  return result;
}

unint64_t sub_1C89CC7A8()
{
  result = qword_1EC2BB468;
  if (!qword_1EC2BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB468);
  }

  return result;
}

unint64_t sub_1C89CC7FC()
{
  result = qword_1EC2BB480;
  if (!qword_1EC2BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB480);
  }

  return result;
}

unint64_t sub_1C89CC850()
{
  result = qword_1EC2BB4B0;
  if (!qword_1EC2BB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB4B0);
  }

  return result;
}

unint64_t sub_1C89CC8A4()
{
  result = qword_1EC2BB4B8;
  if (!qword_1EC2BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB4B8);
  }

  return result;
}

unint64_t sub_1C89CC8F8()
{
  result = qword_1EC2BB598;
  if (!qword_1EC2BB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB598);
  }

  return result;
}

unint64_t sub_1C89CC970()
{
  result = qword_1EC2BB5D0;
  if (!qword_1EC2BB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5D0);
  }

  return result;
}

unint64_t sub_1C89CC9C8()
{
  result = qword_1EC2BB5D8;
  if (!qword_1EC2BB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5D8);
  }

  return result;
}

unint64_t sub_1C89CCA20()
{
  result = qword_1EC2BB5E0;
  if (!qword_1EC2BB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5E0);
  }

  return result;
}

unint64_t sub_1C89CCA78()
{
  result = qword_1EC2BB5E8;
  if (!qword_1EC2BB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5E8);
  }

  return result;
}

unint64_t sub_1C89CCAD0()
{
  result = qword_1EC2BB5F0;
  if (!qword_1EC2BB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5F0);
  }

  return result;
}

unint64_t sub_1C89CCB28()
{
  result = qword_1EC2BB5F8;
  if (!qword_1EC2BB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB5F8);
  }

  return result;
}

unint64_t sub_1C89CCB80()
{
  result = qword_1EC2BB600;
  if (!qword_1EC2BB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB600);
  }

  return result;
}

unint64_t sub_1C89CCBD8()
{
  result = qword_1EC2BB608;
  if (!qword_1EC2BB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB608);
  }

  return result;
}

unint64_t sub_1C89CCC30()
{
  result = qword_1EC2BB610;
  if (!qword_1EC2BB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB610);
  }

  return result;
}

unint64_t sub_1C89CCC88()
{
  result = qword_1EC2BB618;
  if (!qword_1EC2BB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB618);
  }

  return result;
}

unint64_t sub_1C89CCCE0()
{
  result = qword_1EC2BB620;
  if (!qword_1EC2BB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB620);
  }

  return result;
}

unint64_t sub_1C89CCD38()
{
  result = qword_1EC2BB628;
  if (!qword_1EC2BB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB628);
  }

  return result;
}

unint64_t sub_1C89CCD90()
{
  result = qword_1EC2BB630;
  if (!qword_1EC2BB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB630);
  }

  return result;
}

unint64_t sub_1C89CCDE8()
{
  result = qword_1EC2BB638;
  if (!qword_1EC2BB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB638);
  }

  return result;
}

unint64_t sub_1C89CCE40()
{
  result = qword_1EC2BB640;
  if (!qword_1EC2BB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB640);
  }

  return result;
}

unint64_t sub_1C89CCE98()
{
  result = qword_1EC2BB648;
  if (!qword_1EC2BB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB648);
  }

  return result;
}

unint64_t sub_1C89CCEF0()
{
  result = qword_1EC2BB650;
  if (!qword_1EC2BB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB650);
  }

  return result;
}

unint64_t sub_1C89CCF48()
{
  result = qword_1EC2BB658;
  if (!qword_1EC2BB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB658);
  }

  return result;
}

unint64_t sub_1C89CCFA0()
{
  result = qword_1EC2BB660;
  if (!qword_1EC2BB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB660);
  }

  return result;
}

unint64_t sub_1C89CCFF8()
{
  result = qword_1EC2BB668;
  if (!qword_1EC2BB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB668);
  }

  return result;
}

unint64_t sub_1C89CD050()
{
  result = qword_1EC2BB670;
  if (!qword_1EC2BB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB670);
  }

  return result;
}

unint64_t sub_1C89CD0A8()
{
  result = qword_1EC2BB678;
  if (!qword_1EC2BB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB678);
  }

  return result;
}

unint64_t sub_1C89CD100()
{
  result = qword_1EC2BB680;
  if (!qword_1EC2BB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB680);
  }

  return result;
}

unint64_t sub_1C89CD158()
{
  result = qword_1EC2BB688;
  if (!qword_1EC2BB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB688);
  }

  return result;
}

unint64_t sub_1C89CD1B0()
{
  result = qword_1EC2BB690;
  if (!qword_1EC2BB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB690);
  }

  return result;
}

unint64_t sub_1C89CD208()
{
  result = qword_1EC2BB698;
  if (!qword_1EC2BB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB698);
  }

  return result;
}

unint64_t sub_1C89CD260()
{
  result = qword_1EC2BB6A0;
  if (!qword_1EC2BB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6A0);
  }

  return result;
}

unint64_t sub_1C89CD2B8()
{
  result = qword_1EC2BB6A8;
  if (!qword_1EC2BB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6A8);
  }

  return result;
}

unint64_t sub_1C89CD310()
{
  result = qword_1EC2BB6B0;
  if (!qword_1EC2BB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6B0);
  }

  return result;
}

unint64_t sub_1C89CD368()
{
  result = qword_1EC2BB6B8;
  if (!qword_1EC2BB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6B8);
  }

  return result;
}

unint64_t sub_1C89CD3C0()
{
  result = qword_1EC2BB6C0;
  if (!qword_1EC2BB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6C0);
  }

  return result;
}

unint64_t sub_1C89CD418()
{
  result = qword_1EC2BB6C8;
  if (!qword_1EC2BB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6C8);
  }

  return result;
}

unint64_t sub_1C89CD470()
{
  result = qword_1EC2BB6D0;
  if (!qword_1EC2BB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6D0);
  }

  return result;
}

unint64_t sub_1C89CD4C8()
{
  result = qword_1EC2BB6D8;
  if (!qword_1EC2BB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6D8);
  }

  return result;
}

unint64_t sub_1C89CD520()
{
  result = qword_1EC2BB6E0;
  if (!qword_1EC2BB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6E0);
  }

  return result;
}

unint64_t sub_1C89CD578()
{
  result = qword_1EC2BB6E8;
  if (!qword_1EC2BB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6E8);
  }

  return result;
}

unint64_t sub_1C89CD5D0()
{
  result = qword_1EC2BB6F0;
  if (!qword_1EC2BB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6F0);
  }

  return result;
}

unint64_t sub_1C89CD628()
{
  result = qword_1EC2BB6F8;
  if (!qword_1EC2BB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB6F8);
  }

  return result;
}

unint64_t sub_1C89CD680()
{
  result = qword_1EC2BB700;
  if (!qword_1EC2BB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB700);
  }

  return result;
}

unint64_t sub_1C89CD6D8()
{
  result = qword_1EC2BB708;
  if (!qword_1EC2BB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB708);
  }

  return result;
}

unint64_t sub_1C89CD730()
{
  result = qword_1EC2BB710;
  if (!qword_1EC2BB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB710);
  }

  return result;
}

unint64_t sub_1C89CD788()
{
  result = qword_1EC2BB718;
  if (!qword_1EC2BB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB718);
  }

  return result;
}

unint64_t sub_1C89CD7E0()
{
  result = qword_1EC2BB720;
  if (!qword_1EC2BB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB720);
  }

  return result;
}

unint64_t sub_1C89CD838()
{
  result = qword_1EC2BB728;
  if (!qword_1EC2BB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB728);
  }

  return result;
}

unint64_t sub_1C89CD890()
{
  result = qword_1EC2BB730;
  if (!qword_1EC2BB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB730);
  }

  return result;
}

unint64_t sub_1C89CD8E8()
{
  result = qword_1EC2BB738;
  if (!qword_1EC2BB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB738);
  }

  return result;
}

unint64_t sub_1C89CD940()
{
  result = qword_1EC2BB740;
  if (!qword_1EC2BB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB740);
  }

  return result;
}

unint64_t sub_1C89CD998()
{
  result = qword_1EC2BB748;
  if (!qword_1EC2BB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB748);
  }

  return result;
}

unint64_t sub_1C89CD9F0()
{
  result = qword_1EC2BB750;
  if (!qword_1EC2BB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB750);
  }

  return result;
}

unint64_t sub_1C89CDA48()
{
  result = qword_1EC2BB758;
  if (!qword_1EC2BB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB758);
  }

  return result;
}

unint64_t sub_1C89CDAA0()
{
  result = qword_1EC2BB760;
  if (!qword_1EC2BB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB760);
  }

  return result;
}

unint64_t sub_1C89CDAF8()
{
  result = qword_1EC2BB768;
  if (!qword_1EC2BB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB768);
  }

  return result;
}

unint64_t sub_1C89CDB50()
{
  result = qword_1EC2BB770;
  if (!qword_1EC2BB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB770);
  }

  return result;
}

unint64_t sub_1C89CDBA8()
{
  result = qword_1EC2BB778;
  if (!qword_1EC2BB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB778);
  }

  return result;
}

unint64_t sub_1C89CDC00()
{
  result = qword_1EC2BB780;
  if (!qword_1EC2BB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB780);
  }

  return result;
}

unint64_t sub_1C89CDC58()
{
  result = qword_1EC2BB788;
  if (!qword_1EC2BB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB788);
  }

  return result;
}

unint64_t sub_1C89CDCB0()
{
  result = qword_1EC2BB790;
  if (!qword_1EC2BB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB790);
  }

  return result;
}

unint64_t sub_1C89CDD08()
{
  result = qword_1EC2BB798;
  if (!qword_1EC2BB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB798);
  }

  return result;
}

unint64_t sub_1C89CDD60()
{
  result = qword_1EC2BB7A0;
  if (!qword_1EC2BB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7A0);
  }

  return result;
}

unint64_t sub_1C89CDDB8()
{
  result = qword_1EC2BB7A8;
  if (!qword_1EC2BB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7A8);
  }

  return result;
}

unint64_t sub_1C89CDE10()
{
  result = qword_1EC2BB7B0;
  if (!qword_1EC2BB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7B0);
  }

  return result;
}

unint64_t sub_1C89CDE68()
{
  result = qword_1EC2BB7B8;
  if (!qword_1EC2BB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7B8);
  }

  return result;
}

unint64_t sub_1C89CDEC0()
{
  result = qword_1EC2BB7C0;
  if (!qword_1EC2BB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7C0);
  }

  return result;
}

unint64_t sub_1C89CDF18()
{
  result = qword_1EC2BB7C8;
  if (!qword_1EC2BB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7C8);
  }

  return result;
}

unint64_t sub_1C89CDF70()
{
  result = qword_1EC2BB7D0;
  if (!qword_1EC2BB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7D0);
  }

  return result;
}

unint64_t sub_1C89CDFC8()
{
  result = qword_1EC2BB7D8;
  if (!qword_1EC2BB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7D8);
  }

  return result;
}

unint64_t sub_1C89CE020()
{
  result = qword_1EC2BB7E0;
  if (!qword_1EC2BB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7E0);
  }

  return result;
}

unint64_t sub_1C89CE078()
{
  result = qword_1EC2BB7E8;
  if (!qword_1EC2BB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7E8);
  }

  return result;
}

unint64_t sub_1C89CE0D0()
{
  result = qword_1EC2BB7F0;
  if (!qword_1EC2BB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7F0);
  }

  return result;
}

unint64_t sub_1C89CE128()
{
  result = qword_1EC2BB7F8;
  if (!qword_1EC2BB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB7F8);
  }

  return result;
}

unint64_t sub_1C89CE180()
{
  result = qword_1EC2BB800;
  if (!qword_1EC2BB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB800);
  }

  return result;
}

unint64_t sub_1C89CE1D8()
{
  result = qword_1EC2BB808;
  if (!qword_1EC2BB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB808);
  }

  return result;
}

unint64_t sub_1C89CE230()
{
  result = qword_1EC2BB810;
  if (!qword_1EC2BB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB810);
  }

  return result;
}

unint64_t sub_1C89CE288()
{
  result = qword_1EC2BB818;
  if (!qword_1EC2BB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB818);
  }

  return result;
}

unint64_t sub_1C89CE2E0()
{
  result = qword_1EC2BB820;
  if (!qword_1EC2BB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BB820);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1C89D7D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C89D7DAC()
{
  result = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C89D7ECC()
{
  v0 = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(319);
    if (v3 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(319);
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_1C89D800C()
{
  OUTLINED_FUNCTION_717();
  sub_1C89DC6F0(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_1049();
    sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_428();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C89D8104()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1C89D81C8()
{
  sub_1C89D7D48(319, &qword_1EC2BC548, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC550, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BC558, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BC560, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1C89DC6F0(319, &qword_1EC2BC568, &type metadata for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.RuntimeFlags, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1C89D7D48(319, &qword_1EC2BC570, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1C8BD49FC();
              if (v6 <= 0x3F)
              {
                sub_1C89D7D48(319, &qword_1EC2BC578, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1C89D7D48(319, &qword_1EC2BC580, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_1C89D84E0()
{
  sub_1C89D7D48(319, &qword_1EC2BC5A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC550, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BC560, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C8BD49FC();
        if (v3 <= 0x3F)
        {
          sub_1C89D7D48(319, &qword_1EC2BC578, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C89D7D48(319, &qword_1EC2BC580, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, MEMORY[0x1E69E6720]);
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

void sub_1C89D8764()
{
  sub_1C89D7D48(319, &qword_1EC2BC5F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC558, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BC5F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C89D7D48(319, &qword_1EC2BC600, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C89D7D48(319, &qword_1EC2BC608, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C89D7D48(319, &qword_1EC2BC610, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1C89D7D48(319, &qword_1EC2BC618, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1C89D7D48(319, &qword_1EC2BC620, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
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
  }
}

uint64_t sub_1C89D8A50()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C89D8BD4()
{
  result = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(319);
    if (v2 <= 0x3F)
    {
      result = sub_1C8BD47FC();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(319);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                        return 0;
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
  }

  return result;
}

void sub_1C89D8D5C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC698, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C89D8EEC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BC5C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1124Tm(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_906();
  }

  OUTLINED_FUNCTION_528();
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v2)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_266();
  }

  v9 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_1125Tm(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 12)
  {
    OUTLINED_FUNCTION_1072();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_898();
    OUTLINED_FUNCTION_18_0(v6);
    if (*(v7 + 84) == v3)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      OUTLINED_FUNCTION_264_0();
    }

    __swift_storeEnumTagSinglePayload(a1 + v9, a2, a2, v8);
  }
}

void sub_1C89D9278()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C89D9394()
{
  sub_1C89DB42C(319, &qword_1EC2BC758, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BC578, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BC5C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C89DC6F0(319, &qword_1EC2B4228, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1175Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  OUTLINED_FUNCTION_528();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_18_0(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
      OUTLINED_FUNCTION_240_0();
    }
  }

  v10 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void __swift_store_extra_inhabitant_index_1176Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_258();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_18_0(v7);
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_264_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
        OUTLINED_FUNCTION_248_0();
      }
    }

    v9 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

void sub_1C89D97CC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_223();
    sub_1C89D7D48(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BC5C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_428();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }
}

uint64_t sub_1C89D994C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_index_1322Tm);
}

uint64_t sub_1C89D99A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_1323Tm);
}

uint64_t sub_1C89D9A8C()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C89D9CEC()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1088Tm()
{
  OUTLINED_FUNCTION_528();
  OUTLINED_FUNCTION_17();
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_18_0(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_227();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAC0, &qword_1C8BFA9D8);
      OUTLINED_FUNCTION_266();
    }

    v4 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t __swift_store_extra_inhabitant_index_1089Tm()
{
  OUTLINED_FUNCTION_533_0();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_258();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_18_0(v5);
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAC0, &qword_1C8BFA9D8);
      OUTLINED_FUNCTION_264_0();
    }
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void sub_1C89D9FA8()
{
  OUTLINED_FUNCTION_248_1();
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_223();
    sub_1C89D7D48(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_1136();
      sub_1C89D7D48(319, &qword_1EC2BC5D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_383();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }
}

void sub_1C89DA084()
{
  sub_1C89D7D48(319, &qword_1EC2BC8A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C89DA174()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C89DA30C()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C89DA438()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C89DA588()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(319);
  if (v1 <= 0x3F)
  {
    v2 = sub_1C8BD47CC();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C89DA6DC()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(319);
  if (v1 <= 0x3F)
  {
    v2 = sub_1C8BD47CC();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_1C89DA7A4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC9D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BC9D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BC8D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C89DA920()
{
  sub_1C89D7D48(319, &qword_1EC2BC9F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C89DABEC()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
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

uint64_t sub_1C89DAD00()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C89DADE4()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.AvailabilityAnnotation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.FeatureFlag(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C89DAEAC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BCB00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatformVersion, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C89DAFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_959Tm_2);
}

uint64_t sub_1C89DB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceCapability.MobileGestalt(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_960Tm_2);
}

uint64_t sub_1C89DB0AC()
{
  v1 = OUTLINED_FUNCTION_248_1();
  v3 = v2(v1);
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(v0 - 8) + 84) = *(*(v3 - 8) + 84);
    return 0;
  }

  return v3;
}

uint64_t sub_1C89DB288(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1C89DB2C8(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C89DB350()
{
  sub_1C89DC6F0(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C89DB42C(319, &qword_1EC2BCB90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolInvocationSignature.ListOfRelations);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C89DB42C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD514C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C89DB514()
{
  sub_1C89DC6F0(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C89DB634()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_428();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

void sub_1C89DB71C()
{
  sub_1C89D7D48(319, &qword_1EC2BCBF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC558, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BC4E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C89DB934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_248_1();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_572();
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1915Tm()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_68_0(*v1);
  }

  v4 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA88, &qword_1C8BFA998);
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
      OUTLINED_FUNCTION_240_0();
    }
  }

  v9 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_1916Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v2 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA88, &qword_1C8BFA998);
      OUTLINED_FUNCTION_18_0(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_264_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
        OUTLINED_FUNCTION_248_0();
      }
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1C89DBC18()
{
  OUTLINED_FUNCTION_717();
  OUTLINED_FUNCTION_896(v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_831();
      sub_1C89D7D48(319, v5, v6, MEMORY[0x1E69E6720]);
      if (v7 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BC580, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          OUTLINED_FUNCTION_428();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_169_2();
        }
      }
    }
  }
}

uint64_t sub_1C89DBD68()
{
  v0 = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(319);
    if (v3 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(319);
    if (v4 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(319);
    if (v5 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(319);
    if (v6 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(319);
    if (v7 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(319);
    if (v8 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(319);
    if (v9 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(319);
    if (v10 > 0x3F)
    {
      return v2;
    }

    v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(319);
    if (v11 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_1C89DC04C()
{
  result = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_995Tm()
{
  OUTLINED_FUNCTION_643();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA88, &qword_1C8BFA998);
    v3 = OUTLINED_FUNCTION_566();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_996Tm()
{
  OUTLINED_FUNCTION_533_0();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA88, &qword_1C8BFA998);
    OUTLINED_FUNCTION_648();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1C89DC200()
{
  OUTLINED_FUNCTION_248_1();
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_831();
    sub_1C89D7D48(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_428();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1055Tm(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_68_0(*(v3 + *(a3 + 20)));
  }

  v8 = OUTLINED_FUNCTION_218();

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t __swift_store_extra_inhabitant_index_1056Tm()
{
  OUTLINED_FUNCTION_533_0();
  v4 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1C89DC448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_248_1();
  result = sub_1C8BD49FC();
  if (v6 <= 0x3F)
  {
    v7 = OUTLINED_FUNCTION_1049();
    result = a4(v7);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_428();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

void sub_1C89DC524()
{
  sub_1C89D7D48(319, &qword_1EC2BCD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BC558, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C89DC6F0(319, &qword_1EC2BCD50, &type metadata for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.ParameterFlags, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C8BD49FC();
        if (v3 <= 0x3F)
        {
          sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C89D7D48(319, &qword_1EC2BC658, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, MEMORY[0x1E69E6720]);
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

void sub_1C89DC6F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_1079Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  OUTLINED_FUNCTION_528();
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_21_0(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_1080Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_898();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_264_0();
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C89DC94C()
{
  result = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Equals(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.Contains(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1861Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_68_0(*v0);
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_565();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1862Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_264_0();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1C89DCB80()
{
  sub_1C89D7D48(319, &qword_1EC2BC770, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1004Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_68_0(*v0);
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_549();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1005Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_226_2();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1C89DCD4C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_1136();
    sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C89DCE38()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIcon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1166Tm()
{
  OUTLINED_FUNCTION_166();
  if (v0)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_240_0();
  v3 = OUTLINED_FUNCTION_21_0(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1167Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1C89DCF94()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C89DD0AC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89D7D48(319, &qword_1EC2BCE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C89DD218()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BCEA0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C89DD3A8()
{
  OUTLINED_FUNCTION_248_1();
  result = sub_1C8BD47CC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_572();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_959Tm()
{
  OUTLINED_FUNCTION_166();
  if (v0)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  OUTLINED_FUNCTION_138();
  v2 = OUTLINED_FUNCTION_565();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void __swift_store_extra_inhabitant_index_960Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_264_0();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1C89DD4E0()
{
  sub_1C89DC6F0(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C89DC6F0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1322Tm()
{
  OUTLINED_FUNCTION_166();
  if (v1)
  {
    return OUTLINED_FUNCTION_68_0(*(v0 + 24));
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_565();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1323Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_264_0();
    v4 = OUTLINED_FUNCTION_102_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C89DD6B4()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_383();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

void sub_1C89DD72C()
{
  sub_1C89DC6F0(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C89D7D48(319, &qword_1EC2BCF00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C89D7D48(319, &qword_1EC2BCF08, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C89D7D48(319, &qword_1EC2BCF10, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C89D7D48(319, &qword_1EC2BCF18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData, MEMORY[0x1E69E6720]);
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

uint64_t __swift_get_extra_inhabitant_index_1664Tm(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_906();
  }

  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_549();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1665Tm(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 12)
  {
    OUTLINED_FUNCTION_1072();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_226_2();

    __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v5);
  }
}

uint64_t sub_1C89DDB50()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_428();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_919Tm()
{
  OUTLINED_FUNCTION_643();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_0(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_221_0();
  }

  else
  {
    sub_1C8BD49FC();
    v5 = OUTLINED_FUNCTION_566();
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_920Tm()
{
  OUTLINED_FUNCTION_533_0();
  v6 = OUTLINED_FUNCTION_728(v1, v2, v3, v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_18_0(v8);
  if (*(v9 + 84) == v0)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_648();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void sub_1C89DDDA8()
{
  OUTLINED_FUNCTION_717();
  sub_1C89D7D48(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    OUTLINED_FUNCTION_1049();
    sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_428();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C89DDE1C()
{
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_986Tm()
{
  OUTLINED_FUNCTION_166();
  if (v0)
  {
    return OUTLINED_FUNCTION_122_1();
  }

  OUTLINED_FUNCTION_138();
  v2 = OUTLINED_FUNCTION_549();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void __swift_store_extra_inhabitant_index_987Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_166_1();
  }

  else
  {
    OUTLINED_FUNCTION_174_0();
    OUTLINED_FUNCTION_226_2();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1C89DDF70()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C89DC6F0(319, &qword_1EC2B4228, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1775Tm()
{
  OUTLINED_FUNCTION_528();
  OUTLINED_FUNCTION_17();
  v1 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    OUTLINED_FUNCTION_266();
  }

  v6 = OUTLINED_FUNCTION_21_0(v3);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t __swift_store_extra_inhabitant_index_1776Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_333();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = *(a4 + 20);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = *(a4 + 24);
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_1C89DE1AC()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_1136();
    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_223();
    sub_1C89D7D48(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_383();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C89DE25C()
{
  OUTLINED_FUNCTION_248_1();
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_428();
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1277Tm()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    return OUTLINED_FUNCTION_68_0(*v1);
  }

  OUTLINED_FUNCTION_528();
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_227();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_266();
  }

  v9 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_1278Tm()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_898();
    OUTLINED_FUNCTION_18_0(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_97();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_264_0();
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1C89DE470()
{
  OUTLINED_FUNCTION_717();
  OUTLINED_FUNCTION_896(v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_1136();
      OUTLINED_FUNCTION_80_3();
      OUTLINED_FUNCTION_223();
      sub_1C89D7D48(v5, v6, v7, v8);
      if (v9 <= 0x3F)
      {
        OUTLINED_FUNCTION_383();
        OUTLINED_FUNCTION_169_2();
      }
    }
  }
}

void sub_1C89DE4FC()
{
  sub_1C89D7D48(319, &qword_1EC2BC658, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C89DE5F8()
{
  sub_1C89D7D48(319, &qword_1EC2BD078, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C89DE72C()
{
  sub_1C89D7D48(319, &qword_1EC2BC578, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C89D7D48(319, &qword_1EC2BC658, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C89D7D48(319, &qword_1EC2BD0A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C89DE92C()
{
  OUTLINED_FUNCTION_717();
  v0 = OUTLINED_FUNCTION_80_3();
  sub_1C89D7D48(v0, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    v12 = *(v4 - 8) + 64;
    OUTLINED_FUNCTION_80_3();
    OUTLINED_FUNCTION_223();
    sub_1C89D7D48(v6, v7, v8, v9);
    if (v11 <= 0x3F)
    {
      v13 = *(v10 - 8) + 64;
      OUTLINED_FUNCTION_572();
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C89DEA34()
{
  sub_1C89D7D48(319, &qword_1EC2BC9D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1C89D7D48(319, &qword_1EC2BD100, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C89D7D48(319, &qword_1EC2BC8D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C89DEC00()
{
  sub_1C89D7D48(319, &qword_1EC2BD0D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C89DECC8()
{
  sub_1C89D7D48(319, &qword_1EC2BD140, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.AnyPredicate, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C89DEDBC()
{
  OUTLINED_FUNCTION_717();
  v0 = OUTLINED_FUNCTION_80_3();
  sub_1C89D7D48(v0, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C89DEE54()
{
  sub_1C89D7D48(319, &qword_1EC2BC658, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C89D7D48(319, &qword_1EC2BD170, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C89D7D48(319, &qword_1EC2BD178, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1C89D7D48(319, &qword_1EC2BD180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1C89D7D48(319, &qword_1EC2BD188, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_1C89DF10C()
{
  result = qword_1EC2BD5A0;
  if (!qword_1EC2BD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5A0);
  }

  return result;
}

unint64_t sub_1C89DF160()
{
  result = qword_1EC2BD5A8;
  if (!qword_1EC2BD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5A8);
  }

  return result;
}

unint64_t sub_1C89DF1B4()
{
  result = qword_1EC2BD5B0;
  if (!qword_1EC2BD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5B0);
  }

  return result;
}

unint64_t sub_1C89DF208()
{
  result = qword_1EC2BD5B8;
  if (!qword_1EC2BD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5B8);
  }

  return result;
}

unint64_t sub_1C89DF25C()
{
  result = qword_1EC2BD5C0;
  if (!qword_1EC2BD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5C0);
  }

  return result;
}

unint64_t sub_1C89DF2B0()
{
  result = qword_1EC2BD5C8;
  if (!qword_1EC2BD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5C8);
  }

  return result;
}

unint64_t sub_1C89DF304()
{
  result = qword_1EC2BD5D0;
  if (!qword_1EC2BD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5D0);
  }

  return result;
}

unint64_t sub_1C89DF358()
{
  result = qword_1EC2BD5D8;
  if (!qword_1EC2BD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BD5D8);
  }

  return result;
}

uint64_t sub_1C89DF3AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C89DF3F4()
{
  OUTLINED_FUNCTION_12_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_82_6(uint64_t a1)
{
  *(v1 + 8) = a1;
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v3 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_122_2()
{

  return sub_1C89CBE2C();
}

uint64_t OUTLINED_FUNCTION_134_3(uint64_t a1)
{
  v2 = *(a1 + 56);

  return sub_1C89CBE2C();
}

uint64_t OUTLINED_FUNCTION_200_3(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
  v4 = *(v3 + 40);
  return 0;
}

uint64_t OUTLINED_FUNCTION_222_2()
{

  return sub_1C89CBE2C();
}

uint64_t OUTLINED_FUNCTION_231_2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}