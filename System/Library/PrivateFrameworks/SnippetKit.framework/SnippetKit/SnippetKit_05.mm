uint64_t TertiaryHeaderStandard.action.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *(type metadata accessor for _ProtoTertiaryHeader_Standard() + 28);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v31;
  sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v22 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v22, v23, v1);
    if (v24)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      v25 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v26 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v26, v27, v1);
      if (!v24)
      {
        sub_26A0E48F0(v14, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A132288();
    }

    sub_26A132288();
    v19 = 0;
  }

  v28 = type metadata accessor for ActionProperty();
  return __swift_storeEnumTagSinglePayload(v21, v19, 1, v28);
}

uint64_t TertiaryHeaderStandard.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoTertiaryHeader_Standard.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v71);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v70 = (v5 - v6);
  MEMORY[0x28223BE20](v7);
  v69 = (&v67 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v68 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = type metadata accessor for _ProtoTextProperty(0);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17();
  v67 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  OUTLINED_FUNCTION_0_9();
  sub_26A132234();
  v72 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v37 = *(v72 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v18);
  sub_26A0E48F0(v36, &qword_28036C7B8, &unk_26A425BF0);
  v39 = MEMORY[0x277D84F90];
  v40 = EnumTagSinglePayload == 1;
  v41 = v71;
  if (!v40)
  {
    sub_26A10FD9C();
    v42 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v42, v43, v18);
    if (v40)
    {
      *v26 = v39;
      *(v26 + 4) = 0;
      v44 = &v26[v18[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v45 = v18[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v41);
      v49 = v18[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v41);
      v53 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v53, v54, v18);
      if (!v40)
      {
        sub_26A0E48F0(v33, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A132288();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A1322DC(v26, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v37, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A132288();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v18);
  }

  v58 = *(v72 + 28);
  sub_26A10FD9C();
  v59 = __swift_getEnumTagSinglePayload(v17, 1, v41);
  result = sub_26A0E48F0(v17, &off_28036C7C0, &off_26A427400);
  if (v59 != 1)
  {
    v61 = v68;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v61, 1, v41);
    if (v40)
    {
      v63 = v69;
      *v69 = v39;
      *(v63 + 8) = 0;
      *(v63 + 16) = 0xE000000000000000;
      v62 = v63 + *(v41 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v61, 1, v41);
      if (!v40)
      {
        sub_26A0E48F0(v61, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v63 = v69;
      sub_26A132288();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v70);
    sub_26A1322DC(v63, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v58, &off_28036C7C0, &off_26A427400);
    sub_26A132288();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v64, v65, v66, v41);
  }

  return result;
}

uint64_t TertiaryHeaderStandard.init(text1:action:componentName:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for _ProtoTertiaryHeader_Standard();
  OUTLINED_FUNCTION_4_8();
  sub_26A1325AC(v4, v5);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A131998(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v32[3] = a3;
  v7 = type metadata accessor for ActionProperty();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - v11;
  v33 = type metadata accessor for _ProtoActionProperty();
  v13 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v32[2] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v32[1] = v32 - v16;
  v17 = type metadata accessor for _ProtoTextProperty(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = type metadata accessor for TextProperty(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  (*(v22 + 8))(v21, v22);
  sub_26A132288();
  v23 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v24 = *(v23 + 24);
  sub_26A0E48F0(a1 + v24, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A132288();
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v17);
  sub_26A10FD9C();
  v25 = v37;
  if (!v37)
  {
    sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v33);
    goto LABEL_5;
  }

  v26 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  (*(v26 + 8))(v25, v26);
  sub_26A132288();
  v27 = v33;
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (__swift_getEnumTagSinglePayload(v12, 1, v27) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A132288();
  sub_26A132288();
  v28 = *(v23 + 28);
  sub_26A0E48F0(a1 + v28, &off_28036C7C0, &off_26A427400);
  sub_26A132288();
  __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v27);
LABEL_6:
  v29 = a1[1];
  v30 = v35;

  *a1 = v34;
  a1[1] = v30;
  return result;
}

uint64_t TertiaryHeaderStandard.init(text1:action:)(uint64_t *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoTertiaryHeader_Standard();
  OUTLINED_FUNCTION_4_8();
  sub_26A1325AC(v4, v5);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall TertiaryHeaderStandard.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = v42 - v12;
  v14 = type metadata accessor for TertiaryHeaderStandard();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D010, &qword_26A426C38);
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  v29 = v42 - v28;
  OUTLINED_FUNCTION_3_7();
  sub_26A132234();
  if (redacted)
  {
    _ProtoTertiaryHeader_Standard.redactedProto.getter(v20);
  }

  else
  {
    sub_26A132234();
  }

  sub_26A132288();
  v29[*(v24 + 32)] = redacted;
  sub_26A1322DC(v23, type metadata accessor for TertiaryHeaderStandard);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  TertiaryHeaderStandard.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  sub_26A1047AC();
  sub_26A0E48F0(v13, &qword_28036CB30, &qword_26A426480);
  TertiaryHeaderStandard.action.getter(v7);
  sub_26A1046A8();
  sub_26A0E48F0(v7, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7700(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v35, v36, v37, v38, v42[0], v42[1]);

  sub_26A0FA494();
  sub_26A0E48F0(v29, &qword_28036D010, &qword_26A426C38);
  v39 = OUTLINED_FUNCTION_175();
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t type metadata accessor for TertiaryHeaderStandard()
{
  result = qword_28036D2D8;
  if (!qword_28036D2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A132234()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A132288()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A1322DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t TertiaryHeaderStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTertiaryHeader_Standard();
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
  OUTLINED_FUNCTION_0_9();
  sub_26A132234();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_5();
  sub_26A132288();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t TertiaryHeaderStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for TertiaryHeaderStandard();
  *(inited + 64) = &protocol witness table for TertiaryHeaderStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_7();
  sub_26A132234();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1325AC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A1325AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A132664()
{
  result = type metadata accessor for _ProtoTertiaryHeader_Standard();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return type metadata accessor for _ProtoTertiaryHeader_Standard();
}

uint64_t _ProtoVisualProperty.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v2 = type metadata accessor for _ProtoVisualProperty();
  v3 = a1 + v2[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = v2[8];
  v5 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[9];
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

uint64_t type metadata accessor for _ProtoVisualProperty()
{
  result = qword_2815796A0;
  if (!qword_2815796A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoVisualProperty.visuals.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t _ProtoVisualProperty.focusAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20]();
  v3 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v3 + 32));
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v5, v6, v4);
  if (v7)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    v8 = OUTLINED_FUNCTION_71();
    result = OUTLINED_FUNCTION_37(v8, v9, v4);
    if (!v7)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_44();
    return sub_26A132A04(v10, v11);
  }

  return result;
}

uint64_t sub_26A132994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A132A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoActionProperty();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoVisualProperty.focusAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty() + 32);
  sub_26A13440C();
  sub_26A132A04(a1, v1 + v3);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*_ProtoVisualProperty.focusAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoVisualProperty() + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_12_5(v11);
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A132A04(v6, v10);
  }

  return sub_26A132C28;
}

uint64_t sub_26A132C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoActionProperty();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A132C90(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoActionProperty();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ProtoVisualProperty.hasFocusAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v4 + 32));
  type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v9;
}

Swift::Void __swiftcall _ProtoVisualProperty.clearFocusAction()()
{
  v0 = *(type metadata accessor for _ProtoVisualProperty() + 32);
  sub_26A13440C();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoVisualProperty.selectedAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v4 + 36));
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v6, v7, v5);
  if (v8)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    v9 = OUTLINED_FUNCTION_71();
    result = OUTLINED_FUNCTION_37(v9, v10, v5);
    if (!v8)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44();
    return sub_26A132A04(v11, v12);
  }

  return result;
}

uint64_t sub_26A132EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for _ProtoActionProperty();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A132C2C(a1, v12);
  return a5(v12);
}

uint64_t _ProtoVisualProperty.selectedAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty() + 36);
  sub_26A13440C();
  sub_26A132A04(a1, v1 + v3);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*_ProtoVisualProperty.selectedAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoVisualProperty() + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_12_5(v11);
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A132A04(v6, v10);
  }

  return sub_26A1349B0;
}

void sub_26A133104(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_26A132C2C((*a1)[4], v4);
    sub_26A13440C();
    sub_26A132A04(v4, v8 + v3);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_26A132C90(v5);
  }

  else
  {
    sub_26A13440C();
    sub_26A132A04(v5, v8 + v3);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t _ProtoVisualProperty.hasSelectedAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v4 + 36));
  type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v9;
}

Swift::Void __swiftcall _ProtoVisualProperty.clearSelectedAction()()
{
  v0 = *(type metadata accessor for _ProtoVisualProperty() + 36);
  sub_26A13440C();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoVisualProperty.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty() + 28);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoVisualProperty.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty() + 28);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t (*_ProtoVisualProperty.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoVisualProperty() + 28);
  return nullsub_1;
}

uint64_t sub_26A133474()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D2E8);
  __swift_project_value_buffer(v0, qword_28036D2E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "visuals";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "redacted";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "focus_action";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "selected_action";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "safe_for_logging";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoVisualProperty._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C010 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036D2E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoVisualProperty.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A13386C();
        break;
      case 2:
      case 5:
        sub_26A424874();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A13390C();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A1339C0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A13386C()
{
  type metadata accessor for _ProtoVisualElement(0);
  sub_26A13496C();
  return sub_26A424934();
}

uint64_t sub_26A13390C()
{
  v0 = *(type metadata accessor for _ProtoVisualProperty() + 32);
  type metadata accessor for _ProtoActionProperty();
  sub_26A13496C();
  return sub_26A424944();
}

uint64_t sub_26A1339C0()
{
  v0 = *(type metadata accessor for _ProtoVisualProperty() + 36);
  type metadata accessor for _ProtoActionProperty();
  sub_26A13496C();
  return sub_26A424944();
}

uint64_t _ProtoVisualProperty.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoVisualElement(0), sub_26A13496C(), result = sub_26A424A74(), !v1))
  {
    if (v0[8] != 1 || (OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v1))
    {
      OUTLINED_FUNCTION_87();
      result = sub_26A133BF0(v3);
      if (!v1)
      {
        OUTLINED_FUNCTION_87();
        sub_26A133D90(v4);
        if (v0[9] == 1)
        {
          OUTLINED_FUNCTION_87();
          sub_26A4249E4();
        }

        v5 = &v0[*(type metadata accessor for _ProtoVisualProperty() + 28)];
        return sub_26A424774();
      }
    }
  }

  return result;
}

uint64_t sub_26A133BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoVisualProperty();
  sub_26A132994(a1 + *(v10 + 32), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A132A04(v5, v9);
  sub_26A13496C();
  sub_26A424A84();
  return sub_26A132C90(v9);
}

uint64_t sub_26A133D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoVisualProperty();
  sub_26A132994(a1 + *(v10 + 36), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A132A04(v5, v9);
  sub_26A13496C();
  sub_26A424A84();
  return sub_26A132C90(v9);
}

