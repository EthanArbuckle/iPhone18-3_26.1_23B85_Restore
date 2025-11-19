void sub_1B9513F0C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_1B9514768((*a1)[4], v10, a5);
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B9514524(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_187_1();
    sub_1B95147C4();
  }

  else
  {
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B9514524(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_187_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t Searchfoundation_MetaInfoCardSection.hasContentURL.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_9_39();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 60));
  OUTLINED_FUNCTION_63_4(v5, v6);
  v7 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearContentURL()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.hostPageURL.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_39();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 64));
  OUTLINED_FUNCTION_28_2(v6, v7);
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    v9 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v9, v10, v11);
  }

  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.hostPageURL.setter()
{
  OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 64), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_0_103();
  OUTLINED_FUNCTION_51_15(v2, v3, v4);
  type metadata accessor for Searchfoundation_URL();
  v5 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_MetaInfoCardSection.hostPageURL.modify())(uint64_t **, char)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Searchfoundation_URL();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *(OUTLINED_FUNCTION_30_30(v11) + 64);
  *(v0 + 40) = v12;
  v13 = OUTLINED_FUNCTION_115(v12);
  sub_1B8DD9078(v13, v14, &qword_1EBAB8E20, &unk_1B964D620);
  v15 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v15, v16, v6);
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v6);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    sub_1B9514524(v5, v8, v20);
  }

  return sub_1B9516DA8;
}

uint64_t Searchfoundation_MetaInfoCardSection.hasHostPageURL.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_9_39();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 64));
  OUTLINED_FUNCTION_63_4(v5, v6);
  v7 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearHostPageURL()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 64), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_39();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 68));
  OUTLINED_FUNCTION_28_2(v8, v9);
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v10 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *(a1 + v12) = qword_1EBAB5608;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_73();
    v16 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v16, v17, v18);
  }

  return result;
}

uint64_t sub_1B9514524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t Searchfoundation_MetaInfoCardSection.badge.setter()
{
  OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 68), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_3_73();
  OUTLINED_FUNCTION_51_15(v2, v3, v4);
  type metadata accessor for Searchfoundation_Image(0);
  v5 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_MetaInfoCardSection.badge.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Searchfoundation_Image(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_30_30(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 68));
  OUTLINED_FUNCTION_178(v5, 1, v7);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v7 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_73();
    sub_1B9514524(v5, v9, v16);
  }

  return sub_1B9514740;
}

uint64_t sub_1B9514768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t sub_1B95147C4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_MetaInfoCardSection.hasBadge.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_9_39();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 68));
  OUTLINED_FUNCTION_63_4(v5, v6);
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearBadge()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 68), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 52);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 52);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Searchfoundation_MetaInfoCardSection.unknownFields.modify())()
{
  OUTLINED_FUNCTION_313();
  v0 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 52);
  return nullsub_1;
}

