Swift::String __swiftcall SimpleItemRich.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v89 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v92 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v91 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v90 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_56_3();
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  v38 = type metadata accessor for SimpleItemRich();
  v39 = OUTLINED_FUNCTION_41(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v42);
  v44 = &v88 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF58, &qword_26A426B08);
  OUTLINED_FUNCTION_12(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v48);
  v50 = &v88 - v49;
  OUTLINED_FUNCTION_25_15();
  sub_26A204270();
  if (v4)
  {
    _ProtoSimpleItem_Rich.redactedProto.getter();
  }

  else
  {
    sub_26A204270();
  }

  sub_26A2040A0();
  v50[*(v45 + 32)] = v4 & 1;
  sub_26A2040F4(v44, type metadata accessor for SimpleItemRich);
  v51 = MEMORY[0x277D84F90];
  *&v50[*(v45 + 28)] = MEMORY[0x277D84F90];
  v52 = *&v50[*(type metadata accessor for _ProtoSimpleItem_Rich(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v53 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v53, v54, v24);
  if (v55)
  {
    *v30 = v51;
    *(v30 + 8) = 0;
    v56 = v30 + v24[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v57 = v24[8];
    v58 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
    v62 = v24[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v58);
    v66 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v66, v67, v24);
    if (!v55)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A2040A0();
  }

  sub_26A2040A0();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_222();
  sub_26A108514();
  sub_26A0E48F0(v37, &qword_28036CB30, &qword_26A426480);
  SimpleItemRich.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7();
  OUTLINED_FUNCTION_33_7();
  v72 = v90;
  SimpleItemRich.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1084EC();
  sub_26A0E48F0(v72, &qword_28036CB28, &qword_26A427980);
  SimpleItemRich.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7();
  OUTLINED_FUNCTION_33_7();
  SimpleItemRich.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A1084EC();
  sub_26A0E48F0(v72, &qword_28036CB28, &qword_26A427980);
  SimpleItemRich.text6.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7();
  OUTLINED_FUNCTION_33_7();
  SimpleItemRich.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7();
  OUTLINED_FUNCTION_33_7();
  SimpleItemRich.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_61_7();
  OUTLINED_FUNCTION_33_7();
  v73 = v91;
  SimpleItemRich.thumbnail.getter();
  sub_26A1084C4();
  sub_26A0E48F0(v73, &qword_28036CB20, &unk_26A426470);
  v74 = v92;
  SimpleItemRich.action.getter();
  sub_26A1083C0();
  sub_26A0E48F0(v74, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7DB8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v76, v77, v78, v79, v88, v89);

  v80 = swift_getKeyPath();
  sub_26A0F8724(v80, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v81, v82, v83, v84, v88, v89);

  sub_26A0FF830();
  sub_26A0E48F0(v50, &qword_28036CF58, &qword_26A426B08);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v86;
  result._countAndFlagsBits = v85;
  return result;
}

uint64_t SimpleItemRich.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_Rich(0);
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
  OUTLINED_FUNCTION_10_20();
  sub_26A204270();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_27_14();
  sub_26A2040A0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SimpleItemRich.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemRich();
  *(inited + 64) = &protocol witness table for SimpleItemRich;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_25_15();
  sub_26A204270();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A20414C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SimpleItemRich()
{
  result = qword_28036FB30;
  if (!qword_28036FB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A2040A0()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A2040F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A20414C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A204204()
{
  result = type metadata accessor for _ProtoSimpleItem_Rich(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A204270()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_22_11()
{

  return type metadata accessor for _ProtoSimpleItem_Rich(0);
}

void OUTLINED_FUNCTION_23_18()
{

  sub_26A268F00();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_26A0E48F0(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_39_9@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_40_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_59_9()
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_61_7()
{

  sub_26A108514();
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return sub_26A2040A0();
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return type metadata accessor for _ProtoSimpleItem_Rich(0);
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_67_6()
{

  return sub_26A2040A0();
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 360);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t sub_26A204530(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_0();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  v15 = *(v1 + *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20));
  v16 = *a1;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v17 = OUTLINED_FUNCTION_271();
  if (__swift_getEnumTagSinglePayload(v17, v18, v8) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    v19 = v14 + v8[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v20 = v8[8];
    v21 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    v25 = v8[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
    v29 = OUTLINED_FUNCTION_271();
    if (__swift_getEnumTagSinglePayload(v29, v30, v8) != 1)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20943C();
  }

  return sub_26A20943C();
}

void sub_26A204710()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v29 = v4;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = *(v0 + *(OUTLINED_FUNCTION_35_12() + 20));
  v15 = *v3;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v16 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v16, v17, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v19 = *(v5 + 32);
      v20 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A20943C();
    }

    sub_26A20943C();
    v3 = 0;
  }

  v28 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v29, v3, 1, v28);
  OUTLINED_FUNCTION_75();
}

void sub_26A204960()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v29 = v4;
  v5 = type metadata accessor for _ProtoVisualProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = *(v0 + *(OUTLINED_FUNCTION_35_12() + 20));
  v15 = *v3;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v16 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v16, v17, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v19 = *(v5 + 32);
      v20 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A20943C();
    }

    sub_26A20943C();
    v3 = 0;
  }

  v28 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v29, v3, 1, v28);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  v20 = v4;
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = *(v0 + *(OUTLINED_FUNCTION_35_12() + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
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
      sub_26A20943C();
    }

    sub_26A20943C();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumber.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemPairNumber.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit28_ProtoSummaryItem_PairNumberP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_PairNumber.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v390 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v390);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v372 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v371 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v373 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v370 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v387 = v16;
  v386 = type metadata accessor for _ProtoVisualProperty();
  v17 = OUTLINED_FUNCTION_12(v386);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v369 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v368 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v366 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v365 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v28 = OUTLINED_FUNCTION_41(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v367 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  v384 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v385 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  v364 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_48();
  v383 = v39;
  v40 = type metadata accessor for _ProtoTextProperty(0);
  v41 = OUTLINED_FUNCTION_12(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  v363 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  v362 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  v361 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v359 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v358 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  v356 = v54;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  v355 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  v353 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  v352 = v60;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  v350 = v62;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  v349 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  v347 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v346 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  v344 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47();
  v343 = v72;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_47();
  v341 = v74;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47();
  v340 = v76;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47();
  v338 = v78;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_47();
  v337 = v80;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_47();
  v335 = v82;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47();
  v334 = v84;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_48();
  v332 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v88 = OUTLINED_FUNCTION_41(v87);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_8();
  v360 = v91;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_47();
  v382 = v93;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47();
  v357 = v95;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47();
  v381 = v97;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_47();
  v354 = v99;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_47();
  v380 = v101;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47();
  v351 = v103;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_47();
  v379 = v105;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_47();
  v348 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_47();
  v378 = v109;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_47();
  v345 = v111;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_47();
  v377 = v113;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_47();
  v342 = v115;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_47();
  v376 = v117;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_47();
  v339 = v119;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_47();
  v375 = v121;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_47();
  v336 = v123;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_47();
  v374 = v125;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_47();
  v333 = v127;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v128);
  v130 = &v332 - v129;
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_47();
  v391 = v132;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v133);
  v135 = &v332 - v134;
  MEMORY[0x28223BE20](v136);
  v138 = &v332 - v137;
  OUTLINED_FUNCTION_10_21();
  sub_26A2098B8();
  v139 = *(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20);
  v388 = v1;
  v389 = v139;
  v140 = *(v1 + v139);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v138, 1, v40);
  OUTLINED_FUNCTION_38_2(v138);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v135);
    if (v141)
    {
      v152 = v332;
      *v332 = MEMORY[0x277D84F90];
      *(v152 + 8) = 0;
      v142 = v152 + v40[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v143 = v40[8];
      OUTLINED_FUNCTION_92();
      v144 = v390;
      __swift_storeEnumTagSinglePayload(v145, v146, v147, v390);
      v148 = v40[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v149, v150, v151, v144);
      OUTLINED_FUNCTION_3_6(v135);
      v153 = v388;
      if (!v141)
      {
        sub_26A0E48F0(v135, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v152 = v332;
      sub_26A20943C();
      v153 = v388;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v152, v154);
    v155 = v389;
    v156 = *(v153 + v389);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = *(v153 + v155);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v159 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v159);
      OUTLINED_FUNCTION_17_8();
      *(v153 + v155) = v160;
    }

    sub_26A20943C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v161, v162, v163, v40);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v164 = &unk_26A425BF0;
  sub_26A10FD9C();
  v165 = OUTLINED_FUNCTION_271();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v165, v166, v40);
  sub_26A0E48F0(v130, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload == 1)
  {
    v169 = v388;
    v168 = v389;
  }

  else
  {
    v170 = v333;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v170);
    v168 = v389;
    if (v141)
    {
      v171 = v335;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_11_15(v40[8]);
      OUTLINED_FUNCTION_11_15(v40[9]);
      OUTLINED_FUNCTION_3_6(v170);
      v169 = v388;
      if (!v141)
      {
        sub_26A0E48F0(v170, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v171 = v335;
      sub_26A20943C();
      v169 = v388;
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v171, v172);
    v173 = *(v169 + v168);
    v174 = swift_isUniquelyReferenced_nonNull_native();
    v175 = *(v169 + v168);
    if ((v174 & 1) == 0)
    {
      v176 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v176);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v177);
    }

    OUTLINED_FUNCTION_19_14();
    v178 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (&unk_26A425BF0 != 1)
  {
    v164 = v336;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v181 = v338;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v181 = v338;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v181, v182);
    v183 = *(v169 + v168);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v185 = *(v169 + v168);
    if ((v184 & 1) == 0)
    {
      v186 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v186);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v187);
    }

    OUTLINED_FUNCTION_19_14();
    v188 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v339;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v191 = v341;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v191 = v341;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v191, v192);
    v193 = *(v169 + v168);
    v194 = swift_isUniquelyReferenced_nonNull_native();
    v195 = *(v169 + v168);
    if ((v194 & 1) == 0)
    {
      v196 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v196);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v197);
    }

    OUTLINED_FUNCTION_19_14();
    v198 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v198, v199, v200, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v342;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v201 = v344;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v201 = v344;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v201, v202);
    v203 = *(v169 + v168);
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v205 = *(v169 + v168);
    if ((v204 & 1) == 0)
    {
      v206 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v206);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v207);
    }

    OUTLINED_FUNCTION_19_14();
    v208 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v208, v209, v210, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v345;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v211 = v347;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v211 = v347;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v211, v212);
    v213 = *(v169 + v168);
    v214 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *(v169 + v168);
    if ((v214 & 1) == 0)
    {
      v216 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v216);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v217);
    }

    OUTLINED_FUNCTION_19_14();
    v218 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v218, v219, v220, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v348;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v221 = v350;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v221 = v350;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v221, v222);
    v223 = *(v169 + v168);
    v224 = swift_isUniquelyReferenced_nonNull_native();
    v225 = *(v169 + v168);
    if ((v224 & 1) == 0)
    {
      v226 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v226);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v227);
    }

    OUTLINED_FUNCTION_19_14();
    v228 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v228, v229, v230, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v351;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v231 = v353;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v231 = v353;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v231, v232);
    v233 = *(v169 + v168);
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v235 = *(v169 + v168);
    if ((v234 & 1) == 0)
    {
      v236 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v236);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v237);
    }

    OUTLINED_FUNCTION_19_14();
    v238 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v238, v239, v240, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v354;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v241 = v356;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v241 = v356;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v241, v242);
    v243 = *(v169 + v168);
    v244 = swift_isUniquelyReferenced_nonNull_native();
    v245 = *(v169 + v168);
    if ((v244 & 1) == 0)
    {
      v246 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v246);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v247);
    }

    OUTLINED_FUNCTION_19_14();
    v248 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v248, v249, v250, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v164 = v357;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v251 = v359;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v164, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v251 = v359;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v251, v252);
    v253 = *(v169 + v168);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    v255 = *(v169 + v168);
    if ((v254 & 1) == 0)
    {
      v256 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v256);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v257);
    }

    OUTLINED_FUNCTION_19_14();
    v258 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v258, v259, v260, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v164 != 1)
  {
    v261 = v360;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v141)
    {
      v262 = v362;
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_1_23();
      if (!v141)
      {
        sub_26A0E48F0(v261, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v262 = v362;
      sub_26A20943C();
    }

    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_0_33();
    sub_26A209490(v262, v263);
    v264 = *(v169 + v168);
    v265 = swift_isUniquelyReferenced_nonNull_native();
    v266 = *(v169 + v168);
    if ((v265 & 1) == 0)
    {
      v267 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v267);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v268);
    }

    OUTLINED_FUNCTION_19_14();
    v269 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v40);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v272 = v383;
  OUTLINED_FUNCTION_19_3();
  v273 = v386;
  v274 = __swift_getEnumTagSinglePayload(v272, 1, v386);
  OUTLINED_FUNCTION_38_2(v272);
  if (v274 != 1)
  {
    v275 = v364;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v275);
    if (v141)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      v276 = *(v273 + 32);
      OUTLINED_FUNCTION_92();
      v277 = v390;
      __swift_storeEnumTagSinglePayload(v278, v279, v280, v390);
      v281 = *(v273 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v282, v283, v284, v277);
      OUTLINED_FUNCTION_3_6(v275);
      if (!v141)
      {
        sub_26A0E48F0(v275, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A20943C();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_28_8();
    v285 = *(v169 + v168);
    v286 = swift_isUniquelyReferenced_nonNull_native();
    v287 = *(v169 + v168);
    if ((v286 & 1) == 0)
    {
      v288 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v288);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v289);
    }

    sub_26A20943C();
    v290 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v290, v291, v292, v273);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v293 = v384;
  sub_26A10FD9C();
  v294 = OUTLINED_FUNCTION_271();
  v296 = __swift_getEnumTagSinglePayload(v294, v295, v273);
  OUTLINED_FUNCTION_38_2(v293);
  if (v296 == 1)
  {
    v297 = v389;
  }

  else
  {
    v298 = v367;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v298);
    v297 = v389;
    if (v141)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      v299 = *(v273 + 32);
      OUTLINED_FUNCTION_92();
      v300 = v390;
      __swift_storeEnumTagSinglePayload(v301, v302, v303, v390);
      v304 = *(v273 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v305, v306, v307, v300);
      OUTLINED_FUNCTION_3_6(v298);
      if (!v141)
      {
        sub_26A0E48F0(v298, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A20943C();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_28_8();
    v308 = *(v169 + v297);
    v309 = swift_isUniquelyReferenced_nonNull_native();
    v310 = *(v169 + v297);
    if ((v309 & 1) == 0)
    {
      v311 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v311);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v312);
    }

    sub_26A20943C();
    v313 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v313, v314, v315, v273);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v316 = v387;
  sub_26A10FD9C();
  v317 = v390;
  v318 = __swift_getEnumTagSinglePayload(v316, 1, v390);
  OUTLINED_FUNCTION_38_2(v316);
  if (v318 != 1)
  {
    v319 = v370;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v319, 1, v317) == 1)
    {
      v320 = v371;
      *v371 = MEMORY[0x277D84F90];
      *(v320 + 8) = 0;
      *(v320 + 16) = 0xE000000000000000;
      v321 = v320 + *(v317 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v322 = __swift_getEnumTagSinglePayload(v319, 1, v317);
      v323 = v372;
      if (v322 != 1)
      {
        sub_26A0E48F0(v319, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v320 = v371;
      sub_26A20943C();
      v323 = v372;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v323);
    sub_26A209490(v320, type metadata accessor for _ProtoActionProperty);
    v324 = *(v169 + v297);
    v325 = swift_isUniquelyReferenced_nonNull_native();
    v326 = *(v169 + v297);
    if ((v325 & 1) == 0)
    {
      v327 = type metadata accessor for _ProtoSummaryItem_PairNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v327);
      OUTLINED_FUNCTION_17_8();
      OUTLINED_FUNCTION_21_4(v328);
    }

    sub_26A20943C();
    v329 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v329, v330, v331, v317);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumber.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_9_16();
  sub_26A209870(v14, v15);
  sub_26A4249C4();

  sub_26A0E48F0(a14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(a13);
  OUTLINED_FUNCTION_40_1(a12);
  OUTLINED_FUNCTION_40_1(a11);
  OUTLINED_FUNCTION_40_1(a10);
  OUTLINED_FUNCTION_40_1(a9);
  OUTLINED_FUNCTION_40_1(a8);
  OUTLINED_FUNCTION_40_1(a7);
  OUTLINED_FUNCTION_40_1(a6);
  OUTLINED_FUNCTION_40_1(a5);
  OUTLINED_FUNCTION_40_1(a4);
  OUTLINED_FUNCTION_40_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A206BD0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v168 = a8;
  v166 = a7;
  v164 = a6;
  v162 = a5;
  v161 = a4;
  v182 = a3;
  v20 = type metadata accessor for ActionProperty();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v159 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v178 = &v144 - v25;
  v177 = type metadata accessor for _ProtoActionProperty();
  v26 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v156 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v157 = &v144 - v29;
  v30 = type metadata accessor for VisualProperty();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v175 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v176 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v173 = &v144 - v37;
  v174 = type metadata accessor for _ProtoVisualProperty();
  v38 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v155 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v158 = &v144 - v41;
  MEMORY[0x28223BE20](v42);
  v154 = &v144 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v172 = &v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v171 = &v144 - v48;
  MEMORY[0x28223BE20](v49);
  v170 = &v144 - v50;
  MEMORY[0x28223BE20](v51);
  v169 = &v144 - v52;
  MEMORY[0x28223BE20](v53);
  v167 = &v144 - v54;
  MEMORY[0x28223BE20](v55);
  v165 = &v144 - v56;
  MEMORY[0x28223BE20](v57);
  v163 = &v144 - v58;
  MEMORY[0x28223BE20](v59);
  v160 = &v144 - v60;
  MEMORY[0x28223BE20](v61);
  v63 = &v144 - v62;
  v64 = type metadata accessor for _ProtoTextProperty(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v153 = &v144 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v152 = &v144 - v68;
  MEMORY[0x28223BE20](v69);
  v151 = &v144 - v70;
  MEMORY[0x28223BE20](v71);
  v150 = &v144 - v72;
  MEMORY[0x28223BE20](v73);
  v149 = &v144 - v74;
  MEMORY[0x28223BE20](v75);
  v148 = &v144 - v76;
  MEMORY[0x28223BE20](v77);
  v147 = &v144 - v78;
  MEMORY[0x28223BE20](v79);
  v146 = &v144 - v80;
  MEMORY[0x28223BE20](v81);
  v145 = &v144 - v82;
  MEMORY[0x28223BE20](v83);
  v85 = (&v144 - v84);
  v86 = type metadata accessor for TextProperty(0);
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86 - 8);
  v89 = a2[3];
  v88 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v89);
  (*(v88 + 8))(v89, v88);
  sub_26A20943C();
  _ProtoSummaryItem_PairNumber.number1.setter();
  v90 = v182[3];
  v91 = v182[4];
  __swift_project_boxed_opaque_existential_1(v182, v90);
  (*(v91 + 8))(v90, v91);
  sub_26A20943C();
  v182 = v85;
  _ProtoSummaryItem_PairNumber.number2.setter();
  sub_26A10FD9C();
  v92 = v180;
  if (v180)
  {
    v93 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v93 + 8))(v92, v93);
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v64);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    v94 = v64;
    if (__swift_getEnumTagSinglePayload(v63, 1, v64) != 1)
    {
      v95 = v145;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text1.setter();
      sub_26A209490(v95, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v64);
    v94 = v64;
  }

  sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v96 = v180;
  v97 = v160;
  if (v180)
  {
    v98 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v98 + 8))(v96, v98);
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v97, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v97, 1, v94) != 1)
    {
      v99 = v146;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text2.setter();
      sub_26A209490(v99, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v94);
  }

  sub_26A0E48F0(v97, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v100 = v180;
  if (v180)
  {
    v101 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v101 + 8))(v100, v101);
    v102 = v163;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v102, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v102, 1, v94) != 1)
    {
      v103 = v147;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text3.setter();
      sub_26A209490(v103, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v102 = v163;
    __swift_storeEnumTagSinglePayload(v163, 1, 1, v94);
  }

  sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v104 = v180;
  if (v180)
  {
    v105 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v105 + 8))(v104, v105);
    v106 = v165;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v106, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v106, 1, v94) != 1)
    {
      v107 = v148;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text4.setter();
      sub_26A209490(v107, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v106 = v165;
    __swift_storeEnumTagSinglePayload(v165, 1, 1, v94);
  }

  sub_26A0E48F0(v106, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v108 = v180;
  if (v180)
  {
    v109 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v109 + 8))(v108, v109);
    v110 = v167;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v110, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v110, 1, v94) != 1)
    {
      v111 = v149;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text5.setter();
      sub_26A209490(v111, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v110 = v167;
    __swift_storeEnumTagSinglePayload(v167, 1, 1, v94);
  }

  sub_26A0E48F0(v110, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v112 = v180;
  if (v180)
  {
    v113 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v113 + 8))(v112, v113);
    v114 = v169;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v114, 1, v94) != 1)
    {
      v115 = v150;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text6.setter();
      sub_26A209490(v115, type metadata accessor for _ProtoTextProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v114 = v169;
    __swift_storeEnumTagSinglePayload(v169, 1, 1, v94);
  }

  sub_26A0E48F0(v114, &qword_28036C7B8, &unk_26A425BF0);
LABEL_31:
  sub_26A10FD9C();
  v116 = v180;
  if (v180)
  {
    v117 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v117 + 8))(v116, v117);
    v118 = v170;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v118, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v118, 1, v94) != 1)
    {
      v119 = v151;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text7.setter();
      sub_26A209490(v119, type metadata accessor for _ProtoTextProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v118 = v170;
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v94);
  }

  sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
