uint64_t _ProtoImageElement.Source.appIcon.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_4(v8);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v9 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_2_24(v9);
  if (v10)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_125();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_44();
      return sub_26A2356C8();
    }

    sub_26A23838C();
  }

  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v13 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  return OUTLINED_FUNCTION_226_1(v13);
}

uint64_t _ProtoImageElement.AppIcon.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_177_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  return OUTLINED_FUNCTION_226_1(v2);
}

void _ProtoImageElement.Source.appIcon.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoImageElement.AppIcon(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_164_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_17_12(v14);
  if (v15)
  {
    sub_26A13440C();
LABEL_7:
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    *(v13 + 24) = 1;
    v17 = v13 + *(v9 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_157();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_26A23838C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A2356C8();
LABEL_8:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Source.contact.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_4(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v7 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_2_24(v7);
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_125();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_44();
      return sub_26A2356C8();
    }

    sub_26A23838C();
  }

  type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = type metadata accessor for _ProtoImageElement.Contact(0);
  v16 = OUTLINED_FUNCTION_194_1(v15);
  *v17 = 0;
  *(v17 + 8) = 1;
  return OUTLINED_FUNCTION_226_1(v16);
}

uint64_t _ProtoImageElement.Contact.init()()
{
  v0 = OUTLINED_FUNCTION_26_13();
  type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(v0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for _ProtoImageElement.Contact(0);
  v6 = OUTLINED_FUNCTION_194_1(v5);
  *v7 = 0;
  *(v7 + 8) = 1;
  return OUTLINED_FUNCTION_226_1(v6);
}

void _ProtoImageElement.Source.contact.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoImageElement.Contact(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_164_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_17_12(v14);
  if (v15)
  {
    sub_26A13440C();
LABEL_7:
    type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = &v13[*(v9 + 20)];
    *v21 = 0;
    v21[8] = 1;
    v22 = &v13[*(v9 + 24)];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_157();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_26A23838C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A2356C8();
LABEL_8:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Source.badgedImage.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_72_4(v8);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v9 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_2_24(v9);
  if (v10)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_125();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_44();
      return sub_26A2356C8();
    }

    sub_26A23838C();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v13 = *(type metadata accessor for _ProtoImageElement.BadgedImage(0) + 20);
  if (qword_28157A8E8 != -1)
  {
    OUTLINED_FUNCTION_170_2();
  }

  *(v1 + v13) = qword_28157A8F0;
}

void sub_26A239F90()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = *(type metadata accessor for _ProtoImageElement.Source(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    sub_26A244A48();
    *(v1 + v7) = v12;
  }

  sub_26A2356C8();
  v13 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v14 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

void _ProtoImageElement.Source.badgedImage.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoImageElement.BadgedImage(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_164_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  v14 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_17_12(v14);
  if (v15)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_12_2();
      sub_26A2356C8();
      goto LABEL_10;
    }

    sub_26A23838C();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v17 = *(v9 + 20);
  if (qword_28157A8E8 != -1)
  {
    OUTLINED_FUNCTION_170_2();
  }

  *&v13[v17] = qword_28157A8F0;

LABEL_10:
  OUTLINED_FUNCTION_75();
}

void static _ProtoImageElement.Source.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v76 = v0;
  v77 = v1;
  v72 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  v2 = OUTLINED_FUNCTION_12(v72);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v73 = v5;
  v6 = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for _ProtoImageElement.Contact(v6);
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v70 = v11;
  v12 = OUTLINED_FUNCTION_45();
  v13 = type metadata accessor for _ProtoImageElement.AppIcon(v12);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v69 = v17;
  v18 = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for _ProtoImageElement.Symbol(v18);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v68 = v23;
  v24 = OUTLINED_FUNCTION_45();
  v67 = type metadata accessor for _ProtoImageElement.Url(v24);
  v25 = OUTLINED_FUNCTION_12(v67);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_11();
  v71 = v28;
  v29 = OUTLINED_FUNCTION_45();
  v30 = type metadata accessor for _ProtoImageElement.Bundle(v29);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_11();
  v66 = v34;
  v35 = OUTLINED_FUNCTION_45();
  v36 = type metadata accessor for _ProtoImageElement.DataMessage(v35);
  v37 = OUTLINED_FUNCTION_41(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v40 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v41 = OUTLINED_FUNCTION_12(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8();
  v75 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_1();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = (&v66 - v48);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  v74 = v51;
  OUTLINED_FUNCTION_40();
  v53 = MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_206_1();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370910, &qword_26A432978);
  OUTLINED_FUNCTION_41(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_62_3();
  v59 = *(v58 + 56);
  sub_26A24EE0C();
  sub_26A24EE0C();
  OUTLINED_FUNCTION_175();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_133();
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1() != 1)
      {
        goto LABEL_21;
      }

      sub_26A2356C8();
      OUTLINED_FUNCTION_115();
      static _ProtoImageElement.Bundle.== infix(_:_:)();
      sub_26A23838C();
      goto LABEL_23;
    case 2u:
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1() != 2)
      {
        goto LABEL_21;
      }

      sub_26A2356C8();
      OUTLINED_FUNCTION_230_1(v67);
      if (v60)
      {
        goto LABEL_19;
      }

      v61 = OUTLINED_FUNCTION_21_3();
      v63 = sub_26A251BDC(v61, v62);

      if (v63)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    case 3u:
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1() != 3)
      {
        goto LABEL_21;
      }

      sub_26A2356C8();
      static _ProtoImageElement.Symbol.== infix(_:_:)();
      sub_26A23838C();
      goto LABEL_23;
    case 4u:
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1() != 4)
      {
        goto LABEL_21;
      }

      sub_26A2356C8();
      static _ProtoImageElement.AppIcon.== infix(_:_:)(v49);
      sub_26A23838C();
      goto LABEL_23;
    case 5u:
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1() != 5)
      {
        goto LABEL_21;
      }

      sub_26A2356C8();
      OUTLINED_FUNCTION_12_2();
      static _ProtoImageElement.Contact.== infix(_:_:)();
      sub_26A23838C();
      goto LABEL_23;
    case 6u:
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1() != 6)
      {
        goto LABEL_21;
      }

      sub_26A2356C8();
      OUTLINED_FUNCTION_230_1(v72);
      if (v60 || (, , OUTLINED_FUNCTION_21_3(), sub_26A2498D0(), v65 = v64, , , (v65 & 1) != 0))
      {
LABEL_19:
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_126();
        sub_26A424B64();
      }

LABEL_20:
      sub_26A23838C();
      sub_26A23838C();
      OUTLINED_FUNCTION_71_4();
      break;
    default:
      sub_26A24EE0C();
      if (OUTLINED_FUNCTION_222_1())
      {
LABEL_21:
        sub_26A23838C();
        sub_26A13440C();
      }

      else
      {
        sub_26A2356C8();
        static _ProtoImageElement.DataMessage.== infix(_:_:)();
        sub_26A23838C();
LABEL_23:
        sub_26A23838C();
        OUTLINED_FUNCTION_71_4();
      }

      break;
  }

  OUTLINED_FUNCTION_75();
}

