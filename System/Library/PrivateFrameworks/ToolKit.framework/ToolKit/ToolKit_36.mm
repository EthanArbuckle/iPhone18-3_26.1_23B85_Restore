uint64_t static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_309_0(a1, a2);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  v6 = *(v5 + 1);
  v8 = *(v7 + 1);
  if (v6 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v6 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v9 = *(v2 + 16);
  if (*(v3 + 16))
  {
    if (!*(v2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(v3 + 8) != *(v2 + 8))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday(0);
  OUTLINED_FUNCTION_327_1(v11);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v12, v13);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8F8BB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6C0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8BC14(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8BC84()
{
  sub_1C8CD1B00(&qword_1EC31C358, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleWeekday);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8BD04()
{
  if (qword_1EC3118F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AC90;
  v2 = *algn_1EC31AC98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000014, 0x80000001C90CF3D0);

  qword_1EC31AD68 = v1;
  unk_1EC31AD70 = v2;
  return result;
}

uint64_t sub_1C8F8BDCC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AD78);
  __swift_project_value_buffer(v0, qword_1EC31AD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLeap";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_124_6();
      sub_1C906391C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C90639BC();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B0C(), !v1))
    {
      v4 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t static ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_330_2(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_223();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v6 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth(0);
  OUTLINED_FUNCTION_64_7(v6);
  OUTLINED_FUNCTION_1_76();
  sub_1C8CD1B00(v7, v8);
  return OUTLINED_FUNCTION_12_28() & 1;
}

uint64_t sub_1C8F8C1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6B8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8C244(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C350, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8C2B4()
{
  sub_1C8CD1B00(&qword_1EC31C350, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.RecurrenceRule.RecurrenceRuleMonth);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8C334()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x746E49657461442ELL, 0xED00006C61767265);

  qword_1EC31AD90 = v1;
  *algn_1EC31AD98 = v2;
  return result;
}

uint64_t sub_1C8F8C404()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ADA0);
  __swift_project_value_buffer(v0, qword_1EC31ADA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "duration";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.PrimitiveValue.DateInterval.decodeMessage<A>(decoder:)()
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
      case 3:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FB8618(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8C730();
        break;
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6D810();
        break;
    }
  }
}

uint64_t sub_1C8F8C730()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0) + 20);
  sub_1C906378C();
  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900]);
  return sub_1C9063A4C();
}

void sub_1C8F8C83C()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_83_8();
  v5 = OUTLINED_FUNCTION_22_33();
  v6(v5);
  if (!v0)
  {
    OUTLINED_FUNCTION_3_4();
    sub_1C8F8CAD4();
    v7 = OUTLINED_FUNCTION_3_4();
    v4(v7);
    v8 = *(v2(0) + 28);
    OUTLINED_FUNCTION_69_10();
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F8C8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = sub_1C906378C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC313AD0, &unk_1C9074D00);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_1C8CD1B00(&qword_1EC31D9F8, MEMORY[0x1E69AA900]);
  sub_1C9063BCC();
  return (*(v9 + 8))(v12, v8);
}

void sub_1C8F8CAD4()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_276();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_5();
  v9 = sub_1C906378C();
  v10 = OUTLINED_FUNCTION_11(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v15 = *(v2(0) + 20);
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC313AD0, &unk_1C9074D00);
  }

  else
  {
    v19 = *(v12 + 32);
    v20 = OUTLINED_FUNCTION_124();
    v21(v20);
    OUTLINED_FUNCTION_72_8();
    sub_1C8CD1B00(v22, v23);
    sub_1C9063BCC();
    v24 = *(v12 + 8);
    v25 = OUTLINED_FUNCTION_203();
    v26(v25);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8F8CC84(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C9063B7C();
  }

  return result;
}

uint64_t sub_1C8F8CD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6B0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8CE04(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8CE74()
{
  sub_1C8CD1B00(&qword_1EC31CB80, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateInterval);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8CEF4()
{
  if (qword_1EC3117C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31A9B0;
  v2 = *algn_1EC31A9B8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6F6974617275442ELL, 0xE90000000000006ELL);

  qword_1EC31ADB8 = v1;
  unk_1EC31ADC0 = v2;
  return result;
}

uint64_t sub_1C8F8CFBC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ADC8);
  __swift_project_value_buffer(v0, qword_1EC31ADC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "seconds";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attoSeconds";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639BC();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Duration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_4_36();
  if (!*v0 || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_17_25(), result = sub_1C9063B5C(), !v1))
    {
      v4 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0) + 24);
      return OUTLINED_FUNCTION_13_23();
    }
  }

  return result;
}

uint64_t sub_1C8F8D324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8D3A4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CB98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8D414()
{
  sub_1C8CD1B00(&qword_1EC31CB98, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8D494()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CF380);
  qword_1EC31ADE0 = 0xD000000000000012;
  *algn_1EC31ADE8 = 0x80000001C90CD320;
  return result;
}

uint64_t sub_1C8F8D528()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31ADF0);
  __swift_project_value_buffer(v0, qword_1EC31ADF0);
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
  *v10 = "caseValue";
  *(v10 + 1) = 9;
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

uint64_t sub_1C8F8D7A8()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v0();
        break;
      case 2:
        OUTLINED_FUNCTION_177_5();
        sub_1C9063A0C();
        break;
      case 1:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v2();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F8D840()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8D8F4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void sub_1C8F8D9FC()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_7_48();
  v7(v6);
  if (!v0)
  {
    v8 = *v1;
    v9 = v1[1];
    OUTLINED_FUNCTION_36_21();
    if (v10)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v11 = OUTLINED_FUNCTION_2_55();
    v5(v11);
    v12 = v3(0);
    OUTLINED_FUNCTION_53_15(v12);
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F8DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 20);
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

uint64_t sub_1C8F8DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 24);
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

uint64_t sub_1C8F8DEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D6A0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8DF48(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA65E18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8DFB8()
{
  sub_1C8CD1B00(qword_1EDA65E18, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8E084()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE18);
  __swift_project_value_buffer(v0, qword_1EC31AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "properties";
  *(v12 + 1) = 10;
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
  *v16 = "hydratedAppEntity";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "siriKitEntity";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypedValue.EntityValue.decodeMessage<A>(decoder:)()
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
        sub_1C8F8E464();
        break;
      case 2:
        OUTLINED_FUNCTION_20_22();
        sub_1C9063A0C();
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8E518();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8E610();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8FC661C(v3, v4, v5, v6, v7, v8);
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8E6C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F8E464()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 24);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8E518()
{
  sub_1C90637BC();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  sub_1C8CD1B00(&qword_1EC31C2C0, type metadata accessor for ToolKitProtoTypedValue);
  return sub_1C90638CC();
}

uint64_t sub_1C8F8E610()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 28);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.EntityValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17_5();
  v2 = OUTLINED_FUNCTION_7_48();
  sub_1C8F8E888(v2, v3, v4, v5);
  if (!v0)
  {
    v6 = *v1;
    v7 = v1[1];
    OUTLINED_FUNCTION_36_21();
    if (v8)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    OUTLINED_FUNCTION_346_2();
    if (v9)
    {
      sub_1C90637BC();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C8CD1B00(&qword_1EC31C2C0, type metadata accessor for ToolKitProtoTypedValue);
      OUTLINED_FUNCTION_146_6();
      sub_1C9063ADC();
    }

    v10 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8EA5C(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8EC30(v14);
    v15 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8ECD0(v15);
    v16 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 40);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C8F8E888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 24);
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

uint64_t sub_1C8F8EA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 28);
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

