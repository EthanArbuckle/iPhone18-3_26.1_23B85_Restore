void _ProtoTable.Content.lineLimit.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoOptionalInt(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_3(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_16_5(v14);
  v16 = type metadata accessor for _ProtoTable.Content(v15);
  v17 = OUTLINED_FUNCTION_119_2(*(v16 + 24));
  OUTLINED_FUNCTION_60_14(v17);
  OUTLINED_FUNCTION_4_11();
  if (v18)
  {
    *v11 = 0;
    v19 = v11 + *(v9 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v18)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A390448();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A39234C()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_26_31();
    OUTLINED_FUNCTION_135_5();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_93_8();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_26_31();
    OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_70();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v5);
}

uint64_t _ProtoTable.Content.hasLineLimit.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for _ProtoTable.Content(v4);
  v6 = OUTLINED_FUNCTION_176(*(v5 + 24));
  OUTLINED_FUNCTION_131_5(v6, v7);
  type metadata accessor for _ProtoOptionalInt(0);
  v8 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v12;
}

Swift::Void __swiftcall _ProtoTable.Content.clearLineLimit()()
{
  v0 = *(type metadata accessor for _ProtoTable.Content(0) + 24);
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalInt(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t _ProtoTable.Content.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTable.Content(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoTable.Content.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v35[1] = v1;
  v2 = type metadata accessor for _ProtoVisualProperty();
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v35[0] = v7 - v6;
  v8 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_36_2();
  v13 = type metadata accessor for _ProtoTable.EmptyCell(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  v18 = OUTLINED_FUNCTION_12(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = v35 - v24;
  MEMORY[0x28223BE20](v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8A8, &unk_26A440DB0);
  OUTLINED_FUNCTION_41(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_62_3();
  v32 = *(v31 + 56);
  sub_26A390F6C();
  sub_26A390F6C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A390F6C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A390448();
        static _ProtoMultilineTextProperty.== infix(_:_:)(v25, v0);
        sub_26A390FC0();
LABEL_11:
        sub_26A390FC0();
        OUTLINED_FUNCTION_66_9();
        sub_26A390FC0();
        goto LABEL_12;
      }
    }

    else
    {
      sub_26A390F6C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = v35[0];
        sub_26A390448();
        static _ProtoVisualProperty.== infix(_:_:)(v22, v34);
        sub_26A390FC0();
        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_26A390F6C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A390448();
      sub_26A424794();
      OUTLINED_FUNCTION_0_74();
      sub_26A395728();
      sub_26A424B64();
      sub_26A390FC0();
      goto LABEL_11;
    }
  }

  sub_26A390FC0();
  sub_26A13440C();
LABEL_12:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoTable.Content.init()()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoTable.Content.OneOf_Value(v0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for _ProtoTable.Content(0);
  OUTLINED_FUNCTION_194_1(v5);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v6 = *(v5 + 24);
  type metadata accessor for _ProtoOptionalInt(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void _ProtoTable.HeaderCell.content.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  v8 = type metadata accessor for _ProtoTable.Content(0);
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_35_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_16_5(v13);
  v15 = type metadata accessor for _ProtoTable.HeaderCell(v14);
  v16 = OUTLINED_FUNCTION_119_2(*(v15 + 28));
  sub_26A1F9BEC(v16, v7, &qword_28036C888, &qword_26A440D90);
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (v17)
  {
    type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = v10 + *(v8 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v23 = *(v8 + 24);
    type metadata accessor for _ProtoOptionalInt(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_37(v7, 1, v8);
    if (!v17)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A390448();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A392C08()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_24_37();
    OUTLINED_FUNCTION_135_5();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_93_8();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_24_37();
    OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_70();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v5);
}

Swift::Void __swiftcall _ProtoTable.HeaderCell.clearContent()()
{
  v0 = *(type metadata accessor for _ProtoTable.HeaderCell(0) + 28);
  sub_26A13440C();
  type metadata accessor for _ProtoTable.Content(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void _ProtoTable.HeaderCell.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t _ProtoTable.HeaderCell.alignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_26A392DD0()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v2 = *(v1(v0) + 24);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_57_5();

  return v7(v6);
}

uint64_t sub_26A392E58()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 24);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoTable.HeaderCell.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTable.HeaderCell(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoTable.HeaderCell.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for _ProtoTable.HeaderCell(0);
  v3 = a1 + *(v2 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v4 = *(v2 + 28);
  type metadata accessor for _ProtoTable.Content(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t _ProtoTable.Column.content.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_37(v7, v18);
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_23(v0);
  if (v8)
  {
    sub_26A13440C();
LABEL_6:
    type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
    v15 = OUTLINED_FUNCTION_194_1(v14);
    return OUTLINED_FUNCTION_130_4(v15, v16);
  }

  v9 = OUTLINED_FUNCTION_107_7();
  if (v9 == 1)
  {
    sub_26A390FC0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_246();
  return sub_26A390448();
}

uint64_t _ProtoTable.Column.content.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_20_28();
  OUTLINED_FUNCTION_175();
  sub_26A390448();
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_36_16();
  swift_storeEnumTagMultiPayload();
  v0 = OUTLINED_FUNCTION_14_30();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoTable.ContentColumnCell.init()()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(v0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v6 = OUTLINED_FUNCTION_194_1(v5);
  return OUTLINED_FUNCTION_130_4(v6, v7);
}

void _ProtoTable.Column.content.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoTable.ContentColumnCell(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_26_22(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_21(v14);
  *(v0 + 32) = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_157();
      sub_26A390448();
      goto LABEL_8;
    }

    sub_26A390FC0();
  }

  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v11 + *(v9 + 20);
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v11 + *(v9 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A393390(uint64_t **a1)
{
  OUTLINED_FUNCTION_5_49(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_125();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_20_28();
    OUTLINED_FUNCTION_106_7();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_93_8();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_20_28();
    OUTLINED_FUNCTION_80_9();
    sub_26A390448();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t _ProtoTable.Column.spacer.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_37(v7, v11);
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_23(v0);
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    v9 = OUTLINED_FUNCTION_107_7();
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A390448();
    }

    sub_26A390FC0();
  }

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoTable.Column.spacer.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_18_30();
  OUTLINED_FUNCTION_175();
  sub_26A390448();
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_36_16();
  swift_storeEnumTagMultiPayload();
  v0 = OUTLINED_FUNCTION_14_30();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoTable.Column.spacer.modify()
{
  OUTLINED_FUNCTION_69_1();
  v2 = OUTLINED_FUNCTION_95_8();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_94_7(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_98_9(v8);
  v10 = type metadata accessor for _ProtoTable.SpacerColumnCell(v9);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  v13 = OUTLINED_FUNCTION_125();
  sub_26A1F9BEC(v13, v14, &qword_28036C8D8, &qword_26A425E88);
  v15 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  v1[4] = v15;
  OUTLINED_FUNCTION_37(v0, 1, v15);
  if (v16)
  {
    sub_26A13440C();
LABEL_7:
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A390FC0();
    goto LABEL_7;
  }

  sub_26A390448();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A393774(uint64_t **a1)
{
  OUTLINED_FUNCTION_5_49(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_125();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_106_7();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_93_8();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_18_30();
    OUTLINED_FUNCTION_80_9();
    sub_26A390448();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_26A393880()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v2 = *(v1(v0) + 20);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_57_5();

  return v7(v6);
}

uint64_t sub_26A393928()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoTable.Column.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTable.Column(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoTable.Column.OneOf_Cell.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v0 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_36_2();
  v5 = type metadata accessor for _ProtoTable.ContentColumnCell(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D0, &qword_26A425E80);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_62_3();
  v19 = *(v18 + 56);
  sub_26A390F6C();
  sub_26A390F6C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A390F6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A424794();
      OUTLINED_FUNCTION_0_74();
      sub_26A395728();
      OUTLINED_FUNCTION_125();
      sub_26A424B64();
      sub_26A390FC0();
      OUTLINED_FUNCTION_157();
LABEL_7:
      sub_26A390FC0();
      OUTLINED_FUNCTION_64_11();
      sub_26A390FC0();
      goto LABEL_8;
    }
  }

  else
  {
    sub_26A390F6C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      static _ProtoTable.ContentColumnCell.== infix(_:_:)();
      sub_26A390FC0();
      OUTLINED_FUNCTION_88();
      goto LABEL_7;
    }
  }

  sub_26A390FC0();
  sub_26A13440C();
LABEL_8:
  OUTLINED_FUNCTION_75();
}

void static _ProtoTable.ContentColumnCell.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_53();
  v4 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(v3);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_22_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C8, &qword_26A440DC0);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59_7();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_60_14(v1);
  OUTLINED_FUNCTION_126_5();
  v20 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v20, v21, v4);
  if (!v26)
  {
    v22 = OUTLINED_FUNCTION_12_2();
    sub_26A1F9BEC(v22, v23, v24, v25);
    OUTLINED_FUNCTION_37(v2 + v19, 1, v4);
    if (!v26)
    {
      sub_26A390448();
      OUTLINED_FUNCTION_88();
      static _ProtoTable.ContentColumnCell.OneOf_Size.== infix(_:_:)();
      v29 = v28;
      sub_26A390FC0();
      sub_26A390FC0();
      sub_26A13440C();
      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_26A390FC0();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37(v2 + v19, 1, v4);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_13:
  v30 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v31 = *(v30 + 20);
  v32 = *(v1 + v31);
  v33 = (v0 + v31);
  v34 = *v33;
  if (*(v33 + 8) == 1)
  {
    switch(v34)
    {
      case 1:
        if (v32 == 1)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 2:
        if (v32 == 2)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 3:
        if (v32 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      default:
        if (!v32)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
    }
  }

  if (v32 == v34)
  {
LABEL_18:
    v35 = *(v30 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0_74();
    sub_26A395728();
    v27 = OUTLINED_FUNCTION_14_7();
    goto LABEL_11;
  }

LABEL_10:
  v27 = 0;
LABEL_11:
  OUTLINED_FUNCTION_214_1(v27);
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoTable.Column.init()()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(v0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for _ProtoTable.Column(0);
  OUTLINED_FUNCTION_194_1(v5);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoTable.ContentColumnCell.auto.getter()
{
  OUTLINED_FUNCTION_25_21();
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_37(v7, v11);
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_23(v0);
  if (v8)
  {
    sub_26A13440C();
    return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  v9 = OUTLINED_FUNCTION_107_7();
  if (v9 == 1)
  {
    sub_26A390FC0();
    return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  OUTLINED_FUNCTION_246();
  return sub_26A390448();
}

uint64_t _ProtoTable.ContentColumnCell.auto.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_25_28();
  OUTLINED_FUNCTION_175();
  sub_26A390448();
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_36_16();
  swift_storeEnumTagMultiPayload();
  v0 = OUTLINED_FUNCTION_14_30();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void _ProtoTable.ContentColumnCell.auto.modify()
{
  OUTLINED_FUNCTION_69_1();
  v2 = OUTLINED_FUNCTION_95_8();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_94_7(v3);
  v4 = OUTLINED_FUNCTION_124();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_98_9(v8);
  v10 = type metadata accessor for _ProtoTable.AutoColumnSize(v9);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  v13 = OUTLINED_FUNCTION_125();
  sub_26A1F9BEC(v13, v14, &qword_28036C8C0, &qword_26A425E70);
  v15 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  v1[4] = v15;
  OUTLINED_FUNCTION_37(v0, 1, v15);
  if (v16)
  {
    sub_26A13440C();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      sub_26A390448();
      goto LABEL_8;
    }

    sub_26A390FC0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A394378(uint64_t **a1)
{
  OUTLINED_FUNCTION_5_49(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_125();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_25_28();
    OUTLINED_FUNCTION_106_7();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_93_8();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_25_28();
    OUTLINED_FUNCTION_80_9();
    sub_26A390448();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t _ProtoTable.ContentColumnCell.fixed.getter()
{
  OUTLINED_FUNCTION_25_21();
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_37(v8, v13);
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_23(v1);
  if (v9)
  {
    sub_26A13440C();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_107_7();
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A390448();
    }

    sub_26A390FC0();
  }

  *v0 = 0;
  v12 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  OUTLINED_FUNCTION_194_1(v12);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A394570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A390F6C();
  return a7(v7);
}

uint64_t _ProtoTable.ContentColumnCell.fixed.setter()
{
  OUTLINED_FUNCTION_14_4();
  sub_26A13440C();
  OUTLINED_FUNCTION_23_34();
  OUTLINED_FUNCTION_175();
  sub_26A390448();
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_36_16();
  swift_storeEnumTagMultiPayload();
  v0 = OUTLINED_FUNCTION_14_30();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoTable.FixedColumnSize.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  OUTLINED_FUNCTION_194_1(v1);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoTable.ContentColumnCell.fixed.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoTable.FixedColumnSize(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_26_22(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_39_21(v14);
  *(v0 + 32) = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    sub_26A13440C();
LABEL_7:
    *v11 = 0;
    v17 = v11 + *(v9 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A390FC0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A390448();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A3947EC(uint64_t **a1)
{
  OUTLINED_FUNCTION_5_49(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_125();
    sub_26A390F6C();
    sub_26A13440C();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_106_7();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
    OUTLINED_FUNCTION_67_10();
    sub_26A390FC0();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_23_34();
    OUTLINED_FUNCTION_80_9();
    sub_26A390448();
    OUTLINED_FUNCTION_69();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_32_19();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t _ProtoTable.ContentColumnCell.alignment.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  result = type metadata accessor for _ProtoTable.ContentColumnCell(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t _ProtoTable.ContentColumnCell.alignment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t _ProtoTable.ContentColumnCell.alignment.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTable.ContentColumnCell(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoTable.ContentColumnCell.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTable.ContentColumnCell(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoTable.ContentColumnCell.OneOf_Size.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v22 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  v2 = OUTLINED_FUNCTION_12(v22);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_36_2();
  v6 = type metadata accessor for _ProtoTable.AutoColumnSize(v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  v11 = OUTLINED_FUNCTION_12(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373410, &qword_26A440DC8);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_62_3();
  v20 = *(v19 + 56);
  sub_26A390F6C();
  sub_26A390F6C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_26A390F6C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      sub_26A424794();
      OUTLINED_FUNCTION_0_74();
      sub_26A395728();
      OUTLINED_FUNCTION_69();
      sub_26A424B64();
      sub_26A390FC0();
      sub_26A390FC0();
      OUTLINED_FUNCTION_2_51();
      sub_26A390FC0();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_26A390F6C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    sub_26A390FC0();
    sub_26A13440C();
    goto LABEL_9;
  }

  sub_26A390448();
  if (*v1 == *v0)
  {
    v21 = *(v22 + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_0_74();
    sub_26A395728();
    sub_26A424B64();
    OUTLINED_FUNCTION_67_10();
  }

  sub_26A390FC0();
  sub_26A390FC0();
  OUTLINED_FUNCTION_2_51();
  sub_26A390FC0();
LABEL_9:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A394E2C()
{
  OUTLINED_FUNCTION_53();
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t static _ProtoTable.FixedColumnSize.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_53();
  v3 = *(type metadata accessor for _ProtoTable.FixedColumnSize(v2) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t _ProtoTable.FixedColumnSize.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoTable.FixedColumnSize(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t static _ProtoTable.ColumnAlignment.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_280373238 = a1;
}

uint64_t (*static _ProtoTable.ColumnAlignment.allCases.modify())()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26A3950C8@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoTable.ColumnAlignment.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A395114()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373240);
  __swift_project_value_buffer(v0, qword_280373240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "separator_lines";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "columns";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "header";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "rows";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A39693C();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A395478();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A39552C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A395478()
{
  v0 = *(type metadata accessor for _ProtoTable(0) + 32);
  type metadata accessor for _ProtoTable.Header(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t sub_26A39552C()
{
  type metadata accessor for _ProtoTable.Row(0);
  sub_26A395728();
  return sub_26A424934();
}

uint64_t _ProtoTable.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 != 1 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for _ProtoTable.Column(0), sub_26A395728(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
    {
      OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_29_22();
      result = sub_26A39576C(v4, v5, v6, v7);
      if (!v1)
      {
        if (*(*(v2 + 16) + 16))
        {
          type metadata accessor for _ProtoTable.Row(0);
          sub_26A395728();
          OUTLINED_FUNCTION_218_1();
          OUTLINED_FUNCTION_48_8();
          sub_26A424A74();
        }

        v8 = *(type metadata accessor for _ProtoTable(0) + 28);
        return OUTLINED_FUNCTION_19_6();
      }
    }
  }

  return result;
}

unint64_t sub_26A395728()
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

uint64_t sub_26A39576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373400, &qword_26A440D98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.Header(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for _ProtoTable(0);
  sub_26A1F9BEC(a1 + *(v11 + 32), v8, &qword_280373400, &qword_26A440D98);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

uint64_t sub_26A3959F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A395A74(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A395AE4()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A395B64()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373258);
  __swift_project_value_buffer(v0, qword_280373258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEADING";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CENTER";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TRAILING";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A395E10()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373280);
  __swift_project_value_buffer(v0, qword_280373280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cells";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "component_name";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Header.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A396824();
    }
  }

  return result;
}

uint64_t _ProtoTable.Header.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoTable.HeaderCell(0), sub_26A395728(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_84_0();
    if (!v6 || (OUTLINED_FUNCTION_20_4(), result = sub_26A424A64(), !v1))
    {
      v7 = *(type metadata accessor for _ProtoTable.Header(0) + 24);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t static _ProtoTable.Header.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_26A0E3268();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for _ProtoTable.Header(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A3962CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39634C(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3963BC()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A396478()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803732A8);
  __swift_project_value_buffer(v0, qword_2803732A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "cells";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "backgrounds";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "component_name";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Row.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A396824();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A396888();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A39693C();
        break;
      case 4:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A396824()
{
  v0 = OUTLINED_FUNCTION_73_12();
  v1(v0);
  OUTLINED_FUNCTION_157();
  sub_26A395728();
  return OUTLINED_FUNCTION_114_2();
}

uint64_t sub_26A396888()
{
  v0 = *(type metadata accessor for _ProtoTable.Row(0) + 32);
  type metadata accessor for _ProtoActionProperty();
  sub_26A395728();
  return sub_26A424944();
}

uint64_t sub_26A39693C()
{
  v0 = OUTLINED_FUNCTION_73_12();
  v1(v0);
  OUTLINED_FUNCTION_157();
  sub_26A395728();
  return OUTLINED_FUNCTION_114_2();
}

uint64_t _ProtoTable.Row.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoTable.Content(0), sub_26A395728(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_29_22();
    result = sub_26A396B00(v4, v5, v6, v7);
    if (!v1)
    {
      if (*(v2[1] + 16))
      {
        type metadata accessor for _ProtoBackgroundElement();
        sub_26A395728();
        OUTLINED_FUNCTION_218_1();
        OUTLINED_FUNCTION_48_8();
        sub_26A424A74();
      }

      v8 = v2[2];
      v9 = v2[3];
      OUTLINED_FUNCTION_84_0();
      if (v10)
      {
        OUTLINED_FUNCTION_20_4();
        sub_26A424A64();
      }

      v11 = *(type metadata accessor for _ProtoTable.Row(0) + 28);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A396B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoActionProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for _ProtoTable.Row(0);
  sub_26A1F9BEC(a1 + *(v11 + 32), v8, &off_28036C7C0, &off_26A427400);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

void static _ProtoTable.Row.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_47_1();
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_56();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_59_7();
  v19 = *v1;
  v20 = *v0;
  sub_26A0E3EB0();
  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  v47 = type metadata accessor for _ProtoTable.Row(0);
  v22 = *(v47 + 32);
  v23 = *(v15 + 48);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v24, v25, v26, v27);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v28, v29, v30, v31);
  v32 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v32, v33, v4);
  if (v40)
  {
    OUTLINED_FUNCTION_37(v2 + v23, 1, v4);
    if (v40)
    {
      sub_26A13440C();
      goto LABEL_7;
    }

LABEL_27:
    sub_26A13440C();
LABEL_28:
    v39 = 0;
    goto LABEL_29;
  }

  sub_26A1F9BEC(v2, v3, &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_37(v2 + v23, 1, v4);
  if (v40)
  {
    sub_26A390FC0();
    goto LABEL_27;
  }

  sub_26A390448();
  v41 = *v3;
  v42 = *v10;
  sub_26A0E36D8();
  if ((v43 & 1) == 0 || (v3[1] == v10[1] ? (v44 = v3[2] == v10[2]) : (v44 = 0), !v44 && (sub_26A425354() & 1) == 0))
  {
    sub_26A390FC0();
    sub_26A390FC0();
    goto LABEL_27;
  }

  v45 = *(v4 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v46 = sub_26A424B64();
  sub_26A390FC0();
  OUTLINED_FUNCTION_22_1();
  sub_26A390FC0();
  sub_26A13440C();
  if ((v46 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  v34 = v1[1];
  v35 = v0[1];
  sub_26A0DDAD4();
  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v37 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = *(v47 + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v39 = OUTLINED_FUNCTION_46_3();
LABEL_29:
  OUTLINED_FUNCTION_214_1(v39);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3970E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A397164(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3971D4()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A397298()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803732D0);
  __swift_project_value_buffer(v0, qword_2803732D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "empty";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visual";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "line_limit";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Content.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A3975A4(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_10_3();
        sub_26A397A9C(v11, v12, v13, v14);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A397F94(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A39848C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A3975A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoTable.EmptyCell(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373728, &qword_26A4420E8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8B0, &unk_26A425E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A390FC0();
    }

    else
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_280373728, &qword_26A4420E8);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A397A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8B0, &unk_26A425E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_28036CAE0, &unk_26A4273F0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A397F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoVisualProperty();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8B0, &unk_26A425E60);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_28036CAE8, &unk_26A426430);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A39848C()
{
  v0 = *(type metadata accessor for _ProtoTable.Content(0) + 24);
  type metadata accessor for _ProtoOptionalInt(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t _ProtoTable.Content.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_117_4();
  v3 = OUTLINED_FUNCTION_68_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v9, v10, v11, v12);
  type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  OUTLINED_FUNCTION_17_3(v2);
  if (v13)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = OUTLINED_FUNCTION_13_10();
      sub_26A398874(v15, v16, v17, v18);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_13_10();
      sub_26A398A88(v23, v24, v25, v26);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_13_10();
    sub_26A398664(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_66_9();
  result = sub_26A390FC0();
  if (!v1)
  {
LABEL_8:
    v28 = OUTLINED_FUNCTION_13_10();
    result = sub_26A398C9C(v28, v29, v30, v31);
    if (!v1)
    {
      v32 = v0 + *(type metadata accessor for _ProtoTable.Content(0) + 20);
      OUTLINED_FUNCTION_69();
      return sub_26A424774();
    }
  }

  return result;
}

uint64_t sub_26A398664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.EmptyCell(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8B0, &unk_26A425E60);
  v11 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A398874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8B0, &unk_26A425E60);
  v11 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A398A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoVisualProperty();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8B0, &unk_26A425E60);
  v11 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A398C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoOptionalInt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for _ProtoTable.Content(0);
  sub_26A1F9BEC(a1 + *(v11 + 24), v8, &qword_28036C898, &qword_26A425E48);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

void static _ProtoTable.Content.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v55 = type metadata accessor for _ProtoOptionalInt(0);
  v5 = OUTLINED_FUNCTION_12(v55);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v52 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v53 = (&v52 - v14);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8A0, &unk_26A425E50);
  OUTLINED_FUNCTION_12(v54);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_46();
  v19 = type metadata accessor for _ProtoTable.Content.OneOf_Value(v18);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v23 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B8, &qword_26A440DD0);
  OUTLINED_FUNCTION_41(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  v34 = &v52 - v33;
  v36 = *(v35 + 56);
  v56 = v4;
  OUTLINED_FUNCTION_112_4(v4, &v52 - v33);
  v57 = v2;
  OUTLINED_FUNCTION_112_4(v2, &v34[v36]);
  OUTLINED_FUNCTION_37(v34, 1, v19);
  if (v37)
  {
    OUTLINED_FUNCTION_37(&v34[v36], 1, v19);
    if (!v37)
    {
      goto LABEL_20;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A1F9BEC(v34, v28, &qword_28036C8B0, &unk_26A425E60);
    OUTLINED_FUNCTION_37(&v34[v36], 1, v19);
    if (v37)
    {
      sub_26A390FC0();
      goto LABEL_20;
    }

    sub_26A390448();
    static _ProtoTable.Content.OneOf_Value.== infix(_:_:)();
    v39 = v38;
    sub_26A390FC0();
    sub_26A390FC0();
    sub_26A13440C();
    if ((v39 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v40 = type metadata accessor for _ProtoTable.Content(0);
  v41 = *(v40 + 24);
  v42 = *(v54 + 48);
  OUTLINED_FUNCTION_131_5(v56 + v41, v0);
  OUTLINED_FUNCTION_131_5(v57 + v41, v0 + v42);
  v43 = OUTLINED_FUNCTION_71();
  v44 = v55;
  OUTLINED_FUNCTION_37(v43, v45, v55);
  if (v37)
  {
    OUTLINED_FUNCTION_37(v0 + v42, 1, v44);
    if (v37)
    {
      sub_26A13440C();
      goto LABEL_16;
    }

LABEL_20:
    sub_26A13440C();
LABEL_21:
    v47 = 0;
    goto LABEL_22;
  }

  v48 = v53;
  sub_26A1F9BEC(v0, v53, &qword_28036C898, &qword_26A425E48);
  OUTLINED_FUNCTION_37(v0 + v42, 1, v44);
  if (v49)
  {
    sub_26A390FC0();
    goto LABEL_20;
  }

  v50 = v52;
  sub_26A390448();
  if (*v48 != *v50)
  {
    sub_26A390FC0();
    sub_26A390FC0();
    goto LABEL_20;
  }

  v51 = *(v44 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  LOBYTE(v51) = sub_26A424B64();
  sub_26A390FC0();
  sub_26A390FC0();
  sub_26A13440C();
  if ((v51 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v46 = *(v40 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v47 = sub_26A424B64();
LABEL_22:
  OUTLINED_FUNCTION_214_1(v47);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A39945C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3994DC(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39954C()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A399690(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A399710(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A399780()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A399848()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373320);
  __swift_project_value_buffer(v0, qword_280373320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "column_span";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "alignment";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.HeaderCell.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A399BB0();
        break;
      case 2:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248E4();
        break;
      case 1:
        OUTLINED_FUNCTION_5_6();
        sub_26A399AFC();
        break;
    }
  }

  return result;
}

uint64_t sub_26A399AFC()
{
  v0 = *(type metadata accessor for _ProtoTable.HeaderCell(0) + 28);
  type metadata accessor for _ProtoTable.Content(0);
  sub_26A395728();
  return sub_26A424944();
}

uint64_t _ProtoTable.HeaderCell.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_87();
  result = sub_26A399CEC(v2, v3, v4, v5);
  if (!v1)
  {
    if (*v0)
    {
      OUTLINED_FUNCTION_20_4();
      OUTLINED_FUNCTION_87();
      sub_26A424A34();
    }

    if (*(v0 + 8))
    {
      v8 = *(v0 + 8);
      v9 = *(v0 + 16);
      sub_26A399ECC();
      OUTLINED_FUNCTION_48_8();
      sub_26A4249F4();
    }

    v7 = *(type metadata accessor for _ProtoTable.HeaderCell(0) + 24);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A399CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C888, &qword_26A440D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.Content(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = type metadata accessor for _ProtoTable.HeaderCell(0);
  sub_26A1F9BEC(a1 + *(v11 + 28), v8, &qword_28036C888, &qword_26A440D90);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A390448();
  sub_26A395728();
  sub_26A424A84();
  return sub_26A390FC0();
}

unint64_t sub_26A399ECC()
{
  result = qword_280373450;
  if (!qword_280373450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373450);
  }

  return result;
}

void static _ProtoTable.HeaderCell.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for _ProtoTable.Content(0);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = OUTLINED_FUNCTION_68_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_41(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_131_3();
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C890, &qword_26A425E40) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_141_0();
  v35 = type metadata accessor for _ProtoTable.HeaderCell(0);
  v19 = *(v35 + 28);
  v20 = v16[14];
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v21, v22, v23, v24);
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v25, v26, v27, v28);
  OUTLINED_FUNCTION_37(v0, 1, v6);
  if (v29)
  {
    OUTLINED_FUNCTION_37(v0 + v20, 1, v6);
    if (v29)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_14:
    v34 = 0;
    goto LABEL_15;
  }

  sub_26A1F9BEC(v0, v1, &qword_28036C888, &qword_26A440D90);
  OUTLINED_FUNCTION_37(v0 + v20, 1, v6);
  if (v29)
  {
    sub_26A390FC0();
    goto LABEL_9;
  }

  sub_26A390448();
  static _ProtoTable.Content.== infix(_:_:)();
  v31 = v30;
  sub_26A390FC0();
  sub_26A390FC0();
  sub_26A13440C();
  if ((v31 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*v5 != *v3)
  {
    goto LABEL_14;
  }

  v32 = *(v3 + 16);
  if (!sub_26A257DA8(*(v5 + 8), *(v5 + 16), *(v3 + 8)))
  {
    goto LABEL_14;
  }

  v33 = *(v35 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_74();
  sub_26A395728();
  v34 = sub_26A424B64();
LABEL_15:
  OUTLINED_FUNCTION_214_1(v34);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A39A280(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39A300(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39A370()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39A434()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373348);
  __swift_project_value_buffer(v0, qword_280373348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spacer";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.Column.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_10_3();
      sub_26A39AB7C(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_10_3();
      sub_26A39A684(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_26A39A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373718, &qword_26A4420D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8D8, &qword_26A425E88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390FC0();
    }

    else
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_280373718, &qword_26A4420D8);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A39AB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373720, &qword_26A4420E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8D8, &qword_26A425E88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_280373720, &qword_26A4420E0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t _ProtoTable.Column.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_117_4();
  v3 = OUTLINED_FUNCTION_68_8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v9, v10, v11, v12);
  type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  OUTLINED_FUNCTION_17_3(v2);
  if (v13)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_22_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = OUTLINED_FUNCTION_13_10();
    sub_26A39B38C(v14, v15, v16, v17);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_13_10();
    sub_26A39B178(v18, v19, v20, v21);
  }

  OUTLINED_FUNCTION_64_11();
  result = sub_26A390FC0();
  if (!v1)
  {
LABEL_6:
    v23 = v0 + *(type metadata accessor for _ProtoTable.Column(0) + 20);
    OUTLINED_FUNCTION_69();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A39B178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8D8, &qword_26A425E88);
  v11 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8D8, &qword_26A425E88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.SpacerColumnCell(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8D8, &qword_26A425E88);
  v11 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

void static _ProtoTable.Column.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = OUTLINED_FUNCTION_53();
  v3 = type metadata accessor for _ProtoTable.Column.OneOf_Cell(v2);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = OUTLINED_FUNCTION_22_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E0, &unk_26A425E90);
  OUTLINED_FUNCTION_41(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_59_7();
  v18 = *(v17 + 56);
  OUTLINED_FUNCTION_60_14(v0);
  OUTLINED_FUNCTION_126_5();
  v19 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v19, v20, v3);
  if (v25)
  {
    OUTLINED_FUNCTION_37(v1 + v18, 1, v3);
    if (v25)
    {
      sub_26A13440C();
LABEL_12:
      v29 = *(type metadata accessor for _ProtoTable.Column(0) + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_0_74();
      sub_26A395728();
      v26 = OUTLINED_FUNCTION_14_7();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v21 = OUTLINED_FUNCTION_12_2();
  sub_26A1F9BEC(v21, v22, v23, v24);
  OUTLINED_FUNCTION_37(v1 + v18, 1, v3);
  if (v25)
  {
    sub_26A390FC0();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A390448();
  OUTLINED_FUNCTION_88();
  static _ProtoTable.Column.OneOf_Cell.== infix(_:_:)();
  v28 = v27;
  sub_26A390FC0();
  sub_26A390FC0();
  sub_26A13440C();
  if (v28)
  {
    goto LABEL_12;
  }

LABEL_10:
  v26 = 0;
LABEL_13:
  OUTLINED_FUNCTION_214_1(v26);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A39B87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39B8FC(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39B96C()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39B9EC()
{
  result = MEMORY[0x26D65BA70](0xD000000000000011, 0x800000026A44AF90);
  qword_280373360 = 0x5574657070696E53;
  *algn_280373368 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39BB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39BB80(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39BBF0()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39BC6C()
{
  result = MEMORY[0x26D65BA70](0xD000000000000012, 0x800000026A44AF70);
  qword_280373388 = 0x5574657070696E53;
  unk_280373390 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39BD04()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373398);
  __swift_project_value_buffer(v0, qword_280373398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "auto";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fixed";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alignment";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoTable.ContentColumnCell.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A39C99C();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A39C4A4(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A39BFAC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A39BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoTable.AutoColumnSize(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373708, &qword_26A4420C8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8C0, &qword_26A425E70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390FC0();
    }

    else
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_280373708, &qword_26A4420C8);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A39C4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373710, &qword_26A4420D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1F9BEC(a1, v12, &qword_28036C8C0, &qword_26A425E70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A390448();
    sub_26A390448();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A390448();
      sub_26A390448();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A390FC0();
    }
  }

  sub_26A395728();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1F9BEC(v22, v19, &qword_280373710, &qword_26A4420D0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A390448();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A390448();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A39C99C()
{
  v0 = *(type metadata accessor for _ProtoTable.ContentColumnCell(0) + 20);
  sub_26A399ECC();
  return sub_26A424894();
}

uint64_t _ProtoTable.ContentColumnCell.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  v2 = OUTLINED_FUNCTION_68_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  OUTLINED_FUNCTION_77_9();
  sub_26A1F9BEC(v10, v11, v12, v13);
  type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  OUTLINED_FUNCTION_17_3(v9);
  if (v14)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_29_22();
    sub_26A39CD78(v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_124();
    OUTLINED_FUNCTION_29_22();
    sub_26A39CB64(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_2_51();
  result = sub_26A390FC0();
  if (!v0)
  {
LABEL_6:
    v24 = type metadata accessor for _ProtoTable.ContentColumnCell(0);
    v25 = (v1 + *(v24 + 20));
    v26 = *v25;
    if (!*v25 || (v27 = *(v25 + 8), v29 = v26, v30 = v27, sub_26A399ECC(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v0))
    {
      v28 = *(v24 + 24);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A39CB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.AutoColumnSize(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8C0, &qword_26A425E70);
  v11 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8C0, &qword_26A425E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for _ProtoTable.FixedColumnSize(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_26A1F9BEC(a1, v8, &qword_28036C8C0, &qword_26A425E70);
  v11 = type metadata accessor for _ProtoTable.ContentColumnCell.OneOf_Size(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A390448();
      sub_26A395728();
      sub_26A424A84();
      return sub_26A390FC0();
    }

    result = sub_26A390FC0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A39D014(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39D094(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39D104()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39D1B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D65BA70](a2, a3);
  *a4 = 0x5574657070696E53;
  *a5 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39D254(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A424AC4();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v4, v5);
  return sub_26A424AB4();
}

uint64_t _ProtoTable.AutoColumnSize.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_44();
    result = sub_26A424834();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_26A39D360(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39D3E0(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39D450()
{
  sub_26A395728();

  return sub_26A4249B4();
}

uint64_t sub_26A39D4CC()
{
  result = MEMORY[0x26D65BA70](0xD000000000000010, 0x800000026A44AF40);
  qword_2803733D8 = 0x5574657070696E53;
  unk_2803733E0 = 0xEF656C6261542E49;
  return result;
}

uint64_t sub_26A39D564()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803733E8);
  __swift_project_value_buffer(v0, qword_2803733E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "percent";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26A424AA4();
}

uint64_t _ProtoTable.FixedColumnSize.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_18_3();
  while (1)
  {
    OUTLINED_FUNCTION_103();
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A4248D4();
    }
  }

  return result;
}

uint64_t _ProtoTable.FixedColumnSize.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_12_7(), result = sub_26A424A24(), !v1))
  {
    v2 = *(type metadata accessor for _ProtoTable.FixedColumnSize(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A39D7FC()
{
  OUTLINED_FUNCTION_101_3();
  v1 = v0;
  sub_26A425504();
  v1(0);
  OUTLINED_FUNCTION_125();
  sub_26A395728();
  sub_26A424B44();
  return sub_26A425554();
}

unint64_t sub_26A39D880()
{
  result = qword_280373488;
  if (!qword_280373488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373488);
  }

  return result;
}

unint64_t sub_26A39D8D8()
{
  result = qword_280373490;
  if (!qword_280373490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373490);
  }

  return result;
}

unint64_t sub_26A39D930()
{
  result = qword_280373498;
  if (!qword_280373498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803734A0, &qword_26A440F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373498);
  }

  return result;
}

uint64_t sub_26A39E55C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A395728();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A39E66C(uint64_t a1)
{
  v2 = sub_26A395728();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A39E724()
{
  sub_26A395728();

  return sub_26A4249B4();
}

void sub_26A39E7CC()
{
  sub_26A39E920(319, &qword_280373590, type metadata accessor for _ProtoTable.Column, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A39E920(319, &qword_280373598, type metadata accessor for _ProtoTable.Row, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26A424794();
      if (v2 <= 0x3F)
      {
        sub_26A39E920(319, &qword_2803735A0, type metadata accessor for _ProtoTable.Header, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A39E920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A39EA20()
{
  sub_26A39E920(319, &qword_2803735D0, type metadata accessor for _ProtoTable.Content, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26A39E920(319, &qword_28036F5F0, type metadata accessor for _ProtoBackgroundElement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26A424794();
      if (v2 <= 0x3F)
      {
        sub_26A39E920(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A39EB94()
{
  sub_26A39E920(319, &qword_2803735E8, type metadata accessor for _ProtoTable.Content.OneOf_Value, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      sub_26A39E920(319, &qword_2803735F0, type metadata accessor for _ProtoOptionalInt, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A39EC90()
{
  result = type metadata accessor for _ProtoTable.EmptyCell(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoMultilineTextProperty(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ProtoVisualProperty();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_26A39ED68()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    sub_26A39E920(319, &qword_280373628, type metadata accessor for _ProtoTable.Content, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A39EE5C()
{
  sub_26A39E920(319, &qword_280373640, type metadata accessor for _ProtoTable.Column.OneOf_Cell, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A424794();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A39EFC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_26A39E920(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_26A424794();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26A39F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A39F130()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A39F1C4()
{
  result = sub_26A424794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t **OUTLINED_FUNCTION_5_49(uint64_t **result)
{
  v1 = (*result)[3];
  v2 = (*result)[4];
  v3 = (*result)[1];
  v4 = (*result)[2];
  v5 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_37@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_26A1F9BEC(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_32_19()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_39_21(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_26A1F9BEC(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_60_14(uint64_t a1)
{

  return sub_26A1F9BEC(a1, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_87_9(uint64_t a1)
{
  v3 = v1 + *(a1 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_93_8()
{

  return sub_26A390FC0();
}

void *OUTLINED_FUNCTION_94_7(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_106_7()
{

  return sub_26A390448();
}

uint64_t OUTLINED_FUNCTION_107_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_112_4(uint64_t a1, uint64_t a2)
{

  return sub_26A1F9BEC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_114_2()
{

  return sub_26A424934();
}

uint64_t OUTLINED_FUNCTION_126_5()
{

  return sub_26A1F9BEC(v0, v1 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_127_4@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_128_3()
{

  return sub_26A424794();
}

uint64_t OUTLINED_FUNCTION_130_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = v3;
  v5 = v2 + *(a1 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_131_5(uint64_t a1, uint64_t a2)
{

  return sub_26A1F9BEC(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_133_4()
{

  return sub_26A390448();
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return sub_26A390448();
}

uint64_t OUTLINED_FUNCTION_135_5()
{

  return sub_26A390448();
}

uint64_t sub_26A39F798(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_26A10D50C();
    v4 = v14;
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      if (a3)
      {

        MEMORY[0x26D65BA70](v9, v8);
        MEMORY[0x26D65BA70](34, 0xE100000000000000);

        v9 = 34;
        v8 = 0xE100000000000000;
      }

      else
      {
        v10 = *v7;
      }

      v11 = *(v14 + 16);
      if (v11 >= *(v14 + 24) >> 1)
      {
        sub_26A10D50C();
      }

      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_26A39F8C8()
{
  OUTLINED_FUNCTION_194_2();
  v3 = type metadata accessor for _ProtoCustomCanvas();
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for CustomCanvas();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v16 = v15 - v14;
  if (v2)
  {
    v17 = *(v1 + 64);
    OUTLINED_FUNCTION_28_21();
    OUTLINED_FUNCTION_67_7();
    sub_26A3AF924();
    if ((v17 & 1) == 0)
    {
      v18 = *(v9 + 8);

      strcpy(v9, "SystemPlugin");
      *(v9 + 13) = 0;
      *(v9 + 14) = -5120;
      v19 = *(v9 + 24);

      *(v9 + 16) = 0x6C6F686563616C50;
      *(v9 + 24) = 0xEB00000000726564;
      v20 = *(v1 + 48);
      v21 = *(v1 + 56);

      sub_26A28E6C8();
      v23 = v22;
      v25 = v24;
      sub_26A0E4784(*(v9 + 32), *(v9 + 40));
      *(v9 + 32) = v23;
      *(v9 + 40) = v25;
    }

    sub_26A3AF978();
  }

  else
  {
    OUTLINED_FUNCTION_245();
    sub_26A3AF924();
  }

  sub_26A3AF978();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_189_3(v26);
  OUTLINED_FUNCTION_26_32();
  result = sub_26A3AF8D0();
  *(v0 + *(v16 + 28)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26A39FA98()
{
  v2 = OUTLINED_FUNCTION_194_2();
  v3 = type metadata accessor for _ProtoTextElement(v2);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for TextElement();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  if (v1)
  {
    OUTLINED_FUNCTION_67_7();
    sub_26A3AF924();
    v18 = *(v9 + 16);
    if (v18 != 255)
    {
      sub_26A0D6768(*v9, *(v9 + 8), *(v9 + 16));
      *v9 = xmmword_26A42D990;
      *(v9 + 16) = v18 & 1;
    }

    sub_26A3AF978();
    sub_26A3AF978();
  }

  else
  {
    OUTLINED_FUNCTION_245();
    sub_26A3AF924();
  }

  sub_26A3AF978();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CDE0, &qword_26A43DEA0);
  OUTLINED_FUNCTION_189_3(v19);
  result = sub_26A3AF8D0();
  *(v0 + *(v17 + 28)) = MEMORY[0x277D84F90];
  return result;
}

void sub_26A39FC64()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_Switch(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A39FD50()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_Pair(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A39FE3C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoCommand.AppPunchout(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A39FF28()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoCoreChart();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0014()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoColor(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0100()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoSeparators();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A01EC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoResponse.Component(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A02D8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSummaryItem_PairNumber(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A03C4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoColorElement();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A04B0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoStandardPlayerButton(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A059C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoHorizontalList_Standard.Item(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0688()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoKeyValue_Standard.Pair(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0774()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoIntentsUI_Standard.Slot(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0860()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoOrnamentElement();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A094C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoSwitch();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0A38()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoResponse.Section(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0B24()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoTable.Header(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0C10()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoTextElement(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0CFC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoImageElement(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0DE8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoPlayerButton(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0ED4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A0FC0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoActionElement(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A10AC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoCustomElement();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1198()
{
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = type metadata accessor for _ProtoVisualElement(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  sub_26A4247A4();
  sub_26A3AED00();
  sub_26A424964();
  if (!v0)
  {
    sub_26A3AF924();
    VisualElement.init(proto:)();
    OUTLINED_FUNCTION_29_8();
    sub_26A3AF8D0();
  }

  OUTLINED_FUNCTION_9_18();
}

void sub_26A3A130C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A13F8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoResponse.Group(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A14E4()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoVisualProperty();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A15D0()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoWatchListButton(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A16BC()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoCoreChartElement();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A17A8()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_24_8();
  v5 = type metadata accessor for _ProtoBackgroundElement();
  v6 = OUTLINED_FUNCTION_8_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1894()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoMultilineTextProperty(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1980()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoPlayer(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1A6C()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoSlider(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1B58()
{
  OUTLINED_FUNCTION_16_14();
  v1 = OUTLINED_FUNCTION_15_38();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_24_8();
  v6 = type metadata accessor for _ProtoResponse(v5);
  v7 = OUTLINED_FUNCTION_8_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v0)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF978();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1C44()
{
  OUTLINED_FUNCTION_16_14();
  v2 = OUTLINED_FUNCTION_15_38();
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_24_8();
  v7 = type metadata accessor for _ProtoTable.Row(v6);
  v8 = OUTLINED_FUNCTION_8_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_52();
  sub_26A4247A4();
  sub_26A3AED00();
  OUTLINED_FUNCTION_4_46();
  if (!v1)
  {
    OUTLINED_FUNCTION_37_0();
    sub_26A3AF924();
    v11 = v0 + *(type metadata accessor for TableRow() + 20);
    sub_26A424724();
    sub_26A3AF8D0();
  }

  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_15_17();
}

void sub_26A3A1D60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for ImageElement.SourceType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_18();
  if (a1)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v35 = a4;
      v36 = a2;
      v37 = a3;
      v38 = MEMORY[0x277D84F90];
      sub_26A10D50C();
      v13 = v38;
      v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v15 = *(v10 + 72);
      do
      {
        sub_26A3AF924();
        ImageElement.SourceType.description.getter();
        v17 = v16;
        v19 = v18;
        sub_26A3AF8D0();
        v38 = v13;
        v20 = v13[2];
        if (v20 >= v13[3] >> 1)
        {
          sub_26A10D50C();
          v13 = v38;
        }

        v13[2] = v20 + 1;
        v21 = &v13[2 * v20];
        v21[4] = v17;
        v21[5] = v19;
        v14 += v15;
        --v12;
      }

      while (v12);
      v38 = v13;

      sub_26A3AED68(&v38);

      sub_26A39F798(v38, v4, v35);
      OUTLINED_FUNCTION_126_4();
      v38 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      sub_26A424B54();

      OUTLINED_FUNCTION_81_0();
      v38 = v22;
      v39 = v23;
      v24 = OUTLINED_FUNCTION_245();
      v26 = sub_26A31B838(v24, v25);
      v28 = v27;

      MEMORY[0x26D65BA70](v26, v28);

      OUTLINED_FUNCTION_184_1();
      v29 = v38;
      v30 = v39;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC20, &unk_26A426680) + 28);

      sub_26A10C464();
      v32 = OUTLINED_FUNCTION_195_0();
      sub_26A10C898(v32);
      OUTLINED_FUNCTION_56_16(*(v4 + v31));
      v33[4] = v36;
      v33[5] = v37;
      v33[6] = v29;
      v33[7] = v30;
      *(v4 + v31) = v34;
    }
  }
}

void sub_26A3A2064(unint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = v4;
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v36 = a2;
        v37 = v10;
        v35 = a4;
        v11 = sub_26A3AED44(a1);
        a4 = MEMORY[0x277D84F90];
        if (!v11)
        {
LABEL_16:
          v38 = a4;

          sub_26A3AED68(&v38);

          sub_26A39F798(v38, v5, v35);
          OUTLINED_FUNCTION_126_4();
          v38 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
          sub_26A10D548();
          OUTLINED_FUNCTION_65_0();
          sub_26A424B54();

          OUTLINED_FUNCTION_81_0();
          v38 = v20;
          v39 = v21;
          v22 = OUTLINED_FUNCTION_245();
          v24 = sub_26A31B838(v22, v23);
          v26 = v25;

          MEMORY[0x26D65BA70](v24, v26);

          OUTLINED_FUNCTION_184_1();
          v27 = v38;
          v28 = v39;
          v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC10, &qword_26A426670) + 28);

          sub_26A10C494();
          v30 = OUTLINED_FUNCTION_195_0();
          sub_26A10C8C8(v30);
          OUTLINED_FUNCTION_56_16(*&v5[v29]);
          v31[4] = v36;
          v31[5] = a3;
          v31[6] = v27;
          v31[7] = v28;
          *&v5[v29] = v32;
          return;
        }

        v12 = v11;
        v33 = a3;
        v34 = v5;
        v38 = MEMORY[0x277D84F90];
        sub_26A10D50C();
        if (v12 < 0)
        {
          __break(1u);

          __break(1u);
          return;
        }

        a3 = 0;
        a4 = v38;
        a2 = a1 & 0xC000000000000001;
        v5 = &property descriptor for _ProtoResponse.Component.primaryHeaderMarquee;
        while (1)
        {
          if (a2)
          {
            v13 = MEMORY[0x26D65BD40](a3, a1);
            goto LABEL_12;
          }

          if ((a3 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (a3 >= *(v37 + 16))
          {
            goto LABEL_19;
          }

          v13 = *(a1 + 8 * a3 + 32);
LABEL_12:
          v14 = v13;
          v15 = [v13 description];
          v16 = sub_26A424B84();
          v18 = v17;

          v38 = a4;
          v10 = a4[2];
          if (v10 >= a4[3] >> 1)
          {
            sub_26A10D50C();
            a4 = v38;
          }

          ++a3;
          a4[2] = v10 + 1;
          v19 = &a4[2 * v10];
          v19[4] = v16;
          v19[5] = v18;
          if (v12 == a3)
          {
            a3 = v33;
            v5 = v34;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

      while (sub_26A424FD4());
    }
  }
}

void sub_26A3A231C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      OUTLINED_FUNCTION_181_2();
      v6 = v31;
      v7 = (a1 + 40);
      do
      {
        if (*v7 == 1)
        {
          if (*(v7 - 1))
          {
            v8 = 0x6E6F69747061632ELL;
          }

          else
          {
            v8 = 0x746E65746E6F632ELL;
          }

          v9 = 0xE800000000000000;
        }

        else
        {
          sub_26A424EF4();

          strcpy(v30, ".UNRECOGNIZED(");
          HIBYTE(v30[1]) = -18;
          v10 = sub_26A4251B4();
          MEMORY[0x26D65BA70](v10);

          MEMORY[0x26D65BA70](41, 0xE100000000000000);
          v8 = v30[0];
          v9 = v30[1];
        }

        v31 = v6;
        v11 = v6[2];
        if (v11 >= v6[3] >> 1)
        {
          sub_26A10D50C();
          v6 = v31;
        }

        v6[2] = v11 + 1;
        v12 = &v6[2 * v11];
        v12[4] = v8;
        v12[5] = v9;
        v7 += 16;
        --v5;
      }

      while (v5);
      v30[0] = v6;

      sub_26A3AED68(v30);

      sub_26A39F798(v30[0], v29, a4);
      OUTLINED_FUNCTION_126_4();
      v30[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      v13 = sub_26A424B54();
      v15 = v14;

      OUTLINED_FUNCTION_81_0();
      v30[0] = v16;
      v30[1] = v17;
      v18 = sub_26A31B838(v13, v15);
      v20 = v19;

      MEMORY[0x26D65BA70](v18, v20);

      OUTLINED_FUNCTION_184_1();
      v21 = v30[0];
      v22 = v30[1];
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC48, &unk_26A43D740) + 28);

      sub_26A10C4AC();
      sub_26A10C8E0(*(*(v29 + v23) + 16));
      OUTLINED_FUNCTION_56_16(*(v29 + v23));
      v24[4] = a2;
      v24[5] = a3;
      v24[6] = v21;
      v24[7] = v22;
      *(v29 + v23) = v25;
    }
  }
}

void sub_26A3A261C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t), void (*a8)(void))
{
  if (a1)
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = v8;
      v39 = MEMORY[0x277D84F90];
      sub_26A10D50C();
      v13 = v39;
      v14 = (a1 + 40);
      do
      {
        v16 = *(v14 - 1);
        v15 = *v14;
        v39 = v13;
        v18 = v13[2];
        v17 = v13[3];

        if (v18 >= v17 >> 1)
        {
          sub_26A10D50C();
          v13 = v39;
        }

        v13[2] = v18 + 1;
        v19 = &v13[2 * v18];
        v19[4] = v16;
        v19[5] = v15;
        v14 += 2;
        --v10;
      }

      while (v10);
      v39 = v13;

      sub_26A3AED68(&v39);

      sub_26A39F798(v39, v11, a4);
      OUTLINED_FUNCTION_126_4();
      v39 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      sub_26A424B54();

      OUTLINED_FUNCTION_81_0();
      v39 = v20;
      v40 = v21;
      v22 = OUTLINED_FUNCTION_67_7();
      v24 = sub_26A31B838(v22, v23);
      v26 = v25;

      MEMORY[0x26D65BA70](v24, v26);

      OUTLINED_FUNCTION_184_1();
      v27 = v39;
      v28 = v40;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 28);

      a7(v30);
      a8(*(*(v11 + v29) + 16));
      OUTLINED_FUNCTION_56_16(*(v11 + v29));
      v31[4] = a2;
      v31[5] = a3;
      v31[6] = v27;
      v31[7] = v28;
      *(v11 + v29) = v32;
    }
  }
}

void sub_26A3A2878(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      OUTLINED_FUNCTION_181_2();
      v6 = v35;
      v7 = (a1 + 32);
      do
      {
        if (HIBYTE(*(v7 + 2)) == 4)
        {
          v8 = 0xE600000000000000;
          v9 = 0x726563617073;
        }

        else
        {
          v10 = *v7 | (*(v7 + 2) << 32);
          v33 = 0x286C6C6563;
          v34 = 0xE500000000000000;
          if ((v10 & 0x100000000) != 0)
          {
            v12 = 0xE400000000000000;
            v11 = 1869903201;
          }

          else
          {
            MEMORY[0x26D65BA70](0x286465786966, 0xE600000000000000);
            sub_26A424DC4();
            MEMORY[0x26D65BA70](41, 0xE100000000000000);
            v11 = 0;
            v12 = 0xE000000000000000;
          }

          MEMORY[0x26D65BA70](v11, v12);

          MEMORY[0x26D65BA70](8236, 0xE200000000000000);
          v13 = 0xE700000000000000;
          v14 = 0x746C7561666564;
          switch(v10 >> 40)
          {
            case 1uLL:
              v14 = 0x676E696461656CLL;
              break;
            case 2uLL:
              v13 = 0xE600000000000000;
              v14 = 0x7265746E6563;
              break;
            case 3uLL:
              v13 = 0xE800000000000000;
              v14 = 0x676E696C69617274;
              break;
            default:
              break;
          }

          MEMORY[0x26D65BA70](v14, v13);

          MEMORY[0x26D65BA70](41, 0xE100000000000000);
          v9 = v33;
          v8 = v34;
        }

        v35 = v6;
        v15 = v6[2];
        if (v15 >= v6[3] >> 1)
        {
          sub_26A10D50C();
          v6 = v35;
        }

        v6[2] = v15 + 1;
        v16 = &v6[2 * v15];
        v16[4] = v9;
        v16[5] = v8;
        v7 += 2;
        --v5;
      }

      while (v5);
      v33 = v6;

      sub_26A3AED68(&v33);

      sub_26A39F798(v33, v32, a4);
      OUTLINED_FUNCTION_126_4();
      v33 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
      sub_26A10D548();
      OUTLINED_FUNCTION_65_0();
      sub_26A424B54();

      OUTLINED_FUNCTION_81_0();
      v33 = v17;
      v34 = v18;
      v19 = OUTLINED_FUNCTION_67_7();
      v21 = sub_26A31B838(v19, v20);
      v23 = v22;

      MEMORY[0x26D65BA70](v21, v23);

      OUTLINED_FUNCTION_184_1();
      v24 = v33;
      v25 = v34;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40) + 28);

      sub_26A10C554();
      sub_26A10C988(*(*(v32 + v26) + 16));
      OUTLINED_FUNCTION_56_16(*(v32 + v26));
      v27[4] = a2;
      v27[5] = a3;
      v27[6] = v24;
      v27[7] = v25;
      *(v32 + v26) = v28;
    }
  }
}

Swift::String __swiftcall Component.description(redacted:)(Swift::Bool redacted)
{
  v4 = v1;
  v1026 = redacted;
  v5 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v10 = OUTLINED_FUNCTION_35(v9);
  v11 = type metadata accessor for _ProtoSummaryItem_PairNumber(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v16 = OUTLINED_FUNCTION_35(v15);
  v17 = type metadata accessor for _ProtoSummaryItem_Pair(v16);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v21);
  v22 = type metadata accessor for TertiaryHeaderStandard();
  v23 = OUTLINED_FUNCTION_41(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v26);
  v27 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11();
  v32 = OUTLINED_FUNCTION_35(v31);
  v33 = type metadata accessor for KeyValueStandard(v32);
  v34 = OUTLINED_FUNCTION_41(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v38 = OUTLINED_FUNCTION_35(v37);
  v39 = type metadata accessor for _ProtoKeyValue_Standard(v38);
  v40 = OUTLINED_FUNCTION_41(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_11();
  v44 = OUTLINED_FUNCTION_35(v43);
  v45 = type metadata accessor for HorizontalListStandard(v44);
  v46 = OUTLINED_FUNCTION_41(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_11();
  v50 = OUTLINED_FUNCTION_35(v49);
  v51 = type metadata accessor for _ProtoHorizontalList_Standard(v50);
  v52 = OUTLINED_FUNCTION_41(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v55);
  v56 = type metadata accessor for HeroHeader();
  v57 = OUTLINED_FUNCTION_41(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_11();
  v61 = OUTLINED_FUNCTION_35(v60);
  v62 = type metadata accessor for _ProtoHeroHeader(v61);
  v63 = OUTLINED_FUNCTION_41(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v66);
  v67 = type metadata accessor for SashStandard();
  v68 = OUTLINED_FUNCTION_41(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_11();
  v72 = OUTLINED_FUNCTION_35(v71);
  v73 = type metadata accessor for _ProtoSash_Standard(v72);
  v74 = OUTLINED_FUNCTION_41(v73);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFA0, &qword_26A426BC8);
  OUTLINED_FUNCTION_13_31(v78, &v1027);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_42();
  v83 = OUTLINED_FUNCTION_35(v82);
  v84 = type metadata accessor for IntentsUIStandard(v83);
  v85 = OUTLINED_FUNCTION_41(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_8();
  v1022 = v88;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_48();
  v92 = OUTLINED_FUNCTION_35(v91);
  v93 = type metadata accessor for _ProtoIntentsUI_Standard(v92);
  v94 = OUTLINED_FUNCTION_41(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_11();
  v98 = OUTLINED_FUNCTION_35(v97);
  v99 = type metadata accessor for ButtonContainer(v98);
  v100 = OUTLINED_FUNCTION_41(v99);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_11();
  v104 = OUTLINED_FUNCTION_35(v103);
  v105 = type metadata accessor for _ProtoButton_Container(v104);
  v106 = OUTLINED_FUNCTION_41(v105);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v109);
  v110 = type metadata accessor for VisualizationMap();
  v111 = OUTLINED_FUNCTION_41(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_11();
  v115 = OUTLINED_FUNCTION_35(v114);
  v116 = type metadata accessor for _ProtoVisualization_Map(v115);
  v117 = OUTLINED_FUNCTION_41(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v120);
  v121 = type metadata accessor for VisualizationImage();
  v122 = OUTLINED_FUNCTION_41(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_11();
  v126 = OUTLINED_FUNCTION_35(v125);
  v127 = type metadata accessor for _ProtoVisualization_Image(v126);
  v128 = OUTLINED_FUNCTION_41(v127);
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v131);
  v132 = type metadata accessor for VisualizationChart();
  v133 = OUTLINED_FUNCTION_41(v132);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_11();
  v137 = OUTLINED_FUNCTION_35(v136);
  v138 = type metadata accessor for _ProtoVisualization_Chart(v137);
  v139 = OUTLINED_FUNCTION_41(v138);
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v142);
  v143 = type metadata accessor for LongItemText();
  v144 = OUTLINED_FUNCTION_41(v143);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v147);
  v148 = type metadata accessor for _ProtoLongItem_Text();
  v149 = OUTLINED_FUNCTION_41(v148);
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF98, &unk_26A42DA10);
  OUTLINED_FUNCTION_41(v153);
  v155 = *(v154 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_42();
  v1020 = v157;
  v1019 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF90, &qword_26A426B40);
  OUTLINED_FUNCTION_12(v1019);
  v159 = *(v158 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_42();
  v1021 = v161;
  OUTLINED_FUNCTION_45();
  v162 = type metadata accessor for Table();
  v163 = OUTLINED_FUNCTION_41(v162);
  v165 = *(v164 + 64);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_8();
  v1018 = v166;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_48();
  v170 = OUTLINED_FUNCTION_35(v169);
  v171 = type metadata accessor for _ProtoTable(v170);
  v172 = OUTLINED_FUNCTION_41(v171);
  v174 = *(v173 + 64);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v175);
  v176 = type metadata accessor for ControlPlayerButton();
  v177 = OUTLINED_FUNCTION_41(v176);
  v179 = *(v178 + 64);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_11();
  v181 = OUTLINED_FUNCTION_35(v180);
  v182 = type metadata accessor for _ProtoControl_PlayerButton(v181);
  v183 = OUTLINED_FUNCTION_41(v182);
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v186);
  v187 = type metadata accessor for ControlSlider();
  v188 = OUTLINED_FUNCTION_41(v187);
  v190 = *(v189 + 64);
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_11();
  v192 = OUTLINED_FUNCTION_35(v191);
  v193 = type metadata accessor for _ProtoControl_Slider(v192);
  v194 = OUTLINED_FUNCTION_41(v193);
  v196 = *(v195 + 64);
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v197);
  v198 = type metadata accessor for TextInput();
  v199 = OUTLINED_FUNCTION_41(v198);
  v201 = *(v200 + 64);
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v202);
  v203 = type metadata accessor for _ProtoTextInput();
  v204 = OUTLINED_FUNCTION_41(v203);
  v206 = *(v205 + 64);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v207);
  v208 = type metadata accessor for SystemTextClarificationTitle();
  v209 = OUTLINED_FUNCTION_41(v208);
  v211 = *(v210 + 64);
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v212);
  v213 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v214 = OUTLINED_FUNCTION_41(v213);
  v216 = *(v215 + 64);
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v217);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF88, &qword_26A42DA20);
  OUTLINED_FUNCTION_13_31(v218, v999);
  v220 = *(v219 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35(v222);
  v223 = type metadata accessor for StatusIndicatorCancelled();
  v224 = OUTLINED_FUNCTION_41(v223);
  v226 = *(v225 + 64);
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_8();
  v1017 = v227;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_48();
  v231 = OUTLINED_FUNCTION_35(v230);
  v232 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v231);
  v233 = OUTLINED_FUNCTION_41(v232);
  v235 = *(v234 + 64);
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v236);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
  OUTLINED_FUNCTION_13_31(v237, v992);
  v239 = *(v238 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35(v241);
  v242 = type metadata accessor for StatusIndicatorInProgress();
  v243 = OUTLINED_FUNCTION_41(v242);
  v245 = *(v244 + 64);
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_8();
  v1016 = v246;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v248);
  OUTLINED_FUNCTION_48();
  v250 = OUTLINED_FUNCTION_35(v249);
  v251 = type metadata accessor for _ProtoStatusIndicator_InProgress(v250);
  v252 = OUTLINED_FUNCTION_41(v251);
  v254 = *(v253 + 64);
  MEMORY[0x28223BE20](v252);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v255);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF80, &unk_26A426B30);
  OUTLINED_FUNCTION_13_31(v256, v988);
  v258 = *(v257 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35(v260);
  v261 = type metadata accessor for StatusIndicatorError();
  v262 = OUTLINED_FUNCTION_41(v261);
  v264 = *(v263 + 64);
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_8();
  v1014 = v265;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_48();
  v269 = OUTLINED_FUNCTION_35(v268);
  v270 = type metadata accessor for _ProtoStatusIndicator_Error(v269);
  v271 = OUTLINED_FUNCTION_41(v270);
  v273 = *(v272 + 64);
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v274);
  v1013 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF78, &qword_26A4354C0);
  OUTLINED_FUNCTION_12(v1013);
  v276 = *(v275 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v277);
  OUTLINED_FUNCTION_42();
  v1015 = v278;
  OUTLINED_FUNCTION_45();
  v279 = type metadata accessor for StatusIndicatorSuccess();
  v280 = OUTLINED_FUNCTION_41(v279);
  v282 = *(v281 + 64);
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v284);
  OUTLINED_FUNCTION_48();
  v286 = OUTLINED_FUNCTION_35(v285);
  v287 = type metadata accessor for _ProtoStatusIndicator_Success(v286);
  v288 = OUTLINED_FUNCTION_41(v287);
  v290 = *(v289 + 64);
  MEMORY[0x28223BE20](v288);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v291);
  v292 = type metadata accessor for ReferenceFootnote();
  v293 = OUTLINED_FUNCTION_41(v292);
  v295 = *(v294 + 64);
  MEMORY[0x28223BE20](v293);
  OUTLINED_FUNCTION_11();
  v297 = OUTLINED_FUNCTION_35(v296);
  v298 = type metadata accessor for _ProtoReference_Footnote(v297);
  v299 = OUTLINED_FUNCTION_41(v298);
  v301 = *(v300 + 64);
  MEMORY[0x28223BE20](v299);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_49(v302);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v303);
  v305 = *(v304 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v306);
  OUTLINED_FUNCTION_42();
  v1023 = v307;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v308);
  v310 = *(v309 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v311);
  OUTLINED_FUNCTION_42();
  v1024 = v312;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF70, &unk_26A426B20);
  OUTLINED_FUNCTION_13_31(v313, &v1042);
  v315 = *(v314 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v316);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35(v317);
  v318 = type metadata accessor for ReferenceButton();
  v319 = OUTLINED_FUNCTION_41(v318);
  v321 = *(v320 + 64);
  MEMORY[0x28223BE20](v319);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v322);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v323);
  OUTLINED_FUNCTION_48();
  v325 = OUTLINED_FUNCTION_35(v324);
  v326 = type metadata accessor for _ProtoReference_Button(v325);
  v327 = OUTLINED_FUNCTION_41(v326);
  v329 = *(v328 + 64);
  MEMORY[0x28223BE20](v327);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v330);
  v331 = type metadata accessor for ReferenceRich();
  v332 = OUTLINED_FUNCTION_41(v331);
  v334 = *(v333 + 64);
  MEMORY[0x28223BE20](v332);
  OUTLINED_FUNCTION_11();
  v336 = OUTLINED_FUNCTION_35(v335);
  v337 = type metadata accessor for _ProtoReference_Rich(v336);
  v338 = OUTLINED_FUNCTION_41(v337);
  v340 = *(v339 + 64);
  MEMORY[0x28223BE20](v338);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v341);
  v342 = type metadata accessor for ReferenceLogo();
  v343 = OUTLINED_FUNCTION_41(v342);
  v345 = *(v344 + 64);
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_11();
  v347 = OUTLINED_FUNCTION_35(v346);
  v348 = type metadata accessor for _ProtoReference_Logo(v347);
  v349 = OUTLINED_FUNCTION_41(v348);
  v351 = *(v350 + 64);
  MEMORY[0x28223BE20](v349);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v352);
  v353 = type metadata accessor for ReferenceStandard();
  v354 = OUTLINED_FUNCTION_41(v353);
  v356 = *(v355 + 64);
  MEMORY[0x28223BE20](v354);
  OUTLINED_FUNCTION_11();
  v358 = OUTLINED_FUNCTION_35(v357);
  v359 = type metadata accessor for _ProtoReference_Standard(v358);
  v360 = OUTLINED_FUNCTION_41(v359);
  v362 = *(v361 + 64);
  MEMORY[0x28223BE20](v360);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v363);
  v364 = type metadata accessor for BinaryButton();
  v365 = OUTLINED_FUNCTION_41(v364);
  v367 = *(v366 + 64);
  MEMORY[0x28223BE20](v365);
  OUTLINED_FUNCTION_11();
  v369 = OUTLINED_FUNCTION_35(v368);
  v370 = type metadata accessor for _ProtoBinaryButton(v369);
  v371 = OUTLINED_FUNCTION_41(v370);
  v373 = *(v372 + 64);
  MEMORY[0x28223BE20](v371);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v374);
  v375 = type metadata accessor for Button();
  v376 = OUTLINED_FUNCTION_41(v375);
  v378 = *(v377 + 64);
  MEMORY[0x28223BE20](v376);
  OUTLINED_FUNCTION_11();
  v380 = OUTLINED_FUNCTION_35(v379);
  v381 = type metadata accessor for _ProtoButton(v380);
  v382 = OUTLINED_FUNCTION_41(v381);
  v384 = *(v383 + 64);
  MEMORY[0x28223BE20](v382);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v385);
  v386 = type metadata accessor for SectionHeaderRich();
  v387 = OUTLINED_FUNCTION_41(v386);
  v389 = *(v388 + 64);
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_11();
  v391 = OUTLINED_FUNCTION_35(v390);
  v392 = type metadata accessor for _ProtoSectionHeader_Rich(v391);
  v393 = OUTLINED_FUNCTION_41(v392);
  v395 = *(v394 + 64);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v396);
  v397 = type metadata accessor for SectionHeaderStandard();
  v398 = OUTLINED_FUNCTION_41(v397);
  v400 = *(v399 + 64);
  MEMORY[0x28223BE20](v398);
  OUTLINED_FUNCTION_11();
  v402 = OUTLINED_FUNCTION_35(v401);
  v403 = type metadata accessor for _ProtoSectionHeader_Standard(v402);
  v404 = OUTLINED_FUNCTION_41(v403);
  v406 = *(v405 + 64);
  MEMORY[0x28223BE20](v404);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v407);
  v408 = type metadata accessor for SecondaryHeaderEmphasized();
  v409 = OUTLINED_FUNCTION_41(v408);
  v411 = *(v410 + 64);
  MEMORY[0x28223BE20](v409);
  OUTLINED_FUNCTION_11();
  v413 = OUTLINED_FUNCTION_35(v412);
  v414 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v413);
  v415 = OUTLINED_FUNCTION_41(v414);
  v417 = *(v416 + 64);
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v418);
  v419 = type metadata accessor for SecondaryHeaderStandard();
  v420 = OUTLINED_FUNCTION_41(v419);
  v422 = *(v421 + 64);
  MEMORY[0x28223BE20](v420);
  OUTLINED_FUNCTION_11();
  v424 = OUTLINED_FUNCTION_35(v423);
  v425 = type metadata accessor for _ProtoSecondaryHeader_Standard(v424);
  v426 = OUTLINED_FUNCTION_41(v425);
  v428 = *(v427 + 64);
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v429);
  v430 = type metadata accessor for PrimaryHeaderRich();
  v431 = OUTLINED_FUNCTION_41(v430);
  v433 = *(v432 + 64);
  MEMORY[0x28223BE20](v431);
  OUTLINED_FUNCTION_11();
  v435 = OUTLINED_FUNCTION_35(v434);
  v436 = type metadata accessor for _ProtoPrimaryHeader_Rich(v435);
  v437 = OUTLINED_FUNCTION_41(v436);
  v439 = *(v438 + 64);
  MEMORY[0x28223BE20](v437);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v440);
  v441 = type metadata accessor for PrimaryHeaderMarquee();
  v442 = OUTLINED_FUNCTION_41(v441);
  v444 = *(v443 + 64);
  MEMORY[0x28223BE20](v442);
  OUTLINED_FUNCTION_11();
  v446 = OUTLINED_FUNCTION_35(v445);
  v447 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v446);
  v448 = OUTLINED_FUNCTION_41(v447);
  v450 = *(v449 + 64);
  MEMORY[0x28223BE20](v448);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v451);
  v452 = type metadata accessor for PrimaryHeaderStandard();
  v453 = OUTLINED_FUNCTION_41(v452);
  v455 = *(v454 + 64);
  MEMORY[0x28223BE20](v453);
  OUTLINED_FUNCTION_11();
  v457 = OUTLINED_FUNCTION_35(v456);
  v458 = type metadata accessor for _ProtoPrimaryHeader_Standard(v457);
  v459 = OUTLINED_FUNCTION_41(v458);
  v461 = *(v460 + 64);
  MEMORY[0x28223BE20](v459);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v462);
  v463 = type metadata accessor for SimpleItemRichSearchResult();
  v464 = OUTLINED_FUNCTION_41(v463);
  v466 = *(v465 + 64);
  MEMORY[0x28223BE20](v464);
  OUTLINED_FUNCTION_11();
  v468 = OUTLINED_FUNCTION_35(v467);
  v469 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v468);
  v470 = OUTLINED_FUNCTION_41(v469);
  v472 = *(v471 + 64);
  MEMORY[0x28223BE20](v470);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v473);
  v474 = type metadata accessor for SimpleItemPlayer();
  v475 = OUTLINED_FUNCTION_41(v474);
  v477 = *(v476 + 64);
  MEMORY[0x28223BE20](v475);
  OUTLINED_FUNCTION_11();
  v479 = OUTLINED_FUNCTION_35(v478);
  v480 = type metadata accessor for _ProtoSimpleItem_Player(v479);
  v481 = OUTLINED_FUNCTION_41(v480);
  v483 = *(v482 + 64);
  MEMORY[0x28223BE20](v481);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v484);
  v485 = type metadata accessor for SimpleItemVisual();
  v486 = OUTLINED_FUNCTION_41(v485);
  v488 = *(v487 + 64);
  MEMORY[0x28223BE20](v486);
  OUTLINED_FUNCTION_11();
  v490 = OUTLINED_FUNCTION_35(v489);
  v491 = type metadata accessor for _ProtoSimpleItem_Visual(v490);
  v492 = OUTLINED_FUNCTION_41(v491);
  v494 = *(v493 + 64);
  MEMORY[0x28223BE20](v492);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v495);
  v496 = type metadata accessor for SimpleItemReverseRich();
  v497 = OUTLINED_FUNCTION_41(v496);
  v499 = *(v498 + 64);
  MEMORY[0x28223BE20](v497);
  OUTLINED_FUNCTION_11();
  v501 = OUTLINED_FUNCTION_35(v500);
  v502 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v501);
  v503 = OUTLINED_FUNCTION_41(v502);
  v505 = *(v504 + 64);
  MEMORY[0x28223BE20](v503);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v506);
  v507 = type metadata accessor for SimpleItemRich();
  v508 = OUTLINED_FUNCTION_41(v507);
  v510 = *(v509 + 64);
  MEMORY[0x28223BE20](v508);
  OUTLINED_FUNCTION_11();
  v512 = OUTLINED_FUNCTION_35(v511);
  v513 = type metadata accessor for _ProtoSimpleItem_Rich(v512);
  v514 = OUTLINED_FUNCTION_41(v513);
  v516 = *(v515 + 64);
  MEMORY[0x28223BE20](v514);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v517);
  v518 = type metadata accessor for SimpleItemStandard();
  v519 = OUTLINED_FUNCTION_41(v518);
  v521 = *(v520 + 64);
  MEMORY[0x28223BE20](v519);
  OUTLINED_FUNCTION_11();
  v523 = OUTLINED_FUNCTION_35(v522);
  v524 = type metadata accessor for _ProtoSimpleItem_Standard(v523);
  v525 = OUTLINED_FUNCTION_41(v524);
  v527 = *(v526 + 64);
  MEMORY[0x28223BE20](v525);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v528);
  v529 = type metadata accessor for SummaryItemSwitchV2();
  v530 = OUTLINED_FUNCTION_41(v529);
  v532 = *(v531 + 64);
  MEMORY[0x28223BE20](v530);
  OUTLINED_FUNCTION_11();
  v534 = OUTLINED_FUNCTION_35(v533);
  v535 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v534);
  v536 = OUTLINED_FUNCTION_41(v535);
  v538 = *(v537 + 64);
  MEMORY[0x28223BE20](v536);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v539);
  v540 = type metadata accessor for SummaryItemPlayer();
  v541 = OUTLINED_FUNCTION_41(v540);
  v543 = *(v542 + 64);
  MEMORY[0x28223BE20](v541);
  OUTLINED_FUNCTION_11();
  v545 = OUTLINED_FUNCTION_35(v544);
  v546 = type metadata accessor for _ProtoSummaryItem_Player(v545);
  v547 = OUTLINED_FUNCTION_41(v546);
  v549 = *(v548 + 64);
  MEMORY[0x28223BE20](v547);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v550);
  v551 = type metadata accessor for SummaryItemButton();
  v552 = OUTLINED_FUNCTION_41(v551);
  v554 = *(v553 + 64);
  MEMORY[0x28223BE20](v552);
  OUTLINED_FUNCTION_11();
  v556 = OUTLINED_FUNCTION_35(v555);
  v557 = type metadata accessor for _ProtoSummaryItem_Button(v556);
  v558 = OUTLINED_FUNCTION_41(v557);
  v560 = *(v559 + 64);
  MEMORY[0x28223BE20](v558);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v561);
  v562 = type metadata accessor for SummaryItemPairNumberV2();
  v563 = OUTLINED_FUNCTION_41(v562);
  v565 = *(v564 + 64);
  MEMORY[0x28223BE20](v563);
  OUTLINED_FUNCTION_11();
  v567 = OUTLINED_FUNCTION_35(v566);
  v568 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v567);
  v569 = OUTLINED_FUNCTION_41(v568);
  v571 = *(v570 + 64);
  MEMORY[0x28223BE20](v569);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v572);
  v573 = type metadata accessor for SummaryItemPairV2();
  v574 = OUTLINED_FUNCTION_41(v573);
  v576 = *(v575 + 64);
  MEMORY[0x28223BE20](v574);
  OUTLINED_FUNCTION_11();
  v578 = OUTLINED_FUNCTION_35(v577);
  v579 = type metadata accessor for _ProtoSummaryItem_PairV2(v578);
  v580 = OUTLINED_FUNCTION_41(v579);
  v582 = *(v581 + 64);
  MEMORY[0x28223BE20](v580);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v583);
  v584 = type metadata accessor for SummaryItemDetailedText();
  v585 = OUTLINED_FUNCTION_41(v584);
  v587 = *(v586 + 64);
  MEMORY[0x28223BE20](v585);
  OUTLINED_FUNCTION_11();
  v589 = OUTLINED_FUNCTION_35(v588);
  v590 = type metadata accessor for _ProtoSummaryItem_DetailedText(v589);
  v591 = OUTLINED_FUNCTION_41(v590);
  v593 = *(v592 + 64);
  MEMORY[0x28223BE20](v591);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v594);
  v595 = type metadata accessor for SummaryItemLargeText();
  v596 = OUTLINED_FUNCTION_41(v595);
  v598 = *(v597 + 64);
  MEMORY[0x28223BE20](v596);
  OUTLINED_FUNCTION_11();
  v600 = OUTLINED_FUNCTION_35(v599);
  v601 = type metadata accessor for _ProtoSummaryItem_LargeText(v600);
  v602 = OUTLINED_FUNCTION_41(v601);
  v604 = *(v603 + 64);
  MEMORY[0x28223BE20](v602);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v605);
  v606 = type metadata accessor for SummaryItemText();
  v607 = OUTLINED_FUNCTION_41(v606);
  v609 = *(v608 + 64);
  MEMORY[0x28223BE20](v607);
  OUTLINED_FUNCTION_11();
  v611 = OUTLINED_FUNCTION_35(v610);
  v612 = type metadata accessor for _ProtoSummaryItem_Text(v611);
  v613 = OUTLINED_FUNCTION_41(v612);
  v615 = *(v614 + 64);
  MEMORY[0x28223BE20](v613);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v616);
  v617 = type metadata accessor for SummaryItemShortNumber();
  v618 = OUTLINED_FUNCTION_41(v617);
  v620 = *(v619 + 64);
  MEMORY[0x28223BE20](v618);
  OUTLINED_FUNCTION_11();
  v622 = OUTLINED_FUNCTION_35(v621);
  v623 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v622);
  v624 = OUTLINED_FUNCTION_41(v623);
  v626 = *(v625 + 64);
  MEMORY[0x28223BE20](v624);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v627);
  v628 = type metadata accessor for SummaryItemStandard();
  v629 = OUTLINED_FUNCTION_41(v628);
  v631 = *(v630 + 64);
  MEMORY[0x28223BE20](v629);
  OUTLINED_FUNCTION_11();
  v633 = OUTLINED_FUNCTION_35(v632);
  v634 = type metadata accessor for _ProtoSummaryItem_Standard(v633);
  v635 = OUTLINED_FUNCTION_41(v634);
  v637 = *(v636 + 64);
  MEMORY[0x28223BE20](v635);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v638);
  v639 = type metadata accessor for FactItemButton();
  v640 = OUTLINED_FUNCTION_41(v639);
  v642 = *(v641 + 64);
  MEMORY[0x28223BE20](v640);
  OUTLINED_FUNCTION_11();
  v644 = OUTLINED_FUNCTION_35(v643);
  v645 = type metadata accessor for _ProtoFactItem_Button(v644);
  v646 = OUTLINED_FUNCTION_41(v645);
  v648 = *(v647 + 64);
  MEMORY[0x28223BE20](v646);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v649);
  v650 = type metadata accessor for FactItemHeroNumber();
  v651 = OUTLINED_FUNCTION_41(v650);
  v653 = *(v652 + 64);
  MEMORY[0x28223BE20](v651);
  OUTLINED_FUNCTION_11();
  v655 = OUTLINED_FUNCTION_35(v654);
  v656 = type metadata accessor for _ProtoFactItem_HeroNumber(v655);
  v657 = OUTLINED_FUNCTION_41(v656);
  v659 = *(v658 + 64);
  MEMORY[0x28223BE20](v657);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v660);
  v661 = type metadata accessor for FactItemShortNumber();
  v662 = OUTLINED_FUNCTION_41(v661);
  v664 = *(v663 + 64);
  MEMORY[0x28223BE20](v662);
  OUTLINED_FUNCTION_11();
  v666 = OUTLINED_FUNCTION_35(v665);
  v667 = type metadata accessor for _ProtoFactItem_ShortNumber(v666);
  v668 = OUTLINED_FUNCTION_41(v667);
  v670 = *(v669 + 64);
  MEMORY[0x28223BE20](v668);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v671);
  v672 = type metadata accessor for FactItemStandard();
  v673 = OUTLINED_FUNCTION_41(v672);
  v675 = *(v674 + 64);
  MEMORY[0x28223BE20](v673);
  OUTLINED_FUNCTION_2_52();
  v676 = type metadata accessor for _ProtoFactItem_Standard(0);
  v677 = OUTLINED_FUNCTION_41(v676);
  v679 = *(v678 + 64);
  MEMORY[0x28223BE20](v677);
  OUTLINED_FUNCTION_1_20();
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_41(v680);
  v682 = *(v681 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v683);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_35(v684);
  v685 = type metadata accessor for CustomCanvas();
  v686 = OUTLINED_FUNCTION_41(v685);
  v688 = *(v687 + 64);
  MEMORY[0x28223BE20](v686);
  OUTLINED_FUNCTION_17();
  v691 = v689 - v690;
  MEMORY[0x28223BE20](v692);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v693);
  v694 = type metadata accessor for _ProtoCustomCanvas();
  v695 = OUTLINED_FUNCTION_41(v694);
  v697 = *(v696 + 64);
  MEMORY[0x28223BE20](v695);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v698);
  v699 = type metadata accessor for ControlSwitch();
  v700 = OUTLINED_FUNCTION_41(v699);
  v702 = *(v701 + 64);
  MEMORY[0x28223BE20](v700);
  OUTLINED_FUNCTION_18();
  v703 = type metadata accessor for _ProtoControl_Switch(0);
  v704 = OUTLINED_FUNCTION_41(v703);
  v706 = *(v705 + 64);
  MEMORY[0x28223BE20](v704);
  OUTLINED_FUNCTION_18();
  object = (v708 - v707);
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v710);
  v712 = *(v711 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v713);
  v714 = OUTLINED_FUNCTION_177();
  v715 = type metadata accessor for _ProtoResponse.Component(v714);
  v716 = OUTLINED_FUNCTION_41(v715);
  v718 = *(v717 + 64);
  MEMORY[0x28223BE20](v716);
  OUTLINED_FUNCTION_18();
  v719 = v4;
  v720 = *(v4 + 8);
  v721 = v1028;
  v720(v1027, v719);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_29();
  sub_26A3AF8D0();
  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  v722 = OUTLINED_FUNCTION_193_1();
  if (__swift_getEnumTagSinglePayload(v722, v723, v724) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    object = 0xE90000000000003ELL;
    countAndFlagsBits = 0x676E697373696D3CLL;
    v725 = sub_26A424AE4();
    __swift_project_value_buffer(v725, qword_2803A8950);
    v726 = sub_26A424AD4();
    v727 = sub_26A424E04();
    if (os_log_type_enabled(v726, v727))
    {
      v728 = swift_slowAlloc();
      *v728 = 0;
      _os_log_impl(&dword_26A0B8000, v726, v727, "Expected a Component value, but found none!", v728, 2u);
      MEMORY[0x26D65C950](v728, -1, -1);
    }
  }

  else
  {
    OUTLINED_FUNCTION_94_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_122_2();
        sub_26A3AF924();
        v782 = OUTLINED_FUNCTION_52_20();
        FactItemStandard.description(redacted:)(v782);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_61_13();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 2u:
        OUTLINED_FUNCTION_166_4(v915);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v916);
        sub_26A3AF924();
        v778 = OUTLINED_FUNCTION_52_20();
        FactItemShortNumber.description(redacted:)(v778);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_65_14();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 3u:
        OUTLINED_FUNCTION_166_4(v917);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v919);
        sub_26A3AF924();
        v780 = OUTLINED_FUNCTION_52_20();
        FactItemHeroNumber.description(redacted:)(v780);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_63_12();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 4u:
        OUTLINED_FUNCTION_166_4(v923);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v924);
        sub_26A3AF924();
        v772 = OUTLINED_FUNCTION_52_20();
        SummaryItemStandard.description(redacted:)(v772);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_72_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 5u:
        OUTLINED_FUNCTION_166_4(v925);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v926);
        sub_26A3AF924();
        v790 = OUTLINED_FUNCTION_52_20();
        SummaryItemShortNumber.description(redacted:)(v790);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_162_2();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 6u:
        OUTLINED_FUNCTION_166_4(v927);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v928);
        sub_26A3AF924();
        v792 = OUTLINED_FUNCTION_52_20();
        SummaryItemText.description(redacted:)(v792);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_160_2();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 7u:
        OUTLINED_FUNCTION_166_4(v929);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v930);
        sub_26A3AF924();
        v781 = OUTLINED_FUNCTION_52_20();
        SummaryItemLargeText.description(redacted:)(v781);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_62_12();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 8u:
        OUTLINED_FUNCTION_166_4(v931);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v932);
        sub_26A3AF924();
        v794 = OUTLINED_FUNCTION_52_20();
        SummaryItemDetailedText.description(redacted:)(v794);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_158_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 9u:
        OUTLINED_FUNCTION_166_4(v943);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v944);
        sub_26A3AF924();
        v775 = OUTLINED_FUNCTION_52_20();
        SimpleItemStandard.description(redacted:)(v775);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_67_11();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xAu:
        OUTLINED_FUNCTION_166_4(v945);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v946);
        sub_26A3AF924();
        v793 = OUTLINED_FUNCTION_52_20();
        SimpleItemRich.description(redacted:)(v793);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_159_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xBu:
        OUTLINED_FUNCTION_166_4(v949);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v950);
        sub_26A3AF924();
        v770 = OUTLINED_FUNCTION_52_20();
        SimpleItemVisual.description(redacted:)(v770);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_78_9();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xCu:
        OUTLINED_FUNCTION_166_4(v955);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v956);
        sub_26A3AF924();
        v774 = OUTLINED_FUNCTION_52_20();
        PrimaryHeaderStandard.description(redacted:)(v774);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_68_11();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xDu:
        OUTLINED_FUNCTION_166_4(v957);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v958);
        sub_26A3AF924();
        v791 = OUTLINED_FUNCTION_52_20();
        PrimaryHeaderMarquee.description(redacted:)(v791);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_161_2();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xEu:
        OUTLINED_FUNCTION_166_4(v959);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v960);
        sub_26A3AF924();
        v762 = OUTLINED_FUNCTION_52_20();
        PrimaryHeaderRich.description(redacted:)(v762);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_91_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0xFu:
        OUTLINED_FUNCTION_166_4(v961);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v962);
        sub_26A3AF924();
        v779 = OUTLINED_FUNCTION_52_20();
        SecondaryHeaderStandard.description(redacted:)(v779);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_64_12();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x10u:
        OUTLINED_FUNCTION_166_4(v969);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v970);
        sub_26A3AF924();
        v760 = OUTLINED_FUNCTION_52_20();
        Button.description(redacted:)(v760);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_94_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x11u:
        OUTLINED_FUNCTION_166_4(v971);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v972);
        sub_26A3AF924();
        v788 = OUTLINED_FUNCTION_52_20();
        BinaryButton.description(redacted:)(v788);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_59_16();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x12u:
        OUTLINED_FUNCTION_116_1(v986);
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148(v987);
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3(v984);
        sub_26A3AF924();
        countAndFlagsBits = v1011;
        if (v1026)
        {
          sub_26A27E314(v1011);
        }

        else
        {
          sub_26A3AF924();
        }

        v863 = v1024;
        v864 = v1013;
        OUTLINED_FUNCTION_94_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v864 + 28));
        StatusIndicatorSuccess.text.getter();
        v865 = type metadata accessor for TextProperty(0);
        OUTLINED_FUNCTION_25_13(v865);
        sub_26A105654();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7908(v866, v867, v868, v869, v870, v871, v872, v873, v904, v908);

        v874 = StatusIndicatorSuccess.showIndicator.getter();
        v875 = OUTLINED_FUNCTION_20_14(v874);
        sub_26A1461DC(v875);
        StatusIndicatorSuccess.action.getter(v863);
        OUTLINED_FUNCTION_27_13();
        sub_26A105550();
        sub_26A13440C();
        sub_26A0FBE18();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x13u:
        OUTLINED_FUNCTION_116_1(v990);
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148(v991);
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3(v985);
        sub_26A3AF924();
        if (v1026)
        {
          sub_26A1F33A8(v1014);
        }

        else
        {
          sub_26A3AF924();
        }

        v891 = v1024;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164(v993);
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v956 + 28));
        StatusIndicatorError.text.getter();
        v892 = type metadata accessor for TextProperty(0);
        OUTLINED_FUNCTION_25_13(v892);
        sub_26A105528();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F78E0(v893, v894, v895, v896, v897, v898, v899, v900, v904, v908);

        v901 = StatusIndicatorError.showIndicator.getter();
        v902 = OUTLINED_FUNCTION_20_14(v901);
        sub_26A146140(v902);
        StatusIndicatorError.action.getter(v891);
        OUTLINED_FUNCTION_27_13();
        sub_26A105424();
        sub_26A13440C();
        sub_26A0FBC48();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x14u:
        OUTLINED_FUNCTION_116_1(v996);
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148(v998);
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3(v989);
        sub_26A3AF924();
        if (v1026)
        {
          sub_26A156AB0(v1016);
        }

        else
        {
          sub_26A3AF924();
        }

        v839 = v1024;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164(v1001);
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v960 + 28));
        StatusIndicatorInProgress.text.getter();
        v840 = type metadata accessor for TextProperty(0);
        OUTLINED_FUNCTION_25_13(v840);
        sub_26A1053FC();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F78B8(v841, v842, v843, v844, v845, v846, v847, v848, v904, v908);

        v849 = StatusIndicatorInProgress.showIndicator.getter();
        v850 = OUTLINED_FUNCTION_20_14(v849);
        sub_26A1460A4(v850);
        StatusIndicatorInProgress.action.getter(v839);
        OUTLINED_FUNCTION_27_13();
        sub_26A1052F8();
        sub_26A13440C();
        sub_26A0FBA74();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x15u:
        OUTLINED_FUNCTION_116_1(v1004);
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148(v1006);
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3(&v994);
        sub_26A3AF924();
        if (v1026)
        {
          sub_26A380EA0(v1017);
        }

        else
        {
          sub_26A3AF924();
        }

        v851 = v1024;
        OUTLINED_FUNCTION_122_2();
        OUTLINED_FUNCTION_164(v1008);
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v967 + 28));
        StatusIndicatorCancelled.text.getter();
        v852 = type metadata accessor for TextProperty(0);
        OUTLINED_FUNCTION_25_13(v852);
        sub_26A1052D0();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7890(v853, v854, v855, v856, v857, v858, v859, v860, v904, v908);

        v861 = StatusIndicatorCancelled.showIndicator.getter();
        v862 = OUTLINED_FUNCTION_20_14(v861);
        sub_26A146008(v862);
        StatusIndicatorCancelled.action.getter(v851);
        OUTLINED_FUNCTION_27_13();
        sub_26A1051CC();
        sub_26A13440C();
        sub_26A0FB8A0();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x16u:
        OUTLINED_FUNCTION_166_4(v1000);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v1002);
        sub_26A3AF924();
        v801 = OUTLINED_FUNCTION_52_20();
        TextInput.description(redacted:)(v801);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_154_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x17u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_149_5();
        sub_26A3AF924();
        v806 = OUTLINED_FUNCTION_52_20();
        v807 = ControlSwitch.description(redacted:)(v806);
        countAndFlagsBits = v807._countAndFlagsBits;
        OUTLINED_FUNCTION_27_24();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_148_4();
        object = v807._object;
        goto LABEL_77;
      case 0x18u:
        OUTLINED_FUNCTION_166_4(v1003);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v1005);
        sub_26A3AF924();
        v777 = OUTLINED_FUNCTION_52_20();
        ControlSlider.description(redacted:)(v777);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_66_10();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x19u:
        OUTLINED_FUNCTION_166_4(v1007);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1009);
        sub_26A3AF924();
        v776 = OUTLINED_FUNCTION_52_20();
        ControlPlayerButton.description(redacted:)(v776);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_22_26();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Au:
        v811 = *countAndFlagsBits;
        v812 = *(countAndFlagsBits + 8);
        v1029 = 0;
        v1030 = 0xE000000000000000;
        sub_26A424EF4();

        v1029 = 0xD00000000000001DLL;
        v1030 = 0x800000026A448550;
        MEMORY[0x26D65BA70](v811, v812);
        MEMORY[0x26D65BA70](10530, 0xE200000000000000);

        countAndFlagsBits = v1029;
        object = v1030;
        break;
      case 0x1Bu:
        OUTLINED_FUNCTION_166_4(v973);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v974);
        sub_26A3AF924();
        v758 = OUTLINED_FUNCTION_52_20();
        ReferenceStandard.description(redacted:)(v758);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_98_10();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Cu:
        OUTLINED_FUNCTION_166_4(v975);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v976);
        sub_26A3AF924();
        v808 = OUTLINED_FUNCTION_52_20();
        ReferenceLogo.description(redacted:)(v808);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_147_6();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Du:
        OUTLINED_FUNCTION_166_4(v977);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v978);
        sub_26A3AF924();
        v809 = OUTLINED_FUNCTION_52_20();
        ReferenceRich.description(redacted:)(v809);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_146_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Eu:
        OUTLINED_FUNCTION_116_1(v982);
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148(v983);
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_171_3(v979);
        sub_26A3AF924();
        countAndFlagsBits = v1009;
        if (v1026)
        {
          _ProtoReference_Button.redactedProto.getter(v1009);
        }

        else
        {
          sub_26A3AF924();
        }

        v877 = v1023;
        v876 = v1024;
        v878 = v1012;
        v879 = v1010;
        OUTLINED_FUNCTION_94_1();
        sub_26A3AF978();
        OUTLINED_FUNCTION_38_9();
        OUTLINED_FUNCTION_24_38();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_126_2(*(v879 + 28));
        ReferenceButton.action.getter();
        v880 = type metadata accessor for ActionProperty();
        __swift_storeEnumTagSinglePayload(v876, 0, 1, v880);
        OUTLINED_FUNCTION_125_2();
        sub_26A1081A0();
        sub_26A13440C();
        ReferenceButton.label.getter();
        v881 = type metadata accessor for TextProperty(0);
        __swift_storeEnumTagSinglePayload(v877, 0, 1, v881);
        sub_26A108178();
        sub_26A13440C();
        if (*(v878 + 24) == 1)
        {
          v882 = *(v878 + 16);
        }

        sub_26A146454();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7D90(v883, v884, v885, v886, v887, v888, v889, v890, v904, v908);

        sub_26A0FF490();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_24_38();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x1Fu:
        OUTLINED_FUNCTION_128(&v1039);
        sub_26A3AF978();
        v1032 = type metadata accessor for SummaryItemPair();
        v1033 = &protocol witness table for SummaryItemPair;
        OUTLINED_FUNCTION_60_15();
        v783 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v783);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A3AF924();
        v784 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v784, v785);
        v786 = OUTLINED_FUNCTION_41_17();
        v787(v786);
        OUTLINED_FUNCTION_45_12();
        goto LABEL_59;
      case 0x20u:
        OUTLINED_FUNCTION_166_4(v933);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v934);
        sub_26A3AF924();
        v795 = OUTLINED_FUNCTION_52_20();
        SummaryItemPairV2.description(redacted:)(v795);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_157_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x21u:
        OUTLINED_FUNCTION_128(&v1040);
        sub_26A3AF978();
        v1032 = type metadata accessor for SummaryItemPairNumber();
        v1033 = &protocol witness table for SummaryItemPairNumber;
        OUTLINED_FUNCTION_90_10();
        v763 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v763);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A3AF924();
        v764 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v764, v765);
        v766 = OUTLINED_FUNCTION_41_17();
        v767(v766);
        OUTLINED_FUNCTION_45_12();
        goto LABEL_59;
      case 0x22u:
        OUTLINED_FUNCTION_166_4(v935);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v936);
        sub_26A3AF924();
        v759 = OUTLINED_FUNCTION_52_20();
        SummaryItemPairNumberV2.description(redacted:)(v759);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_96_6();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x23u:
        OUTLINED_FUNCTION_166_4(v937);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v938);
        sub_26A3AF924();
        v756 = OUTLINED_FUNCTION_52_20();
        SummaryItemButton.description(redacted:)(v756);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_102_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x24u:
        OUTLINED_FUNCTION_166_4(v921);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v922);
        sub_26A3AF924();
        v757 = OUTLINED_FUNCTION_52_20();
        FactItemButton.description(redacted:)(v757);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_99_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x25u:
        OUTLINED_FUNCTION_116_1(&v1013);
        sub_26A3AF978();
        OUTLINED_FUNCTION_117_2();
        OUTLINED_FUNCTION_148(&v1015);
        sub_26A3AF924();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_188_2(&v1010);
        sub_26A3AF924();
        v752 = v1026;
        object = v1018;
        if (v1026)
        {
          _ProtoTable.redactedProto.getter();
        }

        else
        {
          sub_26A3AF924();
        }

        v835 = v1021;
        v836 = v1019;
        sub_26A3AF978();
        v835[*(v836 + 32)] = v752;
        sub_26A3AF8D0();
        *&v835[*(v836 + 28)] = MEMORY[0x277D84F90];
        sub_26A145ED0(*v835);
        Table.columns.getter();
        sub_26A3A2878(v837, 0x736E6D756C6F63, 0xE700000000000000, 0);

        Table.header.getter();
        sub_26A104CFC();
        sub_26A13440C();
        KeyPath = swift_getKeyPath();
        sub_26A0F710C(KeyPath, 1937207154, 0xE400000000000000);

        sub_26A0FB144();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_183_1();
        goto LABEL_77;
      case 0x26u:
        OUTLINED_FUNCTION_166_4(v980);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v981);
        sub_26A3AF924();
        v810 = OUTLINED_FUNCTION_52_20();
        ReferenceFootnote.description(redacted:)(v810);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_145_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x27u:
        OUTLINED_FUNCTION_166_4(&v1011);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1012);
        sub_26A3AF924();
        v802 = OUTLINED_FUNCTION_52_20();
        LongItemText.description(redacted:)(v802);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_153_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x28u:
        OUTLINED_FUNCTION_166_4(&v1014);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1016);
        sub_26A3AF924();
        v773 = OUTLINED_FUNCTION_52_20();
        VisualizationChart.description(redacted:)(v773);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_69_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x29u:
        OUTLINED_FUNCTION_166_4(v939);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v940);
        sub_26A3AF924();
        v789 = OUTLINED_FUNCTION_52_20();
        SummaryItemPlayer.description(redacted:)(v789);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_163_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Au:
        OUTLINED_FUNCTION_166_4(v951);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v952);
        sub_26A3AF924();
        v804 = OUTLINED_FUNCTION_52_20();
        SimpleItemPlayer.description(redacted:)(v804);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_151_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Bu:
        OUTLINED_FUNCTION_166_4(v947);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v948);
        sub_26A3AF924();
        v751 = OUTLINED_FUNCTION_52_20();
        SimpleItemReverseRich.description(redacted:)(v751);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_116_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Cu:
        OUTLINED_FUNCTION_166_4(v963);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v964);
        sub_26A3AF924();
        v761 = OUTLINED_FUNCTION_52_20();
        SecondaryHeaderEmphasized.description(redacted:)(v761);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_92_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Du:
        OUTLINED_FUNCTION_128(&v1041);
        sub_26A3AF978();
        v1032 = type metadata accessor for SummaryItemSwitch();
        v1033 = &protocol witness table for SummaryItemSwitch;
        OUTLINED_FUNCTION_156_3();
        v796 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v796);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_123_2();
        sub_26A3AF924();
        v797 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v797, v798);
        v799 = OUTLINED_FUNCTION_41_17();
        v800(v799);
        OUTLINED_FUNCTION_45_12();