void static _ProtoImageElement.Bundle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v7 = OUTLINED_FUNCTION_98_2();
  v75 = type metadata accessor for _ProtoOptionalBool(v7);
  v8 = OUTLINED_FUNCTION_12(v75);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  v72 = v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FBC8, &unk_26A42EA70);
  v18 = OUTLINED_FUNCTION_12(v74);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  v73 = v25;
  v26 = OUTLINED_FUNCTION_45();
  v27 = type metadata accessor for _ProtoImageElement.AspectRatio(v26);
  v28 = OUTLINED_FUNCTION_12(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  OUTLINED_FUNCTION_41(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_141_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803708F8, &qword_26A432948);
  OUTLINED_FUNCTION_12(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_131_3();
  v39 = *v1;
  v40 = v1[1];
  OUTLINED_FUNCTION_235_1();
  v43 = v43 && v41 == v42;
  if (!v43 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_51;
  }

  v44 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v44 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_51;
  }

  v70 = v2;
  v71 = v23;
  v45 = *(v1 + 40);
  v46 = *(v0 + 32);
  v47 = *(v0 + 40);
  OUTLINED_FUNCTION_107_3(v1[4]);
  if (!v43)
  {
    goto LABEL_51;
  }

  v68 = v6;
  v69 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v48 = v69[10];
  v49 = *(v35 + 48);
  OUTLINED_FUNCTION_182_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_17_3(v4);
  if (v43)
  {
    OUTLINED_FUNCTION_17_3(v4 + v49);
    if (!v43)
    {
      goto LABEL_50;
    }
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_17_3(v4 + v49);
    if (v59)
    {
      goto LABEL_49;
    }

    sub_26A2356C8();
    if (*v3 != *v5 || v3[1] != v5[1])
    {
      sub_26A23838C();
      goto LABEL_49;
    }

    v60 = *(v27 + 24);
    sub_26A424794();
    OUTLINED_FUNCTION_0_38();
    sub_26A252D48();
    v61 = OUTLINED_FUNCTION_250_1();
    OUTLINED_FUNCTION_24_19();
    sub_26A23838C();
    if ((v61 & 1) == 0)
    {
LABEL_49:
      sub_26A23838C();
LABEL_50:
      sub_26A13440C();
LABEL_51:
      v58 = 0;
      goto LABEL_52;
    }

    sub_26A23838C();
  }

  sub_26A13440C();
  v50 = v1[6] == *(v0 + 48) && v1[7] == *(v0 + 56);
  if (!v50 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_51;
  }

  v51 = v69[11];
  v52 = *(v74 + 48);
  OUTLINED_FUNCTION_187_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_37(v73, 1, v75);
  if (v43)
  {
    OUTLINED_FUNCTION_3_6(v73 + v52);
    v53 = v68;
    if (!v43)
    {
      goto LABEL_50;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_3_6(v73 + v52);
    if (v62)
    {
      goto LABEL_49;
    }

    sub_26A2356C8();
    v63 = *v72;
    OUTLINED_FUNCTION_231_1();
    if (!v64)
    {
      sub_26A23838C();
      OUTLINED_FUNCTION_246();
      sub_26A23838C();
      goto LABEL_50;
    }

    v66 = OUTLINED_FUNCTION_256_1();
    OUTLINED_FUNCTION_0_38();
    sub_26A252D48();
    sub_26A424B64();
    OUTLINED_FUNCTION_12_15();
    sub_26A23838C();
    v53 = v68;
    sub_26A23838C();
    sub_26A13440C();
    if ((v66 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v54 = v69[12];
  v55 = *(v74 + 48);
  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_3_6(v71);
  if (v43)
  {
    OUTLINED_FUNCTION_3_6(v71 + v55);
    if (!v43)
    {
      goto LABEL_50;
    }

    sub_26A13440C();
    goto LABEL_32;
  }

  sub_26A1E05A8();
  OUTLINED_FUNCTION_3_6(v71 + v55);
  if (v65)
  {
    goto LABEL_49;
  }

  sub_26A2356C8();
  if (*v70 != *v53)
  {
    sub_26A23838C();
    OUTLINED_FUNCTION_37_0();
    sub_26A23838C();
    goto LABEL_50;
  }

  v67 = OUTLINED_FUNCTION_256_1();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_12_15();
  sub_26A23838C();
  sub_26A23838C();
  sub_26A13440C();
  if ((v67 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_32:
  v56 = v1[8] == *(v0 + 64) && v1[9] == *(v0 + 72);
  if (!v56 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_51;
  }

  v57 = v69[9];
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  v58 = OUTLINED_FUNCTION_46_3();
LABEL_52:
  OUTLINED_FUNCTION_214_1(v58);
  OUTLINED_FUNCTION_75();
}

uint64_t static _ProtoImageElement.AppIcon.== infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  OUTLINED_FUNCTION_235_1();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_172_1();
  v7 = _ProtoImageElement.ImageStyle.rawValue.getter();
  if (v7 != _ProtoImageElement.ImageStyle.rawValue.getter())
  {
    return 0;
  }

  v8 = *(type metadata accessor for _ProtoImageElement.AppIcon(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  return OUTLINED_FUNCTION_46_3() & 1;
}

void static _ProtoImageElement.Contact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = OUTLINED_FUNCTION_98_2();
  v4 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(v3);
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370918, &qword_26A432988);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59_7();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_111_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v2, 1, v4);
  if (v20)
  {
    OUTLINED_FUNCTION_37(v2 + v19, 1, v4);
    if (v20)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_9:
    sub_26A13440C();
LABEL_13:
    v30 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_37(v2 + v19, 1, v4);
  if (v20)
  {
    sub_26A23838C();
    goto LABEL_9;
  }

  sub_26A2356C8();
  OUTLINED_FUNCTION_37_5();
  static _ProtoImageElement.Contact.OneOf_Content.== infix(_:_:)();
  v22 = v21;
  sub_26A23838C();
  sub_26A23838C();
  sub_26A13440C();
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = type metadata accessor for _ProtoImageElement.Contact(0);
  v24 = *(v23 + 20);
  v25 = *(v1 + v24);
  v26 = *(v1 + v24 + 8);
  v27 = (v0 + v24);
  v31 = *v27;
  v32 = *(v27 + 8);
  v28 = _ProtoImageElement.ImageStyle.rawValue.getter();
  if (v28 != _ProtoImageElement.ImageStyle.rawValue.getter())
  {
    goto LABEL_13;
  }

  v29 = *(v23 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  v30 = OUTLINED_FUNCTION_46_3();
LABEL_14:
  OUTLINED_FUNCTION_214_1(v30);
  OUTLINED_FUNCTION_75();
}

void _ProtoImageElement.BadgedImage.image.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_54_3(v7);
  v9 = type metadata accessor for _ProtoImageElement.Source(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  v14 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  OUTLINED_FUNCTION_97_0(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_167_0();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = *(v9 + 20);
    if (qword_28157A098 != -1)
    {
      OUTLINED_FUNCTION_74_6();
    }

    *&v13[v16] = qword_28157A0A0[0];
    v17 = OUTLINED_FUNCTION_72();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.BadgedImage.hasImage.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoImageElement.BadgedImage(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_108_2();
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  OUTLINED_FUNCTION_9_20(v8);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoImageElement.BadgedImage.clearImage()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoImageElement.BadgedImage(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoImageElement.BadgedImage._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    v11 = sub_26A248E4C();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoImageElement.Source(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
}

void _ProtoImageElement.BadgedImage.badge.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_54_3(v7);
  v9 = type metadata accessor for _ProtoImageElement.Source(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  v14 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  OUTLINED_FUNCTION_97_0(v14);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_167_0();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v16 = *(v9 + 20);
    if (qword_28157A098 != -1)
    {
      OUTLINED_FUNCTION_74_6();
    }

    *&v13[v16] = qword_28157A0A0[0];
    v17 = OUTLINED_FUNCTION_72();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.BadgedImage.hasBadge.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for _ProtoImageElement.BadgedImage(v6);
  OUTLINED_FUNCTION_97_0(v7);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_108_2();
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  OUTLINED_FUNCTION_9_20(v8);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoImageElement.BadgedImage.clearBadge()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoImageElement.BadgedImage(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for _ProtoImageElement.BadgedImage._StorageClass(0);
    OUTLINED_FUNCTION_100_0(v10);
    swift_allocObject();
    OUTLINED_FUNCTION_5_3();
    v11 = sub_26A248E4C();
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoImageElement.Source(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
}

uint64_t _ProtoImageElement.Contact.monogram.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_117_1();
  sub_26A1E05A8();
  type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_23(v1);
  if (v9)
  {
    sub_26A13440C();
LABEL_6:
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v11 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
    OUTLINED_FUNCTION_194_1(v11);
    return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  }

  OUTLINED_FUNCTION_21_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_26A23838C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_246();
  return sub_26A2356C8();
}

uint64_t _ProtoImageElement.Contact.Monogram.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_177_1(a1);
  v1 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  OUTLINED_FUNCTION_194_1(v1);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoImageElement.Contact.monogram.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoImageElement.Contact.Monogram(v7);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  v0[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[3] = v11;
  OUTLINED_FUNCTION_111_2();
  v0[4] = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_4_11();
  if (v12)
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
      sub_26A2356C8();
      goto LABEL_8;
    }

    sub_26A23838C();
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v14 = v11 + *(v8 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoImageElement.Contact.avatar.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_117_1();
  sub_26A1E05A8();
  type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_23(v1);
  if (v9)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A2356C8();
    }

    sub_26A23838C();
  }

  *a1 = MEMORY[0x277D84F90];
  v12 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  OUTLINED_FUNCTION_194_1(v12);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A23C2F8()
{
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A2356C8();
  v1 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t _ProtoImageElement.Contact.Avatar.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  OUTLINED_FUNCTION_194_1(v1);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void _ProtoImageElement.Contact.avatar.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoImageElement.Contact.Avatar(v7);
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  v0[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[3] = v11;
  OUTLINED_FUNCTION_111_2();
  v0[4] = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  OUTLINED_FUNCTION_4_11();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    *v11 = MEMORY[0x277D84F90];
    v14 = v11 + *(v8 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A23838C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A2356C8();
LABEL_8:
  OUTLINED_FUNCTION_67_1();
}

void sub_26A23C574()
{
  OUTLINED_FUNCTION_76();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_125();
    sub_26A24EE0C();
    sub_26A13440C();
    sub_26A2356C8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_249_1();
    sub_26A23838C();
  }

  else
  {
    v7 = **v0;
    sub_26A13440C();
    sub_26A2356C8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_249_1();
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_75();

  free(v8);
}

uint64_t _ProtoImageElement.Contact.imageStyle.getter()
{
  v2 = OUTLINED_FUNCTION_26_13();
  result = type metadata accessor for _ProtoImageElement.Contact(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t _ProtoImageElement.Contact.imageStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for _ProtoImageElement.Contact(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t _ProtoImageElement.Contact.imageStyle.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.Contact(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t sub_26A23C754()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v2 = *(v1(v0) + 24);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_57_5();

  return v7(v6);
}

uint64_t sub_26A23C7DC()
{
  v0 = OUTLINED_FUNCTION_110();
  v2 = *(v1(v0) + 24);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_219_0();

  return v7(v6);
}

uint64_t _ProtoImageElement.Contact.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.Contact(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

void static _ProtoImageElement.Contact.OneOf_Content.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v29 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  v1 = OUTLINED_FUNCTION_12(v29);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = (v5 - v4);
  v30 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  v7 = OUTLINED_FUNCTION_12(v30);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = (v11 - v10);
  v13 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v17);
  v19 = (&v29 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370920, &qword_26A432990);
  OUTLINED_FUNCTION_41(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_62_3();
  v25 = *(v24 + 56);
  sub_26A24EE0C();
  sub_26A24EE0C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A24EE0C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      if (sub_26A0DBFF0(*v0, *v6))
      {
        v26 = *(v29 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        sub_26A424B64();
      }

LABEL_13:
      sub_26A23838C();
      sub_26A23838C();
      OUTLINED_FUNCTION_52_9();
      sub_26A23838C();
      goto LABEL_14;
    }
  }

  else
  {
    sub_26A24EE0C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A2356C8();
      v27 = *v19 == *v12 && v19[1] == v12[1];
      if (v27 || (sub_26A425354() & 1) != 0)
      {
        v28 = *(v30 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        sub_26A424B64();
      }

      goto LABEL_13;
    }
  }

  sub_26A23838C();
  sub_26A13440C();
LABEL_14:
  OUTLINED_FUNCTION_75();
}

uint64_t static _ProtoImageElement.Contact.Monogram.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v2 = *v1;
  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_235_1();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for _ProtoImageElement.Contact.Monogram(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t static _ProtoImageElement.Contact.Avatar.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  if ((sub_26A0DBFF0(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for _ProtoImageElement.Contact.Avatar(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t _ProtoImageElement.Contact.Monogram.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.Contact.Monogram(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoImageElement.Contact.Avatar.contactIds.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t sub_26A23CEC0()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v2 = *(v1(v0) + 20);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_57_5();

  return v7(v6);
}

uint64_t sub_26A23CF48()
{
  v0 = OUTLINED_FUNCTION_110();
  v2 = *(v1(v0) + 20);
  v3 = sub_26A424794();
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_219_0();

  return v7(v6);
}

uint64_t _ProtoImageElement.Contact.Avatar.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.Contact.Avatar(v0) + 20);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoImageElement.AppIcon.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.AppIcon(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoImageElement.DataMessage.pngData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v3, v4);
  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.DataMessage.pngData.setter()
{
  OUTLINED_FUNCTION_60_5();
  result = sub_26A0E4784(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

void _ProtoImageElement.DataMessage.imageStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoImageElement.DataMessage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t _ProtoImageElement.AspectRatio.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  return OUTLINED_FUNCTION_226_1(v1);
}

void _ProtoImageElement.DataMessage.aspectRatio.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.DataMessage(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 36));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A23D298()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A24EE0C();
    sub_26A13440C();
    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_24_19();
    sub_26A23838C();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_13_14();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_70();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v5);
}

Swift::Void __swiftcall _ProtoImageElement.DataMessage.clearAspectRatio()()
{
  v0 = OUTLINED_FUNCTION_199_1();
  v1 = *(type metadata accessor for _ProtoImageElement.DataMessage(v0) + 36);
  sub_26A13440C();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v2 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.DataMessage.fixedHeight.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoOptionalBool(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.DataMessage(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 40));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

void _ProtoImageElement.DataMessage.fixedWidth.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoOptionalBool(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.DataMessage(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 44));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A23D624()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A24EE0C();
    sub_26A13440C();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_54_9();
    sub_26A23838C();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_70();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v5);
}

uint64_t _ProtoImageElement.DataMessage.darkModePngData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v3, v4);
  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.DataMessage.darkModePngData.setter()
{
  OUTLINED_FUNCTION_60_5();
  result = sub_26A0E4784(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t _ProtoImageElement.DataMessage.assetData.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_175();
  sub_26A0E45C0(v3, v4);
  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.DataMessage.assetData.setter()
{
  OUTLINED_FUNCTION_60_5();
  result = sub_26A0E4784(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t _ProtoImageElement.DataMessage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoImageElement.DataMessage(v0) + 32);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoImageElement.DataMessage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoImageElement.DataMessage(v0) + 32);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_219_0();

  return v6(v5);
}

uint64_t _ProtoImageElement.DataMessage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.DataMessage(v0) + 32);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoImageElement.Bundle.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.Bundle.name.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t _ProtoImageElement.Bundle.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.Bundle.bundleID.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void _ProtoImageElement.Bundle.imageStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoImageElement.Bundle.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t _ProtoImageElement.Bundle.aspectRatio.getter()
{
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = *(type metadata accessor for _ProtoImageElement.Bundle(v6) + 40);
  OUTLINED_FUNCTION_78_5();
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_2_24(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_200_1();
    result = OUTLINED_FUNCTION_38_0();
    if (!v9)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2356C8();
  }

  return result;
}

uint64_t _ProtoImageElement.Bundle.aspectRatio.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v1 = *(type metadata accessor for _ProtoImageElement.Bundle(v0) + 40);
  sub_26A13440C();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_36_1();
  sub_26A2356C8();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.Bundle.aspectRatio.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.Bundle(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 40));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A23DCCC()
{
  OUTLINED_FUNCTION_101_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_131_3();
  v8 = *(v1(0) + 40);
  OUTLINED_FUNCTION_87();
  sub_26A1E05A8();
  v0(0);
  v9 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A13440C();
  return v13;
}

uint64_t sub_26A23DDB8()
{
  OUTLINED_FUNCTION_101_3();
  v2 = *(v1(0) + 40);
  sub_26A13440C();
  v0(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoImageElement.Bundle.bundlePath.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.Bundle.bundlePath.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_26A23DEC4(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46();
  v9 = a1(v8);
  OUTLINED_FUNCTION_176(*(v9 + 44));
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_2_24(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_173_2();
    result = OUTLINED_FUNCTION_38_0();
    if (!v11)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2356C8();
  }

  return result;
}

uint64_t sub_26A23DFC4()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v2 = *(v1(v0) + 44);
  sub_26A13440C();
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_36_1();
  sub_26A2356C8();
  type metadata accessor for _ProtoOptionalBool(0);
  v3 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void _ProtoImageElement.Bundle.fixedHeight.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoOptionalBool(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.Bundle(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 44));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A23E160(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_141_0();
  v6 = *(a1(0) + 44);
  sub_26A1E05A8();
  type metadata accessor for _ProtoOptionalBool(0);
  v7 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_88();
  sub_26A13440C();
  return v11;
}

uint64_t sub_26A23E23C(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 44);
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_37_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoImageElement.Bundle.fixedWidth.getter()
{
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = *(type metadata accessor for _ProtoImageElement.Bundle(v6) + 48);
  OUTLINED_FUNCTION_78_5();
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_2_24(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_173_2();
    result = OUTLINED_FUNCTION_38_0();
    if (!v9)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2356C8();
  }

  return result;
}

uint64_t _ProtoImageElement.Bundle.fixedWidth.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v1 = *(type metadata accessor for _ProtoImageElement.Bundle(v0) + 48);
  sub_26A13440C();
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_36_1();
  sub_26A2356C8();
  type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.Bundle.fixedWidth.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoOptionalBool(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.Bundle(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 48));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A23E530()
{
  OUTLINED_FUNCTION_101_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_131_3();
  v8 = *(v1(0) + 48);
  OUTLINED_FUNCTION_87();
  sub_26A1E05A8();
  v0(0);
  v9 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A13440C();
  return v13;
}

uint64_t _ProtoImageElement.Bundle.darkModeName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoImageElement.Bundle.darkModeName.setter()
{
  OUTLINED_FUNCTION_60_5();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t _ProtoImageElement.Bundle.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoImageElement.Bundle(v0) + 36);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoImageElement.Bundle.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoImageElement.Bundle(v0) + 36);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_219_0();

  return v6(v5);
}

uint64_t _ProtoImageElement.Bundle.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.Bundle(v0) + 36);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t sub_26A23E7A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoImageElement.Url.source.setter();
}

uint64_t _ProtoImageElement.Url.source.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 64) = v0;
  OUTLINED_FUNCTION_39_11();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_136_3();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_133();
}

void sub_26A23E85C(uint64_t *a1)
{
  OUTLINED_FUNCTION_239_1(a1);
  v3 = *(v2 + 48);
  v4 = *(v1 + 56);
  if (v5)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);

    OUTLINED_FUNCTION_125();
    _ProtoImageElement.Url.source.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = *(v1 + 64);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_65_8();
      v16 = OUTLINED_FUNCTION_5_3();
      v13 = sub_26A24E76C(v16);
      *(v15 + v14) = v13;
    }

    OUTLINED_FUNCTION_26_10();
    v17 = *(v13 + 24);
    *(v13 + 16) = v3;
    *(v13 + 24) = v4;
  }

  free(v1);
}

uint64_t sub_26A23E914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_185_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_104();
  sub_26A1E05A8();
  return a7(v7);
}

void _ProtoImageElement.Url.loadingImage.modify()
{
  OUTLINED_FUNCTION_69_1();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_12_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_39_11();
  *(v1 + 72) = v8;
  v9 = *(v0 + v8);
  OUTLINED_FUNCTION_136_3();
  OUTLINED_FUNCTION_117_1();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_67_1();
}

void sub_26A23EA80(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    OUTLINED_FUNCTION_186_1();
    _ProtoImageElement.Url.loadingImage.setter();
    OUTLINED_FUNCTION_115();
    sub_26A13440C();
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 48);
    v8 = *(v7 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v7 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 72);
      v12 = *(v2 + 48);
      OUTLINED_FUNCTION_65_8();
      v13 = OUTLINED_FUNCTION_5_3();
      *(v12 + v11) = sub_26A24E76C(v13);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_21_8();
    swift_beginAccess();
    sub_26A252CF0();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t _ProtoImageElement.Url.dataLoadingImage.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_115();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v7);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v8 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_2_24(v8);
  if (v9)
  {
    sub_26A13440C();
LABEL_6:
    OUTLINED_FUNCTION_112_2(xmmword_26A426400);
    v11 = v0[9];
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = v0[10];
    type metadata accessor for _ProtoOptionalBool(0);
    OUTLINED_FUNCTION_64_6();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = v0[11];
    OUTLINED_FUNCTION_64_6();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  OUTLINED_FUNCTION_125();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A23838C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_44();
  return sub_26A2356C8();
}

uint64_t _ProtoImageElement.Url.dataLoadingImage.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  v11 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_133();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.dataLoadingImage.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoImageElement.DataMessage(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_164_2(v11);
  *(v0 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  v13 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_17_12(v13);
  if (v14)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_12_2();
      sub_26A2356C8();
      goto LABEL_7;
    }

    sub_26A23838C();
  }

  OUTLINED_FUNCTION_197_1(xmmword_26A426400);
  v16 = v9[9];
  OUTLINED_FUNCTION_58_10();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v9[10];
  v22 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  v26 = v9[11];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
LABEL_7:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.bundleLoadingImage.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v8);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v9 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_2_24(v9);
  if (v10)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_125();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_44();
      return sub_26A2356C8();
    }

    sub_26A23838C();
  }

  return _ProtoImageElement.Bundle.init()(v1);
}