uint64_t sub_1C8F8EC30(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 32);
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

uint64_t sub_1C8F8ECD0(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 36);
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

uint64_t sub_1C8F8EDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D698, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8EE78(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CBB8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8EEE8()
{
  sub_1C8CD1B00(&qword_1EC31CBB8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8EFB8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE40);
  __swift_project_value_buffer(v0, qword_1EC31AE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
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
  *v10 = "data";
  *(v10 + 1) = 4;
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

uint64_t sub_1C8F8F238()
{
  OUTLINED_FUNCTION_89_1();
  while (1)
  {
    OUTLINED_FUNCTION_203();
    result = sub_1C90638DC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_305_1();
        v0();
        break;
      case 2:
        OUTLINED_FUNCTION_278_3();
        v2();
        break;
      case 1:
        OUTLINED_FUNCTION_177_5();
        sub_1C9063A0C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8F8F2D0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.CodableValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.CodableValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_23_29(), sub_1C9063B8C(), !v0))
  {
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = OUTLINED_FUNCTION_181_1();
    if (sub_1C8EB7FAC(v5, v6) || (OUTLINED_FUNCTION_181_1(), OUTLINED_FUNCTION_10_33(), sub_1C9063B3C(), !v0))
    {
      v7 = OUTLINED_FUNCTION_2_55();
      sub_1C8F8F414(v7, v8, v9, v10);
      if (!v0)
      {
        v11 = type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
        OUTLINED_FUNCTION_53_15(v11);
      }
    }
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F8F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.CodableValue(0) + 24);
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

uint64_t sub_1C8F8F670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D690, type metadata accessor for ToolKitProtoTypedValue.CodableValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F8F6F0(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CBD0, type metadata accessor for ToolKitProtoTypedValue.CodableValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F8F760()
{
  sub_1C8CD1B00(&qword_1EC31CBD0, type metadata accessor for ToolKitProtoTypedValue.CodableValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F8F7E0()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CF350);
  qword_1EC31AE58 = 0xD000000000000012;
  unk_1EC31AE60 = 0x80000001C90CD320;
  return result;
}

uint64_t sub_1C8F8F874()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE68);
  __swift_project_value_buffer(v0, qword_1EC31AE68);
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
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "typeInstance";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.CollectionValue.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8FC20();
        break;
      case 2:
        OUTLINED_FUNCTION_233_4();
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6BF94();
        break;
      case 1:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F8FB6C();
        break;
    }
  }
}

uint64_t sub_1C8F8FB6C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F8FC20()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 24);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.CollectionValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  v1 = OUTLINED_FUNCTION_7_48();
  sub_1C8F8FD88(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      OUTLINED_FUNCTION_19_31();
      sub_1C8CD1B00(v6, v7);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v8 = OUTLINED_FUNCTION_2_55();
    sub_1C8F8FF5C(v8, v9, v10, v11);
    v12 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
    OUTLINED_FUNCTION_53_15(v12);
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F8FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 20);
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

uint64_t sub_1C8F8FF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 24);
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

uint64_t sub_1C8F901B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D688, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F90238(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA62298, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F902A8()
{
  sub_1C8CD1B00(qword_1EDA62298, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F90374()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AE90);
  __swift_project_value_buffer(v0, qword_1EC31AE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
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
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8F905A0()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    v2 = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      v4 = OUTLINED_FUNCTION_101_7();
      v0(v4);
    }

    else if (v2 == 1)
    {
      OUTLINED_FUNCTION_101_7();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F90658()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(0) + 20);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery);
  return sub_1C9063A4C();
}

void sub_1C8F90760()
{
  OUTLINED_FUNCTION_340_2();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_83_8();
  v5 = OUTLINED_FUNCTION_22_33();
  v6(v5);
  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_3_4();
    v4(v7);
    v8 = *(v2(0) + 24);
    OUTLINED_FUNCTION_69_10();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F907E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3139E0, &qword_1C906F538);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CE98, type metadata accessor for ToolKitProtoQuery);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoQuery);
}

uint64_t sub_1C8F90A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D680, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F90ABC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CBF0, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F90B2C()
{
  sub_1C8CD1B00(&qword_1EC31CBF0, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F90BAC()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000016, 0x80000001C90CF330);
  qword_1EC31AEA8 = 0xD000000000000012;
  unk_1EC31AEB0 = 0x80000001C90CD320;
  return result;
}

uint64_t sub_1C8F90C38()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AEB8);
  __swift_project_value_buffer(v0, qword_1EC31AEB8);
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
  *v10 = "identifier";
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
  return sub_1C9063BEC();
}

uint64_t sub_1C8F90EB8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F90F6C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_1C8CD1B00(qword_1EDA641A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F91074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 20);
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

uint64_t sub_1C8F91248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 24);
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

uint64_t sub_1C8F914A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D678, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F91524(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC08, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F91594()
{
  sub_1C8CD1B00(&qword_1EC31CC08, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_1C9063ABC();
}

void sub_1C8F91644(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8F916AC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AEE0);
  __swift_project_value_buffer(v0, qword_1EC31AEE0);
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
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "storage";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypedValue.DeferredValue.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F91A68();
        break;
      case 2:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F919B4();
        break;
      case 1:
        OUTLINED_FUNCTION_17_34();
        sub_1C8F6D810();
        break;
    }
  }
}

uint64_t sub_1C8F919B4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F91A68()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  return sub_1C9063A4C();
}

void ToolKitProtoTypedValue.DeferredValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_83_8();
  OUTLINED_FUNCTION_22_33();
  sub_1C8CE2FE8();
  if (!v0)
  {
    v1 = OUTLINED_FUNCTION_3_4();
    sub_1C8F91B94(v1, v2, v3, v4);
    v5 = OUTLINED_FUNCTION_3_4();
    sub_1C8F91D68(v5, v6, v7, v8);
    v9 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 28);
    OUTLINED_FUNCTION_69_10();
  }
}

uint64_t sub_1C8F91B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 20);
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

uint64_t sub_1C8F91D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC3139F0, &unk_1C9074D10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
}

