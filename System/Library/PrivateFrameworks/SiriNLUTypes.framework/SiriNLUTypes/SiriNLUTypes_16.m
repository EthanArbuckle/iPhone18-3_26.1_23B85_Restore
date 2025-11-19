uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind.== infix(_:_:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC18, &unk_1C8BFAA98);
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_112_0();
  v6 = (v0 + *(v5 + 56));
  sub_1C88E4144();
  OUTLINED_FUNCTION_92_0();
  sub_1C88E4144();
  if (MEMORY[0x1CCA7D0F0](*v0, v0[1], *v6, v6[1]))
  {
    v7 = v0[2] == v6[2] && v0[3] == v6[3];
    if (v7 || (sub_1C8BD529C() & 1) != 0)
    {
      v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
      OUTLINED_FUNCTION_1105(v8);
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v9, v10);
      sub_1C8BD517C();
    }
  }

  sub_1C88E3C58();
  OUTLINED_FUNCTION_312();
  sub_1C88E3C58();
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_218();
  sub_1C87A8FBC(v3, v4);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.setter()
{
  OUTLINED_FUNCTION_731();
  result = sub_1C87A997C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

void sub_1C8901C2C()
{
  OUTLINED_FUNCTION_533();
  v1 = v0;
  v3 = v2(0);
  OUTLINED_FUNCTION_215_1(v3);
  v4 = *v1;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.typeInstanceKind.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v2);
  v4 = OUTLINED_FUNCTION_436(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_264_1(v7);
  }

  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.typeInstanceKind.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_1135(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_926(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v10);
  OUTLINED_FUNCTION_571(v11);
  OUTLINED_FUNCTION_1015();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_1088();
  OUTLINED_FUNCTION_260();
}

void sub_1C8901E24(void **a1, char a2)
{
  v5 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_1134();
    OUTLINED_FUNCTION_271();
    OUTLINED_FUNCTION_382();
    sub_1C89CBE2C();
    Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.typeInstanceKind.setter();
    v6 = OUTLINED_FUNCTION_220();
    sub_1C8778ED8(v6, v7, &qword_1C8BE6D60);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1014();
    v9 = *&v3[v2];
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_905();
      v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(v10);
      OUTLINED_FUNCTION_218_2(v11);
      swift_allocObject();
      OUTLINED_FUNCTION_61_6();
      sub_1C89681C4();
      OUTLINED_FUNCTION_1153(v12);
    }

    v4 = v5[7];
    v3 = v5[8];
    OUTLINED_FUNCTION_23();
    swift_beginAccess();
    OUTLINED_FUNCTION_1165();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v5);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.type.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_6:
    v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    v13 = OUTLINED_FUNCTION_369_0(v12);
    v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v13);
    return OUTLINED_FUNCTION_260_1(v14);
  }

  OUTLINED_FUNCTION_184();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_121();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.type.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v0 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.type.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_375_0(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v14);
  OUTLINED_FUNCTION_215_1(v15);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v16);
  if (v17)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  v19 = OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_262_2(v19, v20, v21, v22);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.collection.getter()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_268();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_552();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_215_1(v9);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_1015();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_72(v0);
  if (v10)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_196_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v12 = *(v9 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v2 + v12) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.collection.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v0 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.collection.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_654(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[4] = v8;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = *(v10 + 64);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[6] = v12;
  v13 = *(v0 + *(v1 + 20));
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_607();
  sub_1C89CBE2C();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v8, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v1 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *&v12[v17] = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.optionalVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_358_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v15 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(0) + 20);
  if (qword_1EC2B5500 != -1)
  {
    OUTLINED_FUNCTION_933();
  }

  *(a1 + v15) = qword_1EC2B9A50;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.optionalVariant.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v0 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_358_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.optionalVariant.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_714(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_375_0(v15);
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v16);
  OUTLINED_FUNCTION_215_1(v17);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v18);
  if (v19)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_358_0();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v21 = *(v0 + 20);
  if (qword_1EC2B5500 != -1)
  {
    OUTLINED_FUNCTION_933();
  }

  *(v12 + v21) = qword_1EC2B9A50;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.union.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_356_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  v13 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v13);
  return OUTLINED_FUNCTION_260_1(v14);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.union.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v0 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8902D54()
{
  OUTLINED_FUNCTION_794();
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v2 = v1(v0);
  return OUTLINED_FUNCTION_260_1(v2);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.union.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_714(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_375_0(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v17);
  if (v18)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_7:
    *v11 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1043();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.restricted.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_355();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  v13 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v13);
  OUTLINED_FUNCTION_702(v14);
  v15 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v15);
  v16 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.restricted.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v0 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8903158()
{
  OUTLINED_FUNCTION_785();
  *v1 = MEMORY[0x1E69E7CC0];
  v3 = v2(0);
  OUTLINED_FUNCTION_1039(v3);
  v4 = OUTLINED_FUNCTION_886();
  v0(v4);
  v5 = OUTLINED_FUNCTION_257_2();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.restricted.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_714(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_375_0(v15);
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v16);
  OUTLINED_FUNCTION_215_1(v17);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v18);
  if (v19)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1043();
    v21 = *(v0 + 24);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.deferred.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_354();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v15 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(0) + 20);
  if (qword_1EC2B5538 != -1)
  {
    OUTLINED_FUNCTION_931();
  }

  *(a1 + v15) = qword_1EC2B9AD0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.deferred.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  v9 = OUTLINED_FUNCTION_41_1(v8);
  v10 = *(v0 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_354();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.deferred.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_714(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_375_0(v15);
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v16);
  OUTLINED_FUNCTION_215_1(v17);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v18);
  if (v19)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_354();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v21 = *(v0 + 20);
  if (qword_1EC2B5538 != -1)
  {
    OUTLINED_FUNCTION_931();
  }

  *(v12 + v21) = qword_1EC2B9AD0;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v8 = OUTLINED_FUNCTION_987(v6, v7);
  v81 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v8);
  v9 = OUTLINED_FUNCTION_21(v81);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v13 = OUTLINED_FUNCTION_546(v12);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v13);
  v15 = OUTLINED_FUNCTION_80(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  v18 = OUTLINED_FUNCTION_86();
  v75 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v18);
  v19 = OUTLINED_FUNCTION_21(v75);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_7(v22, v75);
  v79 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(0);
  v23 = OUTLINED_FUNCTION_21(v79);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_115_3(v26, v76);
  v78 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v27 = OUTLINED_FUNCTION_21(v78);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  v30 = OUTLINED_FUNCTION_86();
  v31 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v30);
  v32 = OUTLINED_FUNCTION_80(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_33();
  v35 = OUTLINED_FUNCTION_402();
  v36 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v35);
  v37 = OUTLINED_FUNCTION_48_5(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_10_0();
  v82 = v40;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_538();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_734();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC28, &qword_1C8BFAAA8);
  OUTLINED_FUNCTION_80(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_112_0();
  v51 = *(v50 + 56);
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_312();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 1)
      {
        OUTLINED_FUNCTION_11_15();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_1140();
      sub_1C88E3EC4();
      v64 = *(v78 + 20);
      if (*(v3 + v64) == *(v4 + v64))
      {
        goto LABEL_18;
      }

      v65 = *(v3 + v64);

      v66 = OUTLINED_FUNCTION_92_0();
      sub_1C896B338(v66);
      OUTLINED_FUNCTION_985();

      if (v2)
      {
LABEL_18:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v67, v68);
        OUTLINED_FUNCTION_299_0();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_353_0();
      sub_1C88E3C58();
      goto LABEL_34;
    case 2u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 2)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_358_0();
      OUTLINED_FUNCTION_1131();
      sub_1C88E3EC4();
      v52 = *(v79 + 20);
      if (*(v5 + v52) == *(v3 + v52))
      {
        goto LABEL_9;
      }

      v53 = *(v5 + v52);

      v54 = OUTLINED_FUNCTION_92_0();
      sub_1C896C360(v54, v55);
      OUTLINED_FUNCTION_985();

      if (v2)
      {
LABEL_9:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v56, v57);
        OUTLINED_FUNCTION_240();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_874();
      sub_1C88E3C58();
      goto LABEL_34;
    case 3u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 3)
      {
        OUTLINED_FUNCTION_703();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_356_0();
      sub_1C88E3EC4();
      v58 = *v1;
      v59 = *v80;
      sub_1C87DA628();
      if (v60)
      {
        v61 = *(v77 + 20);
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v62, v63);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_872();
      sub_1C88E3C58();
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 4)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_355();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.== infix(_:_:)();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_259();
      goto LABEL_34;
    case 5u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 5)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_354();
      OUTLINED_FUNCTION_1035();
      sub_1C88E3EC4();
      v69 = *(v81 + 20);
      if (*(v82 + v69) == *(v3 + v69))
      {
        goto LABEL_23;
      }

      v70 = *(v82 + v69);

      v71 = OUTLINED_FUNCTION_92_0();
      sub_1C896E018(v71, v72);
      OUTLINED_FUNCTION_985();

      if (v2)
      {
LABEL_23:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v73, v74);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_871();
      sub_1C88E3C58();
      goto LABEL_34;
    default:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108())
      {
        OUTLINED_FUNCTION_41_8();
LABEL_28:
        sub_1C88E3C58();
        sub_1C8778ED8(v0, &qword_1EC2BAC28, &qword_1C8BFAAA8);
      }

      else
      {
        OUTLINED_FUNCTION_8_16();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_522();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
        OUTLINED_FUNCTION_828();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_307();
LABEL_34:
        sub_1C88E3C58();
        OUTLINED_FUNCTION_30_8();
        sub_1C88E3C58();
      }

      OUTLINED_FUNCTION_1069();
      OUTLINED_FUNCTION_125();
      return;
  }
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6178, &qword_1C8BFAAB0);
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
      sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
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
    OUTLINED_FUNCTION_248_3();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6178, &qword_1C8BFAAB0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
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