uint64_t _ProtoImageElement.Url.bundleLoadingImage.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  v11 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_133();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.bundleLoadingImage.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoImageElement.Bundle(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_164_2(v11);
  *(v0 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  v13 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_17_12(v13);
  if (v14)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_179_1();
    v16 = v9[10];
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = v9[11];
    v22 = type metadata accessor for _ProtoOptionalBool(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    v26 = v9[12];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_157();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A23838C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A2356C8();
LABEL_8:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.symbolLoadingImage.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_115();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v8);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v9 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_2_24(v9);
  if (v10)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_125();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_44();
      return sub_26A2356C8();
    }

    sub_26A23838C();
  }

  return _ProtoImageElement.Symbol.init()(v1);
}

uint64_t _ProtoImageElement.Url.symbolLoadingImage.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  v11 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_133();
  swift_storeEnumTagMultiPayload();
  v12 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.symbolLoadingImage.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoImageElement.Symbol(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_164_2(v11);
  *(v0 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  v13 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_17_12(v13);
  if (v14)
  {
    sub_26A13440C();
LABEL_7:
    OUTLINED_FUNCTION_141_1();
    v16 = *(v9 + 48);
    type metadata accessor for _ProtoColor(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = *(v9 + 52);
    type metadata accessor for _ProtoImageElement.Symbol.Background(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_157();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A23838C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A2356C8();
LABEL_8:
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.contentMode.modify()
{
  OUTLINED_FUNCTION_49_7();
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v1) + 88) = v0;
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_221_1(v2);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return OUTLINED_FUNCTION_212_1();
}

uint64_t sub_26A23F7C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_39_11();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_75_6();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_26A23F824(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for _ProtoImageElement.Url(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v11 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v11);
    *(v4 + v7) = v10;
  }

  v12 = v10 + *a2;
  result = OUTLINED_FUNCTION_26_10();
  *v12 = v5;
  *(v12 + 8) = v6;
  return result;
}

uint64_t _ProtoImageElement.Url.imageStyle.modify()
{
  OUTLINED_FUNCTION_49_7();
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v1) + 88) = v0;
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_221_1(v2);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return OUTLINED_FUNCTION_212_1();
}

void sub_26A23F928()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1;
  OUTLINED_FUNCTION_239_1(v3);
  v5 = *(v4 + 72);
  v6 = *(v0 + 84);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v0 + 84);
    v13 = *(v0 + 88);
    OUTLINED_FUNCTION_65_8();
    v14 = OUTLINED_FUNCTION_5_3();
    v11 = sub_26A24E76C(v14);
    *(v13 + v12) = v11;
  }

  v15 = v11 + *v2;
  OUTLINED_FUNCTION_26_10();
  *v15 = v5;
  *(v15 + 8) = v8;
  OUTLINED_FUNCTION_67_1();

  free(v16);
}

uint64_t _ProtoImageElement.Url.aspectRatio.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v7 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_2_24(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_200_1();
    result = OUTLINED_FUNCTION_38_0();
    if (!v8)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2356C8();
  }

  return result;
}

uint64_t _ProtoImageElement.Url.aspectRatio.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_58_10();
  v11 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.aspectRatio.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_54_3(v7);
  v9 = type metadata accessor for _ProtoImageElement.AspectRatio(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_167_0();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    *v13 = 0;
    v15 = v13 + *(v9 + 24);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.hasAspectRatio.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v6);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_108_2();
  v7 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoImageElement.Url.clearAspectRatio()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoImageElement.Url(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v10 = OUTLINED_FUNCTION_5_3();
    v11 = sub_26A24E76C(v10);
    OUTLINED_FUNCTION_52_3(v11);
  }

  OUTLINED_FUNCTION_58_10();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
}

uint64_t _ProtoImageElement.Url.fixedHeight.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  type metadata accessor for _ProtoOptionalBool(0);
  v11 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.fixedHeight.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoOptionalBool(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v0 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.hasFixedHeight.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v6);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_108_2();
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoImageElement.Url.clearFixedHeight()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoImageElement.Url(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v10 = OUTLINED_FUNCTION_5_3();
    v11 = sub_26A24E76C(v10);
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
}

uint64_t sub_26A240240()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v8);
  v9 = *v1;
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_186_1();
  v10 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_2_24(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_173_2();
    result = OUTLINED_FUNCTION_38_0();
    if (!v11)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2356C8();
  }

  return result;
}

uint64_t _ProtoImageElement.Url.fixedWidth.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  type metadata accessor for _ProtoOptionalBool(0);
  v11 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.fixedWidth.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_50_9(v7);
  v9 = type metadata accessor for _ProtoOptionalBool(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  *(v0 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_70_4();
  OUTLINED_FUNCTION_4_11();
  if (v13)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v13)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.hasFixedWidth.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v6);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_108_2();
  v7 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoImageElement.Url.clearFixedWidth()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoImageElement.Url(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v10 = OUTLINED_FUNCTION_5_3();
    v11 = sub_26A24E76C(v10);
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
}

uint64_t _ProtoImageElement.Url.backgroundColor.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_115();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v6);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_68_4();
  v7 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_2_24(v7);
  if (v8)
  {
    v9 = type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_51_4(v9);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    result = OUTLINED_FUNCTION_38_0();
    if (!v8)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2356C8();
  }

  return result;
}

uint64_t _ProtoImageElement.Url.backgroundColor.setter()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_107_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = OUTLINED_FUNCTION_167_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v9 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A24E76C(v9);
    OUTLINED_FUNCTION_42_1(v10);
  }

  OUTLINED_FUNCTION_209_1();
  type metadata accessor for _ProtoColor(0);
  v11 = OUTLINED_FUNCTION_63_7();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  return swift_endAccess();
}

void _ProtoImageElement.Url.backgroundColor.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_124();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_54_3(v7);
  v9 = type metadata accessor for _ProtoColor(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_51_3(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = v13;
  OUTLINED_FUNCTION_21_15();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_167_0();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_1_4();
  if (v14)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = &v13[*(v9 + 20)];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_1_4();
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoImageElement.Url.hasBackgroundColor.getter()
{
  OUTLINED_FUNCTION_19_0();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_62_8(v6);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_108_2();
  v7 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_9_20(v7);
  return OUTLINED_FUNCTION_109_1();
}

Swift::Void __swiftcall _ProtoImageElement.Url.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_4_3();
  v7 = type metadata accessor for _ProtoImageElement.Url(v6);
  v8 = OUTLINED_FUNCTION_187_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v10 = OUTLINED_FUNCTION_5_3();
    v11 = sub_26A24E76C(v10);
    OUTLINED_FUNCTION_52_3(v11);
  }

  v12 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_51_4(v12);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_1();
  sub_26A252CF0();
  swift_endAccess();
}

