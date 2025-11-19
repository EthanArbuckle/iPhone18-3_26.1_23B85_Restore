uint64_t sub_1C8F6B840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D798, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F6B8C0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F6B930()
{
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F6B9B0()
{
  if (qword_1EC311710 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A7F0;
  v2 = *algn_1EC31A7F8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_1EC31A880 = v1;
  *algn_1EC31A888 = v2;
  return result;
}

uint64_t sub_1C8F6BA7C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A890);
  __swift_project_value_buffer(v0, qword_1EC31A890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "runtimeRequirements";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayRepresentation";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "kind";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "systemProtocols";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypeDefinition.Version1.Enumeration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6BEE0();
        break;
      case 2:
        OUTLINED_FUNCTION_222_5();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 3:
        OUTLINED_FUNCTION_227_3();
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6BFE0();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C02C();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C0E0();
        break;
      case 6:
        OUTLINED_FUNCTION_225_5();
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6C148();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F6BEE0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 32);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

void sub_1C8F6BF94()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

void sub_1C8F6BFE0()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F6C02C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 36);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_1C9063A4C();
}

void sub_1C8F6C148()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A3C();
  OUTLINED_FUNCTION_198();
}

void ToolKitProtoTypeDefinition.Version1.Enumeration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v2 = OUTLINED_FUNCTION_7_48();
  sub_1C8F6C328(v2, v3, v4, v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v6)
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      OUTLINED_FUNCTION_260_1();
      sub_1C8CD1B00(v7, v8);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    OUTLINED_FUNCTION_347_2();
    if (v9)
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement(0);
      OUTLINED_FUNCTION_71_9();
      sub_1C8CD1B00(v10, v11);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v12 = OUTLINED_FUNCTION_2_55();
    sub_1C8F6C4FC(v12, v13, v14, v15);
    if (*(v1 + 16))
    {
      v20 = *(v1 + 16);
      sub_1C8DC0E54();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    OUTLINED_FUNCTION_367_0();
    if (v16)
    {
      type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      OUTLINED_FUNCTION_223_4();
      sub_1C8CD1B00(v17, v18);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v19 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 40);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F6C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 32);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_1C8F6C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0) + 36);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F18, &unk_1C9072A20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t (*sub_1C8F6C728(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1C8F6C77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D790, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F6C7FC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA65030, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F6C86C()
{
  sub_1C8CD1B00(&qword_1EDA65030, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F6C8EC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A8A8);
  __swift_project_value_buffer(v0, qword_1EC31A8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KindUnknown";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KindAppEnum";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KindActionEnum";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KindTriggerEnum";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F6CB74()
{
  if (qword_1EC311748 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A880;
  v2 = *algn_1EC31A888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x657361432ELL, 0xE500000000000000);

  qword_1EC31A8C0 = v1;
  *algn_1EC31A8C8 = v2;
  return result;
}

uint64_t sub_1C8F6CC34()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A8D0);
  __swift_project_value_buffer(v0, qword_1EC31A8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F6CE5C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6CF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

void static ToolKitProtoTypeDefinition.Version1.Enumeration.Case.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_39_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A50, &unk_1C9068E30);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_41_19();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v18 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  OUTLINED_FUNCTION_155_4(v18);
  OUTLINED_FUNCTION_127_4();
  OUTLINED_FUNCTION_122_8();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_24_28();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
LABEL_17:
      OUTLINED_FUNCTION_261_1();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v28, v29);
      v21 = OUTLINED_FUNCTION_12_28();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_24_28();
  if (v19)
  {
    OUTLINED_FUNCTION_8_47();
    sub_1C8CD20B4(v1, v20);
LABEL_14:
    sub_1C8D16D78(v0, &qword_1EC312A50, &unk_1C9068E30);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_50_18();
  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoDisplayRepresentation.== infix(_:_:)();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v24, v25);
  v26 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v26, v27);
  sub_1C8D16D78(v0, &qword_1EC312A48, &unk_1C9072A10);
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_15:
  v21 = 0;
LABEL_18:
  OUTLINED_FUNCTION_50_0(v21);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F6D3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D788, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F6D434(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA650C8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F6D4A4()
{
  sub_1C8CD1B00(&qword_1EDA650C8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F6D524()
{
  if (qword_1EC311710 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A7F0;
  v2 = *algn_1EC31A7F8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x79726575512ELL, 0xE600000000000000);

  qword_1EC31A8E8 = v1;
  unk_1EC31A8F0 = v2;
  return result;
}

uint64_t sub_1C8F6D5E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A8F8);
  __swift_project_value_buffer(v0, qword_1EC31A8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8F6D810()
{
  OUTLINED_FUNCTION_196();
  v0 = OUTLINED_FUNCTION_31_22();
  v1(v0);
  OUTLINED_FUNCTION_178_4();
  OUTLINED_FUNCTION_84_6();
  sub_1C9063A4C();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F6D85C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314208, &unk_1C9074D30);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_1C8F6DBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D780, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F6DC40(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64EB8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F6DCB0()
{
  sub_1C8CD1B00(qword_1EDA64EB8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F6DD30()
{
  if (qword_1EC311770 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A8E8;
  v2 = unk_1EC31A8F0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000013, 0x80000001C90D0080);

  qword_1EC31A910 = v1;
  *algn_1EC31A918 = v2;
  return result;
}

uint64_t sub_1C8F6DDF8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A920);
  __swift_project_value_buffer(v0, qword_1EC31A920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "comparison";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringSearch";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "idSearch";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "all";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggested";
  *(v16 + 1) = 9;
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
  *v20 = "searchableItem";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "valid";
  *(v22 + 1) = 5;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "valueSearch";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "metadata";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E37C();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E430();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E4E4();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E598();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6BFE0();
        break;
      case 7:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E64C();
        break;
      case 8:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E700();
        break;
      case 9:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E7B4();
        break;
      case 10:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F6E868();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F6E37C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 24);
  type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  sub_1C8CD1B00(qword_1EDA64158, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E430()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 28);
  type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  sub_1C8CD1B00(qword_1EDA64B50, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E4E4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 32);
  type metadata accessor for ToolKitProtoAllPredicate(0);
  sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E598()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 36);
  type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E64C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 40);
  type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  sub_1C8CD1B00(&qword_1EDA63F30, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E700()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 44);
  type metadata accessor for ToolKitProtoValidPredicate(0);
  sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E7B4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 52);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  sub_1C8CD1B00(qword_1EDA61A20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F6E868()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 48);
  type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
  sub_1C8CD1B00(&qword_1EC31CE48, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);
  return sub_1C9063A4C();
}

void ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v1 || (type metadata accessor for ToolKitProtoComparisonPredicate.Template(0), sub_1C8CD1B00(qword_1EDA645B8, type metadata accessor for ToolKitProtoComparisonPredicate.Template), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v0))
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8F6EA9C(v2, v3, v4, v5);
    if (!v0)
    {
      v6 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6EC70(v6, v7, v8, v9);
      v10 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6EE44(v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6F018(v14, v15, v16, v17);
      OUTLINED_FUNCTION_347_2();
      if (v18)
      {
        type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
        OUTLINED_FUNCTION_47_18();
        sub_1C8CD1B00(v19, v20);
        OUTLINED_FUNCTION_227_0();
        OUTLINED_FUNCTION_29_23();
        sub_1C9063BBC();
      }

      v21 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6F1EC(v21, v22, v23, v24);
      v25 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6F3C0(v25, v26, v27, v28);
      v29 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6F594(v29, v30, v31, v32);
      v33 = OUTLINED_FUNCTION_2_55();
      sub_1C8F6F768(v33, v34, v35, v36);
      v37 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 56);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F6EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314258, &qword_1C9072A90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64158, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
}

uint64_t sub_1C8F6EC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314250, &unk_1C9074D40);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64B50, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
}

uint64_t sub_1C8F6EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 32);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314248, &unk_1C9072A80);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA653D8, type metadata accessor for ToolKitProtoAllPredicate);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoAllPredicate);
}

uint64_t sub_1C8F6F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 36);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314240, &unk_1C9074D50);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64788, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoSuggestedPredicate);
}

uint64_t sub_1C8F6F1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 40);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314238, &unk_1C9072A70);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA63F30, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
}

uint64_t sub_1C8F6F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v9 = *(*(valid - 8) + 64);
  MEMORY[0x1EEE9AC00](valid);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 44);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, valid) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314230, &unk_1C9074D60);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61830, type metadata accessor for ToolKitProtoValidPredicate);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoValidPredicate);
}

uint64_t sub_1C8F6F594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 52);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314220, &unk_1C9074D70);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA61A20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);
}

uint64_t sub_1C8F6F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoValueSearchPredicate.Template(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0) + 48);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314228, &qword_1C9072A60);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CE48, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoValueSearchPredicate.Template);
}

