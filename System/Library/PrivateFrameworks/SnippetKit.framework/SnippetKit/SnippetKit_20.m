uint64_t type metadata accessor for SummaryItemStandard()
{
  result = qword_280371AB8;
  if (!qword_280371AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2BA6FC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A2BA750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SummaryItemStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_6_21();
  sub_26A2BAB40();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_15_23();
  sub_26A2BA6FC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SummaryItemStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemStandard();
  *(inited + 64) = &protocol witness table for SummaryItemStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_14_16();
  sub_26A2BAB40();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2BAA1C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2BAA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2BAAD4()
{
  result = type metadata accessor for _ProtoSummaryItem_Standard(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2BAB40()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_20_22()
{

  return type metadata accessor for _ProtoSummaryItem_Standard(0);
}

uint64_t OUTLINED_FUNCTION_21_20()
{

  return sub_26A2BA750(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

void OUTLINED_FUNCTION_26_23()
{

  sub_26A18D9D4();
}

void OUTLINED_FUNCTION_35_17(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  *v2 = v1;
  *(v2 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_46_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A2BA6FC();
}

uint64_t OUTLINED_FUNCTION_51_12()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_53_12()
{

  return type metadata accessor for _ProtoSummaryItem_Standard(0);
}

uint64_t OUTLINED_FUNCTION_55_11(uint64_t a1)
{

  return sub_26A0E48F0(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_58_12()
{

  return sub_26A2BA6FC();
}

uint64_t CustomCanvas.init(bundleName:viewId:viewData:)()
{
  OUTLINED_FUNCTION_2_33();
  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v0, v1);
  OUTLINED_FUNCTION_6_22();

  v2 = OUTLINED_FUNCTION_44();
  return sub_26A0E4784(v2, v3);
}

Swift::String __swiftcall CustomCanvas.description(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v3 = type metadata accessor for CustomCanvas();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_18();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - v7;
  OUTLINED_FUNCTION_7_18();
  v9 = OUTLINED_FUNCTION_12_2();
  sub_26A2BB77C(v9, v10, v11);
  v12 = (*(v2 + 64) & 1) == 0;
  sub_26A39F8C8();
  KeyPath = swift_getKeyPath();
  sub_26A0F7F70(KeyPath, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, v14, v15, v16, v17, v40, v41);

  v18 = swift_getKeyPath();
  sub_26A0F7F70(v18, 0x644977656976, 0xE600000000000000, 1, v19, v20, v21, v22, v40, v41);

  v23 = *(v8 + 4);
  v24 = *(v8 + 5);
  v25 = OUTLINED_FUNCTION_12_2();
  sub_26A0E45C0(v25, v26);
  v27 = OUTLINED_FUNCTION_12_2();
  sub_26A3A7078(v27, v28, v29, 0xE800000000000000);
  v30 = OUTLINED_FUNCTION_12_2();
  sub_26A0E4784(v30, v31);
  v32 = swift_getKeyPath();
  sub_26A0F7F70(v32, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v33, v34, v35, v36, v40, v41);

  sub_26A146B68(v8[65]);
  sub_26A146B68(v8[66]);
  sub_26A1018D0();
  sub_26A0E48F0(v8, &qword_28036CD58, &unk_26A437B60);
  v37 = OUTLINED_FUNCTION_12_2();
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

uint64_t _ProtoCustomCanvas.redactedProto.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_1_37();
  result = sub_26A2BB77C(v1, v5, v4);
  if ((v3 & 1) == 0)
  {
    v7 = a1[1];

    OUTLINED_FUNCTION_4_29();
    *a1 = v8;
    a1[1] = v9;
    v10 = a1[3];

    OUTLINED_FUNCTION_3_36();
    a1[2] = v11;
    a1[3] = v12;
    v14 = *(v1 + 48);
    v13 = *(v1 + 56);

    sub_26A28E6C8();
    v16 = v15;
    v18 = v17;
    result = sub_26A0E4784(a1[4], a1[5]);
    a1[4] = v16;
    a1[5] = v18;
  }

  return result;
}

uint64_t CustomCanvas.bundleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t CustomCanvas.viewId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t CustomCanvas.viewData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v3, v4);
  return OUTLINED_FUNCTION_175();
}

uint64_t CustomCanvas.componentName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_175();
}

uint64_t CustomCanvas.redactedProto.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  OUTLINED_FUNCTION_1_37();
  result = sub_26A2BB77C(v1, v5, v4);
  if ((v3 & 1) == 0)
  {
    v7 = a1[1];

    OUTLINED_FUNCTION_4_29();
    *a1 = v8;
    a1[1] = v9;
    v10 = a1[3];

    OUTLINED_FUNCTION_3_36();
    a1[2] = v11;
    a1[3] = v12;
    v14 = *(v1 + 48);
    v13 = *(v1 + 56);

    sub_26A28E6C8();
    v16 = v15;
    v18 = v17;
    result = sub_26A0E4784(a1[4], a1[5]);
    a1[4] = v16;
    a1[5] = v18;
  }

  return result;
}

uint64_t CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v8, v9);
  sub_26A4249C4();

  sub_26A0E4784(a5, a6);
}

uint64_t sub_26A2BB380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{
  v19 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  v20 = *(a1 + 24);

  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  sub_26A0E45C0(a6, a7);
  sub_26A0E4784(v21, v22);
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  v23 = *(a1 + 56);

  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 65) = a11;
  *(a1 + 66) = a12;
  return result;
}

uint64_t sub_26A2BB490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCustomCanvas();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CustomCanvas()
{
  result = qword_28157B4C8;
  if (!qword_28157B4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:)()
{
  OUTLINED_FUNCTION_14_17();
  OUTLINED_FUNCTION_2_33();

  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v0, v1);
  OUTLINED_FUNCTION_6_22();

  v2 = OUTLINED_FUNCTION_44();
  sub_26A0E4784(v2, v3);
  OUTLINED_FUNCTION_13_19();
}

void CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:)()
{
  OUTLINED_FUNCTION_14_17();
  OUTLINED_FUNCTION_2_33();

  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_5_30();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v0, v1);
  OUTLINED_FUNCTION_6_22();

  v2 = OUTLINED_FUNCTION_44();
  sub_26A0E4784(v2, v3);
  OUTLINED_FUNCTION_13_19();
}

void CustomCanvas.init(bundleName:viewId:viewData:componentName:)()
{
  OUTLINED_FUNCTION_14_17();
  v1 = v0;
  v3 = v2;
  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v4, v5);
  sub_26A4249C4();

  sub_26A0E4784(v3, v1);

  OUTLINED_FUNCTION_13_19();
}

uint64_t sub_26A2BB77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_175();
  v8(v7);
  return a2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomCanvas.jsonString(redacted:)(Swift::Bool redacted)
{
  v3 = v2;
  v4 = type metadata accessor for _ProtoCustomCanvas();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = sub_26A4247D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  if (*(v1 + 64) == 1)
  {
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_51();
    sub_26A2BBFC8(v19, v20);
    v21 = sub_26A424954();
    if (!v2)
    {
      v3 = v21;
      v4 = v22;
    }

    (*(v12 + 8))(v18, v11);
  }

  else
  {
    sub_26A2BB77C(v1, v10, type metadata accessor for _ProtoCustomCanvas);
    v23 = v10[1];

    OUTLINED_FUNCTION_4_29();
    *v10 = v24;
    v10[1] = v25;
    v26 = v10[3];

    OUTLINED_FUNCTION_3_36();
    v10[2] = v27;
    v10[3] = v28;
    v30 = *(v1 + 48);
    v29 = *(v1 + 56);

    sub_26A28E6C8();
    v32 = v31;
    v34 = v33;
    sub_26A0E4784(v10[4], v10[5]);
    v10[4] = v32;
    v10[5] = v34;
    sub_26A4247C4();
    OUTLINED_FUNCTION_0_51();
    sub_26A2BBFC8(v35, v36);
    v37 = sub_26A424954();
    if (!v3)
    {
      v3 = v37;
      v4 = v38;
    }

    (*(v12 + 8))(v15, v11);
    sub_26A2BBEDC(v10);
  }

  v39 = v3;
  v40 = v4;
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t CustomCanvas.hash(into:)()
{
  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v0, v1);

  return sub_26A424B44();
}