LABEL_59:
        sub_26A3AF8D0();
        sub_26A1EDCF8(&v1029);
        break;
      case 0x2Eu:
        OUTLINED_FUNCTION_166_4(v995);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v997);
        sub_26A3AF924();
        SystemTextClarificationTitle.description(redacted:)(1);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_140_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x2Fu:
        OUTLINED_FUNCTION_166_4(&v1017);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1018);
        sub_26A3AF924();
        v754 = OUTLINED_FUNCTION_52_20();
        VisualizationImage.description(redacted:)(v754);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_108_7();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x30u:
        OUTLINED_FUNCTION_166_4(&v1019);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1020);
        sub_26A3AF924();
        v768 = OUTLINED_FUNCTION_52_20();
        VisualizationMap.description(redacted:)(v768);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_85_8();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x31u:
        OUTLINED_FUNCTION_166_4(&v1021);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1022);
        sub_26A3AF924();
        v771 = OUTLINED_FUNCTION_52_20();
        ButtonContainer.description(redacted:)(v771);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_23_35();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x32u:
        OUTLINED_FUNCTION_148(&v1030);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1032);
        sub_26A3AF924();
        OUTLINED_FUNCTION_123_2();
        OUTLINED_FUNCTION_116_1(&v1023);
        sub_26A3AF924();
        v750 = *(v691 + 40) ^ 1;
        if (*(v691 + 40))
        {
          sub_26A3AF924();
        }

        else
        {
          v721 = v2;
          sub_26A2B3BB8();
        }

        OUTLINED_FUNCTION_164(&v1034);
        sub_26A3AF978();
        v819 = v994;
        *(v721 + *(v994 + 32)) = v750;
        sub_26A3AF8D0();
        *(v721 + *(v819 + 28)) = MEMORY[0x277D84F90];
        v820 = IntentsUIStandard.interaction.getter();
        sub_26A145DF0();

        v821 = swift_getKeyPath();
        sub_26A0F6FF0(v821, 0x73746F6C73, 0xE500000000000000, v822, v823, v824, v825, v826, v904, v908, v912, v913);

        IntentsUIStandard.action.getter();
        OUTLINED_FUNCTION_125_2();
        sub_26A1047FC();
        sub_26A13440C();
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7778(v827, v828, v829, v830, v831, v832, v833, v834, v907, v911);

        sub_26A0FAA04();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x33u:
        OUTLINED_FUNCTION_166_4(&v1024);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v1025);
        sub_26A3AF924();
        v816 = OUTLINED_FUNCTION_52_20();
        SashStandard.description(redacted:)(v816);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_139_3();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x34u:
        OUTLINED_FUNCTION_166_4(&v1028);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1029);
        sub_26A3AF924();
        v815 = OUTLINED_FUNCTION_52_20();
        HeroHeader.description(redacted:)(v815);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_142_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x35u:
        OUTLINED_FUNCTION_166_4(v1031);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1033);
        sub_26A3AF924();
        v753 = OUTLINED_FUNCTION_52_20();
        HorizontalListStandard.description(redacted:)(v753);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_25_29();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x36u:
        OUTLINED_FUNCTION_166_4(v965);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v966);
        sub_26A3AF924();
        v813 = OUTLINED_FUNCTION_52_20();
        SectionHeaderStandard.description(redacted:)(v813);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_144_6();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x37u:
        OUTLINED_FUNCTION_166_4(&v967);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v968);
        sub_26A3AF924();
        v814 = OUTLINED_FUNCTION_52_20();
        SectionHeaderRich.description(redacted:)(v814);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_143_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x38u:
        OUTLINED_FUNCTION_166_4(v1035);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1036);
        sub_26A3AF924();
        v755 = OUTLINED_FUNCTION_52_20();
        KeyValueStandard.description(redacted:)(v755);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_105_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x39u:
        OUTLINED_FUNCTION_166_4(&v1037);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(&v1038);
        sub_26A3AF924();
        v803 = OUTLINED_FUNCTION_52_20();
        TertiaryHeaderStandard.description(redacted:)(v803);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_152_5();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x3Au:
        OUTLINED_FUNCTION_166_4(v953);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v954);
        sub_26A3AF924();
        v769 = OUTLINED_FUNCTION_52_20();
        SimpleItemRichSearchResult.description(redacted:)(v769);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_82_11();
        sub_26A3AF8D0();
        goto LABEL_77;
      case 0x3Bu:
        OUTLINED_FUNCTION_166_4(v941);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_164(v942);
        sub_26A3AF924();
        v805 = OUTLINED_FUNCTION_52_20();
        SummaryItemSwitchV2.description(redacted:)(v805);
        OUTLINED_FUNCTION_45_12();
        OUTLINED_FUNCTION_150_4();
        sub_26A3AF8D0();
        goto LABEL_77;
      default:
        OUTLINED_FUNCTION_188_2(v918);
        sub_26A3AF978();
        OUTLINED_FUNCTION_28_21();
        OUTLINED_FUNCTION_116_1(v920);
        sub_26A3AF924();
        OUTLINED_FUNCTION_117_2();
        sub_26A3AF924();
        v729 = (*(v2 + 64) & 1) == 0;
        sub_26A39F8C8();
        v730 = swift_getKeyPath();
        sub_26A0F7F70(v730, 0x614E656C646E7562, 0xEA0000000000656DLL, 1, v731, v732, v733, v734, v904, v908);

        v735 = swift_getKeyPath();
        sub_26A0F7F70(v735, 0x644977656976, 0xE600000000000000, 1, v736, v737, v738, v739, v905, v909);

        v740 = *(v914 + 32);
        v741 = *(v914 + 40);
        sub_26A0E45C0(v740, v741);
        sub_26A3A70F0(v740, v741, 0x6174614477656976, 0xE800000000000000, &qword_28036CD58, &unk_26A437B60, sub_26A10C704, sub_26A10CB38);
        sub_26A0E4784(v740, v741);
        swift_getKeyPath();
        OUTLINED_FUNCTION_132_0();
        sub_26A0F7F70(v742, v743, v744, v745, v746, v747, v748, v749, v906, v910);

        sub_26A146B68(*(v914 + 65));
        sub_26A146B68(*(v914 + 66));
        sub_26A1018D0();
        OUTLINED_FUNCTION_45_12();
        sub_26A13440C();
        OUTLINED_FUNCTION_26_32();
        sub_26A3AF8D0();
