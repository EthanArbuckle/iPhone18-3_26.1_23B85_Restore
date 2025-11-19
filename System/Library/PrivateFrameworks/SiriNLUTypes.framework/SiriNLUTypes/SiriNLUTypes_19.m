uint64_t sub_1C893BF10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_85_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v7 = a3(0);
  OUTLINED_FUNCTION_716(v7);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v8, v9);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText.Static(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void sub_1C893C0E4()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_222_2();
  v7 = v0(0);
  OUTLINED_FUNCTION_85_4(v7);
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C88E3EC4();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_92_0();
    sub_1C88E3C58();
  }

  v13 = OUTLINED_FUNCTION_1011(xmmword_1C8BFA8F0);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(v13);
  OUTLINED_FUNCTION_260_1(v14);
LABEL_8:
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.lazy.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.lazy.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_8;
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_900(xmmword_1C8BFA8F0);
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C893C348(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAED8, &qword_1C8BFAC90);
    OUTLINED_FUNCTION_33_8();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_38_10();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BAED8, &qword_1C8BFAC90);
    OUTLINED_FUNCTION_33_8();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.static.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_198_0();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  v12 = OUTLINED_FUNCTION_369_0(v11);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(v12);
  return OUTLINED_FUNCTION_260_1(v13);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.static.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.static.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAED8, &qword_1C8BFAC90);
LABEL_7:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
    v17 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_262_2(v17, v18, v19, v20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C893C700(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAED8, &qword_1C8BFAC90);
    OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BAED8, &qword_1C8BFAC90);
    OUTLINED_FUNCTION_198_0();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_810();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(v3);
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_605();
  v26 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Storage(0);
  v8 = OUTLINED_FUNCTION_21(v26);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = OUTLINED_FUNCTION_5_4();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.OneOf_ImageKind(v11);
  v13 = OUTLINED_FUNCTION_229_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_250();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_234_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEE0, &qword_1C8BFAC98);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_112_0();
  v22 = *(v21 + 56);
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_377();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88E4144();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_198_0();
      sub_1C88E3EC4();
      v23 = OUTLINED_FUNCTION_259();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.== infix(_:_:)(v23);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_260_0();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_251_2();
      sub_1C88E3C58();
      goto LABEL_10;
    }

LABEL_6:
    sub_1C88E3C58();
    sub_1C8778ED8(v0, &qword_1EC2BAEE0, &qword_1C8BFAC98);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_141_1();
  sub_1C88E4144();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_38_10();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_33_8();
  sub_1C88E3EC4();
  if (MEMORY[0x1CCA7D0F0](*v1, v1[1], *v2, v2[1]))
  {
    OUTLINED_FUNCTION_1114();
    OUTLINED_FUNCTION_1_14();
    sub_1C8776818(v24, v25);
    sub_1C8BD517C();
  }

  OUTLINED_FUNCTION_38_10();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_38_10();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_251_2();
  sub_1C88E3C58();
LABEL_10:
  OUTLINED_FUNCTION_1069();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.data.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAEE8, &qword_1C8BFACA0);
    return OUTLINED_FUNCTION_1157();
  }

  OUTLINED_FUNCTION_218();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    return OUTLINED_FUNCTION_1157();
  }

  result = *v0;
  v10 = v0[1];
  return result;
}

uint64_t sub_1C893CED8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C87A8FBC(*a1, v2);
  return Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.data.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.data.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v1;
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v12 = xmmword_1C8BFA8F0;
LABEL_7:
  *v0 = v12;
  return OUTLINED_FUNCTION_687();
}

double Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.symbol.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_197_1();
      OUTLINED_FUNCTION_5_0();
      sub_1C88E3EC4();
      return result;
    }

    sub_1C88E3C58();
  }

  v12 = OUTLINED_FUNCTION_402_0();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v12);
  OUTLINED_FUNCTION_702(v13);
  result = 0.0;
  *(v0 + *(v1 + 24)) = xmmword_1C8BFA8E0;
  *(v0 + *(v1 + 28)) = xmmword_1C8BFA8E0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.symbol.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  OUTLINED_FUNCTION_197_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

double Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.init()@<D0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_402_0();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v3);
  OUTLINED_FUNCTION_702(v4);
  result = 0.0;
  *(a1 + *(v1 + 24)) = xmmword_1C8BFA8E0;
  *(a1 + *(v1 + 28)) = xmmword_1C8BFA8E0;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.symbol.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_232_2(v15);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_35_5(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAEE8, &qword_1C8BFACA0);
LABEL_7:
    OUTLINED_FUNCTION_569();
    *(v12 + *(v0 + 24)) = xmmword_1C8BFA8E0;
    *(v12 + *(v0 + 28)) = xmmword_1C8BFA8E0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_197_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C893D338(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAEE8, &qword_1C8BFACA0);
    OUTLINED_FUNCTION_197_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BAEE8, &qword_1C8BFACA0);
    OUTLINED_FUNCTION_197_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.file.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAEE8, &qword_1C8BFACA0);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_996();
}

uint64_t sub_1C893D510(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.file.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.file.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAEE8, &qword_1C8BFACA0);
LABEL_7:
    OUTLINED_FUNCTION_14_1();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
  v13 = v1[1];
LABEL_8:
  *v0 = v12;
  v0[1] = v13;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v23 = OUTLINED_FUNCTION_644();
  v24 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v23);
  v25 = OUTLINED_FUNCTION_80(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_605();
  v28 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.OneOf_StaticKind(0);
  v29 = OUTLINED_FUNCTION_40_2(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&a9 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAEF8, &qword_1C8BFACB0);
  OUTLINED_FUNCTION_80(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_112_0();
  v44 = (v20 + *(v43 + 56));
  sub_1C88E4144();
  OUTLINED_FUNCTION_258();
  sub_1C88E4144();
  OUTLINED_FUNCTION_12();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_446();
      sub_1C88E4144();
      OUTLINED_FUNCTION_168_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_197_1();
        OUTLINED_FUNCTION_300();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_254_0();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.== infix(_:_:)();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_253();
        sub_1C88E3C58();
LABEL_19:
        OUTLINED_FUNCTION_105_2();
        sub_1C88E3C58();
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_86_1();
      sub_1C88E3C58();
    }

    else
    {
      OUTLINED_FUNCTION_466();
      sub_1C88E4144();
      v51 = *v34;
      v50 = v34[1];
      OUTLINED_FUNCTION_168_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v51 == *v44 && v50 == v44[1])
        {
          v59 = v44[1];
        }

        else
        {
          OUTLINED_FUNCTION_254_0();
          OUTLINED_FUNCTION_1168();
          OUTLINED_FUNCTION_985();
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_466();
    sub_1C88E4144();
    v46 = *v38;
    v47 = v38[1];
    OUTLINED_FUNCTION_168_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      v54 = *v44;
      v53 = v44[1];
      OUTLINED_FUNCTION_307();
      OUTLINED_FUNCTION_638();
      MEMORY[0x1CCA7D0F0]();
      v55 = OUTLINED_FUNCTION_258();
      sub_1C87A997C(v55, v56);
      v57 = OUTLINED_FUNCTION_307();
      sub_1C87A997C(v57, v58);
      goto LABEL_19;
    }

    v48 = OUTLINED_FUNCTION_307();
    sub_1C87A997C(v48, v49);
  }

  sub_1C8778ED8(v20, &qword_1EC2BAEF8, &qword_1C8BFACB0);
LABEL_20:
  OUTLINED_FUNCTION_1069();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_85_2(v0, v1);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  OUTLINED_FUNCTION_1036(v5[6]);
  if (!v4 & v8)
  {
    OUTLINED_FUNCTION_1154();
    if (!(!v4 & v8))
    {
      goto LABEL_20;
    }

    v6 = OUTLINED_FUNCTION_431();
    sub_1C87A9A24(v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_1154();
    if (!v9 & v8)
    {
      goto LABEL_20;
    }

    v10 = OUTLINED_FUNCTION_97();
    sub_1C87A8FA8(v10, v11);
    v12 = OUTLINED_FUNCTION_516();
    sub_1C87A8FA8(v12, v13);
    v14 = OUTLINED_FUNCTION_301_1();
    v15 = MEMORY[0x1CCA7D0F0](v14);
    v16 = OUTLINED_FUNCTION_516();
    sub_1C87A9A24(v16, v17);
    v18 = OUTLINED_FUNCTION_97();
    sub_1C87A9A24(v18, v19);
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_1036(v5[7]);
  if (!v4 & v8)
  {
    OUTLINED_FUNCTION_1154();
    if (!v4 & v8)
    {
      v20 = OUTLINED_FUNCTION_431();
      sub_1C87A9A24(v20, v21);
LABEL_23:
      v38 = v5[5];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v39, v40);
      OUTLINED_FUNCTION_64_0();
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1154();
  if (!v23 & v22)
  {
LABEL_20:
    v24 = OUTLINED_FUNCTION_431();
    sub_1C87A9A24(v24, v25);
    v26 = OUTLINED_FUNCTION_516();
    sub_1C87A9A24(v26, v27);
    goto LABEL_21;
  }

  v28 = OUTLINED_FUNCTION_97();
  sub_1C87A8FA8(v28, v29);
  v30 = OUTLINED_FUNCTION_516();
  sub_1C87A8FA8(v30, v31);
  v32 = OUTLINED_FUNCTION_301_1();
  v33 = MEMORY[0x1CCA7D0F0](v32);
  v34 = OUTLINED_FUNCTION_516();
  sub_1C87A9A24(v34, v35);
  v36 = OUTLINED_FUNCTION_97();
  sub_1C87A9A24(v36, v37);
  if (v33)
  {
    goto LABEL_23;
  }

LABEL_21:
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.tintColorData.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  v1 = OUTLINED_FUNCTION_535(*(v0 + 24));
  sub_1C87A8FA8(v1, v2);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.tintColorData.setter()
{
  v0 = OUTLINED_FUNCTION_68();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v0);
  return OUTLINED_FUNCTION_1159(*(v1 + 24));
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.tintColorData.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1061(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v2) + 24);
  *(v1 + 24) = v3;
  v6 = OUTLINED_FUNCTION_535(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *v1 = v8;
  *(v1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return OUTLINED_FUNCTION_74_0();
}

BOOL Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.hasTintColorData.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  OUTLINED_FUNCTION_766(*(v0 + 24));
  return OUTLINED_FUNCTION_1045(v1);
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.clearTintColorData()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0) + 24);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.configurationData.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  v1 = OUTLINED_FUNCTION_535(*(v0 + 28));
  sub_1C87A8FA8(v1, v2);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.configurationData.setter()
{
  v0 = OUTLINED_FUNCTION_68();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v0);
  return OUTLINED_FUNCTION_1159(*(v1 + 28));
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.configurationData.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1061(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v2) + 28);
  *(v1 + 24) = v3;
  v6 = OUTLINED_FUNCTION_535(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *v1 = v8;
  *(v1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C893DDE4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + *(a1 + 6));
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_5_0();
    sub_1C87A8FBC(v7, v8);
    v9 = OUTLINED_FUNCTION_271();
    sub_1C87A9A24(v9, v10);
    *v3 = v4;
    v3[1] = v2;
    v11 = OUTLINED_FUNCTION_5_0();

    return sub_1C87A997C(v11, v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_271();
    result = sub_1C87A9A24(v14, v15);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

BOOL Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.hasConfigurationData.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0);
  OUTLINED_FUNCTION_766(*(v0 + 28));
  return OUTLINED_FUNCTION_1045(v1);
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.clearConfigurationData()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(0) + 28);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image.Static.Symbol(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C893DF80()
{
  OUTLINED_FUNCTION_526();
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = (v1)(v9);
  OUTLINED_FUNCTION_329_0(v10);
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v1 + 20);
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (v0 != 1)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.typeInstance.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.typeInstance.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C893E32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC8F8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_539(a1);
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(0);
  OUTLINED_FUNCTION_702(v1);
  v2 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v2);
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.toolDefinition.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(v9) + 24);
  OUTLINED_FUNCTION_439();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5938 != -1)
    {
      OUTLINED_FUNCTION_927();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.toolDefinition.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAF00, &qword_1C8BFACB8);
  OUTLINED_FUNCTION_103_4();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.toolDefinition.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_30_6(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B5938 != -1)
    {
      OUTLINED_FUNCTION_927();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAF00, &qword_1C8BFACB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C893E688()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAF00, &qword_1C8BFACB8);
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_523_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAF00, &qword_1C8BFACB8);
    OUTLINED_FUNCTION_103_4();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinitionClosure.Version1(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C893E918@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimePlatform.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893E9C8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.MeasurementUnitType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EA78@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.RuntimeFlags.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EB28@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Kind.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EBD8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.Sign.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EC88@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.TypeEnum.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893ED38@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EDE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.PersonReachableAs.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EE98@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.DateExpressibleAs.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EF48@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.AutocorrectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893EFF8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.KeyboardType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F0A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.CapitalizationType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F158@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.CompoundPredicate.Operator.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F208@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.Query.SortOrder.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F2B8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement.DeviceState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F368@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F418@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Flag.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F4C8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.VisibilityFlag.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F578@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.AuthenticationPolicy.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F628@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.ParameterFlags.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F6DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F78C@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Origin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F83C@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Origin.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F8EC@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.TypeEnum.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C893F958()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_37_0();
  v2 = *v0;
  *v0 = v1;
}