LABEL_36:
  sub_26A10FD9C();
  v120 = v180;
  if (v180)
  {
    v121 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v121 + 8))(v120, v121);
    v122 = v171;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v122, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v122, 1, v94) != 1)
    {
      v123 = v152;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text8.setter();
      sub_26A209490(v123, type metadata accessor for _ProtoTextProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v122 = v171;
    __swift_storeEnumTagSinglePayload(v171, 1, 1, v94);
  }

  sub_26A0E48F0(v122, &qword_28036C7B8, &unk_26A425BF0);
LABEL_41:
  sub_26A10FD9C();
  v124 = v180;
  if (v180)
  {
    v125 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v125 + 8))(v124, v125);
    v126 = v172;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v126, 0, 1, v94);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v126, 1, v94);
    v128 = v174;
    if (EnumTagSinglePayload != 1)
    {
      v129 = v153;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.text9.setter();
      sub_26A209490(v129, type metadata accessor for _ProtoTextProperty);
      goto LABEL_46;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB08, &unk_26A428720);
    v126 = v172;
    __swift_storeEnumTagSinglePayload(v172, 1, 1, v94);
    v128 = v174;
  }

  sub_26A0E48F0(v126, &qword_28036C7B8, &unk_26A425BF0);
LABEL_46:
  sub_26A10FD9C();
  v130 = v180;
  if (v180)
  {
    v131 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v131 + 8))(v130, v131);
    v132 = v173;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v132, 0, 1, v128);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v132, 1, v128) != 1)
    {
      v133 = v154;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.thumbnail1.setter();
      sub_26A209490(v133, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_51;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB00, &unk_26A426450);
    v132 = v173;
    __swift_storeEnumTagSinglePayload(v173, 1, 1, v128);
  }

  sub_26A0E48F0(v132, &qword_28036CAE8, &unk_26A426430);
LABEL_51:
  sub_26A10FD9C();
  v134 = v180;
  if (v180)
  {
    v135 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v135 + 8))(v134, v135);
    v136 = v176;
    sub_26A20943C();
    __swift_storeEnumTagSinglePayload(v136, 0, 1, v128);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v136, 1, v128) != 1)
    {
      v137 = v155;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.thumbnail2.setter();
      sub_26A209490(v137, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_56;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CB00, &unk_26A426450);
    v136 = v176;
    __swift_storeEnumTagSinglePayload(v176, 1, 1, v128);
  }

  sub_26A0E48F0(v136, &qword_28036CAE8, &unk_26A426430);
LABEL_56:
  sub_26A10FD9C();
  v138 = v180;
  if (v180)
  {
    v139 = v181;
    __swift_project_boxed_opaque_existential_1(&v179, v180);
    (*(v139 + 8))(v138, v139);
    v140 = v178;
    sub_26A20943C();
    v141 = v177;
    __swift_storeEnumTagSinglePayload(v140, 0, 1, v177);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    if (__swift_getEnumTagSinglePayload(v140, 1, v141) != 1)
    {
      v142 = v157;
      sub_26A20943C();
      sub_26A2098B8();
      _ProtoSummaryItem_PairNumber.action.setter();
      sub_26A209490(v142, type metadata accessor for _ProtoActionProperty);
      goto LABEL_61;
    }
  }

  else
  {
    sub_26A0E48F0(&v179, &qword_28036CAF8, &unk_26A426D30);
    v140 = v178;
    __swift_storeEnumTagSinglePayload(v178, 1, 1, v177);
  }

  sub_26A0E48F0(v140, &off_28036C7C0, &off_26A427400);
LABEL_61:

  result = _ProtoSummaryItem_PairNumber.componentName.setter();
  if (a19)
  {

    return _ProtoSummaryItem_PairNumber.linkIdentifier.setter();
  }

  return result;
}