void static ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v7 = v6;
  v9 = v8;
  v200 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata(0);
  v10 = OUTLINED_FUNCTION_13_1(v200);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v18);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C268, &qword_1C90AC028);
  OUTLINED_FUNCTION_13_1(v199);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_109_0();
  v202 = type metadata accessor for ToolKitProtoValueSearchPredicate.Template(v22);
  v23 = OUTLINED_FUNCTION_13_1(v202);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
  OUTLINED_FUNCTION_9(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v31);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C270, &qword_1C90AC030);
  OUTLINED_FUNCTION_13_1(v201);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v35 = OUTLINED_FUNCTION_111();
  valid = type metadata accessor for ToolKitProtoValidPredicate(v35);
  v36 = OUTLINED_FUNCTION_13_1(valid);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
  OUTLINED_FUNCTION_9(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v44);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C278, &qword_1C90AC038);
  OUTLINED_FUNCTION_13_1(v203);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  v48 = OUTLINED_FUNCTION_111();
  v206 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(v48);
  v49 = OUTLINED_FUNCTION_13_1(v206);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
  OUTLINED_FUNCTION_9(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C280, &qword_1C90AC040);
  OUTLINED_FUNCTION_13_1(v205);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v60 = OUTLINED_FUNCTION_111();
  v208 = type metadata accessor for ToolKitProtoSuggestedPredicate(v60);
  v61 = OUTLINED_FUNCTION_13_1(v208);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_7_0();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
  OUTLINED_FUNCTION_9(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C288, &qword_1C90AC048);
  OUTLINED_FUNCTION_13_1(v207);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_97();
  v71 = OUTLINED_FUNCTION_111();
  v210 = type metadata accessor for ToolKitProtoAllPredicate(v71);
  v72 = OUTLINED_FUNCTION_13_1(v210);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_369_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
  OUTLINED_FUNCTION_9(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C290, &qword_1C90AC050);
  OUTLINED_FUNCTION_13_1(v209);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_104_7(v83, v194);
  v211 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v84 = OUTLINED_FUNCTION_13_1(v211);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_314_2(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
  OUTLINED_FUNCTION_9(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_134_3(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C298, &qword_1C90AC058);
  OUTLINED_FUNCTION_13_1(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_72();
  v97 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v98 = OUTLINED_FUNCTION_13_1(v97);
  v100 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_18_23();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
  OUTLINED_FUNCTION_9(v101);
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_73();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C2A0, &qword_1C90AC060);
  OUTLINED_FUNCTION_44_22(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_15_0();
  v109 = *v9;
  v110 = *v7;
  sub_1C8CEF59C();
  if ((v111 & 1) == 0)
  {
    goto LABEL_44;
  }

  v212 = v7;
  v195 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v112 = v195[6];
  v113 = v9;
  v114 = *(v4 + 48);
  v196 = v113;
  sub_1C8D63FCC();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v3);
  if (v115)
  {
    OUTLINED_FUNCTION_191(v3 + v114);
    if (v115)
    {
      sub_1C8D16D78(v3, &qword_1EC314258, &qword_1C9072A90);
      goto LABEL_13;
    }

LABEL_10:
    v116 = &qword_1EC31C2A0;
    v117 = &qword_1C90AC060;
LABEL_11:
    v118 = v3;
LABEL_43:
    sub_1C8D16D78(v118, v116, v117);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_203();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v3 + v114);
  if (v115)
  {
    OUTLINED_FUNCTION_292_2();
    goto LABEL_10;
  }

  sub_1C900BE74();
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v119, v120);
  OUTLINED_FUNCTION_398();
  v121 = sub_1C9063EAC();
  sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_1C8CD20B4(v2, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_1C8D16D78(v3, &qword_1EC314258, &qword_1C9072A90);
  if ((v121 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_13:
  v122 = v195;
  v123 = v195[7];
  v124 = *(v93 + 48);
  OUTLINED_FUNCTION_150_1();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_290_2();
  OUTLINED_FUNCTION_64_12(v1);
  if (v115)
  {
    OUTLINED_FUNCTION_30_26();
    v3 = v5;
    if (v115)
    {
      sub_1C8D16D78(v1, &qword_1EC314250, &unk_1C9074D40);
      goto LABEL_23;
    }

LABEL_21:
    v116 = &qword_1EC31C298;
    v117 = &qword_1C90AC058;
LABEL_42:
    v118 = v1;
    goto LABEL_43;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  v3 = v5;
  if (v125)
  {
    v126 = OUTLINED_FUNCTION_287_1();
    sub_1C8CD20B4(v126, v127);
    goto LABEL_21;
  }

  sub_1C900BE74();
  v128 = sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v129, v130);
  OUTLINED_FUNCTION_205_4();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_359_1();
  sub_1C8D16D78(v1, &qword_1EC314250, &unk_1C9074D40);
  if ((v128 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_23:
  v1 = v195[8];
  v131 = *(v209 + 48);
  OUTLINED_FUNCTION_280_2();
  OUTLINED_FUNCTION_166_4();
  v132 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_65_13(v132, v133);
  if (v115)
  {
    OUTLINED_FUNCTION_30_26();
    if (v115)
    {
      sub_1C8D16D78(v1, &qword_1EC314248, &unk_1C9072A80);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v134)
  {
    v135 = OUTLINED_FUNCTION_287_1();
    sub_1C8CD20B4(v135, v136);
LABEL_31:
    v116 = &qword_1EC31C290;
    v117 = &qword_1C90AC050;
    goto LABEL_42;
  }

  sub_1C900BE74();
  v137 = sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v138, v139);
  OUTLINED_FUNCTION_205_4();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_359_1();
  sub_1C8D16D78(v1, &qword_1EC314248, &unk_1C9072A80);
  if ((v137 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_33:
  v1 = v195[9];
  v140 = *(v207 + 48);
  OUTLINED_FUNCTION_280_2();
  OUTLINED_FUNCTION_166_4();
  v141 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_65_13(v141, v142);
  if (v115)
  {
    OUTLINED_FUNCTION_30_26();
    if (v115)
    {
      sub_1C8D16D78(v1, &qword_1EC314240, &unk_1C9074D50);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v143)
  {
    v144 = OUTLINED_FUNCTION_287_1();
    sub_1C8CD20B4(v144, v145);
LABEL_41:
    v116 = &qword_1EC31C288;
    v117 = &qword_1C90AC048;
    goto LABEL_42;
  }

  sub_1C900BE74();
  v147 = sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v148, v149);
  OUTLINED_FUNCTION_205_4();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_359_1();
  sub_1C8D16D78(v1, &qword_1EC314240, &unk_1C9074D50);
  if ((v147 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v150 = v196[1];
  v151 = v212[1];
  sub_1C8CEDC30();
  if ((v152 & 1) == 0)
  {
    goto LABEL_44;
  }

  v1 = v195[10];
  v153 = *(v205 + 48);
  OUTLINED_FUNCTION_280_2();
  OUTLINED_FUNCTION_166_4();
  v154 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_65_13(v154, v155);
  if (v115)
  {
    OUTLINED_FUNCTION_30_26();
    if (v115)
    {
      sub_1C8D16D78(v1, &qword_1EC314238, &unk_1C9072A70);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v156)
  {
    v157 = OUTLINED_FUNCTION_287_1();
    sub_1C8CD20B4(v157, v158);
LABEL_56:
    v116 = &qword_1EC31C280;
    v117 = &qword_1C90AC040;
    goto LABEL_42;
  }

  sub_1C900BE74();
  v159 = sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v160, v161);
  OUTLINED_FUNCTION_205_4();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_359_1();
  sub_1C8D16D78(v1, &qword_1EC314238, &unk_1C9072A70);
  if ((v159 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_58:
  v1 = v195[11];
  v162 = *(v203 + 48);
  OUTLINED_FUNCTION_280_2();
  OUTLINED_FUNCTION_166_4();
  v163 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_65_13(v163, v164);
  if (v115)
  {
    OUTLINED_FUNCTION_30_26();
    if (v115)
    {
      sub_1C8D16D78(v1, &qword_1EC314230, &unk_1C9074D60);
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v165)
  {
    v166 = OUTLINED_FUNCTION_287_1();
    sub_1C8CD20B4(v166, v167);
LABEL_66:
    v116 = &qword_1EC31C278;
    v117 = &qword_1C90AC038;
    goto LABEL_42;
  }

  sub_1C900BE74();
  v168 = sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v169, v170);
  OUTLINED_FUNCTION_205_4();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_359_1();
  sub_1C8D16D78(v1, &qword_1EC314230, &unk_1C9074D60);
  if ((v168 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_68:
  v1 = v195[12];
  v171 = *(v201 + 48);
  OUTLINED_FUNCTION_280_2();
  OUTLINED_FUNCTION_166_4();
  v172 = OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_65_13(v172, v173);
  if (v115)
  {
    OUTLINED_FUNCTION_30_26();
    if (v115)
    {
      sub_1C8D16D78(v1, &qword_1EC314228, &qword_1C9072A60);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_30_26();
  if (v174)
  {
    v175 = OUTLINED_FUNCTION_287_1();
    sub_1C8CD20B4(v175, v176);
LABEL_76:
    v116 = &qword_1EC31C270;
    v117 = &qword_1C90AC030;
    goto LABEL_42;
  }

  sub_1C900BE74();
  static ToolKitProtoValueSearchPredicate.Template.== infix(_:_:)();
  OUTLINED_FUNCTION_163_7();
  OUTLINED_FUNCTION_359_1();
  sub_1C8D16D78(v1, &qword_1EC314228, &qword_1C9072A60);
  if ((&qword_1C9072A60 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_78:
  v177 = v195[13];
  v178 = *(v199 + 48);
  OUTLINED_FUNCTION_193_5();
  OUTLINED_FUNCTION_202_5();
  v179 = OUTLINED_FUNCTION_175_5();
  OUTLINED_FUNCTION_65_13(v179, v180);
  if (v115)
  {
    OUTLINED_FUNCTION_34_17(v3 + v178);
    if (v115)
    {
      sub_1C8D16D78(v3, &qword_1EC314220, &unk_1C9074D70);
LABEL_98:
      v189 = v122[14];
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v190, v191);
      OUTLINED_FUNCTION_257_2();
      v146 = OUTLINED_FUNCTION_343_2();
      goto LABEL_45;
    }

    goto LABEL_86;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_34_17(v3 + v178);
  if (v181)
  {
    OUTLINED_FUNCTION_313_2();
LABEL_86:
    v116 = &qword_1EC31C268;
    v117 = &qword_1C90AC028;
    goto LABEL_11;
  }

  sub_1C900BE74();
  v182 = *v198 == *v197 && v198[1] == v197[1];
  if (!v182 && (sub_1C9064C2C() & 1) == 0 || (v198[2] == v197[2] ? (v183 = v198[3] == v197[3]) : (v183 = 0), !v183 && (sub_1C9064C2C() & 1) == 0))
  {
    sub_1C8CD20B4(v197, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);
    v192 = OUTLINED_FUNCTION_93();
    sub_1C8CD20B4(v192, v193);
    v116 = &qword_1EC314220;
    v117 = &unk_1C9074D70;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_357_1(v200);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v184, v185);
  OUTLINED_FUNCTION_256_1();
  v186 = OUTLINED_FUNCTION_358_1();
  sub_1C8CD20B4(v197, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);
  v187 = OUTLINED_FUNCTION_119();
  sub_1C8CD20B4(v187, v188);
  sub_1C8D16D78(v3, &qword_1EC314220, &unk_1C9074D70);
  v122 = v195;
  if (v186)
  {
    goto LABEL_98;
  }

LABEL_44:
  v146 = 0;
LABEL_45:
  OUTLINED_FUNCTION_50_0(v146);
  OUTLINED_FUNCTION_163();
}

uint64_t (*sub_1C8F70B20(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_1C8F70B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D778, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F70BF4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F70C64()
{
  sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F70CE4()
{
  if (qword_1EC311780 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A910;
  v2 = *algn_1EC31A918;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90D0060);

  qword_1EC31A938 = v1;
  unk_1EC31A940 = v2;
  return result;
}

uint64_t sub_1C8F70DAC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A948);
  __swift_project_value_buffer(v0, qword_1EC31A948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queryIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F7105C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D770, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F710DC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA61A20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7114C()
{
  sub_1C8CD1B00(qword_1EDA61A20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F711CC()
{
  if (qword_1EC311710 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A7F0;
  v2 = *algn_1EC31A7F8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656C6261646F432ELL, 0xE800000000000000);

  qword_1EC31A960 = v1;
  *algn_1EC31A968 = v2;
  return result;
}

uint64_t sub_1C8F71290()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A970);
  __swift_project_value_buffer(v0, qword_1EC31A970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F714BC()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    result = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v4 = OUTLINED_FUNCTION_101_7();
      v0(v4);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_29_18();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t sub_1C8F71530()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(0) + 20);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_1C9063A4C();
}

void sub_1C8F71624()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v0))
  {
    v6 = OUTLINED_FUNCTION_2_55();
    v4(v6);
    if (!v0)
    {
      v7 = *(v2(0) + 24);
      OUTLINED_FUNCTION_13_23();
    }
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F716A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313F18, &unk_1C9072A20);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63E58, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_1C8F718FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D768, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7197C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C940, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F719EC()
{
  sub_1C8CD1B00(&qword_1EC31C940, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Codable);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F71A84()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EDA61CD8);
  __swift_project_value_buffer(v0, qword_1EDA61CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C90ABEA0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "primitive";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "enumeration";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entity";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "collection";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "query";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "entityIdentifier";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "deferred";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "codable";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8F71ED0(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8F72258(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8F725E8(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8F72978(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F72D08(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8F73098(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8F7342C(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F737BC(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F71ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA60, &qword_1C90BBE40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  v18 = v17 & 0xF000000000000007;
  if (!(v17 >> 61) && v18 != 0xF000000000000007)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA60, &qword_1C90BBE40);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA60, &qword_1C90BBE40);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA60, &qword_1C90BBE40);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA60, &qword_1C90BBE40);
  }

  sub_1C900BE74();
  if (v18 != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA60, &qword_1C90BBE40);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F72258(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA68, &qword_1C90BBE48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA68, &qword_1C90BBE48);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA65E18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA68, &qword_1C90BBE48);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA68, &qword_1C90BBE48);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA68, &qword_1C90BBE48);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA68, &qword_1C90BBE48);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x2000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F725E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA70, &qword_1C90BBE50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA70, &qword_1C90BBE50);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CBB8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA70, &qword_1C90BBE50);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA70, &qword_1C90BBE50);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA70, &qword_1C90BBE50);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA70, &qword_1C90BBE50);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x4000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F72978(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA78, &qword_1C90BBE58);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA78, &qword_1C90BBE58);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA62298, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA78, &qword_1C90BBE58);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA78, &qword_1C90BBE58);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA78, &qword_1C90BBE58);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA78, &qword_1C90BBE58);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x6000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F72D08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v7 = *(*(Value - 8) + 64);
  MEMORY[0x1EEE9AC00](Value);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA80, &qword_1C90BBE60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, Value);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA80, &qword_1C90BBE60);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, Value);
  }

  sub_1C8CD1B00(&qword_1EC31CBF0, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA80, &qword_1C90BBE60);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, Value) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA80, &qword_1C90BBE60);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA80, &qword_1C90BBE60);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA80, &qword_1C90BBE60);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x8000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F73098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA88, &qword_1C90BBE68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA88, &qword_1C90BBE68);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CC08, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA88, &qword_1C90BBE68);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA88, &qword_1C90BBE68);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA88, &qword_1C90BBE68);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA88, &qword_1C90BBE68);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0xA000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F7342C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA90, &qword_1C90BBE70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0xC000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA90, &qword_1C90BBE70);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CC20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31DA90, &qword_1C90BBE70);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA90, &qword_1C90BBE70);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31DA90, &qword_1C90BBE70);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA90, &qword_1C90BBE70);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0xC000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F737BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA98, &qword_1C90BBE78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  __swift_storeEnumTagSinglePayload(v24 - v15, 1, 1, v6);
  v24[0] = a1;
  v17 = *a1;
  v18 = v17 & 0xF000000000000007;
  if (v17 >> 61 == 7 && v18 != 0xF000000000000007)
  {

    sub_1C8D16D78(v16, &qword_1EC31DA98, &qword_1C90BBE78);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CBD0, type metadata accessor for ToolKitProtoTypedValue.CodableValue);
  sub_1C9063A4C();
  if (v4)
  {
    v20 = v16;
    return sub_1C8D16D78(v20, &qword_1EC31DA98, &qword_1C90BBE78);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31DA98, &qword_1C90BBE78);
    v20 = v13;
    return sub_1C8D16D78(v20, &qword_1EC31DA98, &qword_1C90BBE78);
  }

  sub_1C900BE74();
  if (v18 != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31DA98, &qword_1C90BBE78);
  v22 = swift_allocBox();
  sub_1C900BE74();
  v23 = *v24[0];
  *v24[0] = v22 | 0xE000000000000000;
  return sub_1C8CD0FB0(v23);
}