uint64_t sub_1C8F91FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D670, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F92044(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F920B4()
{
  sub_1C8CD1B00(&qword_1EC31CC20, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F92134()
{
  if (qword_1EC3119D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AED0;
  v2 = *algn_1EC31AED8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x656761726F74532ELL, 0xE800000000000000);

  qword_1EC31AEF8 = v1;
  unk_1EC31AF00 = v2;
  return result;
}

uint64_t sub_1C8F921F8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF08);
  __swift_project_value_buffer(v0, qword_1EC31AF08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemProperty";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F92438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9E8, &qword_1C90BBDD0);
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
    sub_1C8D16D78(v12, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D9E8, &qword_1C90BBDD0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D9E8, &qword_1C90BBDD0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D9E8, &qword_1C90BBDD0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D9E8, &qword_1C90BBDD0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D9E8, &qword_1C90BBDD0);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC313B30, &qword_1C9074DE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F92930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9F0, &qword_1C90BBDD8);
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
    sub_1C8D16D78(v12, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D9F0, &qword_1C90BBDD8);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D9F0, &qword_1C90BBDD8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D9F0, &qword_1C90BBDD8);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D9F0, &qword_1C90BBDD8);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D9F0, &qword_1C90BBDD8);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC313B30, &qword_1C9074DE0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoTypedValue.DeferredValue.Storage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v1 = OUTLINED_FUNCTION_245();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_45_21();
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  OUTLINED_FUNCTION_20_31(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_3_4();
    sub_1C8F93108(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_3_4();
    sub_1C8F92F00(v13, v14, v15, v16);
  }

  v17 = OUTLINED_FUNCTION_273();
  sub_1C8CD20B4(v17, v18);
  if (!v0)
  {
LABEL_6:
    v19 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
    OUTLINED_FUNCTION_52_17(v19);
  }

  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F92F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F93108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313B30, &qword_1C9074DE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC313B30, &qword_1C9074DE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoTypedValue.DeferredValue.Storage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C3C8, &qword_1C90AC068);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC313B30, &qword_1C9074DE0);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C3C8, &qword_1C90AC068);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC313B30, &qword_1C9074DE0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F9358C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D668, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9360C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9367C()
{
  sub_1C8CD1B00(&qword_1EC313A10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F936FC()
{
  if (qword_1EC3119E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AEF8;
  v2 = unk_1EC31AF00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CF2F0);

  qword_1EC31AF20 = v1;
  *algn_1EC31AF28 = v2;
  return result;
}

uint64_t sub_1C8F937C4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF30);
  __swift_project_value_buffer(v0, qword_1EC31AF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F93AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D660, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F93B20(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F93B90()
{
  sub_1C8CD1B00(&qword_1EC31CC48, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F93C10()
{
  if (qword_1EC3119E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31AEF8;
  v2 = unk_1EC31AF00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000023, 0x80000001C90CF2C0);

  qword_1EC31AF48 = v1;
  unk_1EC31AF50 = v2;
  return result;
}

uint64_t sub_1C8F93CD8()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF58);
  __swift_project_value_buffer(v0, qword_1EC31AF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "actionIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F93FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D658, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F94020(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F94090()
{
  sub_1C8CD1B00(&qword_1EC31CC60, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ActionParameterDefaultValueStorage);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F94128()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF70);
  __swift_project_value_buffer(v0, qword_1EC31AF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collection";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "optionalVariant";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "union";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "restricted";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "deferred";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "constrained";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoTypeInstance.decodeMessage<A>(decoder:)()
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
        sub_1C8F9452C(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F948B4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8F94C44(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8F94FD4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F95364(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8F956F4(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8F95A88(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F9452C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
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

    sub_1C8D16D78(v16, &qword_1EC3139D8, &qword_1C9072A40);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC3139D8, &qword_1C9072A40);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC3139D8, &qword_1C9072A40);
  }

  sub_1C900BE74();
  if (v18 != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC3139D8, &qword_1C9072A40);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F948B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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

    sub_1C8D16D78(v16, &qword_1EC312A58, &unk_1C9074CC0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC312A58, &unk_1C9074CC0);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC312A58, &unk_1C9074CC0);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x2000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F94C44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9C0, &qword_1C90BBDA8);
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

    sub_1C8D16D78(v16, &qword_1EC31D9C0, &qword_1C90BBDA8);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9C0, &qword_1C90BBDA8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9C0, &qword_1C90BBDA8);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9C0, &qword_1C90BBDA8);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9C0, &qword_1C90BBDA8);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x4000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F94FD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9C8, &qword_1C90BBDB0);
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

    sub_1C8D16D78(v16, &qword_1EC31D9C8, &qword_1C90BBDB0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9C8, &qword_1C90BBDB0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9C8, &qword_1C90BBDB0);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9C8, &qword_1C90BBDB0);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9C8, &qword_1C90BBDB0);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x6000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F95364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9D0, &qword_1C90BBDB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31D9D0, &qword_1C90BBDB8);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9D0, &qword_1C90BBDB8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9D0, &qword_1C90BBDB8);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9D0, &qword_1C90BBDB8);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9D0, &qword_1C90BBDB8);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x8000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F956F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9D8, &qword_1C90BBDC0);
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

    sub_1C8D16D78(v16, &qword_1EC31D9D8, &qword_1C90BBDC0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9D8, &qword_1C90BBDC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9D8, &qword_1C90BBDC0);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9D8, &qword_1C90BBDC0);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9D8, &qword_1C90BBDC0);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0xA000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F95A88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9E0, &qword_1C90BBDC8);
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

    sub_1C8D16D78(v16, &qword_1EC31D9E0, &qword_1C90BBDC8);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9E0, &qword_1C90BBDC8);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9E0, &qword_1C90BBDC8);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9E0, &qword_1C90BBDC8);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9E0, &qword_1C90BBDC8);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0xC000000000000000;
  return sub_1C8CD0FB0(v22);
}

void ToolKitProtoTypeInstance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_273_2();
  if (v2)
  {
    goto LABEL_11;
  }

  switch(v1 >> 61)
  {
    case 1uLL:
      v7 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96030(v7);
      break;
    case 2uLL:
      v5 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96188(v5);
      break;
    case 3uLL:
      v6 = OUTLINED_FUNCTION_3_4();
      sub_1C8F962E0(v6);
      break;
    case 4uLL:
      v4 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96438(v4);
      break;
    case 5uLL:
      v8 = OUTLINED_FUNCTION_3_4();
      sub_1C8F96590(v8);
      break;
    case 6uLL:
      v9 = OUTLINED_FUNCTION_3_4();
      sub_1C8F966E8(v9);
      break;
    default:
      v3 = OUTLINED_FUNCTION_3_4();
      sub_1C8F95EE0(v3);
      break;
  }

  if (!v0)
  {
LABEL_11:
    v10 = type metadata accessor for ToolKitProtoTypeInstance(0);
    OUTLINED_FUNCTION_52_17(v10);
  }
}

uint64_t sub_1C8F95EE0(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_1C9063BCC();
    return sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeIdentifier);
  }

  return result;
}