uint64_t static _ProtoVisualProperty.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v61 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v61 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v61 - v32;
  v34 = *a1;
  v35 = *a2;
  sub_26A0DF264();
  if ((v36 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_43;
  }

  v62 = v10;
  v63 = v20;
  v64 = type metadata accessor for _ProtoVisualProperty();
  v37 = *(v64 + 32);
  v38 = *(v24 + 48);
  sub_26A132994(a1 + v37, v33);
  sub_26A132994(a2 + v37, &v33[v38]);
  OUTLINED_FUNCTION_2_4(v33);
  if (v44)
  {
    OUTLINED_FUNCTION_2_4(&v33[v38]);
    if (!v44)
    {
      goto LABEL_42;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A132994(v33, v23);
    OUTLINED_FUNCTION_2_4(&v33[v38]);
    if (v44)
    {
      sub_26A132C90(v23);
      goto LABEL_42;
    }

    sub_26A132A04(&v33[v38], v13);
    v45 = *v23;
    v46 = *v13;
    sub_26A0E36D8();
    if ((v47 & 1) == 0 || (v23[1] == v13[1] ? (v48 = v23[2] == v13[2]) : (v48 = 0), !v48 && (sub_26A425354() & 1) == 0))
    {
      sub_26A132C90(v13);
      sub_26A132C90(v23);
      goto LABEL_42;
    }

    v49 = *(v4 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0_10();
    sub_26A13496C();
    v50 = sub_26A424B64();
    sub_26A132C90(v13);
    sub_26A132C90(v23);
    sub_26A13440C();
    if ((v50 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v39 = v64;
  v40 = *(v64 + 36);
  v41 = *(v24 + 48);
  sub_26A132994(a1 + v40, v30);
  sub_26A132994(a2 + v40, v30 + v41);
  OUTLINED_FUNCTION_2_4(v30);
  if (v44)
  {
    OUTLINED_FUNCTION_2_4(v30 + v41);
    if (v44)
    {
      sub_26A13440C();
      goto LABEL_13;
    }

LABEL_42:
    sub_26A13440C();
    goto LABEL_43;
  }

  v51 = v63;
  sub_26A132994(v30, v63);
  OUTLINED_FUNCTION_2_4(v30 + v41);
  if (v52)
  {
    sub_26A132C90(v51);
    goto LABEL_42;
  }

  v53 = v62;
  sub_26A132A04(v30 + v41, v62);
  v54 = *v51;
  v55 = *v53;
  sub_26A0E36D8();
  if ((v56 & 1) == 0 || (v51[1] == v53[1] ? (v57 = v51[2] == v53[2]) : (v57 = 0), !v57 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v53);
    sub_26A132C90(v51);
    goto LABEL_42;
  }

  v58 = *(v4 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_10();
  sub_26A13496C();
  v59 = sub_26A424B64();
  sub_26A132C90(v53);
  sub_26A132C90(v51);
  sub_26A13440C();
  if ((v59 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_13:
  if (*(a1 + 9) != *(a2 + 9))
  {
LABEL_43:
    v43 = 0;
    return v43 & 1;
  }

  v42 = *(v39 + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_0_10();
  sub_26A13496C();
  v43 = sub_26A424B64();
  return v43 & 1;
}

uint64_t sub_26A13440C()
{
  OUTLINED_FUNCTION_14_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t _ProtoVisualProperty.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualProperty();
  sub_26A13496C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A13458C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A13496C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A13469C(uint64_t a1)
{
  v2 = sub_26A13496C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A134754()
{
  sub_26A13496C();

  return sub_26A4249B4();
}

void sub_26A1347FC()
{
  sub_26A134908(319, &qword_28036D310, type metadata accessor for _ProtoVisualElement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      sub_26A134908(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A134908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A13496C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return type metadata accessor for _ProtoVisualProperty();
}

uint64_t OUTLINED_FUNCTION_10_7@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  v4 = v1 + *(v2 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_12_5@<X0>(uint64_t a1@<X8>)
{

  return sub_26A132994(v1 + a1, v2);
}

uint64_t sub_26A134AA4(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for _ProtoTextProperty(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20));
  v16 = *a1;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v8, 1, v9);
  if (v17)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 4) = 0;
    v18 = &v14[v9[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v19 = v9[8];
    v20 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    v24 = v9[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
    OUTLINED_FUNCTION_37(v8, 1, v9);
    if (!v17)
    {
      sub_26A0E48F0(v8, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A138BEC();
  }

  return sub_26A138BEC();
}

void sub_26A134C90()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v17, v18);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v20);
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v3 = 0;
  }

  v21 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v21);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.thumbnail1.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v14, v15);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v17);
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.thumbnail2.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v14, v15);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v17);
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v18 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    sub_26A138BEC();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumberV2.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemPairNumberV2.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_PairNumberV2.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v370 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v370);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v355 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v354 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v356 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v353 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v368 = v16;
  v367 = type metadata accessor for _ProtoVisualProperty();
  v17 = OUTLINED_FUNCTION_12(v367);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v352 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v351 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v349 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v348 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v350 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  v365 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v366 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  v347 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_48();
  v364 = v39;
  v363 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v40 = OUTLINED_FUNCTION_12(v363);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8();
  v345 = v43;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_48();
  v344 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v47 = OUTLINED_FUNCTION_41(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8();
  v346 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v343 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_48();
  v362 = v54;
  v55 = type metadata accessor for _ProtoTextProperty(0);
  v56 = OUTLINED_FUNCTION_12(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8();
  v342 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  v341 = v61;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  v339 = v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  v338 = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  v336 = v67;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_47();
  v335 = v69;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  v333 = v71;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_47();
  v332 = v73;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_47();
  v330 = v75;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47();
  v329 = v77;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47();
  v327[1] = v79;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_48();
  v327[0] = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v83 = OUTLINED_FUNCTION_41(v82);
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_8();
  v340 = v86;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_47();
  v361 = v88;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_47();
  v337 = v90;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_47();
  v360 = v92;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_47();
  v334 = v94;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_47();
  v359 = v96;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_47();
  v331 = v98;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_47();
  v358 = v100;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_47();
  v328 = v102;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_47();
  v357 = v104;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_47();
  v369 = v106;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v107);
  v109 = v327 - v108;
  MEMORY[0x28223BE20](v110);
  v112 = v327 - v111;
  OUTLINED_FUNCTION_9_6();
  sub_26A138DBC();
  v113 = *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20);
  v371 = v1;
  v372 = v113;
  v114 = *(v1 + v113);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v112, 1, v55);
  sub_26A0E48F0(v112, &qword_28036C7B8, &unk_26A425BF0);
  v115 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v109);
    if (v116)
    {
      v125 = v327[0];
      *v327[0] = v115;
      *(v125 + 8) = 0;
      v117 = v125 + v55[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v118 = v55[8];
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_38_3(v119, v120, v121);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v114);
      OUTLINED_FUNCTION_17_3(v109);
      v126 = v372;
      if (!v116)
      {
        sub_26A0E48F0(v109, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v125 = v327[0];
      sub_26A138BEC();
      v126 = v372;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_11();
    sub_26A138C40(v125, v127);
    v128 = v371;
    v129 = *(v371 + v126);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = *(v128 + v126);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v131 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v131);
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_52_3(v132);
    }

    OUTLINED_FUNCTION_36_3();
    v133 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v136 = v357;
  sub_26A10FD9C();
  LODWORD(v137) = __swift_getEnumTagSinglePayload(v136, 1, v55);
  sub_26A0E48F0(v136, &qword_28036C7B8, &unk_26A425BF0);
  if (v137 != 1)
  {
    OUTLINED_FUNCTION_142();
    v138 = v328;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v138);
    if (v116)
    {
      v146 = v329;
      OUTLINED_FUNCTION_34_2();
      v139 = OUTLINED_FUNCTION_12_6(v55[8]);
      OUTLINED_FUNCTION_38_3(v139, v140, v141);
      v143 = OUTLINED_FUNCTION_12_6(v142);
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v114);
      OUTLINED_FUNCTION_17_3(v138);
      v147 = v371;
      v137 = v372;
      if (!v116)
      {
        sub_26A0E48F0(v138, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v146 = v329;
      sub_26A138BEC();
      v147 = v371;
      v137 = v372;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_11();
    sub_26A138C40(v146, v148);
    v149 = *(v147 + v137);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v114 = *(v147 + v137);
    if ((v150 & 1) == 0)
    {
      v151 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v151);
      OUTLINED_FUNCTION_24_7();
      v114 = v152;
      *(v147 + v137) = v152;
    }

    sub_26A138BEC();
    v153 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_13_4();
  if (v137 != 1)
  {
    v156 = v331;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v156);
    v157 = v372;
    if (v116)
    {
      v165 = v332;
      OUTLINED_FUNCTION_34_2();
      v158 = OUTLINED_FUNCTION_12_6(v55[8]);
      OUTLINED_FUNCTION_38_3(v158, v159, v160);
      v162 = OUTLINED_FUNCTION_12_6(v161);
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v114);
      OUTLINED_FUNCTION_17_3(v156);
      v166 = v371;
      LODWORD(v137) = v333;
      if (!v116)
      {
        sub_26A0E48F0(v156, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v165 = v332;
      sub_26A138BEC();
      v166 = v371;
      LODWORD(v137) = v333;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_11();
    sub_26A138C40(v165, v167);
    v168 = *(v166 + v157);
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v114 = *(v166 + v157);
    if ((v169 & 1) == 0)
    {
      v170 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v170);
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_52_3(v171);
    }

    OUTLINED_FUNCTION_36_3();
    v172 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_13_4();
  if (v137 != 1)
  {
    v175 = v334;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v175);
    v176 = v372;
    if (v116)
    {
      v184 = v335;
      OUTLINED_FUNCTION_34_2();
      v177 = OUTLINED_FUNCTION_12_6(v55[8]);
      OUTLINED_FUNCTION_38_3(v177, v178, v179);
      v181 = OUTLINED_FUNCTION_12_6(v180);
      __swift_storeEnumTagSinglePayload(v181, v182, v183, v114);
      OUTLINED_FUNCTION_17_3(v175);
      v185 = v371;
      LODWORD(v137) = v336;
      if (!v116)
      {
        sub_26A0E48F0(v175, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v184 = v335;
      sub_26A138BEC();
      v185 = v371;
      LODWORD(v137) = v336;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_11();
    sub_26A138C40(v184, v186);
    v187 = *(v185 + v176);
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v189 = *(v185 + v176);
    if ((v188 & 1) == 0)
    {
      v190 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v190);
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_52_3(v191);
    }

    OUTLINED_FUNCTION_36_3();
    v192 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v192, v193, v194, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_13_4();
  if (v137 != 1)
  {
    v195 = v337;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v195);
    v196 = v372;
    if (v116)
    {
      v205 = v338;
      OUTLINED_FUNCTION_51_2();
      v197 = v205 + v55[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v198 = OUTLINED_FUNCTION_44_0(v55[8]);
      v199 = v370;
      __swift_storeEnumTagSinglePayload(v198, v200, v201, v370);
      v202 = OUTLINED_FUNCTION_44_0(v55[9]);
      __swift_storeEnumTagSinglePayload(v202, v203, v204, v199);
      OUTLINED_FUNCTION_17_3(v195);
      v206 = v371;
      LODWORD(v137) = v339;
      if (!v116)
      {
        sub_26A0E48F0(v195, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v205 = v338;
      sub_26A138BEC();
      v206 = v371;
      LODWORD(v137) = v339;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_11();
    sub_26A138C40(v205, v207);
    v208 = *(v206 + v196);
    v209 = swift_isUniquelyReferenced_nonNull_native();
    v210 = *(v206 + v196);
    if ((v209 & 1) == 0)
    {
      v211 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v211);
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_52_3(v212);
    }

    OUTLINED_FUNCTION_36_3();
    v213 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v213, v214, v215, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_13_4();
  if (v137 == 1)
  {
    v216 = v115;
    v217 = v371;
  }

  else
  {
    v218 = v340;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v218);
    v219 = v372;
    if (v116)
    {
      v228 = v341;
      OUTLINED_FUNCTION_51_2();
      v220 = v228 + v55[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v221 = OUTLINED_FUNCTION_44_0(v55[8]);
      v222 = v370;
      __swift_storeEnumTagSinglePayload(v221, v223, v224, v370);
      v225 = OUTLINED_FUNCTION_44_0(v55[9]);
      __swift_storeEnumTagSinglePayload(v225, v226, v227, v222);
      OUTLINED_FUNCTION_17_3(v218);
      v217 = v371;
      if (!v116)
      {
        sub_26A0E48F0(v218, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v228 = v341;
      sub_26A138BEC();
      v217 = v371;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_11();
    sub_26A138C40(v228, v229);
    v230 = *(v217 + v219);
    v231 = swift_isUniquelyReferenced_nonNull_native();
    v232 = *(v217 + v219);
    if ((v231 & 1) == 0)
    {
      v233 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v233);
      OUTLINED_FUNCTION_24_7();
      *(v217 + v219) = v234;
    }

    v216 = v115;
    sub_26A138BEC();
    v235 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v238 = v362;
  sub_26A10FD9C();
  v239 = v363;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v238, 1, v363);
  sub_26A0E48F0(v238, &qword_28036CAE0, &unk_26A4273F0);
  if (EnumTagSinglePayload == 1)
  {
    v241 = v216;
  }

  else
  {
    v242 = v343;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v242, 1, v239);
    v243 = v372;
    v241 = v216;
    if (v116)
    {
      v252 = v344;
      OUTLINED_FUNCTION_51_2();
      v244 = v252 + v239[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v245 = OUTLINED_FUNCTION_44_0(v239[8]);
      v246 = v370;
      __swift_storeEnumTagSinglePayload(v245, v247, v248, v370);
      v249 = OUTLINED_FUNCTION_44_0(v239[9]);
      __swift_storeEnumTagSinglePayload(v249, v250, v251, v246);
      OUTLINED_FUNCTION_37(v242, 1, v239);
      if (!v116)
      {
        sub_26A0E48F0(v242, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v252 = v344;
      sub_26A138BEC();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    sub_26A138C40(v252, type metadata accessor for _ProtoMultilineTextProperty);
    v253 = *(v217 + v243);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v255 = *(v217 + v243);
    if ((v254 & 1) == 0)
    {
      v256 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v256);
      OUTLINED_FUNCTION_24_7();
      *(v217 + v243) = v257;
    }

    EnumTagSinglePayload = v346;
    sub_26A138BEC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v258, v259, v260, v239);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v261 = v364;
  OUTLINED_FUNCTION_30_1();
  v262 = v367;
  __swift_getEnumTagSinglePayload(v261, 1, v367);
  OUTLINED_FUNCTION_17_4();
  if (EnumTagSinglePayload == 1)
  {
    v263 = v241;
  }

  else
  {
    v264 = v347;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v264, 1, v262);
    v265 = v372;
    if (v116)
    {
      v266 = v348;
      OUTLINED_FUNCTION_51_2();
      v267 = v266 + v262[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v268 = OUTLINED_FUNCTION_44_0(v262[8]);
      v269 = v370;
      __swift_storeEnumTagSinglePayload(v268, v270, v271, v370);
      v272 = OUTLINED_FUNCTION_44_0(v262[9]);
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v269);
      OUTLINED_FUNCTION_37(v264, 1, v262);
      if (!v116)
      {
        sub_26A0E48F0(v264, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A138BEC();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_29_1();
    v275 = *(v217 + v265);
    v276 = swift_isUniquelyReferenced_nonNull_native();
    v277 = *(v217 + v265);
    if ((v276 & 1) == 0)
    {
      v278 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v278);
      OUTLINED_FUNCTION_24_7();
      *(v217 + v265) = v279;
    }

    v263 = v241;
    sub_26A138BEC();
    v280 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v280, v281, v282, v262);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v283 = v365;
  sub_26A10FD9C();
  LODWORD(v284) = __swift_getEnumTagSinglePayload(v283, 1, v262);
  sub_26A0E48F0(v283, &qword_28036CAE8, &unk_26A426430);
  if (v284 == 1)
  {
    v285 = v263;
  }

  else
  {
    v286 = v350;
    sub_26A10FD9C();
    v287 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v287, v288, v262);
    v284 = v372;
    if (v116)
    {
      v289 = v351;
      v285 = v263;
      *v351 = v263;
      *(v289 + 4) = 0;
      v290 = v289 + v262[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v291 = OUTLINED_FUNCTION_44_0(v262[8]);
      v292 = v370;
      __swift_storeEnumTagSinglePayload(v291, v293, v294, v370);
      v295 = OUTLINED_FUNCTION_44_0(v262[9]);
      __swift_storeEnumTagSinglePayload(v295, v296, v297, v292);
      v298 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v298, v299, v262);
      if (!v116)
      {
        sub_26A0E48F0(v286, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A138BEC();
      v285 = v263;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_29_1();
    v300 = *(v217 + v284);
    v301 = swift_isUniquelyReferenced_nonNull_native();
    v302 = *(v217 + v284);
    if ((v301 & 1) == 0)
    {
      v303 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v303);
      OUTLINED_FUNCTION_24_7();
      *(v217 + v284) = v304;
    }

    sub_26A138BEC();
    v305 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v305, v306, v307, v262);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v308 = v368;
  OUTLINED_FUNCTION_30_1();
  v309 = v370;
  __swift_getEnumTagSinglePayload(v308, 1, v370);
  OUTLINED_FUNCTION_17_4();
  if (v284 != 1)
  {
    v310 = v353;
    sub_26A10FD9C();
    v311 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v311, v312, v309);
    v313 = v372;
    if (v116)
    {
      v317 = v354;
      *v354 = v285;
      *(v317 + 8) = 0;
      *(v317 + 16) = 0xE000000000000000;
      v314 = v317 + *(v309 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v315 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v315, v316, v309);
      v318 = v355;
      if (!v116)
      {
        sub_26A0E48F0(v310, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v317 = v354;
      sub_26A138BEC();
      v318 = v355;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v318);
    sub_26A138C40(v317, type metadata accessor for _ProtoActionProperty);
    v319 = *(v217 + v313);
    v320 = swift_isUniquelyReferenced_nonNull_native();
    v321 = *(v217 + v313);
    if ((v320 & 1) == 0)
    {
      v322 = type metadata accessor for _ProtoSummaryItem_PairNumberV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v322);
      OUTLINED_FUNCTION_24_7();
      *(v217 + v313) = v323;
    }

    sub_26A138BEC();
    v324 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v324, v325, v326, v309);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumberV2.init(number1:number2:text1:text2:text3:text4:text5:thumbnail1:thumbnail2:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
  sub_26A138C98(&qword_28036D320, type metadata accessor for _ProtoSummaryItem_PairNumberV2);
  sub_26A4249C4();

  sub_26A0E48F0(a10, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a9, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a7, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_187_0(a5);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A136DFC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v134 = a8;
  v130 = a6;
  v131 = a7;
  v128 = a5;
  v126 = a4;
  v124 = a3;
  v16 = type metadata accessor for ActionProperty();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v123 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v140 = &v111 - v21;
  v139 = type metadata accessor for _ProtoActionProperty();
  v22 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v119 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v120 = &v111 - v25;
  v26 = type metadata accessor for VisualProperty();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v137 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v138 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v135 = &v111 - v33;
  v136 = type metadata accessor for _ProtoVisualProperty();
  v34 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v118 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v122 = &v111 - v37;
  MEMORY[0x28223BE20](v38);
  v117 = &v111 - v39;
  v40 = type metadata accessor for MultilineTextProperty(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v121 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v133 = &v111 - v45;
  v132 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v46 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v115 = &v111 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v116 = &v111 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v129 = &v111 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v127 = &v111 - v54;
  MEMORY[0x28223BE20](v55);
  v125 = &v111 - v56;
  MEMORY[0x28223BE20](v57);
  v59 = &v111 - v58;
  v60 = type metadata accessor for _ProtoTextProperty(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v114 = &v111 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v113 = &v111 - v64;
  MEMORY[0x28223BE20](v65);
  v112 = &v111 - v66;
  MEMORY[0x28223BE20](v67);
  v111 = &v111 - v68;
  MEMORY[0x28223BE20](v69);
  v70 = type metadata accessor for TextProperty(0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v73 = a2[3];
  v72 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v73);
  (*(v72 + 8))(v73, v72);
  sub_26A138BEC();
  _ProtoSummaryItem_PairNumberV2.number1.setter();
  v75 = v124[3];
  v74 = v124[4];
  __swift_project_boxed_opaque_existential_1(v124, v75);
  (*(v74 + 8))(v75, v74);
  sub_26A138BEC();
  _ProtoSummaryItem_PairNumberV2.number2.setter();
  sub_26A10FD9C();
  v76 = v142;
  if (v142)
  {
    v77 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v77 + 8))(v76, v77);
    sub_26A138BEC();
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60) != 1)
    {
      v78 = v111;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.text1.setter();
      sub_26A138C40(v78, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
  }

  sub_26A0E48F0(v59, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v79 = v142;
  if (v142)
  {
    v80 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v80 + 8))(v79, v80);
    v81 = v125;
    sub_26A138BEC();
    __swift_storeEnumTagSinglePayload(v81, 0, 1, v60);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v81, 1, v60) != 1)
    {
      v82 = v112;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.text2.setter();
      sub_26A138C40(v82, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB08, &unk_26A428720);
    v81 = v125;
    __swift_storeEnumTagSinglePayload(v125, 1, 1, v60);
  }

  sub_26A0E48F0(v81, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v83 = v142;
  if (v142)
  {
    v84 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v84 + 8))(v83, v84);
    v85 = v127;
    sub_26A138BEC();
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v60);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v85, 1, v60) != 1)
    {
      v86 = v113;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.text3.setter();
      sub_26A138C40(v86, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB08, &unk_26A428720);
    v85 = v127;
    __swift_storeEnumTagSinglePayload(v127, 1, 1, v60);
  }

  sub_26A0E48F0(v85, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v87 = v142;
  if (v142)
  {
    v88 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v88 + 8))(v87, v88);
    v89 = v129;
    sub_26A138BEC();
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v60);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v89, 1, v60) != 1)
    {
      v90 = v114;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.text4.setter();
      sub_26A138C40(v90, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB08, &unk_26A428720);
    v89 = v129;
    __swift_storeEnumTagSinglePayload(v129, 1, 1, v60);
  }

  sub_26A0E48F0(v89, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  v91 = v136;
  sub_26A10FD9C();
  v92 = v142;
  if (v142)
  {
    v93 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v93 + 8))(v92, v93);
    v94 = v133;
    sub_26A138BEC();
    v95 = v132;
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v132);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v94, 1, v95) != 1)
    {
      v96 = v116;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.text5.setter();
      sub_26A138C40(v96, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB10, &unk_26A426460);
    v94 = v133;
    __swift_storeEnumTagSinglePayload(v133, 1, 1, v132);
  }

  sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
LABEL_26:
  sub_26A10FD9C();
  v97 = v142;
  if (v142)
  {
    v98 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v98 + 8))(v97, v98);
    v99 = v135;
    sub_26A138BEC();
    __swift_storeEnumTagSinglePayload(v99, 0, 1, v91);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v99, 1, v91) != 1)
    {
      v100 = v117;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.thumbnail1.setter();
      sub_26A138C40(v100, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB00, &unk_26A426450);
    v99 = v135;
    __swift_storeEnumTagSinglePayload(v135, 1, 1, v91);
  }

  sub_26A0E48F0(v99, &qword_28036CAE8, &unk_26A426430);
LABEL_31:
  sub_26A10FD9C();
  v101 = v142;
  if (v142)
  {
    v102 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v102 + 8))(v101, v102);
    v103 = v138;
    sub_26A138BEC();
    __swift_storeEnumTagSinglePayload(v103, 0, 1, v91);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v103, 1, v91) != 1)
    {
      v104 = v118;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.thumbnail2.setter();
      sub_26A138C40(v104, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CB00, &unk_26A426450);
    v103 = v138;
    __swift_storeEnumTagSinglePayload(v138, 1, 1, v91);
  }

  sub_26A0E48F0(v103, &qword_28036CAE8, &unk_26A426430);
LABEL_36:
  sub_26A10FD9C();
  v105 = v142;
  if (v142)
  {
    v106 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v106 + 8))(v105, v106);
    v107 = v140;
    sub_26A138BEC();
    v108 = v139;
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v139);
    __swift_destroy_boxed_opaque_existential_1(v141);
    if (__swift_getEnumTagSinglePayload(v107, 1, v108) != 1)
    {
      v109 = v120;
      sub_26A138BEC();
      sub_26A138DBC();
      _ProtoSummaryItem_PairNumberV2.action.setter();
      sub_26A138C40(v109, type metadata accessor for _ProtoActionProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(v141, &qword_28036CAF8, &unk_26A426D30);
    v107 = v140;
    __swift_storeEnumTagSinglePayload(v140, 1, 1, v139);
  }

  sub_26A0E48F0(v107, &off_28036C7C0, &off_26A427400);
LABEL_41:

  result = _ProtoSummaryItem_PairNumberV2.componentName.setter();
  if (a15)
  {

    return _ProtoSummaryItem_PairNumberV2.linkIdentifier.setter();
  }

  return result;
}

Swift::String __swiftcall SummaryItemPairNumberV2.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v121 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v127 = &v120 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v126 = &v120 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v125 = &v120 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v124 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  v27 = type metadata accessor for _ProtoTextProperty(0);
  v28 = OUTLINED_FUNCTION_12(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v123 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  v34 = &v120 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v122 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  v43 = &v120 - v42;
  v44 = type metadata accessor for SummaryItemPairNumberV2();
  v45 = OUTLINED_FUNCTION_41(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v48);
  v50 = &v120 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D008, &qword_26A426C30);
  OUTLINED_FUNCTION_12(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v54);
  v56 = &v120 - v55;
  OUTLINED_FUNCTION_26_5();
  sub_26A138DBC();
  if (v3)
  {
    _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
  }

  else
  {
    sub_26A138DBC();
  }

  sub_26A138BEC();
  v56[*(v51 + 32)] = v3 & 1;
  sub_26A138C40(v50, type metadata accessor for SummaryItemPairNumberV2);
  v57 = MEMORY[0x277D84F90];
  *&v56[*(v51 + 28)] = MEMORY[0x277D84F90];
  v58 = *&v56[*(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v26, 1, v27);
  if (v59)
  {
    *v34 = v57;
    *(v34 + 4) = 0;
    v60 = &v34[v27[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v61 = v27[8];
    v62 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
    v66 = v27[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v62);
    OUTLINED_FUNCTION_37(v26, 1, v27);
    if (!v59)
    {
      sub_26A0E48F0(v26, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A138BEC();
  }

  sub_26A138BEC();
  v70 = type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  sub_26A107224();
  sub_26A0E48F0(v43, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142();
  v74 = v124;
  sub_26A10FD9C();
  v75 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v75, v76, v27);
  if (v59)
  {
    v77 = v123;
    *v123 = v57;
    *(v77 + 4) = 0;
    v78 = v77 + v27[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v79 = v27[8];
    v80 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v80);
    v84 = OUTLINED_FUNCTION_12_6(v27[9]);
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v80);
    v87 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v87, v88, v27);
    if (!v59)
    {
      sub_26A0E48F0(v74, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A138BEC();
  }

  v89 = v122;
  sub_26A138BEC();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v70);
  sub_26A107224();
  sub_26A0E48F0(v89, &qword_28036CB30, &qword_26A426480);
  SummaryItemPairNumberV2.text1.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_2();
  v93 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v93, v94, &qword_26A426480);
  SummaryItemPairNumberV2.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_2();
  v95 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v95, v96, &qword_26A426480);
  SummaryItemPairNumberV2.text3.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_2();
  v97 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v97, v98, &qword_26A426480);
  SummaryItemPairNumberV2.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_2();
  v99 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v99, v100, &qword_26A426480);
  v101 = v125;
  SummaryItemPairNumberV2.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1071FC();
  sub_26A0E48F0(v101, &qword_28036CB28, &qword_26A427980);
  SummaryItemPairNumberV2.thumbnail1.getter();
  sub_26A1071D4();
  v102 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v102, v103, &unk_26A426470);
  SummaryItemPairNumberV2.thumbnail2.getter();
  sub_26A1071D4();
  v104 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v104, v105, &unk_26A426470);
  v106 = v127;
  SummaryItemPairNumberV2.action.getter();
  sub_26A1070D0();
  sub_26A0E48F0(v106, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7BD8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v108, v109, v110, v111, v120, v121);

  v112 = swift_getKeyPath();
  sub_26A0F856C(v112, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v113, v114, v115, v116, v120, v121);

  sub_26A0FDEC8();
  sub_26A0E48F0(v56, &qword_28036D008, &qword_26A426C30);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v118;
  result._countAndFlagsBits = v117;
  return result;
}