void sub_1C8F73B48(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA65E18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F73CA0(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CBB8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.EntityValue);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F73DF8(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA62298, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F73F50(void *a1)
{
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v3 = *(*(Value - 8) + 64);
  MEMORY[0x1EEE9AC00](Value);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CBF0, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.QueryValue);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F740A8(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CC08, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F74200(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CC20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F74358(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 61 != 7 || (*a1 & 0xF000000000000007) == 0xF000000000000007)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CBD0, type metadata accessor for ToolKitProtoTypedValue.CodableValue);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypedValue.CodableValue);
  }
}

uint64_t sub_1C8F74534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D760, type metadata accessor for ToolKitProtoTypedValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F745B4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F74624()
{
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F746E0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A998);
  __swift_project_value_buffer(v0, qword_1EC31A998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serializedVariable";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F74960()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.ID(0) + 24);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.ID.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  v3 = *v0;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_181_1();
  if (sub_1C8EB7FAC(v5, v6) || (OUTLINED_FUNCTION_181_1(), OUTLINED_FUNCTION_23_29(), sub_1C9063B3C(), !v1))
  {
    v7 = OUTLINED_FUNCTION_2_55();
    sub_1C8F74AB0(v7, v8, v9, v10);
    if (!v1)
    {
      v11 = v2[2];
      v12 = v2[3];
      OUTLINED_FUNCTION_36_21();
      if (v13)
      {
        OUTLINED_FUNCTION_10_33();
        sub_1C9063B8C();
      }

      v14 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
      OUTLINED_FUNCTION_53_15(v14);
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F74AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.ID(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_1C8F74D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D758, type metadata accessor for ToolKitProtoTypedValue.ID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F74D8C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C960, type metadata accessor for ToolKitProtoTypedValue.ID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F74DFC()
{
  sub_1C8CD1B00(&qword_1EC31C960, type metadata accessor for ToolKitProtoTypedValue.ID);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F74ECC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EDA61D98);
  __swift_project_value_buffer(v0, qword_1EDA61D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C90ABED0;
  v4 = v54 + v3 + v1[14];
  *(v54 + v3) = 1;
  *v4 = "noneVariant";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v54 + v3 + v2 + v1[14];
  *(v54 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v54 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v54 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "number";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v54 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "decimal";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v54 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "string";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v54 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "date";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v54 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "dateComponents";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v54 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "url";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v54 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "attributedString";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v54 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "measurement";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v54 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "currencyAmount";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v54 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "paymentMethod";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v54 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placemark";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v54 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "person";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v7();
  v35 = (v54 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "file";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v54 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "app";
  *(v38 + 1) = 3;
  v38[16] = 2;
  v7();
  v39 = (v54 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "searchableItem";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v54 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "encodedDateComponents";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v54 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "shortcut";
  *(v44 + 1) = 8;
  v44[16] = 2;
  v7();
  v45 = (v54 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 22;
  *v46 = "recurrenceRule";
  *(v46 + 1) = 14;
  v46[16] = 2;
  v7();
  v47 = (v54 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 23;
  *v48 = "dateInterval";
  *(v48 + 1) = 12;
  v48[16] = 2;
  v7();
  v49 = (v54 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 24;
  *v50 = "personNameComponents";
  *(v50 + 1) = 20;
  v50[16] = 2;
  v7();
  v51 = (v54 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 25;
  *v52 = "duration";
  *(v52 + 1) = 8;
  v52[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_11_38();
        sub_1C8F6278C();
        break;
      case 2:
        v31 = OUTLINED_FUNCTION_5_39();
        sub_1C8F758B0(v31, v32);
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_5_39();
        sub_1C8F75A3C(v23, v24);
        break;
      case 4:
        v29 = OUTLINED_FUNCTION_5_39();
        sub_1C8F75BD4(v29, v30);
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8F75D6C(v15, v16, v17, v18);
        break;
      case 6:
      case 9:
        OUTLINED_FUNCTION_11_38();
        sub_1C8F7677C();
        break;
      case 7:
        v45 = OUTLINED_FUNCTION_8_32();
        sub_1C8F76264(v45, v46, v47, v48);
        break;
      case 8:
      case 10:
      case 18:
        OUTLINED_FUNCTION_11_38();
        sub_1C8F768E8();
        break;
      case 11:
        v53 = OUTLINED_FUNCTION_8_32();
        sub_1C8F76A90(v53, v54, v55, v56);
        break;
      case 12:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8F76F88(v11, v12, v13, v14);
        break;
      case 13:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F77480(v19, v20, v21, v22);
        break;
      case 14:
        v41 = OUTLINED_FUNCTION_8_32();
        sub_1C8F77978(v41, v42, v43, v44);
        break;
      case 15:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F77E70(v7, v8, v9, v10);
        break;
      case 16:
        v25 = OUTLINED_FUNCTION_8_32();
        sub_1C8F78368(v25, v26, v27, v28);
        break;
      case 17:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8F78860(v3, v4, v5, v6);
        break;
      case 19:
        v49 = OUTLINED_FUNCTION_8_32();
        sub_1C8F78D58(v49, v50, v51, v52);
        break;
      case 20:
        v61 = OUTLINED_FUNCTION_8_32();
        sub_1C8F79250(v61, v62, v63, v64);
        break;
      case 22:
        v33 = OUTLINED_FUNCTION_8_32();
        sub_1C8F79748(v33, v34, v35, v36);
        break;
      case 23:
        v37 = OUTLINED_FUNCTION_8_32();
        sub_1C8F79C40(v37, v38, v39, v40);
        break;
      case 24:
        v57 = OUTLINED_FUNCTION_8_32();
        sub_1C8F7A138(v57, v58, v59, v60);
        break;
      case 25:
        v65 = OUTLINED_FUNCTION_8_32();
        sub_1C8F7A630(v65, v66, v67, v68);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F758B0(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v13 = 2;
  result = sub_1C906390C();
  if (!v2)
  {
    v9 = v13;
    if (v13 != 2)
    {
      sub_1C8D63FCC();
      v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
      sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
      if (EnumTagSinglePayload != 1)
      {
        sub_1C90638EC();
      }

      sub_1C8D16D78(a2, &qword_1EC3139B8, &qword_1C9074DD0);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_1C8F75A3C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v11 = 0;
  v12 = 1;
  result = sub_1C90639AC();
  if (!v2 && (v12 & 1) == 0)
  {
    v13 = v11;
    sub_1C8D63FCC();
    v9 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
    sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
    if (EnumTagSinglePayload != 1)
    {
      sub_1C90638EC();
    }

    sub_1C8D16D78(a2, &qword_1EC3139B8, &qword_1C9074DD0);
    *a2 = v13;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1C8F75BD4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 1;
  result = sub_1C90639DC();
  if (!v2 && (v13 & 1) == 0)
  {
    v9 = v12;
    sub_1C8D63FCC();
    v10 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
    if (EnumTagSinglePayload != 1)
    {
      sub_1C90638EC();
    }

    sub_1C8D16D78(a2, &qword_1EC3139B8, &qword_1C9074DD0);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1C8F75D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A40, &qword_1C906F558);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC313A40, &qword_1C906F558);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C980, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC313A40, &qword_1C906F558);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC313A40, &qword_1C906F558);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC313A40, &qword_1C906F558);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC313A40, &qword_1C906F558);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F76264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v42 = a3;
  v41 = a2;
  v5 = sub_1C906378C();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  __swift_storeEnumTagSinglePayload(&v34 - v25, 1, 1, v5);
  v34 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);
  v36 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v14, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v26, &qword_1EC313AD0, &unk_1C9074D00);
      v27 = *(v38 + 32);
      v27(v10, v18, v5);
      v27(v26, v10, v5);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v18, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900]);
  v28 = v39;
  sub_1C9063A4C();
  if (v28)
  {
    v29 = v26;
    return sub_1C8D16D78(v29, &qword_1EC313AD0, &unk_1C9074D00);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1C8D16D78(v26, &qword_1EC313AD0, &unk_1C9074D00);
    v29 = v23;
    return sub_1C8D16D78(v29, &qword_1EC313AD0, &unk_1C9074D00);
  }

  v31 = *(v38 + 32);
  v31(v37, v23, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v32 = v36;
  sub_1C8D16D78(v26, &qword_1EC313AD0, &unk_1C9074D00);
  v33 = v34;
  sub_1C8D16D78(v34, &qword_1EC3139B8, &qword_1C9074DD0);
  v31(v33, v37, v5);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v33, 0, 1, v32);
}

void sub_1C8F7677C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_223();
  v7 = OUTLINED_FUNCTION_342(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  sub_1C90639FC();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_198();
}

void sub_1C8F768E8()
{
  OUTLINED_FUNCTION_196();
  v6 = OUTLINED_FUNCTION_342(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  sub_1C906396C();
  sub_1C8CE7BD0(0, 0xF000000000000000);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F76A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA00, &qword_1C90BBDE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA00, &qword_1C90BBDE0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C9B8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA00, &qword_1C90BBDE0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA00, &qword_1C90BBDE0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA00, &qword_1C90BBDE0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA00, &qword_1C90BBDE0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F76F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA08, &qword_1C90BBDE8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA08, &qword_1C90BBDE8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C9D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA08, &qword_1C90BBDE8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA08, &qword_1C90BBDE8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA08, &qword_1C90BBDE8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA08, &qword_1C90BBDE8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F77480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA10, &qword_1C90BBDF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA10, &qword_1C90BBDF0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31C9E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA10, &qword_1C90BBDF0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA10, &qword_1C90BBDF0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA10, &qword_1C90BBDF0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA10, &qword_1C90BBDF0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F77978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA18, &qword_1C90BBDF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA18, &qword_1C90BBDF8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CA08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA18, &qword_1C90BBDF8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA18, &qword_1C90BBDF8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA18, &qword_1C90BBDF8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA18, &qword_1C90BBDF8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F77E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA20, &qword_1C90BBE00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA20, &qword_1C90BBE00);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CA28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA20, &qword_1C90BBE00);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA20, &qword_1C90BBE00);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA20, &qword_1C90BBE00);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA20, &qword_1C90BBE00);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F78368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA28, &qword_1C90BBE08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA28, &qword_1C90BBE08);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA28, &qword_1C90BBE08);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA28, &qword_1C90BBE08);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA28, &qword_1C90BBE08);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA28, &qword_1C90BBE08);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F78860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA30, &qword_1C90BBE10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA30, &qword_1C90BBE10);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA30, &qword_1C90BBE10);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA30, &qword_1C90BBE10);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA30, &qword_1C90BBE10);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA30, &qword_1C90BBE10);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F78D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA38, &qword_1C90BBE18);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA38, &qword_1C90BBE18);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CAD8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA38, &qword_1C90BBE18);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA38, &qword_1C90BBE18);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA38, &qword_1C90BBE18);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA38, &qword_1C90BBE18);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F79250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA40, &qword_1C90BBE20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA40, &qword_1C90BBE20);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CAC0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA40, &qword_1C90BBE20);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA40, &qword_1C90BBE20);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA40, &qword_1C90BBE20);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA40, &qword_1C90BBE20);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F79748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA48, &qword_1C90BBE28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA48, &qword_1C90BBE28);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CB10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA48, &qword_1C90BBE28);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA48, &qword_1C90BBE28);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA48, &qword_1C90BBE28);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA48, &qword_1C90BBE28);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F79C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA50, &qword_1C90BBE30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA50, &qword_1C90BBE30);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CB80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA50, &qword_1C90BBE30);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA50, &qword_1C90BBE30);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA50, &qword_1C90BBE30);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA50, &qword_1C90BBE30);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F7A138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1C8D16D78(v24, &qword_1EC313A50, &unk_1C9074CF0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC313A50, &unk_1C9074CF0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC313A50, &unk_1C9074CF0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC313A50, &unk_1C9074CF0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC313A50, &unk_1C9074CF0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F7A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DA58, &qword_1C90BBE38);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1C8D63FCC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1C8D16D78(v24, &qword_1EC31DA58, &qword_1C90BBE38);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CB98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31DA58, &qword_1C90BBE38);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31DA58, &qword_1C90BBE38);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31DA58, &qword_1C90BBE38);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31DA58, &qword_1C90BBE38);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3139B8, &qword_1C9074DD0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F7AB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (EnumCaseMultiPayload == 23)
    {
      sub_1C906372C();
      sub_1C8CD1B00(&qword_1EDA6CB88, MEMORY[0x1E69AA8E8]);
      sub_1C9063B1C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7AD50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = *v3;
      return sub_1C9063B0C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7AE8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *v3;
      return sub_1C9063B5C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7AFCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      return sub_1C9063B7C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C980, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7B314()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C9063B8C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C906378C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900]);
      sub_1C9063BCC();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7B6A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1C9063B3C();
      return sub_1C8CE7B78(v6, v5);
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7B804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C9063B8C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7B958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1C9063B3C();
      return sub_1C8CE7B78(v6, v5);
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C9B8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C9D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31C9E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7C0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CA08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7C2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CA28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7C6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7C8EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v6 = *v3;
      v5 = v3[1];
      sub_1C9063B3C();
      return sub_1C8CE7B78(v6, v5);
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7CA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CAD8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7CC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CAC0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7CE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CB10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CB80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7D268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7D470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139B8, &qword_1C9074DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3139B8, &qword_1C9074DD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CB98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F7D6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D750, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7D764(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7D7D4()
{
  sub_1C8CD1B00(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F7D854()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6C616D696365442ELL, 0xE800000000000000);

  qword_1EC31A9C0 = v1;
  *algn_1EC31A9C8 = v2;
  return result;
}

uint64_t sub_1C8F7D918()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A9D0);
  __swift_project_value_buffer(v0, qword_1EC31A9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sign";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exponent";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "isCompact";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "length";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "mantissa";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F7DC88();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C906399C();
        break;
      case 4:
        OUTLINED_FUNCTION_124_6();
        sub_1C906391C();
        break;
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A1C();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F7DCF0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F7DCF0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 32);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  sub_1C8CD1B00(&qword_1EC31C9A0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.Decimal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (v8 = *v0, sub_1C8DC0E00(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B4C(), !v1))
    {
      if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_17_25(), sub_1C9063B0C(), !v1))
      {
        if (!*(v2 + 12) || (OUTLINED_FUNCTION_17_25(), sub_1C9063B9C(), !v1))
        {
          v3 = OUTLINED_FUNCTION_2_55();
          sub_1C8F7DE8C(v3, v4, v5, v6);
          if (!v1)
          {
            v7 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 36);
            OUTLINED_FUNCTION_13_23();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F7DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 32);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313A28, &unk_1C9074CD0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31C9A0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa);
}