uint64_t CustomCanvas.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_0_51();
  sub_26A2BBFC8(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A2BBBE0()
{
  sub_26A425504();
  type metadata accessor for _ProtoCustomCanvas();
  sub_26A2BBFC8(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t CustomCanvas.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for _ProtoCustomCanvas();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  v13 = type metadata accessor for _ProtoSeparators();
  __swift_storeEnumTagSinglePayload(a1 + v12, 1, 1, v13);
  OUTLINED_FUNCTION_1_37();
  sub_26A2BB77C(v2, v8, v14);
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  v15 = OUTLINED_FUNCTION_44();
  sub_26A2BB490(v15, v16);
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
}

uint64_t CustomCanvas.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for CustomCanvas();
  *(inited + 64) = &protocol witness table for CustomCanvas;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_7_18();
  sub_26A2BB77C(v0, v2, v3);
  swift_beginAccess();

  sub_26A10BF5C(v4);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A2BBFC8(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A2BBEDC(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoCustomCanvas();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A2BBFC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2BC038()
{
  result = type metadata accessor for _ProtoCustomCanvas();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_15_24()
{

  return type metadata accessor for _ProtoCustomCanvas();
}

uint64_t _ProtoFactItem_HeroNumber.number.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_HeroNumber.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_47_11(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_HeroNumber.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2BCB20(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  OUTLINED_FUNCTION_142();
  v5 = *v3;
  v4 = v3[1];

  return v5;
}

uint64_t _ProtoFactItem_HeroNumber.number.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_HeroNumber.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t sub_26A2BD23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v10 = v6;
  v13 = *(a3(0) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a4(0);
    OUTLINED_FUNCTION_100_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_5_3();
    v16 = a5(v18);
    *(v10 + v13) = v16;
  }

  v19 = (v16 + *a6);
  OUTLINED_FUNCTION_26_10();
  v20 = v19[1];
  *v19 = a1;
  v19[1] = a2;
}

uint64_t _ProtoFactItem_HeroNumber.hasNumber.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_47_11(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Standard.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_46_8(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2BDC48@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = *(v3 + *(a1(0) + 20));
  v14 = *a2;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_73_7();
  sub_26A10FD9C();
  v15 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v12);
  if (!v16)
  {
    return sub_26A2CDD2C();
  }

  *a3 = MEMORY[0x277D84F90];
  a3[1] = 0;
  a3[2] = 0xE000000000000000;
  v17 = a3 + *(v15 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v12);
  if (!v16)
  {
    return sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t _ProtoFactItem_Standard.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_188_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_113_2();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Standard.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_46_8(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasButton2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t sub_26A2BE674()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v9);
  v10 = *v2;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_69_2();
  sub_26A10FD9C();
  v11 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_23(v0);
  if (!v12)
  {
    return sub_26A2CDD2C();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v13 = *(v11 + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  *(v4 + v13) = qword_280371710;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v11);

  if (EnumTagSinglePayload != 1)
  {
    return sub_26A0E48F0(v0, &qword_28036EC48, &unk_26A4385C0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasButton3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasText5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text5.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_31_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoFactItem_Button.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.button1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.button2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.button3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.text5.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_99_3(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

uint64_t _ProtoFactItem_Button.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

uint64_t _ProtoFactItem_Button.hasButton1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_31_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

void _ProtoFactItem_Standard.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2BFCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_26A2D1828();
  return a7(v13);
}

void _ProtoFactItem_Standard.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Standard.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_18_21();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Standard.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_Standard(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_58_13();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C60D4();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C09C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Standard.componentName.setter();
}

uint64_t _ProtoFactItem_Standard.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A2C0AB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Standard.linkIdentifier.setter();
}

uint64_t _ProtoFactItem_Standard.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Standard(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoFactItem_ShortNumber.number.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.number.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.number.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasNumber.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearNumber()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.text1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text1.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText1.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.text2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text2.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText2.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.text3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text3.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText3.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.unit.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.unit.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.unit.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasUnit.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearUnit()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasThumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t _ProtoFactItem_ShortNumber.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasAction.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C29C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_ShortNumber.componentName.setter();
}

uint64_t _ProtoFactItem_ShortNumber.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t _ProtoFactItem_ShortNumber.text4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40_14(v5);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_58_6();
  v6 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_7_8(v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_116_2();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v8 = OUTLINED_FUNCTION_191_0();
  result = OUTLINED_FUNCTION_1_16(v8);
  if (!v7)
  {
    return sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t _ProtoFactItem_ShortNumber.text4.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_109_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_42_1(v9);
  }

  OUTLINED_FUNCTION_113_2();
  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_50_4(v10);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_185_1();
  return swift_endAccess();
}

void _ProtoFactItem_ShortNumber.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_17();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoFactItem_ShortNumber.hasText4.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_40_14(v6);
  OUTLINED_FUNCTION_53_5();
  OUTLINED_FUNCTION_52_5();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_9_11(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoFactItem_ShortNumber.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_108_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_55_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2C994C();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C2F70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_ShortNumber.linkIdentifier.setter();
}

uint64_t _ProtoFactItem_ShortNumber.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_ShortNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26A2C3100@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_125();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void _ProtoFactItem_HeroNumber.number.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearNumber()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_HeroNumber.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C3DF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_HeroNumber.componentName.setter();
}

uint64_t _ProtoFactItem_HeroNumber.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoFactItem_HeroNumber.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_HeroNumber.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoFactItem_HeroNumber(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_59_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2CD7C0();
    OUTLINED_FUNCTION_52_3(v10);
  }

  v11 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v11);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C40FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_HeroNumber.linkIdentifier.setter();
}

uint64_t _ProtoFactItem_HeroNumber.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_HeroNumber(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoFactItem_Button.text1.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.button1.modify()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_48_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_32_0(v4);
  v5 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = *(v0 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *&v13[v15] = qword_280371710;
    v16 = OUTLINED_FUNCTION_95_1();

    if (v16 != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearButton1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.button2.modify()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_48_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_32_0(v4);
  v5 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = *(v0 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *&v13[v15] = qword_280371710;
    v16 = OUTLINED_FUNCTION_95_1();

    if (v16 != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearButton2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.button3.modify()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_48_6();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_32_0(v4);
  v5 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_31_1(v7);
  v9 = type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_14_8(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = *(v0 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *&v13[v15] = qword_280371710;
    v16 = OUTLINED_FUNCTION_95_1();

    if (v16 != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearButton3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.text2.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.text3.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.text4.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoMultilineTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036CAE0, &unk_26A4273F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.thumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v12 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v12);
    if (!v11)
    {
      sub_26A0E48F0(v0, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

void _ProtoFactItem_Button.action.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_31_1(v6);
  v7 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_14_8(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v11)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v11)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C5578(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Button.componentName.setter();
}

uint64_t _ProtoFactItem_Button.componentName.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Button(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void _ProtoFactItem_Button.text5.modify()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_48_6();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32_0(v3);
  v4 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_31_1(v6);
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  OUTLINED_FUNCTION_14_8(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_51_3(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_1_4();
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v13);
    if (!v12)
    {
      sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2CDD2C();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A2C57BC(uint64_t a1, char a2, void (*a3)(void *), uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_103();
    sub_26A2D1828();
    a3(v6);
    sub_26A2D187C(v7, a4);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v9);

  free(v5);
}

Swift::Void __swiftcall _ProtoFactItem_Button.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_98_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_5_3();
    sub_26A2D10F4();
    OUTLINED_FUNCTION_52_3(v9);
  }

  v10 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_51_4(v10);
  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_185_1();
  swift_endAccess();
}

uint64_t sub_26A2C5924(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoFactItem_Button.linkIdentifier.setter();
}

uint64_t _ProtoFactItem_Button.linkIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_41_7();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_20_11(v1);
  v3 = type metadata accessor for _ProtoFactItem_Button(v2);
  OUTLINED_FUNCTION_42_6(v3);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_126_1();

  return OUTLINED_FUNCTION_133();
}

void sub_26A2C5A14()
{
  OUTLINED_FUNCTION_76();
  v5 = *v0;
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 56);
  if (v8)
  {
    v9 = v4;
    v10 = *(v5 + 64);
    v11 = *(*v0 + 56);

    v12 = OUTLINED_FUNCTION_125();
    v9(v12);
    v13 = *(v5 + 56);
  }

  else
  {
    v14 = v3;
    v15 = v2;
    v16 = v1;
    v17 = *(v5 + 72);
    v18 = *(v5 + 64);
    v19 = *(v18 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v18 + v17);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = *(v5 + 72);
      v23 = *(v5 + 64);
      v24 = v16(0);
      OUTLINED_FUNCTION_100_0(v24);
      swift_allocObject();
      v25 = OUTLINED_FUNCTION_5_3();
      v21 = v15(v25);
      *(v23 + v22) = v21;
    }

    v26 = (v21 + *v14);
    OUTLINED_FUNCTION_26_10();
    v27 = v26[1];
    *v26 = v6;
    v26[1] = v7;
  }

  OUTLINED_FUNCTION_75();

  free(v28);
}

uint64_t _s10SnippetKit23_ProtoVisualization_MapV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_26A424794();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_26A2C5BD8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371AD0);
  __swift_project_value_buffer(v0, qword_280371AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A42B0D0;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "text_2";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "text_3";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v7();
  v11 = (v25 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "text_4";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v25 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_5";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v25 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "thumbnail";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v17 = *MEMORY[0x277D21870];
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "action";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "component_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "link_identifier";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2C5FA0()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2C60D4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v19);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  v45 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v54 = (v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_129_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_129_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_129_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_129_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_129_2();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_4();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_153_4();
  swift_endAccess();
  v46 = (v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1();
  v48 = *v46;
  v47 = v46[1];
  OUTLINED_FUNCTION_26_10();
  v49 = v44[1];
  *v44 = v48;
  v44[1] = v47;

  v50 = (v2 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v52 = *v50;
  v51 = v50[1];

  OUTLINED_FUNCTION_140_1();
  v53 = v54[1];
  *v54 = v52;
  v54[1] = v51;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2C65FC()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A2C678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A2C6910();
        break;
      case 2:
        sub_26A2C69EC();
        break;
      case 3:
        sub_26A2C6AC8();
        break;
      case 4:
        sub_26A2C6BA4();
        break;
      case 5:
        sub_26A2C6C80();
        break;
      case 6:
        sub_26A2C6D5C();
        break;
      case 7:
        sub_26A2C6E38();
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_13;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_13:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2C6910()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C69EC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6AC8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6BA4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6C80()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6D5C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6E38()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2C6F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2C7130(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2C7324(a1, a2, a3, a4);
    sub_26A2C7518(a1, a2, a3, a4);
    sub_26A2C770C(a1, a2, a3, a4);
    sub_26A2C7900(a1, a2, a3, a4);
    sub_26A2C7AF4(a1, a2, a3, a4);
    sub_26A2C7CE8(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2C7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C7324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C7518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2C7900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2C7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A2C7CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoActionProperty);
}

void sub_26A2C7F08()
{
  OUTLINED_FUNCTION_76();
  v240 = v0;
  v2 = v1;
  v214 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v214);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v210 = v6;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v213);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v215 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v211 = v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v217 = v17;
  OUTLINED_FUNCTION_45();
  v219 = type metadata accessor for _ProtoVisualProperty();
  v18 = OUTLINED_FUNCTION_12(v219);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v212 = v21;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12(v218);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  v220 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v216 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v223 = v32;
  v33 = OUTLINED_FUNCTION_45();
  v228 = type metadata accessor for _ProtoMultilineTextProperty(v33);
  v34 = OUTLINED_FUNCTION_12(v228);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v222 = v37;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  OUTLINED_FUNCTION_12(v227);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_42();
  v229 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v43 = OUTLINED_FUNCTION_41(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  v225 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_48();
  v232 = v48;
  v49 = OUTLINED_FUNCTION_45();
  v241 = type metadata accessor for _ProtoTextProperty(v49);
  v50 = OUTLINED_FUNCTION_12(v241);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11();
  v237 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v55 = OUTLINED_FUNCTION_12(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8();
  v224 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  v231 = v60;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  v236 = v62;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  v65 = &v209 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v67 = OUTLINED_FUNCTION_41(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8();
  v221 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v226 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v230 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47();
  v234 = v76;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47();
  v233 = v78;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_47();
  v235 = v80;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_47();
  v238 = v82;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v83);
  v85 = &v209 - v84;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v239 = v54;
  v86 = *(v54 + 48);
  sub_26A10FD9C();
  v87 = v241;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v65, 1, v87);
  if (v89)
  {

    sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_37(&v65[v86], 1, v87);
    if (v89)
    {
      sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_12;
    }

LABEL_9:
    sub_26A0E48F0(v65, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_44;
  }

  v88 = v238;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v65[v86], 1, v87);
  if (v89)
  {

    sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v88, v90);
    goto LABEL_9;
  }

  v91 = v237;
  sub_26A2CDD2C();

  v92 = OUTLINED_FUNCTION_105();
  v94 = static _ProtoTextProperty.== infix(_:_:)(v92, v93);
  sub_26A2D187C(v91, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2D187C(v88, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_12:
  OUTLINED_FUNCTION_124_1();
  v95 = v2;
  v96 = v235;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1();
  v97 = *(v239 + 48);
  v98 = v236;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_3(v98, 1);
  if (v89)
  {
    sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(v98 + v97);
    if (v89)
    {
      sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
      v99 = v95;
      goto LABEL_22;
    }

LABEL_20:
    sub_26A0E48F0(v98, &qword_28036C7D0, &qword_26A426DE0);
    goto LABEL_44;
  }

  v100 = v233;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v98 + v97);
  if (v101)
  {
    sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v100, v102);
    goto LABEL_20;
  }

  v103 = v96;
  v104 = v237;
  sub_26A2CDD2C();
  v105 = OUTLINED_FUNCTION_103();
  LODWORD(v240) = static _ProtoTextProperty.== infix(_:_:)(v105, v106);
  sub_26A2D187C(v104, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A2D187C(v100, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
  v99 = v95;
  if ((v240 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  OUTLINED_FUNCTION_142();
  v107 = v234;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_4(v239);
  v108 = v231;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v109 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_19(v109, v110);
  if (v89)
  {
    sub_26A0E48F0(v107, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(&qword_280371000 + v108);
    v111 = v232;
    if (!v89)
    {
      goto LABEL_31;
    }

    sub_26A0E48F0(v108, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v112 = v230;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&qword_280371000 + v108);
    v111 = v232;
    if (v113)
    {
      sub_26A0E48F0(v234, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_37();
      v115 = v112;
LABEL_30:
      sub_26A2D187C(v115, v114);
LABEL_31:
      v116 = &qword_28036C7D0;
      v117 = &qword_26A426DE0;
LABEL_42:
      v131 = v108;
      goto LABEL_43;
    }

    v118 = v237;
    sub_26A2CDD2C();
    v119 = OUTLINED_FUNCTION_103();
    v121 = static _ProtoTextProperty.== infix(_:_:)(v119, v120);
    sub_26A2D187C(v118, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v234, &qword_28036C7B8, &unk_26A425BF0);
    v122 = OUTLINED_FUNCTION_88();
    sub_26A2D187C(v122, v123);
    v124 = OUTLINED_FUNCTION_167();
    sub_26A0E48F0(v124, v125, &unk_26A425BF0);
    if ((v121 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_196_0(v227);
  v108 = v229;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v126 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v126, v127);
  if (v89)
  {
    sub_26A0E48F0(v111, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_23(&qword_280371000 + v108);
    if (v89)
    {
      sub_26A0E48F0(v108, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_46;
    }

LABEL_41:
    v116 = &qword_28036F088;
    v117 = &unk_26A42C570;
    goto LABEL_42;
  }

  v128 = v225;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v108);
  if (v129)
  {
    sub_26A0E48F0(v111, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v128, v130);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_155_4();
  v132 = OUTLINED_FUNCTION_103();
  v134 = static _ProtoMultilineTextProperty.== infix(_:_:)(v132, v133);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(&qword_280371000, v135);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v136, v137, v138);
  v139 = OUTLINED_FUNCTION_105();
  sub_26A2D187C(v139, v140);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v141, v142, v143);
  if ((v134 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  OUTLINED_FUNCTION_142();
  v144 = v226;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_196_0(v239);
  v108 = v224;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v145 = OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_48_3(v145, v146);
  if (v89)
  {
    sub_26A0E48F0(v144, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(&qword_280371000 + v108);
    if (v89)
    {
      sub_26A0E48F0(v108, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_55;
    }

    goto LABEL_31;
  }

  v147 = v221;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v108);
  if (v148)
  {
    sub_26A0E48F0(v226, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v115 = v147;
    goto LABEL_30;
  }

  v149 = v237;
  sub_26A2CDD2C();
  static _ProtoTextProperty.== infix(_:_:)(v147, v149);
  OUTLINED_FUNCTION_9_29();
  sub_26A2D187C(v149, v150);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v151, v152, v153);
  v154 = OUTLINED_FUNCTION_105();
  sub_26A2D187C(v154, v155);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v156, v157, v158);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_55:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_196_0(v218);
  v108 = v220;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v159 = OUTLINED_FUNCTION_271();
  v160 = v219;
  OUTLINED_FUNCTION_48_3(v159, v161);
  if (v89)
  {
    sub_26A0E48F0(v223, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(&qword_280371000 + v108);
    if (v89)
    {
      sub_26A0E48F0(v108, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_65;
    }

    goto LABEL_63;
  }

  v162 = v216;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v108);
  if (v163)
  {
    sub_26A0E48F0(v223, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_90_6();
    sub_26A2D187C(v162, v164);
LABEL_63:
    v116 = &qword_28036D190;
    v117 = &unk_26A427130;
    goto LABEL_42;
  }

  v165 = v212;
  sub_26A2CDD2C();
  v166 = OUTLINED_FUNCTION_235();
  static _ProtoVisualProperty.== infix(_:_:)(v166, v167);
  OUTLINED_FUNCTION_86_8();
  sub_26A2D187C(v165, v168);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v169, v170, v171);
  sub_26A2D187C(v162, v160);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v172, v173, v174);
  if ((&qword_28036CAE8 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_65:
  OUTLINED_FUNCTION_142();
  v175 = v217;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_163_2(v213);
  v176 = v215;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v177 = OUTLINED_FUNCTION_107();
  v178 = v214;
  OUTLINED_FUNCTION_19(v177, v179);
  if (!v89)
  {
    v190 = v211;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(&qword_280371000 + v176);
    if (!v191)
    {
      v193 = v210;
      sub_26A2CDD2C();
      v194 = *v190;
      v195 = *v193;
      sub_26A0E36D8();
      if (v196)
      {
        v197 = v190[1] == v193[1] && v190[2] == v193[2];
        if (v197 || (sub_26A425354() & 1) != 0)
        {
          v198 = *(v178 + 24);
          sub_26A424794();
          OUTLINED_FUNCTION_23_22();
          sub_26A2D18D4(v199, v200);
          v201 = sub_26A424B64();
          OUTLINED_FUNCTION_50_12();
          sub_26A2D187C(v193, v202);
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v203, v204, v205);
          sub_26A2D187C(v190, v198);
          OUTLINED_FUNCTION_69_2();
          sub_26A0E48F0(v206, v207, v208);
          if ((v201 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_70;
        }
      }

      sub_26A2D187C(v193, type metadata accessor for _ProtoActionProperty);
      sub_26A0E48F0(v217, &off_28036C7C0, &off_26A427400);
      sub_26A2D187C(v190, type metadata accessor for _ProtoActionProperty);
      v131 = OUTLINED_FUNCTION_88();
      v117 = &off_26A427400;
LABEL_43:
      sub_26A0E48F0(v131, v116, v117);
      goto LABEL_44;
    }

    sub_26A0E48F0(v217, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_49_16();
    sub_26A2D187C(v190, v192);
LABEL_83:
    v116 = &qword_28036C7C8;
    v117 = &qword_26A425C00;
    v131 = v176;
    goto LABEL_43;
  }

  sub_26A0E48F0(v175, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_9(&qword_280371000 + v176);
  if (!v89)
  {
    goto LABEL_83;
  }

  sub_26A0E48F0(v176, &off_28036C7C0, &off_26A427400);
LABEL_70:
  v180 = (v99 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v181 = *v180;
  v182 = v180[1];
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_168_1();
  if (v89)
  {
    v184 = v182 == v183;
  }

  else
  {
    v184 = 0;
  }

  if (v184 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    v185 = (v99 + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    OUTLINED_FUNCTION_129_1();
    v186 = *v185;
    v187 = v185[1];
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_168_1();
    if (v89)
    {
      v189 = v187 == v188;
    }

    else
    {
      v189 = 0;
    }

    if (!v189)
    {
      OUTLINED_FUNCTION_21_3();
      sub_26A425354();
    }
  }

LABEL_44:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2C920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D88, type metadata accessor for _ProtoFactItem_Standard);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2C928C(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036D598, type metadata accessor for _ProtoFactItem_Standard);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2C92FC()
{
  sub_26A2D18D4(&qword_28036D598, type metadata accessor for _ProtoFactItem_Standard);

  return sub_26A4249B4();
}

uint64_t sub_26A2C9394()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371AF0);
  __swift_project_value_buffer(v0, qword_280371AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26A42B090;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "number";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "text_1";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v27 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_2";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "text_3";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "unit";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "thumbnail";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "action";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "component_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "text_4";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "link_identifier";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2C97A8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_100_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26A2C97F8()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail;
  v6 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v8 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, 1, 1, v2);
  v10 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2C994C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  v26 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  v30 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  v45 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v19);
  v48 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v57 = (v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_73_7();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_73_7();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_3();
  sub_26A10CF40();
  swift_endAccess();
  v49 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v50 = *v49;
  v51 = v49[1];
  OUTLINED_FUNCTION_26_10();
  v52 = v44[1];
  *v44 = v50;
  v44[1] = v51;

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_132_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_147_4();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  v53 = (v2 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v55 = *v53;
  v54 = v53[1];

  OUTLINED_FUNCTION_140_1();
  v56 = v57[1];
  *v57 = v55;
  v57[1] = v54;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2C9F14()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__unit, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A2CA0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_100_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_5_3();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_26A2CA190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A2CA330();
        break;
      case 2:
        sub_26A2CA40C();
        break;
      case 3:
        sub_26A2CA4E8();
        break;
      case 4:
        sub_26A2CA5C4();
        break;
      case 5:
        sub_26A2CA6A0();
        break;
      case 6:
        sub_26A2CA77C();
        break;
      case 7:
        sub_26A2CA858();
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_10;
      case 9:
        sub_26A2CA934();
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_10:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2CA330()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA40C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA4E8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA5C4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA6A0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA77C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA858()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CA934()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CAA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A2CAABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2CACC8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2CAEBC(a1, a2, a3, a4);
    sub_26A2CB0B0(a1, a2, a3, a4);
    sub_26A2CB2A4(a1, a2, a3, a4);
    sub_26A2CB498(a1, a2, a3, a4);
    sub_26A2CB68C(a1, a2, a3, a4);
    sub_26A2CB880(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A2CBA74(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2CACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CAEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CB0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2CB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2CB498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CB68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A2CB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoActionProperty);
}

uint64_t sub_26A2CBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

void sub_26A2CBC94()
{
  OUTLINED_FUNCTION_76();
  v265 = v0;
  v2 = v1;
  v238 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v238);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11();
  v234 = v6;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v237);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v239 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  v235 = v15;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v244 = v17;
  OUTLINED_FUNCTION_45();
  v242 = type metadata accessor for _ProtoVisualProperty();
  v18 = OUTLINED_FUNCTION_12(v242);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v236 = v21;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12(v241);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  v243 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v27 = OUTLINED_FUNCTION_41(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v240 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v247 = v32;
  v33 = OUTLINED_FUNCTION_45();
  v257 = type metadata accessor for _ProtoMultilineTextProperty(v33);
  v34 = OUTLINED_FUNCTION_12(v257);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v250 = v37;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v38 = OUTLINED_FUNCTION_12(v256);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  v251 = v41;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_48();
  v254 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v45 = OUTLINED_FUNCTION_41(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8();
  v248 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v253 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v252 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_48();
  v261 = v54;
  v55 = OUTLINED_FUNCTION_45();
  v264 = type metadata accessor for _ProtoTextProperty(v55);
  v56 = OUTLINED_FUNCTION_12(v264);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_11();
  v258 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v61 = OUTLINED_FUNCTION_12(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8();
  v233 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  v246 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v259 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  v71 = &v231 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v73 = OUTLINED_FUNCTION_41(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_8();
  v231 = v76;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47();
  v232 = v78;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_47();
  v245 = v80;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_47();
  v249 = v82;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47();
  v255 = v84;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_47();
  v263 = v86;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_47();
  v262 = v88;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v89);
  v91 = &v231 - v90;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v260 = v60;
  v92 = *(v60 + 48);
  OUTLINED_FUNCTION_103();
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(v71);
  if (v95)
  {

    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(&v71[v92]);
    v93 = v2;
    if (v95)
    {
      sub_26A0E48F0(v71, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v97 = &qword_28036C7D0;
    v98 = &qword_26A426DE0;
    v99 = v71;
LABEL_42:
    sub_26A0E48F0(v99, v97, v98);
    goto LABEL_43;
  }

  v94 = v262;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&v71[v92]);
  if (v95)
  {

    sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v94, v96);
    goto LABEL_9;
  }

  v100 = v258;
  sub_26A2CDD2C();

  v101 = static _ProtoTextProperty.== infix(_:_:)(v94, v100);
  sub_26A2D187C(v100, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v91, &qword_28036C7B8, &unk_26A425BF0);
  v93 = v2;
  sub_26A2D187C(v94, type metadata accessor for _ProtoTextProperty);
  sub_26A0E48F0(v71, &qword_28036C7B8, &unk_26A425BF0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1();
  v102 = v263;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_123_1();
  v103 = v259;
  v104 = v260;
  v105 = *(v260 + 48);
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v106 = OUTLINED_FUNCTION_107();
  v107 = v264;
  OUTLINED_FUNCTION_19(v106, v108);
  if (v95)
  {
    sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_9(v103 + v105);
    v109 = v261;
    if (!v95)
    {
      goto LABEL_20;
    }

    sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v110 = v255;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v103 + v105);
    v109 = v261;
    if (v111)
    {
      sub_26A0E48F0(v263, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_37();
      v113 = v110;
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_146_3();
    static _ProtoTextProperty.== infix(_:_:)(v110, v105);
    OUTLINED_FUNCTION_9_29();
    v114 = v93;
    v115 = v104;
    v116 = v110;
    v118 = v117;
    sub_26A2D187C(v105, v117);
    OUTLINED_FUNCTION_69_2();
    sub_26A0E48F0(v119, v120, v121);
    v122 = v116;
    v104 = v115;
    v93 = v114;
    sub_26A2D187C(v122, v118);
    OUTLINED_FUNCTION_69_2();
    sub_26A0E48F0(v123, v124, v125);
    if ((v107 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_4(v256);
  v126 = v109;
  v127 = v254;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_19(v127, 1);
  if (v95)
  {
    sub_26A0E48F0(v126, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_9(&qword_280371000 + v127);
    if (v95)
    {
      sub_26A0E48F0(v127, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_33;
    }

LABEL_31:
    v97 = &qword_28036F088;
    v98 = &unk_26A42C570;
    v99 = v127;
    goto LABEL_42;
  }

  v128 = v252;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&qword_280371000 + v127);
  if (v129)
  {
    sub_26A0E48F0(v261, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v128, v130);
    goto LABEL_31;
  }

  v131 = v250;
  sub_26A2CDD2C();
  v132 = OUTLINED_FUNCTION_103();
  v134 = static _ProtoMultilineTextProperty.== infix(_:_:)(v132, v133);
  sub_26A2D187C(v131, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A0E48F0(v261, &qword_28036CAE0, &unk_26A4273F0);
  v135 = OUTLINED_FUNCTION_88();
  sub_26A2D187C(v135, v136);
  sub_26A0E48F0(v127, &qword_28036CAE0, &unk_26A4273F0);
  if ((v134 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_33:
  OUTLINED_FUNCTION_142();
  v137 = v253;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_196_0(v256);
  v138 = v251;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_48_3(v138, 1);
  if (v95)
  {
    sub_26A0E48F0(v137, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_23(&qword_280371000 + v138);
    if (v95)
    {
      sub_26A0E48F0(v138, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_45;
    }

LABEL_41:
    v97 = &qword_28036F088;
    v98 = &unk_26A42C570;
    v99 = v138;
    goto LABEL_42;
  }

  v139 = v248;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v138);
  if (v140)
  {
    sub_26A0E48F0(v253, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v139, v141);
    goto LABEL_41;
  }

  v142 = v250;
  sub_26A2CDD2C();
  v143 = OUTLINED_FUNCTION_103();
  v145 = static _ProtoMultilineTextProperty.== infix(_:_:)(v143, v144);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(v142, v146);
  sub_26A0E48F0(v253, &qword_28036CAE0, &unk_26A4273F0);
  v147 = OUTLINED_FUNCTION_88();
  sub_26A2D187C(v147, v148);
  v149 = OUTLINED_FUNCTION_235();
  sub_26A0E48F0(v149, v150, &unk_26A4273F0);
  if ((v145 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  OUTLINED_FUNCTION_142();
  v151 = v249;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v152 = *(v104 + 48);
  v153 = v246;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  v103 = v153;
  sub_26A10FD9C();
  v154 = OUTLINED_FUNCTION_271();
  v155 = v264;
  OUTLINED_FUNCTION_19(v154, v156);
  if (!v95)
  {
    v158 = v245;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_9(v153 + v152);
    v157 = v247;
    if (!v159)
    {
      OUTLINED_FUNCTION_146_3();
      v160 = OUTLINED_FUNCTION_235();
      static _ProtoTextProperty.== infix(_:_:)(v160, v161);
      OUTLINED_FUNCTION_9_29();
      v163 = v162;
      sub_26A2D187C(v152, v162);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v164, v165, v166);
      sub_26A2D187C(v158, v163);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v167, v168, v169);
      if ((v155 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_54;
    }

    sub_26A0E48F0(v249, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v113 = v158;
LABEL_19:
    sub_26A2D187C(v113, v112);
LABEL_20:
    v97 = &qword_28036C7D0;
    v98 = &qword_26A426DE0;
LABEL_21:
    v99 = v103;
    goto LABEL_42;
  }

  sub_26A0E48F0(v151, &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_9(v153 + v152);
  v157 = v247;
  if (!v95)
  {
    goto LABEL_20;
  }

  sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
LABEL_54:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_273();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_163_2(v241);
  v103 = v243;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v170 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_48_3(v170, v171);
  if (v95)
  {
    sub_26A0E48F0(v157, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_23(&qword_280371000 + v103);
    v172 = v244;
    if (v95)
    {
      sub_26A0E48F0(v103, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_64;
    }

LABEL_62:
    v97 = &qword_28036D190;
    v98 = &unk_26A427130;
    goto LABEL_21;
  }

  v173 = v240;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v103);
  v172 = v244;
  if (v174)
  {
    sub_26A0E48F0(v157, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_90_6();
    sub_26A2D187C(v173, v175);
    goto LABEL_62;
  }

  v176 = v236;
  sub_26A2CDD2C();
  v177 = OUTLINED_FUNCTION_103();
  static _ProtoVisualProperty.== infix(_:_:)(v177, v178);
  OUTLINED_FUNCTION_86_8();
  sub_26A2D187C(v176, v179);
  sub_26A0E48F0(v157, &qword_28036CAE8, &unk_26A426430);
  v180 = OUTLINED_FUNCTION_88();
  sub_26A2D187C(v180, v181);
  sub_26A0E48F0(v103, &qword_28036CAE8, &unk_26A426430);
  if ((&qword_28036CAE8 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_64:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_149_4(v237);
  v182 = v239;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v183 = v182;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v184 = OUTLINED_FUNCTION_107();
  v185 = v238;
  OUTLINED_FUNCTION_19(v184, v186);
  if (v95)
  {
    sub_26A0E48F0(v172, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_9(&qword_280371000 + v182);
    if (v95)
    {
      sub_26A0E48F0(v182, &off_28036C7C0, &off_26A427400);
      goto LABEL_69;
    }

LABEL_82:
    v97 = &qword_28036C7C8;
    v98 = &qword_26A425C00;
    v99 = v183;
    goto LABEL_42;
  }

  v195 = v235;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_9(&qword_280371000 + v183);
  if (v196)
  {
    sub_26A0E48F0(v172, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_49_16();
    sub_26A2D187C(v195, v197);
    goto LABEL_82;
  }

  v198 = v234;
  sub_26A2CDD2C();
  v199 = *v195;
  v200 = *v198;
  sub_26A0E36D8();
  if ((v201 & 1) == 0 || (v195[1] == v198[1] ? (v202 = v195[2] == v198[2]) : (v202 = 0), !v202 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2D187C(v198, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(v172, &off_28036C7C0, &off_26A427400);
    sub_26A2D187C(v195, type metadata accessor for _ProtoActionProperty);
    v99 = OUTLINED_FUNCTION_88();
    v98 = &off_26A427400;
    goto LABEL_42;
  }

  v203 = *(v185 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_23_22();
  sub_26A2D18D4(v204, v205);
  v206 = sub_26A424B64();
  OUTLINED_FUNCTION_50_12();
  sub_26A2D187C(v198, v207);
  v208 = OUTLINED_FUNCTION_235();
  sub_26A0E48F0(v208, v209, &off_26A427400);
  v210 = OUTLINED_FUNCTION_105();
  sub_26A2D187C(v210, v211);
  v212 = OUTLINED_FUNCTION_103();
  sub_26A0E48F0(v212, v213, &off_26A427400);
  if ((v206 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_69:
  v187 = (v93 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v188 = *v187;
  v189 = v187[1];
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_168_1();
  if (v95)
  {
    v191 = v189 == v190;
  }

  else
  {
    v191 = 0;
  }

  if (v191 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    OUTLINED_FUNCTION_142();
    v192 = v232;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_149_4(v260);
    v103 = v233;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    v193 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_48_3(v193, v194);
    if (v95)
    {
      sub_26A0E48F0(v192, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_23(&qword_280371000 + v103);
      if (v95)
      {
        sub_26A0E48F0(v103, &qword_28036C7B8, &unk_26A425BF0);
LABEL_96:
        v226 = (v93 + OBJC_IVAR____TtCV10SnippetKit26_ProtoFactItem_ShortNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
        OUTLINED_FUNCTION_129_1();
        v227 = *v226;
        v228 = v226[1];
        OUTLINED_FUNCTION_122_1();
        OUTLINED_FUNCTION_168_1();
        if (v95)
        {
          v230 = v228 == v229;
        }

        else
        {
          v230 = 0;
        }

        if (!v230)
        {
          OUTLINED_FUNCTION_21_3();
          sub_26A425354();
        }

        goto LABEL_43;
      }

      goto LABEL_20;
    }

    v214 = v231;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(&qword_280371000 + v103);
    if (!v215)
    {
      OUTLINED_FUNCTION_146_3();
      v216 = OUTLINED_FUNCTION_167();
      static _ProtoTextProperty.== infix(_:_:)(v216, v217);
      OUTLINED_FUNCTION_9_29();
      v219 = v218;
      sub_26A2D187C(&qword_280371000, v218);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v220, v221, v222);
      sub_26A2D187C(v214, v219);
      OUTLINED_FUNCTION_69_2();
      sub_26A0E48F0(v223, v224, v225);
      if ((&qword_28036C7B8 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_96;
    }

    sub_26A0E48F0(v192, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v113 = v214;
    goto LABEL_19;
  }

LABEL_43:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2CD144(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D80, type metadata accessor for _ProtoFactItem_ShortNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2CD1C4(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036F798, type metadata accessor for _ProtoFactItem_ShortNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2CD234()
{
  sub_26A2D18D4(&qword_28036F798, type metadata accessor for _ProtoFactItem_ShortNumber);

  return sub_26A4249B4();
}

uint64_t sub_26A2CD2CC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371B10);
  __swift_project_value_buffer(v0, qword_280371B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A42B0D0;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "number";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "text_1";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v25 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text_2";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "text_3";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "action";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "text_4";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "component_name";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "text_5";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "link_identifier";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2CD690()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, 1, 1, v4);
  v8 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2CD7C0()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  v22 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v15);
  v36 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v37 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v22);
  v40 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v49 = (v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_269();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_269();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_269();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_73_7();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v41 = (v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_122_1();
  v43 = *v41;
  v42 = v41[1];
  OUTLINED_FUNCTION_26_10();
  v44 = v36[1];
  *v36 = v43;
  v36[1] = v42;

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  v45 = (v2 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_122_1();
  v47 = *v45;
  v46 = v45[1];

  OUTLINED_FUNCTION_140_1();
  v48 = v49[1];
  *v49 = v47;
  v49[1] = v46;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2CDD2C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A2CDDA0()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036C7B8, &unk_26A425BF0);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &qword_28036CAE0, &unk_26A4273F0);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A2CDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A2CE0BC();
        break;
      case 2:
        sub_26A2CE198();
        break;
      case 3:
        sub_26A2CE274();
        break;
      case 4:
        sub_26A2CE350();
        break;
      case 5:
        sub_26A2CE42C();
        break;
      case 6:
        sub_26A2CE508();
        break;
      case 7:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_13;
      case 8:
        sub_26A2CE5E4();
        break;
      case 9:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_13:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2CE0BC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE198()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE274()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE350()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE42C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE508()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE5E4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2CE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2CE8DC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2CEAD0(a1, a2, a3, a4);
    sub_26A2CECC4(a1, a2, a3, a4);
    sub_26A2CEEB8(a1, a2, a3, a4);
    sub_26A2CF0AC(a1, a2, a3, a4);
    sub_26A2CF2A0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A2CF494(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2CE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CEAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CECC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2CEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2CF0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoActionProperty);
}

uint64_t sub_26A2CF2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2CF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

void sub_26A2CF6B4()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v207 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v207);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v201 = v7;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v205);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v208 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v203 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v206 = v18;
  v19 = OUTLINED_FUNCTION_45();
  v216 = type metadata accessor for _ProtoMultilineTextProperty(v19);
  v20 = OUTLINED_FUNCTION_12(v216);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v211 = v23;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F088, &unk_26A42C570);
  v24 = OUTLINED_FUNCTION_12(v218);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v199 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  v212 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v215 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v33 = OUTLINED_FUNCTION_41(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v198 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  v209 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v210 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  v214 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  v213 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_48();
  v222 = v46;
  v47 = OUTLINED_FUNCTION_45();
  v225 = type metadata accessor for _ProtoTextProperty(v47);
  v48 = OUTLINED_FUNCTION_12(v225);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v219 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0);
  v53 = OUTLINED_FUNCTION_12(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8();
  v202 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  v221 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  v61 = &v198 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v63 = OUTLINED_FUNCTION_41(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_8();
  v200 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v204 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  v217 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v220 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v224 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  v77 = &v198 - v76;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_128_1();
  v223 = v52;
  v78 = *(v52 + 48);
  OUTLINED_FUNCTION_167();
  sub_26A10FD9C();
  v226 = v1;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v61);
  if (v81)
  {

    sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(&v61[v78]);
    v79 = v3;
    if (v81)
    {
      sub_26A0E48F0(v61, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v83 = &qword_28036C7D0;
    v84 = &qword_26A426DE0;
    v85 = v61;
    goto LABEL_32;
  }

  v80 = v224;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&v61[v78]);
  if (v81)
  {

    sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    sub_26A2D187C(v80, v82);
    goto LABEL_9;
  }

  v86 = v219;
  sub_26A2CDD2C();

  static _ProtoTextProperty.== infix(_:_:)(v80, v86);
  OUTLINED_FUNCTION_9_29();
  v88 = v87;
  sub_26A2D187C(v86, v87);
  sub_26A0E48F0(v77, &qword_28036C7B8, &unk_26A425BF0);
  v89 = v88;
  v79 = v3;
  sub_26A2D187C(v80, v89);
  sub_26A0E48F0(v61, &qword_28036C7B8, &unk_26A425BF0);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  OUTLINED_FUNCTION_124_1();
  v90 = v220;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_123_1();
  v91 = *(v223 + 48);
  v92 = v221;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v92);
  if (v81)
  {
    sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(v92 + v91);
    v93 = v222;
    if (!v81)
    {
      goto LABEL_20;
    }

    sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
  }

  else
  {
    v94 = v217;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_23(v92 + v91);
    v93 = v222;
    if (v95)
    {
      sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
      OUTLINED_FUNCTION_3_37();
      v97 = v94;
LABEL_19:
      sub_26A2D187C(v97, v96);
LABEL_20:
      v83 = &qword_28036C7D0;
      v84 = &qword_26A426DE0;
LABEL_31:
      v85 = v92;
      goto LABEL_32;
    }

    v98 = v219;
    sub_26A2CDD2C();
    v99 = OUTLINED_FUNCTION_125();
    LODWORD(v224) = static _ProtoTextProperty.== infix(_:_:)(v99, v100);
    sub_26A2D187C(v98, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A2D187C(v94, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
    if ((v224 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_163_2(v218);
  v101 = v215;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v92 = v101;
  sub_26A10FD9C();
  v102 = v101;
  v103 = v216;
  OUTLINED_FUNCTION_37(v102, 1, v216);
  if (v81)
  {
    sub_26A0E48F0(v93, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_37(&qword_280371000 + v92, 1, v103);
    if (v81)
    {
      sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_35;
    }

LABEL_30:
    v83 = &qword_28036F088;
    v84 = &unk_26A42C570;
    goto LABEL_31;
  }

  v104 = v213;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&qword_280371000 + v92, 1, v103);
  if (v105)
  {
    sub_26A0E48F0(v93, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v104, v106);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_155_4();
  v107 = static _ProtoMultilineTextProperty.== infix(_:_:)(v104, &qword_280371000);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(&qword_280371000, v108);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v109, v110, v111);
  v112 = OUTLINED_FUNCTION_21_3();
  sub_26A2D187C(v112, v113);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v114, v115, v116);
  if ((v107 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_35:
  OUTLINED_FUNCTION_142();
  v117 = v214;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_196_0(v218);
  v118 = v212;
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v118, 1, v103);
  if (v81)
  {
    sub_26A0E48F0(v117, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_37(&qword_280371000 + v118, 1, v103);
    if (v81)
    {
      sub_26A0E48F0(v118, &qword_28036CAE0, &unk_26A4273F0);
      goto LABEL_45;
    }

LABEL_43:
    v83 = &qword_28036F088;
    v84 = &unk_26A42C570;
    v85 = v118;
    goto LABEL_32;
  }

  v119 = v210;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&qword_280371000 + v118, 1, v103);
  if (v120)
  {
    sub_26A0E48F0(v214, &qword_28036CAE0, &unk_26A4273F0);
    OUTLINED_FUNCTION_10_32();
    sub_26A2D187C(v119, v121);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_155_4();
  v122 = OUTLINED_FUNCTION_167();
  v124 = static _ProtoMultilineTextProperty.== infix(_:_:)(v122, v123);
  OUTLINED_FUNCTION_14_18();
  sub_26A2D187C(&qword_280371000, v125);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v126, v127, v128);
  sub_26A2D187C(v119, &unk_26A4273F0);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v129, v130, v131);
  if ((v124 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_45:
  OUTLINED_FUNCTION_142();
  v132 = v206;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_196_0(v205);
  v133 = v208;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v134 = v133;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v135 = v207;
  OUTLINED_FUNCTION_48_3(v133, 1);
  if (v81)
  {
    sub_26A0E48F0(v132, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_23(&qword_280371000 + v133);
    v136 = v209;
    v137 = v204;
    if (v81)
    {
      sub_26A0E48F0(v134, &off_28036C7C0, &off_26A427400);
      goto LABEL_50;
    }

LABEL_58:
    v83 = &qword_28036C7C8;
    v84 = &qword_26A425C00;
    v85 = v134;
    goto LABEL_32;
  }

  v141 = v203;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(&qword_280371000 + v134);
  v136 = v209;
  if (v142)
  {
    sub_26A0E48F0(v132, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_49_16();
    sub_26A2D187C(v141, v143);
    goto LABEL_58;
  }

  v144 = v201;
  sub_26A2CDD2C();
  v145 = *v141;
  v146 = *v144;
  sub_26A0E36D8();
  if ((v147 & 1) == 0 || (v141[1] == v144[1] ? (v148 = v141[2] == v144[2]) : (v148 = 0), !v148 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2D187C(v144, type metadata accessor for _ProtoActionProperty);
    v160 = OUTLINED_FUNCTION_105();
    sub_26A0E48F0(v160, v161, &off_26A427400);
    sub_26A2D187C(v141, type metadata accessor for _ProtoActionProperty);
    v85 = OUTLINED_FUNCTION_88();
    v84 = &off_26A427400;
    goto LABEL_32;
  }

  v149 = *(v135 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_23_22();
  sub_26A2D18D4(v150, v151);
  v152 = sub_26A424B64();
  OUTLINED_FUNCTION_50_12();
  sub_26A2D187C(v144, v153);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v154, v155, v156);
  sub_26A2D187C(v141, v149);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v157, v158, v159);
  v137 = v204;
  if ((v152 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_50:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_142();
  v138 = *(v223 + 48);
  v92 = v202;
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_112_1();
  sub_26A10FD9C();
  v139 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_48_3(v139, v140);
  if (v81)
  {
    sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_23(v92 + v138);
    if (v81)
    {
      sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_72;
    }

    goto LABEL_20;
  }

  v162 = v200;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v92 + v138);
  if (v163)
  {
    sub_26A0E48F0(v204, &qword_28036C7B8, &unk_26A425BF0);
    OUTLINED_FUNCTION_3_37();
    v97 = v162;
    goto LABEL_19;
  }

  v164 = v219;
  sub_26A2CDD2C();
  static _ProtoTextProperty.== infix(_:_:)(v162, v164);
  OUTLINED_FUNCTION_9_29();
  v166 = v165;
  sub_26A2D187C(v164, v165);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v167, v168, v169);
  sub_26A2D187C(v162, v166);
  OUTLINED_FUNCTION_69_2();
  sub_26A0E48F0(v170, v171, v172);
  if ((&qword_28036C7B8 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_72:
  v173 = (v79 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_129_1();
  v174 = *v173;
  v175 = v173[1];
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_168_1();
  if (v81)
  {
    v177 = v175 == v176;
  }

  else
  {
    v177 = 0;
  }

  if (v177 || (OUTLINED_FUNCTION_21_3(), (sub_26A425354() & 1) != 0))
  {
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_163_2(v218);
    v178 = v199;
    OUTLINED_FUNCTION_112_1();
    sub_26A10FD9C();
    v179 = v216;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v178, 1, v179);
    if (v81)
    {
      sub_26A0E48F0(v136, &qword_28036CAE0, &unk_26A4273F0);
      OUTLINED_FUNCTION_37(&qword_280371000 + v178, 1, v179);
      if (v81)
      {
        sub_26A0E48F0(v178, &qword_28036CAE0, &unk_26A4273F0);
LABEL_87:
        v193 = (v79 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
        OUTLINED_FUNCTION_129_1();
        v194 = *v193;
        v195 = v193[1];
        OUTLINED_FUNCTION_122_1();
        OUTLINED_FUNCTION_168_1();
        if (v81)
        {
          v197 = v195 == v196;
        }

        else
        {
          v197 = 0;
        }

        if (!v197)
        {
          OUTLINED_FUNCTION_21_3();
          sub_26A425354();
        }

        goto LABEL_33;
      }
    }

    else
    {
      v180 = v198;
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(&qword_280371000 + v178, 1, v179);
      if (!v181)
      {
        OUTLINED_FUNCTION_155_4();
        v183 = static _ProtoMultilineTextProperty.== infix(_:_:)(v180, &qword_280371000);
        OUTLINED_FUNCTION_14_18();
        sub_26A2D187C(&qword_280371000, v184);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v185, v186, v187);
        v188 = OUTLINED_FUNCTION_105();
        sub_26A2D187C(v188, v189);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v190, v191, v192);
        if ((v183 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_87;
      }

      sub_26A0E48F0(v209, &qword_28036CAE0, &unk_26A4273F0);
      OUTLINED_FUNCTION_10_32();
      sub_26A2D187C(v180, v182);
    }

    v83 = &qword_28036F088;
    v84 = &unk_26A42C570;
    v85 = v178;
LABEL_32:
    sub_26A0E48F0(v85, v83, v84);
  }

LABEL_33:

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2D0958(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2D18D4(&qword_280371D78, type metadata accessor for _ProtoFactItem_HeroNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2D09D8(uint64_t a1)
{
  v2 = sub_26A2D18D4(&qword_28036D2B8, type metadata accessor for _ProtoFactItem_HeroNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2D0A48()
{
  sub_26A2D18D4(&qword_28036D2B8, type metadata accessor for _ProtoFactItem_HeroNumber);

  return sub_26A4249B4();
}

uint64_t sub_26A2D0AE0()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280371B30);
  __swift_project_value_buffer(v0, qword_280371B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26A42B0C0;
  v4 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v4 = "text_1";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v31 + v3 + v2 + v1[14];
  *(v31 + v3 + v2) = 2;
  *v8 = "button_1";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v31 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "button_2";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v31 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "button_3";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v31 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "text_2";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v31 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "text_3";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v31 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "text_4";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  v19 = (v31 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thumbnail";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v21 = *MEMORY[0x277D21870];
  v7();
  v22 = (v31 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = 0x26A44B000;
  *(v23 + 1) = 6;
  v23[16] = 2;
  v7();
  v24 = (v31 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "component_name";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v7();
  v26 = (v31 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "text_5";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v7();
  v28 = (v31 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "link_identifier";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2D0F60()
{
  v1 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1;
  v2 = type metadata accessor for _ProtoTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button1;
  v4 = type metadata accessor for _ProtoButton(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button2, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4;
  v6 = type metadata accessor for _ProtoMultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail;
  v8 = type metadata accessor for _ProtoVisualProperty();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action;
  v10 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, 1, 1, v2);
  v12 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  return v0;
}

void sub_26A2D10F4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v23 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
  v34 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3);
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v27);
  v37 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2);
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v23);
  v40 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3);
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v23);
  type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  v69 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  *v55 = 0;
  v55[1] = 0xE000000000000000;
  v56 = OUTLINED_FUNCTION_44_0(OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5);
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v23);
  v59 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  v68 = (v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  *v59 = 0;
  v59[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_125_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_128_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_130_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_130_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_130_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_130_3();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_130_3();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_154_4();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_154_4();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_132_1();
  sub_26A10CF40();
  swift_endAccess();
  v60 = (v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v62 = *v60;
  v61 = v60[1];
  OUTLINED_FUNCTION_26_10();
  v63 = v69[1];
  *v69 = v62;
  v69[1] = v61;

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_127_3();
  sub_26A10CF40();
  swift_endAccess();
  v64 = (v2 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v66 = *v64;
  v65 = v64[1];

  OUTLINED_FUNCTION_140_1();
  v67 = v68[1];
  *v68 = v66;
  v68[1] = v65;

  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A2D1828()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A2D187C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A2D18D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2D191C()
{
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button1, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button2, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__button3, &qword_28036EC48, &unk_26A4385C0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, &qword_28036CAE0, &unk_26A4273F0);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__thumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &off_28036C7C0, &off_26A427400);
  v1 = *(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName + 8);

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, &qword_28036C7B8, &unk_26A425BF0);
  v2 = *(v0 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier + 8);

  return v0;
}

uint64_t sub_26A2D1AB4(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26A2D1B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A2D1D3C();
        break;
      case 2:
        sub_26A2D1E18();
        break;
      case 3:
        sub_26A2D1EF4();
        break;
      case 4:
        sub_26A2D1FD0();
        break;
      case 5:
        sub_26A2D20AC();
        break;
      case 6:
        sub_26A2D2188();
        break;
      case 7:
        sub_26A2D2264();
        break;
      case 8:
        sub_26A2D2340();
        break;
      case 9:
        sub_26A2D241C();
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
        goto LABEL_8;
      case 11:
        sub_26A2D24F8();
        break;
      case 12:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
LABEL_8:
        sub_26A1BF82C(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2D1D3C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D1E18()
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D1EF4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D1FD0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoButton(0);
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D20AC()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2188()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2264()
{
  swift_beginAccess();
  type metadata accessor for _ProtoMultilineTextProperty(0);
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2340()
{
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D241C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoActionProperty();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D24F8()
{
  swift_beginAccess();
  type metadata accessor for _ProtoTextProperty(0);
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2D2604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2D2850(a1, a2, a3, a4);
  if (!v4)
  {
    sub_26A2D2A44(a1, a2, a3, a4);
    sub_26A2D2C38(a1, a2, a3, a4);
    sub_26A2D2E2C(a1, a2, a3, a4);
    sub_26A2D3020(a1, a2, a3, a4);
    sub_26A2D3214(a1, a2, a3, a4);
    sub_26A2D3408(a1, a2, a3, a4);
    sub_26A2D35FC(a1, a2, a3, a4);
    sub_26A2D37F0(a1, a2, a3, a4);
    v10 = (a1 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_26A424A64();
    }

    sub_26A2D39E4(a1, a2, a3, a4);
    v14 = (a1 + OBJC_IVAR____TtCV10SnippetKit21_ProtoFactItem_ButtonP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      sub_26A424A64();
    }
  }

  return result;
}

uint64_t sub_26A2D2850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2D2A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoButton);
}

uint64_t sub_26A2D2C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoButton);
}

uint64_t sub_26A2D2E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036EC48, &unk_26A4385C0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036F0A0, type metadata accessor for _ProtoButton);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoButton);
}

uint64_t sub_26A2D3020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2D3214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2D3408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE0, &unk_26A4273F0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t sub_26A2D35FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoVisualProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(qword_2815796B8, type metadata accessor for _ProtoVisualProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoVisualProperty);
}

uint64_t sub_26A2D37F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &off_28036C7C0, &off_26A427400);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoActionProperty);
}

uint64_t sub_26A2D39E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A2CDD2C();
  sub_26A2D18D4(&qword_28036C930, type metadata accessor for _ProtoTextProperty);
  sub_26A424A84();
  return sub_26A2D187C(v11, type metadata accessor for _ProtoTextProperty);
}

uint64_t sub_26A2D3C04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_23_22();
  sub_26A2D18D4(v12, v13);
  return sub_26A424B64() & 1;
}