uint64_t sub_1C893F9D8@<X0>(uint64_t *a1@<X8>)
{
  result = static Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition.CoercionDirection.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Google_Protobuf_FileOptions.Siri_Nlu_External_IntelligenceFlow_toolKitProtoVersion.getter()
{
  if (qword_1EC2B5228 != -1)
  {
    OUTLINED_FUNCTION_267_0();
  }

  OUTLINED_FUNCTION_250_1();
  sub_1C8776818(v0, v1);
  sub_1C8BD4A1C();
  if (v4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t Google_Protobuf_FileOptions.Siri_Nlu_External_IntelligenceFlow_toolKitProtoVersion.setter()
{
  if (qword_1EC2B5228 != -1)
  {
    OUTLINED_FUNCTION_267_0();
  }

  OUTLINED_FUNCTION_250_1();
  sub_1C8776818(v0, v1);
  return sub_1C8BD4A3C();
}

uint64_t Google_Protobuf_FileOptions.Siri_Nlu_External_IntelligenceFlow_toolKitProtoVersion.modify()
{
  v2 = OUTLINED_FUNCTION_17_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  *v3 = v1;
  if (qword_1EC2B5228 != -1)
  {
    OUTLINED_FUNCTION_267_0();
  }

  v3[1] = qword_1EC2B9368;
  OUTLINED_FUNCTION_250_1();
  v3[2] = sub_1C8776818(v4, v5);
  sub_1C8BD4A1C();
  v6 = *(v3 + 6);
  if (*(v3 + 28))
  {
    v6 = 0;
  }

  *(v3 + 8) = v6;
  return OUTLINED_FUNCTION_31();
}

void sub_1C893FBF8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 8);
  v4 = v1[2];
  v5 = *v1;
  *(v1 + 6) = v2;
  sub_1C8BD4A3C();

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasSiri_Nlu_External_IntelligenceFlow_toolKitProtoVersion.getter()
{
  if (qword_1EC2B5228 != -1)
  {
    OUTLINED_FUNCTION_267_0();
  }

  v0 = qword_1EC2B9368;
  OUTLINED_FUNCTION_250_1();
  v3 = sub_1C8776818(v1, v2);

  return MEMORY[0x1EEE15650](v0, v3);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSiri_Nlu_External_IntelligenceFlow_toolKitProtoVersion()()
{
  if (qword_1EC2B5228 != -1)
  {
    OUTLINED_FUNCTION_267_0();
  }

  v0 = qword_1EC2B9368;
  OUTLINED_FUNCTION_250_1();
  v3 = sub_1C8776818(v1, v2);

  MEMORY[0x1EEE15660](v0, v3);
}

uint64_t sub_1C893FD44()
{
  v0 = sub_1C8BD4A6C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9350);
  __swift_project_value_buffer(v0, qword_1EC2B9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD860, &qword_1C8C0A710);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C8BE6F30;
  if (qword_1EC2B5228 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC2B9368;
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD868, &qword_1C8C0A718);
  *(v1 + 64) = sub_1C89DF3AC(&qword_1EC2BD870, &qword_1EC2BD868, &qword_1C8C0A718);
  *(v1 + 32) = v2;

  return sub_1C8BD4A5C();
}

uint64_t sub_1C893FEA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD868, &qword_1C8C0A718);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C8BD4A0C();
  qword_1EC2B9368 = result;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_Extensions_ToolKitProtoVersion.getter()
{
  if (qword_1EC2B5228 != -1)
  {
    OUTLINED_FUNCTION_267_0();
  }
}

uint64_t sub_1C894001C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD598, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894009C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB9C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894010C()
{
  sub_1C8776818(&qword_1EC2BB9C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8940188()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9388);
  __swift_project_value_buffer(v0, qword_1EC2B9388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RuntimePlatform_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimePlatform_PHONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RuntimePlatform_PAD";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RuntimePlatform_MACINTOSH";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RuntimePlatform_WATCH";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RuntimePlatform_TV";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "RuntimePlatform_VISION";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C894050C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B93B0);
  __swift_project_value_buffer(v0, qword_1EC2B93B0);
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
  *v10 = "custom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C894074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6170, &unk_1C8BE6E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD820, &qword_1C8C0A6D0);
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
    sub_1C8778ED8(v14, &qword_1EC2B6170, &unk_1C8BE6E10);
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
      sub_1C8778ED8(v23, &qword_1EC2BD820, &qword_1C8C0A6D0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BB9E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD820, &qword_1C8C0A6D0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD820, &qword_1C8C0A6D0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6170, &unk_1C8BE6E10);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8940C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6170, &unk_1C8BE6E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD858, &qword_1C8C0A708);
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
    sub_1C8778ED8(v14, &qword_1EC2B6170, &unk_1C8BE6E10);
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
      sub_1C8778ED8(v23, &qword_1EC2BD858, &qword_1C8C0A708);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBA00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD858, &qword_1C8C0A708);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD858, &qword_1C8C0A708);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6170, &unk_1C8BE6E10);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C89413A4(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C8941190(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_248_3();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
    OUTLINED_FUNCTION_113_1(v17);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8941190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6170, &unk_1C8BE6E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6170, &unk_1C8BE6E10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB9E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89413A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6170, &unk_1C8BE6E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6170, &unk_1C8BE6E10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBA00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8941640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD590, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89416C0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8941730()
{
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89417B0()
{
  if (qword_1EC2B5240 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B93A0;
  v2 = *algn_1EC2B93A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6974696D6972502ELL, 0xEA00000000006576);

  qword_1EC2B93C8 = v1;
  unk_1EC2B93D0 = v2;
  return result;
}

uint64_t sub_1C8941878()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B93D8);
  __swift_project_value_buffer(v0, qword_1EC2B93D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C8BFA900;
  v4 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v4 = "none_p";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v45 + v3 + v2 + v1[14];
  *(v45 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v7();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "decimal";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "string";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "date";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v7();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dateComponents";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v7();
  v22 = (v45 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "url";
  *(v23 + 1) = 3;
  v23[16] = 2;
  v7();
  v24 = (v45 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "dictionary";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v7();
  v26 = (v45 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "attributedString";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v7();
  v28 = (v45 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "measurement";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v7();
  v30 = (v45 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "currencyAmount";
  *(v31 + 1) = 14;
  v31[16] = 2;
  v7();
  v32 = (v45 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "paymentMethod";
  *(v33 + 1) = 13;
  v33[16] = 2;
  v7();
  v34 = (v45 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "placemark";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v7();
  v36 = (v45 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "person";
  *(v37 + 1) = 6;
  v37[16] = 2;
  v7();
  v38 = (v45 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "file";
  *(v39 + 1) = 4;
  v39[16] = 2;
  v7();
  v40 = (v45 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "app";
  *(v41 + 1) = 3;
  v41[16] = 2;
  v7();
  v42 = (v45 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "searchableItem";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v7();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        OUTLINED_FUNCTION_7_17();
        sub_1C89BF374();
        break;
      case 12:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8941FEC(v3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8941FEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6158, &unk_1C8BFA970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v14 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2B6158, &unk_1C8BFA970);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v12 = 0;
    v13 = 256;
    sub_1C89CBFBC();
    result = sub_1C8BD4B4C();
    if (!v1 && (v13 & 0x100) == 0)
    {
      v9 = v13;
      v10 = v12;
      v11 = v14;
      sub_1C8778ED8(v14, &qword_1EC2B6158, &unk_1C8BFA970);
      *v11 = v10;
      *(v11 + 8) = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    }
  }

  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.traverse<A>(visitor:)()
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
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v12 = v0;
        sub_1C89B7434();
        goto LABEL_23;
      case 2:
        OUTLINED_FUNCTION_519_0();
        v12 = v0;
        sub_1C89A2FF0();
        goto LABEL_23;
      case 3:
        OUTLINED_FUNCTION_519_0();
        v12 = v0;
        sub_1C89A312C();
        goto LABEL_23;
      case 4:
        v12 = v0;
        sub_1C8945054();
        goto LABEL_23;
      case 5:
        OUTLINED_FUNCTION_187_2();
        v12 = v0;
        sub_1C89A347C();
        goto LABEL_23;
      case 6:
        OUTLINED_FUNCTION_187_2();
        v12 = v0;
        sub_1C89A35B8();
        goto LABEL_23;
      case 7:
        OUTLINED_FUNCTION_187_2();
        v12 = v0;
        sub_1C89A36F4();
        goto LABEL_23;
      case 8:
        OUTLINED_FUNCTION_187_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A3830();
        goto LABEL_28;
      case 9:
        OUTLINED_FUNCTION_184_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A396C();
        goto LABEL_28;
      case 10:
        OUTLINED_FUNCTION_187_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A3AA8();
        goto LABEL_28;
      case 11:
        OUTLINED_FUNCTION_9_4();
        sub_1C8942718();
        if (!v1)
        {
          break;
        }

        goto LABEL_4;
      case 12:
        OUTLINED_FUNCTION_187_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A3D20();
        goto LABEL_28;
      case 13:
        OUTLINED_FUNCTION_184_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A3E5C();
        goto LABEL_28;
      case 14:
        OUTLINED_FUNCTION_519_0();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A3F98();
        goto LABEL_28;
      case 15:
        OUTLINED_FUNCTION_184_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A40D4();
        goto LABEL_28;
      case 16:
        OUTLINED_FUNCTION_184_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A4210();
        goto LABEL_28;
      case 17:
        OUTLINED_FUNCTION_184_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A434C();
        goto LABEL_28;
      case 18:
        OUTLINED_FUNCTION_184_2();
        OUTLINED_FUNCTION_9_4();
        sub_1C89A4488();
LABEL_28:
        if (v1)
        {
          OUTLINED_FUNCTION_350_0();
          sub_1C88E3C58();
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_350_0();
        sub_1C88E3C58();
        break;
      default:
        v12 = v0;
        sub_1C89B72FC();
LABEL_23:
        OUTLINED_FUNCTION_104_0();
        sub_1C88E3C58();
        if (!v12)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  OUTLINED_FUNCTION_113_1(v10);
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8942718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6158, &unk_1C8BFA970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive.OneOf_PrimitiveKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2B6158, &unk_1C8BFA970);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_1C89CBFBC();
      return sub_1C8BD4D4C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8942904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD588, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8942984(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB9E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89429F4()
{
  sub_1C8776818(&qword_1EC2BB9E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8942A74()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B93F0);
  __swift_project_value_buffer(v0, qword_1EC2B93F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C8BFA910;
  v4 = v52 + v3 + v1[14];
  *(v52 + v3) = 0;
  *v4 = "MeasurementUnitType_UNSPECIFIED";
  *(v4 + 8) = 31;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v52 + v3 + v2 + v1[14];
  *(v52 + v3 + v2) = 1;
  *v8 = "MeasurementUnitType_LENGTH";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v52 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "MeasurementUnitType_MASS";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v52 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MeasurementUnitType_TEMPERATURE";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v7();
  v13 = (v52 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MeasurementUnitType_VOLUME";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v7();
  v15 = (v52 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MeasurementUnitType_SPEED";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v7();
  v17 = (v52 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "MeasurementUnitType_ENERGY";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  v19 = (v52 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MeasurementUnitType_DURATION";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v52 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "MeasurementUnitType_ACCELERATION";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v7();
  v23 = (v52 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "MeasurementUnitType_ANGLE";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v7();
  v25 = (v52 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MeasurementUnitType_AREA";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v52 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "MeasurementUnitType_CONCENTRATION_MASS";
  *(v28 + 1) = 38;
  v28[16] = 2;
  v7();
  v29 = (v52 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "MeasurementUnitType_DISPERSION";
  *(v30 + 1) = 30;
  v30[16] = 2;
  v7();
  v31 = (v52 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "MeasurementUnitType_ELECTRIC_CHARGE";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v7();
  v33 = (v52 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "MeasurementUnitType_ELECTRIC_CURRENT";
  *(v34 + 1) = 36;
  v34[16] = 2;
  v7();
  v35 = (v52 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "MeasurementUnitType_ELECTRIC_POTENTIAL_DIFFERENCE";
  *(v36 + 1) = 49;
  v36[16] = 2;
  v7();
  v37 = (v52 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "MeasurementUnitType_ELECTRIC_RESISTANCE";
  *(v38 + 1) = 39;
  v38[16] = 2;
  v7();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "MeasurementUnitType_FREQUENCY";
  *(v40 + 1) = 29;
  v40[16] = 2;
  v7();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "MeasurementUnitType_FUEL_EFFICIENCY";
  *(v42 + 1) = 35;
  v42[16] = 2;
  v7();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "MeasurementUnitType_ILLUMINANCE";
  *(v44 + 1) = 31;
  v44[16] = 2;
  v7();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "MeasurementUnitType_INFORMATION_STORAGE";
  *(v46 + 1) = 39;
  v46[16] = 2;
  v7();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "MeasurementUnitType_POWER";
  *(v48 + 1) = 25;
  v48[16] = 2;
  v7();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "MeasurementUnitType_PRESSURE";
  *(v50 + 1) = 28;
  v50[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C8943170()
{
  if (qword_1EC2B5240 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B93A0;
  v2 = *algn_1EC2B93A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6D6F747375432ELL, 0xE700000000000000);

  qword_1EC2B9408 = v1;
  unk_1EC2B9410 = v2;
  return result;
}

uint64_t sub_1C8943234()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9418);
  __swift_project_value_buffer(v0, qword_1EC2B9418);
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

uint64_t sub_1C89434CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD580, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894354C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBA00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89435BC()
{
  sub_1C8776818(&qword_1EC2BBA00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Custom);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894363C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C25940);
  qword_1EC2B9430 = 0xD00000000000002BLL;
  *algn_1EC2B9438 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C89436D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9440);
  __swift_project_value_buffer(v0, qword_1EC2B9440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C8BFA920;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "mailAccount";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mailAddressee";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mailMessage";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mailbox";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "intentMessage";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "messageGroup";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "messageParticipants";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "uniqueEntity";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "intentUpdatableEntity";
  *(v25 + 1) = 21;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "urlRepresentable";
  *(v27 + 1) = 16;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "visualSearch";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "visualSearchOcr";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "assistantSchema";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "updatableEntity";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "persistentFileIdentifiable";
  *(v37 + 1) = 26;
  v37[16] = 2;
  v8();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 11:
      case 12:
      case 13:
      case 15:
        OUTLINED_FUNCTION_14_10();
        sub_1C89BF374();
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8943D64(v3, v4, v5, v6);
        break;
      case 14:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C8944220(v11, v12, v13, v14);
        break;
      case 16:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C89446DC(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8943D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B60E8, &qword_1C8BE6D98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD840, &qword_1C8C0A6F0);
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
    sub_1C8778ED8(v14, &unk_1EC2B60E8, &qword_1C8BE6D98);
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
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD840, &qword_1C8C0A6F0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBA28, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD840, &qword_1C8C0A6F0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD840, &qword_1C8C0A6F0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &unk_1EC2B60E8, &qword_1C8BE6D98);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8944220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B60E8, &qword_1C8BE6D98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD848, &qword_1C8C0A6F8);
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
    sub_1C8778ED8(v14, &unk_1EC2B60E8, &qword_1C8BE6D98);
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
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD848, &qword_1C8C0A6F8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBA40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD848, &qword_1C8C0A6F8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD848, &qword_1C8C0A6F8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &unk_1EC2B60E8, &qword_1C8BE6D98);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89446DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B60E8, &qword_1C8BE6D98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD850, &qword_1C8C0A700);
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
    sub_1C8778ED8(v14, &unk_1EC2B60E8, &qword_1C8BE6D98);
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
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD850, &qword_1C8C0A700);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBA58, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD850, &qword_1C8C0A700);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD850, &qword_1C8C0A700);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &unk_1EC2B60E8, &qword_1C8BE6D98);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_696();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_235_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_1C89B7434();
        goto LABEL_20;
      case 2:
        OUTLINED_FUNCTION_512_0();
        sub_1C89A2FF0();
        goto LABEL_20;
      case 3:
        OUTLINED_FUNCTION_512_0();
        sub_1C89A312C();
        goto LABEL_20;
      case 4:
        sub_1C8945054();
        goto LABEL_20;
      case 5:
        OUTLINED_FUNCTION_183_0();
        sub_1C89A347C();
        goto LABEL_20;
      case 6:
        OUTLINED_FUNCTION_183_0();
        sub_1C89A35B8();
        goto LABEL_20;
      case 7:
        OUTLINED_FUNCTION_183_0();
        sub_1C89A36F4();
        goto LABEL_20;
      case 8:
        OUTLINED_FUNCTION_183_0();
        OUTLINED_FUNCTION_295_0();
        sub_1C89A3830();
        goto LABEL_24;
      case 9:
        v12 = OUTLINED_FUNCTION_295_0();
        sub_1C8945190(v12, v13, v14, v15);
        goto LABEL_24;
      case 10:
        OUTLINED_FUNCTION_183_0();
        OUTLINED_FUNCTION_295_0();
        sub_1C89A3AA8();
        goto LABEL_24;
      case 11:
        OUTLINED_FUNCTION_295_0();
        sub_1C89A3BE4();
        goto LABEL_24;
      case 12:
        OUTLINED_FUNCTION_183_0();
        OUTLINED_FUNCTION_295_0();
        sub_1C89A3D20();
        goto LABEL_24;
      case 13:
        v20 = OUTLINED_FUNCTION_295_0();
        sub_1C89453A4(v20, v21, v22, v23);
        goto LABEL_24;
      case 14:
        OUTLINED_FUNCTION_512_0();
        OUTLINED_FUNCTION_295_0();
        sub_1C89A3F98();
        goto LABEL_24;
      case 15:
        v16 = OUTLINED_FUNCTION_295_0();
        sub_1C89455B8(v16, v17, v18, v19);
LABEL_24:
        if (v1)
        {
          OUTLINED_FUNCTION_73_6();
          sub_1C88E3C58();
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_73_6();
        sub_1C88E3C58();
        break;
      default:
        sub_1C89B72FC();
LABEL_20:
        OUTLINED_FUNCTION_104_0();
        sub_1C88E3C58();
        if (!v1)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v10 = v0 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol(0) + 20);
  OUTLINED_FUNCTION_97();
  sub_1C8BD49DC();
LABEL_4:
  OUTLINED_FUNCTION_1066();
}

void sub_1C8945054()
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
    if (swift_getEnumCaseMultiPayload() == 4)
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

uint64_t sub_1C8945190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B60E8, &qword_1C8BE6D98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBA28, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89453A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B60E8, &qword_1C8BE6D98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBA40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89455B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B60E8, &qword_1C8BE6D98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.OneOf_SystemTypeProtocolKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &unk_1EC2B60E8, &qword_1C8BE6D98);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBA58, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8945A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD578, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8945ACC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF80, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8945B3C()
{
  sub_1C8776818(&qword_1EC2BAF80, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8945BBC()
{
  if (qword_1EC2B5278 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9430;
  v2 = *algn_1EC2B9438;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C25840);

  qword_1EC2B9458 = v1;
  unk_1EC2B9460 = v2;
  return result;
}

uint64_t sub_1C8945D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD570, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8945DF0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBA28, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8945E60()
{
  sub_1C8776818(&qword_1EC2BBA28, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.IntentUpdatableEntity);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8945EE0()
{
  if (qword_1EC2B5278 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9430;
  v2 = *algn_1EC2B9438;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24010);

  qword_1EC2B9480 = v1;
  *algn_1EC2B9488 = v2;
  return result;
}

uint64_t sub_1C89460B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD568, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8946134(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBA40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89461A4()
{
  sub_1C8776818(&qword_1EC2BBA40, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.AssistantSchema);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8946224()
{
  if (qword_1EC2B5278 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9430;
  v2 = *algn_1EC2B9438;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C25820);

  qword_1EC2B94A8 = v1;
  unk_1EC2B94B0 = v2;
  return result;
}

uint64_t sub_1C89463DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD560, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894645C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBA58, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89464CC()
{
  sub_1C8776818(&qword_1EC2BBA58, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol.PersistentFileIdentifiable);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894662C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD558, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89466AC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBA70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894671C()
{
  sub_1C8776818(&qword_1EC2BBA70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8946798()
{
  if (qword_1EC2B52B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B94D0;
  v2 = *algn_1EC2B94D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F69737265562ELL, 0xE900000000000031);

  qword_1EC2B94F8 = v1;
  unk_1EC2B9500 = v2;
  return result;
}

uint64_t sub_1C8946860()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9508);
  __swift_project_value_buffer(v0, qword_1EC2B9508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "enumeration";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8946B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD820, &qword_1C8C0A6D0);
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
    sub_1C8778ED8(v14, &qword_1EC2B6058, &qword_1C8BE6D08);
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
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v23, &qword_1EC2BD820, &qword_1C8C0A6D0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BB9E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD820, &qword_1C8C0A6D0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD820, &qword_1C8C0A6D0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6058, &qword_1C8BE6D08);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8946FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD828, &qword_1C8C0A6D8);
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
    sub_1C8778ED8(v14, &qword_1EC2B6058, &qword_1C8BE6D08);
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
      sub_1C8778ED8(v23, &qword_1EC2BD828, &qword_1C8C0A6D8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBA98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD828, &qword_1C8C0A6D8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD828, &qword_1C8C0A6D8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6058, &qword_1C8BE6D08);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89474B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD830, &qword_1C8C0A6E0);
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
    sub_1C8778ED8(v14, &qword_1EC2B6058, &qword_1C8BE6D08);
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
      sub_1C8778ED8(v23, &qword_1EC2BD830, &qword_1C8C0A6E0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBAC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD830, &qword_1C8C0A6E0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD830, &qword_1C8C0A6E0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6058, &qword_1C8BE6D08);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8947974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD838, &qword_1C8C0A6E8);
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
    sub_1C8778ED8(v14, &qword_1EC2B6058, &qword_1C8BE6D08);
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
      sub_1C8778ED8(v23, &qword_1EC2BD838, &qword_1C8C0A6E8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBAE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD838, &qword_1C8C0A6E8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD838, &qword_1C8C0A6E8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6058, &qword_1C8BE6D08);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.traverse<A>(visitor:)()
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
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = OUTLINED_FUNCTION_9_4();
      sub_1C8948140(v21, v22, v23, v24);
      break;
    case 2u:
      v13 = OUTLINED_FUNCTION_9_4();
      sub_1C8948354(v13, v14, v15, v16);
      break;
    case 3u:
      v17 = OUTLINED_FUNCTION_9_4();
      sub_1C8948568(v17, v18, v19, v20);
      break;
    default:
      v9 = OUTLINED_FUNCTION_9_4();
      sub_1C8947F30(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_506();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_8:
    v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(0);
    OUTLINED_FUNCTION_113_1(v25);
  }

  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8947F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB9E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.Primitive);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8948140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBA98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8948354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBAC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8948568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6058, &qword_1C8BE6D08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6058, &qword_1C8BE6D08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBAE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6060, &unk_1C8BE6D10);
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
      sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1(0);
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
    OUTLINED_FUNCTION_506();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6060, &unk_1C8BE6D10);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.OneOf_Version1Kind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6058, &qword_1C8BE6D08);
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

uint64_t sub_1C89489FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD550, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8948A7C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB5B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8948AEC()
{
  sub_1C8776818(&qword_1EC2BB5B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8948B6C()
{
  if (qword_1EC2B52C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B94F8;
  v2 = unk_1EC2B9500;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x797469746E452ELL, 0xE700000000000000);

  qword_1EC2B9520 = v1;
  *algn_1EC2B9528 = v2;
  return result;
}

uint64_t sub_1C8948C30()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9530);
  __swift_project_value_buffer(v0, qword_1EC2B9530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C8BE8D40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "properties";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "runtimeRequirements";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sampleInvocations";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "systemProtocols";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "runtimeFlags";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "coercions";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_189();
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
        sub_1C89491D8();
        break;
      case 2:
        OUTLINED_FUNCTION_857();
        OUTLINED_FUNCTION_8();
        sub_1C89C9A50();
        break;
      case 3:
        OUTLINED_FUNCTION_858();
        OUTLINED_FUNCTION_8();
        sub_1C894D5D0();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C894928C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C899B5E8();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C899B63C();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C8949340();
        break;
      case 8:
        OUTLINED_FUNCTION_8();
        sub_1C89B3A6C();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89491D8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(0) + 44);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894928C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(0) + 48);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_47_5(v7, v41);
  v43 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v8);
  v9 = OUTLINED_FUNCTION_21(v43);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_115_3(v12, v42);
  v13 = OUTLINED_FUNCTION_80_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_217_1();
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v19);
  v21 = OUTLINED_FUNCTION_74_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = OUTLINED_FUNCTION_36_4();
  v44 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity(v24);
  v25 = v44[11];
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2);
  if (v26)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v27, v28);
    OUTLINED_FUNCTION_435();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_22;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0), OUTLINED_FUNCTION_516_0(), sub_1C8776818(v29, v30), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_729(), sub_1C8BD4E0C(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0), OUTLINED_FUNCTION_850(), sub_1C8776818(v31, v32), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_729(), sub_1C8BD4E0C(), !v1))
    {
      v33 = v44[12];
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_41_2(v45, 1);
      if (v26)
      {
        sub_1C8778ED8(v45, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      }

      else
      {
        OUTLINED_FUNCTION_25_8();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_346_0();
        sub_1C8776818(v34, v35);
        OUTLINED_FUNCTION_224_0();
        OUTLINED_FUNCTION_1077();
        OUTLINED_FUNCTION_729();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_98_1();
        sub_1C88E3C58();
        if (v1)
        {
          goto LABEL_22;
        }
      }

      if (!*(v0[2] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), OUTLINED_FUNCTION_345_0(), sub_1C8776818(v36, v37), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4E0C(), !v1))
      {
        if (!*(v0[3] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol(0), OUTLINED_FUNCTION_848(), sub_1C8776818(v38, v39), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4E0C(), !v1))
        {
          if (!*(v0[4] + 16) || (sub_1C89CBEC0(), OUTLINED_FUNCTION_729(), sub_1C8BD4D1C(), !v1))
          {
            if (!*(v0[5] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition(0), sub_1C8776818(&qword_1EC2BAF90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.CoercionDefinition), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4E0C(), !v1))
            {
              v40 = v0 + v44[10];
              OUTLINED_FUNCTION_627();
              sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8949918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD548, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8949998(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBA98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8949A08()
{
  sub_1C8776818(&qword_1EC2BBA98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8949A88()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9548);
  __swift_project_value_buffer(v0, qword_1EC2B9548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RuntimeFlags_UNSPECIFIED";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RuntimeFlags_TRANSIENT_APP_ENTITY";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8949C8C()
{
  if (qword_1EC2B52D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9520;
  v2 = *algn_1EC2B9528;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x747265706F72502ELL, 0xE900000000000079);

  qword_1EC2B9560 = v1;
  *algn_1EC2B9568 = v2;
  return result;
}

uint64_t sub_1C8949D54()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9570);
  __swift_project_value_buffer(v0, qword_1EC2B9570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void *sub_1C8949FC4()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCVVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14TypeDefinition8Version16Entity8PropertyP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

void *sub_1C894A014(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCVVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14TypeDefinition8Version16Entity8PropertyP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  swift_beginAccess();
  v7 = a1[2];
  v8 = a1[3];
  swift_beginAccess();
  v1[2] = v7;
  v1[3] = v8;
  swift_beginAccess();
  v9 = a1[4];
  v10 = a1[5];
  swift_beginAccess();
  v1[4] = v9;
  v1[5] = v10;

  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C894A1D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14TypeDefinition8Version16Entity8PropertyP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type, &qword_1EC2B60D8, &qword_1C8BE6D88);
  return v0;
}

uint64_t sub_1C894A29C()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C894A34C();
        break;
      case 2:
        sub_1C89AED2C();
        break;
      case 1:
        sub_1C89AECD0();
        break;
    }
  }

  return result;
}

uint64_t sub_1C894A34C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C894A468(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  v9 = a1[3];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (v11 = a1[3], , sub_1C8BD4DDC(), result = , !v1))
  {
    swift_beginAccess();
    v13 = a1[5];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (v15 = a1[5], , sub_1C8BD4DDC(), result = , !v1))
    {
      swift_beginAccess();
      sub_1C89CBE2C();
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        return sub_1C8778ED8(v6, &qword_1EC2B60D8, &qword_1C8BE6D88);
      }

      else
      {
        sub_1C88E3EC4();
        sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
        sub_1C8BD4E2C();
        return sub_1C88E3C58();
      }
    }
  }

  return result;
}

void sub_1C894A748()
{
  OUTLINED_FUNCTION_124();
  v8 = OUTLINED_FUNCTION_644();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v8);
  v10 = OUTLINED_FUNCTION_74_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  OUTLINED_FUNCTION_229_2(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_112_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v18 = OUTLINED_FUNCTION_80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_547();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v22 = v6[2];
  v23 = v6[3];
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v24 = v22 == v5[2] && v23 == v5[3];
  if (v24 || (OUTLINED_FUNCTION_890(), (sub_1C8BD529C() & 1) != 0))
  {
    OUTLINED_FUNCTION_36_3();
    swift_beginAccess();
    v25 = v6[4];
    v26 = v6[5];
    OUTLINED_FUNCTION_36_3();
    swift_beginAccess();
    v27 = v25 == v5[4] && v26 == v5[5];
    if (v27 || (OUTLINED_FUNCTION_890(), (sub_1C8BD529C() & 1) != 0))
    {
      OUTLINED_FUNCTION_36_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_790();
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_36_3();
      swift_beginAccess();
      v28 = *(v7 + 48);
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_790();
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_790();
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_19(v0);
      if (!v24)
      {
        sub_1C89CBE2C();
        OUTLINED_FUNCTION_19(v0 + v28);
        if (!v29)
        {
          OUTLINED_FUNCTION_2_20();
          sub_1C88E3EC4();
          v33 = *(v1 + 20);
          if (*(v3 + v33) == *(v2 + v33))
          {
            goto LABEL_24;
          }

          v34 = *(v3 + v33);

          OUTLINED_FUNCTION_611();
          sub_1C896B338();
          v36 = v35;

          if (v36)
          {
LABEL_24:
            sub_1C8BD49FC();
            OUTLINED_FUNCTION_1_14();
            sub_1C8776818(v37, v38);
            OUTLINED_FUNCTION_288_0();
            sub_1C8BD517C();
            OUTLINED_FUNCTION_351_0();
            sub_1C88E3C58();
            v39 = OUTLINED_FUNCTION_286_0();
            sub_1C8778ED8(v39, v40, v41);
            OUTLINED_FUNCTION_268();
            sub_1C88E3C58();
            v42 = OUTLINED_FUNCTION_12();
            sub_1C8778ED8(v42, v43, &qword_1C8BE6D88);
            goto LABEL_21;
          }

          sub_1C88E3C58();
          v44 = OUTLINED_FUNCTION_168_0();
          sub_1C8778ED8(v44, v45, &qword_1C8BE6D88);
          OUTLINED_FUNCTION_254_0();
          sub_1C88E3C58();
          v32 = OUTLINED_FUNCTION_12();
          v31 = &qword_1C8BE6D88;
          goto LABEL_20;
        }

        sub_1C8778ED8(v4, &qword_1EC2B60D8, &qword_1C8BE6D88);
        OUTLINED_FUNCTION_11_15();
        sub_1C88E3C58();
LABEL_19:
        v30 = &qword_1EC2B60E0;
        v31 = &qword_1C8BE6D90;
        v32 = v0;
LABEL_20:
        sub_1C8778ED8(v32, v30, v31);
        goto LABEL_21;
      }

      sub_1C8778ED8(v4, &qword_1EC2B60D8, &qword_1C8BE6D88);
      OUTLINED_FUNCTION_19(v0 + v28);
      if (!v24)
      {
        goto LABEL_19;
      }

      sub_1C8778ED8(v0, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C894AB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD540, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894AC1C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894AC8C()
{
  sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894AD0C()
{
  if (qword_1EC2B52C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B94F8;
  v2 = unk_1EC2B9500;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6172656D756E452ELL, 0xEC0000006E6F6974);

  qword_1EC2B9590 = v1;
  *algn_1EC2B9598 = v2;
  return result;
}

uint64_t sub_1C894ADD8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B95A0);
  __swift_project_value_buffer(v0, qword_1EC2B95A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
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
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
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
        sub_1C894B250();
        break;
      case 2:
        OUTLINED_FUNCTION_846();
        OUTLINED_FUNCTION_8();
        sub_1C89C9A50();
        break;
      case 3:
        OUTLINED_FUNCTION_858();
        OUTLINED_FUNCTION_8();
        sub_1C894D5D0();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C894B304();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C894B3B8();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C89B3A18();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C894B250()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0) + 36);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894B304()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(0) + 40);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAF98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v9 = OUTLINED_FUNCTION_405_0(v8);
  v47 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v9);
  v10 = OUTLINED_FUNCTION_21(v47);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_7(v13, v46);
  v14 = OUTLINED_FUNCTION_233();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_217_1();
  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v20);
  v22 = OUTLINED_FUNCTION_74_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = OUTLINED_FUNCTION_36_4();
  v48 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration(v25);
  v26 = v48[9];
  v27 = v0;
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2);
  if (v28)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v29, v30);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_749();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_18;
    }
  }

  v31 = *v0;
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(0), OUTLINED_FUNCTION_845(), sub_1C8776818(v32, v33), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_559(), sub_1C8BD4E0C(), !v1))
  {
    if (!*(v27[1] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RuntimeRequirement(0), OUTLINED_FUNCTION_850(), sub_1C8776818(v34, v35), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_559(), sub_1C8BD4E0C(), !v1))
    {
      v36 = v48[10];
      sub_1C89CBE2C();
      v37 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_41_2(v37, v38);
      if (v28)
      {
        sub_1C8778ED8(v49, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      }

      else
      {
        OUTLINED_FUNCTION_25_8();
        OUTLINED_FUNCTION_1144();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_346_0();
        sub_1C8776818(v39, v40);
        OUTLINED_FUNCTION_930();
        OUTLINED_FUNCTION_1077();
        OUTLINED_FUNCTION_559();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_98_1();
        sub_1C88E3C58();
        if (v1)
        {
          goto LABEL_18;
        }
      }

      v41 = v27[2];
      if (!v41 || (v42 = *(v27 + 24), OUTLINED_FUNCTION_946(v41), sub_1C89CBF14(), OUTLINED_FUNCTION_559(), sub_1C8BD4D4C(), !v1))
      {
        if (!*(v27[4] + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemTypeProtocol(0), OUTLINED_FUNCTION_848(), sub_1C8776818(v43, v44), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_559(), sub_1C8BD4E0C(), !v1))
        {
          v45 = v27 + v48[8];
          OUTLINED_FUNCTION_890();
          OUTLINED_FUNCTION_1125();
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C894B878(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD538, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894B8F8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBAC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894B968()
{
  sub_1C8776818(&qword_1EC2BBAC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894B9E8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B95B8);
  __swift_project_value_buffer(v0, qword_1EC2B95B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Kind_UNKNOWN";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Kind_APP_ENUM";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Kind_ACTION_ENUM";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C894BC28()
{
  if (qword_1EC2B5308 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9590;
  v2 = *algn_1EC2B9598;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x657361432ELL, 0xE500000000000000);

  qword_1EC2B95D0 = v1;
  *algn_1EC2B95D8 = v2;
  return result;
}

uint64_t sub_1C894BCE8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B95E0);
  __swift_project_value_buffer(v0, qword_1EC2B95E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C894BF14()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

void sub_1C894C00C()
{
  OUTLINED_FUNCTION_124();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_84();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v6);
  v8 = OUTLINED_FUNCTION_49_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_103();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_229_2(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_60_1();
  v19 = *v0;
  v20 = v0[1];
  OUTLINED_FUNCTION_761();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v5(0);
  OUTLINED_FUNCTION_724(v24);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_125_0();
  if (v23)
  {
    OUTLINED_FUNCTION_43_1(v1 + v3);
    if (v23)
    {
      sub_1C8778ED8(v1, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_17:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v27, v28);
      v26 = OUTLINED_FUNCTION_64_0();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v1 + v3);
  if (v25)
  {
    sub_1C88E3C58();
LABEL_14:
    sub_1C8778ED8(v1, &qword_1EC2B60D0, &qword_1C8BE6D80);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1107();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_464_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_239();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2B60C8, &qword_1C8BFA9F0);
  if (v2)
  {
    goto LABEL_17;
  }

LABEL_15:
  v26 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v26);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C894C2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD530, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894C358(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894C3C8()
{
  sub_1C8776818(&qword_1EC2BAFB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Enumeration.Case);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894C448()
{
  if (qword_1EC2B52C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B94F8;
  v2 = unk_1EC2B9500;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x79726575512ELL, 0xE600000000000000);

  qword_1EC2B95F8 = v1;
  unk_1EC2B9600 = v2;
  return result;
}

uint64_t sub_1C894C508()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9608);
  __swift_project_value_buffer(v0, qword_1EC2B9608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
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
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C894C748()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(0) + 20);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894C7FC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_1C8776818(&qword_1EC2BAFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1059(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAC0, &qword_1C8BFA9D8);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_17_4();
  v40 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v10);
  v11 = OUTLINED_FUNCTION_21(v40);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_115_3(v14, v39);
  v15 = OUTLINED_FUNCTION_315();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_278_1();
  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v22 = OUTLINED_FUNCTION_49_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = OUTLINED_FUNCTION_36_4();
  v26 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query(v25);
  v27 = *(v26 + 20);
  OUTLINED_FUNCTION_615();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v28, v29, v30);
  if (v31)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v32, v33);
    OUTLINED_FUNCTION_768();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v34 = *(v26 + 24);
  sub_1C89CBE2C();
  v35 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v35, v36, v40);
  if (v31)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
LABEL_9:
    OUTLINED_FUNCTION_611();
    sub_1C8BD49DC();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_5();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_843();
  sub_1C8776818(v37, v38);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_248_2();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_242_2();
  sub_1C88E3C58();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C894CBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD528, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894CC54(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBAE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894CCC4()
{
  sub_1C8776818(&qword_1EC2BBAE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894CD44()
{
  if (qword_1EC2B5330 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B95F8;
  v2 = unk_1EC2B9600;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C25730);

  qword_1EC2B9620 = v1;
  *algn_1EC2B9628 = v2;
  return result;
}

uint64_t sub_1C894CE0C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9630);
  __swift_project_value_buffer(v0, qword_1EC2B9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "comparison";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
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
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.decodeMessage<A>(decoder:)()
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
        sub_1C89C9A50();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C894D300();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C894D3B4();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C894D468();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C894D51C();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C894D5D0();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C894D624();
        break;
      case 8:
        OUTLINED_FUNCTION_8();
        sub_1C894D6D8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C894D300()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
  sub_1C8776818(&qword_1EC2BB018, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894D3B4()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0) + 32);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(0);
  sub_1C8776818(&qword_1EC2BB010, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894D468()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0) + 36);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(0);
  sub_1C8776818(&qword_1EC2BB008, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894D51C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0) + 40);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(0);
  sub_1C8776818(&qword_1EC2BB000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);
  return sub_1C8BD4C7C();
}

void sub_1C894D5D0()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776818(v2, v3);
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C894D624()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0) + 44);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(0);
  sub_1C8776818(&qword_1EC2BAFF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C894D6D8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0) + 48);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
  sub_1C8776818(&qword_1EC2BAFF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB00, &unk_1C8BFAA20);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v82 = v10;
  v11 = OUTLINED_FUNCTION_86();
  valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(v11);
  v12 = OUTLINED_FUNCTION_21(valid);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF8, &qword_1C8BFAA18);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v83 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v84 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(v20);
  v21 = OUTLINED_FUNCTION_21(v84);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF0, &qword_1C8BFAA10);
  OUTLINED_FUNCTION_80(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  v29 = OUTLINED_FUNCTION_47_5(v28, v79);
  v85 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v29);
  v30 = OUTLINED_FUNCTION_21(v85);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE8, &qword_1C8BFAA08);
  OUTLINED_FUNCTION_80(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = OUTLINED_FUNCTION_294_0(v37, v80);
  v90 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v38);
  v39 = OUTLINED_FUNCTION_21(v90);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE0, &qword_1C8BFAA00);
  OUTLINED_FUNCTION_80(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v46);
  v48 = OUTLINED_FUNCTION_531_0(v47);
  v87 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v48);
  v49 = OUTLINED_FUNCTION_21(v87);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAD8, &qword_1C8BFA9F8);
  OUTLINED_FUNCTION_80(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v55);
  v56 = OUTLINED_FUNCTION_210();
  v57 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(v56);
  v58 = OUTLINED_FUNCTION_21(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_911();
  if (!v61 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template(0), sub_1C8776818(&qword_1EC2BAFE8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Template), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_1076(), sub_1C8BD4E0C(), !v0))
  {
    v62 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
    v63 = *(v62 + 28);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v64)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
    }

    else
    {
      OUTLINED_FUNCTION_96_3();
      OUTLINED_FUNCTION_223_1();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB018, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template);
      OUTLINED_FUNCTION_434();
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_1111();
      OUTLINED_FUNCTION_499();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_31;
      }
    }

    v65 = v62;
    v66 = *(v62 + 32);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_76(v86, 1, v87);
    if (v64)
    {
      sub_1C8778ED8(v86, &qword_1EC2BAAE0, &qword_1C8BFAA00);
      v67 = v89;
    }

    else
    {
      OUTLINED_FUNCTION_95_3();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB010, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template);
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_1078();
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_1111();
      OUTLINED_FUNCTION_498_0();
      sub_1C88E3C58();
      v67 = v89;
      if (v0)
      {
        goto LABEL_31;
      }
    }

    v68 = v65[9];
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v88);
    if (v64)
    {
      sub_1C8778ED8(v88, &qword_1EC2BAAE8, &qword_1C8BFAA08);
    }

    else
    {
      OUTLINED_FUNCTION_50_6();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB008, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate);
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_1077();
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_1111();
      OUTLINED_FUNCTION_332_1();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_31;
      }
    }

    v69 = v65[10];
    sub_1C89CBE2C();
    v70 = OUTLINED_FUNCTION_213();
    OUTLINED_FUNCTION_41_2(v70, v71);
    if (v64)
    {
      OUTLINED_FUNCTION_1143();
      sub_1C8778ED8(v67, &qword_1EC2BAAF0, &qword_1C8BFAA10);
    }

    else
    {
      OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_1010();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB000, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate);
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_1111();
      OUTLINED_FUNCTION_497();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_1143();
    }

    if (!*(*(v5 + 8) + 16) || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0), OUTLINED_FUNCTION_345_0(), sub_1C8776818(v72, v73), OUTLINED_FUNCTION_117(), v0 = v3, sub_1C8BD4E0C(), !v3))
    {
      v74 = v65[11];
      sub_1C89CBE2C();
      v75 = OUTLINED_FUNCTION_400();
      OUTLINED_FUNCTION_41_2(v75, v76);
      if (v64)
      {
        sub_1C8778ED8(v83, &qword_1EC2BAAF8, &qword_1C8BFAA18);
      }

      else
      {
        OUTLINED_FUNCTION_94_4();
        sub_1C88E3EC4();
        sub_1C8776818(&qword_1EC2BAFF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template);
        OUTLINED_FUNCTION_118_0();
        OUTLINED_FUNCTION_302_0();
        OUTLINED_FUNCTION_1111();
        OUTLINED_FUNCTION_496_0();
        sub_1C88E3C58();
        if (v0)
        {
          goto LABEL_31;
        }
      }

      v77 = v65[12];
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_19(v82);
      if (v64)
      {
        sub_1C8778ED8(v82, &qword_1EC2BAB00, &unk_1C8BFAA20);
LABEL_30:
        v78 = v5 + v65[6];
        sub_1C8BD49DC();
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_48_7();
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BAFF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_1111();
      OUTLINED_FUNCTION_331_0();
      sub_1C88E3C58();
      if (!v0)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = OUTLINED_FUNCTION_810();
  valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(v26);
  v27 = OUTLINED_FUNCTION_21(valid);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB00, &unk_1C8BFAA20);
  OUTLINED_FUNCTION_80(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v34);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB020, &qword_1C8BFACC0);
  OUTLINED_FUNCTION_21(v164);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_210();
  v168 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(v38);
  v39 = OUTLINED_FUNCTION_21(v168);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF8, &qword_1C8BFAA18);
  OUTLINED_FUNCTION_80(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_81();
  v166 = v46;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB028, &qword_1C8BFACC8);
  OUTLINED_FUNCTION_21(v167);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_81();
  v169 = v50;
  v51 = OUTLINED_FUNCTION_86();
  v171 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v51);
  v52 = OUTLINED_FUNCTION_21(v171);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAF0, &qword_1C8BFAA10);
  OUTLINED_FUNCTION_80(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_81();
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB030, &qword_1C8BFACD0);
  OUTLINED_FUNCTION_21(v170);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_81();
  v172 = v62;
  v63 = OUTLINED_FUNCTION_86();
  v174 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v63);
  v64 = OUTLINED_FUNCTION_21(v174);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_9_0();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE8, &qword_1C8BFAA08);
  OUTLINED_FUNCTION_80(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_81();
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB038, &qword_1C8BFACD8);
  OUTLINED_FUNCTION_21(v173);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v73);
  v75 = OUTLINED_FUNCTION_531_0(v74);
  v176 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v75);
  v76 = OUTLINED_FUNCTION_21(v176);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAE0, &qword_1C8BFAA00);
  OUTLINED_FUNCTION_80(v80);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_81();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB040, &qword_1C8BFACE0);
  OUTLINED_FUNCTION_21(v84);
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v87);
  v89 = OUTLINED_FUNCTION_47_5(v88, v162);
  v90 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(v89);
  v91 = OUTLINED_FUNCTION_74_1(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_18_4();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAD8, &qword_1C8BFA9F8);
  OUTLINED_FUNCTION_80(v94);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_112_0();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB048, &unk_1C8BFACE8);
  OUTLINED_FUNCTION_21(v98);
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_211();
  v102 = *v21;
  v103 = *v25;
  sub_1C87D931C();
  if ((v104 & 1) == 0)
  {
    goto LABEL_44;
  }

  v163 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  v105 = v163[7];
  v106 = *(v98 + 48);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v20);
  if (v107)
  {
    OUTLINED_FUNCTION_19(v20 + v106);
    if (v107)
    {
      sub_1C8778ED8(v20, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
      goto LABEL_13;
    }

LABEL_10:
    v108 = &qword_1EC2BB048;
    v109 = &unk_1C8BFACE8;
LABEL_11:
    v110 = v20;
LABEL_43:
    sub_1C8778ED8(v110, v108, v109);
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_221();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v20 + v106);
  if (v107)
  {
    OUTLINED_FUNCTION_499();
    sub_1C88E3C58();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_96_3();
  sub_1C88E3EC4();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v111, v112);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_223();
  v113 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_193();
  sub_1C88E3C58();
  sub_1C8778ED8(v20, &qword_1EC2BAAD8, &qword_1C8BFA9F8);
  if ((v113 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_13:
  v114 = v163[8];
  v115 = *(v84 + 48);
  v116 = v177;
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v117 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_124_1(v117, v118);
  if (v107)
  {
    OUTLINED_FUNCTION_24(v177 + v115);
    if (v107)
    {
      sub_1C8778ED8(v177, &qword_1EC2BAAE0, &qword_1C8BFAA00);
      goto LABEL_23;
    }

LABEL_21:
    v108 = &qword_1EC2BB040;
    v109 = &qword_1C8BFACE0;
LABEL_42:
    v110 = v116;
    goto LABEL_43;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v177 + v115);
  if (v119)
  {
    OUTLINED_FUNCTION_498_0();
    sub_1C88E3C58();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_95_3();
  sub_1C88E3EC4();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v120, v121);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_223();
  v122 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_259();
  sub_1C88E3C58();
  sub_1C8778ED8(v177, &qword_1EC2BAAE0, &qword_1C8BFAA00);
  if ((v122 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_23:
  v123 = v163[9];
  v124 = *(v173 + 48);
  OUTLINED_FUNCTION_786();
  v116 = v175;
  OUTLINED_FUNCTION_778();
  v125 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v125, v126);
  if (v107)
  {
    OUTLINED_FUNCTION_24(v175 + v124);
    if (v107)
    {
      sub_1C8778ED8(v175, &qword_1EC2BAAE8, &qword_1C8BFAA08);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_1010();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v175 + v124);
  if (v127)
  {
    OUTLINED_FUNCTION_332_1();
    sub_1C88E3C58();
LABEL_31:
    v108 = &qword_1EC2BB038;
    v109 = &qword_1C8BFACD8;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_50_6();
  sub_1C88E3EC4();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v128, v129);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_223();
  v130 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_259();
  sub_1C88E3C58();
  sub_1C8778ED8(v175, &qword_1EC2BAAE8, &qword_1C8BFAA08);
  if ((v130 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_33:
  v131 = v163[10];
  v132 = *(v170 + 48);
  OUTLINED_FUNCTION_786();
  v116 = v172;
  OUTLINED_FUNCTION_778();
  v133 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v133, v134);
  if (v107)
  {
    OUTLINED_FUNCTION_24(v172 + v132);
    if (v107)
    {
      sub_1C8778ED8(v172, &qword_1EC2BAAF0, &qword_1C8BFAA10);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v172 + v132);
  if (v135)
  {
    OUTLINED_FUNCTION_497();
    sub_1C88E3C58();
LABEL_41:
    v108 = &qword_1EC2BB030;
    v109 = &qword_1C8BFACD0;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_49_6();
  sub_1C88E3EC4();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v137, v138);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_223();
  v139 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_259();
  sub_1C88E3C58();
  sub_1C8778ED8(v172, &qword_1EC2BAAF0, &qword_1C8BFAA10);
  if ((v139 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v140 = v21[1];
  v141 = v25[1];
  sub_1C87D9370();
  if ((v142 & 1) == 0)
  {
    goto LABEL_44;
  }

  v143 = v163[11];
  v144 = *(v167 + 48);
  v20 = v169;
  OUTLINED_FUNCTION_786();
  v116 = v169;
  OUTLINED_FUNCTION_778();
  v145 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v145, v146);
  if (v107)
  {
    OUTLINED_FUNCTION_24(v169 + v144);
    if (v107)
    {
      sub_1C8778ED8(v169, &qword_1EC2BAAF8, &qword_1C8BFAA18);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v20 = v166;
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v169 + v144);
  if (v147)
  {
    OUTLINED_FUNCTION_496_0();
    sub_1C88E3C58();
LABEL_56:
    v108 = &qword_1EC2BB028;
    v109 = &qword_1C8BFACC8;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_94_4();
  sub_1C88E3EC4();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v148, v149);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_223();
  v150 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_259();
  sub_1C88E3C58();
  sub_1C8778ED8(v169, &qword_1EC2BAAF8, &qword_1C8BFAA18);
  if ((v150 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_58:
  v151 = v163[12];
  v152 = *(v164 + 48);
  OUTLINED_FUNCTION_257(&a15);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_778();
  v153 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v153, v154);
  if (v107)
  {
    OUTLINED_FUNCTION_24(v20 + v152);
    if (v107)
    {
      sub_1C8778ED8(v20, &qword_1EC2BAB00, &unk_1C8BFAA20);
LABEL_68:
      v159 = v163[6];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v160, v161);
      v136 = sub_1C8BD517C();
      goto LABEL_45;
    }

    goto LABEL_66;
  }

  OUTLINED_FUNCTION_265(&a18);
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v20 + v152);
  if (v155)
  {
    OUTLINED_FUNCTION_331_0();
    sub_1C88E3C58();
LABEL_66:
    v108 = &qword_1EC2BB020;
    v109 = &qword_1C8BFACC0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_48_7();
  OUTLINED_FUNCTION_1042(&a14);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v156, v157);
  OUTLINED_FUNCTION_288_0();
  v158 = sub_1C8BD517C();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v20, &qword_1EC2BAB00, &unk_1C8BFAA20);
  if (v158)
  {
    goto LABEL_68;
  }

LABEL_44:
  v136 = 0;
LABEL_45:
  OUTLINED_FUNCTION_157(v136);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C894EDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD520, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C894EE64(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BAFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C894EED4()
{
  sub_1C8776818(&qword_1EC2BAFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C894EFA0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9658);
  __swift_project_value_buffer(v0, qword_1EC2B9658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "primitive";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entity";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "collection";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "query";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "entityIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "deferred";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v2 = OUTLINED_FUNCTION_252_3();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v2);
  OUTLINED_FUNCTION_880(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_55_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_951(v7);
  }

  v8 = OUTLINED_FUNCTION_9_4();
  sub_1C894F3B4(v8, v9, v10, v11);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C894F3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C894F4E8(a1, a2, a3, a4);
        break;
      case 2:
        sub_1C894FA0C(a1, a2, a3, a4);
        break;
      case 3:
        sub_1C894FF34(a1, a2, a3, a4);
        break;
      case 4:
        sub_1C895045C(a1, a2, a3, a4);
        break;
      case 5:
        sub_1C8950984(a1, a2, a3, a4);
        break;
      case 6:
        sub_1C8950EAC(a1, a2, a3, a4);
        break;
      case 7:
        sub_1C89513D4(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C894F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7E8, &qword_1C8C0A698);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v25, &qword_1EC2BD7E8, &qword_1C8C0A698);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BBB38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD7E8, &qword_1C8C0A698);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD7E8, &qword_1C8C0A698);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C894FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7F0, &qword_1C8C0A6A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
      sub_1C8778ED8(v25, &qword_1EC2BD7F0, &qword_1C8C0A6A0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBC38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD7F0, &qword_1C8C0A6A0);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD7F0, &qword_1C8C0A6A0);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C894FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7F8, &qword_1C8C0A6A8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
      sub_1C8778ED8(v25, &qword_1EC2BD7F8, &qword_1C8C0A6A8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBC50, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD7F8, &qword_1C8C0A6A8);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD7F8, &qword_1C8C0A6A8);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C895045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD800, &qword_1C8C0A6B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
      sub_1C8778ED8(v25, &qword_1EC2BD800, &qword_1C8C0A6B0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBC68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD800, &qword_1C8C0A6B0);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD800, &qword_1C8C0A6B0);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8950984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(0);
  v7 = *(*(Value - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](Value);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD808, &qword_1C8C0A6B8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, Value);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
      sub_1C8778ED8(v25, &qword_1EC2BD808, &qword_1C8C0A6B8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, Value);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBC80, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD808, &qword_1C8C0A6B8);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, Value) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD808, &qword_1C8C0A6B8);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8950EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD810, &qword_1C8C0A6C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
      sub_1C8778ED8(v25, &qword_1EC2BD810, &qword_1C8C0A6C0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBC98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD810, &qword_1C8C0A6C0);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD810, &qword_1C8C0A6C0);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C89513D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD818, &qword_1C8C0A6C8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60C0, &unk_1C8BE6D70);
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
      sub_1C8778ED8(v25, &qword_1EC2BD818, &qword_1C8C0A6C8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBCB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD818, &qword_1C8C0A6C8);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD818, &qword_1C8C0A6C8);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C895193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  swift_beginAccess();
  sub_1C89CBE2C();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C8951D80(a1, a2, a3, a4);
        break;
      case 2u:
        sub_1C8951FB4(a1, a2, a3, a4);
        break;
      case 3u:
        sub_1C89521E8(a1, a2, a3, a4);
        break;
      case 4u:
        sub_1C895241C(a1, a2, a3, a4);
        break;
      case 5u:
        sub_1C8952650(a1, a2, a3, a4);
        break;
      case 6u:
        sub_1C8952884(a1, a2, a3, a4);
        break;
      default:
        sub_1C8951B50(a1, a2, a3, a4);
        break;
    }

    return sub_1C88E3C58();
  }

  return result;
}