void sub_1C89041C0()
{
  OUTLINED_FUNCTION_124();
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_1085();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  v10 = OUTLINED_FUNCTION_229_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v13 = OUTLINED_FUNCTION_890();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_212();
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0) - 8);
  v20 = *(*v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_27_0();
  v23 = v5(v22);
  v24 = *(v23 + 24);
  v25 = v19[14];
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  v26 = OUTLINED_FUNCTION_213();
  if (__swift_getEnumTagSinglePayload(v26, v27, v2) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v1 + v25, 1, v2) == 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_230();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v1 + v25, 1, v2) == 1)
  {
    sub_1C88E3C58();
LABEL_6:
    sub_1C8778ED8(v1, &unk_1EC2BAAB8, &qword_1C8BFA9D0);
LABEL_10:
    v31 = 0;
    goto LABEL_11;
  }

  sub_1C88E3EC4();
  OUTLINED_FUNCTION_91();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_828();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_104_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v32(*v0, *v7) & 1) == 0)
  {
    goto LABEL_10;
  }

  v28 = *(v23 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v29, v30);
  OUTLINED_FUNCTION_775();
  v31 = OUTLINED_FUNCTION_232_1();
LABEL_11:
  OUTLINED_FUNCTION_157(v31);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.value.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.value.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C896BB08();
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_554();
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.value.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
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

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.hasValue.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.clearValue()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C896BB08();
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.defaultValue.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.defaultValue.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C896BB08();
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.defaultValue.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.hasDefaultValue.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.clearDefaultValue()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C896BB08();
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8904F10()
{
  OUTLINED_FUNCTION_526();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = v0(v8);
  OUTLINED_FUNCTION_329_0(v9);
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v10);
  if (v11)
  {
    v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v12);
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.identifier.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.identifier.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_522_0();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_554();
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.identifier.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
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

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.hasIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.clearIdentifier()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_522_0();
    sub_1C89681C4();
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.inSet.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_6:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0) + 20);
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
    OUTLINED_FUNCTION_447(v11);
    v12 = OUTLINED_FUNCTION_887();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v12);
    v13 = OUTLINED_FUNCTION_27_1();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.inSet.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C89059D0()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = v1(0);
  v3 = OUTLINED_FUNCTION_716(v2);
  v0(v3);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = *(v2 + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.inSet.modify()
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
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_232_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_35_5(v15);
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_195_2();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v18 = *(v0 + 20);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_886();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v23);
  v24 = OUTLINED_FUNCTION_257_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C8905BA4(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_195_2();
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
    sub_1C8778ED8(v5, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_195_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.representableAs.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_194_0();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v11 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v11);
  return OUTLINED_FUNCTION_260_1(v12);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.representableAs.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.representableAs.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8905F48(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_194_0();
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
    sub_1C8778ED8(v5, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_194_0();
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

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.personReachableAs.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_800();
LABEL_8:
  OUTLINED_FUNCTION_1079(v10);
}

uint64_t sub_1C8906194(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_1C8778ED8(v4, a2, a3);
  *v4 = v6;
  *(v4 + 8) = v7;
  v8 = a4(0);
  OUTLINED_FUNCTION_92_0();
  swift_storeEnumTagMultiPayload();
  v9 = OUTLINED_FUNCTION_297_0();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.personReachableAs.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1147();
LABEL_8:
  *v0 = v12;
  *(v0 + 8) = v13;
  return OUTLINED_FUNCTION_687();
}

void sub_1C8906320()
{
  OUTLINED_FUNCTION_261();
  v2 = (*v0)[3];
  v1 = (*v0)[4];
  v3 = (*v0)[2];
  v4 = **v0;
  v5 = *(*v0 + 8);
  sub_1C8778ED8(v3, v6, v7);
  *v3 = v4;
  *(v3 + 8) = v5;
  OUTLINED_FUNCTION_168_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_319_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  free(v2);
  OUTLINED_FUNCTION_260();

  free(v12);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.dateExpressibleAs.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1147();
LABEL_8:
  *v0 = v12;
  *(v0 + 8) = v13;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.textTypedWith.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  *v0 = 0;
  *(v0 + 2) = 0;
  *(v0 + 8) = 0;
  return OUTLINED_FUNCTION_1044();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.textTypedWith.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_192_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  return OUTLINED_FUNCTION_1044();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.textTypedWith.modify()
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
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_232_2(v15);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_35_5(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    *v12 = 0;
    *(v12 + 2) = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 1;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    *(v12 + 40) = 0;
    *(v12 + 48) = 1;
    v19 = v12 + *(v0 + 40);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_192_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C89067F4(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_192_2();
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
    sub_1C8778ED8(v5, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_192_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v9 = OUTLINED_FUNCTION_987(v7, v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(v9);
  v11 = OUTLINED_FUNCTION_80(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v15 = OUTLINED_FUNCTION_546(v14);
  v45 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v15);
  v16 = OUTLINED_FUNCTION_21(v45);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v20 = OUTLINED_FUNCTION_507_0(v19);
  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v20);
  v22 = OUTLINED_FUNCTION_80(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_51_1();
  v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v26 = OUTLINED_FUNCTION_49_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_575();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_234_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC50, &qword_1C8BFAAC8);
  OUTLINED_FUNCTION_80(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_112_0();
  v38 = v0 + *(v37 + 56);
  sub_1C88E4144();
  sub_1C88E4144();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_194_0();
      OUTLINED_FUNCTION_1150();
      sub_1C88E3EC4();
      if (sub_1C87D2814(*v4, *v3))
      {
        OUTLINED_FUNCTION_1124(v45);
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v43, v44);
        OUTLINED_FUNCTION_1005();
      }

      OUTLINED_FUNCTION_869();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_300();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_249_1();
      sub_1C88E3C58();
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }

      v41 = *(v38 + 8);
      sub_1C87E4678(*v5, *(v5 + 8), *v38);
      goto LABEL_19;
    case 3u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      v42 = *(v38 + 8);
      sub_1C87E4678(*v1, *(v1 + 8), *v38);
      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_192_2();
        OUTLINED_FUNCTION_1035();
        sub_1C88E3EC4();
        v39 = OUTLINED_FUNCTION_253();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.== infix(_:_:)(v39, v40);
        sub_1C88E3C58();
        OUTLINED_FUNCTION_184();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_86_1();
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_703();
LABEL_15:
        sub_1C88E3C58();
LABEL_16:
        sub_1C8778ED8(v0, &qword_1EC2BAC50, &qword_1C8BFAAC8);
      }

      else
      {
        OUTLINED_FUNCTION_195_2();
        OUTLINED_FUNCTION_88();
        sub_1C88E3EC4();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.== infix(_:_:)(v2, v6);
        sub_1C88E3C58();
        OUTLINED_FUNCTION_271();
LABEL_18:
        sub_1C88E3C58();
LABEL_19:
        OUTLINED_FUNCTION_249_1();
        sub_1C88E3C58();
      }

LABEL_20:
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_0();
  if (*(v4 + 1) != *(v5 + 1))
  {
    return 0;
  }

  if (*(v3 + 2) != *(v2 + 2))
  {
    return 0;
  }

  v6 = *(v2 + 16);
  if (!sub_1C87E4678(*(v3 + 8), *(v3 + 16), *(v2 + 8)))
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_1129();
  if (!sub_1C87E4678(v7, v8, v9))
  {
    return 0;
  }

  v10 = *(v2 + 48);
  if (!sub_1C87E4678(*(v3 + 40), *(v3 + 48), *(v2 + 40)))
  {
    return 0;
  }

  v11 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0) + 40);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v12, v13);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C89072D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF358();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C890733C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF304();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.definition.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v7) + 20);
  OUTLINED_FUNCTION_439();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
    OUTLINED_FUNCTION_107_1(v11);
    OUTLINED_FUNCTION_18_2(dword_1EC2BAC70);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.definition.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BAC58, &qword_1C8BFAAD0);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.init()()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(v1);
  v3 = OUTLINED_FUNCTION_369_0(v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v3);
  OUTLINED_FUNCTION_702(v4);
  OUTLINED_FUNCTION_18_2(*(v0 + 24));
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.definition.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v14);
  OUTLINED_FUNCTION_368(*(v15 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
    OUTLINED_FUNCTION_457_0(v17);
    OUTLINED_FUNCTION_1020();
    OUTLINED_FUNCTION_777();
    *v18 = 0;
    v18[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8907624()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_521();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t sub_1C8907788()
{
  OUTLINED_FUNCTION_1087();
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = (v1)(v9);
  OUTLINED_FUNCTION_329_0(v10);
  OUTLINED_FUNCTION_626();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  v11 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v11);
  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *v2 = MEMORY[0x1E69E7CC0];
    v2[1] = v13;
    v14 = v2 + *(v1 + 24);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_941();
    v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(v15);
    OUTLINED_FUNCTION_456(v16);
    v17 = OUTLINED_FUNCTION_1070();
    v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v17);
    OUTLINED_FUNCTION_456(v18);
    v19 = OUTLINED_FUNCTION_1127();
    v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v19);
    OUTLINED_FUNCTION_456(v20);
    v21 = OUTLINED_FUNCTION_496();
    v22 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v21);
    OUTLINED_FUNCTION_456(v22);
    v23 = *(v1 + 44);
    v24 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(0);
    OUTLINED_FUNCTION_456(v24);
    v25 = *(v1 + 48);
    valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
    result = OUTLINED_FUNCTION_9_13(valid);
    if (!v12)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.templates.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAC0, &qword_1C8BFA9D8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.templates.modify()
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
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v9);
  OUTLINED_FUNCTION_29_5(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_243(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_168(v15);
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v16);
  OUTLINED_FUNCTION_312_0(v17);
  OUTLINED_FUNCTION_0_0();
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v19;
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v20 = *(v0 + 28);
    v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
    v22 = OUTLINED_FUNCTION_201_2(v21);
    v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v22);
    v24 = OUTLINED_FUNCTION_202_2(v23);
    v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v24);
    v26 = OUTLINED_FUNCTION_200_3(v25);
    v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v26);
    OUTLINED_FUNCTION_417(v27);
    v28 = OUTLINED_FUNCTION_1071();
    v29 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(v28);
    OUTLINED_FUNCTION_417(v29);
    v30 = *(v0 + 48);
    valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
    OUTLINED_FUNCTION_5_12(valid);
    if (!v18)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8907B3C()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 24)))
  {
    OUTLINED_FUNCTION_20(v3);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8907B84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.bundleIdentifier.setter();
}