void sub_1C8F96030(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeInstance);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F96188(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F962E0(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeInstance.Union);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F96438(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F96590(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F966E8(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Constrained(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoTypeInstance.Constrained);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8F968E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D650, type metadata accessor for ToolKitProtoTypeInstance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F96964(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F969D4()
{
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F96A9C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AF98);
  __swift_project_value_buffer(v0, qword_1EC31AF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
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
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoTypeInstance.Optional.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8F96D3C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_230_3();
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F96D3C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F96E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_1C8F970A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D648, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F97120(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F97190()
{
  sub_1C8CD1B00(qword_1EDA6AF50, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return sub_1C9063ABC();
}

void ToolKitProtoTypeInstance.Union.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6BF94();
    }
  }
}

void ToolKitProtoTypeInstance.Union.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_264_3();
  if (!v1 || (type metadata accessor for ToolKitProtoTypeInstance(0), OUTLINED_FUNCTION_229_4(), sub_1C8CD1B00(v2, v3), OUTLINED_FUNCTION_121_5(), OUTLINED_FUNCTION_29_23(), sub_1C9063BBC(), !v0))
  {
    v4 = *(type metadata accessor for ToolKitProtoTypeInstance.Union(0) + 20);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F9745C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D640, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F974DC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9754C()
{
  sub_1C8CD1B00(qword_1EDA65360, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F97618()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31AFE8);
  __swift_project_value_buffer(v0, qword_1EC31AFE8);
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
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F97844()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F97938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(0) + 20);
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

uint64_t sub_1C8F97B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D638, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F97C14(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F97C84()
{
  sub_1C8CD1B00(&qword_1EDA685B0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return sub_1C9063ABC();
}

void ToolKitProtoTypeInstance.Deferred.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_230_3();
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F97E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_83_8();
  v7 = OUTLINED_FUNCTION_22_33();
  result = v8(v7);
  if (!v5)
  {
    v10 = a5(0);
    return OUTLINED_FUNCTION_52_17(v10);
  }

  return result;
}

uint64_t sub_1C8F97F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D630, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F97FBC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9802C()
{
  sub_1C8CD1B00(&qword_1EDA65350, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return sub_1C9063ABC();
}

void sub_1C8F980D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8F98140()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B038);
  __swift_project_value_buffer(v0, qword_1EC31B038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "instance";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void sub_1C8F9836C()
{
  OUTLINED_FUNCTION_57_1();
  while (1)
  {
    OUTLINED_FUNCTION_125();
    v2 = sub_1C90638DC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      OUTLINED_FUNCTION_101_7();
      sub_1C8F6BF94();
    }

    else if (v2 == 1)
    {
      v4 = OUTLINED_FUNCTION_101_7();
      v0(v4);
    }
  }
}

uint64_t sub_1C8F98424()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Constrained(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_1C9063A4C();
}

void sub_1C8F98518()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_7_48();
  v4(v3);
  if (!v0)
  {
    OUTLINED_FUNCTION_271_1();
    if (v5)
    {
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      sub_1C8CD1B00(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext);
      OUTLINED_FUNCTION_126_4();
      OUTLINED_FUNCTION_29_23();
      sub_1C9063BBC();
    }

    v6 = *(v2(0) + 24);
    OUTLINED_FUNCTION_13_23();
  }

  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8F985DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoTypeInstance.Constrained(0) + 20);
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

uint64_t sub_1C8F98838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D628, type metadata accessor for ToolKitProtoTypeInstance.Constrained);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F988B8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F98928()
{
  sub_1C8CD1B00(&qword_1EC31CCA0, type metadata accessor for ToolKitProtoTypeInstance.Constrained);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F989B4()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B050);
  __swift_project_value_buffer(v0, qword_1EC31B050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inSet";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "representableAs";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personReachableAs";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dateExpressibleAs";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "textTypedWith";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "measurementExpressibleAs";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "inInclusiveRange";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.decodeMessage<A>(decoder:)()
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
        sub_1C8F98DB8(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99140(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F994D0();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8F995AC();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99688(v7, v8, v9, v10);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99A18(v15, v16, v17, v18);
        break;
      case 7:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8F99DAC(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F98DB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D998, &qword_1C90BBD80);
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

    sub_1C8D16D78(v16, &qword_1EC31D998, &qword_1C90BBD80);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D998, &qword_1C90BBD80);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D998, &qword_1C90BBD80);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D998, &qword_1C90BBD80);
  }

  sub_1C900BE74();
  if (v18 != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D998, &qword_1C90BBD80);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F99140(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9A0, &qword_1C90BBD88);
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

    sub_1C8D16D78(v16, &qword_1EC31D9A0, &qword_1C90BBD88);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9A0, &qword_1C90BBD88);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9A0, &qword_1C90BBD88);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9A0, &qword_1C90BBD88);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9A0, &qword_1C90BBD88);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x2000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F99688(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9A8, &qword_1C90BBD90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  __swift_storeEnumTagSinglePayload(v23 - v15, 1, 1, v6);
  v23[0] = a1;
  v17 = *a1;
  if ((v17 & 0xF000000000000007) != 0xF000000000000007 && (v17 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_1C8D16D78(v16, &qword_1EC31D9A8, &qword_1C90BBD90);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9A8, &qword_1C90BBD90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9A8, &qword_1C90BBD90);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9A8, &qword_1C90BBD90);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9A8, &qword_1C90BBD90);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0x8000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F99A18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9B0, &qword_1C90BBD98);
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

    sub_1C8D16D78(v16, &qword_1EC31D9B0, &qword_1C90BBD98);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9B0, &qword_1C90BBD98);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9B0, &qword_1C90BBD98);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9B0, &qword_1C90BBD98);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9B0, &qword_1C90BBD98);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0xA000000000000000;
  return sub_1C8CD0FB0(v22);
}

uint64_t sub_1C8F99DAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a4;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D9B8, &qword_1C90BBDA0);
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

    sub_1C8D16D78(v16, &qword_1EC31D9B8, &qword_1C90BBDA0);
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD0FB0(v17);
    sub_1C900BE74();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  }

  sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
  sub_1C9063A4C();
  if (v4)
  {
    v19 = v16;
    return sub_1C8D16D78(v19, &qword_1EC31D9B8, &qword_1C90BBDA0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    sub_1C8D16D78(v16, &qword_1EC31D9B8, &qword_1C90BBDA0);
    v19 = v13;
    return sub_1C8D16D78(v19, &qword_1EC31D9B8, &qword_1C90BBDA0);
  }

  sub_1C900BE74();
  if ((v17 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1C90638EC();
  }

  sub_1C8D16D78(v16, &qword_1EC31D9B8, &qword_1C90BBDA0);
  v21 = swift_allocBox();
  sub_1C900BE74();
  v22 = *v23[0];
  *v23[0] = v21 | 0xC000000000000000;
  return sub_1C8CD0FB0(v22);
}

void ToolKitProtoRestrictionContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_273_2();
  if (v2)
  {
    goto LABEL_11;
  }

  switch(v1 >> 61)
  {
    case 1uLL:
      v7 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A354(v7);
      break;
    case 2uLL:
      v5 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A4AC(v5);
      break;
    case 3uLL:
      v6 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A540(v6);
      break;
    case 4uLL:
      v4 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A5D4(v4);
      break;
    case 5uLL:
      v8 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A72C(v8);
      break;
    case 6uLL:
      v9 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A884(v9);
      break;
    default:
      v3 = OUTLINED_FUNCTION_3_4();
      sub_1C8F9A204(v3);
      break;
  }

  if (!v0)
  {
LABEL_11:
    v10 = type metadata accessor for ToolKitProtoRestrictionContext(0);
    OUTLINED_FUNCTION_52_17(v10);
  }
}

uint64_t sub_1C8F9A204(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_1C9063BCC();
    return sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  }

  return result;
}