uint64_t sub_1C8951B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBB38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8951D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBC38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8951FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBC50, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89521E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBC68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C895241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(0);
  v9 = *(*(Value - 8) + 64);
  MEMORY[0x1EEE9AC00](Value);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBC80, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8952650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBC98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8952884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C0, &unk_1C8BE6D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60C0, &unk_1C8BE6D70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBCB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void sub_1C8952AB8()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_644();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind(v2);
  v4 = OUTLINED_FUNCTION_40_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v7);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&byte_1EC2B60B8, &qword_1C8BE6D68) - 8);
  v9 = *(*v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_112_0();
  v11 = OUTLINED_FUNCTION_890();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_547();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v18 = v8[14];
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_65(v0);
  if (!v19)
  {
    OUTLINED_FUNCTION_1144();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_65(v0 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_1158();
      OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.OneOf_TypedValueKind.== infix(_:_:)();
      sub_1C88E3C58();
      v20 = OUTLINED_FUNCTION_300();
      sub_1C8778ED8(v20, v21, &unk_1C8BE6D70);
      OUTLINED_FUNCTION_268();
      sub_1C88E3C58();
      v22 = OUTLINED_FUNCTION_218();
      sub_1C8778ED8(v22, v23, &unk_1C8BE6D70);
      goto LABEL_10;
    }

    sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
    OUTLINED_FUNCTION_24_9();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &byte_1EC2B60B8, &qword_1C8BE6D68);
    goto LABEL_10;
  }

  sub_1C8778ED8(v1, &qword_1EC2B60C0, &unk_1C8BE6D70);
  OUTLINED_FUNCTION_65(v0 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v0, &qword_1EC2B60C0, &unk_1C8BE6D70);