uint64_t sub_1C8F7E0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D748, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7E168(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C980, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7E1D8()
{
  sub_1C8CD1B00(&qword_1EC31C980, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F7E258()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31A9E8);
  __swift_project_value_buffer(v0, qword_1EC31A9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SignUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SignMinus";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SignPlus";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F7E4A4()
{
  if (qword_1EC3117D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9C0;
  v2 = *algn_1EC31A9C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x737369746E614D2ELL, 0xE900000000000061);

  qword_1EC31AA00 = v1;
  *algn_1EC31AA08 = v2;
  return result;
}

uint64_t sub_1C8F7E56C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AA10);
  __swift_project_value_buffer(v0, qword_1EC31AA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "_0";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "_1";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "_2";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "_3";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "_4";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "_5";
  *(v18 + 1) = 2;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "_6";
  *(v20 + 1) = 2;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "_7";
  *(v22 + 1) = 2;
  v22[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
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
      case 6:
      case 7:
      case 8:
        OUTLINED_FUNCTION_22_0();
        sub_1C9063A1C();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
        {
          if (!v2[4] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
          {
            if (!v2[5] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
            {
              if (!v2[6] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
              {
                if (!v2[7] || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B9C(), !v1))
                {
                  v4 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0) + 48);
                  return OUTLINED_FUNCTION_13_23();
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

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v4 + 4) != *(v5 + 4) || v3[2] != v2[2] || v3[3] != v2[3] || v3[4] != v2[4] || v3[5] != v2[5] || v3[6] != v2[6] || v3[7] != v2[7])
  {
    return 0;
  }

  v6 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa(0) + 48);
  sub_1C90637EC();
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v7, v8);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8F7EC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D740, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7EC9C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C9A0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7ED0C()
{
  sub_1C8CD1B00(&qword_1EC31C9A0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal.Mantissa);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F7ED8C()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6572757361654D2ELL, 0xEC000000746E656DLL);

  qword_1EC31AA28 = v1;
  unk_1EC31AA30 = v2;
  return result;
}

uint64_t sub_1C8F7EE58()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AA38);
  __swift_project_value_buffer(v0, qword_1EC31AA38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "unitType";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F7F118();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639EC();
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
    }
  }

  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.Measurement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_146_6(), OUTLINED_FUNCTION_22_0(), sub_1C9063B7C(), !v0))
    {
      if (!*(v1 + 24) || (v4 = *(v1 + 24), sub_1C8DC0EFC(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v0))
      {
        v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
        OUTLINED_FUNCTION_53_15(v3);
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F7F2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D738, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7F33C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C9B8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7F3AC()
{
  sub_1C8CD1B00(&qword_1EC31C9B8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F7F42C()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x636E65727275432ELL, 0xEF746E756F6D4179);

  qword_1EC31AA50 = v1;
  *algn_1EC31AA58 = v2;
  return result;
}

uint64_t sub_1C8F7F4FC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AA60);
  __swift_project_value_buffer(v0, qword_1EC31AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amount";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currencyIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F7F77C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_1C8CD1B00(&qword_1EC31C980, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F7F830()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F7F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A40, &qword_1C906F558);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313A40, &qword_1C906F558);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31C980, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
}

uint64_t sub_1C8F7FB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F7FD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D730, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F7FDE8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C9D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F7FE58()
{
  sub_1C8CD1B00(&qword_1EC31C9D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F7FED8()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_1EC31AA78 = v1;
  unk_1EC31AA80 = v2;
  return result;
}

uint64_t sub_1C8F7FFA8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AA88);
  __swift_project_value_buffer(v0, qword_1EC31AA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F802CC();
        break;
      case 2:
        OUTLINED_FUNCTION_124_6();
        sub_1C90639FC();
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F80264();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F802CC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (v8 = *v0, sub_1C8DC0DAC(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8CE2CE8(v2);
    if (!v1)
    {
      v3 = OUTLINED_FUNCTION_2_55();
      sub_1C8F80418(v3, v4, v5, v6);
      v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
      OUTLINED_FUNCTION_53_15(v7);
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F80418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F80674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D728, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F806F4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C9E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F80764()
{
  sub_1C8CD1B00(&qword_1EC31C9E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F807E4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AAA0);
  __swift_project_value_buffer(v0, qword_1EC31AAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C460;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TypeUnspecified";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypeChecking";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypeSavings";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TypeBrokerage";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TypeDebit";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TypeCredit";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TypePrepaid";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "TypeStore";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "TypeApplePay";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F80BA4()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_1EC31AAB8 = v1;
  unk_1EC31AAC0 = v2;
  return result;
}

uint64_t sub_1C8F80C6C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AAC8);
  __swift_project_value_buffer(v0, qword_1EC31AAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Placemark.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F80FDC();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F80F28();
        break;
      case 1:
        OUTLINED_FUNCTION_124_6();
        sub_1C906396C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F80F28()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.Placemark.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  v2 = OUTLINED_FUNCTION_7_48();
  sub_1C8F810D8(v2);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8116C(v3, v4, v5, v6);
    if (*v1)
    {
      v8 = *v1;
      sub_1C8DC0D58();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    v7 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
    OUTLINED_FUNCTION_53_15(v7);
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F810D8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 8);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8F8116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F813C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D720, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F81448(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F814B8()
{
  sub_1C8CD1B00(&qword_1EC31CA08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F81538()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AAE0);
  __swift_project_value_buffer(v0, qword_1EC31AAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TypeUnknown";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypePlacemark";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypeCurrentLocation";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F81784()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6E6F737265502ELL, 0xE700000000000000);

  qword_1EC31AAF8 = v1;
  unk_1EC31AB00 = v2;
  return result;
}

uint64_t sub_1C8F81848()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB08);
  __swift_project_value_buffer(v0, qword_1EC31AB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C90ABEE0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "person";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "displayRepresentation";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "handle";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nameComponents";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "displayName";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "image";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contactIdentifier";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "customIdentifier";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "relationship";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "contactSuggestion";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "isMe";
  *(v27 + 1) = 4;
  v27[16] = 2;
  v8();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_22_0();
        sub_1C906396C();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F81D80();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F81E34();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F81EE8();
        break;
      case 5:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F81F9C();
        break;
      case 7:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F82000();
        break;
      case 8:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F82064();
        break;
      case 9:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F820C8();
        break;
      case 10:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8212C();
        break;
      case 11:
        OUTLINED_FUNCTION_22_0();
        sub_1C906391C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F81D80()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 28);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F81E34()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 32);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F81EE8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 36);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_349_1();
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_170_7();
  result = sub_1C8F822B4(v2);
  if (!v1)
  {
    v4 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82348(v4, v5, v6, v7);
    v8 = OUTLINED_FUNCTION_92_7();
    sub_1C8F8251C(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_92_7();
    sub_1C8F826F0(v12, v13, v14, v15);
    v16 = *v0;
    v17 = v0[1];
    OUTLINED_FUNCTION_36_21();
    if (v18)
    {
      sub_1C9063B8C();
    }

    v19 = OUTLINED_FUNCTION_92_7();
    sub_1C8F828C4(v19);
    v20 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82964(v20);
    v21 = OUTLINED_FUNCTION_92_7();
    sub_1C8F829DC(v21);
    v22 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82A54(v22);
    v23 = OUTLINED_FUNCTION_92_7();
    sub_1C8F82ACC(v23);
    if (*(v0 + 16) == 1)
    {
      OUTLINED_FUNCTION_170_7();
      sub_1C9063B0C();
    }

    v24 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 60);
    OUTLINED_FUNCTION_150_1();
    return sub_1C90637CC();
  }

  return result;
}

uint64_t sub_1C8F822B4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 24);
    sub_1C8CE9144(v2, v1);
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v2, v1);
  }

  return result;
}

uint64_t sub_1C8F82348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F8251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 32);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313A58, &qword_1C906F560);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);
}