uint64_t sub_1C8907BDC()
{
  v3 = OUTLINED_FUNCTION_68();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_24_0(*(v5 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8907CC8()
{
  v1 = OUTLINED_FUNCTION_167();
  v3 = v2(v1);
  result = OUTLINED_FUNCTION_25_2(*(v3 + 24));
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.dynamicEnumeration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_6:
    OUTLINED_FUNCTION_433();
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
    return OUTLINED_FUNCTION_979(v10);
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.dynamicEnumeration.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C8907EE0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  v2 = OUTLINED_FUNCTION_923(v1);
  v4 = v3(v2);
  return OUTLINED_FUNCTION_979(v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.dynamicEnumeration.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_191_1();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_568();
  OUTLINED_FUNCTION_795();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C8908040(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_191_1();
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
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_191_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_190_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v11 = OUTLINED_FUNCTION_402_0();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v11);
  OUTLINED_FUNCTION_702(v12);
  v13 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v13);
  v14 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_190_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_569();
    v17 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_190_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8908408(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_190_2();
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
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_190_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQuery.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v12 = OUTLINED_FUNCTION_1080(v11);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v12);
  return OUTLINED_FUNCTION_1016(v13);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQuery.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = OUTLINED_FUNCTION_1080(v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v3);
  return OUTLINED_FUNCTION_1016(v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQuery.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_1112(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C89087BC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_349_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_996();
}

uint64_t sub_1C8908988(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.setter();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.setter()
{
  OUTLINED_FUNCTION_731();
  sub_1C8778ED8(v1, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  *v1 = v2;
  v1[1] = v0;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_14_1();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
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

void sub_1C8908B24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = (*a1)[1];

    sub_1C8778ED8(v7, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_184();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    v13 = v2[1];
  }

  else
  {
    sub_1C8778ED8((*a1)[2], &qword_1EC2BAC68, &qword_1C8BFAAE0);
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_184();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  free(v5);

  free(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQueryOnParameter.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v12 = OUTLINED_FUNCTION_1080(v11);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v12);
  return OUTLINED_FUNCTION_1016(v13);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQueryOnParameter.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQueryOnParameter.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_1112(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8908E80(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_349_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_987(v3, v4);
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v5);
  v7 = OUTLINED_FUNCTION_80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_96();
  v12 = OUTLINED_FUNCTION_546(v11);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_33();
  v17 = OUTLINED_FUNCTION_402();
  v52 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(v17);
  v18 = OUTLINED_FUNCTION_21(v52);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_115_3(v21, v52);
  v22 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v23 = OUTLINED_FUNCTION_229_2(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_557();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_547();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAC70, &qword_1C8BFAAE8);
  OUTLINED_FUNCTION_80(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_112_0();
  v35 = (v0 + *(v34 + 56));
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_377();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_190_2();
      OUTLINED_FUNCTION_522();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_230();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)();
      sub_1C88E3C58();
      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_1035();
      sub_1C88E3EC4();
      v38 = OUTLINED_FUNCTION_253();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v38, v39);
      OUTLINED_FUNCTION_864();
      sub_1C88E3C58();
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      v41 = *v2;
      v40 = v2[1];
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_22;
      }

      v42 = *v35;
      v43 = v35[1];
      v44 = v41 == v42 && v40 == v43;
      if (!v44)
      {
        OUTLINED_FUNCTION_184();
        sub_1C8BD529C();
        OUTLINED_FUNCTION_511();
      }

      goto LABEL_36;
    case 4u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_18:
        OUTLINED_FUNCTION_349_0();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_43_7();
      sub_1C88E3EC4();
      v36 = OUTLINED_FUNCTION_220();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v36, v37);
      OUTLINED_FUNCTION_864();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_271();
LABEL_17:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_189_2();
      sub_1C88E3C58();
      break;
    default:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_169();
LABEL_21:
        sub_1C88E3C58();
LABEL_22:
        sub_1C8778ED8(v0, &dword_1EC2BAC70, &qword_1C8BFAAE8);
      }

      else
      {
        OUTLINED_FUNCTION_191_1();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_1046();
        v47 = v44 && v45 == v46;
        if (v47 || (sub_1C8BD529C() & 1) != 0)
        {
          v48 = *(v1 + 16) == *(v54 + 16) && *(v1 + 24) == *(v54 + 24);
          if (v48 || (sub_1C8BD529C() & 1) != 0)
          {
            v49 = *(v53 + 24);
            sub_1C8BD49FC();
            OUTLINED_FUNCTION_1_14();
            sub_1C8776818(v50, v51);
            OUTLINED_FUNCTION_1005();
          }
        }

        OUTLINED_FUNCTION_863();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_300();
        sub_1C88E3C58();
LABEL_36:
        OUTLINED_FUNCTION_189_2();
        sub_1C88E3C58();
      }

      break;
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v5);
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
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC80, &qword_1C8BFAAF8);
  OUTLINED_FUNCTION_223_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_103();
  v29 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v20 = *(v29 + 24);
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
      OUTLINED_FUNCTION_29_6();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.== infix(_:_:)();
      v25 = v24;
      sub_1C88E3C58();
      OUTLINED_FUNCTION_229();
      sub_1C88E3C58();
      sub_1C8778ED8(v1, &qword_1EC2BAC78, &qword_1C8BFAAF0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BAC80, &qword_1C8BFAAF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_6(v1 + v21);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2BAC78, &qword_1C8BFAAF0);
LABEL_12:
  v26 = *v0 == *v4 && v0[1] == v4[1];
  if (v26 || (sub_1C8BD529C() & 1) != 0)
  {
    OUTLINED_FUNCTION_255(v29);
    OUTLINED_FUNCTION_1_14();
    sub_1C8776818(v27, v28);
    OUTLINED_FUNCTION_775();
    v23 = OUTLINED_FUNCTION_232_1();
    goto LABEL_18;
  }

LABEL_10:
  v23 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_85_2(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_646();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1055();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  OUTLINED_FUNCTION_1123(v11);
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v12, v13);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v7) + 24);
  OUTLINED_FUNCTION_439();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
    OUTLINED_FUNCTION_107_1(v11);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAC78, &qword_1C8BFAAF0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8909B34()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8909D78()
{
  v0 = OUTLINED_FUNCTION_782();
  v2 = *(v1(v0) + 28);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_130_1();

  return v7(v6);
}

uint64_t sub_1C8909DFC()
{
  v0 = OUTLINED_FUNCTION_241();
  v2 = *(v1(v0) + 28);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_167_1();

  return v7(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v0) + 28);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.keyboardType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_527(a1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.keyboardType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.capitalizationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_527(a1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.capitalizationType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_1C890A068()
{
  v0 = OUTLINED_FUNCTION_782();
  v2 = *(v1(v0) + 40);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_130_1();

  return v7(v6);
}

uint64_t sub_1C890A0EC()
{
  v0 = OUTLINED_FUNCTION_241();
  v2 = *(v1(v0) + 40);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_167_1();

  return v7(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(v0) + 40);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C890A1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC10C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C890A224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC0B8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C890A288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC160();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.regularContentItemClass.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
    return OUTLINED_FUNCTION_996();
  }

  OUTLINED_FUNCTION_218();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    return OUTLINED_FUNCTION_996();
  }

  result = *v0;
  v10 = v0[1];
  return result;
}

uint64_t sub_1C890A458(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.regularContentItemClass.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.regularContentItemClass.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = *v1;
      v13 = v1[1];
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_14_1();
LABEL_7:
  *v0 = v12;
  v0[1] = v13;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.linkEntityContentItemClass.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_186_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(0);
  return OUTLINED_FUNCTION_979(v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.linkEntityContentItemClass.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.linkEntityContentItemClass.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_795();
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

  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C890A85C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAC88, &qword_1C8BFAB00);
    OUTLINED_FUNCTION_186_1();
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
    sub_1C8778ED8(v5, &qword_1EC2BAC88, &qword_1C8BFAB00);
    OUTLINED_FUNCTION_186_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.linkEnumContentItemClass.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_122_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_185_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(0);
  return OUTLINED_FUNCTION_979(v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.linkEnumContentItemClass.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
  OUTLINED_FUNCTION_185_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.linkEnumContentItemClass.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(v8);
  OUTLINED_FUNCTION_40_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_795();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_185_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C890ABFC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BAC88, &qword_1C8BFAB00);
    OUTLINED_FUNCTION_185_1();
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
    sub_1C8778ED8(v5, &qword_1EC2BAC88, &qword_1C8BFAB00);
    OUTLINED_FUNCTION_185_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_17();
  v47 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(v4);
  v5 = OUTLINED_FUNCTION_21(v47);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v48 = v8;
  v9 = OUTLINED_FUNCTION_86();
  v46 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(v9);
  v10 = OUTLINED_FUNCTION_21(v46);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_5_4();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(v13);
  v15 = OUTLINED_FUNCTION_229_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_919();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC90, &qword_1C8BFAB08);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_112_0();
  v28 = (v0 + *(v27 + 56));
  sub_1C88E4144();
  OUTLINED_FUNCTION_890();
  sub_1C88E4144();
  OUTLINED_FUNCTION_377();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_463_0();
      sub_1C88E4144();
      OUTLINED_FUNCTION_223_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_186_1();
        OUTLINED_FUNCTION_1022();
        sub_1C88E3EC4();
        v30 = *v2 == *v1 && v2[1] == v1[1];
        if (v30 || (sub_1C8BD529C() & 1) != 0)
        {
          v31 = v2[2] == v1[2] && v2[3] == v1[3];
          if (v31 || (sub_1C8BD529C() & 1) != 0)
          {
            v32 = *(v46 + 24);
            sub_1C8BD49FC();
            OUTLINED_FUNCTION_1_14();
            sub_1C8776818(v33, v34);
            sub_1C8BD517C();
          }
        }

        OUTLINED_FUNCTION_856();
        sub_1C88E3C58();
LABEL_40:
        sub_1C88E3C58();
LABEL_41:
        OUTLINED_FUNCTION_246_1();
        sub_1C88E3C58();
        goto LABEL_42;
      }
    }

    else
    {
      OUTLINED_FUNCTION_463_0();
      sub_1C88E4144();
      OUTLINED_FUNCTION_223_1();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_185_1();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_1046();
        v39 = v30 && v37 == v38;
        if (v39 || (sub_1C8BD529C() & 1) != 0)
        {
          v40 = *(v20 + 16) == *(v48 + 16) && *(v20 + 24) == *(v48 + 24);
          if (v40 || (sub_1C8BD529C() & 1) != 0)
          {
            v41 = *(v47 + 24);
            sub_1C8BD49FC();
            OUTLINED_FUNCTION_1_14();
            sub_1C8776818(v42, v43);
            OUTLINED_FUNCTION_1005();
          }
        }

        OUTLINED_FUNCTION_855();
        sub_1C88E3C58();
        goto LABEL_40;
      }
    }

    sub_1C88E3C58();
  }

  else
  {
    OUTLINED_FUNCTION_463_0();
    sub_1C88E4144();
    v36 = *v3;
    v35 = v3[1];
    OUTLINED_FUNCTION_223_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v36 == *v28 && v35 == v28[1])
      {
        v45 = v28[1];
      }

      else
      {
        OUTLINED_FUNCTION_82_3();
        sub_1C8BD529C();
      }

      goto LABEL_41;
    }
  }

  sub_1C8778ED8(v0, &qword_1EC2BAC90, &qword_1C8BFAB08);