LABEL_77:
        sub_26A3AF8D0();
        break;
    }
  }

  v817 = countAndFlagsBits;
  v818 = object;
  result._object = v818;
  result._countAndFlagsBits = v817;
  return result;
}

uint64_t sub_26A3A70F0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(uint64_t))
{
  if (a2 >> 60 != 15)
  {
    v13 = result;
    sub_26A280558(result, a2);

    sub_26A424EF4();

    OUTLINED_FUNCTION_176_1();
    v25 = v14;
    v26 = v15;
    MEMORY[0x26D65B520](v13, a2);
    v16 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v16);

    v17 = OUTLINED_FUNCTION_187_3();
    MEMORY[0x26D65BA70](v17, 0xEA0000000000292FLL);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 28);
    a7();
    v19 = *(*(v8 + v18) + 16);
    a8(v19);
    result = sub_26A10E794(v13, a2);
    v20 = *(v8 + v18);
    *(v20 + 16) = v19 + 1;
    v21 = (v20 + 32 * v19);
    v21[4] = a3;
    v21[5] = a4;
    v21[6] = v25;
    v21[7] = v26;
    *(v8 + v18) = v20;
  }

  return result;
}

uint64_t sub_26A3A7250(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v8 = result;
    sub_26A280558(result, a2);

    sub_26A424EF4();

    OUTLINED_FUNCTION_176_1();
    v17 = v9;
    v18 = v10;
    MEMORY[0x26D65B520](v8, a2);
    v11 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v11);

    v12 = OUTLINED_FUNCTION_187_3();
    MEMORY[0x26D65BA70](v12, 0xEA0000000000292FLL);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA8, &qword_26A4265B8) + 28);
    sub_26A10C7F4();
    v14 = *(*(v4 + v13) + 16);
    sub_26A10CC28(v14);
    result = sub_26A10E794(v8, a2);
    v15 = *(v4 + v13);
    *(v15 + 16) = v14 + 1;
    v16 = (v15 + 32 * v14);
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = v17;
    v16[7] = v18;
    *(v4 + v13) = v15;
  }

  return result;
}