void sub_1C8F9A354(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1C8F9A4AC(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x4000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1C8DC0B0C();
    return sub_1C9063B1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C8F9A540(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x6000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1C8DC0AB8();
    return sub_1C9063B1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C8F9A5D4(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F9A72C(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C8F9A884(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xC000000000000000)
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
    sub_1C9063BCC();
    sub_1C8CD20B4(v5, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C8F9AAD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D620, type metadata accessor for ToolKitProtoRestrictionContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9AB54(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9ABC4()
{
  sub_1C8CD1B00(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9AC44()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B068);
  __swift_project_value_buffer(v0, qword_1EC31B068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C450;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PersonReachableAsUnspecified";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PersonReachableAsContact";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PersonReachableAsPhone";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PersonReachableAsEmail";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PersonReachableAsEmailOrPhone";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9AF08()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B080);
  __swift_project_value_buffer(v0, qword_1EC31B080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAsUnspecified";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAsDate";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAsTime";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAsDateAndTime";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9B1CC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B0A8);
  __swift_project_value_buffer(v0, qword_1EC31B0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
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

void ToolKitProtoRestrictionContext.InSet.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8F9B47C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8F9B47C()
{
  v0 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_1C8CD1B00(qword_1EDA64F18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_1C9063A4C();
}

uint64_t sub_1C8F9B584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314548, &qword_1C9074338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314548, &qword_1C9074338);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
}

uint64_t sub_1C8F9B74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
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

uint64_t sub_1C8F9B9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D618, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9BA28(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9BA98()
{
  sub_1C8CD1B00(qword_1EDA647E8, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9BB18()
{
  if (qword_1EC311A80 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B098;
  v2 = unk_1EC31B0A0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x655365756C61562ELL, 0xE900000000000074);

  qword_1EC31B0C0 = v1;
  *algn_1EC31B0C8 = v2;
  return result;
}

uint64_t sub_1C8F9BBE0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B0D0);
  __swift_project_value_buffer(v0, qword_1EC31B0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "dynamicEnumerationOnTrigger";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)()
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
        sub_1C8F9BFFC();
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9C04C(v13, v14, v15, v16);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9C544(v5, v6, v7, v8);
        break;
      case 4:
        v9 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9CA3C(v9, v10, v11, v12);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_39();
        sub_1C8F9CF34(v3, v4);
        break;
      case 6:
        v17 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9D0D8(v17, v18, v19, v20);
        break;
      case 7:
        v21 = OUTLINED_FUNCTION_8_32();
        sub_1C8F9D5D0(v21, v22, v23, v24);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8F9BFFC()
{
  v0 = OUTLINED_FUNCTION_325_2();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_22_0();
  return sub_1C90639FC();
}

uint64_t sub_1C8F9C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D978, &qword_1C90BBD60);
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
    sub_1C8D16D78(v12, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC31D978, &qword_1C90BBD60);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D978, &qword_1C90BBD60);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D978, &qword_1C90BBD60);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D978, &qword_1C90BBD60);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D978, &qword_1C90BBD60);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F9C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D980, &qword_1C90BBD68);
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
    sub_1C8D16D78(v12, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D980, &qword_1C90BBD68);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D980, &qword_1C90BBD68);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D980, &qword_1C90BBD68);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D980, &qword_1C90BBD68);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D980, &qword_1C90BBD68);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F9CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D988, &qword_1C90BBD70);
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
    sub_1C8D16D78(v12, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC31D988, &qword_1C90BBD70);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D988, &qword_1C90BBD70);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D988, &qword_1C90BBD70);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F9CF34(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0;
  result = sub_1C90639FC();
  if (v2)
  {
  }

  v9 = v13;
  if (v13)
  {
    v14 = v12;
    sub_1C8D63FCC();
    v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v10);
    sub_1C8D16D78(v7, &qword_1EC314588, &qword_1C9074DF0);
    if (EnumTagSinglePayload != 1)
    {
      sub_1C90638EC();
    }

    sub_1C8D16D78(a2, &qword_1EC314588, &qword_1C9074DF0);
    *a2 = v14;
    a2[1] = v9;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1C8F9D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D988, &qword_1C90BBD70);
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
    sub_1C8D16D78(v12, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v24, &qword_1EC31D988, &qword_1C90BBD70);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D988, &qword_1C90BBD70);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D988, &qword_1C90BBD70);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D988, &qword_1C90BBD70);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8F9D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D990, &qword_1C90BBD78);
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
    sub_1C8D16D78(v12, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v24, &qword_1EC31D990, &qword_1C90BBD78);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D990, &qword_1C90BBD78);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D990, &qword_1C90BBD78);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D990, &qword_1C90BBD78);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D990, &qword_1C90BBD78);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314588, &qword_1C9074DF0);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoRestrictionContext.InSet.ValueSet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_340_2();
  OUTLINED_FUNCTION_349_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_46_15();
  sub_1C8F9DC68();
  if (!v1)
  {
    sub_1C8D63FCC();
    v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    OUTLINED_FUNCTION_20_31(v6);
    if (!v7)
    {
      OUTLINED_FUNCTION_124();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v22 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9DEEC(v22, v23, v24, v25);
          goto LABEL_10;
        case 2u:
          v16 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9E0F4(v16, v17, v18, v19);
          goto LABEL_10;
        case 3u:
          v20 = OUTLINED_FUNCTION_109_5();
          sub_1C8CD20B4(v20, v21);
          OUTLINED_FUNCTION_46_15();
          sub_1C8F9E2FC();
          break;
        case 4u:
          v12 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9E450(v12, v13, v14, v15);
          goto LABEL_10;
        case 5u:
          v26 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9E658(v26, v27, v28, v29);
          goto LABEL_10;
        default:
          v8 = OUTLINED_FUNCTION_46_15();
          sub_1C8F9DCE8(v8, v9, v10, v11);
LABEL_10:
          v30 = OUTLINED_FUNCTION_109_5();
          sub_1C8CD20B4(v30, v31);
          break;
      }
    }

    v32 = v0 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 24);
    OUTLINED_FUNCTION_112();
    sub_1C90637CC();
  }

  OUTLINED_FUNCTION_341_2();
}

uint64_t sub_1C8F9DC68()
{
  v1 = OUTLINED_FUNCTION_41_15();
  result = v2(v1);
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8F9DCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9DEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E2FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C8D63FCC();
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8D16D78(v3, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C9063B8C();
    }

    result = sub_1C8CD20B4(v3, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8F9E658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314588, &qword_1C9074DF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoRestrictionContext.InSet.ValueSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = OUTLINED_FUNCTION_24_2();
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(v2);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_23();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C428, &qword_1C90AC070);
  OUTLINED_FUNCTION_44_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v16 = *(v15 + 20);
  OUTLINED_FUNCTION_274_3();
  if (v19)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_105_5(v18);
    v22 = v22 && v20 == v21;
    if (!v22 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v17)
  {
    goto LABEL_19;
  }

  v23 = *(v1 + 48);
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_44_18();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0);
  if (v22)
  {
    OUTLINED_FUNCTION_78_4(v0 + v23);
    if (v22)
    {
      sub_1C8D16D78(v0, &qword_1EC314588, &qword_1C9074DF0);
LABEL_22:
      v31 = *(v15 + 24);
      sub_1C90637EC();
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v32, v33);
      v27 = OUTLINED_FUNCTION_12_28();
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1C8D63FCC();
  OUTLINED_FUNCTION_78_4(v0 + v23);
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_109_5();
    sub_1C8CD20B4(v25, v26);
LABEL_18:
    sub_1C8D16D78(v0, &qword_1EC31C428, &qword_1C90AC070);
    goto LABEL_19;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_347();
  static ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind.== infix(_:_:)();
  v28 = OUTLINED_FUNCTION_196_6();
  sub_1C8CD20B4(v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  v29 = OUTLINED_FUNCTION_203();
  sub_1C8CD20B4(v29, v30);
  sub_1C8D16D78(v0, &qword_1EC314588, &qword_1C9074DF0);
  if (&qword_1EC314588)
  {
    goto LABEL_22;
  }

LABEL_19:
  v27 = 0;
LABEL_20:
  OUTLINED_FUNCTION_50_0(v27);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8F9EB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D610, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9EBC8(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9EC38()
{
  sub_1C8CD1B00(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9ECB8()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD000000000000013, 0x80000001C90CF090);

  qword_1EC31B0E8 = v1;
  unk_1EC31B0F0 = v2;
  return result;
}

uint64_t sub_1C8F9ED80()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B0F8);
  __swift_project_value_buffer(v0, qword_1EC31B0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9F018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D608, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9F098(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9F108()
{
  sub_1C8CD1B00(&qword_1EDA64900, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9F188()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD00000000000001ALL, 0x80000001C90CF070);

  qword_1EC31B110 = v1;
  *algn_1EC31B118 = v2;
  return result;
}

uint64_t sub_1C8F9F250()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B120);
  __swift_project_value_buffer(v0, qword_1EC31B120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "triggerIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8F9F4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D600, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9F568(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9F5D8()
{
  sub_1C8CD1B00(&qword_1EC31CCD8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9F658()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0xD00000000000001ELL, 0x80000001C90CF050);

  qword_1EC31B138 = v1;
  unk_1EC31B140 = v2;
  return result;
}

uint64_t sub_1C8F9F720()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B148);
  __swift_project_value_buffer(v0, qword_1EC31B148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_20_22();
      sub_1C9063A0C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8F9F984();
    }
  }

  return result;
}

uint64_t sub_1C8F9F984()
{
  v0 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 20);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_1C9063A4C();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_7_48();
  result = sub_1C8F9FAAC(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = *v1;
    v8 = v1[1];
    OUTLINED_FUNCTION_36_21();
    if (v9)
    {
      OUTLINED_FUNCTION_10_33();
      sub_1C9063B8C();
    }

    v10 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 24);
    return OUTLINED_FUNCTION_13_23();
  }

  return result;
}