uint64_t sub_1B9514A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD00A8);
  __swift_project_value_buffer(v0, qword_1EBAD00A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "trending";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "contentURL";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "hostPageURL";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "badge";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MetaInfoCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD00A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MetaInfoCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9515098();
        break;
      case 2:
      case 3:
      case 7:
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
LABEL_10:
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B9515138();
        break;
      default:
        switch(result)
        {
          case '3':
            goto LABEL_10;
          case '4':
            OUTLINED_FUNCTION_9();
            sub_1B95151EC();
            break;
          case '5':
            OUTLINED_FUNCTION_9();
            sub_1B95152A0();
            break;
          case '6':
            OUTLINED_FUNCTION_9();
            sub_1B9515354();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B9515098()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B9516D60(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B9515138()
{
  v0 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 56);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B9516D60(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B95151EC()
{
  v0 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 60);
  type metadata accessor for Searchfoundation_URL();
  sub_1B9516D60(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B95152A0()
{
  v0 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 64);
  type metadata accessor for Searchfoundation_URL();
  sub_1B9516D60(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B9515354()
{
  v0 = *(type metadata accessor for Searchfoundation_MetaInfoCardSection() + 68);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9516D60(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MetaInfoCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v78 - v10;
  v12 = type metadata accessor for Searchfoundation_Image(0);
  v13 = OUTLINED_FUNCTION_59_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v20 = OUTLINED_FUNCTION_183(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v85 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v78 - v25;
  v26 = type metadata accessor for Searchfoundation_URL();
  v27 = OUTLINED_FUNCTION_59_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44_0();
  v81 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  v82 = &v78 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  v86 = &v78 - v37;
  v87 = type metadata accessor for Searchfoundation_Color(0);
  v38 = OUTLINED_FUNCTION_59_1(v87);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  v83 = v42 - v41;
  if (*(*v3 + 16))
  {
    v80 = v26;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B9516D60(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    v43 = v90;
    result = sub_1B964C730();
    if (v43)
    {
      return result;
    }

    v4 = v3;
    v26 = v80;
  }

  else
  {
    v43 = v90;
  }

  v45 = *(v4 + 8);
  v46 = *(v4 + 16);
  OUTLINED_FUNCTION_1();
  if (!v47 || (result = OUTLINED_FUNCTION_37_15(), !v43))
  {
    v48 = *(v4 + 24);
    v49 = *(v4 + 32);
    OUTLINED_FUNCTION_1();
    if (!v50 || (result = OUTLINED_FUNCTION_37_15(), !v43))
    {
      if (*(v4 + 40) != 1 || (result = OUTLINED_FUNCTION_38_12(), !v43))
      {
        if (*(v4 + 41) != 1 || (result = OUTLINED_FUNCTION_38_12(), !v43))
        {
          if (*(v4 + 42) != 1 || (result = OUTLINED_FUNCTION_38_12(), !v43))
          {
            v51 = *(v4 + 48);
            v52 = *(v4 + 56);
            OUTLINED_FUNCTION_1();
            if (!v53 || (result = OUTLINED_FUNCTION_37_15(), !v43))
            {
              v80 = v26;
              v54 = v43;
              if (*(v4 + 64))
              {
                v55 = *(v4 + 72);
                v88 = *(v4 + 64);
                v89 = v55;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_34_14();
                result = sub_1B964C680();
                if (v43)
                {
                  return result;
                }

                v54 = 0;
              }

              v90 = a3;
              v79 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
              v56 = v86;
              sub_1B8DD9078(v4 + v79[14], v86, &qword_1EBACB050, &unk_1B96B7BD0);
              v57 = OUTLINED_FUNCTION_443();
              if (__swift_getEnumTagSinglePayload(v57, v58, v87) == 1)
              {
                v87 = v11;
                sub_1B8D9207C(v56, &qword_1EBACB050, &unk_1B96B7BD0);
                v43 = v54;
              }

              else
              {
                OUTLINED_FUNCTION_1_85();
                v78 = v59;
                sub_1B9514524(v56, v83, v60);
                sub_1B9516D60(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                OUTLINED_FUNCTION_34_14();
                sub_1B964C740();
                result = sub_1B95147C4();
                if (v43)
                {
                  return result;
                }

                v87 = v11;
              }

              v62 = v84;
              v61 = v85;
              v63 = v90;
              if (*(v4 + 73) != 1 || (result = sub_1B964C670(), !v43))
              {
                v90 = v63;
                v64 = v43;
                sub_1B8DD9078(v4 + v79[15], v62, &qword_1EBAB8E20, &unk_1B964D620);
                v65 = OUTLINED_FUNCTION_443();
                if (__swift_getEnumTagSinglePayload(v65, v66, v80) == 1)
                {
                  sub_1B8D9207C(v62, &qword_1EBAB8E20, &unk_1B964D620);
                }

                else
                {
                  v86 = v18;
                  v84 = v12;
                  sub_1B9514524(v62, v82, type metadata accessor for Searchfoundation_URL);
                  OUTLINED_FUNCTION_17_28();
                  sub_1B9516D60(v67, v68);
                  OUTLINED_FUNCTION_34_14();
                  sub_1B964C740();
                  result = sub_1B95147C4();
                  if (v43)
                  {
                    return result;
                  }

                  v64 = 0;
                  v12 = v84;
                  v18 = v86;
                }

                sub_1B8DD9078(v4 + v79[16], v61, &qword_1EBAB8E20, &unk_1B964D620);
                OUTLINED_FUNCTION_31_25();
                if (__swift_getEnumTagSinglePayload(v69, v70, v71) == 1)
                {
                  sub_1B8D9207C(v61, &qword_1EBAB8E20, &unk_1B964D620);
                }

                else
                {
                  sub_1B9514524(v61, v81, type metadata accessor for Searchfoundation_URL);
                  OUTLINED_FUNCTION_17_28();
                  sub_1B9516D60(v72, v73);
                  sub_1B964C740();
                  result = sub_1B95147C4();
                  if (v64)
                  {
                    return result;
                  }

                  v64 = 0;
                }

                v74 = v87;
                sub_1B8DD9078(v4 + v79[17], v87, &qword_1EBAB8EA8, &unk_1B96B77D0);
                v75 = OUTLINED_FUNCTION_443();
                if (__swift_getEnumTagSinglePayload(v75, v76, v12) == 1)
                {
                  sub_1B8D9207C(v74, &qword_1EBAB8EA8, &unk_1B96B77D0);
                }

                else
                {
                  sub_1B9514524(v74, v18, type metadata accessor for Searchfoundation_Image);
                  sub_1B9516D60(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
                  sub_1B964C740();
                  result = sub_1B95147C4();
                  if (v64)
                  {
                    return result;
                  }
                }

                v77 = v4 + v79[13];
                OUTLINED_FUNCTION_186();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MetaInfoCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v149 = type metadata accessor for Searchfoundation_Image(0);
  v2 = OUTLINED_FUNCTION_59_1(v149);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v145 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v143 - v11;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1(v148);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v143 - v15;
  v154 = type metadata accessor for Searchfoundation_URL();
  v16 = OUTLINED_FUNCTION_59_1(v154);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v146 = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  v152 = (&v143 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v23 = OUTLINED_FUNCTION_183(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  v151 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v143 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  v153 = v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v143 - v36;
  v38 = type metadata accessor for Searchfoundation_Color(0);
  v39 = OUTLINED_FUNCTION_59_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v143 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v143 - v55;
  v57 = *v1;
  v58 = *v0;
  sub_1B8D67B1C();
  if ((v59 & 1) == 0)
  {
    goto LABEL_32;
  }

  v60 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v60 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v61 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_32;
  }

  v62 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v62 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v63 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_32;
  }

  v64 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  v65 = *(v64 + 56);
  v143 = v64;
  v144 = v65;
  v66 = *(v51 + 48);
  sub_1B8DD9078(v1 + v65, v56, &qword_1EBACB050, &unk_1B96B7BD0);
  v67 = v0 + v144;
  v144 = v66;
  sub_1B8DD9078(v67, &v56[v66], &qword_1EBACB050, &unk_1B96B7BD0);
  v68 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v68, v69, v38);
  if (v60)
  {
    OUTLINED_FUNCTION_178(&v56[v144], 1, v38);
    if (v60)
    {
      sub_1B8D9207C(v56, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  sub_1B8DD9078(v56, v50, &qword_1EBACB050, &unk_1B96B7BD0);
  v70 = v144;
  OUTLINED_FUNCTION_178(&v56[v144], 1, v38);
  if (v71)
  {
    sub_1B95147C4();
LABEL_29:
    v72 = &qword_1EBACB058;
    v73 = &unk_1B96CA9D0;
LABEL_30:
    v74 = v56;
LABEL_31:
    sub_1B8D9207C(v74, v72, v73);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_1_85();
  sub_1B9514524(&v56[v70], v44, v77);
  v78 = *(v38 + 20);
  if (*&v50[v78] != *(v44 + v78))
  {
    v79 = *&v50[v78];

    sub_1B947FDE4();
    LODWORD(v144) = v80;

    if ((v144 & 1) == 0)
    {
      sub_1B95147C4();
      sub_1B95147C4();
      v72 = &qword_1EBACB050;
      v73 = &unk_1B96B7BD0;
      goto LABEL_30;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v81, v82);
  OUTLINED_FUNCTION_186();
  v83 = sub_1B964C850();
  sub_1B95147C4();
  sub_1B95147C4();
  sub_1B8D9207C(v56, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v83 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_37:
  if (*(v1 + 73) != *(v0 + 73))
  {
    goto LABEL_32;
  }

  v84 = v143[15];
  v85 = *(v30 + 48);
  OUTLINED_FUNCTION_36_11(v1 + v84, v37);
  OUTLINED_FUNCTION_36_11(v0 + v84, &v37[v85]);
  v86 = v154;
  OUTLINED_FUNCTION_178(v37, 1, v154);
  if (v60)
  {
    OUTLINED_FUNCTION_31_25();
    OUTLINED_FUNCTION_178(v87, v88, v89);
    if (v60)
    {
      sub_1B8D9207C(v37, &qword_1EBAB8E20, &unk_1B964D620);
      goto LABEL_55;
    }

    goto LABEL_46;
  }

  sub_1B8DD9078(v37, v29, &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v90, v91, v92);
  if (v93)
  {
    OUTLINED_FUNCTION_19_27();
    sub_1B95147C4();
LABEL_46:
    v72 = &qword_1EBAB8E28;
    v73 = &unk_1B96B7BB0;
LABEL_47:
    v74 = v37;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_103();
  v94 = &v37[v85];
  v95 = v152;
  sub_1B9514524(v94, v152, v96);
  v97 = *v29 == *v95 && v29[1] == v95[1];
  if (!v97 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_18_27();
    sub_1B95147C4();
    sub_1B95147C4();
    v72 = &qword_1EBAB8E20;
    v73 = &unk_1B964D620;
    goto LABEL_47;
  }

  v98 = *(v86 + 20);
  v99 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v100, v101);
  sub_1B964C850();
  OUTLINED_FUNCTION_16_34();
  sub_1B95147C4();
  sub_1B95147C4();
  sub_1B8D9207C(v37, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v99 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_55:
  v102 = v143[16];
  v103 = *(v30 + 48);
  v104 = v153;
  OUTLINED_FUNCTION_36_11(v1 + v102, v153);
  OUTLINED_FUNCTION_36_11(v0 + v102, v104 + v103);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v105, v106, v107);
  if (v60)
  {
    OUTLINED_FUNCTION_31_25();
    OUTLINED_FUNCTION_178(v108, v109, v110);
    if (v60)
    {
      sub_1B8D9207C(v104, &qword_1EBAB8E20, &unk_1B964D620);
      goto LABEL_71;
    }

    goto LABEL_63;
  }

  v111 = v151;
  sub_1B8DD9078(v104, v151, &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_31_25();
  OUTLINED_FUNCTION_178(v112, v113, v114);
  if (v115)
  {
    OUTLINED_FUNCTION_19_27();
    sub_1B95147C4();
LABEL_63:
    v72 = &qword_1EBAB8E28;
    v73 = &unk_1B96B7BB0;
LABEL_64:
    v74 = v104;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_0_103();
  v116 = v104 + v103;
  v117 = v146;
  sub_1B9514524(v116, v146, v118);
  v119 = *v111 == *v117 && v111[1] == v117[1];
  if (!v119 && (sub_1B964C9F0() & 1) == 0)
  {
    OUTLINED_FUNCTION_18_27();
    sub_1B95147C4();
    sub_1B95147C4();
    v72 = &qword_1EBAB8E20;
    v73 = &unk_1B964D620;
    goto LABEL_64;
  }

  v120 = *(v86 + 20);
  v121 = sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v122, v123);
  sub_1B964C850();
  OUTLINED_FUNCTION_16_34();
  sub_1B95147C4();
  sub_1B95147C4();
  sub_1B8D9207C(v104, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v121 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_71:
  v124 = v143[17];
  v125 = *(v148 + 48);
  v126 = v150;
  OUTLINED_FUNCTION_36_11(v1 + v124, v150);
  v127 = v0 + v124;
  v128 = v126;
  OUTLINED_FUNCTION_36_11(v127, v126 + v125);
  v129 = v149;
  OUTLINED_FUNCTION_178(v126, 1, v149);
  if (v60)
  {
    OUTLINED_FUNCTION_178(v126 + v125, 1, v129);
    if (v60)
    {
      sub_1B8D9207C(v126, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_85:
      v140 = v143[13];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_68();
      sub_1B9516D60(v141, v142);
      v75 = sub_1B964C850();
      return v75 & 1;
    }

    goto LABEL_80;
  }

  v130 = v147;
  sub_1B8DD9078(v126, v147, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_178(v126 + v125, 1, v129);
  if (v131)
  {
    sub_1B95147C4();
LABEL_80:
    v72 = &qword_1EBAB8EB0;
    v73 = &qword_1B964D6B0;
LABEL_81:
    v74 = v128;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_3_73();
  v132 = v126 + v125;
  v133 = v145;
  sub_1B9514524(v132, v145, v134);
  if (*(v130 + *(v129 + 20)) != *(v133 + *(v129 + 20)))
  {

    sub_1B94C6890();
    v136 = v135;

    if ((v136 & 1) == 0)
    {
      sub_1B95147C4();
      sub_1B95147C4();
      v72 = &qword_1EBAB8EA8;
      v73 = &unk_1B96B77D0;
      goto LABEL_81;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_68();
  sub_1B9516D60(v137, v138);
  v139 = sub_1B964C850();
  sub_1B95147C4();
  OUTLINED_FUNCTION_186();
  sub_1B95147C4();
  sub_1B8D9207C(v128, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v139)
  {
    goto LABEL_85;
  }

LABEL_32:
  v75 = 0;
  return v75 & 1;
}

uint64_t Searchfoundation_MetaInfoCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B9516D60(&qword_1EBAD00C0, type metadata accessor for Searchfoundation_MetaInfoCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9516888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9516D60(&qword_1EBAD00D8, type metadata accessor for Searchfoundation_MetaInfoCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9516908(uint64_t a1)
{
  v2 = sub_1B9516D60(&qword_1EBACE6D8, type metadata accessor for Searchfoundation_MetaInfoCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9516978()
{
  sub_1B9516D60(&qword_1EBACE6D8, type metadata accessor for Searchfoundation_MetaInfoCardSection);

  return sub_1B964C5D0();
}

void sub_1B9516B40()
{
  sub_1B9516CFC(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9516CFC(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9516CFC(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B9516CFC(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B9516CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9516D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_39()
{

  return type metadata accessor for Searchfoundation_MetaInfoCardSection();
}

uint64_t OUTLINED_FUNCTION_30_30(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Searchfoundation_MetaInfoCardSection();
}

uint64_t OUTLINED_FUNCTION_37_15()
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return sub_1B964C670();
}

uint64_t OUTLINED_FUNCTION_51_15(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1B9514524(v3, v4 + v5, a3);
}

uint64_t Searchfoundation_MiniCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20);
  if (qword_1EBAB8600 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAD00F8;
}

uint64_t Searchfoundation_MiniCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B9517008(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_MiniCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_MiniCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MiniCardSection(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_MiniCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B951711C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Searchfoundation_MiniCardSection.punchoutOptions.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_7_44();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B951972C(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9517210(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MiniCardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_9_40();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 32);
  *(v5 + 24) = v2;
  *(v5 + 32) = v0;
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9517334(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_MiniCardSection.punchoutPickerTitle.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_7_44();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B951972C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 32);
    *(v10 + 24) = v4;
    *(v10 + 32) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9517418(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MiniCardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_9_40();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;
}

uint64_t Searchfoundation_MiniCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951753C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_MiniCardSection.punchoutPickerDismissText.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_7_44();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B951972C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 48);
    *(v10 + 40) = v4;
    *(v10 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

uint64_t Searchfoundation_MiniCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_32_24();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B951972C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.canBeHidden.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95176E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_44();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B951972C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 57);
}

uint64_t Searchfoundation_MiniCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_32_24();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B951972C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.hasTopPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9517864(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_44();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B951972C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_74();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 58);
}

uint64_t Searchfoundation_MiniCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_32_24();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B951972C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.hasBottomPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95179E8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_44();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B951972C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.type.getter()
{
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9517AAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MiniCardSection.type.setter();
}

uint64_t Searchfoundation_MiniCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_9_40();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;
}

uint64_t Searchfoundation_MiniCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9517BD0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_MiniCardSection.type.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_7_44();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B951972C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 72);
    *(v10 + 64) = v4;
    *(v10 + 72) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_69();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B9517CB8@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_MiniCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9517CFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_MiniCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_MiniCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_9_40();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B951972C(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_MiniCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_74();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9517E24(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_7_44();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B951972C(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_18();
  *(v8 + 80) = v2;
  *(v8 + 88) = v5;

  free(v1);
}

uint64_t Searchfoundation_MiniCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_MiniCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_40();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95182A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B92D6A80();
  return a7(v13);
}

uint64_t Searchfoundation_MiniCardSection.title.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_40();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v13;
    v14 = v11 + v7[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = v7[8];
    v16 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v16);
    v17 = v7[9];
    v18 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B95185B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_2_69();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17) != 1;
  sub_1B8D9207C(v15, v5, v4);
  return v18;
}

uint64_t sub_1B95186B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v7 + v16) = sub_1B951972C(v20);
  }

  v21 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95187C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  OUTLINED_FUNCTION_2_69();
  v10 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B92D6A28();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v13 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v13;
  v14 = a2 + v11[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = v11[8];
  v16 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_249_3(v16);
  v17 = v11[9];
  v18 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v18);
  result = OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B8D9207C(v9, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t Searchfoundation_MiniCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_40();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v13;
    v14 = v11 + v7[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = v7[8];
    v16 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v16);
    v17 = v7[9];
    v18 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MiniCardSection.image.getter@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_MiniCardSection.image.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_40();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_44();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B951972C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_MiniCardSection.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9518F1C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B92D6A80();
    a3(v5);
    sub_1B92D6AD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t Searchfoundation_MiniCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_MiniCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B9519120()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD00E0);
  __swift_project_value_buffer(v0, qword_1EBAD00E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "image";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MiniCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD00E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B95195F8()
{
  OUTLINED_FUNCTION_7_44();
  result = sub_1B9519648();
  qword_1EBAD00F8 = result;
  return result;
}

uint64_t sub_1B9519648()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title;
  v4 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image;
  v6 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B951972C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v31 - v11;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v32 = (v1 + 64);
  v33 = (v1 + 80);
  *(v1 + 88) = 1;
  v12 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor;
  v34 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title;
  v35 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title;
  v15 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v37 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image;
  v38 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image;
  v17 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v18;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v19;

  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(v1 + 48);
  *(v1 + 40) = v22;
  *(v1 + 48) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v21;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v21;
  swift_beginAccess();
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = v32;
  swift_beginAccess();
  v27 = *(v1 + 72);
  *v26 = v25;
  *(v1 + 72) = v24;

  swift_beginAccess();
  v28 = *(a1 + 80);
  LOBYTE(v27) = *(a1 + 88);
  v29 = v33;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 88) = v27;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B9519D14()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_MiniCardSectionP33_700AA27FFF872206DFB04AD47496E29313_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

uint64_t sub_1B9519DDC()
{
  v0 = sub_1B9519D14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MiniCardSection.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_MiniCardSection._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B951972C(v9);
  }

  return sub_1B9519ED0();
}

uint64_t sub_1B9519ED0()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1B951A0A8();
        break;
      case 2:
        sub_1B8FD77E8();
        break;
      case 3:
        sub_1B8FD786C();
        break;
      case 4:
        sub_1B92D3D10();
        break;
      case 5:
        sub_1B92D3D94();
        break;
      case 6:
        sub_1B92D3E18();
        break;
      case 7:
        sub_1B8E16ACC();
        break;
      case 8:
        sub_1B92D3E9C();
        break;
      case 9:
        sub_1B951A174();
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B951A250();
            break;
          case '4':
            sub_1B951A32C();
            break;
          case '5':
            sub_1B951A408();
            break;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B951A0A8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD34E8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B951A174()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD34E8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B951A250()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B951A32C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B951A408()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD34E8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_MiniCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, char *a3)
{
  v8 = type metadata accessor for Searchfoundation_MiniCardSection(0);
  result = sub_1B951A550(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B951A550(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v50 - v10;
  v12 = type metadata accessor for Searchfoundation_Image(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v56 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = v50 - v20;
  v59 = type metadata accessor for Searchfoundation_RichText();
  v21 = *(*(v59 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v59);
  v52 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v53 = v50 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v57 = v50 - v27;
  v58 = type metadata accessor for Searchfoundation_Color(0);
  v28 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v54 = v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v62 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v51 = v11;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD34E8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    v11 = v51;
  }

  v30 = v62;
  swift_beginAccess();
  v31 = *(v30 + 24);
  v32 = *(v30 + 32);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  v34 = v62;
  swift_beginAccess();
  v35 = *(v34 + 40);
  v36 = *(v34 + 48);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v39 = v62;
  swift_beginAccess();
  if (*(v39 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(v39 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(v39 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v40 = *(v39 + 64);
        v41 = *(v39 + 72);
        v42 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (!v42 || (, sub_1B964C700(), result = , !v5))
        {
          v43 = v62;
          swift_beginAccess();
          if (!*(v43 + 80) || (v44 = *(v43 + 88), v60 = *(v43 + 80), v61 = v44, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
          {
            v50[1] = v15;
            v51 = a4;
            swift_beginAccess();
            v45 = v57;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v45, 1, v58) == 1)
            {
              v58 = v12;
              sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }

              v58 = v12;
            }

            swift_beginAccess();
            v46 = v55;
            sub_1B8D92024();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v59);
            v48 = v51;
            if (EnumTagSinglePayload == 1)
            {
              sub_1B8D9207C(v46, &qword_1EBACB1D0, &qword_1B96B9870);
              v49 = v56;
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              v49 = v56;
              if (v5)
              {
                return result;
              }

              v51 = v48;
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v49, 1, v59) == 1)
            {
              sub_1B8D9207C(v49, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B92D6AD8();
              if (v5)
              {
                return result;
              }
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v11, 1, v58) == 1)
            {
              return sub_1B8D9207C(v11, &qword_1EBAB8EA8, &unk_1B96B77D0);
            }

            else
            {
              sub_1B92D6A28();
              sub_1B8CD34E8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
              sub_1B964C740();
              return sub_1B92D6AD8();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MiniCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_74();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B951AFF8(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34E8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B951AFF8(uint64_t a1, uint64_t a2)
{
  v107 = type metadata accessor for Searchfoundation_Image(0);
  v4 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v102[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v6 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v102[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v105 = &v102[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v102[-v12];
  v116 = type metadata accessor for Searchfoundation_RichText();
  v13 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v111 = &v102[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v15 = *(*(v117 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v117);
  v112 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v102[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v109 = &v102[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v114 = &v102[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v113 = &v102[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v102[-v27];
  v28 = type metadata accessor for Searchfoundation_Color(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v102[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v119 = &v102[-v33];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v102[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v102[-v39];
  swift_beginAccess();
  v41 = *(a1 + 16);
  swift_beginAccess();
  v42 = *(a2 + 16);

  sub_1B8D67B1C();
  v44 = v43;

  if ((v44 & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v45 = *(a1 + 24);
  v46 = *(a1 + 32);
  swift_beginAccess();
  v47 = v45 == *(a2 + 24) && v46 == *(a2 + 32);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v48 = *(a1 + 40);
  v49 = *(a1 + 48);
  swift_beginAccess();
  v50 = v48 == *(a2 + 40) && v49 == *(a2 + 48);
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v51 = *(a1 + 56);
  swift_beginAccess();
  if (v51 != *(a2 + 56))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v52 = *(a1 + 57);
  swift_beginAccess();
  if (v52 != *(a2 + 57))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v53 = *(a1 + 58);
  swift_beginAccess();
  if (v53 != *(a2 + 58))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v54 = *(a1 + 64);
  v55 = *(a1 + 72);
  swift_beginAccess();
  v56 = v54 == *(a2 + 64) && v55 == *(a2 + 72);
  if (!v56 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  v57 = *(a1 + 80);
  v58 = *(a1 + 88);
  swift_beginAccess();
  v59 = *(a2 + 88);
  if (!sub_1B8D92198(v57, v58, *(a2 + 80)))
  {
    goto LABEL_43;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v60 = *(v31 + 48);
  v61 = v119;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v61, 1, v28) == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61 + v60, 1, v28);
    v63 = v120;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v61, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_31;
    }

LABEL_26:
    v65 = &qword_1EBACB058;
    v66 = &unk_1B96CA9D0;
LABEL_27:
    v67 = v61;
LABEL_42:
    sub_1B8D9207C(v67, v65, v66);
    goto LABEL_43;
  }

  sub_1B8D92024();
  v64 = __swift_getEnumTagSinglePayload(v61 + v60, 1, v28);
  v63 = v120;
  if (v64 == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92D6AD8();
    goto LABEL_26;
  }

  v68 = v118;
  sub_1B92D6A28();
  v69 = *(v28 + 20);
  if (*&v38[v69] != *&v68[v69])
  {
    v70 = *&v38[v69];

    sub_1B947FDE4();
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v40, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B92D6AD8();
      v67 = v61;
      v65 = &qword_1EBACB050;
      v66 = &unk_1B96B7BD0;
      goto LABEL_42;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34E8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v103 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v40, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v61, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_31:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v73 = *(v117 + 48);
  v74 = v63;
  v75 = v115;
  sub_1B8D92024();
  sub_1B8D92024();
  v76 = v116;
  if (__swift_getEnumTagSinglePayload(v75, 1, v116) == 1)
  {
    sub_1B8D9207C(v74, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v75 + v73, 1, v76) == 1)
    {
      sub_1B8D9207C(v75, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_38;
    }

LABEL_36:
    v65 = &qword_1EBACB230;
    v66 = &unk_1B96B8870;
    v67 = v75;
    goto LABEL_42;
  }

  v77 = v113;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v75 + v73, 1, v76) == 1)
  {
    sub_1B8D9207C(v120, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    goto LABEL_36;
  }

  v78 = v111;
  sub_1B92D6A28();
  v79 = static Searchfoundation_RichText.== infix(_:_:)(v77, v78);
  sub_1B92D6AD8();
  sub_1B8D9207C(v120, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v75, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v79 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_38:
  swift_beginAccess();
  v80 = v114;
  sub_1B8D92024();
  swift_beginAccess();
  v81 = *(v117 + 48);
  v61 = v112;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v61, 1, v76) != 1)
  {
    v84 = v109;
    sub_1B8D92024();
    v85 = __swift_getEnumTagSinglePayload(v61 + v81, 1, v76);
    v82 = v110;
    if (v85 == 1)
    {
      sub_1B8D9207C(v114, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B92D6AD8();
      goto LABEL_48;
    }

    v86 = v111;
    sub_1B92D6A28();
    v87 = static Searchfoundation_RichText.== infix(_:_:)(v84, v86);
    sub_1B92D6AD8();
    sub_1B8D9207C(v114, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    sub_1B8D9207C(v61, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v87)
    {
      goto LABEL_50;
    }

LABEL_43:

    return 0;
  }

  sub_1B8D9207C(v80, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v61 + v81, 1, v76) != 1)
  {
LABEL_48:
    v65 = &qword_1EBACB230;
    v66 = &unk_1B96B8870;
    goto LABEL_27;
  }

  sub_1B8D9207C(v61, &qword_1EBACB1D0, &qword_1B96B9870);
  v82 = v110;
LABEL_50:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v88 = *(v106 + 48);
  v89 = v108;
  sub_1B8D92024();
  v90 = v89;
  sub_1B8D92024();
  v91 = v107;
  if (__swift_getEnumTagSinglePayload(v89, 1, v107) == 1)
  {

    sub_1B8D9207C(v82, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v91) == 1)
    {
      sub_1B8D9207C(v89, &qword_1EBAB8EA8, &unk_1B96B77D0);
      return 1;
    }

    goto LABEL_55;
  }

  v92 = v105;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v90 + v88, 1, v91) == 1)
  {

    sub_1B8D9207C(v82, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_55:
    v93 = &qword_1EBAB8EB0;
    v94 = &qword_1B964D6B0;
    v95 = v90;
LABEL_56:
    sub_1B8D9207C(v95, v93, v94);
    return 0;
  }

  v96 = v104;
  sub_1B92D6A28();
  v97 = *(v91 + 20);
  if (*&v92[v97] != *&v96[v97])
  {
    v98 = *&v92[v97];

    sub_1B94C6890();
    v100 = v99;

    if ((v100 & 1) == 0)
    {

      sub_1B92D6AD8();
      sub_1B8D9207C(v82, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v95 = v90;
      v93 = &qword_1EBAB8EA8;
      v94 = &unk_1B96B77D0;
      goto LABEL_56;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34E8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v101 = sub_1B964C850();

  sub_1B92D6AD8();
  sub_1B8D9207C(v82, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v90, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return (v101 & 1) != 0;
}

uint64_t Searchfoundation_MiniCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MiniCardSection(0);
  sub_1B8CD34E8(&qword_1EBAD0100, type metadata accessor for Searchfoundation_MiniCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B951C1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD34E8(&qword_1EBAD0118, type metadata accessor for Searchfoundation_MiniCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B951C234(uint64_t a1)
{
  v2 = sub_1B8CD34E8(&qword_1EBACE670, type metadata accessor for Searchfoundation_MiniCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B951C2A4()
{
  sub_1B8CD34E8(&qword_1EBACE670, type metadata accessor for Searchfoundation_MiniCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B951C46C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MiniCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B951C4F8()
{
  sub_1B92D701C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B92D701C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B92D701C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_69()
{
  result = type metadata accessor for Searchfoundation_MiniCardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_3_74()
{
  result = type metadata accessor for Searchfoundation_MiniCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_44()
{
  v0 = type metadata accessor for Searchfoundation_MiniCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_40()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_24()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MiniCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_MoreResults.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Searchfoundation_MoreResults.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_MoreResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MoreResults() + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_MoreResults()
{
  result = qword_1EBAD0158;
  if (!qword_1EBAD0158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MoreResults.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MoreResults() + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_MoreResults.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Searchfoundation_MoreResults() + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B951C9C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0120);
  __swift_project_value_buffer(v0, qword_1EBAD0120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "label";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MoreResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8608 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0120);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MoreResults.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_MoreResults.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1B964C700(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Searchfoundation_MoreResults() + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Searchfoundation_MoreResults.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Searchfoundation_MoreResults() + 20);
  sub_1B964C2B0();
  sub_1B8CD3530(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_MoreResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MoreResults();
  sub_1B8CD3530(&qword_1EBAD0138, type metadata accessor for Searchfoundation_MoreResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B951CE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3530(&qword_1EBAD0168, type metadata accessor for Searchfoundation_MoreResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B951CF04(uint64_t a1)
{
  v2 = sub_1B8CD3530(&qword_1EBAD0148, type metadata accessor for Searchfoundation_MoreResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B951CF74()
{
  sub_1B8CD3530(&qword_1EBAD0148, type metadata accessor for Searchfoundation_MoreResults);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_NewsCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20);
  if (qword_1EBAB8618 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAD0188;
}

uint64_t Searchfoundation_NewsCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B951D214(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_NewsCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_NewsCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_NewsCardSection(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_NewsCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B951D328(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Searchfoundation_NewsCardSection.punchoutOptions.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_7_45();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B952014C(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B951D41C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_NewsCardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_12_36();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 32);
  *(v5 + 24) = v2;
  *(v5 + 32) = v0;
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951D540(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_NewsCardSection.punchoutPickerTitle.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_7_45();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B952014C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 32);
    *(v10 + 24) = v4;
    *(v10 + 32) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B951D624(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_NewsCardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_12_36();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;
}

uint64_t Searchfoundation_NewsCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951D748(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_NewsCardSection.punchoutPickerDismissText.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_7_45();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B952014C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 48);
    *(v10 + 40) = v4;
    *(v10 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

uint64_t Searchfoundation_NewsCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B952014C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951D8E4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_45();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B952014C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 57);
}

uint64_t Searchfoundation_NewsCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B952014C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951DA5C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_45();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B952014C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 58);
}

uint64_t Searchfoundation_NewsCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B952014C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951DBD4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_45();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B952014C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.type.getter()
{
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B951DC94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_NewsCardSection.type.setter();
}

uint64_t Searchfoundation_NewsCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_12_36();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;
}

uint64_t Searchfoundation_NewsCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B951DDB8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_NewsCardSection.type.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_7_45();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B952014C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 72);
    *(v10 + 64) = v4;
    *(v10 + 72) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_75();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B951DEA0@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_NewsCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B951DEE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_NewsCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_NewsCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B952014C(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_47();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951E00C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_7_45();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B952014C(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v2;
  *(v8 + 88) = v5;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_NewsCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B952014C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v12[v14] = qword_1ED9CD1C8;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B951E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B92D6A80();
  return a7(v13);
}

uint64_t Searchfoundation_NewsCardSection.title.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B952014C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = *(v7 + 32);
    v14 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v14);
    v15 = *(v7 + 36);
    v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B951E7AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_3_75();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17) != 1;
  sub_1B8D9207C(v15, v5, v4);
  return v18;
}

uint64_t sub_1B951E8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v7 + v16) = sub_1B952014C(v20);
  }

  v21 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B951E9C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  OUTLINED_FUNCTION_3_75();
  v10 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B92D6A28();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v13 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v13;
  v14 = a2 + v11[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = v11[8];
  v16 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_249_3(v16);
  v17 = v11[9];
  v18 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v18);
  result = OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B8D9207C(v9, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t Searchfoundation_NewsCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B952014C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = *(v7 + 32);
    v14 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v14);
    v15 = *(v7 + 36);
    v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_NewsCardSection.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B952014C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B951F06C@<X0>(uint64_t *a1@<X0>, int a2@<W8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  OUTLINED_FUNCTION_3_75();
  v10 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B92D6A28();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(v11 + 20);
  if (qword_1EBAB5600 != -1)
  {
    OUTLINED_FUNCTION_150_5();
  }

  result = OUTLINED_FUNCTION_59_0();
  if (a2 != 1)
  {
    return sub_1B8D9207C(v9, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  return result;
}

uint64_t Searchfoundation_NewsCardSection.providerImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B952014C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.providerImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_NewsCardSection.providerTitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_12_36();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B952014C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_NewsCardSection.providerTitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_75();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = *(v7 + 32);
    v14 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v14);
    v15 = *(v7 + 36);
    v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B951F6A0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B92D6A80();
    a3(v5);
    sub_1B92D6AD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t Searchfoundation_NewsCardSection.overlayTextInImage.getter()
{
  OUTLINED_FUNCTION_5_47();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Searchfoundation_NewsCardSection.overlayTextInImage.setter()
{
  v3 = OUTLINED_FUNCTION_22_27();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_45();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B952014C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  result = OUTLINED_FUNCTION_9_3();
  *(v4 + v7) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_NewsCardSection.overlayTextInImage.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B951F8C0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_45();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B952014C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v11) = v3;

  free(v1);
}

uint64_t Searchfoundation_NewsCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_NewsCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B951FA3C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0170);
  __swift_project_value_buffer(v0, qword_1EBAD0170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "thumbnail";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "providerImage";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "providerTitle";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 56;
  *v34 = "overlayTextInImage";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_NewsCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8610 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD0170);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B951FFD0()
{
  OUTLINED_FUNCTION_7_45();
  result = sub_1B9520020();
  qword_1EBAD0188 = result;
  return result;
}

uint64_t sub_1B9520020()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title;
  v4 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail;
  v6 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage) = 0;
  return v0;
}

uint64_t sub_1B952014C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v36 - v11;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v36 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v37 = (v1 + 64);
  v38 = (v1 + 80);
  *(v1 + 88) = 1;
  v12 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor;
  v39 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title;
  v40 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title;
  v15 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v42 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail;
  v43 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail;
  v17 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v45 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage, 1, 1, v17);
  v46 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle, 1, 1, v15);
  v47 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage) = 0;
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v18;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v19;

  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(v1 + 48);
  *(v1 + 40) = v22;
  *(v1 + 48) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v24 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v24;
  swift_beginAccess();
  v25 = *(a1 + 58);
  v26 = v36;
  swift_beginAccess();
  *v26 = v25;
  swift_beginAccess();
  v28 = *(a1 + 64);
  v27 = *(a1 + 72);
  v29 = v37;
  swift_beginAccess();
  v30 = *(v1 + 72);
  *v29 = v28;
  *(v1 + 72) = v27;

  swift_beginAccess();
  v31 = *(a1 + 80);
  LOBYTE(v30) = *(a1 + 88);
  v32 = v38;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 88) = v30;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);

  v34 = v47;
  swift_beginAccess();
  *(v1 + v34) = v33;
  return v1;
}

void *sub_1B9520894()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__thumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__providerTitle, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

uint64_t sub_1B952099C()
{
  v0 = sub_1B9520894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_NewsCardSection.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_NewsCardSection._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B952014C(v9);
  }

  return sub_1B9520A90();
}

uint64_t sub_1B9520A90()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B9520CD0();
        break;
      case 2:
        sub_1B8FD77E8();
        break;
      case 3:
        sub_1B8FD786C();
        break;
      case 4:
        sub_1B92D3D10();
        break;
      case 5:
        sub_1B92D3D94();
        break;
      case 6:
        sub_1B92D3E18();
        break;
      case 7:
        sub_1B8E16ACC();
        break;
      case 8:
        sub_1B92D3E9C();
        break;
      case 9:
        sub_1B9520D9C();
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B9520E78();
            break;
          case '4':
            sub_1B9520F54();
            break;
          case '5':
            sub_1B9521030();
            break;
          case '6':
            sub_1B952110C();
            break;
          case '7':
            sub_1B95211E8();
            break;
          case '8':
            sub_1B95212C4();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B9520CD0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD3578(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9520D9C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3578(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9520E78()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9520F54()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9521030()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B952110C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95211E8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95212C4()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Searchfoundation_NewsCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_NewsCardSection(0);
  result = sub_1B95213BC(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B95213BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v56 - v11;
  v68 = type metadata accessor for Searchfoundation_Image(0);
  v12 = *(*(v68 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v68);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v67 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v56 - v23;
  v24 = type metadata accessor for Searchfoundation_RichText();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v58 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v62 = &v56 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v56 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v72 = &v56 - v33;
  v69 = type metadata accessor for Searchfoundation_Color(0);
  v34 = *(*(v69 - 1) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v57 = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3578(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    a1 = v57;
  }

  swift_beginAccess();
  v36 = *(a1 + 32);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = *(a1 + 32);

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v39 = *(a1 + 48);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = *(a1 + 48);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v43 = *(a1 + 72);
        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v44)
        {
          v45 = *(a1 + 72);

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v46 = v72;
        if (!*(a1 + 80) || (v47 = *(a1 + 88), v70 = *(a1 + 80), v71 = v47, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
        {
          v57 = a4;
          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v46, 1, v69) == 1)
          {
            v69 = v20;
            sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B92D6AD8();
            }

            v69 = v20;
            sub_1B92D6AD8();
          }

          swift_beginAccess();
          v48 = v66;
          sub_1B8D92024();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v24);
          v51 = v67;
          v50 = v68;
          if (EnumTagSinglePayload == 1)
          {
            sub_1B8D9207C(v48, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }

            v50 = v68;
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v51, 1, v24) == 1)
          {
            sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v52 = v63;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v52, 1, v50) == 1)
          {
            sub_1B8D9207C(v52, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v53 = v61;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v53, 1, v50) == 1)
          {
            sub_1B8D9207C(v53, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v54 = v69;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v54, 1, v24) == 1)
          {
            sub_1B8D9207C(v54, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD3578(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B92D6AD8();
            if (v4)
            {
              return result;
            }
          }

          v55 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
          result = swift_beginAccess();
          if (*(a1 + v55) == 1)
          {
            return sub_1B964C670();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_NewsCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_5_47();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B9522140(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B9522140(uint64_t a1, uint64_t a2)
{
  v145 = type metadata accessor for Searchfoundation_Image(0);
  v4 = *(*(v145 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v145);
  v134 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v137 = &v132 - v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v8 = *(*(v144 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v144);
  v139 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v132 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v138 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v140 = &v132 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v141 = &v132 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v132 - v20;
  v155 = type metadata accessor for Searchfoundation_RichText();
  v21 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v147 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v23 = *(*(v152 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v152);
  v136 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v148 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v154 = &v132 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v133 = (&v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x1EEE9AC00](v31);
  v135 = &v132 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v143 = &v132 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v150 = &v132 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v149 = &v132 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v153 = &v132 - v41;
  v42 = type metadata accessor for Searchfoundation_Color(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v151 = &v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v156 = &v132 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v132 - v53;
  swift_beginAccess();
  v55 = *(a1 + 16);
  swift_beginAccess();
  v56 = *(a2 + 16);

  sub_1B8D67B1C();
  v58 = v57;

  if ((v58 & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v59 = *(a1 + 24);
  v60 = *(a1 + 32);
  swift_beginAccess();
  v61 = v59 == *(a2 + 24) && v60 == *(a2 + 32);
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v62 = *(a1 + 40);
  v63 = *(a1 + 48);
  swift_beginAccess();
  v64 = v62 == *(a2 + 40) && v63 == *(a2 + 48);
  if (!v64 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v65 = *(a1 + 56);
  swift_beginAccess();
  if (v65 != *(a2 + 56))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v66 = *(a1 + 57);
  swift_beginAccess();
  if (v66 != *(a2 + 57))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v67 = *(a1 + 58);
  swift_beginAccess();
  if (v67 != *(a2 + 58))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v68 = *(a1 + 64);
  v69 = *(a1 + 72);
  swift_beginAccess();
  v70 = v68 == *(a2 + 64) && v69 == *(a2 + 72);
  if (!v70 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  v71 = *(a1 + 80);
  v72 = *(a1 + 88);
  swift_beginAccess();
  v73 = *(a2 + 88);
  if (!sub_1B8D92198(v71, v72, *(a2 + 80)))
  {
    goto LABEL_75;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v74 = *(v45 + 48);
  v75 = v156;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v75, 1, v42) == 1)
  {
    sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75 + v74, 1, v42);
    v78 = v154;
    v77 = v155;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v75, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v79 = &qword_1EBACB058;
    v80 = &unk_1B96CA9D0;
    v81 = v75;
LABEL_74:
    sub_1B8D9207C(v81, v79, v80);
    goto LABEL_75;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v75 + v74, 1, v42) == 1)
  {
    sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92D6AD8();
    goto LABEL_26;
  }

  v82 = v151;
  sub_1B92D6A28();
  v83 = *(v42 + 20);
  if (*&v52[v83] != *&v82[v83])
  {
    v84 = *&v52[v83];

    sub_1B947FDE4();
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B92D6AD8();
      v81 = v75;
      v79 = &qword_1EBACB050;
      v80 = &unk_1B96B7BD0;
      goto LABEL_74;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v87 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v75, &qword_1EBACB050, &unk_1B96B7BD0);
  v78 = v154;
  v77 = v155;
  if ((v87 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_30:
  swift_beginAccess();
  v88 = v153;
  sub_1B8D92024();
  swift_beginAccess();
  v89 = *(v152 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78, 1, v77) == 1)
  {
    sub_1B8D9207C(v88, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v78 + v89, 1, v77) == 1)
    {
      sub_1B8D9207C(v78, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v90 = v149;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v78 + v89, 1, v77) == 1)
  {
    sub_1B8D9207C(v153, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_35:
    v79 = &qword_1EBACB230;
    v80 = &unk_1B96B8870;
    v81 = v78;
    goto LABEL_74;
  }

  v91 = v147;
  sub_1B92D6A28();
  v92 = static Searchfoundation_RichText.== infix(_:_:)(v90, v91);
  sub_1B92D6AD8();
  sub_1B8D9207C(v153, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v78, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v92 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_37:
  swift_beginAccess();
  v93 = v150;
  sub_1B8D92024();
  swift_beginAccess();
  v94 = *(v152 + 48);
  v95 = v148;
  sub_1B8D92024();
  v96 = v95;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v95, 1, v77) == 1)
  {
    sub_1B8D9207C(v93, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v77) == 1)
    {
      sub_1B8D9207C(v95, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v97 = v143;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v96 + v94, 1, v77) == 1)
  {
    sub_1B8D9207C(v150, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_43:
    v79 = &qword_1EBACB230;
    v80 = &unk_1B96B8870;
    v81 = v96;
    goto LABEL_74;
  }

  v98 = v147;
  sub_1B92D6A28();
  v99 = v96;
  v100 = static Searchfoundation_RichText.== infix(_:_:)(v97, v98);
  sub_1B92D6AD8();
  sub_1B8D9207C(v150, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v99, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v100 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_45:
  swift_beginAccess();
  v101 = v146;
  sub_1B8D92024();
  swift_beginAccess();
  v102 = *(v144 + 48);
  v103 = v142;
  sub_1B8D92024();
  sub_1B8D92024();
  v104 = v145;
  if (__swift_getEnumTagSinglePayload(v103, 1, v145) == 1)
  {
    sub_1B8D9207C(v101, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v103 + v102, 1, v104) == 1)
    {
      sub_1B8D9207C(v103, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  v105 = v141;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v103 + v102, 1, v104) == 1)
  {
    sub_1B8D9207C(v146, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_50:
    v79 = &qword_1EBAB8EB0;
    v80 = &qword_1B964D6B0;
    v81 = v103;
    goto LABEL_74;
  }

  v106 = v137;
  sub_1B92D6A28();
  if (*&v105[*(v104 + 20)] != *&v106[*(v104 + 20)])
  {

    sub_1B94C6890();
    v108 = v107;

    if ((v108 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v146, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v81 = v103;
LABEL_73:
      v79 = &qword_1EBAB8EA8;
      v80 = &unk_1B96B77D0;
      goto LABEL_74;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v109 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v146, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v103, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v109 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_54:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v110 = *(v144 + 48);
  v111 = v139;
  sub_1B8D92024();
  v112 = v111;
  sub_1B8D92024();
  v113 = v111;
  v114 = v145;
  if (__swift_getEnumTagSinglePayload(v113, 1, v145) == 1)
  {
    sub_1B8D9207C(v140, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v112 + v110, 1, v114) == 1)
    {
      sub_1B8D9207C(v112, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v115 = v138;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v112 + v110, 1, v114) == 1)
  {
    sub_1B8D9207C(v140, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_59:
    v79 = &qword_1EBAB8EB0;
    v80 = &qword_1B964D6B0;
    v81 = v112;
    goto LABEL_74;
  }

  v116 = v134;
  sub_1B92D6A28();
  v117 = *(v114 + 20);
  if (*&v115[v117] != *&v116[v117])
  {
    v118 = *&v115[v117];

    sub_1B94C6890();
    v120 = v119;

    if ((v120 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v140, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v81 = v139;
      goto LABEL_73;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3578(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v121 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v140, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v139, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v121 & 1) == 0)
  {
    goto LABEL_75;
  }

LABEL_63:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v122 = *(v152 + 48);
  v123 = v136;
  sub_1B8D92024();
  sub_1B8D92024();
  v124 = v155;
  if (__swift_getEnumTagSinglePayload(v123, 1, v155) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v123 + v122, 1, v124) == 1)
    {
      sub_1B8D9207C(v135, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B92D6AD8();
      goto LABEL_69;
    }

    v125 = v136;
    v126 = v147;
    sub_1B92D6A28();
    v127 = static Searchfoundation_RichText.== infix(_:_:)(v133, v126);
    sub_1B92D6AD8();
    sub_1B8D9207C(v135, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    sub_1B8D9207C(v125, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v127)
    {
      goto LABEL_71;
    }

LABEL_75:

    v130 = 0;
    return v130 & 1;
  }

  sub_1B8D9207C(v135, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v123 + v122, 1, v124) != 1)
  {
LABEL_69:
    v79 = &qword_1EBACB230;
    v80 = &unk_1B96B8870;
    v81 = v136;
    goto LABEL_74;
  }

  sub_1B8D9207C(v136, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_71:
  v128 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  swift_beginAccess();
  LOBYTE(v128) = *(a1 + v128);

  v129 = OBJC_IVAR____TtCV10PegasusAPI32Searchfoundation_NewsCardSectionP33_D8C77CF78A04F231BD824CF14746D54113_StorageClass__overlayTextInImage;
  swift_beginAccess();
  LOBYTE(v129) = *(a2 + v129);

  v130 = v128 ^ v129 ^ 1;
  return v130 & 1;
}

uint64_t Searchfoundation_NewsCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_NewsCardSection(0);
  sub_1B8CD3578(&qword_1EBAD0190, type metadata accessor for Searchfoundation_NewsCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95238FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3578(&qword_1EBAD01A8, type metadata accessor for Searchfoundation_NewsCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B952397C(uint64_t a1)
{
  v2 = sub_1B8CD3578(&qword_1EBACE678, type metadata accessor for Searchfoundation_NewsCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95239EC()
{
  sub_1B8CD3578(&qword_1EBACE678, type metadata accessor for Searchfoundation_NewsCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9523BB4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_NewsCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9523C40()
{
  sub_1B92D701C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_1B92D701C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1B92D701C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_75()
{
  result = type metadata accessor for Searchfoundation_NewsCardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_5_47()
{
  result = type metadata accessor for Searchfoundation_NewsCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_45()
{
  v0 = type metadata accessor for Searchfoundation_NewsCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_36()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_22_27()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_NewsCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_NowPlayingCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = v2;
  v3 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  v4 = a1 + *(v3 + 60);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 64);
  v6 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t type metadata accessor for Searchfoundation_NowPlayingCardSection()
{
  result = qword_1ED9F0BC8;
  if (!qword_1ED9F0BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NowPlayingCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NowPlayingCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_NowPlayingCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_NowPlayingCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  sub_1B92C7198(v1 + *(v8 + 64), v2);
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v9 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  *(a1 + v12) = qword_1ED9CD1C8;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B95243FC(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_NowPlayingCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_NowPlayingCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection() + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_NowPlayingCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection() + 64);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_NowPlayingCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  sub_1B92C7198(v0 + *(v6 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_NowPlayingCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection() + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_NowPlayingCardSection.title.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NowPlayingCardSection.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.subtitle.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_NowPlayingCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.movies.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t Searchfoundation_NowPlayingCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection() + 60);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_NowPlayingCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection() + 60);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B9524A54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD01B0);
  __swift_project_value_buffer(v0, qword_1EBAD01B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "movies";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_NowPlayingCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8620 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD01B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_NowPlayingCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B952505C();
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B95250FC();
        break;
      default:
        if (result == 51 || result == 52)
        {
LABEL_13:
          sub_1B964C530();
        }

        else if (result == 101)
        {
          OUTLINED_FUNCTION_9();
          sub_1B95251B0();
        }

        break;
    }
  }
}

uint64_t sub_1B952505C()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B9525DE4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B95250FC()
{
  v0 = *(type metadata accessor for Searchfoundation_NowPlayingCardSection() + 64);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B9525DE4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B95251B0()
{
  type metadata accessor for Searchfoundation_MediaItem(0);
  sub_1B9525DE4(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem);
  return sub_1B964C570();
}

uint64_t Searchfoundation_NowPlayingCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    v36 = v0;
    type metadata accessor for Searchfoundation_Punchout();
    OUTLINED_FUNCTION_14_24();
    sub_1B9525DE4(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_5_34();
    result = sub_1B964C730();
    if (v1)
    {
      return result;
    }

    v2 = v36;
  }

  v16 = *(v2 + 8);
  v17 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v18 || (result = OUTLINED_FUNCTION_6_32(), !v1))
  {
    v19 = *(v2 + 24);
    v20 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v21 || (result = OUTLINED_FUNCTION_6_32(), !v1))
    {
      if (*(v2 + 40) != 1 || (result = OUTLINED_FUNCTION_12_29(), !v1))
      {
        if (*(v2 + 41) != 1 || (result = OUTLINED_FUNCTION_12_29(), !v1))
        {
          if (*(v2 + 42) != 1 || (result = OUTLINED_FUNCTION_12_29(), !v1))
          {
            v22 = *(v2 + 48);
            v23 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v24 || (result = OUTLINED_FUNCTION_6_32(), !v1))
            {
              v25 = v1;
              if (*(v2 + 64))
              {
                v26 = *(v2 + 72);
                v34 = *(v2 + 64);
                v35 = v26;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_5_34();
                result = sub_1B964C680();
                if (v1)
                {
                  return result;
                }

                v25 = 0;
              }

              v36 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
              sub_1B92C7198(v2 + *(v36 + 64), v8);
              if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
              {
                sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v25;
              }

              else
              {
                sub_1B92C8908(v8, v14);
                sub_1B9525DE4(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                OUTLINED_FUNCTION_5_34();
                sub_1B964C740();
                result = sub_1B92C89D0(v14);
                if (v1)
                {
                  return result;
                }
              }

              v27 = *(v2 + 80);
              v28 = *(v2 + 88);
              OUTLINED_FUNCTION_1();
              if (!v29 || (result = OUTLINED_FUNCTION_6_32(), !v1))
              {
                v30 = *(v2 + 96);
                v31 = *(v2 + 104);
                OUTLINED_FUNCTION_1();
                if (!v32 || (result = OUTLINED_FUNCTION_6_32(), !v1))
                {
                  if (!*(*(v2 + 112) + 16) || (type metadata accessor for Searchfoundation_MediaItem(0), OUTLINED_FUNCTION_14_24(), sub_1B9525DE4(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem), OUTLINED_FUNCTION_5_34(), result = sub_1B964C730(), !v1))
                  {
                    v33 = v2 + *(v36 + 60);
                    return sub_1B964C290();
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

uint64_t static Searchfoundation_NowPlayingCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = *v0;
  sub_1B8D67B1C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_28;
  }

  v24 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v25 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_28;
  }

  v26 = type metadata accessor for Searchfoundation_NowPlayingCardSection();
  v27 = *(v26 + 64);
  v28 = *(v15 + 48);
  sub_1B92C7198(v1 + v27, v2);
  sub_1B92C7198(v0 + v27, v2 + v28);
  v29 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v29, v30, v3) != 1)
  {
    sub_1B92C7198(v2, v14);
    if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v28, v8);
      v35 = *(v3 + 20);
      if (*&v14[v35] == *&v8[v35] || (v36 = *&v14[v35], , , sub_1B947FDE4(), v38 = v37, , , (v38 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_76();
        sub_1B9525DE4(v39, v40);
        v41 = sub_1B964C850();
        sub_1B92C89D0(v8);
        sub_1B92C89D0(v14);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v41 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_1B92C89D0(v8);
      sub_1B92C89D0(v14);
      v31 = &qword_1EBACB050;
      v32 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v31, v32);
      goto LABEL_28;
    }

    sub_1B92C89D0(v14);
LABEL_26:
    v31 = &qword_1EBACB058;
    v32 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_33:
  v42 = v1[10] == v0[10] && v1[11] == v0[11];
  if (v42 || (sub_1B964C9F0() & 1) != 0)
  {
    v43 = v1[12] == v0[12] && v1[13] == v0[13];
    if (v43 || (sub_1B964C9F0() & 1) != 0)
    {
      v44 = v1[14];
      v45 = v0[14];
      sub_1B8D6E1DC();
      if (v46)
      {
        v47 = *(v26 + 60);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_76();
        sub_1B9525DE4(v48, v49);
        v33 = sub_1B964C850();
        return v33 & 1;
      }
    }
  }

LABEL_28:
  v33 = 0;
  return v33 & 1;
}

uint64_t Searchfoundation_NowPlayingCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_NowPlayingCardSection();
  sub_1B9525DE4(&qword_1EBAD01C8, type metadata accessor for Searchfoundation_NowPlayingCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9525B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9525DE4(&qword_1EBAD01E0, type metadata accessor for Searchfoundation_NowPlayingCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9525BAC(uint64_t a1)
{
  v2 = sub_1B9525DE4(&qword_1EBACE758, type metadata accessor for Searchfoundation_NowPlayingCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9525C1C()
{
  sub_1B9525DE4(&qword_1EBACE758, type metadata accessor for Searchfoundation_NowPlayingCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9525DE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.getter()
{
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9525EC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.setter();
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9525FE4(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8668;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_14_29();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8668 != -1)
    {
      OUTLINED_FUNCTION_14_29();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcEnumType.getter()
{
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcEnumType()()
{
  if (qword_1EBAB8668 != -1)
  {
    OUTLINED_FUNCTION_14_29();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.getter()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_36_4();
  return v3 & 1;
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.setter()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t (*Google_Protobuf_EnumOptions.Searchfoundation_objcEnumSkip.modify(void *a1))(uint64_t *)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19();
  }

  *(v1 + 8) = qword_1EBAD0240;
  OUTLINED_FUNCTION_4_22();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return sub_1B8F4D314;
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcEnumSkip.getter()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcEnumSkip()()
{
  if (qword_1EBAB8670 != -1)
  {
    OUTLINED_FUNCTION_20_19();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.getter()
{
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9526504(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.setter();
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Searchfoundation_objcFacadeEnumPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9526624(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8678;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_9_42();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8678 != -1)
    {
      OUTLINED_FUNCTION_9_42();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcFacadeEnumPrefix.getter()
{
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcFacadeEnumPrefix()()
{
  if (qword_1EBAB8678 != -1)
  {
    OUTLINED_FUNCTION_9_42();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.getter()
{
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B95268AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.setter();
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumOptions.Searchfoundation_objcEnumPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95269CC(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8680;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_8_45();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8680 != -1)
    {
      OUTLINED_FUNCTION_8_45();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_4_22();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_EnumOptions.hasSearchfoundation_objcEnumPrefix.getter()
{
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumOptions.clearSearchfoundation_objcEnumPrefix()()
{
  if (qword_1EBAB8680 != -1)
  {
    OUTLINED_FUNCTION_8_45();
  }

  OUTLINED_FUNCTION_4_22();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.getter()
{
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9526C54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.setter();
}

uint64_t Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_EnumValueOptions.Searchfoundation_stringValue.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9526D74(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB86B8;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_7_46();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_3_23();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB86B8 != -1)
    {
      OUTLINED_FUNCTION_7_46();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_3_23();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_EnumValueOptions.hasSearchfoundation_stringValue.getter()
{
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_EnumValueOptions.clearSearchfoundation_stringValue()()
{
  if (qword_1EBAB86B8 != -1)
  {
    OUTLINED_FUNCTION_7_46();
  }

  OUTLINED_FUNCTION_3_23();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcType.getter()
{
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9526FFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldOptions.Searchfoundation_objcType.setter();
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Searchfoundation_objcType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B952711C(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8630;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_6_43();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8630 != -1)
    {
      OUTLINED_FUNCTION_6_43();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FieldOptions.hasSearchfoundation_objcType.getter()
{
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearSearchfoundation_objcType()()
{
  if (qword_1EBAB8630 != -1)
  {
    OUTLINED_FUNCTION_6_43();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.getter()
{
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B95273A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.setter();
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FieldOptions.Searchfoundation_objcAttr.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95274C4(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8638;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_5_48();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8638 != -1)
    {
      OUTLINED_FUNCTION_5_48();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_1_33();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FieldOptions.hasSearchfoundation_objcAttr.getter()
{
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FieldOptions.clearSearchfoundation_objcAttr()()
{
  if (qword_1EBAB8638 != -1)
  {
    OUTLINED_FUNCTION_5_48();
  }

  OUTLINED_FUNCTION_1_33();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.getter()
{
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B952774C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcFacadePrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B952786C(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8688;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_19_28();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8688 != -1)
    {
      OUTLINED_FUNCTION_19_28();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcFacadePrefix.getter()
{
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcFacadePrefix()()
{
  if (qword_1EBAB8688 != -1)
  {
    OUTLINED_FUNCTION_19_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFramework.getter()
{
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9527AF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Searchfoundation_objcFramework.setter();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFramework.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcFramework.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcFramework.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9527C14(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8690;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_18_28();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8690 != -1)
    {
      OUTLINED_FUNCTION_18_28();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcFramework.getter()
{
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcFramework()()
{
  if (qword_1EBAB8690 != -1)
  {
    OUTLINED_FUNCTION_18_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcPackage.getter()
{
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9527E9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Searchfoundation_objcPackage.setter();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcPackage.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcPackage.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcPackage.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9527FBC(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8698;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_17_29();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8698 != -1)
    {
      OUTLINED_FUNCTION_17_29();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcPackage.getter()
{
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcPackage()()
{
  if (qword_1EBAB8698 != -1)
  {
    OUTLINED_FUNCTION_17_29();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.getter()
{
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9528244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.setter();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcEnumNaming.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9528364(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB86A0;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_16_35();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB86A0 != -1)
    {
      OUTLINED_FUNCTION_16_35();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcEnumNaming.getter()
{
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcEnumNaming()()
{
  if (qword_1EBAB86A0 != -1)
  {
    OUTLINED_FUNCTION_16_35();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.getter()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_36_4();
  return v3 & 1;
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.setter()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t (*Google_Protobuf_FileOptions.Searchfoundation_objcUseArc.modify(void *a1))(uint64_t *)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28();
  }

  *(v1 + 8) = qword_1EBAD0278;
  OUTLINED_FUNCTION_0_39();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return sub_1B8F4F57C;
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcUseArc.getter()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcUseArc()()
{
  if (qword_1EBAB86A8 != -1)
  {
    OUTLINED_FUNCTION_22_28();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.getter()
{
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9528884(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.setter();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_FileOptions.Searchfoundation_objcClassPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95289A4(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB86B0;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_15_27();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB86B0 != -1)
    {
      OUTLINED_FUNCTION_15_27();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_0_39();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_FileOptions.hasSearchfoundation_objcClassPrefix.getter()
{
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSearchfoundation_objcClassPrefix()()
{
  if (qword_1EBAB86B0 != -1)
  {
    OUTLINED_FUNCTION_15_27();
  }

  OUTLINED_FUNCTION_0_39();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.getter()
{
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9528C2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.setter();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSuperclass.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9528D4C(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8640;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_13_33();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8640 != -1)
    {
      OUTLINED_FUNCTION_13_33();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgSuperclass.getter()
{
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgSuperclass()()
{
  if (qword_1EBAB8640 != -1)
  {
    OUTLINED_FUNCTION_13_33();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.getter()
{
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9528FD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.setter();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgType.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B95290F4(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8648;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_12_37();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8648 != -1)
    {
      OUTLINED_FUNCTION_12_37();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgType.getter()
{
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgType()()
{
  if (qword_1EBAB8648 != -1)
  {
    OUTLINED_FUNCTION_12_37();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.getter()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_36_4();
  return v3 & 1;
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.setter()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  return OUTLINED_FUNCTION_35_5();
}

uint64_t (*Google_Protobuf_MessageOptions.Searchfoundation_objcMsgSkip.modify(void *a1))(uint64_t *)
{
  OUTLINED_FUNCTION_33(a1);
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27();
  }

  *(v1 + 8) = qword_1EBAD0220;
  OUTLINED_FUNCTION_2_20();
  v4 = sub_1B8F4F470(v2, v3);
  OUTLINED_FUNCTION_32_8(v4);
  OUTLINED_FUNCTION_34_6();
  return sub_1B8F4F57C;
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgSkip.getter()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgSkip()()
{
  if (qword_1EBAB8650 != -1)
  {
    OUTLINED_FUNCTION_21_27();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.getter()
{
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B9529614(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.setter();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcFacadeMsgPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9529734(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8658;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_11_41();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8658 != -1)
    {
      OUTLINED_FUNCTION_11_41();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcFacadeMsgPrefix.getter()
{
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcFacadeMsgPrefix()()
{
  if (qword_1EBAB8658 != -1)
  {
    OUTLINED_FUNCTION_11_41();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.getter()
{
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_26_11();
  return OUTLINED_FUNCTION_22_12(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_1B95299BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.setter();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.setter()
{
  OUTLINED_FUNCTION_16();
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  OUTLINED_FUNCTION_25_10();
}

uint64_t Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.modify()
{
  v1 = OUTLINED_FUNCTION_29_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_21_9(v2);
  *v0 = Google_Protobuf_MessageOptions.Searchfoundation_objcMsgPrefix.getter();
  v0[1] = v3;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9529ADC(uint64_t **a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  v4 = qword_1EBAB8660;
  if (v5)
  {

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_10_39();
    }

    v6 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v7, v8);
    OUTLINED_FUNCTION_23_9();

    v9 = v1[1];
  }

  else
  {
    if (qword_1EBAB8660 != -1)
    {
      OUTLINED_FUNCTION_10_39();
    }

    v10 = v1[4];
    v1[2] = v3;
    v1[3] = v2;
    OUTLINED_FUNCTION_2_20();
    sub_1B8F4F470(v11, v12);
    OUTLINED_FUNCTION_23_9();
  }

  free(v1);
}

uint64_t Google_Protobuf_MessageOptions.hasSearchfoundation_objcMsgPrefix.getter()
{
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  return MEMORY[0x1EEE15650](v2);
}

Swift::Void __swiftcall Google_Protobuf_MessageOptions.clearSearchfoundation_objcMsgPrefix()()
{
  if (qword_1EBAB8660 != -1)
  {
    OUTLINED_FUNCTION_10_39();
  }

  OUTLINED_FUNCTION_2_20();
  sub_1B8F4F470(v0, v1);
  v2 = OUTLINED_FUNCTION_24_13();

  MEMORY[0x1EEE15660](v2);
}

uint64_t sub_1B9529CE4()
{
  v0 = sub_1B964C320();
  __swift_allocate_value_buffer(v0, qword_1EBAD01E8);
  __swift_project_value_buffer(v0, qword_1EBAD01E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF780, &unk_1B968F160);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B96511A0;
  if (qword_1EBAB8630 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBAD0200;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  *(v1 + 56) = v3;
  v4 = sub_1B8F4F528(&qword_1EBABF7A0, &qword_1EBABF798, &qword_1B966F858);
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = qword_1EBAB8638;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBAD0208;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v6;
  v7 = qword_1EBAB8640;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBAD0210;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 136) = v9;
  v10 = sub_1B8F4F528(&qword_1EBABF7D0, &qword_1EBABF7C8, &qword_1B966F870);
  *(v1 + 144) = v10;
  *(v1 + 112) = v8;
  v11 = qword_1EBAB8648;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBAD0218;
  *(v1 + 176) = v9;
  *(v1 + 184) = v10;
  *(v1 + 152) = v12;
  v13 = qword_1EBAB8650;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EBAD0220;
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 224) = sub_1B8F4F528(&qword_1EBABF7B0, &qword_1EBABF7A8, &qword_1B966F860);
  *(v1 + 192) = v14;
  v15 = qword_1EBAB8658;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBAD0228;
  *(v1 + 256) = v9;
  *(v1 + 264) = v10;
  *(v1 + 232) = v16;
  v17 = qword_1EBAB8660;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBAD0230;
  *(v1 + 296) = v9;
  *(v1 + 304) = v10;
  *(v1 + 272) = v18;
  v19 = qword_1EBAB8668;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBAD0238;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 336) = v21;
  v22 = sub_1B8F4F528(&qword_1EBABF7E0, &qword_1EBABF7D8, &qword_1B966F878);
  *(v1 + 344) = v22;
  *(v1 + 312) = v20;
  v23 = qword_1EBAB8670;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBAD0240;
  *(v1 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0290, &unk_1B96D59C0);
  *(v1 + 384) = sub_1B8F4F528(&qword_1EBAD0298, &qword_1EBAD0290, &unk_1B96D59C0);
  *(v1 + 352) = v24;
  v25 = qword_1EBAB8678;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1EBAD0248;
  *(v1 + 416) = v21;
  *(v1 + 424) = v22;
  *(v1 + 392) = v26;
  v27 = qword_1EBAB8680;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_1EBAD0250;
  *(v1 + 456) = v21;
  *(v1 + 464) = v22;
  *(v1 + 432) = v28;
  v29 = qword_1EBAB8688;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_1EBAD0258;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 496) = v31;
  v32 = sub_1B8F4F528(&qword_1EBABF7F0, &qword_1EBABF7E8, &qword_1B966F880);
  *(v1 + 504) = v32;
  *(v1 + 472) = v30;
  v33 = qword_1EBAB8690;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBAD0260;
  *(v1 + 536) = v31;
  *(v1 + 544) = v32;
  *(v1 + 512) = v34;
  v35 = qword_1EBAB8698;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBAD0268;
  *(v1 + 576) = v31;
  *(v1 + 584) = v32;
  *(v1 + 552) = v36;
  v37 = qword_1EBAB86A0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBAD0270;
  *(v1 + 616) = v31;
  *(v1 + 624) = v32;
  *(v1 + 592) = v38;
  v39 = qword_1EBAB86A8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBAD0278;
  *(v1 + 656) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 664) = sub_1B8F4F528(&qword_1EBABF800, &qword_1EBABF7F8, &qword_1B966F888);
  *(v1 + 632) = v40;
  v41 = qword_1EBAB86B0;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_1EBAD0280;
  *(v1 + 696) = v31;
  *(v1 + 704) = v32;
  *(v1 + 672) = v42;
  v43 = qword_1EBAB86B8;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = qword_1EBAD0288;
  *(v1 + 736) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 744) = sub_1B8F4F528(&qword_1EBABF7C0, &qword_1EBABF7B8, &qword_1B966F868);
  *(v1 + 712) = v44;

  return sub_1B964C310();
}

uint64_t Searchfoundation_Options_Extensions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8628 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C320();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD01E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B952A4E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0200 = result;
  return result;
}

uint64_t sub_1B952A56C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF798, &qword_1B966F858);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0208 = result;
  return result;
}

uint64_t sub_1B952A5F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0210 = result;
  return result;
}

uint64_t sub_1B952A684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0218 = result;
  return result;
}

uint64_t sub_1B952A710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7A8, &qword_1B966F860);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0220 = result;
  return result;
}

uint64_t sub_1B952A79C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0228 = result;
  return result;
}

uint64_t sub_1B952A828()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7C8, &qword_1B966F870);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0230 = result;
  return result;
}

uint64_t sub_1B952A8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0238 = result;
  return result;
}

uint64_t sub_1B952A940()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0290, &unk_1B96D59C0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0240 = result;
  return result;
}

uint64_t sub_1B952A9CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0248 = result;
  return result;
}

uint64_t sub_1B952AA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7D8, &qword_1B966F878);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0250 = result;
  return result;
}

uint64_t sub_1B952AAE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0258 = result;
  return result;
}

uint64_t sub_1B952AB70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0260 = result;
  return result;
}

uint64_t sub_1B952ABFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0268 = result;
  return result;
}

uint64_t sub_1B952AC88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0270 = result;
  return result;
}

uint64_t sub_1B952AD14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7F8, &qword_1B966F888);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0278 = result;
  return result;
}

uint64_t sub_1B952ADA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7E8, &qword_1B966F880);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0280 = result;
  return result;
}

uint64_t sub_1B952AE2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF7B8, &qword_1B966F868);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B964C2C0();
  qword_1EBAD0288 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_39()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_37()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_29()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_28()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_28()
{

  return swift_once();
}

uint64_t Searchfoundation_PersonHeaderCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection() + 20);
  v3 = type metadata accessor for Searchfoundation_Person();

  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

uint64_t type metadata accessor for Searchfoundation_PersonHeaderCardSection()
{
  result = qword_1ED9F06D8;
  if (!qword_1ED9F06D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_PersonHeaderCardSection.person.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_5_49();
  sub_1B9495798(v1 + *(v8 + 20), v2);
  v9 = type metadata accessor for Searchfoundation_Person();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1B9495808(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = v10;
  a1[7] = v10;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  v11 = a1 + *(v9 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  return result;
}

uint64_t sub_1B952B2A8(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Person();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9495BB8(a1, v5);
  return Searchfoundation_PersonHeaderCardSection.person.setter(v5);
}

uint64_t Searchfoundation_PersonHeaderCardSection.person.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection() + 20);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
  sub_1B9495808(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Person();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_PersonHeaderCardSection.person.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Person();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection() + 20);
  *(v3 + 10) = v11;
  sub_1B9495798(v1 + v11, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = v13;
    v10[7] = v13;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    v14 = v10 + *(v7 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_117(v6);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    sub_1B9495808(v6, v10);
  }

  return sub_1B9495AD8;
}

BOOL Searchfoundation_PersonHeaderCardSection.hasPerson.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_5_49();
  sub_1B9495798(v0 + *(v6 + 20), v1);
  v7 = type metadata accessor for Searchfoundation_Person();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACC5A8, &unk_1B96CD450);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_PersonHeaderCardSection.clearPerson()()
{
  v1 = *(type metadata accessor for Searchfoundation_PersonHeaderCardSection() + 20);
  sub_1B8D9207C(v0 + v1, &qword_1EBACC5A8, &unk_1B96CD450);
  v2 = type metadata accessor for Searchfoundation_Person();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_PersonHeaderCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Searchfoundation_PersonHeaderCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1B952B728()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD02A0);
  __swift_project_value_buffer(v0, qword_1EBAD02A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 51;
  *v5 = "person";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}