LABEL_10:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8952DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD518, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8952E4C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8952EBC()
{
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8952F3C()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](4475182, 0xE300000000000000);

  qword_1EC2B9678 = v1;
  unk_1EC2B9680 = v2;
  return result;
}

uint64_t sub_1C8952FF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9688);
  __swift_project_value_buffer(v0, qword_1EC2B9688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "serializedVariable";
  *(v6 + 8) = 18;
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

uint64_t sub_1C8953228()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
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
  OUTLINED_FUNCTION_9_0();
  v13 = *v0;
  v12 = v0[1];
  v14 = OUTLINED_FUNCTION_292();
  if (sub_1C88E36B8(v14, v15) || (OUTLINED_FUNCTION_292(), OUTLINED_FUNCTION_564(), sub_1C8BD4D6C(), !v1))
  {
    v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID(0);
    OUTLINED_FUNCTION_994(v16);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v17)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_7:
      v20 = v0 + *(v12 + 20);
      OUTLINED_FUNCTION_548();
      sub_1C8BD49DC();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_2_20();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_337_0();
    sub_1C8776818(v18, v19);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID.== infix(_:_:)()
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
  if ((MEMORY[0x1CCA7D0F0](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID(0);
  OUTLINED_FUNCTION_724(v17);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_109_2();
  if (v18)
  {
    OUTLINED_FUNCTION_19(v2 + v3);
    if (v18)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_17:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v26, v27);
      v21 = OUTLINED_FUNCTION_746();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_268();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2 + v3);
  if (v18)
  {
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
LABEL_10:
    v19 = &qword_1EC2B60E0;
    v20 = &qword_1C8BE6D90;
LABEL_11:
    sub_1C8778ED8(v2, v19, v20);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_1122();
  OUTLINED_FUNCTION_916();
  if (!v22)
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
      v19 = &qword_1EC2B60D8;
      v20 = &qword_1C8BE6D88;
      goto LABEL_11;
    }
  }

  v23 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v24, v25);
  OUTLINED_FUNCTION_258();
  sub_1C8BD517C();
  OUTLINED_FUNCTION_351_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_229();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2B60D8, &qword_1C8BE6D88);
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_12:
  v21 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v21);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89537BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD510, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895383C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBB20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89538AC()
{
  sub_1C8776818(&qword_1EC2BBB20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.ID);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895392C()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6974696D6972502ELL, 0xEF65756C61566576);

  qword_1EC2B96A0 = v1;
  *algn_1EC2B96A8 = v2;
  return result;
}