uint64_t sub_1C8F9FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314580, &qword_1C9074DA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_1C8F9FD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5F8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8F9FD88(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8F9FDF8()
{
  sub_1C8CD1B00(&qword_1EDA615B0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_1C9063ABC();
}

uint64_t sub_1C8F9FE78()
{
  if (qword_1EC311A90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B0C0;
  v2 = *algn_1EC31B0C8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_1EC31B160 = v1;
  *algn_1EC31B168 = v2;
  return result;
}

uint64_t sub_1C8F9FF40()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B170);
  __swift_project_value_buffer(v0, qword_1EC31B170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "actionIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)()
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

    if (result == 6 || result == 5 || result == 4)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_6();
  if (!v2 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_36_21();
    if (!v6 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_36_21();
      if (!v9 || (OUTLINED_FUNCTION_10_33(), result = sub_1C9063B8C(), !v0))
      {
        v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
        return OUTLINED_FUNCTION_53_15(v10);
      }
    }
  }

  return result;
}

uint64_t sub_1C8FA0318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5F0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA0398(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA0408()
{
  sub_1C8CD1B00(qword_1EDA64890, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA0488()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CF010);
  qword_1EC31B188 = 0xD00000000000001ALL;
  unk_1EC31B190 = 0x80000001C90CD360;
  return result;
}

uint64_t sub_1C8FA051C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B198);
  __swift_project_value_buffer(v0, qword_1EC31B198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lowerBound";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "upperBound";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.InInclusiveRange.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C90639DC();
    }
  }

  return result;
}

uint64_t sub_1C8FA07D0(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = *result;
    return sub_1C9063B7C();
  }

  return result;
}

uint64_t sub_1C8FA0810(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = *(result + 16);
    return sub_1C9063B7C();
  }

  return result;
}

uint64_t sub_1C8FA08D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5E8, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA0958(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA09C8()
{
  sub_1C8CD1B00(&qword_1EC31CD00, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA0A48()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CEFE0);
  qword_1EC31B1B0 = 0xD00000000000001ALL;
  *algn_1EC31B1B8 = 0x80000001C90CD360;
  return result;
}

uint64_t sub_1C8FA0BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5E0, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA0C68(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA0CD8()
{
  sub_1C8CD1B00(qword_1EDA64958, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA0D58()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90CEFB0);
  qword_1EC31B1D8 = 0xD00000000000001ALL;
  unk_1EC31B1E0 = 0x80000001C90CD360;
  return result;
}

uint64_t sub_1C8FA0DEC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B1E8);
  __swift_project_value_buffer(v0, qword_1EC31B1E8);
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
  *v10 = "unitAdjustForLocale";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportsNegativeNumbers";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C906391C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_124_6();
      sub_1C90639FC();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.MeasurementExpressibleAs.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_7_48();
  result = sub_1C8CE2D4C(v2);
  if (!v0)
  {
    if (*v1 == 1)
    {
      OUTLINED_FUNCTION_17_25();
      sub_1C9063B0C();
    }

    if (v1[1] == 1)
    {
      OUTLINED_FUNCTION_17_25();
      sub_1C9063B0C();
    }

    v4 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
    return OUTLINED_FUNCTION_53_15(v4);
  }

  return result;
}

uint64_t sub_1C8FA11C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5D8, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA1244(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA12B4()
{
  sub_1C8CD1B00(&qword_1EC31CD20, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);

  return sub_1C9063ABC();
}

void sub_1C8FA1364(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_132_4(a1, a2);
  OUTLINED_FUNCTION_97_5();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_131_5(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8FA13CC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B210);
  __swift_project_value_buffer(v0, qword_1EC31B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABEB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "multilineAllowed";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "smartQuotesEnabled";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "smartDashesEnabled";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "keyboardType";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "autocorrectionType";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "capitalizationType";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_22_0();
        sub_1C906391C();
        break;
      case 4:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FA1770();
        break;
      case 5:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FA17D8();
        break;
      case 6:
        OUTLINED_FUNCTION_5_39();
        sub_1C8FA1840();
        break;
      default:
        continue;
    }
  }
}

void ToolKitProtoRestrictionContext.TextTypedWith.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_4_36();
  if (*v0 != 1 || (OUTLINED_FUNCTION_17_25(), sub_1C9063B0C(), !v1))
  {
    if (v2[1] != 1 || (OUTLINED_FUNCTION_17_25(), sub_1C9063B0C(), !v1))
    {
      if (v2[2] != 1 || (OUTLINED_FUNCTION_17_25(), sub_1C9063B0C(), !v1))
      {
        if (!v2[3] || (v6 = v2[3], sub_1C8DC0A10(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
        {
          if (!v2[4] || (v5 = v2[4], sub_1C8DC0A64(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
          {
            if (!v2[5] || (v4 = v2[5], sub_1C8DC09BC(), OUTLINED_FUNCTION_29_23(), sub_1C9063B1C(), !v1))
            {
              v3 = *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40);
              OUTLINED_FUNCTION_13_23();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_364_1();
}

uint64_t sub_1C8FA1A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5D0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA1B00(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA1B70()
{
  sub_1C8CD1B00(&qword_1EDA64A10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA1BF0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B228);
  __swift_project_value_buffer(v0, qword_1EC31B228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C9084EE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionTypeDefault";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionTypeOn";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AutocorrectionTypeOff";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA1E3C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B240);
  __swift_project_value_buffer(v0, qword_1EC31B240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C90ABF30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardTypeDefault";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardTypeAsciiCapable";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardTypeNumbersAndPunctuation";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardTypeUrl";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardTypeNumberPad";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardTypePhonePad";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardTypeNamePhonePad";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardTypeEmailAddress";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "KeyboardTypeDecimalPad";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "KeyboardTypeTwitter";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "KeyboardTypeWebSearch";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "KeyboardTypeAsciiCapableNumberPad";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA22B0()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B258);
  __swift_project_value_buffer(v0, qword_1EC31B258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationTypeNone";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationTypeWords";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationTypeSentences";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationTypeAllCharacters";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA2550()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B270);
  __swift_project_value_buffer(v0, qword_1EC31B270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "linkEnumContentItemClass";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkCodableContentItemClass";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoContentItemClassDescriptor.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_6_44();
        sub_1C8F7677C();
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA2898(v11, v12, v13, v14);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA2D90(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA3288(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FA2898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D960, &qword_1C90BBD48);
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
    sub_1C8D16D78(v12, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC31D960, &qword_1C90BBD48);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D960, &qword_1C90BBD48);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D960, &qword_1C90BBD48);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D960, &qword_1C90BBD48);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D960, &qword_1C90BBD48);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3145A0, &qword_1C9074E00);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA2D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D968, &qword_1C90BBD50);
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
    sub_1C8D16D78(v12, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC31D968, &qword_1C90BBD50);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D968, &qword_1C90BBD50);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D968, &qword_1C90BBD50);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D968, &qword_1C90BBD50);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D968, &qword_1C90BBD50);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3145A0, &qword_1C9074E00);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA3288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D970, &qword_1C90BBD58);
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
    sub_1C8D16D78(v12, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC31D970, &qword_1C90BBD58);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D970, &qword_1C90BBD58);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D970, &qword_1C90BBD58);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D970, &qword_1C90BBD58);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D970, &qword_1C90BBD58);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC3145A0, &qword_1C9074E00);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoContentItemClassDescriptor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v18 = OUTLINED_FUNCTION_3_4();
        sub_1C8FA38DC(v18, v19, v20, v21);
        goto LABEL_8;
      case 2u:
        v10 = OUTLINED_FUNCTION_3_4();
        sub_1C8FA3AE4(v10, v11, v12, v13);
        goto LABEL_8;
      case 3u:
        v14 = OUTLINED_FUNCTION_3_4();
        sub_1C8FA3CEC(v14, v15, v16, v17);