uint64_t _ProtoImageElement.Url.darkModeSource.getter()
{
  OUTLINED_FUNCTION_39_11();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  OUTLINED_FUNCTION_75_6();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_246();
}

uint64_t sub_26A240BE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _ProtoImageElement.Url.darkModeSource.setter();
}

uint64_t _ProtoImageElement.Url.darkModeSource.setter()
{
  v4 = OUTLINED_FUNCTION_98_2();
  v5 = OUTLINED_FUNCTION_167_1(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v7 = OUTLINED_FUNCTION_5_3();
    v8 = sub_26A24E76C(v7);
    OUTLINED_FUNCTION_42_1(v8);
  }

  v9 = (v6 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  OUTLINED_FUNCTION_26_10();
  v10 = v9[1];
  *v9 = v2;
  v9[1] = v0;
}

uint64_t _ProtoImageElement.Url.darkModeSource.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 64) = v0;
  OUTLINED_FUNCTION_39_11();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_38_6();
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_133();
}

void sub_26A240D1C(uint64_t *a1)
{
  OUTLINED_FUNCTION_239_1(a1);
  v3 = *(v2 + 48);
  v4 = *(v1 + 56);
  if (v5)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);

    OUTLINED_FUNCTION_125();
    _ProtoImageElement.Url.darkModeSource.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = *(v1 + 64);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_65_8();
      v16 = OUTLINED_FUNCTION_5_3();
      v13 = sub_26A24E76C(v16);
      *(v15 + v14) = v13;
    }

    v17 = (v13 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
    OUTLINED_FUNCTION_26_10();
    v18 = v17[1];
    *v17 = v3;
    v17[1] = v4;
  }

  free(v1);
}

uint64_t _ProtoImageElement.Url.cornerRoundingMode.modify()
{
  OUTLINED_FUNCTION_49_7();
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v1) + 88) = v0;
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_221_1(v2);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return OUTLINED_FUNCTION_212_1();
}

void *sub_26A240E78@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_26A240EC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_237_1();
  return v3(&v5);
}

uint64_t _ProtoImageElement.Url.renderingMode.modify()
{
  OUTLINED_FUNCTION_49_7();
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v1) + 88) = v0;
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_221_1(v2);
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_106_2();
  return OUTLINED_FUNCTION_212_1();
}

float _ProtoImageElement.Url.insetPadding.getter()
{
  OUTLINED_FUNCTION_39_11();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding;
  OUTLINED_FUNCTION_75_6();
  return *v2;
}

uint64_t _ProtoImageElement.Url.insetPadding.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for _ProtoImageElement.Url(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_65_8();
    v8 = OUTLINED_FUNCTION_5_3();
    v7 = sub_26A24E76C(v8);
    *(v2 + v4) = v7;
  }

  v9 = (v7 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
  result = OUTLINED_FUNCTION_26_10();
  *v9 = a1;
  return result;
}

uint64_t _ProtoImageElement.Url.insetPadding.modify()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 72) = v0;
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_221_1(v3);
  OUTLINED_FUNCTION_38_6();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_212_1();
}

void sub_26A2410B4(uint64_t *a1)
{
  OUTLINED_FUNCTION_239_1(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_65_8();
    v11 = OUTLINED_FUNCTION_5_3();
    v8 = sub_26A24E76C(v11);
    *(v10 + v9) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
  OUTLINED_FUNCTION_26_10();
  *v12 = v3;

  free(v1);
}

void static _ProtoImageElement.Url.OneOf_LoadingImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v0 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v4 = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for _ProtoImageElement.Bundle(v4);
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v13 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_204_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_206_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370938, &qword_26A432998);
  OUTLINED_FUNCTION_41(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62_3();
  v24 = *(v23 + 56);
  sub_26A24EE0C();
  sub_26A24EE0C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A24EE0C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A2356C8();
        static _ProtoImageElement.Bundle.== infix(_:_:)();
        sub_26A23838C();
LABEL_11:
        sub_26A23838C();
        OUTLINED_FUNCTION_155_2();
        sub_26A23838C();
        goto LABEL_12;
      }
    }

    else
    {
      sub_26A24EE0C();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_26A2356C8();
        OUTLINED_FUNCTION_217_0();
        static _ProtoImageElement.Symbol.== infix(_:_:)();
        sub_26A23838C();
        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_26A24EE0C();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A2356C8();
      static _ProtoImageElement.DataMessage.== infix(_:_:)();
      sub_26A23838C();
      goto LABEL_11;
    }
  }

  sub_26A23838C();
  sub_26A13440C();
LABEL_12:
  OUTLINED_FUNCTION_75();
}

void _ProtoImageElement.Symbol.tintColor.modify()
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
  v9 = type metadata accessor for _ProtoColor(v8);
  OUTLINED_FUNCTION_1_24(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_3(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_16_5(v14);
  v16 = type metadata accessor for _ProtoImageElement.Symbol(v15);
  OUTLINED_FUNCTION_41_10(*(v16 + 48));
  OUTLINED_FUNCTION_4_11();
  if (v17)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = v11 + *(v0 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v17)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A241710()
{
  OUTLINED_FUNCTION_101_3();
  v2 = *(v1(0) + 48);
  sub_26A13440C();
  v0(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t _ProtoImageElement.Symbol.Background.init()()
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v0 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v1 = v0[5];
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0[6];
  OUTLINED_FUNCTION_58_10();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v0[7];
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_64_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v0[8];
  OUTLINED_FUNCTION_64_6();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void _ProtoImageElement.Symbol.background.modify()
{
  OUTLINED_FUNCTION_69_1();
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  *(v0 + 8) = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_12(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_35_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_16_5(v11);
  *(v0 + 40) = *(type metadata accessor for _ProtoImageElement.Symbol(v12) + 52);
  sub_26A1E05A8();
  OUTLINED_FUNCTION_1_4();
  if (v13)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = v7[5];
    type metadata accessor for _ProtoColor(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = v7[6];
    OUTLINED_FUNCTION_58_10();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = v7[7];
    v25 = type metadata accessor for _ProtoOptionalBool(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    v29 = v7[8];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v25);
    OUTLINED_FUNCTION_1_4();
    if (!v13)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_88();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A241A20()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A24EE0C();
    sub_26A13440C();
    OUTLINED_FUNCTION_53_9();
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_70();
    sub_26A23838C();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_53_9();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_70();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v5);
}

Swift::Void __swiftcall _ProtoImageElement.Symbol.clearBackground()()
{
  v0 = OUTLINED_FUNCTION_199_1();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol(v0) + 52);
  sub_26A13440C();
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v2 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.Symbol.symbolRenderingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoImageElement.Symbol.symbolRenderingMode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

void _ProtoImageElement.Symbol.vibrancy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_115_3(a1);
}

uint64_t _ProtoImageElement.Symbol.vibrancy.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 88) = *result;
  *(v1 + 96) = v2;
  return result;
}

uint64_t _ProtoImageElement.Symbol.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_26_13();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol(v0) + 44);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_57_5();

  return v6(v5);
}

uint64_t _ProtoImageElement.Symbol.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_110();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol(v0) + 44);
  v2 = sub_26A424794();
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_219_0();

  return v6(v5);
}

uint64_t _ProtoImageElement.Symbol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol(v0) + 44);
  return OUTLINED_FUNCTION_51_5();
}