uint64_t sub_1C8F826F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 36);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313A50, &unk_1C9074CF0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);
}

uint64_t sub_1C8F828C4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = a1 + *(result + 40);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1C8CE9144(*v3, *(v3 + 8));
    sub_1C9063B3C();
    return sub_1C8CE7BD0(v5, v4);
  }

  return result;
}

uint64_t sub_1C8F82964(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F829DC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F82A54(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F82ACC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t (*sub_1C8F82B9C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_1C8F82BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D718, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F82C70(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F82CE0()
{
  sub_1C8CD1B00(&qword_1EC31CA28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F82D60()
{
  if (qword_1EC311850 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AAF8;
  v2 = unk_1EC31AB00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656C646E61482ELL, 0xE700000000000000);

  qword_1EC31AB20 = v1;
  *algn_1EC31AB28 = v2;
  return result;
}

uint64_t sub_1C8F82E24()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB30);
  __swift_project_value_buffer(v0, qword_1EC31AB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "label";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F830DC();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
    }
  }
}

void ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  v2 = OUTLINED_FUNCTION_7_48();
  sub_1C8CE2D4C(v2);
  if (!v0)
  {
    if (*v1)
    {
      v5 = *v1;
      sub_1C8DC0D04();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063B1C();
    }

    v3 = OUTLINED_FUNCTION_2_55();
    sub_1C8CE2D84(v3);
    v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
    OUTLINED_FUNCTION_53_15(v4);
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Person.Handle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v2 = *(v0 + 16);
  if (*(v1 + 16))
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_201_2();
    v5 = v5 && v3 == v4;
    if (!v5 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_154_5();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_373_0();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_275_2();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle(0);
    OUTLINED_FUNCTION_327_1(v11);
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v12, v13);
    return OUTLINED_FUNCTION_12_28() & 1;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_1C8F83330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D710, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F833B0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F83420()
{
  sub_1C8CD1B00(&qword_1EC31CA40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.Handle);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F834A0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB48);
  __swift_project_value_buffer(v0, qword_1EC31AB48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TypeUnknown";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TypeEmailAddress";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TypePhoneNumber";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F836EC()
{
  if (qword_1EC311850 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AAF8;
  v2 = unk_1EC31AB00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6D6F43656D614E2ELL, 0xEF73746E656E6F70);

  qword_1EC31AB60 = v1;
  *algn_1EC31AB68 = v2;
  return result;
}

uint64_t sub_1C8F837BC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB70);
  __swift_project_value_buffer(v0, qword_1EC31AB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namePrefix";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "givenName";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "middleName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "familyName";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nameSuffix";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nickname";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "phoneticRepresentation";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
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
      case 6:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 7:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F83B9C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F83B9C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0) + 40);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
  sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  v1 = OUTLINED_FUNCTION_22_33();
  result = sub_1C8CE2DF0(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E28(v3);
    v4 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E60(v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E98(v5);
    v6 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2ED0(v6);
    v7 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2F08(v7);
    v8 = OUTLINED_FUNCTION_3_4();
    sub_1C8F83D08(v8, v9, v10, v11);
    v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0) + 44);
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

uint64_t sub_1C8F83D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents(0) + 40);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3139A8, &unk_1C9074CE0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);
}