uint64_t sub_1C89539FC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B96B0);
  __swift_project_value_buffer(v0, qword_1EC2B96B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C8BFA900;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "noneVariant";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "number";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "decimal";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "string";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "date";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "dateComponents";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "url";
  *(v22 + 1) = 3;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "attributedString";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "measurement";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "currencyAmount";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "paymentMethod";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "placemark";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "person";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "file";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "app";
  *(v38 + 1) = 3;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "searchableItem";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "encodedDateComponents";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_36_6();
        sub_1C89BF374();
        break;
      case 2:
        v29 = OUTLINED_FUNCTION_33_4();
        sub_1C8954208(v29);
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_33_4();
        sub_1C8954398(v23);
        break;
      case 4:
        v28 = OUTLINED_FUNCTION_33_4();
        sub_1C8954528(v28);
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_33_4();
        sub_1C89546C0(v15, v16, v17, v18);
        break;
      case 6:
      case 9:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955054();
        break;
      case 7:
        v34 = OUTLINED_FUNCTION_33_4();
        sub_1C8954B7C(v34, v35, v36, v37);
        break;
      case 8:
      case 10:
      case 18:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955198();
        break;
      case 11:
        v42 = OUTLINED_FUNCTION_33_4();
        sub_1C89552E0(v42, v43, v44, v45);
        break;
      case 12:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C895579C(v11, v12, v13, v14);
        break;
      case 13:
        v19 = OUTLINED_FUNCTION_33_4();
        sub_1C8955C58(v19, v20, v21, v22);
        break;
      case 14:
        v30 = OUTLINED_FUNCTION_33_4();
        sub_1C8956114(v30, v31, v32, v33);
        break;
      case 15:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C89565D0(v7, v8, v9, v10);
        break;
      case 16:
        v24 = OUTLINED_FUNCTION_33_4();
        sub_1C8956A8C(v24, v25, v26, v27);
        break;
      case 17:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8956F48(v3, v4, v5, v6);
        break;
      case 19:
        v38 = OUTLINED_FUNCTION_33_4();
        sub_1C8957404(v38, v39, v40, v41);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8954208(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v12 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2BAB18, &qword_1C8BFAA38);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v13 = 2;
    result = sub_1C8BD4B2C();
    if (!v1)
    {
      v9 = v13;
      if (v13 != 2)
      {
        v10 = v12;
        sub_1C8778ED8(v12, &qword_1EC2BAB18, &qword_1C8BFAA38);
        *v10 = v9 & 1;
        swift_storeEnumTagMultiPayload();
        return __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1C8954398(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v13 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2BAB18, &qword_1C8BFAA38);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v11 = 0;
    v12 = 1;
    result = sub_1C8BD4BBC();
    if (!v1 && (v12 & 1) == 0)
    {
      v9 = v11;
      v10 = v13;
      sub_1C8778ED8(v13, &qword_1EC2BAB18, &qword_1C8BFAA38);
      *v10 = v9;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C8954528(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v12 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2BAB18, &qword_1C8BFAA38);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v13 = 0;
    v14 = 1;
    result = sub_1C8BD4BFC();
    if (!v1 && (v14 & 1) == 0)
    {
      v9 = v13;
      v10 = v12;
      sub_1C8778ED8(v12, &qword_1EC2BAB18, &qword_1C8BFAA38);
      *v10 = v9;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v10, 0, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C89546C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB40, &qword_1C8BFAA68);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
      sub_1C8778ED8(v23, &qword_1EC2BAB40, &qword_1C8BFAA68);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BAB40, &qword_1C8BFAA68);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BAB40, &qword_1C8BFAA68);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8954B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v40 = a2;
  v6 = sub_1C8BD47FC();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7598, &qword_1C8C0A650);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v37 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v6);
  v35 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      return sub_1C8778ED8(v25, &qword_1EC2B7598, &qword_1C8C0A650);
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C8778ED8(v25, &qword_1EC2B7598, &qword_1C8C0A650);
      v30 = *(v36 + 32);
      v31 = v33;
      v30(v33, v19, v6);
      v30(v25, v31, v6);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2B2F80, MEMORY[0x1E69AA900]);
  sub_1C8BD4C7C();
  if (!v4)
  {
    v25 = v37;
    sub_1C89DF3F4();
    if (__swift_getEnumTagSinglePayload(v25, 1, v6) != 1)
    {
      v26 = *(v36 + 32);
      v27 = v34;
      v26(v34, v25, v6);
      v28 = v35;
      sub_1C8778ED8(v35, &qword_1EC2BAB18, &qword_1C8BFAA38);
      v26(v28, v27, v6);
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v28, 0, 1, v15);
    }
  }

  return sub_1C8778ED8(v25, &qword_1EC2B7598, &qword_1C8C0A650);
}