LABEL_8:
        v22 = OUTLINED_FUNCTION_273();
        sub_1C8CD20B4(v22, v23);
        if (!v0)
        {
          break;
        }

        goto LABEL_10;
      default:
        sub_1C8CD20B4(v1, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
        OUTLINED_FUNCTION_3_4();
        sub_1C8FE845C();
        if (!v0)
        {
          break;
        }

        goto LABEL_10;
    }
  }

  v24 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_52_17(v24);
LABEL_10:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FA38DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FA3AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FA3CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC3145A0, &qword_1C9074E00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  }

  __break(1u);
  return result;
}

void static ToolKitProtoContentItemClassDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v1 = OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(v1);
  v3 = OUTLINED_FUNCTION_39_19(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_23();
  v6 = OUTLINED_FUNCTION_124();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_73();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31C478, &qword_1C90AC078);
  OUTLINED_FUNCTION_9(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_27_20(v16);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_18_32();
  if (v17)
  {
    OUTLINED_FUNCTION_16_31();
    if (v17)
    {
      sub_1C8D16D78(v0, &qword_1EC3145A0, &qword_1C9074E00);
LABEL_12:
      v25 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
      OUTLINED_FUNCTION_63_10(v25);
      OUTLINED_FUNCTION_1_76();
      sub_1C8CD1B00(v26, v27);
      v18 = OUTLINED_FUNCTION_12_28();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_287();
  sub_1C8D63FCC();
  OUTLINED_FUNCTION_16_31();
  if (v17)
  {
    OUTLINED_FUNCTION_292_2();
LABEL_9:
    sub_1C8D16D78(v0, &qword_1EC31C478, &qword_1C90AC078);
    goto LABEL_10;
  }

  sub_1C900BE74();
  OUTLINED_FUNCTION_398();
  static ToolKitProtoContentItemClassDescriptorKind.== infix(_:_:)();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_181_0();
  sub_1C8CD20B4(v21, v22);
  v23 = OUTLINED_FUNCTION_125();
  sub_1C8CD20B4(v23, v24);
  sub_1C8D16D78(v0, &qword_1EC3145A0, &qword_1C9074E00);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_50_0(v18);
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8FA418C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5C8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA420C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA427C()
{
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA42FC()
{
  result = MEMORY[0x1CCA81A90](0xD00000000000001BLL, 0x80000001C90CECD0);
  qword_1EC31B288 = 0xD000000000000022;
  unk_1EC31B290 = 0x80000001C90CD380;
  return result;
}

uint64_t sub_1C8FA4390()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B298);
  __swift_project_value_buffer(v0, qword_1EC31B298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA464C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5C0, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA46CC(uint64_t a1)
{
  v2 = sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA473C()
{
  sub_1C8CD1B00(qword_1EDA63DD8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA47BC()
{
  result = MEMORY[0x1CCA81A90](0xD000000000000019, 0x80000001C90CECB0);
  qword_1EC31B2B0 = 0xD000000000000022;
  *algn_1EC31B2B8 = 0x80000001C90CD380;
  return result;
}

uint64_t sub_1C8FA4850()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B2C0);
  __swift_project_value_buffer(v0, qword_1EC31B2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA4A50()
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

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_22_0();
      sub_1C9063A0C();
    }
  }

  return result;
}

uint64_t sub_1C8FA4B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5B8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA4BD4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA4C44()
{
  sub_1C8CD1B00(&qword_1EC31CD50, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA4CC4()
{
  result = MEMORY[0x1CCA81A90](0xD00000000000001CLL, 0x80000001C90CEC90);
  qword_1EC31B2D8 = 0xD000000000000022;
  unk_1EC31B2E0 = 0x80000001C90CD380;
  return result;
}

uint64_t sub_1C8FA4E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5B0, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA4EE4(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA4F54()
{
  sub_1C8CD1B00(&qword_1EC31CD68, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA4FEC()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B300);
  __swift_project_value_buffer(v0, qword_1EC31B300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C909C3B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C9063BEC();
}

uint64_t sub_1C8FA52B8()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FA536C()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 24);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FA5420()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 28);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FA553C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314750, &qword_1C9074E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314750, &qword_1C9074E10);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EDA64E20, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_1C8FA5710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314758, &qword_1C9074E18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 24);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314758, &qword_1C9074E18);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
}

uint64_t sub_1C8FA58E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 28);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314580, &qword_1C9074DA0);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t (*sub_1C8FA5B2C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1C8FA5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5A8, type metadata accessor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FA5C00(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FA5C70()
{
  sub_1C8CD1B00(&qword_1EC31C4E0, type metadata accessor for ToolKitProtoComparisonPredicate);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FA5D3C()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B328);
  __swift_project_value_buffer(v0, qword_1EC31B328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C90ABF00;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "equalTo";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
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
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "contains";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "notContains";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "beginsWith";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "endsWith";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "inTheNext";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "inTheLast";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "isToday";
  *(v35 + 1) = 7;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "isBetween";
  *(v37 + 1) = 9;
  v37[16] = 2;
  v8();
  return sub_1C9063BEC();
}

void ToolKitProtoComparisonPredicate.Comparison.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA6438(v3, v4, v5, v6);
        break;
      case 2:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA6930(v31, v32, v33, v34);
        break;
      case 3:
      case 4:
      case 15:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F6278C();
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA6E28(v11, v12, v13, v14);
        break;
      case 6:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA7320(v35, v36, v37, v38);
        break;
      case 7:
        v43 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA7818(v43, v44, v45, v46);
        break;
      case 8:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA7D10(v27, v28, v29, v30);
        break;
      case 9:
        v51 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA8208(v51, v52, v53, v54);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA8700(v19, v20, v21, v22);
        break;
      case 11:
        v47 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA8BF8(v47, v48, v49, v50);
        break;
      case 12:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA90F0(v7, v8, v9, v10);
        break;
      case 13:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA95E8(v15, v16, v17, v18);
        break;
      case 14:
        v39 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA9AE0(v39, v40, v41, v42);
        break;
      case 16:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FA9FD8(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FA6438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA6930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA6E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA7D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA8208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA8BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA90F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC314368, &unk_1C9074D90);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FA9FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31D958, &qword_1C90BBD40);
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
    sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8D16D78(v24, &qword_1EC31D958, &qword_1C90BBD40);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    }
  }

  sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC31D958, &qword_1C90BBD40);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC31D958, &qword_1C90BBD40);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC31D958, &qword_1C90BBD40);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC31D958, &qword_1C90BBD40);
  v29 = v31;
  sub_1C8D16D78(v31, &qword_1EC314760, &qword_1C9074E20);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