void SummaryItemPairNumber.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_76();
  v38 = v24;
  v39 = v23;
  v40 = v26;
  v41 = v25;
  v42 = v28;
  v43 = v27;
  v30 = v29;
  v44 = v29;
  v45 = v31;
  OUTLINED_FUNCTION_40_10();
  sub_26A0E5D68(v32, v59);
  sub_26A0E5D68(v30, v58);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_9_16();
  sub_26A209870(v33, v34);
  sub_26A4249C4();

  sub_26A0E48F0(v37, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_56_6(v36);
  OUTLINED_FUNCTION_56_6(v35);
  OUTLINED_FUNCTION_164_0(a23);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v38);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_26A0E48F0(v46, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_56_6(v47);
  OUTLINED_FUNCTION_56_6(v48);
  OUTLINED_FUNCTION_164_0(v49);
  OUTLINED_FUNCTION_164_0(v50);
  OUTLINED_FUNCTION_164_0(v51);
  OUTLINED_FUNCTION_164_0(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(v54);
  OUTLINED_FUNCTION_164_0(v55);
  OUTLINED_FUNCTION_164_0(&v56);
  OUTLINED_FUNCTION_164_0(&v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumber.init(number1:number2:text1:text2:text3:text4:text5:text6:text7:text8:text9:thumbnail1:thumbnail2:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_76();
  v38 = v24;
  v39 = v23;
  v40 = v26;
  v41 = v25;
  v42 = v28;
  v43 = v27;
  v30 = v29;
  v44 = v29;
  v45 = v31;
  OUTLINED_FUNCTION_40_10();
  sub_26A0E5D68(v32, v59);
  sub_26A0E5D68(v30, v58);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_PairNumber(0);
  OUTLINED_FUNCTION_9_16();
  sub_26A209870(v33, v34);
  sub_26A4249C4();
  sub_26A0E48F0(v37, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v36);
  OUTLINED_FUNCTION_52_1(v35);
  OUTLINED_FUNCTION_164_0(a23);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v38);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  sub_26A0E48F0(v46, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v47);
  OUTLINED_FUNCTION_52_1(v48);
  OUTLINED_FUNCTION_164_0(v49);
  OUTLINED_FUNCTION_164_0(v50);
  OUTLINED_FUNCTION_164_0(v51);
  OUTLINED_FUNCTION_164_0(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(v54);
  OUTLINED_FUNCTION_164_0(v55);
  OUTLINED_FUNCTION_164_0(&v56);
  OUTLINED_FUNCTION_164_0(&v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemPairNumber.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v98 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v103 = &v98 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v102 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v101 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v21 = &v98 - v20;
  v22 = type metadata accessor for _ProtoTextProperty(0);
  v23 = OUTLINED_FUNCTION_12(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v100 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v29 = &v98 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  v99 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  v38 = &v98 - v37;
  v39 = type metadata accessor for SummaryItemPairNumber();
  v40 = OUTLINED_FUNCTION_41(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v43);
  v45 = &v98 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF50, &qword_26A426B00);
  OUTLINED_FUNCTION_12(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v49);
  v51 = &v98 - v50;
  OUTLINED_FUNCTION_26_15();
  sub_26A2098B8();
  if (v3)
  {
    _ProtoSummaryItem_PairNumber.redactedProto.getter();
  }

  else
  {
    sub_26A2098B8();
  }

  sub_26A20943C();
  v51[*(v46 + 32)] = v3 & 1;
  sub_26A209490(v45, type metadata accessor for SummaryItemPairNumber);
  v52 = MEMORY[0x277D84F90];
  *&v51[*(v46 + 28)] = MEMORY[0x277D84F90];
  v53 = *&v51[*(type metadata accessor for _ProtoSummaryItem_PairNumber(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v21);
  if (v54)
  {
    *v29 = v52;
    *(v29 + 4) = 0;
    v55 = &v29[v22[7]];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v56 = v22[8];
    v57 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
    v61 = v22[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v57);
    OUTLINED_FUNCTION_3_6(v21);
    v65 = v101;
    if (!v54)
    {
      sub_26A0E48F0(v21, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20943C();
    v65 = v101;
  }

  sub_26A20943C();
  v66 = type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
  sub_26A1043C0();
  sub_26A0E48F0(v38, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v65);
  if (v54)
  {
    v70 = v100;
    *v100 = v52;
    *(v70 + 4) = 0;
    v71 = v70 + v22[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v72 = v22[8];
    v73 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
    v77 = v22[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v73);
    OUTLINED_FUNCTION_3_6(v65);
    if (!v54)
    {
      sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20943C();
  }

  sub_26A20943C();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v66);
  sub_26A1043C0();
  OUTLINED_FUNCTION_49_11();
  SummaryItemPairNumber.text1.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text3.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text5.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text6.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.text9.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_47_6();
  OUTLINED_FUNCTION_25_3();
  SummaryItemPairNumber.thumbnail1.getter();
  sub_26A104398();
  OUTLINED_FUNCTION_49_11();
  SummaryItemPairNumber.thumbnail2.getter();
  sub_26A104398();
  OUTLINED_FUNCTION_49_11();
  v84 = v103;
  SummaryItemPairNumber.action.getter();
  sub_26A104294();
  sub_26A0E48F0(v84, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F76B0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v86, v87, v88, v89, v98, v99);

  v90 = swift_getKeyPath();
  sub_26A0F8298(v90, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v91, v92, v93, v94, v98, v99);

  sub_26A0F9D58();
  sub_26A0E48F0(v51, &qword_28036CF50, &qword_26A426B00);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v96;
  result._countAndFlagsBits = v95;
  return result;
}

uint64_t type metadata accessor for SummaryItemPairNumber()
{
  result = qword_28036FB40;
  if (!qword_28036FB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A20943C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A209490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SummaryItemPairNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_PairNumber(0);
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
  OUTLINED_FUNCTION_10_21();
  sub_26A2098B8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_27_15();
  sub_26A20943C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SummaryItemPairNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemPairNumber();
  *(inited + 64) = &protocol witness table for SummaryItemPairNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_15();
  sub_26A2098B8();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A209870(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A209804()
{
  result = type metadata accessor for _ProtoSummaryItem_PairNumber(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A209870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2098B8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_23()
{
  v4 = *(v0 + 464);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 32), 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 36), 1, 1, v4);
  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_11_15@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

void OUTLINED_FUNCTION_17_8()
{

  sub_26A1A783C();
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  v2 = *(v0 + 472);

  return sub_26A20943C();
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return sub_26A209490(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_35_12()
{

  return type metadata accessor for _ProtoSummaryItem_PairNumber(0);
}

void OUTLINED_FUNCTION_40_10()
{
  v3 = v0[7];
  v2 = v0[6];
  v1 = v0[5];
}

void OUTLINED_FUNCTION_47_6()
{

  sub_26A1043C0();
}

uint64_t OUTLINED_FUNCTION_49_11()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return type metadata accessor for _ProtoSummaryItem_PairNumber(0);
}

uint64_t OUTLINED_FUNCTION_56_6(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

id sub_26A209B1C()
{
  v23[4] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_26A4246B4();
  v23[0] = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:v23];

  if (!v2)
  {
    v6 = v23[0];
    v7 = sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v8 = sub_26A424AE4();
    __swift_project_value_buffer(v8, qword_2803A8950);
    v9 = v7;
    v10 = sub_26A424AD4();
    v11 = sub_26A424E04();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23[0] = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = sub_26A4254B4();
      v16 = sub_26A0E8788(v14, v15, v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_26A0B8000, v10, v11, "Failed to deserialize plist data to dictionary: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }

    else
    {
    }

    goto LABEL_14;
  }

  v3 = v23[0];
  sub_26A424E64();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FB50, &qword_26A43B4F0);
  if (!swift_dynamicCast())
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v17 = sub_26A424AE4();
    __swift_project_value_buffer(v17, qword_2803A8950);
    v18 = sub_26A424AD4();
    v19 = sub_26A424E04();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26A0B8000, v18, v19, "Dictionary is not a proper plist", v20, 2u);
      OUTLINED_FUNCTION_1_21();
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D471B0]);
  result = sub_26A20A208(v22);
LABEL_15:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26A209E4C()
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = [v0 dictionary];
  if (v1)
  {
    v2 = v1;
    v22 = 0;
    v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:&v22];
    v4 = v22;
    if (v3)
    {
      v5 = sub_26A4246D4();

      v6 = *MEMORY[0x277D85DE8];
      return v5;
    }

    v13 = v4;
    sub_26A4245B4();

    swift_willThrow();
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v14 = sub_26A424AE4();
    __swift_project_value_buffer(v14, qword_2803A8950);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_26A424EF4();

    v22 = 0xD000000000000026;
    v23 = 0x800000026A448880;
    swift_getErrorValue();
    v15 = sub_26A4254B4();
    MEMORY[0x26D65BA70](v15);

    v16 = v22;
    v17 = v23;

    v18 = sub_26A424AD4();
    v19 = sub_26A424E14();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_26A0E8788(v16, v17, &v22);
      _os_log_impl(&dword_26A0B8000, v18, v19, "%{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v8 = sub_26A424AE4();
    __swift_project_value_buffer(v8, qword_2803A8950);
    v9 = sub_26A424AD4();
    v10 = sub_26A424E14();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_26A0E8788(0xD000000000000029, 0x800000026A448850, &v22);
      _os_log_impl(&dword_26A0B8000, v9, v10, "%{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_1_21();
    }
  }

  result = sub_26A424FC4();
  __break(1u);
  return result;
}

id sub_26A20A208(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_26A424B04();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t SummaryItemSwitchV2.switch.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoSwitch();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_36_2();
  v12 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_SwitchV2(v11) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v13 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v13, v14, v7);
  if (v15)
  {
    *v1 = 0;
    *(v1 + 8) = 0xE000000000000000;
    *(v1 + 16) = 0;
    *(v1 + 24) = xmmword_26A426400;
    v16 = v1 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v7[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    v26 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v26, v27, v7);
    if (!v15)
    {
      sub_26A0E48F0(v2, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A20DAC8();
  }

  return sub_26A20DAC8();
}

uint64_t SummaryItemSwitchV2.text1.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_51_1();
  v8 = type metadata accessor for _ProtoTextProperty(v7);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v12 = OUTLINED_FUNCTION_36_2();
  v13 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_SwitchV2(v12) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v14 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v14, v15, v8);
  if (v16)
  {
    *v1 = MEMORY[0x277D84F90];
    *(v1 + 8) = 0;
    v17 = v1 + v8[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = v8[8];
    v19 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v8[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    v27 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v27, v28, v8);
    if (!v16)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20DAC8();
  }

  return sub_26A20DAC8();
}

void sub_26A20A620()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoMultilineTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = *(v6 + 32);
      v21 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      v25 = *(v6 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v3 = 0;
  }

  type metadata accessor for MultilineTextProperty(0);
  v29 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v29, v3, 1, v30);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitchV2.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = *(v5 + 32);
      v19 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
      v23 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v2 = 0;
  }

  type metadata accessor for TextProperty(0);
  v27 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v27, v2, 1, v28);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitchV2.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_17_9();
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v14, v15, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = *(v4 + 32);
      v18 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
      v22 = *(v4 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
      OUTLINED_FUNCTION_38_0();
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v2 = 0;
  }

  type metadata accessor for VisualProperty();
  v26 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v26, v2, 1, v27);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitchV2.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_17_9();
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
      OUTLINED_FUNCTION_57_7();
    }

    sub_26A20DAC8();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitchV2.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemSwitchV2.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit26_ProtoSummaryItem_SwitchV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_SwitchV2.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v256 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v256);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v15);
  v254 = type metadata accessor for _ProtoVisualProperty();
  v16 = OUTLINED_FUNCTION_12(v254);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v22 = OUTLINED_FUNCTION_41(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_48();
  v28 = OUTLINED_FUNCTION_35(v27);
  v251 = type metadata accessor for _ProtoMultilineTextProperty(v28);
  v29 = OUTLINED_FUNCTION_12(v251);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v37 = OUTLINED_FUNCTION_41(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_48();
  v45 = OUTLINED_FUNCTION_35(v44);
  v252 = type metadata accessor for _ProtoTextProperty(v45);
  v46 = OUTLINED_FUNCTION_12(v252);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v54 = OUTLINED_FUNCTION_41(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v61);
  v62 = type metadata accessor for _ProtoSwitch();
  v63 = OUTLINED_FUNCTION_12(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v66);
  v68 = v230 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  v70 = OUTLINED_FUNCTION_41(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v73);
  v75 = v230 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = v230 - v77;
  OUTLINED_FUNCTION_5_18();
  v79 = v1;
  sub_26A20DC98();
  v80 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  v81 = *(v80 + 20);
  v257 = v3;
  v258 = v81;
  v82 = *(v3 + v81);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v62);
  sub_26A0E48F0(v78, &qword_28036D258, &unk_26A4273E0);
  if (EnumTagSinglePayload != 1)
  {
    v84 = *(v79 + *(v80 + 20));
    OUTLINED_FUNCTION_142();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v75, 1, v62);
    if (v85)
    {
      *v68 = 0;
      *(v68 + 1) = 0xE000000000000000;
      v68[16] = 0;
      *(v68 + 24) = xmmword_26A426400;
      v86 = &v68[v62[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v87 = v62[8];
      OUTLINED_FUNCTION_92();
      v88 = v256;
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v256);
      v92 = v62[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v88);
      v96 = OUTLINED_FUNCTION_37(v75, 1, v62);
      v104 = v257;
      v105 = v258;
      if (!v85)
      {
        v96 = sub_26A0E48F0(v75, &qword_28036D258, &unk_26A4273E0);
      }
    }

    else
    {
      v96 = sub_26A20DAC8();
      v104 = v257;
      v105 = v258;
    }

    sub_26A2F1E48(v96, v97, v98, v99, v100, v101, v102, v103, v230[0], v230[1], v231, v232, v233, v234, v235, v236, v237, v238, v239, v240);
    sub_26A20DB1C(v68, type metadata accessor for _ProtoSwitch);
    v106 = *(v104 + v105);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v104 + v105);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v108 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v108);
      OUTLINED_FUNCTION_24_16();
      v82 = v109;
      *(v104 + v105) = v109;
    }

    OUTLINED_FUNCTION_42_8(&v256);
    v110 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v62);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v113 = v246;
  OUTLINED_FUNCTION_209();
  v114 = v252;
  v115 = __swift_getEnumTagSinglePayload(v113, 1, v252);
  OUTLINED_FUNCTION_162_0(v113);
  if (v115 == 1)
  {
    v116 = v256;
    v117 = v257;
    v118 = v251;
  }

  else
  {
    v119 = v231;
    sub_26A10FD9C();
    v120 = OUTLINED_FUNCTION_50_7();
    OUTLINED_FUNCTION_37(v120, v121, v114);
    v117 = v257;
    v118 = v251;
    if (v85)
    {
      OUTLINED_FUNCTION_56_7(MEMORY[0x277D84F90]);
      v122 = OUTLINED_FUNCTION_44_0(*(v114 + 32));
      v116 = v256;
      __swift_storeEnumTagSinglePayload(v122, v123, v124, v256);
      v125 = OUTLINED_FUNCTION_44_0(*(v114 + 36));
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v116);
      v128 = OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_37(v128, v129, v114);
      v130 = v258;
      if (!v85)
      {
        sub_26A0E48F0(v119, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7(&v258);
      v116 = v256;
      v130 = v258;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_12();
    v131 = *(v117 + v130);
    v132 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v117 + v130);
    if ((v132 & 1) == 0)
    {
      v133 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v133);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v134);
    }

    OUTLINED_FUNCTION_42_8(v267);
    v135 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v135, v136, v137, v114);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v138 = v247;
  OUTLINED_FUNCTION_209();
  v139 = v118;
  v140 = __swift_getEnumTagSinglePayload(v138, 1, v118);
  OUTLINED_FUNCTION_162_0(v138);
  if (v140 == 1)
  {
    v141 = v116;
  }

  else
  {
    v142 = v234;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v142);
    v143 = v258;
    if (v85)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v144 = OUTLINED_FUNCTION_44_0(*(v139 + 32));
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v116);
      v147 = OUTLINED_FUNCTION_44_0(*(v139 + 36));
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v116);
      OUTLINED_FUNCTION_48_0(v142);
      if (!v85)
      {
        sub_26A0E48F0(v142, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7(&v259);
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_20_15();
    v150 = *(v117 + v143);
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v117 + v143);
    if ((v151 & 1) == 0)
    {
      v152 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v152);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v153);
    }

    v141 = v116;
    OUTLINED_FUNCTION_42_8(&v266);
    v154 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v139);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v157 = v248;
  OUTLINED_FUNCTION_209();
  v158 = __swift_getEnumTagSinglePayload(v157, 1, v139);
  OUTLINED_FUNCTION_162_0(v157);
  if (v158 == 1)
  {
    v159 = v141;
  }

  else
  {
    v160 = v237;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v160);
    v161 = v258;
    if (v85)
    {
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v162 = OUTLINED_FUNCTION_44_0(*(v139 + 32));
      v159 = v141;
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v141);
      v165 = OUTLINED_FUNCTION_44_0(*(v139 + 36));
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v141);
      OUTLINED_FUNCTION_48_0(v160);
      if (!v85)
      {
        sub_26A0E48F0(v160, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7(&v260);
      v159 = v141;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_20_15();
    v168 = *(v117 + v161);
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v117 + v161);
    if ((v169 & 1) == 0)
    {
      v170 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v170);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v171);
    }

    v172 = v250;
    sub_26A20DAC8();
    __swift_storeEnumTagSinglePayload(v172, 0, 1, v139);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v173 = v249;
  OUTLINED_FUNCTION_209();
  v174 = OUTLINED_FUNCTION_50_7();
  v176 = __swift_getEnumTagSinglePayload(v174, v175, v114);
  OUTLINED_FUNCTION_162_0(v173);
  if (v176 == 1)
  {
    v177 = v254;
  }

  else
  {
    v178 = v240;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v178, 1, v114);
    v179 = v258;
    v177 = v254;
    if (v85)
    {
      OUTLINED_FUNCTION_56_7(MEMORY[0x277D84F90]);
      v180 = OUTLINED_FUNCTION_44_0(*(v114 + 32));
      __swift_storeEnumTagSinglePayload(v180, v181, v182, v159);
      v183 = OUTLINED_FUNCTION_44_0(*(v114 + 36));
      __swift_storeEnumTagSinglePayload(v183, v184, v185, v159);
      OUTLINED_FUNCTION_37(v178, 1, v114);
      if (!v85)
      {
        sub_26A0E48F0(v178, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7(&v261);
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_21_12();
    v186 = *(v117 + v179);
    v187 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v117 + v179);
    if ((v187 & 1) == 0)
    {
      v188 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v188);
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_244(v189);
    }

    OUTLINED_FUNCTION_42_8(v267);
    v190 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v190, v191, v192, v114);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v193 = v253;
  OUTLINED_FUNCTION_209();
  v194 = __swift_getEnumTagSinglePayload(v193, 1, v177);
  OUTLINED_FUNCTION_162_0(v193);
  if (v194 != 1)
  {
    v195 = v241;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v195);
    v196 = v258;
    if (v85)
    {
      v82 = v242;
      OUTLINED_FUNCTION_29_3(MEMORY[0x277D84F90]);
      v197 = OUTLINED_FUNCTION_44_0(*(v177 + 32));
      __swift_storeEnumTagSinglePayload(v197, v198, v199, v159);
      v200 = OUTLINED_FUNCTION_44_0(*(v177 + 36));
      __swift_storeEnumTagSinglePayload(v200, v201, v202, v159);
      OUTLINED_FUNCTION_48_0(v195);
      if (!v85)
      {
        sub_26A0E48F0(v195, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7(&v262);
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A20DB1C(v82, type metadata accessor for _ProtoVisualProperty);
    v203 = *(v117 + v196);
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v117 + v196);
    if ((v204 & 1) == 0)
    {
      v205 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v205);
      OUTLINED_FUNCTION_24_16();
      v82 = v206;
      *(v117 + v196) = v206;
    }

    OUTLINED_FUNCTION_42_8(&v263);
    v207 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v207, v208, v209, v177);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v210 = v255;
  OUTLINED_FUNCTION_209();
  v211 = OUTLINED_FUNCTION_50_7();
  v213 = __swift_getEnumTagSinglePayload(v211, v212, v159);
  OUTLINED_FUNCTION_162_0(v210);
  if (v213 != 1)
  {
    v214 = v243;
    sub_26A10FD9C();
    v215 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v215, v216, v159);
    v217 = v258;
    if (v85)
    {
      v82 = v244;
      *v244 = MEMORY[0x277D84F90];
      *(v82 + 8) = 0;
      *(v82 + 16) = 0xE000000000000000;
      v218 = v82 + *(v159 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v219 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v219, v220, v159);
      v221 = v245;
      if (!v85)
      {
        sub_26A0E48F0(v214, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_7(&v264);
      v221 = v245;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v221);
    sub_26A20DB1C(v82, type metadata accessor for _ProtoActionProperty);
    v222 = *(v117 + v217);
    v223 = swift_isUniquelyReferenced_nonNull_native();
    v224 = *(v117 + v217);
    if ((v223 & 1) == 0)
    {
      v225 = type metadata accessor for _ProtoSummaryItem_SwitchV2._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v225);
      sub_26A1BEAEC();
      *(v117 + v217) = v226;
    }

    OUTLINED_FUNCTION_42_8(&v265);
    v227 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v227, v228, v229, v159);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitchV2.init(switch:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
  sub_26A20DB74(&qword_28036EE58, type metadata accessor for _ProtoSummaryItem_SwitchV2);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return sub_26A20DB1C(a1, type metadata accessor for Switch);
}

uint64_t sub_26A20C218(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v106 = a7;
  v107 = a8;
  v103 = a6;
  v98 = a5;
  v100 = a4;
  v13 = type metadata accessor for ActionProperty();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v109 = &v86 - v18;
  v108 = type metadata accessor for _ProtoActionProperty();
  v19 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v93 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v94 = &v86 - v22;
  v23 = type metadata accessor for VisualProperty();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v96 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v105 = &v86 - v28;
  v104 = type metadata accessor for _ProtoVisualProperty();
  v29 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v91 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v92 = &v86 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v102 = &v86 - v35;
  v36 = type metadata accessor for MultilineTextProperty(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v99 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v86 - v42;
  v44 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v88 = &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v95 = &v86 - v48;
  MEMORY[0x28223BE20](v49);
  v87 = &v86 - v50;
  v101 = type metadata accessor for _ProtoTextProperty(0);
  v51 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v90 = &v86 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v86 - v54;
  v56 = type metadata accessor for TextProperty(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v58 = type metadata accessor for _ProtoSwitch();
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  sub_26A20DC98();
  _ProtoSummaryItem_SwitchV2.switch.setter();
  v60 = a3;
  v61 = a3[3];
  v62 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(v62 + 8))(v61, v62);
  sub_26A20DAC8();
  v89 = v55;
  _ProtoSummaryItem_SwitchV2.text1.setter();
  sub_26A10FD9C();
  v63 = v111;
  if (v111)
  {
    v64 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v64 + 8))(v63, v64);
    sub_26A20DAC8();
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44) != 1)
    {
      v65 = v87;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.text2.setter();
      sub_26A20DB1C(v65, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
  }

  sub_26A0E48F0(v43, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  sub_26A10FD9C();
  v66 = v111;
  if (v111)
  {
    v67 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v67 + 8))(v66, v67);
    v68 = v99;
    sub_26A20DAC8();
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v44);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v68, 1, v44) != 1)
    {
      v69 = v88;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.text3.setter();
      sub_26A20DB1C(v69, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB10, &unk_26A426460);
    v68 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v44);
  }

  sub_26A0E48F0(v68, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v70 = v111;
  if (v111)
  {
    v71 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v71 + 8))(v70, v71);
    v72 = v102;
    sub_26A20DAC8();
    v73 = v101;
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v101);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v72, 1, v73) != 1)
    {
      v74 = v90;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.text4.setter();
      sub_26A20DB1C(v74, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB08, &unk_26A428720);
    v72 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v101);
  }

  sub_26A0E48F0(v72, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v75 = v111;
  if (v111)
  {
    v76 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v76 + 8))(v75, v76);
    v77 = v105;
    sub_26A20DAC8();
    v78 = v104;
    __swift_storeEnumTagSinglePayload(v77, 0, 1, v104);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v77, 1, v78) != 1)
    {
      v79 = v92;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.thumbnail.setter();
      sub_26A20DB1C(v79, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CB00, &unk_26A426450);
    v77 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v104);
  }

  sub_26A0E48F0(v77, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v80 = v111;
  if (v111)
  {
    v81 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    (*(v81 + 8))(v80, v81);
    v82 = v109;
    sub_26A20DAC8();
    v83 = v108;
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v108);
    __swift_destroy_boxed_opaque_existential_1(v110);
    if (__swift_getEnumTagSinglePayload(v82, 1, v83) != 1)
    {
      v84 = v94;
      sub_26A20DAC8();
      sub_26A20DC98();
      _ProtoSummaryItem_SwitchV2.action.setter();
      sub_26A20DB1C(v84, type metadata accessor for _ProtoActionProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v110, &qword_28036CAF8, &unk_26A426D30);
    v82 = v109;
    __swift_storeEnumTagSinglePayload(v109, 1, 1, v108);
  }

  sub_26A0E48F0(v82, &off_28036C7C0, &off_26A427400);
LABEL_26:

  result = _ProtoSummaryItem_SwitchV2.componentName.setter();
  if (a12)
  {

    return _ProtoSummaryItem_SwitchV2.linkIdentifier.setter();
  }

  return result;
}