LABEL_42:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.property.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5300 != -1)
    {
      OUTLINED_FUNCTION_418();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAC98, &qword_1C8BFAB10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.property.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8978FA8(v11);
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.property.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B5300 != -1)
    {
      OUTLINED_FUNCTION_418();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAC98, &qword_1C8BFAB10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.hasProperty.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.clearProperty()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8978FA8(v11);
    OUTLINED_FUNCTION_264_1(v12);
  }

  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  OUTLINED_FUNCTION_156_2(v13);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.comparison.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5640 != -1)
    {
      OUTLINED_FUNCTION_917();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &unk_1EC2BACA8, &qword_1C8BFAB18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_347_0();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.comparison.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8978FA8(v11);
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_347_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.comparison.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B5640 != -1)
    {
      OUTLINED_FUNCTION_917();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &unk_1EC2BACA8, &qword_1C8BFAB18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_318_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.hasComparison.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.clearComparison()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8978FA8(v11);
    OUTLINED_FUNCTION_264_1(v12);
  }

  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  OUTLINED_FUNCTION_156_2(v13);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.rawGroupID.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(0) + 20)) + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  OUTLINED_FUNCTION_438();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_5_0();
}

void sub_1C890BD88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.rawGroupID.setter();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.rawGroupID.setter()
{
  OUTLINED_FUNCTION_533();
  v4 = OUTLINED_FUNCTION_68();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v4);
  v6 = OUTLINED_FUNCTION_41_1(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8978FA8(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  v11 = (v7 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  OUTLINED_FUNCTION_36_0();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.rawGroupID.modify()
{
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_570(v2);
  v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v3) + 20);
  v2[18] = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_380();
  v6 = v0[1];
  *(v2 + 6) = *v0;
  *(v2 + 7) = v6;

  return OUTLINED_FUNCTION_12();
}

void sub_1C890BEC4(uint64_t a1)
{
  OUTLINED_FUNCTION_732(a1);
  if (v4)
  {
    OUTLINED_FUNCTION_1166();
    OUTLINED_FUNCTION_184();
    Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.rawGroupID.setter();
    v5 = *(v1 + 56);
  }

  else
  {
    v6 = *(v1 + 72);
    v7 = *(v1 + 64);
    v8 = *(v7 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
      OUTLINED_FUNCTION_218_2(v13);
      swift_allocObject();
      v14 = OUTLINED_FUNCTION_2();
      v10 = sub_1C8978FA8(v14);
      *(v12 + v11) = v10;
    }

    v15 = (v10 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
    OUTLINED_FUNCTION_36_0();
    v16 = v15[1];
    *v15 = v3;
    v15[1] = v2;
  }

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.contentItemClass.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
    OUTLINED_FUNCTION_107_1(v11);
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.contentItemClass.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8978FA8(v11);
    OUTLINED_FUNCTION_40(v12);
  }

  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  v13 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.contentItemClass.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v8);
  OUTLINED_FUNCTION_48_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v14);
  OUTLINED_FUNCTION_215_1(v15);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
    OUTLINED_FUNCTION_457_0(v17);
    OUTLINED_FUNCTION_1020();
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.hasContentItemClass.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.clearContentItemClass()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8978FA8(v11);
    OUTLINED_FUNCTION_264_1(v12);
  }

  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_156_2(v13);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.comparisonKind.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(v2);
  v4 = OUTLINED_FUNCTION_436(v3);
  v5 = *(v0 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_264_1(v6);
  }

  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.comparisonKind.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_1135(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_926(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(v10);
  OUTLINED_FUNCTION_571(v11);
  OUTLINED_FUNCTION_1015();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_1088();
  OUTLINED_FUNCTION_260();
}

void sub_1C890C5CC(uint64_t *a1, char a2)
{
  v5 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_1134();
    OUTLINED_FUNCTION_271();
    OUTLINED_FUNCTION_382();
    sub_1C89CBE2C();
    Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.comparisonKind.setter();
    v6 = OUTLINED_FUNCTION_220();
    sub_1C8778ED8(v6, v7, &qword_1C8BFAB20);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1014();
    v9 = *&v3[v2];
    if ((v8 & 1) == 0)
    {
      v10 = *(v5 + 72);
      v11 = *(v5 + 48);
      OUTLINED_FUNCTION_553();
      OUTLINED_FUNCTION_27_7();
      sub_1C89681C4();
      OUTLINED_FUNCTION_1153(v12);
    }

    v4 = *(v5 + 56);
    v3 = *(v5 + 64);
    OUTLINED_FUNCTION_23();
    swift_beginAccess();
    OUTLINED_FUNCTION_1165();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v5);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.notEqualTo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.notEqualTo.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.notEqualTo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_9:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.equalTo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.equalTo.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.equalTo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.hasValue_p.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v11 = sub_1C8BD47CC();
      OUTLINED_FUNCTION_121_0(v11);
      v13 = *(v12 + 32);
      v14 = OUTLINED_FUNCTION_312();
      return v15(v14);
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  v17 = *MEMORY[0x1E69AA8D8];
  v18 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_218();
  return v22(v21);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.hasValue_p.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_1117(v8);
  v1[5] = v9;
  OUTLINED_FUNCTION_13_1(v9);
  v1[6] = v10;
  v12 = *(v11 + 64);
  v1[7] = __swift_coroFrameAllocStub(v12);
  v1[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_254_2();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_938();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACD0, &qword_1C8BFAB20);
LABEL_7:
    v17 = *MEMORY[0x1E69AA8D8];
    v18 = OUTLINED_FUNCTION_1056();
    v19(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_82_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_284_0();
  v16(v15);
LABEL_8:
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.hasNoValue_p.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v11 = sub_1C8BD47CC();
      OUTLINED_FUNCTION_121_0(v11);
      v13 = *(v12 + 32);
      v14 = OUTLINED_FUNCTION_312();
      return v15(v14);
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  v17 = *MEMORY[0x1E69AA8D8];
  v18 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_218();
  return v22(v21);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.hasNoValue_p.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_1117(v8);
  v1[5] = v9;
  OUTLINED_FUNCTION_13_1(v9);
  v1[6] = v10;
  v12 = *(v11 + 64);
  v1[7] = __swift_coroFrameAllocStub(v12);
  v1[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_254_2();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_938();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACD0, &qword_1C8BFAB20);
LABEL_7:
    v17 = *MEMORY[0x1E69AA8D8];
    v18 = OUTLINED_FUNCTION_1056();
    v19(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_82_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_284_0();
  v16(v15);
LABEL_8:
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

void sub_1C890D434()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 64);
  if (v6)
  {
    v7 = v3[6];
    v8 = v3[3];
    v9 = v3[4];
    v10 = *(v7 + 16);
    v11 = *(*v0 + 56);
    OUTLINED_FUNCTION_607();
    v12();
    v2(v4);
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_315();
    v15(v14);
  }

  else
  {
    v16 = v3[3];
    v9 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v9);
  OUTLINED_FUNCTION_260();

  free(v17);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.greaterThan.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.greaterThan.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.greaterThan.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.greaterThanOrEqualTo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.greaterThanOrEqualTo.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.greaterThanOrEqualTo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.lessThan.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.lessThan.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.lessThan.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.lessThanOrEqualTo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.lessThanOrEqualTo.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.lessThanOrEqualTo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.contains.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.contains.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.contains.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.notContains.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.notContains.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.notContains.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.beginsWith.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.beginsWith.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.beginsWith.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.endsWith.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.endsWith.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.endsWith.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.inTheNext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.inTheNext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.inTheNext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.inTheLast.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_662();
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(a1 + v1) = qword_1EC2B9670;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.inTheLast.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.inTheLast.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_106_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_221_2(v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B5360 != -1)
  {
    OUTLINED_FUNCTION_59_7();
  }

  *(v10 + v17) = qword_1EC2B9670;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.isToday.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      v11 = sub_1C8BD47CC();
      OUTLINED_FUNCTION_121_0(v11);
      v13 = *(v12 + 32);
      v14 = OUTLINED_FUNCTION_312();
      return v15(v14);
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  v17 = *MEMORY[0x1E69AA8D8];
  v18 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0(v18);
  v20 = *(v19 + 104);
  v21 = OUTLINED_FUNCTION_218();
  return v22(v21);
}

uint64_t sub_1C890FB68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    *(v1 + v7) = v11;
  }

  v12 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0(v12);
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_312();
  v16(v15);
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_312();
  swift_storeEnumTagMultiPayload();
  v18 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.isToday.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_1117(v8);
  v1[5] = v9;
  OUTLINED_FUNCTION_13_1(v9);
  v1[6] = v10;
  v12 = *(v11 + 64);
  v1[7] = __swift_coroFrameAllocStub(v12);
  v1[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_254_2();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_938();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v13)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACD0, &qword_1C8BFAB20);