uint64_t sub_26A3A73CC()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorError.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A73F4()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorSuccess.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A741C()
{
  OUTLINED_FUNCTION_34_12();
  result = IntentsUIStandard.slots.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A3A7444()
{
  OUTLINED_FUNCTION_34_12();
  result = IntentsUIStandard.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A746C()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.bundleName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A7494()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.viewId.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A3A74BC()
{
  OUTLINED_FUNCTION_34_12();
  result = CustomCanvas.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t Component.redactedComponent()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v1319 = a2;
  v1328 = a1;
  v1317 = a3;
  v5 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v1313 = v9;
  v10 = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for _ProtoSummaryItem_PairNumber(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v1312 = v15;
  v16 = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for _ProtoSummaryItem_Pair(v16);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v1310 = v21;
  OUTLINED_FUNCTION_45();
  v22 = type metadata accessor for TertiaryHeaderStandard();
  v23 = OUTLINED_FUNCTION_13_31(v22, v1076);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v1309 = v26;
  OUTLINED_FUNCTION_45();
  v1305 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v27 = OUTLINED_FUNCTION_12(v1305);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v1307 = v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_48();
  v1311 = v32;
  v33 = OUTLINED_FUNCTION_45();
  v34 = type metadata accessor for KeyValueStandard(v33);
  v35 = OUTLINED_FUNCTION_13_31(v34, v1075);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v1306 = v38;
  v39 = OUTLINED_FUNCTION_45();
  v40 = type metadata accessor for _ProtoKeyValue_Standard(v39);
  v41 = OUTLINED_FUNCTION_13_31(v40, &v1334);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_48();
  v1308 = v45;
  v46 = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for HorizontalListStandard(v46);
  v48 = OUTLINED_FUNCTION_13_31(v47, v1074);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v52 = OUTLINED_FUNCTION_35(v51);
  v53 = type metadata accessor for _ProtoHorizontalList_Standard(v52);
  v54 = OUTLINED_FUNCTION_13_31(v53, &v1329);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v57);
  v58 = type metadata accessor for HeroHeader();
  v59 = OUTLINED_FUNCTION_13_31(v58, v1073);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_11();
  v63 = OUTLINED_FUNCTION_35(v62);
  v64 = type metadata accessor for _ProtoHeroHeader(v63);
  v65 = OUTLINED_FUNCTION_13_31(v64, v1326);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v69);
  v70 = type metadata accessor for SashStandard();
  v71 = OUTLINED_FUNCTION_13_31(v70, v1072);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_11();
  v75 = OUTLINED_FUNCTION_35(v74);
  v76 = type metadata accessor for _ProtoSash_Standard(v75);
  v77 = OUTLINED_FUNCTION_13_31(v76, v1322);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_48();
  v82 = OUTLINED_FUNCTION_35(v81);
  v83 = type metadata accessor for IntentsUIStandard(v82);
  v84 = OUTLINED_FUNCTION_13_31(v83, v1071);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_11();
  v88 = OUTLINED_FUNCTION_35(v87);
  v89 = type metadata accessor for _ProtoIntentsUI_Standard(v88);
  v90 = OUTLINED_FUNCTION_13_31(v89, &v1319);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_48();
  v95 = OUTLINED_FUNCTION_35(v94);
  v96 = type metadata accessor for ButtonContainer(v95);
  v97 = OUTLINED_FUNCTION_13_31(v96, v1070);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_11();
  v101 = OUTLINED_FUNCTION_35(v100);
  v102 = type metadata accessor for _ProtoButton_Container(v101);
  v103 = OUTLINED_FUNCTION_13_31(v102, &v1314);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v106);
  v107 = type metadata accessor for VisualizationMap();
  v108 = OUTLINED_FUNCTION_13_31(v107, v1069);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_11();
  v112 = OUTLINED_FUNCTION_35(v111);
  v113 = type metadata accessor for _ProtoVisualization_Map(v112);
  v114 = OUTLINED_FUNCTION_13_31(v113, &v1311);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v118);
  v119 = type metadata accessor for VisualizationImage();
  v120 = OUTLINED_FUNCTION_13_31(v119, v1068);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_11();
  v124 = OUTLINED_FUNCTION_35(v123);
  v125 = type metadata accessor for _ProtoVisualization_Image(v124);
  v126 = OUTLINED_FUNCTION_13_31(v125, &v1307);
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v130);
  v131 = type metadata accessor for VisualizationChart();
  v132 = OUTLINED_FUNCTION_13_31(v131, v1067);
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11();
  v136 = OUTLINED_FUNCTION_35(v135);
  v137 = type metadata accessor for _ProtoVisualization_Chart(v136);
  v138 = OUTLINED_FUNCTION_13_31(v137, v1303);
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v142);
  v143 = type metadata accessor for LongItemText();
  v144 = OUTLINED_FUNCTION_13_31(v143, v1066);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v147);
  v148 = type metadata accessor for _ProtoLongItem_Text();
  v149 = OUTLINED_FUNCTION_13_31(v148, v1299);
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v153);
  v154 = type metadata accessor for Table();
  v155 = OUTLINED_FUNCTION_13_31(v154, v1065);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_11();
  v159 = OUTLINED_FUNCTION_35(v158);
  v160 = type metadata accessor for _ProtoTable(v159);
  v161 = OUTLINED_FUNCTION_13_31(v160, v1295);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v165);
  v166 = type metadata accessor for ControlSlider();
  v167 = OUTLINED_FUNCTION_13_31(v166, v1064);
  v169 = *(v168 + 64);
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_11();
  v171 = OUTLINED_FUNCTION_35(v170);
  v172 = type metadata accessor for _ProtoControl_Slider(v171);
  v173 = OUTLINED_FUNCTION_13_31(v172, v1293);
  v175 = *(v174 + 64);
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v177);
  v178 = type metadata accessor for TextInput();
  v179 = OUTLINED_FUNCTION_13_31(v178, v1062);
  v181 = *(v180 + 64);
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v182);
  v183 = type metadata accessor for _ProtoTextInput();
  v184 = OUTLINED_FUNCTION_41(v183);
  v186 = *(v185 + 64);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v187);
  v188 = type metadata accessor for StatusIndicatorCancelled();
  v189 = OUTLINED_FUNCTION_13_31(v188, v1063);
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_11();
  v193 = OUTLINED_FUNCTION_35(v192);
  v194 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v193);
  v195 = OUTLINED_FUNCTION_13_31(v194, v1285);
  v197 = *(v196 + 64);
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v199);
  v200 = type metadata accessor for StatusIndicatorInProgress();
  v201 = OUTLINED_FUNCTION_13_31(v200, v1061);
  v203 = *(v202 + 64);
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_11();
  v205 = OUTLINED_FUNCTION_35(v204);
  v206 = type metadata accessor for _ProtoStatusIndicator_InProgress(v205);
  v207 = OUTLINED_FUNCTION_13_31(v206, v1281);
  v209 = *(v208 + 64);
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v211);
  v212 = type metadata accessor for StatusIndicatorError();
  v213 = OUTLINED_FUNCTION_13_31(v212, v1060);
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_11();
  v217 = OUTLINED_FUNCTION_35(v216);
  v218 = type metadata accessor for _ProtoStatusIndicator_Error(v217);
  v219 = OUTLINED_FUNCTION_13_31(v218, v1277);
  v221 = *(v220 + 64);
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v223);
  v224 = type metadata accessor for StatusIndicatorSuccess();
  v225 = OUTLINED_FUNCTION_13_31(v224, v1059);
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_11();
  v229 = OUTLINED_FUNCTION_35(v228);
  v230 = type metadata accessor for _ProtoStatusIndicator_Success(v229);
  v231 = OUTLINED_FUNCTION_13_31(v230, v1273);
  v233 = *(v232 + 64);
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v235);
  v236 = type metadata accessor for ReferenceFootnote();
  v237 = OUTLINED_FUNCTION_13_31(v236, v1058);
  v239 = *(v238 + 64);
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_11();
  v241 = OUTLINED_FUNCTION_35(v240);
  v242 = type metadata accessor for _ProtoReference_Footnote(v241);
  v243 = OUTLINED_FUNCTION_13_31(v242, v1269);
  v245 = *(v244 + 64);
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v247);
  v248 = type metadata accessor for ReferenceButton();
  v249 = OUTLINED_FUNCTION_13_31(v248, v1057);
  v251 = *(v250 + 64);
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_11();
  v253 = OUTLINED_FUNCTION_35(v252);
  v254 = type metadata accessor for _ProtoReference_Button(v253);
  v255 = OUTLINED_FUNCTION_13_31(v254, v1265);
  v257 = *(v256 + 64);
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v259);
  v260 = type metadata accessor for ReferenceRich();
  v261 = OUTLINED_FUNCTION_13_31(v260, v1056);
  v263 = *(v262 + 64);
  MEMORY[0x28223BE20](v261);
  OUTLINED_FUNCTION_11();
  v265 = OUTLINED_FUNCTION_35(v264);
  v266 = type metadata accessor for _ProtoReference_Rich(v265);
  v267 = OUTLINED_FUNCTION_13_31(v266, v1261);
  v269 = *(v268 + 64);
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v270);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v271);
  v272 = type metadata accessor for ReferenceLogo();
  v273 = OUTLINED_FUNCTION_13_31(v272, v1055);
  v275 = *(v274 + 64);
  MEMORY[0x28223BE20](v273);
  OUTLINED_FUNCTION_11();
  v277 = OUTLINED_FUNCTION_35(v276);
  v278 = type metadata accessor for _ProtoReference_Logo(v277);
  v279 = OUTLINED_FUNCTION_13_31(v278, v1257);
  v281 = *(v280 + 64);
  MEMORY[0x28223BE20](v279);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v282);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v283);
  v284 = type metadata accessor for ReferenceStandard();
  v285 = OUTLINED_FUNCTION_13_31(v284, v1054);
  v287 = *(v286 + 64);
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_11();
  v289 = OUTLINED_FUNCTION_35(v288);
  v290 = type metadata accessor for _ProtoReference_Standard(v289);
  v291 = OUTLINED_FUNCTION_13_31(v290, v1253);
  v293 = *(v292 + 64);
  MEMORY[0x28223BE20](v291);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v295);
  v296 = type metadata accessor for BinaryButton();
  v297 = OUTLINED_FUNCTION_13_31(v296, v1053);
  v299 = *(v298 + 64);
  MEMORY[0x28223BE20](v297);
  OUTLINED_FUNCTION_11();
  v301 = OUTLINED_FUNCTION_35(v300);
  v302 = type metadata accessor for _ProtoBinaryButton(v301);
  v303 = OUTLINED_FUNCTION_13_31(v302, v1249);
  v305 = *(v304 + 64);
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v306);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v307);
  v308 = type metadata accessor for Button();
  v309 = OUTLINED_FUNCTION_13_31(v308, v1052);
  v311 = *(v310 + 64);
  MEMORY[0x28223BE20](v309);
  OUTLINED_FUNCTION_11();
  v313 = OUTLINED_FUNCTION_35(v312);
  v314 = type metadata accessor for _ProtoButton(v313);
  v315 = OUTLINED_FUNCTION_13_31(v314, v1245);
  v317 = *(v316 + 64);
  MEMORY[0x28223BE20](v315);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v318);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v319);
  v320 = type metadata accessor for SectionHeaderRich();
  v321 = OUTLINED_FUNCTION_13_31(v320, v1051);
  v323 = *(v322 + 64);
  MEMORY[0x28223BE20](v321);
  OUTLINED_FUNCTION_11();
  v325 = OUTLINED_FUNCTION_35(v324);
  v326 = type metadata accessor for _ProtoSectionHeader_Rich(v325);
  v327 = OUTLINED_FUNCTION_13_31(v326, v1241);
  v329 = *(v328 + 64);
  MEMORY[0x28223BE20](v327);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v330);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v331);
  v332 = type metadata accessor for SectionHeaderStandard();
  v333 = OUTLINED_FUNCTION_13_31(v332, v1050);
  v335 = *(v334 + 64);
  MEMORY[0x28223BE20](v333);
  OUTLINED_FUNCTION_11();
  v337 = OUTLINED_FUNCTION_35(v336);
  v338 = type metadata accessor for _ProtoSectionHeader_Standard(v337);
  v339 = OUTLINED_FUNCTION_13_31(v338, v1237);
  v341 = *(v340 + 64);
  MEMORY[0x28223BE20](v339);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v342);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v343);
  v344 = type metadata accessor for SecondaryHeaderEmphasized();
  v345 = OUTLINED_FUNCTION_13_31(v344, v1049);
  v347 = *(v346 + 64);
  MEMORY[0x28223BE20](v345);
  OUTLINED_FUNCTION_11();
  v349 = OUTLINED_FUNCTION_35(v348);
  v350 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v349);
  v351 = OUTLINED_FUNCTION_13_31(v350, v1233);
  v353 = *(v352 + 64);
  MEMORY[0x28223BE20](v351);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v354);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v355);
  v356 = type metadata accessor for SecondaryHeaderStandard();
  v357 = OUTLINED_FUNCTION_13_31(v356, v1048);
  v359 = *(v358 + 64);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_11();
  v361 = OUTLINED_FUNCTION_35(v360);
  v362 = type metadata accessor for _ProtoSecondaryHeader_Standard(v361);
  v363 = OUTLINED_FUNCTION_13_31(v362, v1229);
  v365 = *(v364 + 64);
  MEMORY[0x28223BE20](v363);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v366);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v367);
  v368 = type metadata accessor for PrimaryHeaderRich();
  v369 = OUTLINED_FUNCTION_13_31(v368, v1047);
  v371 = *(v370 + 64);
  MEMORY[0x28223BE20](v369);
  OUTLINED_FUNCTION_11();
  v373 = OUTLINED_FUNCTION_35(v372);
  v374 = type metadata accessor for _ProtoPrimaryHeader_Rich(v373);
  v375 = OUTLINED_FUNCTION_13_31(v374, v1225);
  v377 = *(v376 + 64);
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v379);
  v380 = type metadata accessor for PrimaryHeaderMarquee();
  v381 = OUTLINED_FUNCTION_13_31(v380, v1046);
  v383 = *(v382 + 64);
  MEMORY[0x28223BE20](v381);
  OUTLINED_FUNCTION_11();
  v385 = OUTLINED_FUNCTION_35(v384);
  v386 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v385);
  v387 = OUTLINED_FUNCTION_13_31(v386, v1221);
  v389 = *(v388 + 64);
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v390);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v391);
  v392 = type metadata accessor for PrimaryHeaderStandard();
  v393 = OUTLINED_FUNCTION_13_31(v392, v1045);
  v395 = *(v394 + 64);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_11();
  v397 = OUTLINED_FUNCTION_35(v396);
  v398 = type metadata accessor for _ProtoPrimaryHeader_Standard(v397);
  v399 = OUTLINED_FUNCTION_13_31(v398, v1217);
  v401 = *(v400 + 64);
  MEMORY[0x28223BE20](v399);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v403);
  v404 = type metadata accessor for SimpleItemRichSearchResult();
  v405 = OUTLINED_FUNCTION_13_31(v404, v1044);
  v407 = *(v406 + 64);
  MEMORY[0x28223BE20](v405);
  OUTLINED_FUNCTION_11();
  v409 = OUTLINED_FUNCTION_35(v408);
  v410 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v409);
  v411 = OUTLINED_FUNCTION_13_31(v410, v1213);
  v413 = *(v412 + 64);
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v414);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v415);
  v416 = type metadata accessor for SimpleItemPlayer();
  v417 = OUTLINED_FUNCTION_13_31(v416, v1043);
  v419 = *(v418 + 64);
  MEMORY[0x28223BE20](v417);
  OUTLINED_FUNCTION_11();
  v421 = OUTLINED_FUNCTION_35(v420);
  v422 = type metadata accessor for _ProtoSimpleItem_Player(v421);
  v423 = OUTLINED_FUNCTION_13_31(v422, v1209);
  v425 = *(v424 + 64);
  MEMORY[0x28223BE20](v423);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v427);
  v428 = type metadata accessor for SimpleItemVisual();
  v429 = OUTLINED_FUNCTION_13_31(v428, v1042);
  v431 = *(v430 + 64);
  MEMORY[0x28223BE20](v429);
  OUTLINED_FUNCTION_11();
  v433 = OUTLINED_FUNCTION_35(v432);
  v434 = type metadata accessor for _ProtoSimpleItem_Visual(v433);
  v435 = OUTLINED_FUNCTION_13_31(v434, v1205);
  v437 = *(v436 + 64);
  MEMORY[0x28223BE20](v435);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v439);
  v440 = type metadata accessor for SimpleItemReverseRich();
  v441 = OUTLINED_FUNCTION_13_31(v440, v1041);
  v443 = *(v442 + 64);
  MEMORY[0x28223BE20](v441);
  OUTLINED_FUNCTION_11();
  v445 = OUTLINED_FUNCTION_35(v444);
  v446 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v445);
  v447 = OUTLINED_FUNCTION_13_31(v446, v1201);
  v449 = *(v448 + 64);
  MEMORY[0x28223BE20](v447);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v450);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v451);
  v452 = type metadata accessor for SimpleItemRich();
  v453 = OUTLINED_FUNCTION_13_31(v452, v1040);
  v455 = *(v454 + 64);
  MEMORY[0x28223BE20](v453);
  OUTLINED_FUNCTION_11();
  v457 = OUTLINED_FUNCTION_35(v456);
  v458 = type metadata accessor for _ProtoSimpleItem_Rich(v457);
  v459 = OUTLINED_FUNCTION_13_31(v458, v1197);
  v461 = *(v460 + 64);
  MEMORY[0x28223BE20](v459);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v462);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v463);
  v464 = type metadata accessor for SimpleItemStandard();
  v465 = OUTLINED_FUNCTION_13_31(v464, v1039);
  v467 = *(v466 + 64);
  MEMORY[0x28223BE20](v465);
  OUTLINED_FUNCTION_11();
  v469 = OUTLINED_FUNCTION_35(v468);
  v470 = type metadata accessor for _ProtoSimpleItem_Standard(v469);
  v471 = OUTLINED_FUNCTION_13_31(v470, v1193);
  v473 = *(v472 + 64);
  MEMORY[0x28223BE20](v471);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v474);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v475);
  v476 = type metadata accessor for SystemTextClarificationTitle();
  v477 = OUTLINED_FUNCTION_13_31(v476, v1038);
  v479 = *(v478 + 64);
  MEMORY[0x28223BE20](v477);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v480);
  v481 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v482 = OUTLINED_FUNCTION_13_31(v481, v1189);
  v484 = *(v483 + 64);
  MEMORY[0x28223BE20](v482);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v485);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v486);
  v487 = type metadata accessor for SummaryItemSwitchV2();
  v488 = OUTLINED_FUNCTION_13_31(v487, v1037);
  v490 = *(v489 + 64);
  MEMORY[0x28223BE20](v488);
  OUTLINED_FUNCTION_11();
  v492 = OUTLINED_FUNCTION_35(v491);
  v493 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v492);
  v494 = OUTLINED_FUNCTION_13_31(v493, v1185);
  v496 = *(v495 + 64);
  MEMORY[0x28223BE20](v494);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v497);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v498);
  v499 = type metadata accessor for SummaryItemPlayer();
  v500 = OUTLINED_FUNCTION_13_31(v499, v1036);
  v502 = *(v501 + 64);
  MEMORY[0x28223BE20](v500);
  OUTLINED_FUNCTION_11();
  v504 = OUTLINED_FUNCTION_35(v503);
  v505 = type metadata accessor for _ProtoSummaryItem_Player(v504);
  v506 = OUTLINED_FUNCTION_13_31(v505, v1181);
  v508 = *(v507 + 64);
  MEMORY[0x28223BE20](v506);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v509);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v510);
  v511 = type metadata accessor for SummaryItemButton();
  v512 = OUTLINED_FUNCTION_13_31(v511, v1035);
  v514 = *(v513 + 64);
  MEMORY[0x28223BE20](v512);
  OUTLINED_FUNCTION_11();
  v516 = OUTLINED_FUNCTION_35(v515);
  v517 = type metadata accessor for _ProtoSummaryItem_Button(v516);
  v518 = OUTLINED_FUNCTION_13_31(v517, v1177);
  v520 = *(v519 + 64);
  MEMORY[0x28223BE20](v518);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v521);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v522);
  v523 = type metadata accessor for SummaryItemPairNumberV2();
  v524 = OUTLINED_FUNCTION_13_31(v523, v1034);
  v526 = *(v525 + 64);
  MEMORY[0x28223BE20](v524);
  OUTLINED_FUNCTION_11();
  v528 = OUTLINED_FUNCTION_35(v527);
  v529 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v528);
  v530 = OUTLINED_FUNCTION_13_31(v529, v1173);
  v532 = *(v531 + 64);
  MEMORY[0x28223BE20](v530);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v533);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v534);
  v535 = type metadata accessor for SummaryItemPairV2();
  v536 = OUTLINED_FUNCTION_13_31(v535, v1033);
  v538 = *(v537 + 64);
  MEMORY[0x28223BE20](v536);
  OUTLINED_FUNCTION_11();
  v540 = OUTLINED_FUNCTION_35(v539);
  v541 = type metadata accessor for _ProtoSummaryItem_PairV2(v540);
  v542 = OUTLINED_FUNCTION_13_31(v541, v1169);
  v544 = *(v543 + 64);
  MEMORY[0x28223BE20](v542);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v545);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v546);
  v547 = type metadata accessor for SummaryItemDetailedText();
  v548 = OUTLINED_FUNCTION_13_31(v547, v1032);
  v550 = *(v549 + 64);
  MEMORY[0x28223BE20](v548);
  OUTLINED_FUNCTION_11();
  v552 = OUTLINED_FUNCTION_35(v551);
  v553 = type metadata accessor for _ProtoSummaryItem_DetailedText(v552);
  v554 = OUTLINED_FUNCTION_13_31(v553, v1165);
  v556 = *(v555 + 64);
  MEMORY[0x28223BE20](v554);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v557);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v558);
  v559 = type metadata accessor for SummaryItemLargeText();
  v560 = OUTLINED_FUNCTION_13_31(v559, v1031);
  v562 = *(v561 + 64);
  MEMORY[0x28223BE20](v560);
  OUTLINED_FUNCTION_11();
  v564 = OUTLINED_FUNCTION_35(v563);
  v565 = type metadata accessor for _ProtoSummaryItem_LargeText(v564);
  v566 = OUTLINED_FUNCTION_13_31(v565, v1161);
  v568 = *(v567 + 64);
  MEMORY[0x28223BE20](v566);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v569);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v570);
  v571 = type metadata accessor for SummaryItemText();
  v572 = OUTLINED_FUNCTION_13_31(v571, v1030);
  v574 = *(v573 + 64);
  MEMORY[0x28223BE20](v572);
  OUTLINED_FUNCTION_11();
  v576 = OUTLINED_FUNCTION_35(v575);
  v577 = type metadata accessor for _ProtoSummaryItem_Text(v576);
  v578 = OUTLINED_FUNCTION_13_31(v577, v1157);
  v580 = *(v579 + 64);
  MEMORY[0x28223BE20](v578);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v581);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v582);
  v583 = type metadata accessor for SummaryItemShortNumber();
  v584 = OUTLINED_FUNCTION_13_31(v583, v1029);
  v586 = *(v585 + 64);
  MEMORY[0x28223BE20](v584);
  OUTLINED_FUNCTION_11();
  v588 = OUTLINED_FUNCTION_35(v587);
  v589 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v588);
  v590 = OUTLINED_FUNCTION_13_31(v589, v1153);
  v592 = *(v591 + 64);
  MEMORY[0x28223BE20](v590);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v593);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v594);
  v595 = type metadata accessor for SummaryItemStandard();
  v596 = OUTLINED_FUNCTION_13_31(v595, v1028);
  v598 = *(v597 + 64);
  MEMORY[0x28223BE20](v596);
  OUTLINED_FUNCTION_11();
  v600 = OUTLINED_FUNCTION_35(v599);
  v601 = type metadata accessor for _ProtoSummaryItem_Standard(v600);
  v602 = OUTLINED_FUNCTION_13_31(v601, v1149);
  v604 = *(v603 + 64);
  MEMORY[0x28223BE20](v602);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v605);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v606);
  v607 = type metadata accessor for FactItemButton();
  v608 = OUTLINED_FUNCTION_13_31(v607, v1027);
  v610 = *(v609 + 64);
  MEMORY[0x28223BE20](v608);
  OUTLINED_FUNCTION_11();
  v612 = OUTLINED_FUNCTION_35(v611);
  v613 = type metadata accessor for _ProtoFactItem_Button(v612);
  v614 = OUTLINED_FUNCTION_13_31(v613, v1145);
  v616 = *(v615 + 64);
  MEMORY[0x28223BE20](v614);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v617);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v618);
  v619 = type metadata accessor for FactItemHeroNumber();
  v620 = OUTLINED_FUNCTION_13_31(v619, v1026);
  v622 = *(v621 + 64);
  MEMORY[0x28223BE20](v620);
  OUTLINED_FUNCTION_11();
  v624 = OUTLINED_FUNCTION_35(v623);
  v625 = type metadata accessor for _ProtoFactItem_HeroNumber(v624);
  v626 = OUTLINED_FUNCTION_13_31(v625, v1141);
  v628 = *(v627 + 64);
  MEMORY[0x28223BE20](v626);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v629);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v630);
  v631 = type metadata accessor for FactItemShortNumber();
  v632 = OUTLINED_FUNCTION_13_31(v631, v1025);
  v634 = *(v633 + 64);
  MEMORY[0x28223BE20](v632);
  OUTLINED_FUNCTION_11();
  v636 = OUTLINED_FUNCTION_35(v635);
  v637 = type metadata accessor for _ProtoFactItem_ShortNumber(v636);
  v638 = OUTLINED_FUNCTION_13_31(v637, v1137);
  v640 = *(v639 + 64);
  MEMORY[0x28223BE20](v638);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v641);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v642);
  v643 = type metadata accessor for FactItemStandard();
  v644 = OUTLINED_FUNCTION_13_31(v643, v1024);
  v646 = *(v645 + 64);
  MEMORY[0x28223BE20](v644);
  OUTLINED_FUNCTION_11();
  v648 = OUTLINED_FUNCTION_35(v647);
  v649 = type metadata accessor for _ProtoFactItem_Standard(v648);
  v650 = OUTLINED_FUNCTION_13_31(v649, v1135);
  v652 = *(v651 + 64);
  MEMORY[0x28223BE20](v650);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v653);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v654);
  v655 = type metadata accessor for CustomCanvas();
  v656 = OUTLINED_FUNCTION_13_31(v655, v1022);
  v658 = *(v657 + 64);
  MEMORY[0x28223BE20](v656);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v659);
  v660 = type metadata accessor for _ProtoCustomCanvas();
  v661 = OUTLINED_FUNCTION_41(v660);
  v663 = *(v662 + 64);
  MEMORY[0x28223BE20](v661);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v664);
  v665 = type metadata accessor for ControlPlayerButton();
  v666 = OUTLINED_FUNCTION_13_31(v665, v1023);
  v668 = *(v667 + 64);
  MEMORY[0x28223BE20](v666);
  OUTLINED_FUNCTION_11();
  v670 = OUTLINED_FUNCTION_35(v669);
  v671 = type metadata accessor for _ProtoControl_PlayerButton(v670);
  v672 = OUTLINED_FUNCTION_13_31(v671, v1129);
  v674 = *(v673 + 64);
  MEMORY[0x28223BE20](v672);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v675);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v676);
  v677 = sub_26A4247D4();
  v678 = *(v677 - 8);
  v1314 = v677;
  v1315 = v678;
  v679 = *(v678 + 64);
  MEMORY[0x28223BE20](v677);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v680);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v681);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v682);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v683);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v684);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v685);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v686);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v687);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v688);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v689);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v690);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v691);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v692);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v693);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v694);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v695);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v696);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v697);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v698);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v699);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v700);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v701);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v702);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v703);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v704);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v705);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v706);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v707);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v708);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v709);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v710);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v711);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v712);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v713);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v714);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v715);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v716);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v717);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v718);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v719);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v720);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v721);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v722);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v723);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v724);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v725);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v726);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v727);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v728);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v729);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v730);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v731);
  v733 = &v1009 - v732;
  MEMORY[0x28223BE20](v734);
  v736 = &v1009 - v735;
  v737 = type metadata accessor for ControlSwitch();
  v738 = OUTLINED_FUNCTION_13_31(v737, v1021);
  v740 = *(v739 + 64);
  MEMORY[0x28223BE20](v738);
  OUTLINED_FUNCTION_11();
  v742 = OUTLINED_FUNCTION_35(v741);
  v743 = type metadata accessor for _ProtoControl_Switch(v742);
  v744 = OUTLINED_FUNCTION_12(v743);
  v746 = *(v745 + 64);
  MEMORY[0x28223BE20](v744);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v747);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v748);
  v749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v749);
  v751 = *(v750 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v752);
  v753 = OUTLINED_FUNCTION_177();
  v754 = type metadata accessor for _ProtoResponse.Component(v753);
  v755 = OUTLINED_FUNCTION_41(v754);
  v757 = *(v756 + 64);
  MEMORY[0x28223BE20](v755);
  OUTLINED_FUNCTION_1_20();
  v758 = *(v1319 + 8);
  v1316 = v3;
  v758(v1328);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_29();
  sub_26A3AF8D0();
  type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  v759 = OUTLINED_FUNCTION_193_1();
  if (__swift_getEnumTagSinglePayload(v759, v760, v761) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v762 = sub_26A424AE4();
    __swift_project_value_buffer(v762, qword_2803A8950);
    v763 = sub_26A424AD4();
    v764 = sub_26A424E04();
    v765 = os_log_type_enabled(v763, v764);
    v766 = v1317;
    if (v765)
    {
      v767 = swift_slowAlloc();
      *v767 = 0;
      _os_log_impl(&dword_26A0B8000, v763, v764, "Expected a Component value, but found none!", v767, 2u);
      MEMORY[0x26D65C950](v767, -1, -1);
    }

    v768 = v1328;
    v769 = v1319;
    *(v766 + 24) = v1328;
    *(v766 + 32) = v769;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm();
    return (*(*(v768 - 8) + 16))(boxed_opaque_existential_1Tm, v1316, v768);
  }

  else
  {
    OUTLINED_FUNCTION_94_1();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_148(v1140);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1138);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1136);
        _ProtoFactItem_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1078);
        sub_26A4247C4();
        OUTLINED_FUNCTION_130_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1135);
        if (v4)
        {
          goto LABEL_124;
        }

        v956 = OUTLINED_FUNCTION_3_56();
        v957(v956);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_61_13();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0F1C();
        return sub_26A3AF8D0();
      case 2u:
        OUTLINED_FUNCTION_148(v1144);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1142);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1139);
        _ProtoFactItem_ShortNumber.redactedProto.getter(v813, v814, v815, v816, v817, v818, v819, v820, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1079);
        sub_26A4247C4();
        OUTLINED_FUNCTION_76_11();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1137);
        if (v4)
        {
          goto LABEL_124;
        }

        v948 = OUTLINED_FUNCTION_3_56();
        v949(v948);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_65_14();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemShortNumber);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D318C();
        return sub_26A3AF8D0();
      case 3u:
        OUTLINED_FUNCTION_148(v1148);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1146);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1143);
        _ProtoFactItem_HeroNumber.redactedProto.getter(v822, v823, v824, v825, v826, v827, v828, v829, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1080);
        sub_26A4247C4();
        OUTLINED_FUNCTION_135_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1141);
        if (v4)
        {
          goto LABEL_124;
        }

        v952 = OUTLINED_FUNCTION_3_56();
        v953(v952);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_63_12();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemHeroNumber);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0AD0();
        return sub_26A3AF8D0();
      case 4u:
        OUTLINED_FUNCTION_148(v1156);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1154);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1151);
        _ProtoSummaryItem_Standard.redactedProto.getter(v795, v796, v797, v798, v799, v800, v801, v802, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1083);
        sub_26A4247C4();
        OUTLINED_FUNCTION_111_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1149);
        if (v4)
        {
          goto LABEL_124;
        }

        v936 = OUTLINED_FUNCTION_3_56();
        v937(v936);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_72_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1E94();
        return sub_26A3AF8D0();
      case 5u:
        OUTLINED_FUNCTION_148(v1160);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1158);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1155);
        _ProtoSummaryItem_ShortNumber.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1084);
        sub_26A4247C4();
        OUTLINED_FUNCTION_74_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1153);
        if (v4)
        {
          goto LABEL_124;
        }

        v964 = OUTLINED_FUNCTION_3_56();
        v965(v964);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_162_2();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemShortNumber);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D3344();
        return sub_26A3AF8D0();
      case 6u:
        OUTLINED_FUNCTION_148(v1164);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1162);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1159);
        _ProtoSummaryItem_Text.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1085);
        sub_26A4247C4();
        OUTLINED_FUNCTION_87_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1157);
        if (v4)
        {
          goto LABEL_124;
        }

        v970 = OUTLINED_FUNCTION_3_56();
        v971(v970);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_160_2();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemText);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2AAC();
        return sub_26A3AF8D0();
      case 7u:
        OUTLINED_FUNCTION_148(v1168);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1166);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1163);
        _ProtoSummaryItem_LargeText.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1086);
        sub_26A4247C4();
        OUTLINED_FUNCTION_123_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1161);
        if (v4)
        {
          goto LABEL_124;
        }

        v954 = OUTLINED_FUNCTION_3_56();
        v955(v954);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_62_12();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemLargeText);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1520();
        return sub_26A3AF8D0();
      case 8u:
        OUTLINED_FUNCTION_148(v1172);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1170);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1167);
        _ProtoSummaryItem_DetailedText.redactedProto.getter(v849, v850, v851, v852, v853, v854, v855, v856, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1087);
        sub_26A4247C4();
        OUTLINED_FUNCTION_73_13();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1165);
        if (v4)
        {
          goto LABEL_124;
        }

        v976 = OUTLINED_FUNCTION_3_56();
        v977(v976);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_158_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemDetailedText);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D3420();
        return sub_26A3AF8D0();
      case 9u:
        OUTLINED_FUNCTION_148(v1200);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1198);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1195);
        _ProtoSimpleItem_Standard.redactedProto.getter(v803, v804, v805, v806, v807, v808, v809, v810, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1094);
        sub_26A4247C4();
        OUTLINED_FUNCTION_80_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1193);
        if (v4)
        {
          goto LABEL_124;
        }

        v942 = OUTLINED_FUNCTION_3_56();
        v943(v942);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_67_11();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2EF8();
        return sub_26A3AF8D0();
      case 0xAu:
        OUTLINED_FUNCTION_148(v1204);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1202);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1199);
        _ProtoSimpleItem_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1095);
        sub_26A4247C4();
        OUTLINED_FUNCTION_125_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1197);
        if (v4)
        {
          goto LABEL_124;
        }

        v974 = OUTLINED_FUNCTION_3_56();
        v975(v974);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_159_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRich);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1368();
        return sub_26A3AF8D0();
      case 0xBu:
        OUTLINED_FUNCTION_148(v1212);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1210);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1207);
        _ProtoSimpleItem_Visual.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1097);
        sub_26A4247C4();
        OUTLINED_FUNCTION_86_12();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1205);
        if (v4)
        {
          goto LABEL_124;
        }

        v933 = OUTLINED_FUNCTION_3_56();
        v934(v933);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_78_9();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemVisual);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2B88();
        return sub_26A3AF8D0();
      case 0xCu:
        OUTLINED_FUNCTION_148(v1224);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1222);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1219);
        _ProtoPrimaryHeader_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1100);
        sub_26A4247C4();
        OUTLINED_FUNCTION_132_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1217);
        if (v4)
        {
          goto LABEL_124;
        }

        v940 = OUTLINED_FUNCTION_3_56();
        v941(v940);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_68_11();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0D64();
        return sub_26A3AF8D0();
      case 0xDu:
        OUTLINED_FUNCTION_148(v1228);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1226);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1223);
        _ProtoPrimaryHeader_Marquee.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1101);
        sub_26A4247C4();
        OUTLINED_FUNCTION_101_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1221);
        if (v4)
        {
          goto LABEL_124;
        }

        v968 = OUTLINED_FUNCTION_3_56();
        v969(v968);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_161_2();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderMarquee);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2584();
        return sub_26A3AF8D0();
      case 0xEu:
        OUTLINED_FUNCTION_148(v1232);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1230);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1227);
        _ProtoPrimaryHeader_Rich.redactedProto.getter(v778, v779, v780, v781, v782, v783, v784, v785, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1102);
        sub_26A4247C4();
        OUTLINED_FUNCTION_84_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1225);
        if (v4)
        {
          goto LABEL_124;
        }

        v927 = OUTLINED_FUNCTION_3_56();
        v928(v927);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_91_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderRich);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2C64();
        return sub_26A3AF8D0();
      case 0xFu:
        OUTLINED_FUNCTION_148(v1236);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1234);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1231);
        _ProtoSecondaryHeader_Standard.redactedProto.getter(v821);
        OUTLINED_FUNCTION_49_20(v1103);
        sub_26A4247C4();
        OUTLINED_FUNCTION_137_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1229);
        if (v4)
        {
          goto LABEL_124;
        }

        v950 = OUTLINED_FUNCTION_3_56();
        v951(v950);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_64_12();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0918();
        return sub_26A3AF8D0();
      case 0x10u:
        OUTLINED_FUNCTION_148(v1252);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1250);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1247);
        _ProtoButton.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1107);
        sub_26A4247C4();
        OUTLINED_FUNCTION_127_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1245);
        if (v4)
        {
          goto LABEL_124;
        }

        v923 = OUTLINED_FUNCTION_3_56();
        v924(v923);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_94_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Button);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D11B0();
        return sub_26A3AF8D0();
      case 0x11u:
        OUTLINED_FUNCTION_148(v1256);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1254);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1251);
        _ProtoBinaryButton.redactedProto.getter(v837);
        OUTLINED_FUNCTION_49_20(v1108);
        sub_26A4247C4();
        OUTLINED_FUNCTION_119_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1249);
        if (v4)
        {
          goto LABEL_124;
        }

        v958 = OUTLINED_FUNCTION_3_56();
        v959(v958);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_59_16();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for BinaryButton);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1890();
        return sub_26A3AF8D0();
      case 0x12u:
        OUTLINED_FUNCTION_148(v1280);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1278);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1275);
        sub_26A27E314(v848);
        OUTLINED_FUNCTION_49_20(v1114);
        sub_26A4247C4();
        OUTLINED_FUNCTION_121_2();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1273);
        if (v4)
        {
          goto LABEL_124;
        }

        v972 = OUTLINED_FUNCTION_3_56();
        v973(v972);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorSuccess);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D16D8();
        return sub_26A3AF8D0();
      case 0x13u:
        OUTLINED_FUNCTION_148(v1284);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1282);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1279);
        sub_26A1F33A8(v868);
        OUTLINED_FUNCTION_49_20(v1115);
        sub_26A4247C4();
        OUTLINED_FUNCTION_126_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1277);
        if (v4)
        {
          goto LABEL_124;
        }

        v984 = OUTLINED_FUNCTION_3_56();
        v985(v984);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorError);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D128C();
        return sub_26A3AF8D0();
      case 0x14u:
        OUTLINED_FUNCTION_148(v1288);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1286);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1283);
        sub_26A156AB0(v846);
        OUTLINED_FUNCTION_49_20(v1116);
        sub_26A4247C4();
        OUTLINED_FUNCTION_129_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1281);
        if (v4)
        {
          goto LABEL_124;
        }

        v962 = OUTLINED_FUNCTION_3_56();
        v963(v962);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorInProgress);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0FF8();
        return sub_26A3AF8D0();
      case 0x15u:
        OUTLINED_FUNCTION_148(v1292);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1290);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1287);
        sub_26A380EA0(v847);
        OUTLINED_FUNCTION_49_20(v1117);
        sub_26A4247C4();
        OUTLINED_FUNCTION_71_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1285);
        if (v4)
        {
          goto LABEL_124;
        }

        v966 = OUTLINED_FUNCTION_3_56();
        v967(v966);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorCancelled);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D34FC();
        return sub_26A3AF8D0();
      case 0x16u:
        OUTLINED_FUNCTION_148(v1291);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1289);
        sub_26A3AF924();
        OUTLINED_FUNCTION_177_2();
        TextInput.jsonString(redacted:)(v865);
        if (v866)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_154_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TextInput);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D36B4();
        return sub_26A3AF8D0();
      case 0x17u:
        OUTLINED_FUNCTION_188_2(v1081);
        sub_26A3AF978();
        OUTLINED_FUNCTION_149_5();
        OUTLINED_FUNCTION_171_3(v1077);
        sub_26A3AF924();
        _ProtoControl_Switch.redactedProto.getter();
        sub_26A4247C4();
        OUTLINED_FUNCTION_136_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_177_2();
        sub_26A424954();
        if (v4)
        {
          OUTLINED_FUNCTION_35_24();
          v878(v736);
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_27_24();
          sub_26A3AF8D0();
        }

        else
        {
          OUTLINED_FUNCTION_11_35();
          v992(v736);
          OUTLINED_FUNCTION_148_4();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_27_24();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for ControlSwitch);
          OUTLINED_FUNCTION_10_50();
          sub_26A0D09F4();
        }

        return sub_26A3AF8D0();
      case 0x18u:
        OUTLINED_FUNCTION_148(v1298);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1296);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1294);
        _ProtoControl_Slider.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1118);
        sub_26A4247C4();
        OUTLINED_FUNCTION_138_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1293);
        if (v4)
        {
          goto LABEL_124;
        }

        v946 = OUTLINED_FUNCTION_3_56();
        v947(v946);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_66_10();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ControlSlider);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D083C();
        return sub_26A3AF8D0();
      case 0x19u:
        OUTLINED_FUNCTION_148(v1134);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_188_2(v1132);
        sub_26A3AF924();
        OUTLINED_FUNCTION_49_20(v1130);
        _ProtoControl_PlayerButton.redactedProto.getter();
        sub_26A4247C4();
        OUTLINED_FUNCTION_77_10();
        sub_26A3AED00();
        v811 = v1318;
        sub_26A424954();
        if (v811)
        {
          OUTLINED_FUNCTION_35_24();
          v812(v733);
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_22_26();
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_35_24();
        v944(v733);
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_22_26();
        sub_26A3AF8D0();
        v945 = v1317;
        *(v1317 + 24) = v1011;
        *(v945 + 32) = &protocol witness table for ControlPlayerButton;
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_245();
        sub_26A0D30B0();
        break;
      case 0x1Au:
        sub_26A3AF8D0();
        v888 = v1317;
        v889 = v1328;
        v890 = v1319;
        *(v1317 + 24) = v1328;
        *(v888 + 32) = v890;
        v891 = __swift_allocate_boxed_opaque_existential_1Tm();
        return (*(*(v889 - 8) + 16))(v891, v1316, v889);
      case 0x1Bu:
        OUTLINED_FUNCTION_148(v1260);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1258);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1255);
        _ProtoReference_Standard.redactedProto.getter(v776);
        OUTLINED_FUNCTION_49_20(v1109);
        sub_26A4247C4();
        OUTLINED_FUNCTION_83_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1253);
        if (v4)
        {
          goto LABEL_124;
        }

        v919 = OUTLINED_FUNCTION_3_56();
        v920(v919);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_98_10();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2D40();
        return sub_26A3AF8D0();
      case 0x1Cu:
        OUTLINED_FUNCTION_148(v1264);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1262);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1259);
        _ProtoReference_Logo.redactedProto.getter(v879);
        OUTLINED_FUNCTION_49_20(v1110);
        sub_26A4247C4();
        OUTLINED_FUNCTION_95_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1257);
        if (v4)
        {
          goto LABEL_124;
        }

        v993 = OUTLINED_FUNCTION_3_56();
        v994(v993);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_147_6();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceLogo);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2818();
        return sub_26A3AF8D0();
      case 0x1Du:
        OUTLINED_FUNCTION_148(v1268);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1266);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1263);
        _ProtoReference_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1111);
        sub_26A4247C4();
        OUTLINED_FUNCTION_93_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1261);
        if (v4)
        {
          goto LABEL_124;
        }

        v995 = OUTLINED_FUNCTION_3_56();
        v996(v995);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_146_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceRich);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D28F4();
        return sub_26A3AF8D0();
      case 0x1Eu:
        OUTLINED_FUNCTION_148(v1272);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1270);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1267);
        _ProtoReference_Button.redactedProto.getter(v857);
        OUTLINED_FUNCTION_49_20(v1112);
        sub_26A4247C4();
        OUTLINED_FUNCTION_88_12();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1265);
        if (v4)
        {
          goto LABEL_124;
        }

        v978 = OUTLINED_FUNCTION_3_56();
        v979(v978);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_24_38();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceButton);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D29D0();
        return sub_26A3AF8D0();
      case 0x1Fu:
        sub_26A3AF978();
        v1323 = type metadata accessor for SummaryItemPair();
        v1324 = &protocol witness table for SummaryItemPair;
        OUTLINED_FUNCTION_60_15();
        v830 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v830);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        v831 = v1325;
        v832 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v832, v833);
        v834 = OUTLINED_FUNCTION_175();
        sub_26A3451EC(v834, v835, v831, v836);
        goto LABEL_93;
      case 0x20u:
        OUTLINED_FUNCTION_148(v1176);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1174);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1171);
        _ProtoSummaryItem_PairV2.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1088);
        sub_26A4247C4();
        OUTLINED_FUNCTION_104_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1169);
        if (v4)
        {
          goto LABEL_124;
        }

        v980 = OUTLINED_FUNCTION_3_56();
        v981(v980);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_157_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairV2);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D23CC();
        return sub_26A3AF8D0();
      case 0x21u:
        sub_26A3AF978();
        v1323 = type metadata accessor for SummaryItemPairNumber();
        v1324 = &protocol witness table for SummaryItemPairNumber;
        OUTLINED_FUNCTION_90_10();
        v786 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v786);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        v787 = v1325;
        v788 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v788, v789);
        v790 = OUTLINED_FUNCTION_175();
        sub_26A3451EC(v790, v791, v787, v792);
        goto LABEL_93;
      case 0x22u:
        OUTLINED_FUNCTION_148(v1180);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1178);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1175);
        _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1089);
        sub_26A4247C4();
        OUTLINED_FUNCTION_133_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1173);
        if (v4)
        {
          goto LABEL_124;
        }

        v921 = OUTLINED_FUNCTION_3_56();
        v922(v921);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_96_6();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairNumberV2);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0C88();
        return sub_26A3AF8D0();
      case 0x23u:
        OUTLINED_FUNCTION_148(v1184);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1182);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1179);
        _ProtoSummaryItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1090);
        sub_26A4247C4();
        OUTLINED_FUNCTION_81_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1177);
        if (v4)
        {
          goto LABEL_124;
        }

        v915 = OUTLINED_FUNCTION_3_56();
        v916(v915);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_102_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemButton);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2E1C();
        return sub_26A3AF8D0();
      case 0x24u:
        OUTLINED_FUNCTION_148(v1152);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1150);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1147);
        _ProtoFactItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1082);
        sub_26A4247C4();
        OUTLINED_FUNCTION_122_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1145);
        if (v4)
        {
          goto LABEL_124;
        }

        v917 = OUTLINED_FUNCTION_3_56();
        v918(v917);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_99_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemButton);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D15FC();
        return sub_26A3AF8D0();
      case 0x25u:
        OUTLINED_FUNCTION_148(v1302);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1300);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1297);
        _ProtoTable.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1119);
        sub_26A4247C4();
        OUTLINED_FUNCTION_70_9();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1295);
        if (v4)
        {
          goto LABEL_124;
        }

        v908 = OUTLINED_FUNCTION_3_56();
        v909(v908);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Table);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D35D8();
        return sub_26A3AF8D0();
      case 0x26u:
        OUTLINED_FUNCTION_148(v1276);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1274);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1271);
        _ProtoReference_Footnote.redactedProto.getter(v880, v881, v882, v883, v884, v885, v886, v887, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1113);
        sub_26A4247C4();
        OUTLINED_FUNCTION_131_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1269);
        if (v4)
        {
          goto LABEL_124;
        }

        v997 = OUTLINED_FUNCTION_3_56();
        v998(v997);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_145_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceFootnote);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0E40();
        return sub_26A3AF8D0();
      case 0x27u:
        OUTLINED_FUNCTION_148(&v1306);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1304);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1301);
        _ProtoLongItem_Text.redactedProto.getter(v867);
        OUTLINED_FUNCTION_49_20(v1120);
        sub_26A4247C4();
        OUTLINED_FUNCTION_114_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1299);
        if (v4)
        {
          goto LABEL_124;
        }

        v982 = OUTLINED_FUNCTION_3_56();
        v983(v982);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_153_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for LongItemText);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1C00();
        return sub_26A3AF8D0();
      case 0x28u:
        OUTLINED_FUNCTION_148(&v1310);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1308);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(&v1305);
        _ProtoVisualization_Chart.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1121);
        sub_26A4247C4();
        OUTLINED_FUNCTION_106_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1303);
        if (v4)
        {
          goto LABEL_124;
        }

        v938 = OUTLINED_FUNCTION_3_56();
        v939(v938);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_69_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationChart);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D22F0();
        return sub_26A3AF8D0();
      case 0x29u:
        OUTLINED_FUNCTION_148(v1188);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1186);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1183);
        _ProtoSummaryItem_Player.redactedProto.getter(v838, v839, v840, v841, v842, v843, v844, v845, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1091);
        sub_26A4247C4();
        OUTLINED_FUNCTION_141_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1181);
        if (v4)
        {
          goto LABEL_124;
        }

        v960 = OUTLINED_FUNCTION_3_56();
        v961(v960);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_163_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPlayer);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0760();
        return sub_26A3AF8D0();
      case 0x2Au:
        OUTLINED_FUNCTION_148(v1216);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1214);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1211);
        _ProtoSimpleItem_Player.redactedProto.getter(v870, v871, v872, v873, v874, v875, v876, v877, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1098);
        sub_26A4247C4();
        OUTLINED_FUNCTION_107_8();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1209);
        if (v4)
        {
          goto LABEL_124;
        }

        v988 = OUTLINED_FUNCTION_3_56();
        v989(v988);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_151_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemPlayer);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2214();
        return sub_26A3AF8D0();
      case 0x2Bu:
        OUTLINED_FUNCTION_148(v1208);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1206);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1203);
        _ProtoSimpleItem_ReverseRich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(&v1096);
        sub_26A4247C4();
        OUTLINED_FUNCTION_115_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1201);
        if (v4)
        {
          goto LABEL_124;
        }

        v906 = OUTLINED_FUNCTION_3_56();
        v907(v906);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_116_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemReverseRich);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1B24();
        return sub_26A3AF8D0();
      case 0x2Cu:
        OUTLINED_FUNCTION_148(v1240);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1238);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1235);
        _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v777);
        OUTLINED_FUNCTION_49_20(v1104);
        sub_26A4247C4();
        OUTLINED_FUNCTION_128_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1233);
        if (v4)
        {
          goto LABEL_124;
        }

        v925 = OUTLINED_FUNCTION_3_56();
        v926(v925);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_92_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderEmphasized);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D10D4();
        return sub_26A3AF8D0();
      case 0x2Du:
        sub_26A3AF978();
        v1323 = type metadata accessor for SummaryItemSwitch();
        v1324 = &protocol witness table for SummaryItemSwitch;
        OUTLINED_FUNCTION_156_3();
        v858 = sub_26A3AED00();
        OUTLINED_FUNCTION_169_3(v858);
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        v859 = v1325;
        v860 = OUTLINED_FUNCTION_168_2();
        __swift_project_boxed_opaque_existential_1(v860, v861);
        v862 = OUTLINED_FUNCTION_175();
        sub_26A3451EC(v862, v863, v859, v864);