Swift::String __swiftcall SummaryItemSwitchV2.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v121 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v128 = &v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v127 = &v121 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v121 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  v125 = &v121 - v25;
  v123 = type metadata accessor for _ProtoTextProperty(0);
  v26 = OUTLINED_FUNCTION_12(v123);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18();
  v122 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  v126 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_48();
  v124 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v41);
  v43 = &v121 - v42;
  v44 = type metadata accessor for _ProtoSwitch();
  v45 = OUTLINED_FUNCTION_12(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_18();
  v50 = v49 - v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_41(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_36_2();
  v55 = type metadata accessor for SummaryItemSwitchV2();
  v56 = OUTLINED_FUNCTION_41(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v59);
  v61 = &v121 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF40, &qword_26A42E9B0);
  OUTLINED_FUNCTION_12(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v65);
  v67 = &v121 - v66;
  OUTLINED_FUNCTION_15_15();
  sub_26A20DC98();
  if (v4)
  {
    _ProtoSummaryItem_SwitchV2.redactedProto.getter();
  }

  else
  {
    sub_26A20DC98();
  }

  sub_26A20DAC8();
  v67[*(v62 + 32)] = v4 & 1;
  sub_26A20DB1C(v61, type metadata accessor for SummaryItemSwitchV2);
  v68 = MEMORY[0x277D84F90];
  *&v67[*(v62 + 28)] = MEMORY[0x277D84F90];
  v69 = *&v67[*(type metadata accessor for _ProtoSummaryItem_SwitchV2(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v70 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v70, v71, v44);
  if (v72)
  {
    *v50 = 0;
    *(v50 + 8) = 0xE000000000000000;
    *(v50 + 16) = 0;
    *(v50 + 24) = xmmword_26A426400;
    v73 = v50 + v44[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v74 = v44[8];
    v75 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
    v79 = v44[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v75);
    v83 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v83, v84, v44);
    v85 = v122;
    if (!v72)
    {
      sub_26A0E48F0(v43, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A20DAC8();
    v85 = v122;
  }

  sub_26A20DAC8();
  type metadata accessor for Switch();
  v86 = OUTLINED_FUNCTION_95_0();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  sub_26A106E48();
  sub_26A0E48F0(v2, &qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_142();
  v90 = v125;
  sub_26A10FD9C();
  v91 = v123;
  OUTLINED_FUNCTION_37(v90, 1, v123);
  if (v72)
  {
    *v85 = v68;
    *(v85 + 8) = 0;
    v92 = v85 + v91[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v93 = v91[8];
    v94 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
    v98 = v91[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v94);
    OUTLINED_FUNCTION_37(v90, 1, v91);
    if (!v72)
    {
      sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A20DAC8();
  }

  v102 = v124;
  sub_26A20DAC8();
  type metadata accessor for TextProperty(0);
  v103 = OUTLINED_FUNCTION_237();
  __swift_storeEnumTagSinglePayload(v103, 0, 1, v104);
  OUTLINED_FUNCTION_222();
  sub_26A106DF8();
  OUTLINED_FUNCTION_162_0(v102);
  SummaryItemSwitchV2.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106E20();
  sub_26A0E48F0(v20, &qword_28036CB28, &qword_26A427980);
  SummaryItemSwitchV2.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106E20();
  sub_26A0E48F0(v20, &qword_28036CB28, &qword_26A427980);
  v105 = v126;
  SummaryItemSwitchV2.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106DF8();
  OUTLINED_FUNCTION_162_0(v105);
  v106 = v127;
  SummaryItemSwitchV2.thumbnail.getter();
  sub_26A106DD0();
  sub_26A0E48F0(v106, &qword_28036CB20, &unk_26A426470);
  v107 = v128;
  SummaryItemSwitchV2.action.getter();
  sub_26A106CCC();
  sub_26A0E48F0(v107, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7B88(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v109, v110, v111, v112, v121, v122);

  v113 = swift_getKeyPath();
  sub_26A0F851C(v113, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v114, v115, v116, v117, v121, v122);

  sub_26A0FDB28();
  sub_26A0E48F0(v67, &qword_28036CF40, &qword_26A42E9B0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v119;
  result._countAndFlagsBits = v118;
  return result;
}

uint64_t SummaryItemSwitchV2.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
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
  OUTLINED_FUNCTION_5_18();
  sub_26A20DC98();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_16_13();
  sub_26A20DAC8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SummaryItemSwitchV2.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemSwitchV2();
  *(inited + 64) = &protocol witness table for SummaryItemSwitchV2;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_15_15();
  sub_26A20DC98();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A20DB74(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemSwitchV2()
{
  result = qword_28036FB58;
  if (!qword_28036FB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A20DAC8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A20DB1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A20DB74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A20DC2C()
{
  result = type metadata accessor for _ProtoSummaryItem_SwitchV2(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A20DC98()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
}

uint64_t OUTLINED_FUNCTION_20_15()
{

  return sub_26A20DB1C(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

uint64_t OUTLINED_FUNCTION_21_12()
{

  return sub_26A20DB1C(v0, type metadata accessor for _ProtoTextProperty);
}

void OUTLINED_FUNCTION_24_16()
{

  sub_26A1BEAEC();
}

uint64_t OUTLINED_FUNCTION_42_8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A20DAC8();
}

uint64_t OUTLINED_FUNCTION_43_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A20DAC8();
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return type metadata accessor for _ProtoSummaryItem_SwitchV2(0);
}

uint64_t OUTLINED_FUNCTION_56_7@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 28);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_57_7()
{

  return sub_26A20DAC8();
}

uint64_t sub_26A20DEEC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A20DFB8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_4_3();
  v10 = *(a1(v9) + 24);
  OUTLINED_FUNCTION_32_2();
  v11 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v2);
  if (!v12)
  {
    return sub_26A20DEEC();
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v13 = a2 + v11[7];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v14 = v11[8];
  v15 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = v11[9];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v15);
  result = OUTLINED_FUNCTION_23(v2);
  if (!v12)
  {
    return sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
  }

  return result;
}

uint64_t sub_26A20E12C(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  v7 = *(a1(0) + 28);
  OUTLINED_FUNCTION_48_11();
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_37(v1, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v11, v12, &qword_26A432940);
  return v10;
}

uint64_t sub_26A20E1FC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46();
  v10 = *(a1(v9) + 28);
  OUTLINED_FUNCTION_32_2();
  v11 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_23(v2);
  if (!v12)
  {
    return sub_26A20DEEC();
  }

  *a2 = 0;
  v13 = &a2[*(v11 + 20)];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v2);
  if (!v12)
  {
    return sub_26A0E48F0(v2, &qword_28036D198, &qword_26A432940);
  }

  return result;
}

uint64_t sub_26A20E310(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  v7 = *(a1(0) + 32);
  OUTLINED_FUNCTION_48_11();
  v8 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_37(v1, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v11, v12, &off_26A427400);
  return v10;
}

uint64_t sub_26A20E3E0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_46();
  v10 = *(a1(v9) + 32);
  OUTLINED_FUNCTION_32_2();
  v11 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_23(v2);
  if (!v12)
  {
    return sub_26A20DEEC();
  }

  *a2 = MEMORY[0x277D84F90];
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v13 = a2 + *(v11 + 24);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  result = OUTLINED_FUNCTION_23(v2);
  if (!v12)
  {
    return sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
  }

  return result;
}

uint64_t sub_26A20E504()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 24), &qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_32_10();
  sub_26A20DEEC();
  type metadata accessor for _ProtoTextProperty(0);
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20E594()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 28), &qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_30_7();
  sub_26A20DEEC();
  type metadata accessor for _ProtoOptionalBool(0);
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20E624()
{
  v1 = OUTLINED_FUNCTION_110();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 32), &off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_39_10();
  sub_26A20DEEC();
  type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20E6B4(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  v7 = *(a1(0) + 24);
  OUTLINED_FUNCTION_48_11();
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_37(v1, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_88();
  sub_26A0E48F0(v11, v12, &unk_26A425BF0);
  return v10;
}

void _ProtoStatusIndicator_Success.text.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_28_9(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_2_17(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Success(v11);
  OUTLINED_FUNCTION_15_16(v12);
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoStatusIndicator_Success.showIndicator.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoOptionalBool(v6);
  OUTLINED_FUNCTION_1_24(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoStatusIndicator_Success(v12);
  OUTLINED_FUNCTION_12_13(*(v13 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A20EA6C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = (*a1)[4];
    sub_26A20ECD4();
    sub_26A0E48F0(v12 + v7, a3, a4);
    sub_26A20DEEC();
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_12_2();
    sub_26A20ED28();
  }

  else
  {
    sub_26A0E48F0(v12 + v7, a3, a4);
    sub_26A20DEEC();
    OUTLINED_FUNCTION_69_5();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

void _ProtoStatusIndicator_Success.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_15_3(v5);
  v6 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_1_24(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Success(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A20ECD4()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A20ED28()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t _ProtoStatusIndicator_Success.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoStatusIndicator_Success(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

void _ProtoStatusIndicator_Error.text.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_28_9(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_2_17(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Error(v11);
  OUTLINED_FUNCTION_15_16(v12);
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A20EF8C()
{
  v1 = OUTLINED_FUNCTION_56_8();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 24), &qword_28036C7B8, &unk_26A425BF0);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t _ProtoStatusIndicator_Error.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoStatusIndicator_Error.componentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void _ProtoStatusIndicator_Error.showIndicator.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoOptionalBool(v6);
  OUTLINED_FUNCTION_1_24(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoStatusIndicator_Error(v12);
  OUTLINED_FUNCTION_12_13(*(v13 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A20F1C4()
{
  v1 = OUTLINED_FUNCTION_56_8();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 28), &qword_28036D198, &qword_26A432940);
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void _ProtoStatusIndicator_Error.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_15_3(v5);
  v6 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_1_24(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Error(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A20F380()
{
  v1 = OUTLINED_FUNCTION_56_8();
  v3 = v2(v1);
  sub_26A0E48F0(v0 + *(v3 + 32), &off_28036C7C0, &off_26A427400);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A20F3FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_26A424794();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_26A20F490()
{
  v2 = OUTLINED_FUNCTION_110();
  v4 = *(v3(v2) + 20);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t _ProtoStatusIndicator_Error.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoStatusIndicator_Error(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t sub_26A20F558@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v3 = a1(0);
  v4 = a2 + v3[5];
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v5 = v3[6];
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[7];
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = v3[8];
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void _ProtoStatusIndicator_InProgress.text.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_28_9(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_2_17(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_InProgress(v11);
  OUTLINED_FUNCTION_15_16(v12);
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoStatusIndicator_InProgress.showIndicator.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoOptionalBool(v6);
  OUTLINED_FUNCTION_1_24(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoStatusIndicator_InProgress(v12);
  OUTLINED_FUNCTION_12_13(*(v13 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoStatusIndicator_InProgress.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_15_3(v5);
  v6 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_1_24(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_InProgress(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoStatusIndicator_InProgress.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoStatusIndicator_InProgress(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

void _ProtoStatusIndicator_Cancelled.text.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_28_9(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_2_17(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v11);
  OUTLINED_FUNCTION_15_16(v12);
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = OUTLINED_FUNCTION_190_1();
    OUTLINED_FUNCTION_0_24(v14);
    if (!v13)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoStatusIndicator_Cancelled.showIndicator.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_15_3(v5);
  v7 = type metadata accessor for _ProtoOptionalBool(v6);
  OUTLINED_FUNCTION_1_24(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  v13 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v12);
  OUTLINED_FUNCTION_12_13(*(v13 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v14)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v14)
    {
      sub_26A0E48F0(v0, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A20FD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_12_2();
  sub_26A20ECD4();
  return a7(v7);
}

void _ProtoStatusIndicator_Cancelled.action.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_15_3(v5);
  v6 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_1_24(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_35_3(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_16_5(v10);
  v12 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v11);
  OUTLINED_FUNCTION_12_13(*(v12 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A0E48F0(v0, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A20DEEC();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoStatusIndicator_Cancelled.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoStatusIndicator_Cancelled(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t sub_26A2100EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A210190(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2100EC(&qword_28036FC90, type metadata accessor for _ProtoStatusIndicator_Success);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A210210(uint64_t a1)
{
  v2 = sub_26A2100EC(&qword_28036FBF8, type metadata accessor for _ProtoStatusIndicator_Success);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A210280()
{
  sub_26A2100EC(&qword_28036FBF8, type metadata accessor for _ProtoStatusIndicator_Success);

  return sub_26A4249B4();
}

uint64_t sub_26A210364()
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
        OUTLINED_FUNCTION_25_16();
        sub_26A210CEC();
        break;
      case 2:
        sub_26A424924();
        break;
      case 3:
        OUTLINED_FUNCTION_25_16();
        sub_26A210D64();
        break;
      case 4:
        OUTLINED_FUNCTION_25_16();
        sub_26A210DDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A210458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = sub_26A210E84(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = *v5;
    v10 = v5[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_26A424A64();
    }

    v12 = OUTLINED_FUNCTION_50_8();
    sub_26A210FD4(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_50_8();
    sub_26A211124(v16, v17, v18, v19);
    v20 = v5 + *(a5(0) + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A21060C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2100EC(&qword_28036FC88, type metadata accessor for _ProtoStatusIndicator_Error);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A21068C(uint64_t a1)
{
  v2 = sub_26A2100EC(&qword_28036F888, type metadata accessor for _ProtoStatusIndicator_Error);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2106FC()
{
  sub_26A2100EC(&qword_28036F888, type metadata accessor for _ProtoStatusIndicator_Error);

  return sub_26A4249B4();
}

uint64_t sub_26A2108CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2100EC(&qword_28036FC80, type metadata accessor for _ProtoStatusIndicator_InProgress);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A21094C(uint64_t a1)
{
  v2 = sub_26A2100EC(&qword_28036D858, type metadata accessor for _ProtoStatusIndicator_InProgress);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A2109BC()
{
  sub_26A2100EC(&qword_28036D858, type metadata accessor for _ProtoStatusIndicator_InProgress);

  return sub_26A4249B4();
}

uint64_t sub_26A210A60(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A424AC4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26A426DD0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "text";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_26A424A94();
  OUTLINED_FUNCTION_12(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "component_name";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21888];
  v13();
  v16 = (v8 + 2 * v5);
  v17 = v16 + v4[14];
  *v16 = 3;
  *v17 = "show_indicator";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v13();
  v18 = (v8 + 3 * v5);
  v19 = v18 + v4[14];
  *v18 = 4;
  *v19 = "action";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v13();
  return sub_26A424AA4();
}

uint64_t sub_26A210CEC()
{
  v0 = OUTLINED_FUNCTION_18_15();
  v2 = *(v1(v0) + 24);
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_31_8();
  sub_26A2100EC(v3, v4);
  return OUTLINED_FUNCTION_23_9();
}

uint64_t sub_26A210D64()
{
  v0 = OUTLINED_FUNCTION_18_15();
  v2 = *(v1(v0) + 28);
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_38_10();
  sub_26A2100EC(v3, v4);
  return OUTLINED_FUNCTION_23_9();
}

uint64_t sub_26A210DDC()
{
  v0 = OUTLINED_FUNCTION_18_15();
  v2 = *(v1(v0) + 32);
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_37_9();
  sub_26A2100EC(v3, v4);
  return OUTLINED_FUNCTION_23_9();
}

uint64_t sub_26A210E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_10(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_140_0();
  v13 = type metadata accessor for _ProtoTextProperty(v12);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = OUTLINED_FUNCTION_55_8();
  v18 = *(v5(v17) + 24);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_59_10();
  if (v19)
  {
    return sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
  }

  sub_26A20DEEC();
  OUTLINED_FUNCTION_31_8();
  sub_26A2100EC(v20, v21);
  OUTLINED_FUNCTION_47_7();
  return OUTLINED_FUNCTION_60_7();
}

uint64_t sub_26A210FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_10(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_140_0();
  v13 = type metadata accessor for _ProtoOptionalBool(v12);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = OUTLINED_FUNCTION_55_8();
  v18 = *(v5(v17) + 28);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_59_10();
  if (v19)
  {
    return sub_26A0E48F0(v4, &qword_28036D198, &qword_26A432940);
  }

  sub_26A20DEEC();
  OUTLINED_FUNCTION_38_10();
  sub_26A2100EC(v20, v21);
  OUTLINED_FUNCTION_47_7();
  return OUTLINED_FUNCTION_60_7();
}

uint64_t sub_26A211124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17_10(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_140_0();
  v12 = type metadata accessor for _ProtoActionProperty();
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v16 = OUTLINED_FUNCTION_55_8();
  v17 = *(v5(v16) + 32);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_59_10();
  if (v18)
  {
    return sub_26A0E48F0(v4, &off_28036C7C0, &off_26A427400);
  }

  sub_26A20DEEC();
  OUTLINED_FUNCTION_37_9();
  sub_26A2100EC(v19, v20);
  OUTLINED_FUNCTION_47_7();
  return OUTLINED_FUNCTION_60_7();
}

uint64_t sub_26A21128C(void *a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v104 = a2;
  v96 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v96);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v92 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v93 = v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12(v95);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v97 = v19;
  v100 = type metadata accessor for _ProtoOptionalBool(0);
  v20 = OUTLINED_FUNCTION_12(v100);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v94 = (v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_42();
  v98 = v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FBC8, &unk_26A42EA70);
  OUTLINED_FUNCTION_12(v99);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_42();
  v101 = v33;
  v34 = type metadata accessor for _ProtoTextProperty(0);
  v35 = OUTLINED_FUNCTION_12(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v40 = v39 - v38;
  v41 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v44);
  v46 = &v91 - v45;
  v47 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7D0, &qword_26A426DE0) - 8);
  v48 = *(*v47 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v49);
  v50 = OUTLINED_FUNCTION_4_3();
  v102 = a3(v50);
  v103 = a1;
  v51 = *(v102 + 24);
  v52 = v47[14];
  OUTLINED_FUNCTION_32_2();
  v53 = v104;
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_23(v3);
  if (v54)
  {
    OUTLINED_FUNCTION_23(v3 + v52);
    if (v54)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
      goto LABEL_11;
    }

LABEL_9:
    v55 = &qword_28036C7D0;
    v56 = &qword_26A426DE0;
    v57 = v3;
LABEL_50:
    sub_26A0E48F0(v57, v55, v56);
LABEL_51:
    v73 = 0;
    return v73 & 1;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_23(v3 + v52);
  if (v54)
  {
    sub_26A20ED28();
    goto LABEL_9;
  }

  sub_26A20DEEC();
  v58 = static _ProtoTextProperty.== infix(_:_:)(v46, v40);
  sub_26A20ED28();
  sub_26A20ED28();
  sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_11:
  v59 = *v103 == *v53 && v103[1] == v53[1];
  if (!v59 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_51;
  }

  v60 = v101;
  v61 = v102;
  v62 = *(v102 + 28);
  v63 = *(v99 + 48);
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  v64 = v100;
  OUTLINED_FUNCTION_37(v60, 1, v100);
  if (v54)
  {
    OUTLINED_FUNCTION_37(v60 + v63, 1, v64);
    if (v54)
    {
      sub_26A0E48F0(v60, &qword_28036D198, &qword_26A432940);
      goto LABEL_21;
    }

LABEL_30:
    v55 = &qword_28036FBC8;
    v56 = &unk_26A42EA70;
LABEL_31:
    v57 = v60;
    goto LABEL_50;
  }

  v74 = v98;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v60 + v63, 1, v64);
  if (v75)
  {
    sub_26A20ED28();
    goto LABEL_30;
  }

  v76 = v94;
  sub_26A20DEEC();
  if (*v74 != *v76)
  {
    sub_26A20ED28();
    sub_26A20ED28();
    v55 = &qword_28036D198;
    v56 = &qword_26A432940;
    goto LABEL_31;
  }

  v79 = *(v64 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_11_16();
  sub_26A2100EC(v80, v81);
  LOBYTE(v79) = sub_26A424B64();
  sub_26A20ED28();
  sub_26A20ED28();
  sub_26A0E48F0(v60, &qword_28036D198, &qword_26A432940);
  if ((v79 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_21:
  v65 = *(v61 + 32);
  v66 = *(v95 + 48);
  v67 = v97;
  OUTLINED_FUNCTION_78_3();
  v68 = v67;
  OUTLINED_FUNCTION_78_3();
  v69 = v96;
  OUTLINED_FUNCTION_37(v67, 1, v96);
  if (v54)
  {
    OUTLINED_FUNCTION_37(v67 + v66, 1, v69);
    if (v54)
    {
      sub_26A0E48F0(v67, &off_28036C7C0, &off_26A427400);
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  v77 = v93;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v68 + v66, 1, v69);
  if (v78)
  {
    sub_26A20ED28();
LABEL_37:
    v55 = &qword_28036C7C8;
    v56 = &qword_26A425C00;
LABEL_49:
    v57 = v68;
    goto LABEL_50;
  }

  v82 = v92;
  sub_26A20DEEC();
  v83 = *v77;
  v84 = *v82;
  sub_26A0E36D8();
  if ((v85 & 1) == 0 || (v77[1] == v82[1] ? (v86 = v77[2] == v82[2]) : (v86 = 0), !v86 && (sub_26A425354() & 1) == 0))
  {
    sub_26A20ED28();
    sub_26A20ED28();
    v55 = &off_28036C7C0;
    v56 = &off_26A427400;
    goto LABEL_49;
  }

  v87 = *(v69 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_11_16();
  sub_26A2100EC(v88, v89);
  LOBYTE(v87) = sub_26A424B64();
  sub_26A20ED28();
  sub_26A20ED28();
  sub_26A0E48F0(v68, &off_28036C7C0, &off_26A427400);
  if ((v87 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  v70 = *(v61 + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_11_16();
  sub_26A2100EC(v71, v72);
  v73 = sub_26A424B64();
  return v73 & 1;
}

uint64_t sub_26A211B24(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  v2 = OUTLINED_FUNCTION_125();
  sub_26A2100EC(v2, v3);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A211FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A2100EC(&qword_28036FC78, type metadata accessor for _ProtoStatusIndicator_Cancelled);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A2120BC(uint64_t a1)
{
  v2 = sub_26A2100EC(&qword_28036F7C8, type metadata accessor for _ProtoStatusIndicator_Cancelled);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A212174()
{
  sub_26A2100EC(&qword_28036F7C8, type metadata accessor for _ProtoStatusIndicator_Cancelled);

  return sub_26A4249B4();
}

void sub_26A21221C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26A212298()
{
  sub_26A424794();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_32_10();
    sub_26A21221C(319, v1, v2);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_30_7();
      sub_26A21221C(319, v4, v5);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_39_10();
        sub_26A21221C(319, v7, v8);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v17 = OUTLINED_FUNCTION_179(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
          v12 = a3[8];
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26A424794();
    v9 = OUTLINED_FUNCTION_179(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
      v14 = OUTLINED_FUNCTION_179(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
        v17 = OUTLINED_FUNCTION_179(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[7];
        }

        else
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
          v12 = a4[8];
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_13@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_15_16(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 24);

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_47_7()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_26A424A84();
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_49_12()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_51_8()
{
  *v0 = 0;
  v3 = &v0[*(v1 + 20)];

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_60_7()
{

  return sub_26A20ED28();
}

uint64_t OUTLINED_FUNCTION_69_5()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t UpdatePlayerButton.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26A212A6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6979616C70 && a2 == 0xE700000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A212B30(char a1)
{
  if (a1)
  {
    return 0x646573756170;
  }

  else
  {
    return 0x676E6979616C70;
  }
}

uint64_t sub_26A212B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A212A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A212BA0(uint64_t a1)
{
  v2 = sub_26A212F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A212BDC(uint64_t a1)
{
  v2 = sub_26A212F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A212C1C(uint64_t a1)
{
  v2 = sub_26A212FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A212C58(uint64_t a1)
{
  v2 = sub_26A212FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A212C94(uint64_t a1)
{
  v2 = sub_26A213024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A212CD0(uint64_t a1)
{
  v2 = sub_26A213024();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdatePlayerButton.PlayerState.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FC98, &qword_26A42F0F0);
  v4 = OUTLINED_FUNCTION_24(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCA0, &qword_26A42F0F8);
  v11 = OUTLINED_FUNCTION_24(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCA8, &qword_26A42F100);
  OUTLINED_FUNCTION_24(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26A212F7C();
  sub_26A425594();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_26A212FD0();
    v29 = v32;
    sub_26A4250A4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_26A213024();
    sub_26A4250A4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  OUTLINED_FUNCTION_41_5();
}

unint64_t sub_26A212F7C()
{
  result = qword_28036FCB0;
  if (!qword_28036FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FCB0);
  }

  return result;
}

unint64_t sub_26A212FD0()
{
  result = qword_28036FCB8;
  if (!qword_28036FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FCB8);
  }

  return result;
}

unint64_t sub_26A213024()
{
  result = qword_28036FCC0;
  if (!qword_28036FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FCC0);
  }

  return result;
}

uint64_t UpdatePlayerButton.PlayerState.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

void UpdatePlayerButton.PlayerState.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v54 = v0;
  v2 = v1;
  v51 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCC8, &qword_26A42F108);
  OUTLINED_FUNCTION_24(v53);
  v50 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCD0, &qword_26A42F110);
  OUTLINED_FUNCTION_24(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCD8, &qword_26A42F118);
  OUTLINED_FUNCTION_24(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v23 = v46 - v22;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26A212F7C();
  v25 = v54;
  sub_26A425574();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v10;
  v48 = v16;
  v54 = v2;
  v26 = v53;
  v27 = sub_26A425074();
  v28 = sub_26A156098(v27, 0);
  if (v30 == v31 >> 1)
  {
    v53 = v28;
LABEL_9:
    v41 = sub_26A424F34();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120) + 48);
    *v43 = &type metadata for UpdatePlayerButton.PlayerState;
    sub_26A425004();
    sub_26A424F24();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v17);
    v2 = v54;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_41_5();
    return;
  }

  v46[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_26A156088(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v32)
      {
        sub_26A212FD0();
        v38 = v9;
        OUTLINED_FUNCTION_3_24();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v38, v26);
      }

      else
      {
        sub_26A213024();
        v45 = v48;
        OUTLINED_FUNCTION_3_24();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v40 + 8))(v23, v35);
      *v39 = v32;
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_11;
    }

    v53 = v33;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static UpdatePlayerButton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_26A425354();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_26A2135E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A2136B4(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_26A2136F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2135E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A21371C(uint64_t a1)
{
  v2 = sub_26A213AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A213758(uint64_t a1)
{
  v2 = sub_26A213AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void UpdatePlayerButton.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCE0, &qword_26A42F128);
  OUTLINED_FUNCTION_24(v4);
  v15 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26A213AF8();
  sub_26A425594();
  sub_26A425114();
  if (!v1)
  {
    sub_26A213B4C();
    sub_26A425154();
  }

  (*(v15 + 8))(v10, v4);
  OUTLINED_FUNCTION_41_5();
}

void UpdatePlayerButton.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_40_5();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FCF8, &qword_26A42F130);
  OUTLINED_FUNCTION_24(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v21 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_26A213AF8();
  sub_26A425574();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v22 = sub_26A425034();
    v24 = v23;
    sub_26A213BA0();
    sub_26A425054();
    v25 = OUTLINED_FUNCTION_2_18();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_41_5();
}

unint64_t sub_26A213AF8()
{
  result = qword_28036FCE8;
  if (!qword_28036FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FCE8);
  }

  return result;
}

unint64_t sub_26A213B4C()
{
  result = qword_28036FCF0;
  if (!qword_28036FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FCF0);
  }

  return result;
}

unint64_t sub_26A213BA0()
{
  result = qword_28036FD00;
  if (!qword_28036FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD00);
  }

  return result;
}

unint64_t sub_26A213BF8()
{
  result = qword_28036FD08;
  if (!qword_28036FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD08);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26A213C60(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A213CA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_26A213D10(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A213E10()
{
  result = qword_28036FD10;
  if (!qword_28036FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD10);
  }

  return result;
}

unint64_t sub_26A213E68()
{
  result = qword_28036FD18;
  if (!qword_28036FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD18);
  }

  return result;
}

unint64_t sub_26A213EC0()
{
  result = qword_28036FD20;
  if (!qword_28036FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD20);
  }

  return result;
}

unint64_t sub_26A213F18()
{
  result = qword_28036FD28;
  if (!qword_28036FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD28);
  }

  return result;
}

unint64_t sub_26A213F70()
{
  result = qword_28036FD30;
  if (!qword_28036FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD30);
  }

  return result;
}

unint64_t sub_26A213FC8()
{
  result = qword_28036FD38;
  if (!qword_28036FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD38);
  }

  return result;
}

unint64_t sub_26A214020()
{
  result = qword_28036FD40;
  if (!qword_28036FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD40);
  }

  return result;
}

unint64_t sub_26A214078()
{
  result = qword_28036FD48;
  if (!qword_28036FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD48);
  }

  return result;
}

unint64_t sub_26A2140D0()
{
  result = qword_28036FD50;
  if (!qword_28036FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD50);
  }

  return result;
}

unint64_t sub_26A214128()
{
  result = qword_28036FD58;
  if (!qword_28036FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036FD58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  v2 = *(v0 - 152);

  return sub_26A424FF4();
}

uint64_t SummaryItemLargeText.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for _ProtoTextProperty(0);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v6);
  if (v15)
  {
    *v13 = MEMORY[0x277D84F90];
    *(v13 + 8) = 0;
    v16 = v13 + v7[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v17 = v7[8];
    v18 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    v22 = v7[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    OUTLINED_FUNCTION_15(v6);
    if (!v15)
    {
      sub_26A0E48F0(v6, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A21667C();
  }

  return sub_26A21667C();
}

void sub_26A2143CC()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v35 = v3;
  v4 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_93_0();
  v19 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20));
  v20 = *v2;
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v21 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v21, v22, &unk_26A4273F0);
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
        sub_26A0E48F0(v17, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      sub_26A21667C();
    }

    sub_26A21667C();
    v2 = 0;
  }

  v34 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v35, v2, 1, v34);
  OUTLINED_FUNCTION_75();
}

void SummaryItemLargeText.action.getter()
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
  OUTLINED_FUNCTION_93_0();
  v18 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20));
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
      sub_26A21667C();
    }

    sub_26A21667C();
    v1 = 0;
  }

  v23 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v24, v1, 1, v23);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemLargeText.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemLargeText.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit27_ProtoSummaryItem_LargeTextP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_LargeText.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v180 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v180);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  v174 = (&v164 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v179 = &v164 - v14;
  v178 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v15 = OUTLINED_FUNCTION_12(v178);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v168 = (&v164 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v23 = OUTLINED_FUNCTION_41(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  v177 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  v32 = &v164 - v31;
  v33 = type metadata accessor for _ProtoTextProperty(0);
  v34 = OUTLINED_FUNCTION_12(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  v39 = &v164 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v41 = OUTLINED_FUNCTION_41(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  v46 = &v164 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_3_25();
  sub_26A216AC0();
  v48 = *(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20);
  v181 = v2;
  v182 = v48;
  v49 = *(v2 + v48);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v33);
  sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v46);
    if (v51)
    {
      *v39 = MEMORY[0x277D84F90];
      *(v39 + 4) = 0;
      v52 = &v39[v33[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v53 = v33[8];
      OUTLINED_FUNCTION_92();
      v54 = v180;
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v180);
      v58 = v33[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v54);
      OUTLINED_FUNCTION_17_3(v46);
      v62 = v181;
      v63 = v182;
      if (!v51)
      {
        sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A21667C();
      v62 = v181;
      v63 = v182;
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A2166D0(v39, type metadata accessor for _ProtoTextProperty);
    v64 = *(v62 + v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v62 + v63);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = type metadata accessor for _ProtoSummaryItem_LargeText._StorageClass(0);
      v68 = OUTLINED_FUNCTION_188_0(v67);
      OUTLINED_FUNCTION_24_17(v68, v69, v70, v71, v72, v73, v74, v75, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      *(v62 + v63) = v76;
    }

    sub_26A21667C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v33);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v80 = v178;
  v81 = __swift_getEnumTagSinglePayload(v32, 1, v178);
  sub_26A0E48F0(v32, &qword_28036CAE0, &unk_26A4273F0);
  if (v81 == 1)
  {
    v82 = v180;
    v83 = v181;
    v84 = v182;
  }

  else
  {
    v85 = v167;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v85);
    v83 = v181;
    v84 = v182;
    if (v51)
    {
      v86 = v168;
      *v168 = MEMORY[0x277D84F90];
      *(v86 + 4) = 0;
      v87 = v86 + v80[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v88 = v80[8];
      OUTLINED_FUNCTION_92();
      v82 = v180;
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v180);
      v92 = v80[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v82);
      OUTLINED_FUNCTION_15(v85);
      if (!v51)
      {
        sub_26A0E48F0(v85, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      sub_26A21667C();
      v82 = v180;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_13();
    v96 = *(v83 + v84);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v83 + v84);
    if ((v97 & 1) == 0)
    {
      v99 = type metadata accessor for _ProtoSummaryItem_LargeText._StorageClass(0);
      v100 = OUTLINED_FUNCTION_188_0(v99);
      OUTLINED_FUNCTION_24_17(v100, v101, v102, v103, v104, v105, v106, v107, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      *(v83 + v84) = v108;
    }

    sub_26A21667C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v80);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v112 = v176;
  sub_26A10FD9C();
  v113 = v80;
  v114 = __swift_getEnumTagSinglePayload(v112, 1, v80);
  sub_26A0E48F0(v112, &qword_28036CAE0, &unk_26A4273F0);
  if (v114 != 1)
  {
    v115 = v170;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v115, 1, v113) == 1)
    {
      v116 = v171;
      *v171 = MEMORY[0x277D84F90];
      *(v116 + 4) = 0;
      v117 = v116 + v113[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v118 = v113[8];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v82);
      v122 = v113[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v82);
      if (__swift_getEnumTagSinglePayload(v115, 1, v113) != 1)
      {
        sub_26A0E48F0(v115, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      sub_26A21667C();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_13_13();
    v126 = *(v83 + v84);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v83 + v84);
    if ((v127 & 1) == 0)
    {
      v129 = type metadata accessor for _ProtoSummaryItem_LargeText._StorageClass(0);
      v130 = OUTLINED_FUNCTION_188_0(v129);
      OUTLINED_FUNCTION_24_17(v130, v131, v132, v133, v134, v135, v136, v137, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      *(v83 + v84) = v138;
    }

    sub_26A21667C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v139, v140, v141, v113);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v142 = v179;
  sub_26A10FD9C();
  v143 = __swift_getEnumTagSinglePayload(v142, 1, v82);
  sub_26A0E48F0(v142, &off_28036C7C0, &off_26A427400);
  if (v143 != 1)
  {
    v144 = v173;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v144);
    v145 = v182;
    if (v51)
    {
      v147 = v174;
      *v174 = MEMORY[0x277D84F90];
      v147[1] = 0;
      v147[2] = 0xE000000000000000;
      v146 = v147 + *(v82 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v144);
      v148 = v175;
      if (!v51)
      {
        sub_26A0E48F0(v144, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v147 = v174;
      sub_26A21667C();
      v148 = v175;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v148);
    sub_26A2166D0(v147, type metadata accessor for _ProtoActionProperty);
    v149 = *(v83 + v145);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v151 = *(v83 + v145);
    if ((v150 & 1) == 0)
    {
      v152 = type metadata accessor for _ProtoSummaryItem_LargeText._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v152);
      sub_26A197F38(v151, v153, v154, v155, v156, v157, v158, v159, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
      *(v83 + v145) = v160;
    }

    sub_26A21667C();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v161, v162, v163, v82);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemLargeText.init(text1:text2:text3:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoSummaryItem_LargeText(0);
  OUTLINED_FUNCTION_2_19();
  sub_26A21699C(v8, v9);
  sub_26A4249C4();

  sub_26A0E48F0(a4, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a3, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a2, &qword_28036CB10, &unk_26A426460);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A2154F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = a8;
  v66 = a1;
  v73 = a6;
  v74 = a7;
  v69 = a4;
  v70 = a5;
  v67 = a3;
  v10 = type metadata accessor for ActionProperty();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v59 - v15;
  v71 = type metadata accessor for _ProtoActionProperty();
  v16 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v61 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = &v59 - v19;
  v20 = type metadata accessor for MultilineTextProperty(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v68 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  v28 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v60 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v63 = &v59 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v59 - v34;
  v36 = type metadata accessor for _ProtoTextProperty(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TextProperty(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = a2[3];
  v43 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v42);
  (*(v43 + 8))(v42, v43);
  sub_26A21667C();
  _ProtoSummaryItem_LargeText.text1.setter(v39);
  sub_26A10FD9C();
  v44 = v76;
  if (v76)
  {
    v45 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v45 + 8))(v44, v45);
    sub_26A21667C();
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
    {
      sub_26A21667C();
      v46 = v63;
      sub_26A216AC0();
      _ProtoSummaryItem_LargeText.text2.setter(v46);
      sub_26A2166D0(v35, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v75, &qword_28036CB10, &unk_26A426460);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  }

  sub_26A0E48F0(v27, &qword_28036CAE0, &unk_26A4273F0);
LABEL_6:
  sub_26A10FD9C();
  v47 = v76;
  if (v76)
  {
    v48 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v48 + 8))(v47, v48);
    v49 = v68;
    sub_26A21667C();
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v49, 1, v28) != 1)
    {
      v50 = v60;
      sub_26A21667C();
      v51 = v63;
      sub_26A216AC0();
      _ProtoSummaryItem_LargeText.text3.setter(v51);
      sub_26A2166D0(v50, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v75, &qword_28036CB10, &unk_26A426460);
    v49 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v28);
  }

  sub_26A0E48F0(v49, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v52 = v76;
  if (v76)
  {
    v53 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v53 + 8))(v52, v53);
    v54 = v72;
    sub_26A21667C();
    v55 = v71;
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v71);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v54, 1, v55) != 1)
    {
      v56 = v62;
      sub_26A21667C();
      v57 = v61;
      sub_26A216AC0();
      _ProtoSummaryItem_LargeText.action.setter(v57);
      sub_26A2166D0(v56, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v75, &qword_28036CAF8, &unk_26A426D30);
    v54 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v71);
  }

  sub_26A0E48F0(v54, &off_28036C7C0, &off_26A427400);
LABEL_16:

  result = _ProtoSummaryItem_LargeText.componentName.setter();
  if (a9)
  {

    return _ProtoSummaryItem_LargeText.linkIdentifier.setter();
  }

  return result;
}

uint64_t SummaryItemLargeText.init(text1:text2:text3:action:componentName:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A0E5D68(a1, v14);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_LargeText(0);
  OUTLINED_FUNCTION_2_19();
  sub_26A21699C(v8, v9);
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

void SummaryItemLargeText.init(text1:text2:text3:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v9 = v6;
  sub_26A0E5D68(v6, v17);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A0E5D68(v17, v13);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_LargeText(0);
  OUTLINED_FUNCTION_2_19();
  sub_26A21699C(v7, v8);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v3);
  OUTLINED_FUNCTION_164_0(v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_26A0E48F0(&v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(&v15);
  OUTLINED_FUNCTION_164_0(&v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_26A0E48F0(v10, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemLargeText.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v79 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v78 = &v77 - v18;
  v19 = type metadata accessor for _ProtoTextProperty(0);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v32 = type metadata accessor for SummaryItemLargeText();
  v33 = OUTLINED_FUNCTION_41(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  v38 = &v77 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF38, &unk_26A426AC0);
  OUTLINED_FUNCTION_12(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  v44 = &v77 - v43;
  OUTLINED_FUNCTION_10_22();
  sub_26A216AC0();
  if (v2)
  {
    _ProtoSummaryItem_LargeText.redactedProto.getter();
  }

  else
  {
    sub_26A216AC0();
  }

  sub_26A21667C();
  v44[*(v39 + 32)] = v2 & 1;
  sub_26A2166D0(v38, type metadata accessor for SummaryItemLargeText);
  v45 = MEMORY[0x277D84F90];
  *&v44[*(v39 + 28)] = MEMORY[0x277D84F90];
  v46 = *&v44[*(type metadata accessor for _ProtoSummaryItem_LargeText(0) + 20)];
  OUTLINED_FUNCTION_142();
  v47 = v78;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_17_3(v47);
  if (v48)
  {
    *v25 = v45;
    *(v25 + 8) = 0;
    v49 = v25 + v19[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v50 = v19[8];
    v51 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    v55 = v19[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
    OUTLINED_FUNCTION_17_3(v47);
    if (!v48)
    {
      sub_26A0E48F0(v47, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A21667C();
  }

  sub_26A21667C();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  sub_26A107648();
  sub_26A0E48F0(v31, &qword_28036CB30, &qword_26A426480);
  SummaryItemLargeText.text2.getter();
  sub_26A107620();
  sub_26A0E48F0(v13, &qword_28036CB28, &qword_26A427980);
  SummaryItemLargeText.text3.getter();
  sub_26A107620();
  sub_26A0E48F0(v13, &qword_28036CB28, &qword_26A427980);
  v63 = v79;
  SummaryItemLargeText.action.getter();
  sub_26A10751C();
  sub_26A0E48F0(v63, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7C50(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v65, v66, v67, v68, v77, v78);

  v69 = swift_getKeyPath();
  sub_26A0F85E4(v69, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v70, v71, v72, v73, v77, v78);

  sub_26A0FE440();
  sub_26A0E48F0(v44, &qword_28036CF38, &unk_26A426AC0);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v75;
  result._countAndFlagsBits = v74;
  return result;
}

uint64_t type metadata accessor for SummaryItemLargeText()
{
  result = qword_28036FD60;
  if (!qword_28036FD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A21667C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A2166D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SummaryItemLargeText.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_LargeText(0);
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
  OUTLINED_FUNCTION_3_25();
  sub_26A216AC0();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_17();
  sub_26A21667C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SummaryItemLargeText.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemLargeText();
  *(inited + 64) = &protocol witness table for SummaryItemLargeText;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_10_22();
  sub_26A216AC0();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A21699C(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A21699C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A216A54()
{
  result = type metadata accessor for _ProtoSummaryItem_LargeText(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A216AC0()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_13_13()
{

  return sub_26A2166D0(v0, type metadata accessor for _ProtoMultilineTextProperty);
}

void OUTLINED_FUNCTION_24_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_26A197F38(v20, a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return type metadata accessor for _ProtoSummaryItem_LargeText(0);
}

uint64_t sub_26A216BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A216C78(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = *(v1 + *(type metadata accessor for _ProtoImageElement.BadgedImage(0) + 20));
  v11 = *a1;
  swift_beginAccess();
  sub_26A216BFC(v10 + v11, v6);
  v12 = type metadata accessor for _ProtoImageElement.Source(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = *(v12 + 20);
    if (qword_28157A098 != -1)
    {
      swift_once();
    }

    *&v9[v13] = qword_28157A0A0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v12);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A217384(v6);
    }
  }

  else
  {
    sub_26A2173EC(v6, v9);
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_26A3E29E8();
}

uint64_t ImageElement.BadgedImage.init(image:badge:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement.BadgedImage(0);
  OUTLINED_FUNCTION_0_35();
  sub_26A217958(v4, v5);
  sub_26A4249C4();
  sub_26A21746C(a2);
  return sub_26A21746C(a1);
}

uint64_t sub_26A216ECC()
{
  v0 = type metadata accessor for _ProtoImageElement.Source(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A3E31B8();
  _ProtoImageElement.BadgedImage.image.setter();
  sub_26A3E31B8();
  return _ProtoImageElement.BadgedImage.badge.setter();
}

uint64_t ImageElement.BadgedImage.hash(into:)()
{
  type metadata accessor for _ProtoImageElement.BadgedImage(0);
  OUTLINED_FUNCTION_0_35();
  sub_26A217958(v0, v1);

  return sub_26A424B44();
}

uint64_t ImageElement.BadgedImage.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.BadgedImage(0);
  OUTLINED_FUNCTION_0_35();
  sub_26A217958(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A217078()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.BadgedImage(0);
  sub_26A217958(&qword_28036FD70, type metadata accessor for _ProtoImageElement.BadgedImage);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t static ImageElement.badgedImage(image:badge:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.SourceType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  v12 = *(v5 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26A426410;
  type metadata accessor for ImageElement.BadgedImage();
  v15 = swift_allocBox();
  sub_26A217514(a1, v11);
  sub_26A217514(a2, v8);
  type metadata accessor for _ProtoImageElement.BadgedImage(0);
  v23 = v11;
  v24 = v8;
  OUTLINED_FUNCTION_0_35();
  sub_26A217958(v16, v17);
  sub_26A4249C4();
  sub_26A21746C(v8);
  sub_26A21746C(v11);
  *(v14 + v13) = v15;
  swift_storeEnumTagMultiPayload();
  v18 = sub_26A217578(&unk_287B01AF8);
  v25 = v14;
  type metadata accessor for _ProtoImageElement(0);
  v21 = &v25;
  v22 = v18;
  sub_26A217958(qword_281579A98, type metadata accessor for _ProtoImageElement);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C318();
}

uint64_t sub_26A217384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A2173EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoImageElement.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A217450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26A216ECC();
}

uint64_t sub_26A21746C(uint64_t a1)
{
  v2 = type metadata accessor for ImageElement.SourceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ImageElement.BadgedImage()
{
  result = qword_28157B460;
  if (!qword_28157B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A217514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElement.SourceType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A217578(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF18, &qword_26A426AA0);
  result = sub_26A424ED4();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_34:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = a1 + 32 + 16 * v5;
    v8 = *v7;
    v9 = *(v7 + 8);
    ++v5;
    v10 = *(v3 + 40);
    sub_26A425504();
    sub_26A0E8BF0();
    sub_26A424B44();
    result = sub_26A425554();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = *(*(v3 + 48) + 16 * v12);
      if (v9)
      {
        switch(v8)
        {
          case 1:
            if (v16 == 1)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 2:
            if (v16 == 2)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 3:
            if (v16 == 3)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 4:
            if (v16 == 4)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 5:
            if (v16 == 5)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 6:
            if (v16 == 6)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 7:
            if (v16 == 7)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          case 8:
            if (v16 == 8)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
          default:
            if (!v16)
            {
              goto LABEL_31;
            }

            goto LABEL_12;
        }
      }

      if (v16 == v8)
      {
        goto LABEL_31;
      }

LABEL_12:
      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v17 = *(v3 + 48) + 16 * v12;
    *v17 = v8;
    *(v17 + 8) = v9;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_36;
    }

    *(v3 + 16) = v20;
LABEL_31:
    if (v5 == v4)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_26A217780(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FD80, &unk_26A42F7A0);
  result = sub_26A424ED4();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_26A425504();

    sub_26A424C04();
    result = sub_26A425554();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_26A425354() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26A217958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2179C8()
{
  result = type metadata accessor for _ProtoImageElement.BadgedImage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{

  return type metadata accessor for _ProtoImageElement.BadgedImage(0);
}

uint64_t sub_26A217A84@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    v2 = byte_26A43208E[*result];
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

void sub_26A217AB0(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 > 0x2E)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_26A4320C0[v2];
  }

  *a1 = v3;
  *(a1 + 8) = 1;
}

uint64_t ImageElement.ImageStyle.description.getter()
{
  result = 0x6C6C616D5378;
  switch(*v0)
  {
    case 0:
      return 0x746C7561666564;
    case 1:
      return result;
    case 2:
      return 0x6C6C616D73;
    case 3:
      return 0x6D756964656DLL;
    case 4:
      return 0x316567616D69;
    case 5:
      return 0x326567616D69;
    case 6:
      return 0x41326567616D69;
    case 7:
      return 0x336567616D69;
    case 8:
      return 0x346567616D69;
    case 9:
      return 0x356567616D69;
    case 0xA:
    case 0xD:
      return 0x366567616D69;
    case 0xB:
      return 0x376567616D69;
    case 0xC:
      return 0x386567616D69;
    case 0xE:
      return 0x746469576C6C7566;
    case 0xF:
      return 0x65656C426C6C7566;
    case 0x10:
      return 0x316E6F6349707061;
    case 0x11:
      return 0x326E6F6349707061;
    case 0x12:
      return 0x336E6F6349707061;
    case 0x13:
      return 0x346E6F6349707061;
    case 0x14:
      return 0x356E6F6349707061;
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
      return 0x49746361746E6F63;
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
      return 0x656E6961746E6F63;
    case 0x26:
      v2 = 0x316567616D69;
      goto LABEL_32;
    case 0x27:
      v2 = 0x326567616D69;
      goto LABEL_32;
    case 0x28:
      v2 = 0x336567616D69;
      goto LABEL_32;
    case 0x29:
      v2 = 0x346567616D69;
      goto LABEL_32;
    case 0x2A:
      v2 = 0x356567616D69;
      goto LABEL_32;
    case 0x2B:
      v2 = 0x366567616D69;
      goto LABEL_32;
    case 0x2C:
      v2 = 0x376567616D69;
      goto LABEL_32;
    case 0x2D:
      v2 = 0x386567616D69;
      goto LABEL_32;
    case 0x2E:
      v2 = 0x396567616D69;
LABEL_32:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x57000000000000;
      break;
    default:
      result = 0xD000000000000035;
      break;
  }

  return result;
}

uint64_t sub_26A217EA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6C616D5378 && a2 == 0xE600000000000000;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6C616D73 && a2 == 0xE500000000000000;
      if (v7 || (sub_26A425354() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
        if (v8 || (sub_26A425354() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x316567616D69 && a2 == 0xE600000000000000;
          if (v9 || (sub_26A425354() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x326567616D69 && a2 == 0xE600000000000000;
            if (v10 || (sub_26A425354() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x41326567616D69 && a2 == 0xE700000000000000;
              if (v11 || (sub_26A425354() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x336567616D69 && a2 == 0xE600000000000000;
                if (v12 || (sub_26A425354() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x346567616D69 && a2 == 0xE600000000000000;
                  if (v13 || (sub_26A425354() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x356567616D69 && a2 == 0xE600000000000000;
                    if (v14 || (sub_26A425354() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x366567616D69 && a2 == 0xE600000000000000;
                      if (v15 || (sub_26A425354() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x376567616D69 && a2 == 0xE600000000000000;
                        if (v16 || (sub_26A425354() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x386567616D69 && a2 == 0xE600000000000000;
                          if (v17 || (sub_26A425354() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x396567616D69 && a2 == 0xE600000000000000;
                            if (v18 || (sub_26A425354() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x746469576C6C7566 && a2 == 0xE900000000000068;
                              if (v19 || (sub_26A425354() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x65656C426C6C7566 && a2 == 0xE900000000000064;
                                if (v20 || (sub_26A425354() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x316E6F6349707061 && a2 == 0xE800000000000000;
                                  if (v21 || (sub_26A425354() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x326E6F6349707061 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_26A425354() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x336E6F6349707061 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_26A425354() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x346E6F6349707061 && a2 == 0xE800000000000000;
                                        if (v24 || (sub_26A425354() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x356E6F6349707061 && a2 == 0xE800000000000000;
                                          if (v25 || (sub_26A425354() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x49746361746E6F63 && a2 == 0xED0000316567616DLL;
                                            if (v26 || (sub_26A425354() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x49746361746E6F63 && a2 == 0xED0000326567616DLL;
                                              if (v27 || (sub_26A425354() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x49746361746E6F63 && a2 == 0xED0000336567616DLL;
                                                if (v28 || (sub_26A425354() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x49746361746E6F63 && a2 == 0xED0000346567616DLL;
                                                  if (v29 || (sub_26A425354() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x49746361746E6F63 && a2 == 0xED0000356567616DLL;
                                                    if (v30 || (sub_26A425354() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x6567646162 && a2 == 0xE500000000000000;
                                                      if (v31 || (sub_26A425354() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x316567646162 && a2 == 0xE600000000000000;
                                                        if (v32 || (sub_26A425354() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x326567646162 && a2 == 0xE600000000000000;
                                                          if (v33 || (sub_26A425354() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x656E6961746E6F63 && a2 == 0xEF316567616D4972;
                                                            if (v34 || (sub_26A425354() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x656E6961746E6F63 && a2 == 0xEF326567616D4972;
                                                              if (v35 || (sub_26A425354() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x656E6961746E6F63 && a2 == 0xEF336567616D4972;
                                                                if (v36 || (sub_26A425354() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x656E6961746E6F63 && a2 == 0xEF346567616D4972;
                                                                  if (v37 || (sub_26A425354() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x49746361746E6F63 && a2 == 0xED0000366567616DLL;
                                                                    if (v38 || (sub_26A425354() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x49746361746E6F63 && a2 == 0xED0000376567616DLL;
                                                                      if (v39 || (sub_26A425354() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x49746361746E6F63 && a2 == 0xED0000386567616DLL;
                                                                        if (v40 || (sub_26A425354() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x49746361746E6F63 && a2 == 0xED0000396567616DLL;
                                                                          if (v41 || (sub_26A425354() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x49746361746E6F63 && a2 == 0xEE0041326567616DLL;
                                                                            if (v42 || (sub_26A425354() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x57316567616D69 && a2 == 0xE700000000000000;
                                                                              if (v43 || (sub_26A425354() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0x57326567616D69 && a2 == 0xE700000000000000;
                                                                                if (v44 || (sub_26A425354() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0x57336567616D69 && a2 == 0xE700000000000000;
                                                                                  if (v45 || (sub_26A425354() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0x57346567616D69 && a2 == 0xE700000000000000;
                                                                                    if (v46 || (sub_26A425354() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0x57356567616D69 && a2 == 0xE700000000000000;
                                                                                      if (v47 || (sub_26A425354() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0x57366567616D69 && a2 == 0xE700000000000000;
                                                                                        if (v48 || (sub_26A425354() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0x57376567616D69 && a2 == 0xE700000000000000;
                                                                                          if (v49 || (sub_26A425354() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x57386567616D69 && a2 == 0xE700000000000000;
                                                                                            if (v50 || (sub_26A425354() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else if (a1 == 0x57396567616D69 && a2 == 0xE700000000000000)
                                                                                            {

                                                                                              return 46;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v52 = sub_26A425354();

                                                                                              if (v52)
                                                                                              {
                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                return 47;
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
      }
    }
  }
}

uint64_t sub_26A218B90(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      return 0x6C6C616D5378;
    case 2:
      return 0x6C6C616D73;
    case 3:
      return 0x6D756964656DLL;
    case 4:
      v4 = 1734438249;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
    case 5:
      v5 = 1734438249;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
    case 6:
      return 0x41326567616D69;
    case 7:
      return 0x336567616D69;
    case 8:
      return 0x346567616D69;
    case 9:
      return 0x356567616D69;
    case 10:
      return 0x366567616D69;
    case 11:
      return 0x376567616D69;
    case 12:
      return 0x386567616D69;
    case 13:
      return 0x396567616D69;
    case 14:
      return 0x746469576C6C7566;
    case 15:
      return 0x65656C426C6C7566;
    case 16:
      return 0x316E6F6349707061;
    case 17:
      return 0x326E6F6349707061;
    case 18:
      return 0x336E6F6349707061;
    case 19:
      return 0x346E6F6349707061;
    case 20:
      return 0x356E6F6349707061;
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
      return 0x49746361746E6F63;
    case 26:
      return 0x6567646162;
    case 27:
      v4 = 1734631778;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x316500000000;
    case 28:
      v5 = 1734631778;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x326500000000;
    case 29:
    case 30:
    case 31:
    case 32:
      return 0x656E6961746E6F63;
    case 38:
      v3 = 0x316567616D69;
      goto LABEL_36;
    case 39:
      v3 = 0x326567616D69;
      goto LABEL_36;
    case 40:
      v3 = 0x336567616D69;
      goto LABEL_36;
    case 41:
      v3 = 0x346567616D69;
      goto LABEL_36;
    case 42:
      v3 = 0x356567616D69;
      goto LABEL_36;
    case 43:
      v3 = 0x366567616D69;
      goto LABEL_36;
    case 44:
      v3 = 0x376567616D69;
      goto LABEL_36;
    case 45:
      v3 = 0x386567616D69;
LABEL_36:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x57000000000000;
      break;
    case 46:
      result = 0x57396567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A218F68(uint64_t a1)
{
  v2 = sub_26A21D070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A218FA4(uint64_t a1)
{
  v2 = sub_26A21D070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A218FE0(uint64_t a1)
{
  v2 = sub_26A21D01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21901C(uint64_t a1)
{
  v2 = sub_26A21D01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219058(uint64_t a1)
{
  v2 = sub_26A21CFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219094(uint64_t a1)
{
  v2 = sub_26A21CFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2190D0(uint64_t a1)
{
  v2 = sub_26A21CF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21910C(uint64_t a1)
{
  v2 = sub_26A21CF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219148(uint64_t a1)
{
  v2 = sub_26A21CF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219184(uint64_t a1)
{
  v2 = sub_26A21CF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2191C0(uint64_t a1)
{
  v2 = sub_26A21CCD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2191FC(uint64_t a1)
{
  v2 = sub_26A21CCD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219238(uint64_t a1)
{
  v2 = sub_26A21CC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219274(uint64_t a1)
{
  v2 = sub_26A21CC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2192B0(uint64_t a1)
{
  v2 = sub_26A21CD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2192EC(uint64_t a1)
{
  v2 = sub_26A21CD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A217EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A219358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A218B88();
  *a1 = result;
  return result;
}

uint64_t sub_26A219380(uint64_t a1)
{
  v2 = sub_26A21C644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2193BC(uint64_t a1)
{
  v2 = sub_26A21C644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2193F8(uint64_t a1)
{
  v2 = sub_26A21CECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219434(uint64_t a1)
{
  v2 = sub_26A21CECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219470(uint64_t a1)
{
  v2 = sub_26A21C98C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2194AC(uint64_t a1)
{
  v2 = sub_26A21C98C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2194E8(uint64_t a1)
{
  v2 = sub_26A21CE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219524(uint64_t a1)
{
  v2 = sub_26A21CE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219560(uint64_t a1)
{
  v2 = sub_26A21CE24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21959C(uint64_t a1)
{
  v2 = sub_26A21CE24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2195D8(uint64_t a1)
{
  v2 = sub_26A21CDD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219614(uint64_t a1)
{
  v2 = sub_26A21CDD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219650(uint64_t a1)
{
  v2 = sub_26A21CD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21968C(uint64_t a1)
{
  v2 = sub_26A21CD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2196C8(uint64_t a1)
{
  v2 = sub_26A21CADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219704(uint64_t a1)
{
  v2 = sub_26A21CADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219740(uint64_t a1)
{
  v2 = sub_26A21CA88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21977C(uint64_t a1)
{
  v2 = sub_26A21CA88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2197B8(uint64_t a1)
{
  v2 = sub_26A21CA34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2197F4(uint64_t a1)
{
  v2 = sub_26A21CA34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219830(uint64_t a1)
{
  v2 = sub_26A21C9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21986C(uint64_t a1)
{
  v2 = sub_26A21C9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2198A8(uint64_t a1)
{
  v2 = sub_26A21CC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2198E4(uint64_t a1)
{
  v2 = sub_26A21CC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219920(uint64_t a1)
{
  v2 = sub_26A21CBD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21995C(uint64_t a1)
{
  v2 = sub_26A21CBD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219998(uint64_t a1)
{
  v2 = sub_26A21CB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2199D4(uint64_t a1)
{
  v2 = sub_26A21CB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219A10(uint64_t a1)
{
  v2 = sub_26A21CB30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219A4C(uint64_t a1)
{
  v2 = sub_26A21CB30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219A88(uint64_t a1)
{
  v2 = sub_26A21D5B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219AC4(uint64_t a1)
{
  v2 = sub_26A21D5B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219B00(uint64_t a1)
{
  v2 = sub_26A21D0C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219B3C(uint64_t a1)
{
  v2 = sub_26A21D0C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219B78(uint64_t a1)
{
  v2 = sub_26A21D118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219BB4(uint64_t a1)
{
  v2 = sub_26A21D118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219BF0(uint64_t a1)
{
  v2 = sub_26A21D460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219C2C(uint64_t a1)
{
  v2 = sub_26A21D460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219C68(uint64_t a1)
{
  v2 = sub_26A21C938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219CA4(uint64_t a1)
{
  v2 = sub_26A21C938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219CE0(uint64_t a1)
{
  v2 = sub_26A21D3B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219D1C(uint64_t a1)
{
  v2 = sub_26A21D3B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219D58(uint64_t a1)
{
  v2 = sub_26A21D40C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219D94(uint64_t a1)
{
  v2 = sub_26A21D40C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219DD0(uint64_t a1)
{
  v2 = sub_26A21C8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219E0C(uint64_t a1)
{
  v2 = sub_26A21C8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219E48(uint64_t a1)
{
  v2 = sub_26A21D364();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219E84(uint64_t a1)
{
  v2 = sub_26A21D364();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219EC0(uint64_t a1)
{
  v2 = sub_26A21C890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219EFC(uint64_t a1)
{
  v2 = sub_26A21C890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219F38(uint64_t a1)
{
  v2 = sub_26A21D310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219F74(uint64_t a1)
{
  v2 = sub_26A21D310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A219FB0(uint64_t a1)
{
  v2 = sub_26A21C83C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A219FEC(uint64_t a1)
{
  v2 = sub_26A21C83C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A028(uint64_t a1)
{
  v2 = sub_26A21D2BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A064(uint64_t a1)
{
  v2 = sub_26A21D2BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A0A0(uint64_t a1)
{
  v2 = sub_26A21C7E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A0DC(uint64_t a1)
{
  v2 = sub_26A21C7E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A118(uint64_t a1)
{
  v2 = sub_26A21D268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A154(uint64_t a1)
{
  v2 = sub_26A21D268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A190(uint64_t a1)
{
  v2 = sub_26A21C794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A1CC(uint64_t a1)
{
  v2 = sub_26A21C794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A208(uint64_t a1)
{
  v2 = sub_26A21D214();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A244(uint64_t a1)
{
  v2 = sub_26A21D214();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A280(uint64_t a1)
{
  v2 = sub_26A21C740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A2BC(uint64_t a1)
{
  v2 = sub_26A21C740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A2F8(uint64_t a1)
{
  v2 = sub_26A21D1C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A334(uint64_t a1)
{
  v2 = sub_26A21D1C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A370(uint64_t a1)
{
  v2 = sub_26A21C6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A3AC(uint64_t a1)
{
  v2 = sub_26A21C6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A3E8(uint64_t a1)
{
  v2 = sub_26A21D16C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A424(uint64_t a1)
{
  v2 = sub_26A21D16C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A460(uint64_t a1)
{
  v2 = sub_26A21C698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A49C(uint64_t a1)
{
  v2 = sub_26A21C698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A4D8(uint64_t a1)
{
  v2 = sub_26A21D4B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A514(uint64_t a1)
{
  v2 = sub_26A21D4B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A550(uint64_t a1)
{
  v2 = sub_26A21D508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A58C(uint64_t a1)
{
  v2 = sub_26A21D508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A21A5C8(uint64_t a1)
{
  v2 = sub_26A21D55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A21A604(uint64_t a1)
{
  v2 = sub_26A21D55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageElement.ImageStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FD88, &qword_26A42F7B0);
  v5 = OUTLINED_FUNCTION_24(v4);
  v420 = v6;
  v421 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v419 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FD90, &qword_26A42F7B8);
  v12 = OUTLINED_FUNCTION_24(v11);
  v417 = v13;
  v418 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v416 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FD98, &qword_26A42F7C0);
  v19 = OUTLINED_FUNCTION_24(v18);
  v414 = v20;
  v415 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v413 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDA0, &qword_26A42F7C8);
  v26 = OUTLINED_FUNCTION_24(v25);
  v411 = v27;
  v412 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_42();
  v410 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDA8, &qword_26A42F7D0);
  v33 = OUTLINED_FUNCTION_24(v32);
  v408 = v34;
  v409 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_42();
  v407 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDB0, &qword_26A42F7D8);
  v40 = OUTLINED_FUNCTION_24(v39);
  v405 = v41;
  v406 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_42();
  v404 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDB8, &qword_26A42F7E0);
  OUTLINED_FUNCTION_0_36(v46, &v436);
  v402 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDC0, &qword_26A42F7E8);
  OUTLINED_FUNCTION_0_36(v52, &v433);
  v399 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDC8, &qword_26A42F7F0);
  OUTLINED_FUNCTION_0_36(v58, &v430);
  v396 = v59;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDD0, &qword_26A42F7F8);
  OUTLINED_FUNCTION_0_36(v64, &v426);
  v393 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDD8, &qword_26A42F800);
  OUTLINED_FUNCTION_0_36(v70, &v423);
  v390 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDE0, &qword_26A42F808);
  OUTLINED_FUNCTION_0_36(v76, &v420);
  v387 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDE8, &qword_26A42F810);
  OUTLINED_FUNCTION_0_36(v82, &v417);
  v384 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDF0, &qword_26A42F818);
  OUTLINED_FUNCTION_0_36(v88, &v414);
  v381 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FDF8, &qword_26A42F820);
  OUTLINED_FUNCTION_0_36(v94, &v411);
  v378 = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE00, &qword_26A42F828);
  OUTLINED_FUNCTION_0_36(v100, &v408);
  v375 = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE08, &qword_26A42F830);
  OUTLINED_FUNCTION_0_36(v106, &v405);
  v372 = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE10, &qword_26A42F838);
  OUTLINED_FUNCTION_0_36(v112, &v402);
  v369 = v113;
  v115 = *(v114 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE18, &qword_26A42F840);
  OUTLINED_FUNCTION_0_36(v118, &v399);
  v366 = v119;
  v121 = *(v120 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE20, &qword_26A42F848);
  OUTLINED_FUNCTION_0_36(v124, &v396);
  v363 = v125;
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE28, &qword_26A42F850);
  OUTLINED_FUNCTION_0_36(v130, &v393);
  v360 = v131;
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE30, &qword_26A42F858);
  OUTLINED_FUNCTION_0_36(v136, &v390);
  v357 = v137;
  v139 = *(v138 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE38, &qword_26A42F860);
  OUTLINED_FUNCTION_0_36(v142, &v387);
  v354 = v143;
  v145 = *(v144 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE40, &qword_26A42F868);
  OUTLINED_FUNCTION_0_36(v148, &v384);
  v351 = v149;
  v151 = *(v150 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE48, &qword_26A42F870);
  OUTLINED_FUNCTION_0_36(v154, &v381);
  v348 = v155;
  v157 = *(v156 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v159);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE50, &qword_26A42F878);
  OUTLINED_FUNCTION_0_36(v160, &v378);
  v345 = v161;
  v163 = *(v162 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v165);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE58, &qword_26A42F880);
  OUTLINED_FUNCTION_0_36(v166, &v375);
  v342 = v167;
  v169 = *(v168 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v171);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE60, &qword_26A42F888);
  OUTLINED_FUNCTION_0_36(v172, &v372);
  v339 = v173;
  v175 = *(v174 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v177);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE68, &qword_26A42F890);
  OUTLINED_FUNCTION_0_36(v178, &v369);
  v336 = v179;
  v181 = *(v180 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v183);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE70, &qword_26A42F898);
  OUTLINED_FUNCTION_0_36(v184, &v366);
  v333 = v185;
  v187 = *(v186 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v189);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE78, &qword_26A42F8A0);
  OUTLINED_FUNCTION_0_36(v190, &v363);
  v330 = v191;
  v193 = *(v192 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v195);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE80, &qword_26A42F8A8);
  OUTLINED_FUNCTION_0_36(v196, &v360);
  v327 = v197;
  v199 = *(v198 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v201);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE88, &qword_26A42F8B0);
  OUTLINED_FUNCTION_0_36(v202, &v357);
  v324 = v203;
  v205 = *(v204 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v206);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v207);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE90, &qword_26A42F8B8);
  OUTLINED_FUNCTION_0_36(v208, &v354);
  v321 = v209;
  v211 = *(v210 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v213);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FE98, &qword_26A42F8C0);
  OUTLINED_FUNCTION_0_36(v214, &v351);
  v318 = v215;
  v217 = *(v216 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v219);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEA0, &qword_26A42F8C8);
  OUTLINED_FUNCTION_0_36(v220, &v348);
  v315[31] = v221;
  v223 = *(v222 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v224);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v225);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEA8, &qword_26A42F8D0);
  OUTLINED_FUNCTION_0_36(v226, &v345);
  v315[28] = v227;
  v229 = *(v228 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v230);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v231);
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEB0, &qword_26A42F8D8);
  OUTLINED_FUNCTION_0_36(v232, &v342);
  v315[25] = v233;
  v235 = *(v234 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v237);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEB8, &qword_26A42F8E0);
  OUTLINED_FUNCTION_0_36(v238, &v339);
  v315[22] = v239;
  v241 = *(v240 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v242);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v243);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEC0, &qword_26A42F8E8);
  OUTLINED_FUNCTION_0_36(v244, &v336);
  v315[19] = v245;
  v247 = *(v246 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v248);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v249);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEC8, &qword_26A42F8F0);
  OUTLINED_FUNCTION_0_36(v250, &v333);
  v315[16] = v251;
  v253 = *(v252 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v255);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FED0, &qword_26A42F8F8);
  OUTLINED_FUNCTION_0_36(v256, &v330);
  v315[13] = v257;
  v259 = *(v258 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v261);
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FED8, &qword_26A42F900);
  OUTLINED_FUNCTION_0_36(v262, &v327);
  v315[10] = v263;
  v265 = *(v264 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v267);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEE0, &qword_26A42F908);
  OUTLINED_FUNCTION_0_36(v268, &v324);
  v315[7] = v269;
  v271 = *(v270 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v273);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEE8, &qword_26A42F910);
  OUTLINED_FUNCTION_0_36(v274, &v321);
  v315[4] = v275;
  v277 = *(v276 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v279);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEF0, &qword_26A42F918);
  OUTLINED_FUNCTION_0_36(v280, &v318);
  v315[1] = v281;
  v283 = *(v282 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v284);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FEF8, &qword_26A42F920);
  OUTLINED_FUNCTION_24(v285);
  v315[0] = v286;
  v288 = *(v287 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v289);
  v291 = v315 - v290;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FF00, &qword_26A42F928);
  OUTLINED_FUNCTION_24(v423);
  v293 = v292;
  v295 = *(v294 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v296);
  v298 = v315 - v297;
  v299 = *v2;
  v300 = a1[4];
  v301 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A21C644();
  v422 = v298;
  sub_26A425594();
  v302 = (v293 + 8);
  switch(v299)
  {
    case 1:
      v428 = 1;
      sub_26A21D55C();
      v310 = v422;
      v311 = v423;
      sub_26A4250A4();
      v312 = OUTLINED_FUNCTION_4_25(v317);
      v313(v312, v315[2]);
      return (*v302)(v310, v311);
    case 2:
      v428 = 2;
      sub_26A21D508();
      OUTLINED_FUNCTION_2_20(v319);
      v304 = OUTLINED_FUNCTION_4_25(v320);
      v309 = &v321;
      goto LABEL_48;
    case 3:
      v428 = 3;
      sub_26A21D4B4();
      OUTLINED_FUNCTION_2_20(v322);
      v304 = OUTLINED_FUNCTION_4_25(v323);
      v309 = &v324;
      goto LABEL_48;
    case 4:
      v428 = 4;
      sub_26A21D460();
      OUTLINED_FUNCTION_2_20(v325);
      v304 = OUTLINED_FUNCTION_4_25(v326);
      v309 = &v327;
      goto LABEL_48;
    case 5:
      v428 = 5;
      sub_26A21D40C();
      OUTLINED_FUNCTION_2_20(v328);
      v304 = OUTLINED_FUNCTION_4_25(v329);
      v309 = &v330;
      goto LABEL_48;
    case 6:
      v428 = 6;
      sub_26A21D3B8();
      OUTLINED_FUNCTION_2_20(v331);
      v304 = OUTLINED_FUNCTION_4_25(v332);
      v309 = &v333;
      goto LABEL_48;
    case 7:
      v428 = 7;
      sub_26A21D364();
      OUTLINED_FUNCTION_2_20(v334);
      v304 = OUTLINED_FUNCTION_4_25(v335);
      v309 = &v336;
      goto LABEL_48;
    case 8:
      v428 = 8;
      sub_26A21D310();
      OUTLINED_FUNCTION_2_20(v337);
      v304 = OUTLINED_FUNCTION_4_25(v338);
      v309 = &v339;
      goto LABEL_48;
    case 9:
      v428 = 9;
      sub_26A21D2BC();
      OUTLINED_FUNCTION_2_20(v340);
      v304 = OUTLINED_FUNCTION_4_25(v341);
      v309 = &v342;
      goto LABEL_48;
    case 10:
      v428 = 10;
      sub_26A21D268();
      OUTLINED_FUNCTION_2_20(v343);
      v304 = OUTLINED_FUNCTION_4_25(v344);
      v309 = &v345;
      goto LABEL_48;
    case 11:
      v428 = 11;
      sub_26A21D214();
      OUTLINED_FUNCTION_2_20(v346);
      v304 = OUTLINED_FUNCTION_4_25(v347);
      v309 = &v348;
      goto LABEL_48;
    case 12:
      v428 = 12;
      sub_26A21D1C0();
      OUTLINED_FUNCTION_2_20(v349);
      v304 = OUTLINED_FUNCTION_4_25(v350);
      v309 = &v351;
      goto LABEL_48;
    case 13:
      v428 = 13;
      sub_26A21D16C();
      OUTLINED_FUNCTION_2_20(v352);
      v304 = OUTLINED_FUNCTION_4_25(v353);
      v309 = &v354;
      goto LABEL_48;
    case 14:
      v428 = 14;
      sub_26A21D118();
      OUTLINED_FUNCTION_2_20(v355);
      v304 = OUTLINED_FUNCTION_4_25(v356);
      v309 = &v357;
      goto LABEL_48;
    case 15:
      v428 = 15;
      sub_26A21D0C4();
      OUTLINED_FUNCTION_2_20(v358);
      v304 = OUTLINED_FUNCTION_4_25(v359);
      v309 = &v360;
      goto LABEL_48;
    case 16:
      v428 = 16;
      sub_26A21D070();
      OUTLINED_FUNCTION_2_20(v361);
      v304 = OUTLINED_FUNCTION_4_25(v362);
      v309 = &v363;
      goto LABEL_48;
    case 17:
      v428 = 17;
      sub_26A21D01C();
      OUTLINED_FUNCTION_2_20(v364);
      v304 = OUTLINED_FUNCTION_4_25(v365);
      v309 = &v366;
      goto LABEL_48;
    case 18:
      v428 = 18;
      sub_26A21CFC8();
      OUTLINED_FUNCTION_2_20(v367);
      v304 = OUTLINED_FUNCTION_4_25(v368);
      v309 = &v369;
      goto LABEL_48;
    case 19:
      v428 = 19;
      sub_26A21CF74();
      OUTLINED_FUNCTION_2_20(v370);
      v304 = OUTLINED_FUNCTION_4_25(v371);
      v309 = &v372;
      goto LABEL_48;
    case 20:
      v428 = 20;
      sub_26A21CF20();
      OUTLINED_FUNCTION_2_20(v373);
      v304 = OUTLINED_FUNCTION_4_25(v374);
      v309 = &v375;
      goto LABEL_48;
    case 21:
      v428 = 21;
      sub_26A21CECC();
      OUTLINED_FUNCTION_2_20(v376);
      v304 = OUTLINED_FUNCTION_4_25(v377);
      v309 = &v378;
      goto LABEL_48;
    case 22:
      v428 = 22;
      sub_26A21CE78();
      OUTLINED_FUNCTION_2_20(v379);
      v304 = OUTLINED_FUNCTION_4_25(v380);
      v309 = &v381;
      goto LABEL_48;
    case 23:
      v428 = 23;
      sub_26A21CE24();
      OUTLINED_FUNCTION_2_20(v382);
      v304 = OUTLINED_FUNCTION_4_25(v383);
      v309 = &v384;
      goto LABEL_48;
    case 24:
      v428 = 24;
      sub_26A21CDD0();
      OUTLINED_FUNCTION_2_20(v385);
      v304 = OUTLINED_FUNCTION_4_25(v386);
      v309 = &v387;
      goto LABEL_48;
    case 25:
      v428 = 25;
      sub_26A21CD7C();
      OUTLINED_FUNCTION_2_20(v388);
      v304 = OUTLINED_FUNCTION_4_25(v389);
      v309 = &v390;
      goto LABEL_48;
    case 26:
      v428 = 26;
      sub_26A21CD28();
      OUTLINED_FUNCTION_2_20(v391);
      v304 = OUTLINED_FUNCTION_4_25(v392);
      v309 = &v393;
      goto LABEL_48;
    case 27:
      v428 = 27;
      sub_26A21CCD4();
      OUTLINED_FUNCTION_2_20(v394);
      v304 = OUTLINED_FUNCTION_4_25(v395);
      v309 = &v396;
      goto LABEL_48;
    case 28:
      v428 = 28;
      sub_26A21CC80();
      OUTLINED_FUNCTION_2_20(v397);
      v304 = OUTLINED_FUNCTION_4_25(v398);
      v309 = &v399;
      goto LABEL_48;
    case 29:
      v428 = 29;
      sub_26A21CC2C();
      OUTLINED_FUNCTION_2_20(v400);
      v304 = OUTLINED_FUNCTION_4_25(v401);
      v309 = &v402;
      goto LABEL_48;
    case 30:
      v428 = 30;
      sub_26A21CBD8();
      OUTLINED_FUNCTION_2_20(v403);
      v304 = OUTLINED_FUNCTION_4_25(&v404);
      v309 = &v405;
      goto LABEL_48;
    case 31:
      v428 = 31;
      sub_26A21CB84();
      OUTLINED_FUNCTION_2_20(&v406);
      v304 = OUTLINED_FUNCTION_4_25(&v407);
      v309 = &v408;
      goto LABEL_48;
    case 32:
      v428 = 32;
      sub_26A21CB30();
      OUTLINED_FUNCTION_2_20(&v409);
      v304 = OUTLINED_FUNCTION_4_25(&v410);
      v309 = &v411;
      goto LABEL_48;
    case 33:
      v428 = 33;
      sub_26A21CADC();
      OUTLINED_FUNCTION_2_20(&v412);
      v304 = OUTLINED_FUNCTION_4_25(&v413);
      v309 = &v414;
      goto LABEL_48;
    case 34:
      v428 = 34;
      sub_26A21CA88();
      OUTLINED_FUNCTION_2_20(&v415);
      v304 = OUTLINED_FUNCTION_4_25(&v416);
      v309 = &v417;
      goto LABEL_48;
    case 35:
      v428 = 35;
      sub_26A21CA34();
      OUTLINED_FUNCTION_2_20(&v418);
      v304 = OUTLINED_FUNCTION_4_25(&v419);
      v309 = &v420;
      goto LABEL_48;
    case 36:
      v428 = 36;
      sub_26A21C9E0();
      OUTLINED_FUNCTION_2_20(&v421);
      v304 = OUTLINED_FUNCTION_4_25(&v422);
      v309 = &v423;
      goto LABEL_48;
    case 37:
      v428 = 37;
      sub_26A21C98C();
      OUTLINED_FUNCTION_2_20(&v424);
      v304 = OUTLINED_FUNCTION_4_25(v425);
      v309 = &v426;
      goto LABEL_48;
    case 38:
      v428 = 38;
      sub_26A21C938();
      OUTLINED_FUNCTION_2_20(v427);
      v304 = OUTLINED_FUNCTION_4_25(&v429);
      v309 = &v430;
      goto LABEL_48;
    case 39:
      v428 = 39;
      sub_26A21C8E4();
      OUTLINED_FUNCTION_2_20(&v431);
      v304 = OUTLINED_FUNCTION_4_25(&v432);
      v309 = &v433;
      goto LABEL_48;
    case 40:
      v428 = 40;
      sub_26A21C890();
      OUTLINED_FUNCTION_2_20(&v434);
      v304 = OUTLINED_FUNCTION_4_25(&v435);
      v309 = &v436;
LABEL_48:
      v305 = *(v309 - 32);
      goto LABEL_49;
    case 41:
      v428 = 41;
      sub_26A21C83C();
      v306 = v404;
      OUTLINED_FUNCTION_6_12();
      v308 = v405;
      v307 = v406;
      goto LABEL_53;
    case 42:
      v428 = 42;
      sub_26A21C7E8();
      v306 = v407;
      OUTLINED_FUNCTION_6_12();
      v308 = v408;
      v307 = v409;
      goto LABEL_53;
    case 43:
      v428 = 43;
      sub_26A21C794();
      v306 = v410;
      OUTLINED_FUNCTION_6_12();
      v308 = v411;
      v307 = v412;
      goto LABEL_53;
    case 44:
      v428 = 44;
      sub_26A21C740();
      v306 = v413;
      OUTLINED_FUNCTION_6_12();
      v308 = v414;
      v307 = v415;
      goto LABEL_53;
    case 45:
      v428 = 45;
      sub_26A21C6EC();
      v306 = v416;
      OUTLINED_FUNCTION_6_12();
      v308 = v417;
      v307 = v418;
      goto LABEL_53;
    case 46:
      v428 = 46;
      sub_26A21C698();
      v306 = v419;
      OUTLINED_FUNCTION_6_12();
      v308 = v420;
      v307 = v421;
LABEL_53:
      (*(v308 + 8))(v306, v307);
      break;
    default:
      v428 = 0;
      sub_26A21D5B0();
      v301 = v422;
      v298 = v423;
      sub_26A4250A4();
      OUTLINED_FUNCTION_9_17(v316);
      v304 = v291;
      v305 = v285;
LABEL_49:
      v303(v304, v305);
      break;
  }

  return (*v302)(v301, v298);
}