void _ProtoImageElement.Symbol.Background.color.modify()
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
  v9 = type metadata accessor for _ProtoColor(v8);
  OUTLINED_FUNCTION_1_24(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_3(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_16_5(v14);
  v16 = type metadata accessor for _ProtoImageElement.Symbol.Background(v15);
  OUTLINED_FUNCTION_41_10(*(v16 + 20));
  OUTLINED_FUNCTION_4_11();
  if (v17)
  {
    type metadata accessor for _ProtoColor.OneOf_Value(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = v11 + *(v0 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    OUTLINED_FUNCTION_4_11();
    if (!v17)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

void sub_26A241E4C()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_108(v3);
  if (v4)
  {
    OUTLINED_FUNCTION_157();
    sub_26A24EE0C();
    sub_26A13440C();
    OUTLINED_FUNCTION_22_12();
    OUTLINED_FUNCTION_254_1();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_152_2();
    sub_26A23838C();
  }

  else
  {
    sub_26A13440C();
    OUTLINED_FUNCTION_22_12();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_70();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_67_1();

  free(v5);
}

Swift::Void __swiftcall _ProtoImageElement.Symbol.Background.clearColor()()
{
  v0 = OUTLINED_FUNCTION_199_1();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(v0) + 20);
  sub_26A13440C();
  type metadata accessor for _ProtoColor(0);
  v2 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.Symbol.Background.aspectRatio.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.Symbol.Background(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 24));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoImageElement.Symbol.Background.clearAspectRatio()()
{
  v0 = OUTLINED_FUNCTION_199_1();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(v0) + 24);
  sub_26A13440C();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v2 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.Symbol.Background.fixedHeight.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoOptionalBool(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.Symbol.Background(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 28));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoImageElement.Symbol.Background.clearFixedHeight()()
{
  v0 = OUTLINED_FUNCTION_199_1();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(v0) + 28);
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void _ProtoImageElement.Symbol.Background.fixedWidth.modify()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_40_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_16_2(v1);
  v2 = OUTLINED_FUNCTION_22_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  v8 = type metadata accessor for _ProtoOptionalBool(v7);
  OUTLINED_FUNCTION_1_24(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_35_3(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_16_5(v12);
  v14 = type metadata accessor for _ProtoImageElement.Symbol.Background(v13);
  OUTLINED_FUNCTION_41_10(*(v14 + 32));
  OUTLINED_FUNCTION_4_11();
  if (v15)
  {
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_4_11();
    if (!v15)
    {
      sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A2356C8();
  }

  OUTLINED_FUNCTION_67_1();
}

Swift::Void __swiftcall _ProtoImageElement.Symbol.Background.clearFixedWidth()()
{
  v0 = OUTLINED_FUNCTION_199_1();
  v1 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(v0) + 32);
  sub_26A13440C();
  type metadata accessor for _ProtoOptionalBool(0);
  v2 = OUTLINED_FUNCTION_37_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _s10SnippetKit18_ProtoImageElementV06BadgedD0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  OUTLINED_FUNCTION_26_13();
  v0 = sub_26A424794();
  OUTLINED_FUNCTION_12(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_175();

  return v4(v3);
}

uint64_t _ProtoImageElement.AspectRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_11_3();
  v1 = *(type metadata accessor for _ProtoImageElement.AspectRatio(v0) + 24);
  return OUTLINED_FUNCTION_51_5();
}

uint64_t _ProtoImageElement.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = type metadata accessor for _ProtoImageElement(0);
  return OUTLINED_FUNCTION_226_1(v3);
}

uint64_t static _ProtoImageElement.SymbolLayout.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A2425C0@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoImageElement.SymbolLayout.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static _ProtoImageElement.ImageStyle.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A242674@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoImageElement.ImageStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static _ProtoImageElement.RenderingMode.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A242728@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoImageElement.RenderingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static _ProtoImageElement.SymbolRenderingMode.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A2427DC@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoImageElement.SymbolRenderingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static _ProtoImageElement.ContentMode.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A242890@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoImageElement.ContentMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A2428FC()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_26_10();
  v2 = *v0;
  *v0 = v1;
}

uint64_t static _ProtoImageElement.CornerRoundingMode.allCases.modify()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_26A242984@<X0>(uint64_t *a1@<X8>)
{
  result = static _ProtoImageElement.CornerRoundingMode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A2429C8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370670);
  __swift_project_value_buffer(v0, qword_280370670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sources";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "idioms";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_5_6();
      sub_26A1DF22C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_6();
      sub_26A242C18();
    }
  }

  return result;
}

uint64_t sub_26A242C18()
{
  type metadata accessor for _ProtoImageElement.Source(0);
  sub_26A252D48();
  return sub_26A424934();
}

uint64_t _ProtoImageElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoImageElement.Source(0), sub_26A252D48(), OUTLINED_FUNCTION_218_1(), OUTLINED_FUNCTION_48_8(), result = sub_26A424A74(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (sub_26A11EF50(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249D4(), !v1))
    {
      v4 = *(type metadata accessor for _ProtoImageElement(0) + 24);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t static _ProtoImageElement.== infix(_:_:)()
{
  OUTLINED_FUNCTION_45_3();
  v3 = *v2;
  v5 = *v4;
  sub_26A0DBACC();
  if ((v6 & 1) == 0 || (sub_26A0DB6A0(*(v1 + 8), *(v0 + 8)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for _ProtoImageElement(0) + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A242EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A242F5C(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A242FCC()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24304C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370688);
  __swift_project_value_buffer(v0, qword_280370688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GLYPH";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLACEHOLDER";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A24323C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803706A0);
  __swift_project_value_buffer(v0, qword_2803706A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_26A432920;
  v4 = v94 + v3 + v1[14];
  *(v94 + v3) = 0;
  *v4 = "DEFAULT";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v94 + v3 + v2 + v1[14];
  *(v94 + v3 + v2) = 1;
  *v8 = "X_SMALL";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v94 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SMALL";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v94 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MEDIUM";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v94 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "IMAGE_1";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v94 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "IMAGE_2";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v94 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "IMAGE_3";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v94 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "IMAGE_4";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v94 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "IMAGE_5";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v7();
  v23 = (v94 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "IMAGE_6";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v94 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "IMAGE_7";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v94 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "IMAGE_8";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v94 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "IMAGE_9";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v7();
  v31 = (v94 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "FULL_WIDTH";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  v33 = (v94 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "FULL_BLEED";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v7();
  v35 = (v94 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "APP_ICON_1";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v94 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "APP_ICON_2";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  v39 = (v94 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "APP_ICON_3";
  *(v40 + 1) = 10;
  v40[16] = 2;
  v7();
  v41 = (v94 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "APP_ICON_4";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  v43 = (v94 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "APP_ICON_5";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v94 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CONTACT_IMAGE_3";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v94 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CONTACT_IMAGE_5";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v7();
  v49 = (v94 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CONTACT_IMAGE_4";
  *(v50 + 1) = 15;
  v50[16] = 2;
  v7();
  v51 = (v94 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CONTACT_IMAGE_1";
  *(v52 + 1) = 15;
  v52[16] = 2;
  v7();
  v53 = (v94 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CONTACT_IMAGE_2";
  *(v54 + 1) = 15;
  v54[16] = 2;
  v7();
  v55 = (v94 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CONTAINER_IMAGE_1";
  *(v56 + 1) = 17;
  v56[16] = 2;
  v7();
  v57 = (v94 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CONTAINER_IMAGE_2";
  *(v58 + 1) = 17;
  v58[16] = 2;
  v7();
  v59 = (v94 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CONTAINER_IMAGE_3";
  *(v60 + 1) = 17;
  v60[16] = 2;
  v7();
  v61 = (v94 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "CONTAINER_IMAGE_4";
  *(v62 + 1) = 17;
  v62[16] = 2;
  v7();
  v63 = (v94 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "CONTACT_IMAGE_6";
  *(v64 + 1) = 15;
  v64[16] = 2;
  v7();
  v65 = (v94 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "IMAGE_2A";
  *(v66 + 1) = 8;
  v66[16] = 2;
  v7();
  v67 = (v94 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "CONTACT_IMAGE_2A";
  *(v68 + 1) = 16;
  v68[16] = 2;
  v7();
  v69 = (v94 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "CONTACT_IMAGE_7";
  *(v70 + 1) = 15;
  v70[16] = 2;
  v7();
  v71 = (v94 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "CONTACT_IMAGE_8";
  *(v72 + 1) = 15;
  v72[16] = 2;
  v7();
  v73 = (v94 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "CONTACT_IMAGE_9";
  *(v74 + 1) = 15;
  v74[16] = 2;
  v7();
  v75 = (v94 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "IMAGE_1W";
  *(v76 + 1) = 8;
  v76[16] = 2;
  v7();
  v77 = (v94 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "IMAGE_2W";
  *(v78 + 1) = 8;
  v78[16] = 2;
  v7();
  v79 = (v94 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "IMAGE_3W";
  *(v80 + 1) = 8;
  v80[16] = 2;
  v7();
  v81 = (v94 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "IMAGE_4W";
  *(v82 + 1) = 8;
  v82[16] = 2;
  v7();
  v83 = (v94 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "IMAGE_5W";
  *(v84 + 1) = 8;
  v84[16] = 2;
  v7();
  v85 = (v94 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "IMAGE_6W";
  *(v86 + 1) = 8;
  v86[16] = 2;
  v7();
  v87 = (v94 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "IMAGE_7W";
  *(v88 + 1) = 8;
  v88[16] = 2;
  v7();
  v89 = (v94 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "IMAGE_8W";
  *(v90 + 1) = 8;
  v90[16] = 2;
  v7();
  v91 = (v94 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "IMAGE_9W";
  *(v92 + 1) = 8;
  v92[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A243D94()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803706B8);
  __swift_project_value_buffer(v0, qword_2803706B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ORIGINAL";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TEMPLATE";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A243F84()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803706D0);
  __swift_project_value_buffer(v0, qword_2803706D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SYMBOL_RENDERING_MODE_DEFAULT";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SYMBOL_RENDERING_MODE_MONOCHROME";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SYMBOL_RENDERING_MODE_MULTICOLOR";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SYMBOL_RENDERING_MODE_PALETTE";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SYMBOL_RENDERING_MODE_HIERARCHICAL";
  *(v16 + 1) = 34;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A244228()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803706E8);
  __swift_project_value_buffer(v0, qword_2803706E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "FIT";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FILL";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A244418()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370700);
  __swift_project_value_buffer(v0, qword_280370700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CORNER_ROUNDING_DEFAULT";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CORNER_ROUNDING_DISABLED";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CORNER_ROUNDING_CIRCLE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A244688()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370728);
  __swift_project_value_buffer(v0, qword_280370728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26A42DE50;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "data";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "bundle";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "symbol";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "app_icon";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21888];
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "contact";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "badged_image";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t sub_26A2449B0()
{
  v0 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
  OUTLINED_FUNCTION_100_0(v0);
  v1 = swift_allocObject();
  type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  qword_28157A0A0 = v1;
  return result;
}

void sub_26A244A48()
{
  OUTLINED_FUNCTION_69_1();
  v0 = OUTLINED_FUNCTION_133();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_141_0();
  type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_125_3();
  sub_26A1E05A8();

  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_125_3();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_67_1();
}

uint64_t sub_26A244B94()
{
  sub_26A13440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A244C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A244D94(a1, a2, a3, a4);
        break;
      case 2:
        sub_26A2452E8(a1, a2, a3, a4);
        break;
      case 3:
        sub_26A245858(a1, a2, a3, a4);
        break;
      case 4:
        sub_26A245DC8(a1, a2, a3, a4);
        break;
      case 5:
        sub_26A246338(a1, a2, a3, a4);
        break;
      case 6:
        sub_26A2468A8(a1, a2, a3, a4);
        break;
      case 7:
        sub_26A246E18(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A244D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v39 = a3;
  v38 = a2;
  v5 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B90, &qword_26A4347B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  __swift_storeEnumTagSinglePayload(&v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v33 = a1;
  v31 = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A23838C();
    }

    else
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_26A252D48();
  v28 = v36;
  sub_26A424944();
  if (v28)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v16);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2452E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B98, &qword_26A4347C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A245858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Url(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BB8, &qword_26A4347E8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A245DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BA0, &qword_26A4347C8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A246338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BC0, &qword_26A4347F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2468A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Contact(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BC8, &qword_26A4347F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A246E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BD0, &qword_26A434800);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement6SourceP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__value;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2473B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  swift_beginAccess();
  sub_26A1E05A8();
  v12 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A2477FC(a1, a2, a3, a4);
        break;
      case 2u:
        sub_26A247A30(a1, a2, a3, a4);
        break;
      case 3u:
        sub_26A247C64(a1, a2, a3, a4);
        break;
      case 4u:
        sub_26A247E98(a1, a2, a3, a4);
        break;
      case 5u:
        sub_26A2480CC(a1, a2, a3, a4);
        break;
      case 6u:
        sub_26A248300(a1, a2, a3, a4);
        break;
      default:
        sub_26A2475CC(a1, a2, a3, a4);
        break;
    }

    return sub_26A23838C();
  }

  return result;
}

uint64_t sub_26A2475CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2477FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A247A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Url(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A247C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A247E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2480CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Contact(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A248300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.BadgedImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A248560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_45_3();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_12_2();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_38();
  sub_26A252D48();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

BOOL sub_26A248638()
{
  v0 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v17 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C908, &qword_26A4347E0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v18 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  swift_beginAccess();
  sub_26A1E05A8();
  swift_beginAccess();
  v12 = *(v4 + 56);
  sub_26A1E05A8();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v0) != 1)
  {
    v13 = v18;
    sub_26A1E05A8();
    if (__swift_getEnumTagSinglePayload(&v7[v12], 1, v0) != 1)
    {
      v15 = v17;
      sub_26A2356C8();
      v16 = static _ProtoImageElement.Source.OneOf_Value.== infix(_:_:)(v13, v15);
      sub_26A23838C();
      sub_26A13440C();
      sub_26A23838C();
      sub_26A13440C();
      return (v16 & 1) != 0;
    }

    sub_26A13440C();
    sub_26A23838C();
LABEL_6:
    sub_26A13440C();
    return 0;
  }

  sub_26A13440C();
  if (__swift_getEnumTagSinglePayload(&v7[v12], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_26A13440C();
  return 1;
}

uint64_t sub_26A248A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A248A9C(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A248B0C()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A248BD8()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370750);
  __swift_project_value_buffer(v0, qword_280370750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "badge";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t sub_26A248DC4()
{
  v0 = type metadata accessor for _ProtoImageElement.BadgedImage._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__image;
  v5 = type metadata accessor for _ProtoImageElement.Source(0);
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  result = __swift_storeEnumTagSinglePayload(v3 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__badge, 1, 1, v5);
  qword_28157A8F0 = v3;
  return result;
}

uint64_t sub_26A248E4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__image;
  v4 = type metadata accessor for _ProtoImageElement.Source(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement11BadgedImageP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__badge, 1, 1, v4);
  swift_beginAccess();
  sub_26A1E05A8();
  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  swift_beginAccess();
  sub_26A1E05A8();

  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  return v0;
}

uint64_t sub_26A248FF0()
{
  sub_26A13440C();
  sub_26A13440C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A2490EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_26A2491B0()
{
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_26A249318();
    }

    else if (result == 1)
    {
      sub_26A24923C();
    }
  }

  return result;
}

uint64_t sub_26A24923C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoImageElement.Source(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A249318()
{
  swift_beginAccess();
  type metadata accessor for _ProtoImageElement.Source(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A249424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_185_2();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_12_7();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A249498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26A2494E8(a1, a2, a3, a4);
  if (!v4)
  {
    return sub_26A2496DC(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26A2494E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A2496DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

void sub_26A2498D0()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_185_2();
  v40 = type metadata accessor for _ProtoImageElement.Source(0);
  v2 = OUTLINED_FUNCTION_12(v40);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v36 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v38 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BE0, &unk_26A434810);
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v39 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_206_1();
  v14 = OUTLINED_FUNCTION_21_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v37 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_187_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_142();
  v24 = *(v8 + 48);
  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_17_3(v1);
  if (!v25)
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_17_3(v1 + v24);
    if (v25)
    {

      sub_26A13440C();
      OUTLINED_FUNCTION_149_2();
      sub_26A23838C();
    }

    else
    {
      sub_26A2356C8();
      v26 = *(v40 + 20);
      v27 = *(v0 + v26);
      v28 = *(v38 + v26);

      if (v27 == v28 || (, , OUTLINED_FUNCTION_21_3(), v29 = sub_26A248638(), , , v29))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_37_0();
        v35 = sub_26A424B64();
        sub_26A23838C();
        OUTLINED_FUNCTION_126();
        sub_26A13440C();
        OUTLINED_FUNCTION_217_0();
        sub_26A23838C();
        sub_26A13440C();
        if (v35)
        {
          goto LABEL_14;
        }

LABEL_10:

        goto LABEL_21;
      }

      sub_26A23838C();
      OUTLINED_FUNCTION_105();
      sub_26A13440C();
      OUTLINED_FUNCTION_234_1();
      sub_26A23838C();
    }

LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A13440C();
  OUTLINED_FUNCTION_17_3(v1 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_26A13440C();
LABEL_14:
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_187_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_142();
  v30 = *(v8 + 48);
  OUTLINED_FUNCTION_182_2();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_189_2();
  OUTLINED_FUNCTION_17_3(v39);
  if (v25)
  {

    sub_26A13440C();
    OUTLINED_FUNCTION_17_3(v39 + v30);
  }

  else
  {
    sub_26A1E05A8();
    OUTLINED_FUNCTION_17_3(v39 + v30);
    if (v31)
    {

      sub_26A13440C();
      OUTLINED_FUNCTION_149_2();
      sub_26A23838C();
    }

    else
    {
      sub_26A2356C8();
      v32 = *(v40 + 20);
      if (*(v37 + v32) == *(v36 + v32) || (v33 = *(v37 + v32), , , OUTLINED_FUNCTION_21_3(), v34 = sub_26A248638(), , , v34))
      {
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_187_2();
        sub_26A424B64();

        OUTLINED_FUNCTION_148_2();
        sub_26A23838C();
        sub_26A13440C();
        sub_26A23838C();
        OUTLINED_FUNCTION_217_0();
        sub_26A13440C();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_148_2();
      sub_26A23838C();
      sub_26A13440C();
      sub_26A23838C();
      OUTLINED_FUNCTION_234_1();
    }
  }

  sub_26A13440C();
LABEL_21:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A24A038(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24A0B8(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24A128()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24A1EC()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370778);
  __swift_project_value_buffer(v0, qword_280370778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monogram";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "avatar";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_style";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Contact.decodeMessage<A>(decoder:)()
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
        sub_26A24AE94();
        break;
      case 2:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A24A99C(v7, v8, v9, v10);
        break;
      case 1:
        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_87();
        sub_26A24A4A4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A24A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BA8, &qword_26A4347D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A23838C();
    }

    else
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A252D48();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A24A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BB0, &qword_26A4347D8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A24AE94()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Contact(0) + 20);
  sub_26A252D8C();
  return sub_26A424894();
}

uint64_t _ProtoImageElement.Contact.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_234_1();
  sub_26A1E05A8();
  v7 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = OUTLINED_FUNCTION_3_5();
    sub_26A24B288(v8, v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_3_5();
    sub_26A24B074(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_52_9();
  result = sub_26A23838C();
  if (!v1)
  {
LABEL_6:
    v17 = type metadata accessor for _ProtoImageElement.Contact(0);
    v18 = (v2 + *(v17 + 20));
    v19 = *v18;
    v20 = *(v18 + 8);
    if (!_ProtoImageElement.ImageStyle.rawValue.getter() || (sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), result = sub_26A4249F4(), !v1))
    {
      v21 = *(v17 + 24);
      return OUTLINED_FUNCTION_19_6();
    }
  }

  return result;
}

uint64_t sub_26A24B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Contact.Monogram(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A24B288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Contact.Avatar(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Contact.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A24B524(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24B5A4(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24B614()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t _ProtoImageElement.Contact.Monogram.decodeMessage<A>(decoder:)()
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
      sub_26A424924();
    }
  }

  return result;
}

uint64_t _ProtoImageElement.Contact.Monogram.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_84_0();
  if (!v4 || (OUTLINED_FUNCTION_16_4(), result = sub_26A424A64(), !v1))
  {
    v6 = *(type metadata accessor for _ProtoImageElement.Contact.Monogram(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A24B860(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24B8E0(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24B950()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24B9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_28036C320 != -1)
  {
    swift_once();
  }

  v9 = qword_280370768;
  v10 = qword_280370770;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_103();
  MEMORY[0x26D65BA70](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

void sub_26A24BAE4()
{
  OUTLINED_FUNCTION_69_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26A424AC4();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_37_5();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26A426410;
  v15 = v14 + v13 + v11[14];
  *(v14 + v13) = 1;
  *v15 = v5;
  *(v15 + 8) = v3;
  *(v15 + 16) = 2;
  v16 = *v1;
  v17 = sub_26A424A94();
  OUTLINED_FUNCTION_12(v17);
  (*(v18 + 104))(v15, v16);
  sub_26A424AA4();
  OUTLINED_FUNCTION_67_1();
}

uint64_t _ProtoImageElement.Contact.Avatar.decodeMessage<A>(decoder:)()
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
      sub_26A4248F4();
    }
  }

  return result;
}

uint64_t _ProtoImageElement.Contact.Avatar.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_26();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_20_4(), OUTLINED_FUNCTION_87(), result = sub_26A424A44(), !v1))
  {
    v3 = *(type metadata accessor for _ProtoImageElement.Contact.Avatar(0) + 20);
    return OUTLINED_FUNCTION_19_6();
  }

  return result;
}

uint64_t sub_26A24BDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24BE28(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24BE98()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24BF5C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803707F0);
  __swift_project_value_buffer(v0, qword_2803707F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425EF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "application_bundle_identifier";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_style";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.AppIcon.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_5_6();
      sub_26A0C2EA8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12_7();
      sub_26A424924();
    }
  }

  return result;
}

void _ProtoImageElement.AppIcon.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_84_0();
  if (!v4 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v1))
  {
    if (!OUTLINED_FUNCTION_166_2() || (OUTLINED_FUNCTION_180_2(), sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), sub_26A4249F4(), !v1))
    {
      v5 = *(type metadata accessor for _ProtoImageElement.AppIcon(0) + 24);
      OUTLINED_FUNCTION_19_6();
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A24C2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24C354(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24C3C4()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24C484()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370818);
  __swift_project_value_buffer(v0, qword_280370818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A42DE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "png_data";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_style";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "aspect_ratio";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fixed_height";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "fixed_width";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "dark_mode_png_data";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "asset_data";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.DataMessage.decodeMessage<A>(decoder:)()
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
      case 6:
      case 7:
        OUTLINED_FUNCTION_12_7();
        sub_26A4248C4();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A0C2EA8();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A24C87C();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A24C930();
        break;
      case 5:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D6B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A24C87C()
{
  v0 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 36);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A24C930()
{
  v0 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 40);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

void _ProtoImageElement.DataMessage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  if (sub_26A13BEE8(*v0, *(v2 + 8)) || (OUTLINED_FUNCTION_16_4(), sub_26A424A14(), !v1))
  {
    if (!OUTLINED_FUNCTION_166_2() || (OUTLINED_FUNCTION_180_2(), sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), sub_26A4249F4(), !v1))
    {
      v3 = OUTLINED_FUNCTION_3_5();
      sub_26A24CB24(v3, v4, v5, v6);
      if (!v1)
      {
        v7 = OUTLINED_FUNCTION_3_5();
        sub_26A24CD04(v7, v8, v9, v10);
        v11 = OUTLINED_FUNCTION_3_5();
        sub_26A24DB28(v11, v12, v13, v14, v15);
        if (!sub_26A13BEE8(*(v2 + 32), *(v2 + 40)))
        {
          v16 = *(v2 + 32);
          v17 = *(v2 + 40);
          OUTLINED_FUNCTION_16_4();
          sub_26A424A14();
        }

        if (!sub_26A13BEE8(*(v2 + 48), *(v2 + 56)))
        {
          v18 = *(v2 + 48);
          v19 = *(v2 + 56);
          OUTLINED_FUNCTION_16_4();
          sub_26A424A14();
        }

        v20 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 32);
        OUTLINED_FUNCTION_19_6();
      }
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A24CB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 36);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A24CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 40);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t (*sub_26A24CF3C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_26A24CF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24D010(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24D080()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24D144()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370840);
  __swift_project_value_buffer(v0, qword_280370840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26A429A40;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bundle_id";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image_style";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "aspect_ratio";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "bundle_path";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "fixed_height";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "fixed_width";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "dark_mode_name";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Bundle.decodeMessage<A>(decoder:)()
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
      case 2:
      case 5:
      case 8:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D594();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D5FC();
        break;
      case 6:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D6B0();
        break;
      case 7:
        OUTLINED_FUNCTION_5_6();
        sub_26A24D73C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A24D5FC()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A24D6B0()
{
  OUTLINED_FUNCTION_213_0();
  v1 = *(v0(0) + 44);
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_157_2();
  sub_26A252D48();
  OUTLINED_FUNCTION_246_1();
  return sub_26A424944();
}

uint64_t sub_26A24D73C()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 48);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

void _ProtoImageElement.Bundle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_84_0();
  if (!v5 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v1))
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    OUTLINED_FUNCTION_84_0();
    if (!v8 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v1))
    {
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
      OUTLINED_FUNCTION_180_2();
      if (!_ProtoImageElement.ImageStyle.rawValue.getter() || (OUTLINED_FUNCTION_180_2(), sub_26A252D8C(), OUTLINED_FUNCTION_48_8(), sub_26A4249F4(), !v1))
      {
        v11 = OUTLINED_FUNCTION_3_5();
        sub_26A24D948(v11, v12, v13, v14);
        if (!v1)
        {
          v15 = *(v2 + 48);
          v16 = *(v2 + 56);
          OUTLINED_FUNCTION_84_0();
          if (v17)
          {
            OUTLINED_FUNCTION_16_4();
            sub_26A424A64();
          }

          v18 = OUTLINED_FUNCTION_3_5();
          sub_26A24DB28(v18, v19, v20, v21, v22);
          v23 = OUTLINED_FUNCTION_3_5();
          sub_26A24DCCC(v23, v24, v25, v26);
          v27 = *(v2 + 64);
          v28 = *(v2 + 72);
          OUTLINED_FUNCTION_84_0();
          if (v29)
          {
            OUTLINED_FUNCTION_16_4();
            sub_26A424A64();
          }

          v30 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 36);
          OUTLINED_FUNCTION_19_6();
        }
      }
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A24D948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 40);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A24DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_37_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_173_0();
  v13 = type metadata accessor for _ProtoOptionalBool(0);
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  v17 = *(a5(0) + 44);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v13) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  OUTLINED_FUNCTION_157_2();
  sub_26A252D48();
  sub_26A424A84();
  OUTLINED_FUNCTION_54_9();
  return sub_26A23838C();
}

uint64_t sub_26A24DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Bundle(0) + 48);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t (*sub_26A24DF04(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_26A24DF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A24DFD8(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A24E048()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A24E104()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370868);
  __swift_project_value_buffer(v0, qword_280370868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26A432930;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "source";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "data_loading_image";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21888];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundle_loading_image";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "symbol_loading_image";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "content_mode";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "image_style";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "aspect_ratio";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "fixed_height";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "fixed_width";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "background_color";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "dark_mode_source";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "corner_rounding_mode";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "rendering_mode";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "inset_padding";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t sub_26A24E5D4()
{
  v0 = type metadata accessor for _ProtoImageElement.Url._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26A24E614();
  qword_28157A500 = result;
  return result;
}

uint64_t sub_26A24E614()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  v2 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__aspectRatio;
  v6 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor;
  v10 = type metadata accessor for _ProtoColor(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding) = 0;
  return v0;
}

uint64_t sub_26A24E76C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  OUTLINED_FUNCTION_41(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
  *v25 = 0;
  *(v25 + 8) = 1;
  OUTLINED_FUNCTION_58_10();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = (v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  v53 = (v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  v54 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  *v42 = 0;
  *(v42 + 8) = 1;
  v43 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  v55 = v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  *v43 = 0;
  *(v43 + 8) = 1;
  v56 = (v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
  *(v1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding) = 0;
  OUTLINED_FUNCTION_142();
  v45 = *(a1 + 16);
  v44 = *(a1 + 24);
  OUTLINED_FUNCTION_26_10();
  *(v1 + 16) = v45;
  *(v1 + 24) = v44;
  OUTLINED_FUNCTION_142();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();

  sub_26A252CF0();
  swift_endAccess();
  LOBYTE(v44) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_26_10();
  *v24 = v19;
  *(v24 + 8) = v44;
  LOBYTE(v44) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_26_10();
  *v25 = v19;
  *(v25 + 8) = v44;
  OUTLINED_FUNCTION_142();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A252CF0();
  swift_endAccess();
  OUTLINED_FUNCTION_142();
  sub_26A1E05A8();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_117_1();
  sub_26A252CF0();
  swift_endAccess();
  v46 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
  OUTLINED_FUNCTION_122_1();
  v48 = *v46;
  v47 = v46[1];
  OUTLINED_FUNCTION_26_10();
  v49 = v53[1];
  *v53 = v48;
  v53[1] = v47;

  LOBYTE(v47) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_26_10();
  *v54 = v48;
  *(v54 + 8) = v47;
  LOBYTE(v47) = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_238_1();
  OUTLINED_FUNCTION_26_10();
  *v55 = v48;
  *(v55 + 8) = v47;
  v50 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
  OUTLINED_FUNCTION_122_1();
  v51 = *v50;

  OUTLINED_FUNCTION_26_10();
  *v56 = v51;
  return v1;
}

uint64_t sub_26A24EE0C()
{
  OUTLINED_FUNCTION_45_3();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A24EE84()
{
  v1 = *(v0 + 24);

  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();
  sub_26A13440C();
  v2 = *(v0 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource + 8);

  return v0;
}

uint64_t sub_26A24EF68()
{
  v0 = sub_26A24EE84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A24F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_26A15BAB8();
        continue;
      case 2:
        sub_26A24F2B0(a1, a2, a3, a4);
        continue;
      case 3:
        sub_26A24F804(a1, a2, a3, a4);
        continue;
      case 4:
        sub_26A24FD74(a1, a2, a3, a4);
        continue;
      case 6:
        v11 = sub_26A257CD8;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
        goto LABEL_14;
      case 7:
        v11 = sub_26A252D8C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
        goto LABEL_14;
      case 8:
        sub_26A2502E4();
        continue;
      case 9:
        sub_26A2503C0();
        continue;
      case 10:
        sub_26A25049C();
        continue;
      case 11:
        sub_26A250578();
        continue;
      case 12:
        sub_26A250654();
        continue;
      case 13:
        v11 = sub_26A257C84;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
        goto LABEL_14;
      case 14:
        v11 = sub_26A253AD4;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
LABEL_14:
        sub_26A2506E0(v12, v13, v14, v15, v16, v11);
        break;
      case 15:
        sub_26A250784();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A24F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v39 = a3;
  v38 = a2;
  v5 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B90, &qword_26A4347B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  __swift_storeEnumTagSinglePayload(&v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  swift_beginAccess();
  v33 = a1;
  v31 = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A23838C();
    }

    else
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_26A252D48();
  v28 = v36;
  sub_26A424944();
  if (v28)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v16);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A24F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370B98, &qword_26A4347C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A24FD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  v16 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BA0, &qword_26A4347C8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__loadingImage;
  swift_beginAccess();
  v31[1] = v26;
  sub_26A1E05A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v34 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    v31[0] = a1;
    sub_26A2356C8();
    sub_26A2356C8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A2356C8();
      sub_26A2356C8();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_26A23838C();
    }
  }

  sub_26A252D48();
  v27 = v37;
  sub_26A424944();
  if (v27)
  {
    return sub_26A13440C();
  }

  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A2356C8();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v29 = v34;
  sub_26A13440C();
  v30 = v32;
  sub_26A2356C8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
  swift_beginAccess();
  sub_26A252CF0();
  return swift_endAccess();
}

uint64_t sub_26A2502E4()
{
  swift_beginAccess();
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A2503C0()
{
  swift_beginAccess();
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A25049C()
{
  swift_beginAccess();
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A250578()
{
  swift_beginAccess();
  type metadata accessor for _ProtoColor(0);
  sub_26A252D48();
  sub_26A424944();
  return swift_endAccess();
}

uint64_t sub_26A250654()
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A2506E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_21_8();
  v8 = swift_beginAccess();
  a6(v8);
  sub_26A424894();
  return swift_endAccess();
}

uint64_t sub_26A250784()
{
  swift_beginAccess();
  sub_26A4248D4();
  return swift_endAccess();
}

uint64_t sub_26A250840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  swift_beginAccess();
  v13 = *(a1 + 24);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *(a1 + 24);

    sub_26A424A64();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_26A1E05A8();
  v17 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A250FA4(a1, a2, a3, a4);
      }

      else
      {
        sub_26A2511D8(a1, a2, a3, a4);
      }

      if (v4)
      {
        return sub_26A23838C();
      }

      sub_26A23838C();
    }

    else
    {
      sub_26A250D74(a1, a2, a3, a4);
      result = sub_26A23838C();
      if (v4)
      {
        return result;
      }
    }
  }

  v18 = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  swift_beginAccess();
  if (!*v18 || (v19 = *(v18 + 8), v40 = *v18, v41 = v19, sub_26A257CD8(), result = sub_26A4249F4(), !v4))
  {
    v20 = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle;
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 8);
    v38 = *v20;
    v39 = v22;
    if (!_ProtoImageElement.ImageStyle.rawValue.getter() || (v38 = v21, v39 = v22, sub_26A252D8C(), result = sub_26A4249F4(), !v4))
    {
      result = sub_26A25140C(a1, a2, a3, a4);
      if (!v4)
      {
        sub_26A251600(a1, a2, a3, a4);
        sub_26A2517F4(a1, a2, a3, a4);
        sub_26A2519E8(a1, a2, a3, a4);
        v23 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
        swift_beginAccess();
        v24 = *v23;
        v25 = v23[1];
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = *v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          v27 = v23[1];

          sub_26A424A64();
        }

        v28 = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
        swift_beginAccess();
        if (*v28)
        {
          v29 = *(v28 + 8);
          v36 = *v28;
          v37 = v29;
          sub_26A257C84();
          sub_26A4249F4();
        }

        v30 = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode;
        swift_beginAccess();
        if (*v30)
        {
          v31 = *(v30 + 8);
          v34 = *v30;
          v35 = v31;
          sub_26A253AD4();
          sub_26A4249F4();
        }

        v32 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
        result = swift_beginAccess();
        if (*v32 != 0.0)
        {
          return sub_26A424A24();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A250D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A250FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Bundle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A2511D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Symbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  v10 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A2356C8();
      sub_26A252D48();
      sub_26A424A84();
      return sub_26A23838C();
    }

    result = sub_26A23838C();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A25140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A251600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A2517F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoOptionalBool(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

uint64_t sub_26A2519E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoColor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

BOOL sub_26A251BDC(uint64_t a1, uint64_t a2)
{
  v131 = type metadata accessor for _ProtoColor(0);
  v5 = OUTLINED_FUNCTION_12(v131);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163_1();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370908, &qword_26A432968);
  OUTLINED_FUNCTION_12(v130);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_59_7();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v16 = OUTLINED_FUNCTION_45();
  v136 = type metadata accessor for _ProtoOptionalBool(v16);
  v17 = OUTLINED_FUNCTION_12(v136);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036FBC8, &unk_26A42EA70);
  v21 = OUTLINED_FUNCTION_12(v135);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v26 = OUTLINED_FUNCTION_41(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v132 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  v133 = v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_48();
  v34 = OUTLINED_FUNCTION_45();
  v139 = type metadata accessor for _ProtoImageElement.AspectRatio(v34);
  v35 = OUTLINED_FUNCTION_12(v139);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v134 = v38;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803708F8, &qword_26A432948);
  OUTLINED_FUNCTION_12(v138);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_42();
  v140 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v44 = OUTLINED_FUNCTION_41(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8();
  v137 = v47;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_48();
  v49 = OUTLINED_FUNCTION_45();
  v141 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(v49);
  v50 = OUTLINED_FUNCTION_12(v141);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280370BD8, &qword_26A434808);
  OUTLINED_FUNCTION_12(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_27_0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  v58 = OUTLINED_FUNCTION_41(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_142();
  v62 = *(a1 + 16);
  v63 = *(a1 + 24);
  OUTLINED_FUNCTION_142();
  v64 = v62 == *(a2 + 16) && v63 == *(a2 + 24);
  if (v64 || (v65 = sub_26A425354(), result = 0, (v65 & 1) != 0))
  {
    OUTLINED_FUNCTION_142();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_142();
    v67 = *(v53 + 48);
    OUTLINED_FUNCTION_234_1();
    sub_26A1E05A8();
    sub_26A1E05A8();
    OUTLINED_FUNCTION_37(v2, 1, v141);
    if (v64)
    {

      sub_26A13440C();
      OUTLINED_FUNCTION_23(v2 + v67);
      if (!v64)
      {
        goto LABEL_14;
      }

      sub_26A13440C();
    }

    else
    {
      sub_26A1E05A8();
      OUTLINED_FUNCTION_23(v2 + v67);
      if (v68)
      {

        sub_26A13440C();
        OUTLINED_FUNCTION_155_2();
        sub_26A23838C();
        goto LABEL_14;
      }

      sub_26A2356C8();

      static _ProtoImageElement.Url.OneOf_LoadingImage.== infix(_:_:)();
      v70 = v69;
      sub_26A23838C();
      OUTLINED_FUNCTION_124();
      sub_26A13440C();
      OUTLINED_FUNCTION_12_2();
      sub_26A23838C();
      sub_26A13440C();
      if ((v70 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v71 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode);
    OUTLINED_FUNCTION_135_2();
    v72 = *v71;
    v73 = *(v71 + 8);
    OUTLINED_FUNCTION_135_2();
    OUTLINED_FUNCTION_242_0();
    if (!v73)
    {
      v75 = v72;
    }

    if (v76 == 1)
    {
      if (v74)
      {
        if (v75 != 1)
        {
          goto LABEL_15;
        }
      }

      else if (v75)
      {
        goto LABEL_15;
      }
    }

    else if (v75 != v74)
    {
      goto LABEL_15;
    }

    v77 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle);
    OUTLINED_FUNCTION_135_2();
    v78 = *v77;
    v79 = *(v77 + 8);
    v80 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__imageStyle);
    OUTLINED_FUNCTION_135_2();
    v142 = *v80;
    v143 = *(v80 + 8);
    v81 = _ProtoImageElement.ImageStyle.rawValue.getter();
    if (v81 != _ProtoImageElement.ImageStyle.rawValue.getter())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_142();
    v82 = *(v138 + 48);
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_19(v140, 1);
    if (v64)
    {
      sub_26A13440C();
      OUTLINED_FUNCTION_9(v140 + v82);
      if (!v64)
      {
        goto LABEL_14;
      }

      sub_26A13440C();
      goto LABEL_33;
    }

    sub_26A1E05A8();
    OUTLINED_FUNCTION_9(v140 + v82);
    if (!v95)
    {
      sub_26A2356C8();
      if (*v137 != *v134 || v137[1] != v134[1])
      {
        sub_26A23838C();
        OUTLINED_FUNCTION_217_0();
        sub_26A13440C();
LABEL_68:
        sub_26A23838C();
        OUTLINED_FUNCTION_125();
        goto LABEL_14;
      }

      v96 = *(v139 + 24);
      sub_26A424794();
      OUTLINED_FUNCTION_0_38();
      sub_26A252D48();
      v97 = sub_26A424B64();
      sub_26A23838C();
      OUTLINED_FUNCTION_167_0();
      sub_26A13440C();
      OUTLINED_FUNCTION_105();
      sub_26A23838C();
      OUTLINED_FUNCTION_12_2();
      sub_26A13440C();
      if ((v97 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_33:
      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_182_2();
      sub_26A1E05A8();
      v83 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedHeight;
      OUTLINED_FUNCTION_142();
      v84 = *(v135 + 48);
      OUTLINED_FUNCTION_182_2();
      sub_26A1E05A8();
      OUTLINED_FUNCTION_169_2();
      v85 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_19(v85, v86);
      if (v64)
      {
        sub_26A13440C();
        OUTLINED_FUNCTION_9(v83 + v84);
        if (!v64)
        {
          goto LABEL_14;
        }

        sub_26A13440C();
      }

      else
      {
        sub_26A1E05A8();
        OUTLINED_FUNCTION_9(v83 + v84);
        if (v98)
        {
LABEL_63:
          sub_26A13440C();
          OUTLINED_FUNCTION_54_9();
          sub_26A23838C();
          goto LABEL_14;
        }

        sub_26A2356C8();
        v99 = *v133;
        OUTLINED_FUNCTION_231_1();
        if (!v100)
        {
          goto LABEL_67;
        }

        v102 = *(v136 + 20);
        sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        v103 = OUTLINED_FUNCTION_253_1();
        sub_26A23838C();
        sub_26A13440C();
        OUTLINED_FUNCTION_217_0();
        sub_26A23838C();
        OUTLINED_FUNCTION_12_2();
        sub_26A13440C();
        if ((v103 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_187_2();
      sub_26A1E05A8();
      v87 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__fixedWidth;
      OUTLINED_FUNCTION_142();
      v88 = *(v135 + 48);
      OUTLINED_FUNCTION_182_2();
      sub_26A1E05A8();
      OUTLINED_FUNCTION_169_2();
      v89 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_19(v89, v90);
      if (v64)
      {
        sub_26A13440C();
        OUTLINED_FUNCTION_9(v87 + v88);
        if (!v64)
        {
          goto LABEL_14;
        }

        sub_26A13440C();
        goto LABEL_43;
      }

      sub_26A1E05A8();
      OUTLINED_FUNCTION_9(v87 + v88);
      if (!v101)
      {
        sub_26A2356C8();
        v104 = *v132;
        OUTLINED_FUNCTION_231_1();
        if (!v105)
        {
LABEL_67:
          sub_26A23838C();
          sub_26A13440C();
          goto LABEL_68;
        }

        v107 = *(v136 + 20);
        v108 = sub_26A424794();
        OUTLINED_FUNCTION_0_38();
        sub_26A252D48();
        OUTLINED_FUNCTION_253_1();
        OUTLINED_FUNCTION_12_15();
        sub_26A23838C();
        OUTLINED_FUNCTION_167_0();
        sub_26A13440C();
        OUTLINED_FUNCTION_105();
        sub_26A23838C();
        OUTLINED_FUNCTION_12_2();
        sub_26A13440C();
        if ((v108 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_43:
        OUTLINED_FUNCTION_142();
        OUTLINED_FUNCTION_189_2();
        v91 = OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__backgroundColor;
        OUTLINED_FUNCTION_142();
        v92 = *(v130 + 48);
        OUTLINED_FUNCTION_182_2();
        sub_26A1E05A8();
        OUTLINED_FUNCTION_169_2();
        v93 = OUTLINED_FUNCTION_166_1();
        OUTLINED_FUNCTION_19(v93, v94);
        if (v64)
        {
          sub_26A13440C();
          OUTLINED_FUNCTION_9(v91 + v92);
          if (!v64)
          {
            goto LABEL_14;
          }

          sub_26A13440C();
        }

        else
        {
          sub_26A1E05A8();
          OUTLINED_FUNCTION_9(v91 + v92);
          if (v106)
          {
            sub_26A13440C();
            OUTLINED_FUNCTION_152_2();
            sub_26A23838C();
            goto LABEL_14;
          }

          sub_26A2356C8();
          OUTLINED_FUNCTION_126();
          v109 = static _ProtoColor.== infix(_:_:)();
          OUTLINED_FUNCTION_151_2();
          sub_26A23838C();
          OUTLINED_FUNCTION_167_0();
          sub_26A13440C();
          OUTLINED_FUNCTION_105();
          sub_26A23838C();
          OUTLINED_FUNCTION_12_2();
          sub_26A13440C();
          if ((v109 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v110 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
        OUTLINED_FUNCTION_142();
        v111 = *v110;
        v112 = v110[1];
        v113 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__darkModeSource);
        OUTLINED_FUNCTION_142();
        v114 = v111 == *v113 && v112 == v113[1];
        if (!v114 && (sub_26A425354() & 1) == 0)
        {
          goto LABEL_15;
        }

        v115 = a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
        OUTLINED_FUNCTION_135_2();
        v116 = *v115;
        v117 = *(v115 + 8);
        v118 = a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__cornerRoundingMode;
        OUTLINED_FUNCTION_142();
        v119 = *(v118 + 8);
        if (!sub_26A0C2CA8(v116, v117, *v118))
        {
          goto LABEL_15;
        }

        v120 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__renderingMode);
        OUTLINED_FUNCTION_135_2();
        v121 = *v120;
        v122 = *(v120 + 8);
        OUTLINED_FUNCTION_135_2();
        OUTLINED_FUNCTION_242_0();
        if (!v122)
        {
          v124 = v121;
        }

        if (v125 == 1)
        {
          if (v123)
          {
            if (v124 != 1)
            {
              goto LABEL_15;
            }
          }

          else if (v124)
          {
            goto LABEL_15;
          }
        }

        else if (v124 != v123)
        {
          goto LABEL_15;
        }

        v126 = (a1 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
        OUTLINED_FUNCTION_135_2();
        v127 = *v126;

        v128 = (a2 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__insetPadding);
        OUTLINED_FUNCTION_135_2();
        v129 = *v128;

        return v127 == v129;
      }

      goto LABEL_63;
    }

    sub_26A13440C();
    OUTLINED_FUNCTION_24_19();
    sub_26A23838C();
LABEL_14:
    sub_26A13440C();
LABEL_15:

    return 0;
  }

  return result;
}

uint64_t sub_26A252CF0()
{
  OUTLINED_FUNCTION_45_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

unint64_t sub_26A252D48()
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

unint64_t sub_26A252D8C()
{
  result = qword_280370958;
  if (!qword_280370958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370958);
  }

  return result;
}

uint64_t sub_26A252E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A252EE0(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A252F50()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A253014()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280370890);
  __swift_project_value_buffer(v0, qword_280370890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26A42B0D0;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26A424A94();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "tint_color";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21888];
  v7();
  v10 = (v25 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "image_style";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rendering_mode";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "dark_mode_name";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "background";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "punches_through_background";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "symbol_rendering_mode";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "vibrancy";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v7();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Symbol.decodeMessage<A>(decoder:)()
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
      case 5:
        OUTLINED_FUNCTION_12_7();
        sub_26A424924();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A2534A4();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A0C2EA8();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A253558();
        break;
      case 6:
        OUTLINED_FUNCTION_5_6();
        sub_26A2535C0();
        break;
      case 7:
        OUTLINED_FUNCTION_12_7();
        sub_26A424874();
        break;
      case 8:
        OUTLINED_FUNCTION_5_6();
        sub_26A253674();
        break;
      case 9:
        OUTLINED_FUNCTION_5_6();
        sub_26A2536DC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A2534A4()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
  type metadata accessor for _ProtoColor(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A2535C0()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
  type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  sub_26A252D48();
  return sub_26A424944();
}

void _ProtoImageElement.Symbol.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_247_1();
  OUTLINED_FUNCTION_1_26();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_84_0();
  if (!v5 || (OUTLINED_FUNCTION_16_4(), sub_26A424A64(), !v1))
  {
    v6 = OUTLINED_FUNCTION_3_5();
    sub_26A2538F4(v6, v7, v8, v9);
    if (!v1)
    {
      if (OUTLINED_FUNCTION_166_2())
      {
        OUTLINED_FUNCTION_180_2();
        sub_26A252D8C();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      if (*(v2 + 32))
      {
        v10 = *(v2 + 40);
        OUTLINED_FUNCTION_237_1();
        sub_26A253AD4();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      v11 = *(v2 + 48);
      v12 = *(v2 + 56);
      OUTLINED_FUNCTION_84_0();
      if (v13)
      {
        OUTLINED_FUNCTION_16_4();
        sub_26A424A64();
      }

      v14 = OUTLINED_FUNCTION_3_5();
      sub_26A253B28(v14, v15, v16, v17);
      if (*(v2 + 64) == 1)
      {
        OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_87();
        sub_26A4249E4();
      }

      if (*(v2 + 72))
      {
        v18 = *(v2 + 80);
        OUTLINED_FUNCTION_237_1();
        sub_26A253D08();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      if (*(v2 + 88))
      {
        v19 = *(v2 + 96);
        OUTLINED_FUNCTION_237_1();
        sub_26A14CD6C();
        OUTLINED_FUNCTION_48_8();
        sub_26A4249F4();
      }

      v20 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 44);
      OUTLINED_FUNCTION_19_6();
    }
  }

  OUTLINED_FUNCTION_248_1();
}

uint64_t sub_26A2538F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoColor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 48);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

unint64_t sub_26A253AD4()
{
  result = qword_280370980;
  if (!qword_280370980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370980);
  }

  return result;
}

uint64_t sub_26A253B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4C8, &qword_26A428228);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoImageElement.Symbol.Background(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for _ProtoImageElement.Symbol(0) + 52);
  sub_26A1E05A8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A2356C8();
  sub_26A252D48();
  sub_26A424A84();
  return sub_26A23838C();
}

unint64_t sub_26A253D08()
{
  result = qword_280370988;
  if (!qword_280370988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280370988);
  }

  return result;
}

uint64_t sub_26A253DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A252D48();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A253E64(uint64_t a1)
{
  v2 = sub_26A252D48();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A253ED4()
{
  sub_26A252D48();

  return sub_26A4249B4();
}

uint64_t sub_26A253F54()
{
  if (qword_28036C390 != -1)
  {
    swift_once();
  }

  v1 = qword_280370880;
  v2 = *algn_280370888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x26D65BA70](0x6F72676B6361422ELL, 0xEB00000000646E75);

  qword_2803708A8 = v1;
  unk_2803708B0 = v2;
  return result;
}

uint64_t sub_26A254020()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_2803708B8);
  __swift_project_value_buffer(v0, qword_2803708B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "color";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aspect_ratio";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "fixed_height";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "fixed_width";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoImageElement.Symbol.Background.decodeMessage<A>(decoder:)()
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
        sub_26A254330();
        break;
      case 2:
        OUTLINED_FUNCTION_5_6();
        sub_26A2543E4();
        break;
      case 3:
        OUTLINED_FUNCTION_5_6();
        sub_26A254498();
        break;
      case 4:
        OUTLINED_FUNCTION_5_6();
        sub_26A25454C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A254330()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 20);
  type metadata accessor for _ProtoColor(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A2543E4()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 24);
  type metadata accessor for _ProtoImageElement.AspectRatio(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A254498()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 28);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t sub_26A25454C()
{
  v0 = *(type metadata accessor for _ProtoImageElement.Symbol.Background(0) + 32);
  type metadata accessor for _ProtoOptionalBool(0);
  sub_26A252D48();
  return sub_26A424944();
}

uint64_t _ProtoImageElement.Symbol.Background.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_185_2();
  OUTLINED_FUNCTION_12_7();
  result = sub_26A254688(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_12_7();
    sub_26A254868(v9, v10, v11, a3);
    OUTLINED_FUNCTION_12_7();
    sub_26A254A48(v12, v13, v14, a3);
    OUTLINED_FUNCTION_12_7();
    sub_26A254C28(v15, v16, v17, a3);
    OUTLINED_FUNCTION_103();
    return sub_26A424774();
  }

  return result;
}