LABEL_7:
    v17 = *MEMORY[0x1E69AA8D8];
    v18 = OUTLINED_FUNCTION_1056();
    v19(v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_82_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_284_0();
  v16(v15);
LABEL_8:
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.isBetween.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_406_0(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_46_2(v10);
  if (v11)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_343_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v14 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(0) + 20);
  if (qword_1EC2B5658 != -1)
  {
    OUTLINED_FUNCTION_914();
  }

  *(a1 + v14) = qword_1EC2B9D90;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.isBetween.setter()
{
  OUTLINED_FUNCTION_31_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD0, &qword_1C8BFAB20);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = OUTLINED_FUNCTION_793(v7);
  v9 = *(v0 + v2);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_553();
    OUTLINED_FUNCTION_27_7();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_343_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_271_0();
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.isBetween.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v9);
  OUTLINED_FUNCTION_40_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_714(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_221_2(v15);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(0);
  OUTLINED_FUNCTION_70_4(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACD0, &qword_1C8BFAB20);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_343_0();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_16();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EC2B5658 != -1)
  {
    OUTLINED_FUNCTION_914();
  }

  *(v12 + v19) = qword_1EC2B9D90;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v26;
  a20 = v27;
  v216 = v28;
  v29 = OUTLINED_FUNCTION_810();
  v208 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v29);
  v30 = OUTLINED_FUNCTION_21(v208);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v210 = v33;
  OUTLINED_FUNCTION_86();
  v34 = sub_1C8BD47CC();
  v35 = OUTLINED_FUNCTION_13_1(v34);
  v213 = v36;
  v214 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_10_0();
  v207 = v39;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_96();
  v43 = OUTLINED_FUNCTION_63_0(v42);
  v215 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v43);
  v44 = OUTLINED_FUNCTION_21(v215);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_10_0();
  v209 = v47;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_96();
  v60 = OUTLINED_FUNCTION_63_0(v59);
  v61 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind(v60);
  v62 = OUTLINED_FUNCTION_229_2(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_10_0();
  v212 = v65;
  OUTLINED_FUNCTION_83_0();
  v67 = MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_395_0(v67, v68, v69, v70, v71, v72, v73, v74, v197);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_432();
  v77 = MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_451_0(v77, v78, v79, v80, v81, v82, v83, v84, v198);
  v86 = MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_454(v86, v87, v88, v89, v90, v91, v92, v93, v199);
  v95 = MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_397_0(v95, v96, v97, v98, v99, v100, v101, v102, v200);
  v104 = MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_396(v104, v105, v106, v107, v108, v109, v110, v111, v201);
  v113 = MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_394_0(v113, v114, v115, v116, v117, v118, v119, v120, v202);
  v122 = MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_393_0(v122, v123, v124, v125, v126, v127, v128, v129, v203);
  v131 = MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_398_0(v131, v132, v133, v134, v135, v136, v137, v138, v204);
  v140 = MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_453_0(v140, v141, v142, v143, v144, v145, v146, v147, v205);
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_234_0();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BACD8, &qword_1C8BFAB28);
  OUTLINED_FUNCTION_80(v153);
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_278_1();
  v158 = *(v157 + 56);
  sub_1C88E4144();
  v159 = v158;
  sub_1C88E4144();
  OUTLINED_FUNCTION_216();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_257(&v218);
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_983();
      if (*(v20 + v186) == *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind + v186))
      {
        goto LABEL_33;
      }

      v187 = *(v20 + v186);

      OUTLINED_FUNCTION_92_0();
      sub_1C8952AB8();
      OUTLINED_FUNCTION_985();

      if (v23)
      {
LABEL_33:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v188, v189);
        OUTLINED_FUNCTION_224_0();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_844();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_218();
      goto LABEL_67;
    case 2u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_20;
      }

      v160 = v213;
      OUTLINED_FUNCTION_154_1();
      v162 = v21 + v159;
      v163 = v206;
      goto LABEL_19;
    case 3u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_981();
        v179 = OUTLINED_FUNCTION_1024();
        v180(v179);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v181, v182);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_913();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v183 = *(v213 + 8);
        v184 = OUTLINED_FUNCTION_666();
        v183(v184);
        OUTLINED_FUNCTION_645();
        v185 = OUTLINED_FUNCTION_253();
        v183(v185);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_989();
      v175 = v23;
      goto LABEL_58;
    case 4u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      OUTLINED_FUNCTION_231(&v219);
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_983();
      if (*(v25 + v165) == *(v158 + v165) || (v166 = *(v25 + v165), , , OUTLINED_FUNCTION_218(), sub_1C8952AB8(), OUTLINED_FUNCTION_1092(), , (v22 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v167, v168);
        OUTLINED_FUNCTION_1037();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_341_0();
      sub_1C88E3C58();
      goto LABEL_52;
    case 5u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a9;
      goto LABEL_45;
    case 6u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a10;
      goto LABEL_45;
    case 7u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a11;
      goto LABEL_45;
    case 8u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a12;
      goto LABEL_45;
    case 9u:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a13;
      goto LABEL_45;
    case 0xAu:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a14;
      goto LABEL_45;
    case 0xBu:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a16;
      goto LABEL_45;
    case 0xCu:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
      v164 = &a18;
LABEL_45:
      v190 = *(v164 - 32);
      goto LABEL_46;
    case 0xDu:
      OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_1010();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_5_16();
      OUTLINED_FUNCTION_854();
LABEL_46:
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_902(v215);
      if (v176 || (, , OUTLINED_FUNCTION_218(), sub_1C8952AB8(), OUTLINED_FUNCTION_1092(), , (v22 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v191, v192);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
      }

      goto LABEL_51;
    case 0xEu:
      OUTLINED_FUNCTION_22_10();
      v24 = v211;
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v160 = v213;
        OUTLINED_FUNCTION_154_1();
        v162 = v21 + v159;
        v163 = v207;
LABEL_19:
        v161(v163, v162, v214);
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v169, v170);
        OUTLINED_FUNCTION_524_0();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_912();
        OUTLINED_FUNCTION_121();
        sub_1C8BD51EC();
        v171 = *(v160 + 8);
        v172 = OUTLINED_FUNCTION_260_0();
        v171(v172);
        OUTLINED_FUNCTION_645();
        v173 = OUTLINED_FUNCTION_246();
        v171(v173);
LABEL_27:
        OUTLINED_FUNCTION_9_16();
        sub_1C88E3C58();
        goto LABEL_54;
      }

LABEL_20:
      OUTLINED_FUNCTION_989();
      v175 = v24;
LABEL_58:
      v174(v175, v214);
      goto LABEL_50;
    case 0xFu:
      OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_1140();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_343_0();
      OUTLINED_FUNCTION_854();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_902(v208);
      if (v176 || (, , OUTLINED_FUNCTION_218(), sub_1C8983198(), OUTLINED_FUNCTION_1092(), , (v22 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v177, v178);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
      }

LABEL_51:
      sub_1C88E3C58();
LABEL_52:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_9_16();
      goto LABEL_53;
    default:
      OUTLINED_FUNCTION_22_10();
      sub_1C88E4144();
      OUTLINED_FUNCTION_639();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        OUTLINED_FUNCTION_515_0();
LABEL_49:
        sub_1C88E3C58();
LABEL_50:
        sub_1C8778ED8(v21, &qword_1EC2BACD8, &qword_1C8BFAB28);
      }

      else
      {
        OUTLINED_FUNCTION_5_16();
        OUTLINED_FUNCTION_257(&v217);
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_983();
        if (*(v22 + v193) == *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.OneOf_ComparisonKind + v193))
        {
          goto LABEL_62;
        }

        v194 = *(v22 + v193);

        OUTLINED_FUNCTION_218();
        sub_1C8952AB8();
        OUTLINED_FUNCTION_511();

        if (v23)
        {
LABEL_62:
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_1_14();
          sub_1C8776818(v195, v196);
          OUTLINED_FUNCTION_156_1();
          sub_1C8BD517C();
        }

        OUTLINED_FUNCTION_341_0();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_196_0();
LABEL_67:
        sub_1C88E3C58();
        OUTLINED_FUNCTION_9_16();
LABEL_53:
        sub_1C88E3C58();
      }