uint64_t (*sub_1C8F83F34(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1C8F83F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D708, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F84008(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F84078()
{
  sub_1C8CD1B00(&qword_1EC31CA60, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F840F8()
{
  if (qword_1EC311878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AB60;
  v2 = *algn_1EC31AB68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000017, 0x80000001C90CFD80);

  qword_1EC31AB88 = v1;
  unk_1EC31AB90 = v2;
  return result;
}

uint64_t sub_1C8F841C0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AB98);
  __swift_project_value_buffer(v0, qword_1EC31AB98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namePrefix";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "givenName";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "middleName";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "familyName";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nameSuffix";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nickname";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
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
      case 6:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  v1 = OUTLINED_FUNCTION_22_33();
  result = sub_1C8CE2DF0(v1);
  if (!v0)
  {
    v3 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E28(v3);
    v4 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E60(v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2E98(v5);
    v6 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2ED0(v6);
    v7 = OUTLINED_FUNCTION_3_4();
    sub_1C8CE2F08(v7);
    v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0) + 40);
    return OUTLINED_FUNCTION_69_10();
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_371_0();
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }

    OUTLINED_FUNCTION_272_1();
    v10 = v5 && v8 == v9;
    if (!v10 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = v1[5];
  v12 = v0[5];
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = v1[4] == v0[4] && v11 == v12;
    if (!v13 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = v0[7];
  if (v1[7])
  {
    if (!v14)
    {
      return 0;
    }

    OUTLINED_FUNCTION_332_1();
    v17 = v5 && v15 == v16;
    if (!v17 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v0[9];
  if (v1[9])
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_331_1();
    v21 = v5 && v19 == v20;
    if (!v21 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v22 = v1[11];
  v23 = v0[11];
  if (v22)
  {
    if (v23)
    {
      v24 = v1[10] == v0[10] && v22 == v23;
      if (v24 || (sub_1C9064C2C() & 1) != 0)
      {
        goto LABEL_53;
      }
    }
  }

  else if (!v23)
  {
LABEL_53:
    v25 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation(0) + 40);
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v26, v27);
    return OUTLINED_FUNCTION_12_28() & 1;
  }

  return 0;
}

uint64_t sub_1C8F84828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D700, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F848A8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F84918()
{
  sub_1C8CD1B00(&qword_1EC31CA78, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person.NameComponents.PhoneticRepresentation);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F84998()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656C69462ELL, 0xE500000000000000);

  qword_1EC31ABB0 = v1;
  *algn_1EC31ABB8 = v2;
  return result;
}

uint64_t sub_1C8F84A58()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ABC0);
  __swift_project_value_buffer(v0, qword_1EC31ABC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.File.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F84DC4();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F84D10();
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C906397C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F84D10()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.PrimitiveValue.File.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  v3 = *v0;
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_181_1();
  if (sub_1C8EB7FAC(v5, v6) || (OUTLINED_FUNCTION_181_1(), OUTLINED_FUNCTION_23_29(), sub_1C9063B3C(), !v1))
  {
    v7 = OUTLINED_FUNCTION_2_55();
    sub_1C8F84EB4(v7, v8, v9, v10);
    if (!v1)
    {
      v11 = OUTLINED_FUNCTION_2_55();
      sub_1C8F85088(v11);
      v12 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
      OUTLINED_FUNCTION_53_15(v12);
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F84EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F85088(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F85188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6F8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F85208(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F85278()
{
  sub_1C8CD1B00(&qword_1EC31CA90, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F852F8()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](1886404910, 0xE400000000000000);

  qword_1EC31ABD8 = v1;
  unk_1EC31ABE0 = v2;
  return result;
}

uint64_t sub_1C8F853B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ABE8);
  __swift_project_value_buffer(v0, qword_1EC31ABE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F855E0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F856D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F85930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F859B0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F85A20()
{
  sub_1C8CD1B00(&qword_1EC31CAA8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F85AA0()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x756374726F68532ELL, 0xE900000000000074);

  qword_1EC31AC00 = v1;
  *algn_1EC31AC08 = v2;
  return result;
}

uint64_t sub_1C8F85B68()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC10);
  __swift_project_value_buffer(v0, qword_1EC31AC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F85D94()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F85E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC312A48, &unk_1C9072A10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_1C8F860E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6E8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F86164(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAC0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F861D4()
{
  sub_1C8CD1B00(&qword_1EC31CAC0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F86254()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_1EC31AC28 = v1;
  unk_1EC31AC30 = v2;
  return result;
}

uint64_t sub_1C8F86324()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC38);
  __swift_project_value_buffer(v0, qword_1EC31AC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C90ABF00;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "second";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "nanosecond";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "weekday";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "weekdayOrdinal";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "quarter";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "weekOfMonth";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "weekOfYear";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "yearForWeekOfYear";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v8();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6D810();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F9BFFC();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB8618(v3, v4, v5, v6, v7, v8);
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86A5C();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86AC0();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86B24();
        break;
      case 7:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86B88();
        break;
      case 8:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86BEC();
        break;
      case 9:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86C50();
        break;
      case 10:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86CB4();
        break;
      case 11:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86D18();
        break;
      case 12:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86D7C();
        break;
      case 13:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86DE0();
        break;
      case 14:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86E44();
        break;
      case 15:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86EA8();
        break;
      case 16:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F86F0C();
        break;
      default:
        continue;
    }
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_349_1();
  v2 = OUTLINED_FUNCTION_46_15();
  result = sub_1C8F870BC(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_46_15();
    sub_1C8F9DC68();
    OUTLINED_FUNCTION_46_15();
    sub_1C8FB8900();
    v7 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87284(v7);
    v8 = OUTLINED_FUNCTION_46_15();
    sub_1C8F872FC(v8);
    v9 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87374(v9);
    v10 = OUTLINED_FUNCTION_46_15();
    sub_1C8F873EC(v10);
    v11 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87464(v11);
    v12 = OUTLINED_FUNCTION_46_15();
    sub_1C8F874DC(v12);
    v13 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87554(v13);
    v14 = OUTLINED_FUNCTION_46_15();
    sub_1C8F875CC(v14);
    v15 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87644(v15);
    v16 = OUTLINED_FUNCTION_46_15();
    sub_1C8F876BC(v16);
    v17 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87734(v17);
    v18 = OUTLINED_FUNCTION_46_15();
    sub_1C8F877AC(v18);
    v19 = OUTLINED_FUNCTION_46_15();
    sub_1C8F87824(v19);
    v20 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
    OUTLINED_FUNCTION_112();
    return sub_1C90637CC();
  }

  return result;
}

uint64_t sub_1C8F870BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313AB0, &qword_1C906F588);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_1C8F87284(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F872FC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87374(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F873EC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87464(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F874DC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87554(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F875CC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87644(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F876BC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 64));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87734(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 68));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F877AC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F87824(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t (*sub_1C8F878F4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 80);
  return result;
}

uint64_t sub_1C8F87948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6E0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F879C8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAD8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F87A38()
{
  sub_1C8CD1B00(&qword_1EC31CAD8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F87AB8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC50);
  __swift_project_value_buffer(v0, qword_1EC31AC50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C90ABF10;
  v4 = v62 + v3 + v1[14];
  *(v62 + v3) = 0;
  *v4 = "CalendarIdentifierUnspecified";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v62 + v3 + v2 + v1[14];
  *(v62 + v3 + v2) = 1;
  *v8 = "CalendarIdentifierGregorian";
  *(v8 + 8) = 27;
  *(v8 + 16) = 2;
  v7();
  v9 = (v62 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CalendarIdentifierBuddhist";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v62 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CalendarIdentifierChinese";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v7();
  v13 = (v62 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CalendarIdentifierCoptic";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v62 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CalendarIdentifierEthiopicAmeteMihret";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v7();
  v17 = (v62 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CalendarIdentifierEthiopicAmeteAlem";
  *(v18 + 1) = 35;
  v18[16] = 2;
  v7();
  v19 = (v62 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CalendarIdentifierHebrew";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v62 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CalendarIdentifierIso8601";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v62 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CalendarIdentifierIndian";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v7();
  v25 = (v62 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CalendarIdentifierIslamic";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v62 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CalendarIdentifierIslamicCivil";
  *(v28 + 1) = 30;
  v28[16] = 2;
  v7();
  v29 = (v62 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CalendarIdentifierJapanese";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v7();
  v31 = (v62 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CalendarIdentifierPersian";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v62 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CalendarIdentifierRepublicOfChina";
  *(v34 + 1) = 33;
  v34[16] = 2;
  v7();
  v35 = (v62 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CalendarIdentifierIslamicTabular";
  *(v36 + 1) = 32;
  v36[16] = 2;
  v7();
  v37 = (v62 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CalendarIdentifierIslamicUmmAlQura";
  *(v38 + 1) = 34;
  v38[16] = 2;
  v7();
  v39 = (v62 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CalendarIdentifierBangla";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v62 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CalendarIdentifierGujarati";
  *(v42 + 1) = 26;
  v42[16] = 2;
  v7();
  v43 = (v62 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CalendarIdentifierKannada";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v62 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CalendarIdentifierMalayalam";
  *(v46 + 1) = 27;
  v46[16] = 2;
  v7();
  v47 = (v62 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CalendarIdentifierMarathi";
  *(v48 + 1) = 25;
  v48[16] = 2;
  v7();
  v49 = (v62 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CalendarIdentifierOdia";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v62 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CalendarIdentifierTamil";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v62 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CalendarIdentifierTelugu";
  *(v54 + 1) = 24;
  v54[16] = 2;
  v7();
  v55 = (v62 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CalendarIdentifierVikram";
  *(v56 + 1) = 24;
  v56[16] = 2;
  v7();
  v57 = (v62 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CalendarIdentifierDangi";
  *(v58 + 1) = 23;
  v58[16] = 2;
  v7();
  v59 = (v62 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CalendarIdentifierVietnamese";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F882C4()
{
  if (qword_1EC3118C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC28;
  v2 = unk_1EC31AC30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x61646E656C61432ELL, 0xE900000000000072);

  qword_1EC31AC68 = v1;
  unk_1EC31AC70 = v2;
  return result;
}

uint64_t sub_1C8F8838C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AC78);
  __swift_project_value_buffer(v0, qword_1EC31AC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "minimumDaysInFirstWeek";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F886F8();
        break;
      case 2:
        OUTLINED_FUNCTION_124_6();
        sub_1C9063A0C();
        break;
      case 3:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639FC();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_22_0();
        sub_1C90639BC();
        break;
      default:
        continue;
    }
  }
}

void ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (v8 = *v0, sub_1C8DC0CB0(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    v3 = v2[1];
    v4 = v2[2];
    OUTLINED_FUNCTION_36_21();
    if (!v5 || (OUTLINED_FUNCTION_10_33(), sub_1C9063B8C(), !v1))
    {
      v6 = OUTLINED_FUNCTION_2_55();
      sub_1C8F88848(v6);
      if (!v1)
      {
        if (v2[3])
        {
          OUTLINED_FUNCTION_17_25();
          sub_1C9063B5C();
        }

        if (v2[4])
        {
          OUTLINED_FUNCTION_17_25();
          sub_1C9063B5C();
        }

        v7 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
        OUTLINED_FUNCTION_13_23();
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F88848(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = *(result + 40);
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_309_0(a1, a2);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  v5 = *(v4 + 8) == v2[1] && v3[2] == v2[2];
  if (!v5 && (sub_1C9064C2C() & 1) == 0)
  {
    return 0;
  }

  v6 = v3[6];
  v7 = v2[6];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v3[5] == v2[5] && v6 == v7;
    if (!v8 && (sub_1C9064C2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3[3] == v2[3] && v3[4] == v2[4])
  {
    v9 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v10, v11);
    return OUTLINED_FUNCTION_12_28() & 1;
  }

  return 0;
}

uint64_t sub_1C8F88A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6D8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F88A84(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F88AF4()
{
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F88B74()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x657272756365522ELL, 0xEF656C755265636ELL);

  qword_1EC31AC90 = v1;
  *algn_1EC31AC98 = v2;
  return result;
}

uint64_t sub_1C8F88C44()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACA0);
  __swift_project_value_buffer(v0, qword_1EC31ACA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C90ABF20;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "calendar";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C9063BDC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "frequency";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "interval";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "end";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "matchingPolicy";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "repeatedTimePolicy";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "months";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "daysOfTheYear";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "daysOfTheMonth";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "weeks";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "weekdays";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hours";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "minutes";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "seconds";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "setPositions";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    v1 = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F892C8();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8937C();
        break;
      case 3:
        OUTLINED_FUNCTION_124_6();
        sub_1C90639BC();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F893E4();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F89498();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F89500();
        break;
      case 7:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6C148();
        break;
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 14:
      case 15:
        OUTLINED_FUNCTION_22_0();
        sub_1C906395C();
        break;
      case 11:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F89568();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F892C8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0) + 68);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F893E4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0) + 72);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F89568()
{
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);
  return sub_1C9063A3C();
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_349_1();
  OUTLINED_FUNCTION_170_7();
  sub_1C8F89904(v2, v3, v4, v5);
  if (!v1)
  {
    if (*v0)
    {
      v13 = *v0;
      sub_1C8DC0B60();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063B1C();
    }

    if (*(v0 + 1))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063B5C();
    }

    OUTLINED_FUNCTION_177_5();
    OUTLINED_FUNCTION_170_7();
    sub_1C8F89AD8(v6, v7, v8, v9);
    if (v0[16])
    {
      v12 = v0[16];
      sub_1C8DC0C5C();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063B1C();
    }

    if (v0[17])
    {
      v11 = v0[17];
      sub_1C8DC0C08();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063B1C();
    }

    if (*(*(v0 + 3) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(0);
      sub_1C8CD1B00(&qword_1EC31C350, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063BBC();
    }

    if (*(*(v0 + 4) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v0 + 5) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v0 + 6) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v0 + 7) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
      sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);
      OUTLINED_FUNCTION_227_0();
      OUTLINED_FUNCTION_137_3();
      sub_1C9063BBC();
    }

    if (*(*(v0 + 8) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v0 + 9) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v0 + 10) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    if (*(*(v0 + 11) + 16))
    {
      OUTLINED_FUNCTION_94_8();
      sub_1C9063AFC();
    }

    v10 = &v0[*(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0) + 76)];
    OUTLINED_FUNCTION_49();
    sub_1C90637CC();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F89904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0) + 68);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313AB0, &qword_1C906F588);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CAF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_1C8F89AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule(0) + 72);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313AF8, &qword_1C906F5B0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);
}

uint64_t (*sub_1C8F89D04(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 76);
  return result;
}

uint64_t sub_1C8F89D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6D0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F89DD8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F89E48()
{
  sub_1C8CD1B00(&qword_1EC31CB10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F89EC8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACB8);
  __swift_project_value_buffer(v0, qword_1EC31ACB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CalendarMatchingPolicyUnspecified";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CalendarMatchingPolicyNextTime";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CalendarMatchingPolicyNextTimePreservingSmallerComponents";
  *(v12 + 1) = 57;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CalendarMatchingPolicyPreviousTimePreservingSmallerComponents";
  *(v14 + 1) = 61;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CalendarMatchingPolicyStrict";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8A190()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACD0);
  __swift_project_value_buffer(v0, qword_1EC31ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CalendarRepeatedTimePolicyUnspecified";
  *(v6 + 8) = 37;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CalendarRepeatedTimePolicyFirst";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CalendarRepeatedTimePolicyLast";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8A3DC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ACE8);
  __swift_project_value_buffer(v0, qword_1EC31ACE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C90ABEA0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "LocaleWeekdayUnspecified";
  *(v5 + 8) = 24;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "LocaleWeekdayMonday";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "LocaleWeekdayTuesday";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "LocaleWeekdayWednesday";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "LocaleWeekdayThursday";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "LocaleWeekdayFriday";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "LocaleWeekdaySaturday";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "LocaleWeekdaySunday";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8A760()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD00);
  __swift_project_value_buffer(v0, qword_1EC31AD00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RecurrenceRuleFrequencyUnspecified";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RecurrenceRuleFrequencyMinutely";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RecurrenceRuleFrequencyHourly";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RecurrenceRuleFrequencyDaily";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RecurrenceRuleFrequencyWeekly";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RecurrenceRuleFrequencyMonthly";
  *(v18 + 1) = 30;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RecurrenceRuleFrequencyYearly";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F8AA9C()
{
  if (qword_1EC3118F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC90;
  v2 = *algn_1EC31AC98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000012, 0x80000001C90CF480);

  qword_1EC31AD18 = v1;
  unk_1EC31AD20 = v2;
  return result;
}

uint64_t sub_1C8F8AB64()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD28);
  __swift_project_value_buffer(v0, qword_1EC31AD28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "occurences";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "date";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "never";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8AED4();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8AE20();
        break;
      case 1:
        OUTLINED_FUNCTION_20_22();
        sub_1C90639AC();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F8AE20()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0) + 20);
  sub_1C906378C();
  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900]);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8AF90(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = *result;
    return sub_1C9063B5C();
  }

  return result;
}

uint64_t sub_1C8F8AFC8(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

void static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_55_3();
  v5 = sub_1C906378C();
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C158, &qword_1C90ABFB8);
  OUTLINED_FUNCTION_44_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38();
  v19 = *(v0 + 8);
  if (*(v1 + 8))
  {
    if (!*(v0 + 8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v1 != *v0)
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_16;
    }
  }

  v40 = v8;
  v39 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd(0);
  v20 = v39[5];
  v21 = *(v4 + 48);
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_191(v3);
  if (!v22)
  {
    OUTLINED_FUNCTION_177_5();
    sub_1C8D63FCC();
    OUTLINED_FUNCTION_191(v3 + v21);
    if (!v22)
    {
      (*(v40 + 32))(v2, v3 + v21, v5);
      OUTLINED_FUNCTION_72_8();
      sub_1C8CD1B00(v27, v28);
      OUTLINED_FUNCTION_49();
      v29 = sub_1C9063EAC();
      v30 = *(v40 + 8);
      v31 = OUTLINED_FUNCTION_119();
      v30(v31);
      v32 = OUTLINED_FUNCTION_378();
      v30(v32);
      sub_1C8D16D78(v3, &qword_1EC313AD0, &unk_1C9074D00);
      if ((v29 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v23 = *(v40 + 8);
    v24 = OUTLINED_FUNCTION_378();
    v25(v24);
LABEL_15:
    sub_1C8D16D78(v3, &qword_1EC31C158, &qword_1C90ABFB8);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_191(v3 + v21);
  if (!v22)
  {
    goto LABEL_15;
  }

  sub_1C8D16D78(v3, &qword_1EC313AD0, &unk_1C9074D00);
LABEL_19:
  v33 = v39[6];
  v34 = *(v1 + v33);
  v35 = *(v0 + v33);
  if (v34 != 2)
  {
    if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v36 = v39[7];
    sub_1C90637EC();
    OUTLINED_FUNCTION_1_76();
    sub_1C8CD1B00(v37, v38);
    v26 = OUTLINED_FUNCTION_265_2();
    goto LABEL_17;
  }

  if (v35 == 2)
  {
    goto LABEL_24;
  }

LABEL_16:
  v26 = 0;
LABEL_17:
  OUTLINED_FUNCTION_50_0(v26);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F8B3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6C8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8B45C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8B4CC()
{
  sub_1C8CD1B00(&qword_1EC31CB48, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleEnd);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8B54C()
{
  if (qword_1EC3118F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC90;
  v2 = *algn_1EC31AC98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000016, 0x80000001C90CF450);

  qword_1EC31AD40 = v1;
  *algn_1EC31AD48 = v2;
  return result;
}

uint64_t sub_1C8F8B614()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD50);
  __swift_project_value_buffer(v0, qword_1EC31AD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "RecurrenceRuleWeekdayWeekday";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "RecurrenceRuleWeekdayEvery";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RecurrenceRuleWeekdayNth";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_7_34();
  while (1)
  {
    OUTLINED_FUNCTION_112();
    result = sub_1C90638DC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_124_6();
        sub_1C90639AC();
        break;
      case 2:
        OUTLINED_FUNCTION_22_0();
        sub_1C906390C();
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8B8D4();
        break;
    }
  }

  return result;
}

void ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (v5 = *v0, sub_1C8DC0BB4(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
  {
    v2 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8B9D4(v2);
    if (!v1)
    {
      v3 = OUTLINED_FUNCTION_2_55();
      sub_1C8F8BA10(v3);
      v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
      OUTLINED_FUNCTION_53_15(v4);
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8F8B9D4(uint64_t result)
{
  if (*(result + 1) != 2)
  {
    return sub_1C9063B0C();
  }

  return result;
}

uint64_t sub_1C8F8BA10(uint64_t result)
{
  if ((*(result + 16) & 1) == 0)
  {
    v1 = *(result + 8);
    return sub_1C9063B5C();
  }

  return result;
}