LABEL_93:
        sub_26A3AF8D0();
        return sub_26A1EDCF8(v1320);
      case 0x2Eu:
        OUTLINED_FUNCTION_148(v1196);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1194);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1191);
        _ProtoSystemText_ClarificationTitle.redactedProto.getter(v893);
        OUTLINED_FUNCTION_49_20(v1093);
        sub_26A4247C4();
        OUTLINED_FUNCTION_110_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1189);
        if (v4)
        {
          goto LABEL_124;
        }

        v1005 = OUTLINED_FUNCTION_3_56();
        v1006(v1005);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_140_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SystemTextClarificationTitle);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D205C();
        return sub_26A3AF8D0();
      case 0x2Fu:
        OUTLINED_FUNCTION_148(&v1315);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1312);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(&v1309);
        _ProtoVisualization_Image.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1122);
        sub_26A4247C4();
        OUTLINED_FUNCTION_79_10();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(&v1307);
        if (v4)
        {
          goto LABEL_124;
        }

        v911 = OUTLINED_FUNCTION_3_56();
        v912(v911);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_108_7();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationImage);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2FD4();
        return sub_26A3AF8D0();
      case 0x30u:
        OUTLINED_FUNCTION_148(&v1317);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1316);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(&v1313);
        _ProtoVisualization_Map.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1123);
        sub_26A4247C4();
        OUTLINED_FUNCTION_109_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(&v1311);
        if (v4)
        {
          goto LABEL_124;
        }

        v929 = OUTLINED_FUNCTION_3_56();
        v930(v929);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_85_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationMap);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2138();
        return sub_26A3AF8D0();
      case 0x31u:
        OUTLINED_FUNCTION_148(v1320);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1318);
        sub_26A3AF924();
        v793 = v1092;
        sub_26A4247C4();
        OUTLINED_FUNCTION_120_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_177_2();
        sub_26A424954();
        if (v4)
        {
          OUTLINED_FUNCTION_35_24();
          v794(v793);
          OUTLINED_FUNCTION_23_35();
          sub_26A3AF8D0();
        }

        else
        {
          OUTLINED_FUNCTION_11_35();
          v935(v793);
          OUTLINED_FUNCTION_23_35();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for ButtonContainer);
          OUTLINED_FUNCTION_10_50();
          sub_26A0D17B4();
        }

        return sub_26A3AF8D0();
      case 0x32u:
        OUTLINED_FUNCTION_148(&v1325);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1323);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1321);
        sub_26A2B3BB8();
        OUTLINED_FUNCTION_49_20(v1124);
        sub_26A4247C4();
        OUTLINED_FUNCTION_112_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(&v1319);
        if (v4)
        {
          goto LABEL_124;
        }

        v904 = OUTLINED_FUNCTION_3_56();
        v905(v904);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_164_4();
        OUTLINED_FUNCTION_38_17(&protocol witness table for IntentsUIStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1DB8();
        return sub_26A3AF8D0();
      case 0x33u:
        OUTLINED_FUNCTION_148(&v1330);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1327);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(&v1324);
        _ProtoSash_Standard.redactedProto.getter(v894, v895, v896, v897, v898, v899, v900, v901, v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v1017, v1018, v1019, v1020);
        OUTLINED_FUNCTION_49_20(v1125);
        sub_26A4247C4();
        OUTLINED_FUNCTION_97_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1322);
        if (v4)
        {
          goto LABEL_124;
        }

        v1007 = OUTLINED_FUNCTION_3_56();
        v1008(v1007);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_139_3();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SashStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D273C();
        return sub_26A3AF8D0();
      case 0x34u:
        OUTLINED_FUNCTION_148(&v1332);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1331);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(&v1328);
        HeroHeader.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1126);
        sub_26A4247C4();
        OUTLINED_FUNCTION_103_6();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1326);
        if (v4)
        {
          goto LABEL_124;
        }

        v1003 = OUTLINED_FUNCTION_3_56();
        v1004(v1003);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_142_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for HeroHeader);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D24A8();
        return sub_26A3AF8D0();
      case 0x35u:
        OUTLINED_FUNCTION_148(&v1335);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(&v1333);
        sub_26A3AF924();
        v774 = v1096;
        sub_26A4247C4();
        OUTLINED_FUNCTION_118_2();
        sub_26A3AED00();
        OUTLINED_FUNCTION_177_2();
        sub_26A424954();
        if (v4)
        {
          OUTLINED_FUNCTION_35_24();
          v775(v774);
          OUTLINED_FUNCTION_25_29();
          sub_26A3AF8D0();
        }

        else
        {
          OUTLINED_FUNCTION_11_35();
          v910(v774);
          OUTLINED_FUNCTION_25_29();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for HorizontalListStandard);
          OUTLINED_FUNCTION_10_50();
          sub_26A0D196C();
        }

        return sub_26A3AF8D0();
      case 0x36u:
        OUTLINED_FUNCTION_148(v1244);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1242);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1239);
        _ProtoSectionHeader_Standard.redactedProto.getter(v892);
        OUTLINED_FUNCTION_49_20(v1105);
        sub_26A4247C4();
        OUTLINED_FUNCTION_75_12();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1237);
        if (v4)
        {
          goto LABEL_124;
        }

        v999 = OUTLINED_FUNCTION_3_56();
        v1000(v999);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_144_6();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D3268();
        return sub_26A3AF8D0();
      case 0x37u:
        OUTLINED_FUNCTION_148(v1248);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1246);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1243);
        _ProtoSectionHeader_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1106);
        sub_26A4247C4();
        OUTLINED_FUNCTION_100_7();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1241);
        if (v4)
        {
          goto LABEL_124;
        }

        v1001 = OUTLINED_FUNCTION_3_56();
        v1002(v1001);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_143_4();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderRich);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D2660();
        return sub_26A3AF8D0();
      case 0x38u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(&v1336);
        sub_26A2B2C30();
        OUTLINED_FUNCTION_49_20(v1127);
        sub_26A4247C4();
        OUTLINED_FUNCTION_113_4();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(&v1334);
        if (v4)
        {
          goto LABEL_124;
        }

        v913 = OUTLINED_FUNCTION_3_56();
        v914(v913);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_105_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for KeyValueStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1CDC();
        return sub_26A3AF8D0();
      case 0x39u:
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        sub_26A3AF924();
        _ProtoTertiaryHeader_Standard.redactedProto.getter(v1307);
        OUTLINED_FUNCTION_49_20(v1128);
        sub_26A4247C4();
        OUTLINED_FUNCTION_134_2();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        v869 = v1318;
        sub_26A424954();
        if (v869)
        {
          goto LABEL_124;
        }

        v986 = OUTLINED_FUNCTION_3_56();
        v987(v986);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_152_5();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TertiaryHeaderStandard);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D0BAC();
        return sub_26A3AF8D0();
      case 0x3Au:
        OUTLINED_FUNCTION_148(v1220);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1218);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1215);
        _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(v1099);
        sub_26A4247C4();
        OUTLINED_FUNCTION_117_5();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1213);
        if (v4)
        {
          goto LABEL_124;
        }

        v931 = OUTLINED_FUNCTION_3_56();
        v932(v931);
        OUTLINED_FUNCTION_29_8();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_82_11();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRichSearchResult);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1A48();
        return sub_26A3AF8D0();
      case 0x3Bu:
        OUTLINED_FUNCTION_148(v1192);
        sub_26A3AF978();
        OUTLINED_FUNCTION_111_1();
        OUTLINED_FUNCTION_128(v1190);
        sub_26A3AF924();
        OUTLINED_FUNCTION_19_25(v1187);
        _ProtoSummaryItem_SwitchV2.redactedProto.getter();
        OUTLINED_FUNCTION_49_20(&v1092);
        sub_26A4247C4();
        OUTLINED_FUNCTION_124_3();
        sub_26A3AED00();
        OUTLINED_FUNCTION_50_16();
        OUTLINED_FUNCTION_39_22(v1185);
        if (v4)
        {
LABEL_124:
          v902 = OUTLINED_FUNCTION_17_29();
          v903(v902);
          sub_26A3AF8D0();
LABEL_125:
          sub_26A3AF8D0();
        }

        else
        {
          v990 = OUTLINED_FUNCTION_3_56();
          v991(v990);
          OUTLINED_FUNCTION_29_8();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_150_4();
          sub_26A3AF8D0();
          OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemSwitchV2);
          OUTLINED_FUNCTION_10_50();
          sub_26A0D1444();
        }

        break;
      default:
        OUTLINED_FUNCTION_148(v1133);
        sub_26A3AF978();
        OUTLINED_FUNCTION_28_21();
        OUTLINED_FUNCTION_128(v1131);
        sub_26A3AF924();
        OUTLINED_FUNCTION_177_2();
        CustomCanvas.jsonString(redacted:)(v772);
        if (v773)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_26_32();
        sub_26A3AF8D0();
        OUTLINED_FUNCTION_38_17(&protocol witness table for CustomCanvas);
        OUTLINED_FUNCTION_10_50();
        sub_26A0D1F70();
        return sub_26A3AF8D0();
    }

    return sub_26A3AF8D0();
  }
}