LABEL_54:
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.first.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.first.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C89828EC();
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.first.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.hasFirst.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.clearFirst()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C89828EC();
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.second.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v9);
  OUTLINED_FUNCTION_215_1(v10);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_46_2(v11);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7();
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.second.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C89828EC();
    OUTLINED_FUNCTION_40(v11);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v12 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.second.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v9);
  OUTLINED_FUNCTION_48_5(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v15);
  OUTLINED_FUNCTION_215_1(v16);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7();
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.hasSecond.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v6);
  OUTLINED_FUNCTION_215_1(v7);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair.clearSecond()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair(v6);
  v8 = OUTLINED_FUNCTION_436(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Pair._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v11 = sub_1C89828EC();
    OUTLINED_FUNCTION_264_1(v11);
  }

  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_156_2(v12);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.equalTo.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.equalTo.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.equalTo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_9;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_9:
  OUTLINED_FUNCTION_260();
}

void sub_1C8911CF0(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.notEqualTo.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.notEqualTo.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.notEqualTo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C89120B8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.hasValue_p.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.hasNoValue_p.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
LABEL_7:
    v20 = *MEMORY[0x1E69AA8D8];
    v21 = OUTLINED_FUNCTION_290_1();
    v22(v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.greaterThan.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.greaterThan.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.greaterThan.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C8912850(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.greaterThanOrEqualTo.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.greaterThanOrEqualTo.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.greaterThanOrEqualTo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C8912C18(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.lessThan.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.lessThan.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.lessThan.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C8912FE0(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.lessThanOrEqualTo.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.lessThanOrEqualTo.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.lessThanOrEqualTo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C89133A8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.contains.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.contains.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.contains.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C8913770(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.notContains.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.notContains.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.notContains.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C8913B38(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.beginsWith.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.beginsWith.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.beginsWith.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C8913F00(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.endsWith.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.endsWith.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BACF0, &qword_1C8BFAB30);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_273_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.endsWith.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_82_6(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v10 + v17) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C89142C8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_11_15();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2BACF0, &qword_1C8BFAB30);
    OUTLINED_FUNCTION_2_20();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.inTheNext.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_122_2();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison.Template.OneOf_ComparisonTemplateKind(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BACF0, &qword_1C8BFAB30);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_616();
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7();
  }

  *(v0 + v1) = qword_1EC2B9A20;
}