void ToolKitProtoComparisonPredicate.Comparison.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_43_15();
  v2 = OUTLINED_FUNCTION_245();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_21();
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  OUTLINED_FUNCTION_20_31(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_124();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v52 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAA894(v52, v53, v54, v55);
        goto LABEL_22;
      case 2:
        v36 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAAEEC(v36, v37, v38, v39);
        goto LABEL_22;
      case 3:
        v44 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAB0F4(v44, v45, v46, v47);
        goto LABEL_22;
      case 4:
        v24 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAB2FC(v24, v25, v26, v27);
        goto LABEL_22;
      case 5:
        v56 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAB504(v56, v57, v58, v59);
        goto LABEL_22;
      case 6:
        v64 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAB70C(v64, v65, v66, v67);
        goto LABEL_22;
      case 7:
        v48 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAB914(v48, v49, v50, v51);
        goto LABEL_22;
      case 8:
        v73 = OUTLINED_FUNCTION_3_4();
        sub_1C8FABB1C(v73, v74, v75, v76);
        goto LABEL_26;
      case 9:
        v32 = OUTLINED_FUNCTION_3_4();
        sub_1C8FABD24(v32, v33, v34, v35);
        goto LABEL_26;
      case 10:
        v69 = OUTLINED_FUNCTION_3_4();
        sub_1C8FABF2C(v69, v70, v71, v72);
        goto LABEL_26;
      case 11:
        v20 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAC134(v20, v21, v22, v23);
        goto LABEL_26;
      case 12:
        v28 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAC564(v28, v29, v30, v31);
LABEL_26:
        if (v0)
        {
          OUTLINED_FUNCTION_79_9();
          sub_1C8CD20B4(v1, v77);
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_79_9();
        sub_1C8CD20B4(v1, v78);
        break;
      case 13:
        v60 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAAA9C(v60, v61, v62, v63);
        goto LABEL_19;
      case 14:
        v16 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAACC4(v16, v17, v18, v19);
        goto LABEL_19;
      case 15:
        v40 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAC33C(v40, v41, v42, v43);
LABEL_19:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v12 = OUTLINED_FUNCTION_3_4();
        sub_1C8FAA690(v12, v13, v14, v15);
LABEL_22:
        OUTLINED_FUNCTION_79_9();
        sub_1C8CD20B4(v1, v68);
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v10 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  OUTLINED_FUNCTION_52_17(v10);
LABEL_4:
  OUTLINED_FUNCTION_190_8();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8FAA690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAA894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAAA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 13)
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

uint64_t sub_1C8FAACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 14)
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

uint64_t sub_1C8FAAEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAB914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FABB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FABD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FABF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAC134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAC33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_1C906373C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v16 - v11;
  sub_1C8D63FCC();
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    result = sub_1C8D16D78(v12, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_1C8CD20B4(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 15)
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

uint64_t sub_1C8FAC564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314760, &qword_1C9074E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1C8D16D78(v7, &qword_1EC314760, &qword_1C9074E20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C900BE74();
      sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      sub_1C9063BCC();
      return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    }

    result = sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8FAC9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D5A0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FACA60(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FACAD0()
{
  sub_1C8CD1B00(&qword_1EC31CD90, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FACB50()
{
  if (qword_1EC311B78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B318;
  v2 = unk_1EC31B320;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x726961502ELL, 0xE500000000000000);

  qword_1EC31B340 = v1;
  *algn_1EC31B348 = v2;
  return result;
}

uint64_t sub_1C8FACC10()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B350);
  __swift_project_value_buffer(v0, qword_1EC31B350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C906BAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C9063BDC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C9063BEC();
}

void ToolKitProtoComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_5_39();
      sub_1C8FACEC0();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1C8F6D810();
    }
  }
}

uint64_t sub_1C8FACEC0()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  return sub_1C9063A4C();
}

uint64_t sub_1C8FACFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_1C8FAD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8D16D78(v7, &qword_1EC314368, &unk_1C9074D90);
  }

  sub_1C900BE74();
  sub_1C8CD1B00(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue);
  sub_1C9063BCC();
  return sub_1C8CD20B4(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_1C8FAD3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8CD1B00(&qword_1EC31D598, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8FAD46C(uint64_t a1)
{
  v2 = sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8FAD4DC()
{
  sub_1C8CD1B00(&qword_1EC31CDA8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_1C9063ABC();
}

uint64_t sub_1C8FAD55C()
{
  if (qword_1EC311B78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC31B318;
  v2 = unk_1EC31B320;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA81A90](0x74616C706D65542ELL, 0xE900000000000065);

  qword_1EC31B368 = v1;
  unk_1EC31B370 = v2;
  return result;
}

uint64_t sub_1C8FAD624()
{
  v0 = sub_1C9063C0C();
  __swift_allocate_value_buffer(v0, qword_1EC31B378);
  __swift_project_value_buffer(v0, qword_1EC31B378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319158, &qword_1C909DF48);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC319160, &qword_1C909DF50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C90ABF00;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C9063BDC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notEqualTo";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
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
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "contains";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "notContains";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "beginsWith";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "endsWith";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "inTheNext";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "inTheLast";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "isToday";
  *(v35 + 1) = 7;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "isBetween";
  *(v37 + 1) = 9;
  v37[16] = 2;
  v8();
  return sub_1C9063BEC();
}

void ToolKitProtoComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_8_32();
        sub_1C8FADD20(v3, v4, v5, v6);
        break;
      case 2:
        v31 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAE218(v31, v32, v33, v34);
        break;
      case 3:
      case 4:
      case 15:
        OUTLINED_FUNCTION_6_44();
        sub_1C8F6278C();
        break;
      case 5:
        v11 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAE710(v11, v12, v13, v14);
        break;
      case 6:
        v35 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAEC08(v35, v36, v37, v38);
        break;
      case 7:
        v43 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAF100(v43, v44, v45, v46);
        break;
      case 8:
        v27 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAF5F8(v27, v28, v29, v30);
        break;
      case 9:
        v51 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAFAF0(v51, v52, v53, v54);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_8_32();
        sub_1C8FAFFE8(v19, v20, v21, v22);
        break;
      case 11:
        v47 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB04E0(v47, v48, v49, v50);
        break;
      case 12:
        v7 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB09D8(v7, v8, v9, v10);
        break;
      case 13:
        v15 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB0ED0(v15, v16, v17, v18);
        break;
      case 14:
        v39 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB13C8(v39, v40, v41, v42);
        break;
      case 16:
        v23 = OUTLINED_FUNCTION_8_32();
        sub_1C8FB18C0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8FADD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }

    else
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FAE218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1C8FAE710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC314768, &qword_1C9074E28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
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
    sub_1C8D16D78(v12, &unk_1EC314768, &qword_1C9074E28);
  }

  else
  {
    sub_1C900BE74();
    sub_1C900BE74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
      sub_1C900BE74();
      sub_1C900BE74();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1C8CD20B4(v16, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    }
  }

  sub_1C8CD1B00(&qword_1EDA6C600, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = v35;
  sub_1C9063A4C();
  if (v25)
  {
    v26 = v24;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v21, 1, v5) == 1)
  {
    sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
    v26 = v21;
    return sub_1C8D16D78(v26, &qword_1EC312A58, &unk_1C9074CC0);
  }

  sub_1C900BE74();
  if (EnumTagSinglePayload != 1)
  {
    sub_1C90638EC();
  }

  v28 = v33;
  sub_1C8D16D78(v24, &qword_1EC312A58, &unk_1C9074CC0);
  v29 = v31;
  sub_1C8D16D78(v31, &unk_1EC314768, &qword_1C9074E28);
  sub_1C900BE74();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}