uint64_t SummaryItemPairNumberV2.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
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
  OUTLINED_FUNCTION_9_6();
  sub_26A138DBC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_27_4();
  sub_26A138BEC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SummaryItemPairNumberV2.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemPairNumberV2();
  *(inited + 64) = &protocol witness table for SummaryItemPairNumberV2;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_5();
  sub_26A138DBC();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A138C98(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemPairNumberV2()
{
  result = qword_28036D328;
  if (!qword_28036D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A138BEC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A138C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A138C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A138D50()
{
  result = type metadata accessor for _ProtoSummaryItem_PairNumberV2(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A138DBC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  __swift_getEnumTagSinglePayload(v2, 1, v3);

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_17_4()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_23_7()
{

  return type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
}

void OUTLINED_FUNCTION_24_7()
{

  sub_26A1ADC04();
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_26A138C40(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  *v0 = v2;
  *(v0 + 8) = 0;
  v4 = v0 + *(v1 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_36_3()
{
  v2 = *(v0 + 344);

  return sub_26A138BEC();
}

uint64_t OUTLINED_FUNCTION_38_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, *(v3 + 352));
  v6 = *(v4 + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_26A138BEC();
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
}

void OUTLINED_FUNCTION_55_2()
{

  sub_26A107224();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return sub_26A138BEC();
}

uint64_t PrimaryHeaderStandard.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = *(v0 + *(type metadata accessor for _ProtoPrimaryHeader_Standard(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    *v13 = MEMORY[0x277D84F90];
    *(v13 + 8) = 0;
    v15 = v13 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = v7[8];
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A13B36C();
  }

  return sub_26A13B36C();
}

void sub_26A139260()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v35 = v3;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = *(v0 + *(OUTLINED_FUNCTION_23_8() + 20));
  v20 = *v2;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v21 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v21, v22, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v23)
    {
      *v10 = MEMORY[0x277D84F90];
      *(v10 + 8) = 0;
      v24 = v10 + v4[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v25 = v4[8];
      v26 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
      v30 = v4[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v26);
      OUTLINED_FUNCTION_38_0();
      if (!v23)
      {
        sub_26A0E48F0(v17, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A13B36C();
    }

    sub_26A13B36C();
    v2 = 0;
  }

  v34 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v35, v2, 1, v34);
  OUTLINED_FUNCTION_75();
}

void PrimaryHeaderStandard.action.getter()
{
  OUTLINED_FUNCTION_76();
  v24 = v2;
  v3 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v18 = *(v0 + *(OUTLINED_FUNCTION_23_8() + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v19 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v19, v20, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v21)
    {
      *v9 = MEMORY[0x277D84F90];
      v9[1] = 0;
      v9[2] = 0xE000000000000000;
      v22 = v9 + *(v3 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v21)
      {
        sub_26A0E48F0(v16, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A13B36C();
    }

    sub_26A13B36C();
    v1 = 0;
  }

  v23 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v24, v1, 1, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderStandard.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoPrimaryHeader_Standard(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoPrimaryHeader_StandardP33_20A83C8923FECE60991A771F98D088B413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoPrimaryHeader_Standard.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v136 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v136);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  v132 = (v127 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  v135 = v127 - v13;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v24 = v127 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v26 = OUTLINED_FUNCTION_41(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  v134 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  v34 = v127 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  v137 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = v127 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v127 - v41;
  OUTLINED_FUNCTION_2_5();
  sub_26A13B53C();
  v43 = *(type metadata accessor for _ProtoPrimaryHeader_Standard(0) + 20);
  v138 = v1;
  v139 = v43;
  v44 = *(v1 + v43);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v42, 1, v14);
  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v39);
    if (v45)
    {
      *v24 = MEMORY[0x277D84F90];
      *(v24 + 4) = 0;
      v46 = &v24[v14[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v47 = v14[8];
      OUTLINED_FUNCTION_92();
      v48 = v136;
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v136);
      v52 = v14[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v48);
      OUTLINED_FUNCTION_3_6(v39);
      v56 = v138;
      if (!v45)
      {
        sub_26A0E48F0(v39, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A13B36C();
      v56 = v138;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_8();
    sub_26A13B3C0(v24, v57);
    v58 = v139;
    v59 = *(v56 + v139);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v56 + v58);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v62);
      OUTLINED_FUNCTION_19_4();
      *(v56 + v58) = v63;
    }

    sub_26A13B36C();
    v64 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v14);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v14);
  sub_26A0E48F0(v34, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload == 1)
  {
    v68 = v136;
    v69 = v138;
  }

  else
  {
    v70 = v127[2];
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v70);
    v69 = v138;
    if (v45)
    {
      v79 = v128;
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      v71 = v14[8];
      OUTLINED_FUNCTION_92();
      v68 = v136;
      __swift_storeEnumTagSinglePayload(v72, v73, v74, v136);
      v75 = v14[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v68);
      OUTLINED_FUNCTION_3_6(v70);
      v80 = v139;
      if (!v45)
      {
        sub_26A0E48F0(v70, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v79 = v128;
      sub_26A13B36C();
      v68 = v136;
      v80 = v139;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_8();
    sub_26A13B3C0(v79, v81);
    v82 = *(v69 + v80);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v69 + v80);
    if ((v83 & 1) == 0)
    {
      v85 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v85);
      OUTLINED_FUNCTION_19_4();
      *(v69 + v80) = v86;
    }

    sub_26A13B36C();
    v87 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v14);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v90 = v134;
  sub_26A10FD9C();
  v91 = __swift_getEnumTagSinglePayload(v90, 1, v14);
  sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
  if (v91 != 1)
  {
    v92 = v129;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v92);
    v93 = v139;
    if (v45)
    {
      v102 = v130;
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      v94 = v14[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v68);
      v98 = v14[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v68);
      OUTLINED_FUNCTION_3_6(v92);
      if (!v45)
      {
        sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v102 = v130;
      sub_26A13B36C();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_8();
    sub_26A13B3C0(v102, v103);
    v104 = *(v69 + v93);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *(v69 + v93);
    if ((v105 & 1) == 0)
    {
      v107 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v107);
      OUTLINED_FUNCTION_19_4();
      *(v69 + v93) = v108;
    }

    sub_26A13B36C();
    v109 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v14);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v112 = v135;
  sub_26A10FD9C();
  v113 = __swift_getEnumTagSinglePayload(v112, 1, v68);
  sub_26A0E48F0(v112, &off_28036C7C0, &off_26A427400);
  if (v113 != 1)
  {
    v114 = v131;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v114);
    v115 = v139;
    if (v45)
    {
      v117 = v132;
      *v132 = MEMORY[0x277D84F90];
      *(v117 + 8) = 0;
      *(v117 + 16) = 0xE000000000000000;
      v116 = v117 + *(v68 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v114);
      v118 = v133;
      if (!v45)
      {
        sub_26A0E48F0(v114, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v117 = v132;
      sub_26A13B36C();
      v118 = v133;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v118);
    sub_26A13B3C0(v117, type metadata accessor for _ProtoActionProperty);
    v119 = *(v69 + v115);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(v69 + v115);
    if ((v120 & 1) == 0)
    {
      v122 = type metadata accessor for _ProtoPrimaryHeader_Standard._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v122);
      sub_26A3FC404();
      *(v69 + v115) = v123;
    }

    sub_26A13B36C();
    v124 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v124, v125, v126, v68);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t PrimaryHeaderStandard.init(text1:text2:text3:action:componentName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoPrimaryHeader_Standard(0);
  OUTLINED_FUNCTION_9_7();
  sub_26A13B418(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A13A270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a6;
  v60 = a7;
  v56 = a3;
  v57 = a5;
  v55 = a4;
  v9 = type metadata accessor for ActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = &v50 - v14;
  v61 = type metadata accessor for _ProtoActionProperty();
  v15 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v53 = &v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v58 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  v25 = type metadata accessor for _ProtoTextProperty(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v51 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v50 - v29;
  MEMORY[0x28223BE20](v31);
  v32 = type metadata accessor for TextProperty(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v35);
  (*(v34 + 8))(v35, v34);
  sub_26A13B36C();
  _ProtoPrimaryHeader_Standard.text1.setter();
  v36 = v55;

  v37 = v56;
  v56 = a1;
  _ProtoPrimaryHeader_Standard.componentName.setter(v37, v36);
  sub_26A10FD9C();
  v38 = v64;
  if (v64)
  {
    v39 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v39 + 8))(v38, v39);
    sub_26A13B36C();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      sub_26A13B36C();
      sub_26A13B53C();
      _ProtoPrimaryHeader_Standard.text2.setter();
      sub_26A13B3C0(v30, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v63, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  }

  sub_26A0E48F0(v24, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v40 = v64;
  if (v64)
  {
    v41 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v41 + 8))(v40, v41);
    v42 = v58;
    sub_26A13B36C();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v25);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v42, 1, v25) != 1)
    {
      v43 = v51;
      sub_26A13B36C();
      sub_26A13B53C();
      _ProtoPrimaryHeader_Standard.text3.setter();
      sub_26A13B3C0(v43, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v63, &qword_28036CB08, &unk_26A428720);
    v42 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v25);
  }

  sub_26A0E48F0(v42, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v44 = v64;
  if (v64)
  {
    v45 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v45 + 8))(v44, v45);
    v46 = v62;
    sub_26A13B36C();
    v47 = v61;
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) != 1)
    {
      v48 = v53;
      sub_26A13B36C();
      sub_26A13B53C();
      _ProtoPrimaryHeader_Standard.action.setter();
      return sub_26A13B3C0(v48, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v63, &qword_28036CAF8, &unk_26A426D30);
    v46 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v61);
  }

  return sub_26A0E48F0(v46, &off_28036C7C0, &off_26A427400);
}

uint64_t PrimaryHeaderStandard.init(text1:text2:text3:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A0E5D68(a1, v14);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoPrimaryHeader_Standard(0);
  OUTLINED_FUNCTION_9_7();
  sub_26A13B418(v8, v9);
  sub_26A4249C4();
  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(a3);
  OUTLINED_FUNCTION_164_0(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v11, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v12);
  OUTLINED_FUNCTION_164_0(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

Swift::String __swiftcall PrimaryHeaderStandard.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v69 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v68 = &v67 - v12;
  v13 = type metadata accessor for _ProtoTextProperty(0);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  v30 = type metadata accessor for PrimaryHeaderStandard();
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D000, &qword_26A427A40);
  OUTLINED_FUNCTION_12(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v40);
  v42 = &v67 - v41;
  OUTLINED_FUNCTION_8_5();
  sub_26A13B53C();
  if (v2)
  {
    _ProtoPrimaryHeader_Standard.redactedProto.getter();
  }

  else
  {
    sub_26A13B53C();
  }

  sub_26A13B36C();
  v42[*(v37 + 32)] = v2 & 1;
  sub_26A13B3C0(v36, type metadata accessor for PrimaryHeaderStandard);
  v43 = MEMORY[0x277D84F90];
  *&v42[*(v37 + 28)] = MEMORY[0x277D84F90];
  v44 = *&v42[*(type metadata accessor for _ProtoPrimaryHeader_Standard(0) + 20)];
  OUTLINED_FUNCTION_142();
  v45 = v68;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v45);
  if (v46)
  {
    *v19 = v43;
    *(v19 + 8) = 0;
    v47 = v19 + v13[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v48 = v13[8];
    v49 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
    v53 = v13[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v49);
    OUTLINED_FUNCTION_17_3(v45);
    if (!v46)
    {
      sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A13B36C();
  }

  sub_26A13B36C();
  v57 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v57);
  sub_26A1065D8();
  sub_26A0E48F0(v29, &qword_28036CB30, &qword_26A426480);
  PrimaryHeaderStandard.text2.getter();
  sub_26A1065D8();
  sub_26A0E48F0(v26, &qword_28036CB30, &qword_26A426480);
  PrimaryHeaderStandard.text3.getter();
  sub_26A1065D8();
  sub_26A0E48F0(v26, &qword_28036CB30, &qword_26A426480);
  v58 = v69;
  PrimaryHeaderStandard.action.getter();
  sub_26A1064D4();
  sub_26A0E48F0(v58, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7A98(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v60, v61, v62, v63, v67, v68);

  sub_26A0FD044();
  sub_26A0E48F0(v42, &qword_28036D000, &qword_26A427A40);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v65;
  result._countAndFlagsBits = v64;
  return result;
}

uint64_t PrimaryHeaderStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoPrimaryHeader_Standard(0);
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
  OUTLINED_FUNCTION_2_5();
  sub_26A13B53C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_10_8();
  sub_26A13B36C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t PrimaryHeaderStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for PrimaryHeaderStandard();
  *(inited + 64) = &protocol witness table for PrimaryHeaderStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_8_5();
  sub_26A13B53C();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A13B418(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for PrimaryHeaderStandard()
{
  result = qword_28036D340;
  if (!qword_28036D340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A13B36C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A13B3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A13B418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A13B4D0()
{
  result = type metadata accessor for _ProtoPrimaryHeader_Standard(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A13B53C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void OUTLINED_FUNCTION_19_4()
{

  sub_26A3FC404();
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return type metadata accessor for _ProtoPrimaryHeader_Standard(0);
}

uint64_t OUTLINED_FUNCTION_25_6()
{

  return type metadata accessor for _ProtoPrimaryHeader_Standard(0);
}

void SeparatorStyle.init(proto:)(char *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[8] == 1)
  {
    v3 = *a1;
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26A424AE4();
    __swift_project_value_buffer(v4, qword_2803A8950);
    v5 = sub_26A424AD4();
    v6 = sub_26A424E04();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      MEMORY[0x26D65C950](v7, -1, -1);
    }

    v3 = 0;
  }

  *a2 = v3;
}

uint64_t sub_26A13B7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCommand.AppPunchout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall AppPunchout.description(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v3 = type metadata accessor for AppPunchout();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF8, &unk_26A426C20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  sub_26A13BA54(v2, v6, type metadata accessor for AppPunchout);
  OUTLINED_FUNCTION_0_12();
  sub_26A13BA54(v6, v11, v12);
  v11[*(v8 + 40)] = 1;
  sub_26A13BAB8(v6);
  *&v11[*(v8 + 36)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F7FE8(KeyPath, 0x74754F68636E7570, 0xEB00000000697255, 1, v14, v15, v16, v17, v35, v36);

  v18 = swift_getKeyPath();
  sub_26A0F7FE8(v18, 0x6449656C646E7562, 0xE800000000000000, 1, v19, v20, v21, v22, v35, v36);

  v23 = swift_getKeyPath();
  sub_26A0F7FE8(v23, 0x6C70736944707061, 0xEE00656D614E7961, 1, v24, v25, v26, v27, v35, v36);

  sub_26A102210();
  v29 = v28;
  v31 = v30;
  sub_26A13BD24(v11);
  v32 = v29;
  v33 = v31;
  result._object = v33;
  result._countAndFlagsBits = v32;
  return result;
}

uint64_t type metadata accessor for AppPunchout()
{
  result = qword_28036D358;
  if (!qword_28036D358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A13BA54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(*(a3(0) - 8) + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t sub_26A13BAB8(uint64_t a1)
{
  v2 = type metadata accessor for AppPunchout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppPunchout.punchOutUri.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t AppPunchout.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t AppPunchout.appDisplayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_175();
}

uint64_t AppPunchout.init(punchOutUri:bundleId:appDisplayName:)()
{
  type metadata accessor for _ProtoCommand.AppPunchout(0);
  sub_26A13BDB0();
  sub_26A4249C4();
}

uint64_t sub_26A13BC84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v15 = a1[3];

  a1[2] = a4;
  a1[3] = a5;
  v16 = a1[5];

  a1[4] = a6;
  a1[5] = a7;
  return result;
}

uint64_t sub_26A13BD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF8, &unk_26A426C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A13BDB0()
{
  result = qword_28036D350;
  if (!qword_28036D350)
  {
    type metadata accessor for _ProtoCommand.AppPunchout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D350);
  }

  return result;
}

uint64_t sub_26A13BE34()
{
  result = type metadata accessor for _ProtoCommand.AppPunchout(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return type metadata accessor for _ProtoCommand.AppPunchout(0);
}

BOOL sub_26A13BEE8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t _ProtoSwitch.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _ProtoSwitch.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _ProtoSwitch.onAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_12_5(*(v5 + 32));
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v7, v8, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    v10 = OUTLINED_FUNCTION_71();
    result = OUTLINED_FUNCTION_37(v10, v11, v6);
    if (!v9)
    {
      return sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_44();
    return sub_26A132A04(v12, v13);
  }

  return result;
}

uint64_t type metadata accessor for _ProtoSwitch()
{
  result = qword_28036D3A0;
  if (!qword_28036D3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoSwitch.onAction.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_5() + 32);
  sub_26A0E48F0(v1 + v2, &off_28036C7C0, &off_26A427400);
  sub_26A132A04(v0, v1 + v2);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*_ProtoSwitch.onAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoSwitch() + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_12_5(v11);
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A132A04(v6, v10);
  }

  return sub_26A13C294;
}

uint64_t _ProtoSwitch.hasOnAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_12_5(*(v4 + 32));
  type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_44();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  return v9;
}

Swift::Void __swiftcall _ProtoSwitch.clearOnAction()()
{
  v1 = type metadata accessor for _ProtoSwitch();
  sub_26A0E48F0(v0 + *(v1 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoSwitch.offAction.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_12_5(*(v5 + 36));
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v7, v8, v6);
  if (v9)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    v10 = OUTLINED_FUNCTION_71();
    result = OUTLINED_FUNCTION_37(v10, v11, v6);
    if (!v9)
    {
      return sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_44();
    return sub_26A132A04(v12, v13);
  }

  return result;
}

uint64_t sub_26A13C464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for _ProtoActionProperty();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A132C2C(a1, v12);
  return a5(v12);
}

uint64_t _ProtoSwitch.offAction.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_5() + 36);
  sub_26A0E48F0(v1 + v2, &off_28036C7C0, &off_26A427400);
  sub_26A132A04(v0, v1 + v2);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*_ProtoSwitch.offAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty();
  v3[2] = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoSwitch() + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_12_5(v11);
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A132A04(v6, v10);
  }

  return sub_26A13DEBC;
}

void sub_26A13C6A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_26A132C2C((*a1)[4], v4);
    sub_26A0E48F0(v8 + v3, &off_28036C7C0, &off_26A427400);
    sub_26A132A04(v4, v8 + v3);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_26A132C90(v5);
  }

  else
  {
    sub_26A0E48F0(v8 + v3, &off_28036C7C0, &off_26A427400);
    sub_26A132A04(v5, v8 + v3);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t _ProtoSwitch.hasOffAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_12_5(*(v4 + 36));
  type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_44();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  return v9;
}

Swift::Void __swiftcall _ProtoSwitch.clearOffAction()()
{
  v1 = type metadata accessor for _ProtoSwitch();
  sub_26A0E48F0(v0 + *(v1 + 36), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoSwitch.invocationPayload.getter()
{
  v1 = *(v0 + 24);
  sub_26A0E45C0(v1, *(v0 + 32));
  return v1;
}

uint64_t _ProtoSwitch.invocationPayload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26A0E4784(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t _ProtoSwitch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoSwitch() + 28);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoSwitch.unknownFields.setter()
{
  v2 = *(OUTLINED_FUNCTION_19_5() + 28);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t _ProtoSwitch.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_26A426400;
  v2 = type metadata accessor for _ProtoSwitch();
  v3 = a1 + v2[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = v2[8];
  v5 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[9];
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

uint64_t sub_26A13CB30()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D368);
  __swift_project_value_buffer(v0, qword_28036D368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "on_action";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "off_action";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "initial_value";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "invocation_payload";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoSwitch._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C018 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036D368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoSwitch.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A13CF34();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A13CFE8();
        break;
      case 4:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 5:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A13CF34()
{
  v0 = *(type metadata accessor for _ProtoSwitch() + 32);
  type metadata accessor for _ProtoActionProperty();
  sub_26A13DE74(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t sub_26A13CFE8()
{
  v0 = *(type metadata accessor for _ProtoSwitch() + 36);
  type metadata accessor for _ProtoActionProperty();
  sub_26A13DE74(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  return sub_26A424944();
}

uint64_t _ProtoSwitch.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A64(), !v1))
  {
    v6 = OUTLINED_FUNCTION_3_5();
    result = sub_26A13D1A4(v6);
    if (!v1)
    {
      v7 = OUTLINED_FUNCTION_3_5();
      sub_26A13D344(v7);
      if (*(v0 + 16) == 1)
      {
        sub_26A4249E4();
      }

      if (!sub_26A13BEE8(v0[3], v0[4]))
      {
        v8 = v0[3];
        v9 = v0[4];
        OUTLINED_FUNCTION_16_4();
        sub_26A424A14();
      }

      v10 = v0 + *(type metadata accessor for _ProtoSwitch() + 28);
      OUTLINED_FUNCTION_12_7();
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A13D1A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoSwitch();
  sub_26A132994(a1 + *(v10 + 32), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
  }

  sub_26A132A04(v5, v9);
  sub_26A13DE74(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A132C90(v9);
}

uint64_t sub_26A13D344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for _ProtoActionProperty();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ProtoSwitch();
  sub_26A132994(a1 + *(v10 + 36), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26A0E48F0(v5, &off_28036C7C0, &off_26A427400);
  }

  sub_26A132A04(v5, v9);
  sub_26A13DE74(&qword_28036C928, type metadata accessor for _ProtoActionProperty);
  sub_26A424A84();
  return sub_26A132C90(v9);
}

uint64_t static _ProtoSwitch.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v67 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v70 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v22 = (&v67 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v67 - v31;
  v33 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v33 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_48;
  }

  v68 = v10;
  v69 = type metadata accessor for _ProtoSwitch();
  v34 = *(v69 + 32);
  v35 = *(v23 + 48);
  sub_26A132994(a1 + v34, v32);
  sub_26A132994(a2 + v34, &v32[v35]);
  OUTLINED_FUNCTION_2_4(v32);
  if (v33)
  {
    OUTLINED_FUNCTION_2_4(&v32[v35]);
    if (v33)
    {
      sub_26A0E48F0(v32, &off_28036C7C0, &off_26A427400);
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  sub_26A132994(v32, v22);
  OUTLINED_FUNCTION_2_4(&v32[v35]);
  if (v43)
  {
    sub_26A132C90(v22);
LABEL_22:
    v44 = &qword_28036C7C8;
    v45 = &qword_26A425C00;
LABEL_32:
    v54 = v32;
LABEL_47:
    sub_26A0E48F0(v54, v44, v45);
LABEL_48:
    v42 = 0;
    return v42 & 1;
  }

  sub_26A132A04(&v32[v35], v13);
  v46 = *v22;
  v47 = *v13;
  sub_26A0E36D8();
  if ((v48 & 1) == 0 || (v22[1] == v13[1] ? (v49 = v22[2] == v13[2]) : (v49 = 0), !v49 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v13);
    sub_26A132C90(v22);
    v44 = &off_28036C7C0;
    v45 = &off_26A427400;
    goto LABEL_32;
  }

  v50 = *(v4 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_13();
  sub_26A13DE74(v51, v52);
  v53 = sub_26A424B64();
  sub_26A132C90(v13);
  sub_26A132C90(v22);
  sub_26A0E48F0(v32, &off_28036C7C0, &off_26A427400);
  if ((v53 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_11:
  v36 = v69;
  v37 = *(v69 + 36);
  v38 = *(v23 + 48);
  sub_26A132994(a1 + v37, v29);
  sub_26A132994(a2 + v37, v29 + v38);
  OUTLINED_FUNCTION_2_4(v29);
  if (v33)
  {
    OUTLINED_FUNCTION_2_4(v29 + v38);
    if (v33)
    {
      sub_26A0E48F0(v29, &off_28036C7C0, &off_26A427400);
      goto LABEL_16;
    }

    goto LABEL_36;
  }

  v55 = v70;
  sub_26A132994(v29, v70);
  OUTLINED_FUNCTION_2_4(v29 + v38);
  if (v56)
  {
    sub_26A132C90(v55);
LABEL_36:
    v44 = &qword_28036C7C8;
    v45 = &qword_26A425C00;
LABEL_46:
    v54 = v29;
    goto LABEL_47;
  }

  v57 = v68;
  sub_26A132A04(v29 + v38, v68);
  v58 = *v55;
  v59 = *v57;
  sub_26A0E36D8();
  if ((v60 & 1) == 0 || (v55[1] == v57[1] ? (v61 = v55[2] == v57[2]) : (v61 = 0), !v61 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v57);
    sub_26A132C90(v55);
    v44 = &off_28036C7C0;
    v45 = &off_26A427400;
    goto LABEL_46;
  }

  v62 = *(v4 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_13();
  sub_26A13DE74(v63, v64);
  v65 = sub_26A424B64();
  sub_26A132C90(v57);
  sub_26A132C90(v55);
  sub_26A0E48F0(v29, &off_28036C7C0, &off_26A427400);
  if ((v65 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  if (*(a1 + 16) != *(a2 + 16) || (MEMORY[0x26D65B4F0](*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_48;
  }

  v39 = *(v36 + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_0_13();
  sub_26A13DE74(v40, v41);
  v42 = sub_26A424B64();
  return v42 & 1;
}

uint64_t _ProtoSwitch.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoSwitch();
  sub_26A13DE74(&qword_28036D380, type metadata accessor for _ProtoSwitch);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A13DAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A13DE74(&qword_28036D3B0, type metadata accessor for _ProtoSwitch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A13DB38(uint64_t a1)
{
  v2 = sub_26A13DE74(&qword_28036D390, type metadata accessor for _ProtoSwitch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A13DBA8()
{
  sub_26A13DE74(&qword_28036D390, type metadata accessor for _ProtoSwitch);

  return sub_26A4249B4();
}

void sub_26A13DD70()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A13DE1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A13DE1C()
{
  if (!qword_281579718[0])
  {
    type metadata accessor for _ProtoActionProperty();
    v0 = sub_26A424E44();
    if (!v1)
    {
      atomic_store(v0, qword_281579718);
    }
  }
}

uint64_t sub_26A13DE74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_10()
{

  return type metadata accessor for _ProtoSwitch();
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return type metadata accessor for _ProtoSwitch();
}

uint64_t _ProtoTextProperty.textElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*_ProtoTextProperty.focusAction.modify())()
{
  v2 = OUTLINED_FUNCTION_40_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_5(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoTextProperty(v12);
  OUTLINED_FUNCTION_26_6(*(v13 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_125();
    sub_26A132A04(v15, v16);
  }

  return sub_26A13C294;
}

uint64_t (*_ProtoTextProperty.selectedAction.modify())()
{
  v2 = OUTLINED_FUNCTION_40_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_5(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoTextProperty(v12);
  OUTLINED_FUNCTION_26_6(*(v13 + 36));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_125();
    sub_26A132A04(v15, v16);
  }

  return sub_26A13DEBC;
}

uint64_t (*_ProtoTextProperty.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoTextProperty(v0) + 28);
  return nullsub_1;
}

uint64_t sub_26A13E3B8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_46();
  v11 = a1(v10);
  sub_26A132994(v2 + *(v11 + 32), v3);
  type metadata accessor for _ProtoActionProperty();
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_48_3(v12, v13);
  if (!v14)
  {
    return sub_26A132A04(v3, a2);
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  v15 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_48_3(v15, v16);
  if (!v14)
  {
    return sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A13E4CC()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 32);
  sub_26A0E48F0(v1 + v4, &off_28036C7C0, &off_26A427400);
  sub_26A132A04(v0, v1 + v4);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t (*_ProtoMultilineTextProperty.focusAction.modify())()
{
  v2 = OUTLINED_FUNCTION_40_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_5(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoMultilineTextProperty(v12);
  OUTLINED_FUNCTION_26_6(*(v13 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_125();
    sub_26A132A04(v15, v16);
  }

  return sub_26A13DEBC;
}

uint64_t (*sub_26A13E668(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_36();
  v9 = a1(v8);
  sub_26A132994(v1 + *(v9 + 32), v2);
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_28_1(v10);
  return a1;
}

uint64_t sub_26A13E720(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_26A0E48F0(v1 + *(v2 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_37_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A13E79C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_46();
  v11 = a1(v10);
  sub_26A132994(v2 + *(v11 + 36), v3);
  type metadata accessor for _ProtoActionProperty();
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_48_3(v12, v13);
  if (!v14)
  {
    return sub_26A132A04(v3, a2);
  }

  OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
  v15 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_48_3(v15, v16);
  if (!v14)
  {
    return sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A13E878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for _ProtoActionProperty();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A132C2C(a1, v12);
  return a5(v12);
}

uint64_t sub_26A13E91C()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 36);
  sub_26A0E48F0(v1 + v4, &off_28036C7C0, &off_26A427400);
  sub_26A132A04(v0, v1 + v4);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t (*_ProtoMultilineTextProperty.selectedAction.modify())()
{
  v2 = OUTLINED_FUNCTION_40_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_5(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoMultilineTextProperty(v12);
  OUTLINED_FUNCTION_26_6(*(v13 + 36));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_125();
    sub_26A132A04(v15, v16);
  }

  return sub_26A13DEBC;
}

uint64_t (*sub_26A13EAB8(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_36();
  v9 = a1(v8);
  sub_26A132994(v1 + *(v9 + 36), v2);
  v10 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_28_1(v10);
  return a1;
}

uint64_t sub_26A13EB70(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_26A0E48F0(v1 + *(v2 + 36), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_37_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_26A13EC0C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_26A424794();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_26A13ECA0()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 28);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*_ProtoMultilineTextProperty.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoMultilineTextProperty(v0) + 28);
  return nullsub_1;
}

uint64_t _ProtoMultilineTextProperty.Line.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoMultilineTextProperty.Line(0) + 20);
  v4 = sub_26A424794();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t _ProtoMultilineTextProperty.Line.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_110();
  v3 = *(type metadata accessor for _ProtoMultilineTextProperty.Line(v2) + 20);
  v4 = sub_26A424794();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*_ProtoMultilineTextProperty.Line.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoMultilineTextProperty.Line(v0) + 20);
  return nullsub_1;
}

uint64_t _ProtoMultilineTextProperty.Line.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for _ProtoMultilineTextProperty.Line(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A13EF18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v3 = a1(0);
  v4 = a2 + v3[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v5 = v3[8];
  v6 = type metadata accessor for _ProtoActionProperty();
  __swift_storeEnumTagSinglePayload(a2 + v5, 1, 1, v6);
  v7 = a2 + v3[9];

  return __swift_storeEnumTagSinglePayload(v7, 1, 1, v6);
}

uint64_t sub_26A13EFD4()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D3B8);
  __swift_project_value_buffer(v0, qword_28036D3B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text_elements";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "redacted";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "focus_action";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "selected_action";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "safe_for_logging";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTextProperty.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A140E04(v3, v4, v5, v6, v7, &qword_28036D410, v8);
        break;
      case 2:
      case 5:
        sub_26A424874();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A13FFA4();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A140024();
        break;
      default:
        continue;
    }
  }
}

uint64_t _ProtoTextProperty.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_4();
  if (!v2 || (type metadata accessor for _ProtoTextElement(0), OUTLINED_FUNCTION_15_5(), sub_26A13F94C(v3, v4), result = OUTLINED_FUNCTION_8_6(), !v0))
  {
    if (*(v1 + 8) != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v0))
    {
      v6 = OUTLINED_FUNCTION_3_5();
      result = sub_26A1401DC(v6, v7, v8, v9, v10);
      if (!v0)
      {
        v11 = OUTLINED_FUNCTION_3_5();
        sub_26A14032C(v11, v12, v13, v14, v15);
        if (*(v1 + 9) == 1)
        {
          OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_87();
          sub_26A4249E4();
        }

        v16 = *(type metadata accessor for _ProtoTextProperty(0) + 28);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

uint64_t static _ProtoTextProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v62 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27_5();
  sub_26A0D9294();
  if ((v33 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_44;
  }

  v63 = v11;
  v64 = v21;
  v34 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_32_3(v34);
  sub_26A132994(a2 + v21, v2 + v11);
  OUTLINED_FUNCTION_2_4(v2);
  if (v39)
  {
    OUTLINED_FUNCTION_2_4(v2 + v11);
    if (v39)
    {
      sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  sub_26A132994(v2, v24);
  OUTLINED_FUNCTION_2_4(v2 + v11);
  if (v39)
  {
    sub_26A132C90(v24);
LABEL_18:
    v40 = &qword_28036C7C8;
    v41 = &qword_26A425C00;
LABEL_28:
    v49 = v2;
LABEL_43:
    sub_26A0E48F0(v49, v40, v41);
    goto LABEL_44;
  }

  sub_26A132A04(v2 + v11, v14);
  v42 = *v24;
  v43 = *v14;
  sub_26A0E36D8();
  if ((v44 & 1) == 0 || (v24[1] == *(v14 + 1) ? (v45 = v24[2] == *(v14 + 2)) : (v45 = 0), !v45 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v14);
    sub_26A132C90(v24);
    v40 = &off_28036C7C0;
    v41 = &off_26A427400;
    goto LABEL_28;
  }

  v46 = *(v5 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v47, v48);
  v11 = OUTLINED_FUNCTION_44_4();
  sub_26A132C90(v14);
  sub_26A132C90(v24);
  sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
  if ((v11 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  OUTLINED_FUNCTION_34_3();
  sub_26A132994(v24 + a2, v31 + v11);
  OUTLINED_FUNCTION_2_4(v31);
  if (v39)
  {
    OUTLINED_FUNCTION_2_4(v31 + v11);
    if (v39)
    {
      sub_26A0E48F0(v31, &off_28036C7C0, &off_26A427400);
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  v50 = v64;
  sub_26A132994(v31, v64);
  OUTLINED_FUNCTION_2_4(v31 + v11);
  if (v51)
  {
    sub_26A132C90(v50);
LABEL_32:
    v40 = &qword_28036C7C8;
    v41 = &qword_26A425C00;
LABEL_42:
    v49 = v31;
    goto LABEL_43;
  }

  v52 = v63;
  sub_26A132A04(v31 + v11, v63);
  v53 = *v50;
  v54 = *v52;
  sub_26A0E36D8();
  if ((v55 & 1) == 0 || (v50[1] == v52[1] ? (v56 = v50[2] == v52[2]) : (v56 = 0), !v56 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v52);
    sub_26A132C90(v50);
    v40 = &off_28036C7C0;
    v41 = &off_26A427400;
    goto LABEL_42;
  }

  v57 = *(v5 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v58, v59);
  v60 = OUTLINED_FUNCTION_45_1();
  sub_26A132C90(v52);
  sub_26A132C90(v50);
  sub_26A0E48F0(v31, &off_28036C7C0, &off_26A427400);
  if ((v60 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_13:
  if (*(a1 + 9) != *(a2 + 9))
  {
LABEL_44:
    v38 = 0;
    return v38 & 1;
  }

  v35 = *(v14 + 7);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v36, v37);
  v38 = OUTLINED_FUNCTION_46_3();
  return v38 & 1;
}

uint64_t sub_26A13F94C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A13FA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A13F94C(&qword_28036D4C0, type metadata accessor for _ProtoTextProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A13FAB8(uint64_t a1)
{
  v2 = sub_26A13F94C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A13FB28()
{
  sub_26A13F94C(&qword_28036C930, type metadata accessor for _ProtoTextProperty);

  return sub_26A4249B4();
}

uint64_t sub_26A13FBC4()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D3D0);
  __swift_project_value_buffer(v0, qword_28036D3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lines";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "redacted";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "focus_action";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "selected_action";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "safe_for_logging";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoMultilineTextProperty.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_6();
        sub_26A140E04(v3, v4, v5, v6, v7, &qword_28036D420, v8);
        break;
      case 2:
      case 5:
        sub_26A424874();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A13FFA4();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A140024();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A13FFA4()
{
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0(0) + 32);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_1_10();
  sub_26A13F94C(v2, v3);
  return OUTLINED_FUNCTION_23_9();
}

uint64_t sub_26A140024()
{
  OUTLINED_FUNCTION_10_9();
  v1 = *(v0(0) + 36);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_1_10();
  sub_26A13F94C(v2, v3);
  return OUTLINED_FUNCTION_23_9();
}

uint64_t _ProtoMultilineTextProperty.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_4();
  if (!v2 || (type metadata accessor for _ProtoMultilineTextProperty.Line(0), sub_26A13F94C(&qword_28036D420, type metadata accessor for _ProtoMultilineTextProperty.Line), result = OUTLINED_FUNCTION_8_6(), !v0))
  {
    if (*(v1 + 8) != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v0))
    {
      v4 = OUTLINED_FUNCTION_3_5();
      result = sub_26A1401DC(v4, v5, v6, v7, v8);
      if (!v0)
      {
        v9 = OUTLINED_FUNCTION_3_5();
        sub_26A14032C(v9, v10, v11, v12, v13);
        if (*(v1 + 9) == 1)
        {
          OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_87();
          sub_26A4249E4();
        }

        v14 = *(type metadata accessor for _ProtoMultilineTextProperty(0) + 28);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

uint64_t sub_26A1401DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_10_9();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_47_2();
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_24_8();
  v19 = a5(v18);
  sub_26A132994(v9 + *(v19 + 32), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A132A04(v6, v5);
  OUTLINED_FUNCTION_1_10();
  sub_26A13F94C(v21, v22);
  OUTLINED_FUNCTION_43_3();
  return sub_26A132C90(v5);
}

uint64_t sub_26A14032C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_10_9();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_47_2();
  v15 = OUTLINED_FUNCTION_12(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = OUTLINED_FUNCTION_24_8();
  v19 = a5(v18);
  sub_26A132994(v9 + *(v19 + 36), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    return sub_26A0E48F0(v6, &off_28036C7C0, &off_26A427400);
  }

  sub_26A132A04(v6, v5);
  OUTLINED_FUNCTION_1_10();
  sub_26A13F94C(v21, v22);
  OUTLINED_FUNCTION_43_3();
  return sub_26A132C90(v5);
}

uint64_t static _ProtoMultilineTextProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v62 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_27_5();
  sub_26A0DB78C();
  if ((v33 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_44;
  }

  v63 = v11;
  v64 = v21;
  v34 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_32_3(v34);
  sub_26A132994(a2 + v21, v2 + v11);
  OUTLINED_FUNCTION_2_4(v2);
  if (v39)
  {
    OUTLINED_FUNCTION_2_4(v2 + v11);
    if (v39)
    {
      sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  sub_26A132994(v2, v24);
  OUTLINED_FUNCTION_2_4(v2 + v11);
  if (v39)
  {
    sub_26A132C90(v24);
LABEL_18:
    v40 = &qword_28036C7C8;
    v41 = &qword_26A425C00;
LABEL_28:
    v49 = v2;
LABEL_43:
    sub_26A0E48F0(v49, v40, v41);
    goto LABEL_44;
  }

  sub_26A132A04(v2 + v11, v14);
  v42 = *v24;
  v43 = *v14;
  sub_26A0E36D8();
  if ((v44 & 1) == 0 || (v24[1] == *(v14 + 1) ? (v45 = v24[2] == *(v14 + 2)) : (v45 = 0), !v45 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v14);
    sub_26A132C90(v24);
    v40 = &off_28036C7C0;
    v41 = &off_26A427400;
    goto LABEL_28;
  }

  v46 = *(v5 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v47, v48);
  v11 = OUTLINED_FUNCTION_44_4();
  sub_26A132C90(v14);
  sub_26A132C90(v24);
  sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
  if ((v11 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  OUTLINED_FUNCTION_34_3();
  sub_26A132994(v24 + a2, v31 + v11);
  OUTLINED_FUNCTION_2_4(v31);
  if (v39)
  {
    OUTLINED_FUNCTION_2_4(v31 + v11);
    if (v39)
    {
      sub_26A0E48F0(v31, &off_28036C7C0, &off_26A427400);
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  v50 = v64;
  sub_26A132994(v31, v64);
  OUTLINED_FUNCTION_2_4(v31 + v11);
  if (v51)
  {
    sub_26A132C90(v50);
LABEL_32:
    v40 = &qword_28036C7C8;
    v41 = &qword_26A425C00;
LABEL_42:
    v49 = v31;
    goto LABEL_43;
  }

  v52 = v63;
  sub_26A132A04(v31 + v11, v63);
  v53 = *v50;
  v54 = *v52;
  sub_26A0E36D8();
  if ((v55 & 1) == 0 || (v50[1] == v52[1] ? (v56 = v50[2] == v52[2]) : (v56 = 0), !v56 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v52);
    sub_26A132C90(v50);
    v40 = &off_28036C7C0;
    v41 = &off_26A427400;
    goto LABEL_42;
  }

  v57 = *(v5 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v58, v59);
  v60 = OUTLINED_FUNCTION_45_1();
  sub_26A132C90(v52);
  sub_26A132C90(v50);
  sub_26A0E48F0(v31, &off_28036C7C0, &off_26A427400);
  if ((v60 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_13:
  if (*(a1 + 9) != *(a2 + 9))
  {
LABEL_44:
    v38 = 0;
    return v38 & 1;
  }

  v35 = *(v14 + 7);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v36, v37);
  v38 = OUTLINED_FUNCTION_46_3();
  return v38 & 1;
}

uint64_t sub_26A140994(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A13F94C(&qword_28036D4B8, type metadata accessor for _ProtoMultilineTextProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A140A14(uint64_t a1)
{
  v2 = sub_26A13F94C(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A140A84()
{
  sub_26A13F94C(&qword_28036D450, type metadata accessor for _ProtoMultilineTextProperty);

  return sub_26A4249B4();
}

uint64_t sub_26A140B04()
{
  result = MEMORY[0x26D65BA70](0x656E694C2ELL, 0xE500000000000000);
  qword_28036D3E8 = 0xD00000000000001FLL;
  unk_28036D3F0 = 0x800000026A447650;
  return result;
}

uint64_t static _ProtoMultilineTextProperty.Line.protoMessageName.getter()
{
  if (qword_28036C030 != -1)
  {
    swift_once();
  }

  v0 = qword_28036D3E8;

  return v0;
}

uint64_t sub_26A140BD4()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D3F8);
  __swift_project_value_buffer(v0, qword_28036D3F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "text_elements";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26A424A94();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26A424AA4();
}

uint64_t _ProtoMultilineTextProperty.Line.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_6();
      sub_26A140E04(v3, v4, v5, v6, v7, &qword_28036D410, v8);
    }
  }

  return result;
}

uint64_t sub_26A140E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_26A13F94C(a6, a7);
  return sub_26A424934();
}

uint64_t _ProtoMultilineTextProperty.Line.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_4();
  if (!v1 || (type metadata accessor for _ProtoTextElement(0), OUTLINED_FUNCTION_15_5(), sub_26A13F94C(v2, v3), result = OUTLINED_FUNCTION_8_6(), !v0))
  {
    v5 = *(type metadata accessor for _ProtoMultilineTextProperty.Line(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t static _ProtoMultilineTextProperty.Line.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_26A0D9294();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for _ProtoMultilineTextProperty.Line(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_14();
  sub_26A13F94C(v6, v7);
  return sub_26A424B64() & 1;
}

uint64_t sub_26A141014(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  v2 = OUTLINED_FUNCTION_125();
  sub_26A13F94C(v2, v3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A141360(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A13F94C(&qword_28036D4B0, type metadata accessor for _ProtoMultilineTextProperty.Line);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A141470(uint64_t a1)
{
  v2 = sub_26A13F94C(&qword_28036D420, type metadata accessor for _ProtoMultilineTextProperty.Line);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A141528()
{
  sub_26A13F94C(&qword_28036D420, type metadata accessor for _ProtoMultilineTextProperty.Line);

  return sub_26A4249B4();
}

void sub_26A1415F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_41_3();
  if (v2)
  {
    return OUTLINED_FUNCTION_31_3();
  }

  v4 = v1;
  v5 = v0;
  v6 = *(sub_26A424794() - 8);
  if (*(v6 + 84) == v5)
  {
    v7 = *(v4 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
    v7 = *(v4 + 32);
  }

  v8 = OUTLINED_FUNCTION_42_2(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_30_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_26A424794() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_42_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

void sub_26A141814(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_26A1415F0(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_26A424794();
    if (v6 <= 0x3F)
    {
      sub_26A1415F0(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A141934()
{
  sub_26A1415F0(319, &qword_28036D480, type metadata accessor for _ProtoTextElement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_8_6()
{

  return sub_26A424A74();
}

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_26A424774();
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{
  *(v1 + 8) = a1;

  return type metadata accessor for _ProtoActionProperty();
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return sub_26A424944();
}

uint64_t OUTLINED_FUNCTION_26_6@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_26A132994(v1 + a1, v2);
}

uint64_t OUTLINED_FUNCTION_27_5()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_26A0E48F0(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_31_3()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_32_3(uint64_t a1)
{
  *(v4 - 88) = a1;
  v6 = *(v3 + 48);
  v7 = v1 + *(a1 + 32);

  return sub_26A132994(v7, v2);
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  v5 = *(v2 + 48);
  v6 = v0 + *(*(v3 - 88) + 36);

  return sub_26A132994(v6, v1);
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_26A424A84();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_26A424B64();
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return type metadata accessor for _ProtoActionProperty();
}

uint64_t ImageElement.Symbol.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t ImageElement.Symbol.darkModeName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
  }

  return OUTLINED_FUNCTION_175();
}

void ImageElement.Symbol.tintColor.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = type metadata accessor for _ProtoColor(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_64_0(v9);
  v10 = OUTLINED_FUNCTION_24_4();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_84();
  v16 = *(type metadata accessor for _ProtoImageElement.Symbol(v15) + 48);
  OUTLINED_FUNCTION_23_1();
  v17 = OUTLINED_FUNCTION_22_6();
  sub_26A0E48F0(v17, v18, &unk_26A432950);
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      type metadata accessor for _ProtoColor.OneOf_Value(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      v24 = v26 + *(v5 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v0, &qword_28036CCD8, &unk_26A432950);
      }
    }

    else
    {
      sub_26A142240();
    }

    sub_26A142240();
    v1 = 0;
  }

  v25 = type metadata accessor for Color();
  __swift_storeEnumTagSinglePayload(v4, v1, 1, v25);
  OUTLINED_FUNCTION_75();
}

void ImageElement.Symbol.renderingMode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_73_1(a1);
}

void ImageElement.Symbol.symbolRenderingMode.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
    v2 = *(v1 + 72);
  }

  OUTLINED_FUNCTION_73_1(a1);
}

uint64_t ImageElement.Symbol.imageStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = v2;
  return sub_26A217A84(&v4, a1);
}

void ImageElement.Symbol.background.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_64_0(v9);
  v10 = OUTLINED_FUNCTION_24_4();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_84();
  v16 = *(type metadata accessor for _ProtoImageElement.Symbol(v15) + 52);
  OUTLINED_FUNCTION_23_1();
  v17 = OUTLINED_FUNCTION_22_6();
  sub_26A0E48F0(v17, v18, &qword_26A428228);
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = v5[5];
      type metadata accessor for _ProtoColor(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      v25 = v5[6];
      type metadata accessor for _ProtoImageElement.AspectRatio(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      v30 = v5[7];
      v31 = type metadata accessor for _ProtoOptionalBool(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
      v35 = v5[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v31);
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v0, &qword_28036D4C8, &qword_26A428228);
      }
    }

    else
    {
      sub_26A142240();
    }

    sub_26A142240();
    v1 = 0;
  }

  v39 = type metadata accessor for ImageElement.Background(0);
  __swift_storeEnumTagSinglePayload(v4, v1, 1, v39);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A142240()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void ImageElement.Symbol.vibrancy.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 96) == 1)
  {
    v2 = *(v1 + 88);
  }

  OUTLINED_FUNCTION_73_1(a1);
}

uint64_t ImageElement.Symbol.init(_:darkModeName:tintColor:symbolRenderingMode:imageStyle:background:punchesThroughBackground:vibrancy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, uint64_t a9, char *a10)
{
  v12 = *a6;
  v13 = *a7;
  v14 = *a10;
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v15, v16);
  OUTLINED_FUNCTION_68_0();

  sub_26A0E48F0(a8, &qword_28036D4D0, &qword_26A428230);
  return sub_26A0E48F0(a5, &qword_28036CBA0, &qword_26A4265B0);
}

uint64_t sub_26A1423DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v42 = a8;
  v45 = a7;
  v39 = a2;
  v40 = a6;
  v38 = a4;
  v37 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v14 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36[2] = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v36 - v18;
  v41 = type metadata accessor for ImageElement.Background(0);
  v20 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v36[1] = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _ProtoColor(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v36 - v26;
  v28 = type metadata accessor for Color();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v30 = *(a1 + 8);

  *a1 = v39;
  *(a1 + 8) = a3;
  if (a5)
  {
    v31 = *(a1 + 56);

    *(a1 + 48) = v38;
    *(a1 + 56) = a5;
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
  {
    sub_26A0E48F0(v27, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v32 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
    sub_26A0E48F0(a1 + v32, &qword_28036CCD8, &unk_26A432950);
    sub_26A142240();
    __swift_storeEnumTagSinglePayload(a1 + v32, 0, 1, v22);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v46 = v45;
  sub_26A217AB0(&v43);
  v33 = v44;
  *(a1 + 16) = v43;
  *(a1 + 24) = v33;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v41) == 1)
  {
    result = sub_26A0E48F0(v19, &qword_28036D4D0, &qword_26A428230);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v35 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
    sub_26A0E48F0(a1 + v35, &qword_28036D4C8, &qword_26A428228);
    sub_26A142240();
    result = __swift_storeEnumTagSinglePayload(a1 + v35, 0, 1, v37);
  }

  *(a1 + 64) = a9 & 1;
  *(a1 + 72) = a10;
  *(a1 + 80) = 1;
  *(a1 + 88) = a11;
  *(a1 + 96) = 1;
  return result;
}

void ImageElement.Symbol.init(_:darkModeName:tintColor:symbolRenderingMode:imageStyle:background:punchesThroughBackground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  OUTLINED_FUNCTION_76();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v52 = v27;
  v53 = v28;
  v49 = v29;
  v50 = v30;
  v32 = v31;
  v54 = v33;
  v51 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v39 = &v49 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v43);
  v45 = &v49 - v44;
  LOBYTE(v26) = *v26;
  v46 = *v24;
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  v55 = v49;
  v56 = v32;
  v57 = v50;
  v58 = v52;
  v59 = v45;
  v60 = v46;
  v61 = v39;
  v62 = v51;
  v63 = v26;
  v64 = 0;
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v47, v48);
  sub_26A4249C4();

  sub_26A0E48F0(v22, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v53, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v39, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v45, &qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.Symbol.init(_:darkModeName:tintColor:renderingMode:imageStyle:background:punchesThroughBackground:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = *v2;
  v5 = *v4;
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v6, v7);
  OUTLINED_FUNCTION_68_0();

  sub_26A0E48F0(v1, &qword_28036D4D0, &qword_26A428230);
  return sub_26A0E48F0(v0, &qword_28036CBA0, &qword_26A4265B0);
}

uint64_t sub_26A142BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10)
{
  v45 = a8;
  v41 = a7;
  v38 = a2;
  v39 = a6;
  v37 = a4;
  v42 = a9;
  v36 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v13 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v35[1] = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v35 - v17;
  v40 = type metadata accessor for ImageElement.Background(0);
  v19 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v35[0] = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _ProtoColor(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v35 - v25;
  v27 = type metadata accessor for Color();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v29 = *(a1 + 8);

  *a1 = v38;
  *(a1 + 8) = a3;
  if (a5)
  {
    v30 = *(a1 + 56);

    *(a1 + 48) = v37;
    *(a1 + 56) = a5;
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_26A0E48F0(v26, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v31 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
    sub_26A0E48F0(a1 + v31, &qword_28036CCD8, &unk_26A432950);
    sub_26A142240();
    __swift_storeEnumTagSinglePayload(a1 + v31, 0, 1, v21);
  }

  *(a1 + 32) = v41 & 1;
  *(a1 + 40) = 1;
  v46 = v45;
  sub_26A217AB0(&v43);
  v32 = v44;
  *(a1 + 16) = v43;
  *(a1 + 24) = v32;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v40) == 1)
  {
    result = sub_26A0E48F0(v18, &qword_28036D4D0, &qword_26A428230);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v34 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
    sub_26A0E48F0(a1 + v34, &qword_28036D4C8, &qword_26A428228);
    sub_26A142240();
    result = __swift_storeEnumTagSinglePayload(a1 + v34, 0, 1, v36);
  }

  *(a1 + 64) = a10 & 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  return result;
}

uint64_t ImageElement.Symbol.init(_:darkModeName:tintColor:renderingMode:imageStyle:background:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = *v2;
  v5 = *v4;
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v6, v7);
  sub_26A4249C4();

  sub_26A0E48F0(v1, &qword_28036D4D0, &qword_26A428230);
  return sub_26A0E48F0(v0, &qword_28036CBA0, &qword_26A4265B0);
}

uint64_t sub_26A143158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v57 = a8;
  v53 = a7;
  v50 = a2;
  v51 = a6;
  v49 = a4;
  v54 = a9;
  v48 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v13 = OUTLINED_FUNCTION_12(v48);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v47[1] = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v23 = v47 - v22;
  v52 = type metadata accessor for ImageElement.Background(0);
  v24 = OUTLINED_FUNCTION_12(v52);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18();
  v47[0] = v28 - v27;
  v29 = type metadata accessor for _ProtoColor(0);
  v30 = OUTLINED_FUNCTION_12(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_9();
  v37 = type metadata accessor for Color();
  v38 = OUTLINED_FUNCTION_12(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v41 = *(a1 + 8);

  *a1 = v50;
  *(a1 + 8) = a3;
  if (a5)
  {
    v42 = *(a1 + 56);

    *(a1 + 48) = v49;
    *(a1 + 56) = a5;
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v37) == 1)
  {
    sub_26A0E48F0(v9, &qword_28036CBA0, &qword_26A4265B0);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v43 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
    sub_26A0E48F0(a1 + v43, &qword_28036CCD8, &unk_26A432950);
    sub_26A142240();
    __swift_storeEnumTagSinglePayload(a1 + v43, 0, 1, v29);
  }

  *(a1 + 32) = v53 & 1;
  *(a1 + 40) = 1;
  v58 = v57;
  sub_26A217AB0(&v55);
  v44 = v56;
  *(a1 + 16) = v55;
  *(a1 + 24) = v44;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v52) == 1)
  {
    result = sub_26A0E48F0(v23, &qword_28036D4D0, &qword_26A428230);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v46 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
    sub_26A0E48F0(a1 + v46, &qword_28036D4C8, &qword_26A428228);
    sub_26A142240();
    result = __swift_storeEnumTagSinglePayload(a1 + v46, 0, 1, v48);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  return result;
}

void ImageElement.Symbol.init(_:darkModeName:tintColor:renderingMode:imageStyle:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = v8;
  v34 = v9;
  v11 = v10;
  v35 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  v24 = &v32 - v23;
  LOBYTE(v3) = *v3;
  v25 = *v1;
  sub_26A10FD9C();
  type metadata accessor for ImageElement.Background(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  type metadata accessor for _ProtoImageElement.Symbol(0);
  v36 = v33;
  v37 = v11;
  v38 = v34;
  v39 = v7;
  v40 = v24;
  v41 = v3;
  v42 = v25;
  v43 = v18;
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v30, v31);
  OUTLINED_FUNCTION_75_1();

  sub_26A0E48F0(v5, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v18, &qword_28036D4D0, &qword_26A428230);
  sub_26A0E48F0(v24, &qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_75();
}

void ImageElement.Symbol.init(_:tintColor:renderingMode:imageStyle:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[0] = v9;
  v34[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_173_0();
  v15 = OUTLINED_FUNCTION_24_4();
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v34 - v23;
  v25 = *v4;
  LOBYTE(v2) = *v2;
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for ImageElement.Background(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  type metadata accessor for _ProtoImageElement.Symbol(0);
  v34[4] = v34[0];
  v34[5] = v8;
  v34[6] = 0;
  v34[7] = 0;
  v34[8] = v21;
  v35 = v25;
  v36 = v2;
  v37 = v0;
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v30, v31);
  OUTLINED_FUNCTION_75_1();

  sub_26A0E48F0(v6, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v24, &qword_28036CBA0, &qword_26A4265B0);
  sub_26A0E48F0(v0, &qword_28036D4D0, &qword_26A428230);
  v32 = OUTLINED_FUNCTION_70_1();
  sub_26A0E48F0(v32, v33, &qword_26A4265B0);
  OUTLINED_FUNCTION_75();
}

void sub_26A143944()
{
  OUTLINED_FUNCTION_76();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_113();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ImageElement.Symbol(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) - 8);
  v16 = *(*v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  sub_26A14895C();
  sub_26A14895C();
  v19[v15[10]] = 0;
  OUTLINED_FUNCTION_6_7();
  sub_26A1488E4();
  *&v19[v15[9]] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F8148(KeyPath, 1701667182, 0xE400000000000000, 0, v21, v22, v23, v24, v34, v35);

  v25 = swift_getKeyPath();
  sub_26A0F87EC(v25, 0x65646F4D6B726164, 0xEC000000656D614ELL, 0, v26, v27, v28, v29, v34, v35);

  ImageElement.Symbol.tintColor.getter();
  sub_26A10A0E4();
  sub_26A0E48F0(v10, &qword_28036CBA0, &qword_26A4265B0);
  v30 = 0;
  if (v19[40] == 1)
  {
    v30 = *(v19 + 4) != 0;
  }

  sub_26A1483C0(v30, 0x6E697265646E6572, 0xED000065646F4D67);
  if (v19[80] == 1)
  {
    v31 = v19[72];
  }

  else
  {
    v31 = 0;
  }

  sub_26A148228(v31, 0xD000000000000013, 0x800000026A4476B0);
  v32 = v19[24];
  v34 = *(v19 + 2);
  LOBYTE(v35) = v32;
  sub_26A217A84(&v34, &v35 + 7);
  sub_26A1480FC(HIBYTE(v35), 0x7974536567616D69, 0xEA0000000000656CLL);
  ImageElement.Symbol.background.getter();
  sub_26A147D20(v0, 0x756F72676B636162, 0xEA0000000000646ELL, 0);
  sub_26A0E48F0(v0, &qword_28036D4D0, &qword_26A428230);
  sub_26A147C28(v19[64], 0xD000000000000018, 0x800000026A4476D0);
  if (v19[96] == 1)
  {
    v33 = v19[88];
  }

  else
  {
    v33 = 0;
  }

  sub_26A147B18(v33, 0x79636E6172626976, 0xE800000000000000);
  sub_26A102EE4();
  sub_26A0E48F0(v19, &qword_28036CB98, &qword_26A4265A8);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A143D5C(unint64_t *a1, void (*a2)(uint64_t))
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

void static ImageElement.symbol(_:darkModeName:tintColor:symbolRenderingMode:imageStyle:background:idioms:punchesThroughBackground:vibrancy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 *a23)
{
  OUTLINED_FUNCTION_76();
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_23_10(v28, v29, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_173_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v38);
  v39 = OUTLINED_FUNCTION_24_9();
  v40 = type metadata accessor for ImageElement.Symbol(v39);
  v41 = OUTLINED_FUNCTION_41(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v44 = *v27;
  v45 = *v25;
  v46 = *a23;
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v47, v48);
  OUTLINED_FUNCTION_49_4();
  sub_26A0E48F0(v23, &qword_28036D4D0, &qword_26A428230);
  v49 = OUTLINED_FUNCTION_70_1();
  sub_26A0E48F0(v49, v50, &qword_26A4265B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v51 = OUTLINED_FUNCTION_110();
  v52 = type metadata accessor for ImageElement.SourceType(v51);
  OUTLINED_FUNCTION_25_7(v52);
  v54 = *(v53 + 72);
  v55 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_13_5(v55, xmmword_26A426410);
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_12_8();
  sub_26A143D5C(v56, v57);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_6_7();
  sub_26A1488E4();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

void static ImageElement.symbol(_:darkModeName:tintColor:symbolRenderingMode:imageStyle:background:idioms:punchesThroughBackground:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_23_10(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_173_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_24_9();
  v13 = type metadata accessor for ImageElement.Symbol(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v17, v18);
  OUTLINED_FUNCTION_49_4();
  sub_26A0E48F0(v0, &qword_28036D4D0, &qword_26A428230);
  v19 = OUTLINED_FUNCTION_70_1();
  sub_26A0E48F0(v19, v20, &qword_26A4265B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v21 = OUTLINED_FUNCTION_110();
  v22 = type metadata accessor for ImageElement.SourceType(v21);
  OUTLINED_FUNCTION_25_7(v22);
  v24 = *(v23 + 72);
  v25 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_13_5(v25, xmmword_26A426410);
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_12_8();
  sub_26A143D5C(v26, v27);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_6_7();
  sub_26A1488E4();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

void static ImageElement.symbol(_:darkModeName:tintColor:renderingMode:imageStyle:background:idioms:punchesThroughBackground:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_23_10(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_173_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_24_9();
  v13 = type metadata accessor for ImageElement.Symbol(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v17, v18);
  OUTLINED_FUNCTION_49_4();
  sub_26A0E48F0(v0, &qword_28036D4D0, &qword_26A428230);
  v19 = OUTLINED_FUNCTION_70_1();
  sub_26A0E48F0(v19, v20, &qword_26A4265B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v21 = OUTLINED_FUNCTION_110();
  v22 = type metadata accessor for ImageElement.SourceType(v21);
  OUTLINED_FUNCTION_25_7(v22);
  v24 = *(v23 + 72);
  v25 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_13_5(v25, xmmword_26A426410);
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_12_8();
  sub_26A143D5C(v26, v27);
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_6_7();
  sub_26A1488E4();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

void static ImageElement.symbol(_:darkModeName:tintColor:renderingMode:imageStyle:background:idioms:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_50_3();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_173_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_24_9();
  v10 = type metadata accessor for ImageElement.Symbol(v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_1_11();
  sub_26A143D5C(v14, v15);
  sub_26A4249C4();
  sub_26A0E48F0(v0, &qword_28036D4D0, &qword_26A428230);
  v16 = OUTLINED_FUNCTION_70_1();
  sub_26A0E48F0(v16, v17, &qword_26A4265B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v18 = OUTLINED_FUNCTION_110();
  v19 = type metadata accessor for ImageElement.SourceType(v18);
  OUTLINED_FUNCTION_25_7(v19);
  v21 = *(v20 + 72);
  v22 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_13_5(v22, xmmword_26A426410);
  OUTLINED_FUNCTION_58_4();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_12_8();
  sub_26A143D5C(v23, v24);
  sub_26A4249C4();
  OUTLINED_FUNCTION_6_7();
  sub_26A1488E4();
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

void ImageElement.Background.color.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v5 = type metadata accessor for _ProtoColor(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_64_0(v9);
  v10 = OUTLINED_FUNCTION_24_4();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_84();
  v16 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(v15) + 20);
  OUTLINED_FUNCTION_23_1();
  v17 = OUTLINED_FUNCTION_22_6();
  sub_26A0E48F0(v17, v18, &unk_26A432950);
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      type metadata accessor for _ProtoColor.OneOf_Value(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      v24 = v26 + *(v5 + 20);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v0, &qword_28036CCD8, &unk_26A432950);
      }
    }

    else
    {
      sub_26A142240();
    }

    sub_26A142240();
    v1 = 0;
  }

  v25 = type metadata accessor for Color();
  __swift_storeEnumTagSinglePayload(v4, v1, 1, v25);
  OUTLINED_FUNCTION_75();
}

void ImageElement.Background.fixedWidth.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoOptionalBool(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = *(OUTLINED_FUNCTION_84_1() + 32);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_20_2();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_10_2();
    if (v15)
    {
      *v0 = 0;
      v16 = &v0[*(v2 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v15)
      {
        sub_26A0E48F0(v12, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A142240();
    }

    OUTLINED_FUNCTION_44_5();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.Background.fixedHeight.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = type metadata accessor for _ProtoOptionalBool(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = *(OUTLINED_FUNCTION_84_1() + 28);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_20_2();
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_10_2();
    if (v15)
    {
      *v0 = 0;
      v16 = &v0[*(v2 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v15)
      {
        sub_26A0E48F0(v12, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A142240();
    }

    OUTLINED_FUNCTION_44_5();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.Background.aspectRatio.getter()
{
  OUTLINED_FUNCTION_76();
  v23 = v3;
  v4 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = OUTLINED_FUNCTION_24_4();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_84();
  v17 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(v16) + 24);
  OUTLINED_FUNCTION_23_1();
  v18 = OUTLINED_FUNCTION_22_6();
  sub_26A0E48F0(v18, v19, &qword_26A427150);
  if (v2 != 1)
  {
    OUTLINED_FUNCTION_87_1();
    OUTLINED_FUNCTION_38_0();
    if (v20)
    {
      *v10 = 0;
      v21 = v10 + *(v4 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v20)
      {
        sub_26A0E48F0(v0, &qword_28036D1A0, &qword_26A427150);
      }
    }

    else
    {
      sub_26A142240();
    }

    sub_26A142240();
    v1 = 0;
  }

  v22 = type metadata accessor for ImageElement.AspectRatio();
  __swift_storeEnumTagSinglePayload(v23, v1, 1, v22);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.Background.init(color:aspectRatio:fixedWidth:fixedHeight:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A143D5C(qword_281579F20, type metadata accessor for _ProtoImageElement.Symbol.Background);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CBB8, &qword_26A4265C8);
  return sub_26A0E48F0(a1, &qword_28036CBA0, &qword_26A4265B0);
}

uint64_t sub_26A144F70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v59 = a5;
  v55 = a4;
  v51 = a1;
  v52 = a3;
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = v48 - v9;
  v58 = type metadata accessor for _ProtoOptionalBool(0);
  v10 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = v48 - v13;
  v49 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v14 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48[2] = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v48 - v18;
  v20 = type metadata accessor for ImageElement.AspectRatio();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v48[1] = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _ProtoColor(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v48 - v27;
  v29 = type metadata accessor for Color();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_26A0E48F0(v28, &qword_28036CBA0, &qword_26A4265B0);
    v31 = v51;
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v32 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 20);
    v33 = v51;
    sub_26A0E48F0(v51 + v32, &qword_28036CCD8, &unk_26A432950);
    sub_26A142240();
    __swift_storeEnumTagSinglePayload(v33 + v32, 0, 1, v23);
    v31 = v33;
  }

  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v35 = v58;
  v36 = v56;
  v37 = v55;
  v39 = v53;
  v38 = v54;
  if (EnumTagSinglePayload == 1)
  {
    result = sub_26A0E48F0(v19, &qword_28036CBB8, &qword_26A4265C8);
  }

  else
  {
    sub_26A142240();
    sub_26A142240();
    v41 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 24);
    sub_26A0E48F0(v31 + v41, &qword_28036D1A0, &qword_26A427150);
    sub_26A142240();
    result = __swift_storeEnumTagSinglePayload(v31 + v41, 0, 1, v49);
  }

  v42 = v59;
  v43 = v57;
  if (v37 != 2)
  {
    v44 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 32);
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v39, 1, v35) == 1)
    {
      v45 = &v38[*(v35 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v39, 1, v35) != 1)
      {
        sub_26A0E48F0(v39, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A142240();
    }

    *v38 = v37 & 1;
    sub_26A0E48F0(v31 + v44, &qword_28036D198, &qword_26A432940);
    sub_26A142240();
    result = __swift_storeEnumTagSinglePayload(v31 + v44, 0, 1, v35);
  }

  if (v42 != 2)
  {
    v46 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 28);
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
    {
      v47 = &v43[*(v35 + 20)];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v36, 1, v35) != 1)
      {
        sub_26A0E48F0(v36, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A142240();
    }

    *v43 = v42 & 1;
    sub_26A0E48F0(v31 + v46, &qword_28036D198, &qword_26A432940);
    sub_26A142240();
    return __swift_storeEnumTagSinglePayload(v31 + v46, 0, 1, v35);
  }

  return result;
}

void ImageElement.Background.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for ImageElement.Background(0);
  v29 = OUTLINED_FUNCTION_41(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18();
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF0, &qword_26A426C18) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  sub_26A14895C();
  sub_26A14895C();
  v36[v32[10]] = 0;
  sub_26A1488E4();
  *&v36[v32[9]] = MEMORY[0x277D84F90];
  ImageElement.Background.color.getter();
  sub_26A10A1E8();
  sub_26A0E48F0(v27, &qword_28036CBA0, &qword_26A4265B0);
  swift_getKeyPath();
  sub_26A0F8960();

  ImageElement.Background.fixedWidth.getter();
  sub_26A148740(v37, 0x6469576465786966, 0xEA00000000006874);
  ImageElement.Background.fixedHeight.getter();
  sub_26A148740(v38, 0x6965486465786966, 0xEB00000000746867);
  sub_26A103454();
  sub_26A0E48F0(v36, &qword_28036CFF0, &qword_26A426C18);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A145908(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_74_1();

  return sub_26A424B44();
}

uint64_t sub_26A1459BC(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  OUTLINED_FUNCTION_74_1();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A145A88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_26A425504();
  a4(0);
  OUTLINED_FUNCTION_74_1();
  sub_26A424B44();
  return sub_26A425554();
}

void sub_26A145B08(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C494();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C8C8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A145BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_31_4();
  if (v11)
  {
    v17 = OUTLINED_FUNCTION_61_2();
    sub_26A148B30(v17, v18);
    v19 = OUTLINED_FUNCTION_61_2();
    sub_26A148B4C(v19, v20);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_40_4();
  sub_26A148B30(v10, v12);
  Visibility.description.getter();
  OUTLINED_FUNCTION_81_1();
  j__swift_bridgeObjectRelease(a9, a10);
  OUTLINED_FUNCTION_36_4();
  if (v13)
  {

    v14 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v14);
    OUTLINED_FUNCTION_27_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740);
    OUTLINED_FUNCTION_28_2(v15);
    sub_26A10C4AC();
    v16 = OUTLINED_FUNCTION_4_12();
    sub_26A10C8E0(v16);
    OUTLINED_FUNCTION_0_15();
LABEL_5:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A145C7C(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE58, &unk_26A4269E0);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C4C4();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C8F8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A145D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_31_4();
  if (v11)
  {
    v17 = OUTLINED_FUNCTION_61_2();
    sub_26A148B30(v17, v18);
    v19 = OUTLINED_FUNCTION_61_2();
    sub_26A148B4C(v19, v20);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_40_4();
  sub_26A148B30(v10, v12);
  Visibility.description.getter();
  OUTLINED_FUNCTION_81_1();
  j__swift_bridgeObjectRelease(a9, a10);
  OUTLINED_FUNCTION_36_4();
  if (v13)
  {

    v14 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v14);
    OUTLINED_FUNCTION_27_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC38, &qword_26A4266C8);
    OUTLINED_FUNCTION_28_2(v15);
    sub_26A10C524();
    v16 = OUTLINED_FUNCTION_4_12();
    sub_26A10C958(v16);
    OUTLINED_FUNCTION_0_15();
LABEL_5:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A145DF0()
{
  OUTLINED_FUNCTION_69_1();
  if (!v0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_7();
  v2 = v1;
  v3 = [v2 description];
  v4 = sub_26A424B84();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    v8 = OUTLINED_FUNCTION_18_4();
    sub_26A10FE9C(v8);
    OUTLINED_FUNCTION_207();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFA0, &qword_26A426BC8);
    OUTLINED_FUNCTION_28_2(v9);
    sub_26A10C53C();
    v10 = OUTLINED_FUNCTION_20_5();
    sub_26A10C970(v10);
    OUTLINED_FUNCTION_9_8();
LABEL_6:
    OUTLINED_FUNCTION_67_1();
    return;
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A145ED0(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C554();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C988(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A145F6C(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDD8, &unk_26A426960);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C56C();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C9A0(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A146008(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF88, &qword_26A42DA20);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C584();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C9B8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A1460A4(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C59C();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C9D0(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A146140(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C5B4();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10C9E8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A1461DC(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C5CC();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CA00(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A146278()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_5_7();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_59_2();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_82_1();
      goto LABEL_4;
    case 3:
      goto LABEL_9;
    default:
LABEL_4:
      OUTLINED_FUNCTION_80_0();
      if (v1)
      {
        OUTLINED_FUNCTION_67_1();
      }

      else
      {

        v3 = OUTLINED_FUNCTION_18_4();
        sub_26A10FE9C(v3);
        OUTLINED_FUNCTION_207();
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB0, &qword_26A426BD8);
        OUTLINED_FUNCTION_28_2(v4);
        sub_26A10C5E4();
        v5 = OUTLINED_FUNCTION_20_5();
        sub_26A10CA18(v5);
        OUTLINED_FUNCTION_9_8();
LABEL_9:
        OUTLINED_FUNCTION_67_1();
      }

      return;
  }
}

void sub_26A146360()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_5_7();
  switch(v0)
  {
    case 4:
      break;
    default:

      v1 = OUTLINED_FUNCTION_18_4();
      sub_26A10FE9C(v1);
      OUTLINED_FUNCTION_207();
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB0, &qword_26A426BD8);
      OUTLINED_FUNCTION_28_2(v2);
      sub_26A10C5E4();
      v3 = OUTLINED_FUNCTION_20_5();
      sub_26A10CA18(v3);
      OUTLINED_FUNCTION_9_8();
      break;
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A146454()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_5_7();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_59_2();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_82_1();
      goto LABEL_4;
    case 3:
      goto LABEL_9;
    default:
LABEL_4:
      OUTLINED_FUNCTION_80_0();
      if (v1)
      {
        OUTLINED_FUNCTION_67_1();
      }

      else
      {

        v3 = OUTLINED_FUNCTION_18_4();
        sub_26A10FE9C(v3);
        OUTLINED_FUNCTION_207();
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
        OUTLINED_FUNCTION_28_2(v4);
        sub_26A10C5FC();
        v5 = OUTLINED_FUNCTION_20_5();
        sub_26A10CA30(v5);
        OUTLINED_FUNCTION_9_8();
LABEL_9:
        OUTLINED_FUNCTION_67_1();
      }

      return;
  }
}

void sub_26A14653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_31_4();
  if (v11)
  {
    v17 = OUTLINED_FUNCTION_61_2();
    sub_26A148B30(v17, v18);
    v19 = OUTLINED_FUNCTION_61_2();
    sub_26A148B4C(v19, v20);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_40_4();
  sub_26A148B30(v10, v12);
  Visibility.description.getter();
  OUTLINED_FUNCTION_81_1();
  j__swift_bridgeObjectRelease(a9, a10);
  OUTLINED_FUNCTION_36_4();
  if (v13)
  {

    v14 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v14);
    OUTLINED_FUNCTION_27_6();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC30, &qword_26A426698);
    OUTLINED_FUNCTION_28_2(v15);
    sub_26A10C614();
    v16 = OUTLINED_FUNCTION_4_12();
    sub_26A10CA48(v16);
    OUTLINED_FUNCTION_0_15();
LABEL_5:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A146614()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_8();
  v1 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  v5 = type metadata accessor for Command(0);
  OUTLINED_FUNCTION_5_0(v5);
  if (v6)
  {
    sub_26A0E48F0(v0, &qword_28036CD90, &qword_26A4268F0);
  }

  else
  {
    Command.description.getter();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {

      OUTLINED_FUNCTION_14_5();
      sub_26A10FE9C(v8);
      OUTLINED_FUNCTION_27_6();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD98, &qword_26A4268F8);
      OUTLINED_FUNCTION_28_2(v9);
      sub_26A10C674();
      v10 = OUTLINED_FUNCTION_4_12();
      sub_26A10CAA8(v10);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A146724(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD10, &qword_26A4395F0);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C68C();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CAC0(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A1467C0(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C6A4();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CAD8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A14685C(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C6BC();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CAF0(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A1468F8()
{
  OUTLINED_FUNCTION_69_1();
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  OUTLINED_FUNCTION_5_7();
  switch(v6)
  {
    case 1:
      v5 = 0x676E696461656CLL;
      goto LABEL_5;
    case 2:
      v4 = 0xE600000000000000;
      v5 = 0x7265746E6563;
      goto LABEL_5;
    case 3:
      v4 = 0xE800000000000000;
      v5 = 0x676E696C69617274;
      goto LABEL_5;
    case 4:
      goto LABEL_7;
    default:
LABEL_5:
      if ((v4 & 0xF00000000000000) != 0)
      {

        v7 = OUTLINED_FUNCTION_18_4();
        sub_26A103DA8(v7, v8, v9);
        OUTLINED_FUNCTION_207();
        sub_26A10C6D4();
        v10 = *(*(v0 + 64) + 16);
        sub_26A10CB08(v10);
        v11 = *(v0 + 64);
        *(v11 + 16) = v10 + 1;
        v12 = (v11 + 32 * v10);
        v12[4] = v2;
        v12[5] = v1;
        v12[6] = v5;
        v12[7] = v3;
        *(v0 + 64) = v11;
LABEL_7:
        OUTLINED_FUNCTION_67_1();
      }

      else
      {
        OUTLINED_FUNCTION_67_1();
      }

      return;
  }
}

void sub_26A146A18()
{
  OUTLINED_FUNCTION_55_3();
  if ((v5 & 0x100000000) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    sub_26A4251B4();
    OUTLINED_FUNCTION_8_7();
    if (v6)
    {
      OUTLINED_FUNCTION_63_1();
      v7 = OUTLINED_FUNCTION_10_10();
      sub_26A103DA8(v7, v8, v9);
      OUTLINED_FUNCTION_27_6();
      sub_26A10C6D4();
      v10 = *(*(v0 + 64) + 16);
      sub_26A10CB08(v10);
      v11 = *(v0 + 64);
      *(v11 + 16) = v10 + 1;
      v12 = (v11 + 32 * v10);
      v12[4] = v2;
      v12[5] = v1;
      v12[6] = v3;
      v12[7] = v4;
      *(v0 + 64) = v11;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A146ACC(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CE18, &qword_26A4269A0);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C6EC();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CB20(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A146B68(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C704();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CB38(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A146C04()
{
  OUTLINED_FUNCTION_55_3();
  if ((v0 & 1) == 0)
  {
    OUTLINED_FUNCTION_40_4();
    sub_26A4251B4();
    OUTLINED_FUNCTION_8_7();
    if (v1)
    {
      OUTLINED_FUNCTION_63_1();
      v2 = OUTLINED_FUNCTION_10_10();
      sub_26A10FE9C(v2);
      OUTLINED_FUNCTION_27_6();
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
      OUTLINED_FUNCTION_28_2(v3);
      sub_26A10C734();
      v4 = OUTLINED_FUNCTION_4_12();
      sub_26A10CB68(v4);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A146CAC(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C734();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CB68(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A146D48()
{
  OUTLINED_FUNCTION_55_3();
  if ((v0 & 0x100) != 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_40_4();
  _ProtoTextElement.Font.Weight.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C734();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CB68(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A146E00(__int128 *a1)
{
  *&v6[15] = *(a1 + 31);
  v1 = *a1;
  *v6 = a1[1];
  if (v6[18] != 1)
  {
    OUTLINED_FUNCTION_11_8();
    TextElement.Font.description.getter();
    OUTLINED_FUNCTION_8_7();
    if (v2)
    {
      OUTLINED_FUNCTION_63_1();
      v3 = OUTLINED_FUNCTION_10_10();
      sub_26A10FE9C(v3);
      OUTLINED_FUNCTION_27_6();
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
      OUTLINED_FUNCTION_28_2(v4);
      sub_26A10C734();
      v5 = OUTLINED_FUNCTION_4_12();
      sub_26A10CB68(v5);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }
}

void sub_26A146ED4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    sub_26A148B68(a1, a2, 255);
    sub_26A0D6768(a1, a2, 255);
  }

  else
  {
    sub_26A148B68(a1, a2, a3);
    TextElement.Value.description.getter();
    OUTLINED_FUNCTION_81_1();
    sub_26A0D6740();
    OUTLINED_FUNCTION_36_4();
    if (v5)
    {

      v6 = OUTLINED_FUNCTION_10_10();
      sub_26A10FE9C(v6);
      OUTLINED_FUNCTION_27_6();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
      OUTLINED_FUNCTION_28_2(v7);
      sub_26A10C734();
      v8 = OUTLINED_FUNCTION_4_12();
      sub_26A10CB68(v8);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }
}

void sub_26A146FF8()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_8();
  v1 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  v5 = type metadata accessor for ImageElement.SourceType(0);
  v6 = OUTLINED_FUNCTION_5_0(v5);
  if (v7)
  {
    sub_26A0E48F0(v0, &qword_28036D510, &qword_26A4283C8);
  }

  else
  {
    ImageElement.SourceType.description.getter(v6);
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_37_2();
    if (v8)
    {

      OUTLINED_FUNCTION_14_5();
      sub_26A10FE9C(v9);
      OUTLINED_FUNCTION_27_6();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBE0, &qword_26A426640);
      OUTLINED_FUNCTION_28_2(v10);
      sub_26A10C764();
      v11 = OUTLINED_FUNCTION_4_12();
      sub_26A10CB98(v11);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A147108()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_32_4();
  if (v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_11_8();
  ImageElement.ImageStyle.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C77C();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CBB0(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A1471B0()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_8();
  v1 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  v5 = type metadata accessor for ImageElement.Contact.Content(0);
  OUTLINED_FUNCTION_5_0(v5);
  if (v6)
  {
    sub_26A0E48F0(v0, &qword_28036D518, &qword_26A4283D0);
  }

  else
  {
    ImageElement.Contact.Content.description.getter();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {

      OUTLINED_FUNCTION_14_5();
      sub_26A10FE9C(v8);
      OUTLINED_FUNCTION_27_6();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
      OUTLINED_FUNCTION_28_2(v9);
      sub_26A10C77C();
      v10 = OUTLINED_FUNCTION_4_12();
      sub_26A10CBB0(v10);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A1472C0()
{
  OUTLINED_FUNCTION_69_1();
  v0 = 0xE700000000000000;
  OUTLINED_FUNCTION_5_7();
  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      goto LABEL_4;
    case 2:
      v0 = 0xE600000000000000;
      goto LABEL_4;
    case 3:
      goto LABEL_6;
    default:
LABEL_4:
      if ((v0 & 0xF00000000000000) != 0)
      {

        v2 = OUTLINED_FUNCTION_18_4();
        sub_26A10FE9C(v2);
        OUTLINED_FUNCTION_207();
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
        OUTLINED_FUNCTION_28_2(v3);
        sub_26A10C794();
        v4 = OUTLINED_FUNCTION_20_5();
        sub_26A10CBC8(v4);
        OUTLINED_FUNCTION_9_8();
LABEL_6:
        OUTLINED_FUNCTION_67_1();
      }

      else
      {
        OUTLINED_FUNCTION_67_1();
      }

      return;
  }
}

void sub_26A1473BC(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_3_9();
    if (v1)
    {
      v2 = 0x6C616E696769726FLL;
    }

    else
    {
      v2 = 0x6574616C706D6574;
    }

    sub_26A10FE9C(v2);

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C794();
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A147470(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C794();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CBC8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A14750C()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_32_4();
  if (v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_11_8();
  ImageElement.ImageStyle.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C794();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CBC8(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A1475B4()
{
  OUTLINED_FUNCTION_69_1();
  if (v0 == 2)
  {
    goto LABEL_7;
  }

  if (v0)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  if ((v1 & 0x700000000000000) != 0)
  {
    OUTLINED_FUNCTION_3_9();

    v2 = OUTLINED_FUNCTION_18_4();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_207();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C794();
    v4 = OUTLINED_FUNCTION_20_5();
    sub_26A10CBC8(v4);
    OUTLINED_FUNCTION_9_8();
LABEL_7:
    OUTLINED_FUNCTION_67_1();
    return;
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A147680()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_8();
  v1 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  v5 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
  OUTLINED_FUNCTION_5_0(v5);
  if (v6)
  {
    sub_26A0E48F0(v0, &qword_28036D4F8, &qword_26A4283C0);
  }

  else
  {
    ImageElement.SourceType.LoadingImage.description.getter();
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_88_1();
    OUTLINED_FUNCTION_37_2();
    if (v7)
    {

      OUTLINED_FUNCTION_14_5();
      sub_26A10FE9C(v8);
      OUTLINED_FUNCTION_27_6();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
      OUTLINED_FUNCTION_28_2(v9);
      sub_26A10C794();
      v10 = OUTLINED_FUNCTION_4_12();
      sub_26A10CBC8(v10);
      OUTLINED_FUNCTION_0_15();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A147790()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_11_8();
  v1 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_7();
  v5 = sub_26A424614();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_26A0E48F0(v0, &qword_28036D500, &qword_26A435570);
  }

  else
  {
    sub_26A143D5C(&qword_28036D508, MEMORY[0x277CC9260]);
    v6 = sub_26A4251B4();
    v8 = v7;
    (*(*(v5 - 8) + 8))(v0, v5);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {

      sub_26A10FE9C(v6);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD8, &qword_26A426638);
      OUTLINED_FUNCTION_28_2(v10);
      sub_26A10C794();
      OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_56_2();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A14792C()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_32_4();
  if (v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_11_8();
  ImageElement.ImageStyle.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBD0, &qword_26A426630);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C7AC();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CBE0(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A1479D4(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC0, &qword_26A426620);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C7C4();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CBF8(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A147A70()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_32_4();
  if (v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_11_8();
  ImageElement.ImageStyle.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC0, &qword_26A426620);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C7C4();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CBF8(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

uint64_t sub_26A147B18(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0x746C7561666564;
  switch(result)
  {
    case 1:
      v4 = 6710895;
      goto LABEL_4;
    case 2:
      v4 = 28271;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:

      v7 = sub_26A10FE9C(v4);
      v9 = v8;

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) + 28);
      sub_26A10C7DC();
      v11 = *(*(v3 + v10) + 16);
      result = sub_26A10CC10(v11);
      v12 = *(v3 + v10);
      *(v12 + 16) = v11 + 1;
      v13 = (v12 + 32 * v11);
      v13[4] = a2;
      v13[5] = a3;
      v13[6] = v7;
      v13[7] = v9;
      *(v3 + v10) = v12;
      return result;
  }
}

uint64_t sub_26A147C28(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 2)
  {
    if (result)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    v7 = sub_26A10FE9C(v6);
    v9 = v8;

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) + 28);
    sub_26A10C7DC();
    v11 = *(*(v3 + v10) + 16);
    result = sub_26A10CC10(v11);
    v12 = *(v3 + v10);
    *(v12 + 16) = v11 + 1;
    v13 = (v12 + 32 * v11);
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = v7;
    v13[7] = v9;
    *(v3 + v10) = v12;
  }

  return result;
}

uint64_t sub_26A147D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36[1] = a4;
  v37 = a2;
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - v8;
  v10 = type metadata accessor for ImageElement.Background(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF0, &qword_26A426C18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v36 - v18;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v10) == 1)
  {
    return sub_26A0E48F0(v19, &qword_28036D4D0, &qword_26A428230);
  }

  sub_26A14895C();
  sub_26A14895C();
  v15[*(v12 + 32)] = 0;
  sub_26A1488E4();
  *&v15[*(v12 + 28)] = MEMORY[0x277D84F90];
  ImageElement.Background.color.getter();
  sub_26A10A1E8();
  sub_26A0E48F0(v9, &qword_28036CBA0, &qword_26A4265B0);
  swift_getKeyPath();
  sub_26A0F8960();

  ImageElement.Background.fixedWidth.getter();
  sub_26A148740(v21, 0x6469576465786966, 0xEA00000000006874);
  ImageElement.Background.fixedHeight.getter();
  sub_26A148740(v22, 0x6965486465786966, 0xEB00000000746867);
  sub_26A103454();
  v24 = v23;
  v26 = v25;
  sub_26A0E48F0(v15, &qword_28036CFF0, &qword_26A426C18);
  sub_26A1488E4();
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
  }

  v28 = v38;

  v29 = sub_26A10FE9C(v24);
  v31 = v30;

  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) + 28);
  sub_26A10C7DC();
  v33 = *(*(v5 + v32) + 16);
  result = sub_26A10CC10(v33);
  v34 = *(v5 + v32);
  *(v34 + 16) = v33 + 1;
  v35 = (v34 + 32 * v33);
  v35[4] = v37;
  v35[5] = v28;
  v35[6] = v29;
  v35[7] = v31;
  *(v5 + v32) = v34;
  return result;
}

uint64_t sub_26A1480FC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 47)
  {
    v4 = v3;
    v7 = ImageElement.ImageStyle.description.getter();
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = v7;

      v11 = sub_26A10FE9C(v10);
      v13 = v12;

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) + 28);
      sub_26A10C7DC();
      v15 = *(*(v4 + v14) + 16);
      result = sub_26A10CC10(v15);
      v16 = *(v4 + v14);
      *(v16 + 16) = v15 + 1;
      v17 = (v16 + 32 * v15);
      v17[4] = a2;
      v17[5] = a3;
      v17[6] = v11;
      v17[7] = v13;
      *(v4 + v14) = v16;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26A148228(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  switch(result)
  {
    case 1:
      v5 = 0x6F7268636F6E6F6DLL;
      v4 = 0xEA0000000000656DLL;
      goto LABEL_6;
    case 2:
      v4 = 0xEA0000000000726FLL;
      v5 = 0x6C6F6369746C756DLL;
      goto LABEL_6;
    case 3:
      v5 = 0x657474656C6170;
      goto LABEL_6;
    case 4:
      v4 = 0xEC0000006C616369;
      v5 = 0x6863726172656968;
      goto LABEL_6;
    case 5:
      return result;
    default:
LABEL_6:
      if ((v4 & 0xF00000000000000) != 0)
      {

        v8 = sub_26A10FE9C(v5);
        v10 = v9;

        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) + 28);
        sub_26A10C7DC();
        v12 = *(*(v3 + v11) + 16);
        result = sub_26A10CC10(v12);
        v13 = *(v3 + v11);
        *(v13 + 16) = v12 + 1;
        v14 = (v13 + 32 * v12);
        v14[4] = a2;
        v14[5] = a3;
        v14[6] = v8;
        v14[7] = v10;
        *(v3 + v11) = v13;
      }

      else
      {
      }

      return result;
  }
}

uint64_t sub_26A1483C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 2)
  {
    if (result)
    {
      v6 = 0x6574616C706D6574;
    }

    else
    {
      v6 = 0x6C616E696769726FLL;
    }

    v7 = sub_26A10FE9C(v6);
    v9 = v8;

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB98, &qword_26A4265A8) + 28);
    sub_26A10C7DC();
    v11 = *(*(v3 + v10) + 16);
    result = sub_26A10CC10(v11);
    v12 = *(v3 + v10);
    *(v12 + 16) = v11 + 1;
    v13 = (v12 + 32 * v11);
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = v7;
    v13[7] = v9;
    *(v3 + v10) = v12;
  }

  return result;
}

void sub_26A1484B8(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C7F4();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CC28(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A148554()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_32_4();
  if (v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_11_8();
  ImageElement.ImageStyle.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C7F4();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CC28(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

void sub_26A1485FC(char a1)
{
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_2_6();

    v1 = OUTLINED_FUNCTION_7_5();
    sub_26A10FE9C(v1);
    OUTLINED_FUNCTION_27_6();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC8, &qword_26A426628);
    OUTLINED_FUNCTION_28_2(v2);
    sub_26A10C80C();
    v3 = OUTLINED_FUNCTION_4_12();
    sub_26A10CC40(v3);
    OUTLINED_FUNCTION_0_15();
    OUTLINED_FUNCTION_67_1();
  }
}

void sub_26A148698()
{
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_32_4();
  if (v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_11_8();
  ImageElement.ImageStyle.description.getter();
  OUTLINED_FUNCTION_8_7();
  if (v1)
  {
    OUTLINED_FUNCTION_63_1();
    v2 = OUTLINED_FUNCTION_10_10();
    sub_26A10FE9C(v2);
    OUTLINED_FUNCTION_27_6();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBC8, &qword_26A426628);
    OUTLINED_FUNCTION_28_2(v3);
    sub_26A10C80C();
    v4 = OUTLINED_FUNCTION_4_12();
    sub_26A10CC40(v4);
    OUTLINED_FUNCTION_0_15();
LABEL_4:
    OUTLINED_FUNCTION_48_4();
    return;
  }

  OUTLINED_FUNCTION_48_4();
}

uint64_t sub_26A148740(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 2)
  {
    if (result)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    v7 = sub_26A10FE9C(v6);
    v9 = v8;

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFF0, &qword_26A426C18) + 28);
    sub_26A10C824();
    v11 = *(*(v3 + v10) + 16);
    result = sub_26A10CC58(v11);
    v12 = *(v3 + v10);
    *(v12 + 16) = v11 + 1;
    v13 = (v12 + 32 * v11);
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = v7;
    v13[7] = v9;
    *(v3 + v10) = v12;
  }

  return result;
}

uint64_t sub_26A1488E4()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26A14895C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A148AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A148B30(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRetain(result, a2 & 1);
  }

  return result;
}

uint64_t sub_26A148B4C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRelease(result, a2 & 1);
  }

  return result;
}

uint64_t sub_26A148B68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26A0D6660();
  }

  return result;
}

void OUTLINED_FUNCTION_0_15()
{
  v7 = *(v0 + v6);
  *(v7 + 16) = v4 + 1;
  v8 = (v7 + 32 * v4);
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v3;
  v8[7] = v5;
  *(v0 + v6) = v7;
}

void OUTLINED_FUNCTION_9_8()
{
  v7 = *(v0 + v6);
  *(v7 + 16) = v3 + 1;
  v8 = (v7 + 32 * v3);
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v4;
  v8[7] = v5;
  *(v0 + v6) = v7;
}

uint64_t OUTLINED_FUNCTION_13_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26A14895C();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_23_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 272) = a2;
  *(v3 - 280) = result;
  *(v3 - 232) = a3;
  *(v3 - 240) = *(v3 + 16);
  v4 = *(v3 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_6()
{
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  v3 = *v0;
  v4 = *v1;

  return sub_26A10FD9C();
}

void OUTLINED_FUNCTION_34_4()
{
  v1 = *(v0 - 272);
  *(v0 - 176) = *(v0 - 280);
  *(v0 - 168) = v1;
}

uint64_t OUTLINED_FUNCTION_44_5()
{
  v2 = *v0;

  return sub_26A1488E4();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_53_3()
{
  v4 = *(v3 - 248);
  *(v3 - 160) = *(v3 - 256);
  *(v3 - 152) = v4;
  *(v3 - 144) = v2;
  *(v3 - 136) = v0;
  *(v3 - 128) = v1;
  *(v3 - 120) = *(v3 - 260);
}

void OUTLINED_FUNCTION_56_2()
{
  v7 = *(v0 + v6);
  *(v7 + 16) = v5 + 1;
  v8 = (v7 + 32 * v5);
  v8[4] = v2;
  v8[5] = v1;
  v8[6] = v3;
  v8[7] = v4;
  *(v0 + v6) = v7;
}

uint64_t OUTLINED_FUNCTION_57_2()
{
  v2 = *(v0 - 232);

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_58_4()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_63_1()
{
}

void OUTLINED_FUNCTION_65_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_26A143D5C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_75_1()
{
  v2 = *(v0 - 168);

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_83_0()
{
  v3 = *(*(v0 + v1) + 16);

  return sub_26A10CBC8(v3);
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return type metadata accessor for _ProtoImageElement.Symbol.Background(0);
}

uint64_t OUTLINED_FUNCTION_86_1()
{
  *(v1 - 104) = v0;

  return type metadata accessor for _ProtoImageElement(0);
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_26A10FD9C();
}