void sub_1C8955054()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  OUTLINED_FUNCTION_1052();
  v8 = OUTLINED_FUNCTION_728(v3, v4, v5, v6, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_607();
  sub_1C89CBE2C();
  v14 = v2(0);
  v15 = OUTLINED_FUNCTION_120();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);
  OUTLINED_FUNCTION_627();
  sub_1C8778ED8(v18, v19, v20);
  if (EnumTagSinglePayload == 1 || (sub_1C8BD4B0C(), !v0))
  {
    sub_1C8BD4C1C();
    if (v0)
    {
    }
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void sub_1C8955198()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  OUTLINED_FUNCTION_1052();
  v8 = OUTLINED_FUNCTION_728(v3, v4, v5, v6, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_60_1();
  OUTLINED_FUNCTION_301_1();
  sub_1C89CBE2C();
  v14 = v2(0);
  v15 = OUTLINED_FUNCTION_120();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);
  OUTLINED_FUNCTION_627();
  sub_1C8778ED8(v18, v19, v20);
  if (EnumTagSinglePayload == 1 || (OUTLINED_FUNCTION_455(), sub_1C8BD4B0C(), !v0))
  {
    OUTLINED_FUNCTION_730();
    sub_1C8BD4B7C();
    if (v0)
    {
      sub_1C87A9A24(0, 0xF000000000000000);
    }
  }

  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89552E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7A8, &qword_1C8C0A658);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7A8, &qword_1C8C0A658);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBB60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7A8, &qword_1C8C0A658);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7A8, &qword_1C8C0A658);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C895579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7B0, &qword_1C8C0A660);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7B0, &qword_1C8C0A660);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBB78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7B0, &qword_1C8C0A660);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7B0, &qword_1C8C0A660);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8955C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7B8, &qword_1C8C0A668);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7B8, &qword_1C8C0A668);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBB90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7B8, &qword_1C8C0A668);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7B8, &qword_1C8C0A668);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8956114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7C0, &qword_1C8C0A670);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7C0, &qword_1C8C0A670);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBBA8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7C0, &qword_1C8C0A670);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7C0, &qword_1C8C0A670);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C89565D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7C8, &qword_1C8C0A678);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7C8, &qword_1C8C0A678);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBBC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7C8, &qword_1C8C0A678);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7C8, &qword_1C8C0A678);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8956A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7D0, &qword_1C8C0A680);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7D0, &qword_1C8C0A680);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBBD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7D0, &qword_1C8C0A680);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7D0, &qword_1C8C0A680);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8956F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7D8, &qword_1C8C0A688);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7D8, &qword_1C8C0A688);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBBF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7D8, &qword_1C8C0A688);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7D8, &qword_1C8C0A688);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8957404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7E0, &qword_1C8C0A690);
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
    sub_1C8778ED8(v14, &qword_1EC2BAB18, &qword_1C8BFAA38);
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
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD7E0, &qword_1C8C0A690);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBC08, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD7E0, &qword_1C8C0A690);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD7E0, &qword_1C8C0A690);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.traverse<A>(visitor:)()
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
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_144_2(v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_9_4();
        sub_1C8957B34();
        goto LABEL_31;
      case 2:
        OUTLINED_FUNCTION_9_4();
        sub_1C8957C74();
        goto LABEL_31;
      case 3:
        OUTLINED_FUNCTION_9_4();
        sub_1C8957DB4();
        goto LABEL_31;
      case 4:
        v24 = OUTLINED_FUNCTION_9_4();
        sub_1C8957EF4(v24, v25, v26, v27);
        goto LABEL_27;
      case 5:
        OUTLINED_FUNCTION_23_10();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_9_4();
        sub_1C8958108();
        goto LABEL_31;
      case 6:
        v40 = OUTLINED_FUNCTION_9_4();
        sub_1C895825C(v40, v41, v42, v43);
        goto LABEL_27;
      case 7:
        OUTLINED_FUNCTION_23_10();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_9_4();
        sub_1C895849C();
        goto LABEL_31;
      case 8:
        OUTLINED_FUNCTION_23_10();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_9_4();
        sub_1C89585F8();
        goto LABEL_31;
      case 9:
        OUTLINED_FUNCTION_23_10();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_9_4();
        sub_1C895874C();
        goto LABEL_31;
      case 10:
        v48 = OUTLINED_FUNCTION_9_4();
        sub_1C89588A8(v48, v49, v50, v51);
LABEL_27:
        v0 = v1;
        OUTLINED_FUNCTION_23_10();
        goto LABEL_28;
      case 11:
        v20 = OUTLINED_FUNCTION_9_4();
        sub_1C8958ABC(v20, v21, v22, v23);
        goto LABEL_23;
      case 12:
        v28 = OUTLINED_FUNCTION_9_4();
        sub_1C8958CD0(v28, v29, v30, v31);
        goto LABEL_23;
      case 13:
        v36 = OUTLINED_FUNCTION_9_4();
        sub_1C8958EE4(v36, v37, v38, v39);
        goto LABEL_23;
      case 14:
        v16 = OUTLINED_FUNCTION_9_4();
        sub_1C89590F8(v16, v17, v18, v19);
        goto LABEL_23;
      case 15:
        v32 = OUTLINED_FUNCTION_9_4();
        sub_1C895930C(v32, v33, v34, v35);
        goto LABEL_23;
      case 16:
        v12 = OUTLINED_FUNCTION_9_4();
        sub_1C8959520(v12, v13, v14, v15);
        goto LABEL_23;
      case 17:
        OUTLINED_FUNCTION_23_10();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_9_4();
        sub_1C8959734();
LABEL_31:
        if (!v1)
        {
          break;
        }

        goto LABEL_4;
      case 18:
        v44 = OUTLINED_FUNCTION_9_4();
        sub_1C8959890(v44, v45, v46, v47);
LABEL_23:
        if (v1)
        {
          OUTLINED_FUNCTION_23_10();
          sub_1C88E3C58();
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_23_10();
        sub_1C88E3C58();
        break;
      default:
        sub_1C89B72FC();
        OUTLINED_FUNCTION_104_0();
LABEL_28:
        sub_1C88E3C58();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_113_1(v10);
LABEL_4:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8957B34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *v3;
      return sub_1C8BD4D3C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8957C74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      return sub_1C8BD4D9C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8957DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v7 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = *v3;
      return sub_1C8BD4DCC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8957EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8958108()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
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

uint64_t sub_1C895825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_1C8BD47FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C89CBE2C();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1C8776818(&qword_1EC2B2F80, MEMORY[0x1E69AA900]);
      sub_1C8BD4E2C();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C895849C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
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

uint64_t sub_1C89585F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
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

uint64_t sub_1C895874C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
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

uint64_t sub_1C89588A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBB60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8958ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBB78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8958CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBB90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8958EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBBA8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89590F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBBC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C895930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBBD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8959520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBBF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8959734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
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

uint64_t sub_1C8959890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB18, &qword_1C8BFAA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBC08, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8959B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD508, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8959BAC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBB38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8959C1C()
{
  sub_1C8776818(&qword_1EC2BBB38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8959C9C()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6C616D696365442ELL, 0xE800000000000000);

  qword_1EC2B96C8 = v1;
  unk_1EC2B96D0 = v2;
  return result;
}

uint64_t sub_1C8959D60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B96D8);
  __swift_project_value_buffer(v0, qword_1EC2B96D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sign";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exponent";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "significand";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.decodeMessage<A>(decoder:)()
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
        sub_1C895A088();
        break;
      case 2:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BCC();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C895A020();
        break;
    }
  }

  return result;
}